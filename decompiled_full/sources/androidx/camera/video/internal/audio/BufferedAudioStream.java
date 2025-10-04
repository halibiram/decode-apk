package androidx.camera.video.internal.audio;

import android.annotation.SuppressLint;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.video.internal.audio.AudioStream;
import androidx.core.util.Preconditions;
import defpackage.AbstractC0362x4440ab85;
import defpackage.RunnableC0384x149e5abd;
import defpackage.RunnableC0459x3361f2;
import defpackage.RunnableC0460x8df12640;
import java.nio.ByteBuffer;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public class BufferedAudioStream implements AudioStream {
    private static final int DATA_WAITING_TIME_MILLIS = 1;
    private static final int DEFAULT_BUFFER_SIZE_IN_FRAME = 1024;
    private static final int DEFAULT_QUEUE_SIZE = 500;
    private static final String TAG = "BufferedAudioStream";
    private final AudioStream mAudioStream;
    private int mBufferSize;
    private final int mBytesPerFrame;
    private final int mQueueMaxSize;
    private final int mSampleRate;
    private final AtomicBoolean mIsStarted = new AtomicBoolean(false);
    private final AtomicBoolean mIsReleased = new AtomicBoolean(false);

    @GuardedBy("mLock")
    private final Queue<AudioData> mAudioDataQueue = new ConcurrentLinkedQueue();
    private final Executor mProducerExecutor = CameraXExecutors.newSequentialExecutor(CameraXExecutors.audioExecutor());
    private final Object mLock = new Object();

    @Nullable
    @GuardedBy("mLock")
    private AudioData mAudioDataNotFullyRead = null;
    private final AtomicBoolean mIsCollectingAudioData = new AtomicBoolean(false);

    /* loaded from: classes.dex */
    public static class AudioData {
        private final ByteBuffer mByteBuffer;
        private final int mBytesPerFrame;
        private final int mSampleRate;
        private long mTimestampNs;

        public AudioData(@NonNull ByteBuffer byteBuffer, @NonNull AudioStream.PacketInfo packetInfo, int i, int i2) {
            byteBuffer.rewind();
            int limit = byteBuffer.limit() - byteBuffer.position();
            if (limit == packetInfo.getSizeInBytes()) {
                this.mBytesPerFrame = i;
                this.mSampleRate = i2;
                this.mByteBuffer = byteBuffer;
                this.mTimestampNs = packetInfo.getTimestampNs();
                return;
            }
            StringBuilder m2939xab142723 = AbstractC0362x4440ab85.m2939xab142723(limit, "Byte buffer size is not match with packet info: ", " != ");
            m2939xab142723.append(packetInfo.getSizeInBytes());
            throw new IllegalStateException(m2939xab142723.toString());
        }

        public int getRemainingBufferSizeInBytes() {
            return this.mByteBuffer.remaining();
        }

        public AudioStream.PacketInfo read(@NonNull ByteBuffer byteBuffer) {
            int remaining;
            long j = this.mTimestampNs;
            int position = this.mByteBuffer.position();
            int position2 = byteBuffer.position();
            if (this.mByteBuffer.remaining() > byteBuffer.remaining()) {
                remaining = byteBuffer.remaining();
                this.mTimestampNs += AudioUtils.frameCountToDurationNs(AudioUtils.sizeToFrameCount(remaining, this.mBytesPerFrame), this.mSampleRate);
                ByteBuffer duplicate = this.mByteBuffer.duplicate();
                duplicate.position(position).limit(position + remaining);
                byteBuffer.put(duplicate).limit(position2 + remaining).position(position2);
            } else {
                remaining = this.mByteBuffer.remaining();
                byteBuffer.put(this.mByteBuffer).limit(position2 + remaining).position(position2);
            }
            this.mByteBuffer.position(position + remaining);
            return AudioStream.PacketInfo.of(remaining, j);
        }
    }

    public BufferedAudioStream(@NonNull AudioStream audioStream, @NonNull AudioSettings audioSettings) {
        boolean z;
        this.mAudioStream = audioStream;
        int bytesPerFrame = audioSettings.getBytesPerFrame();
        this.mBytesPerFrame = bytesPerFrame;
        int sampleRate = audioSettings.getSampleRate();
        this.mSampleRate = sampleRate;
        if (bytesPerFrame > 0) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkArgument(z, "mBytesPerFrame must be greater than 0.");
        Preconditions.checkArgument(((long) sampleRate) > 0, "mSampleRate must be greater than 0.");
        this.mQueueMaxSize = 500;
        this.mBufferSize = bytesPerFrame * 1024;
    }

    private void checkNotReleasedOrThrow() {
        Preconditions.checkState(!this.mIsReleased.get(), "AudioStream has been released.");
    }

    private void checkStartedOrThrow() {
        Preconditions.checkState(this.mIsStarted.get(), "AudioStream has not been started.");
    }

    public void collectAudioData() {
        if (!this.mIsCollectingAudioData.get()) {
            return;
        }
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(this.mBufferSize);
        AudioData audioData = new AudioData(allocateDirect, this.mAudioStream.read(allocateDirect), this.mBytesPerFrame, this.mSampleRate);
        int i = this.mQueueMaxSize;
        synchronized (this.mLock) {
            try {
                this.mAudioDataQueue.offer(audioData);
                while (this.mAudioDataQueue.size() > i) {
                    this.mAudioDataQueue.poll();
                    Logger.w(TAG, "Drop audio data due to full of queue.");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (this.mIsCollectingAudioData.get()) {
            this.mProducerExecutor.execute(new RunnableC0459x3361f2(this, 2));
        }
    }

    public /* synthetic */ void lambda$release$2() {
        this.mIsCollectingAudioData.set(false);
        this.mAudioStream.release();
        synchronized (this.mLock) {
            this.mAudioDataNotFullyRead = null;
            this.mAudioDataQueue.clear();
        }
    }

    public /* synthetic */ void lambda$setCallback$3(AudioStream.AudioStreamCallback audioStreamCallback, Executor executor) {
        this.mAudioStream.setCallback(audioStreamCallback, executor);
    }

    public /* synthetic */ void lambda$start$0() {
        try {
            this.mAudioStream.start();
            startCollectingAudioData();
        } catch (AudioStream.AudioStreamException e) {
            throw new RuntimeException(e);
        }
    }

    public /* synthetic */ void lambda$stop$1() {
        this.mIsCollectingAudioData.set(false);
        this.mAudioStream.stop();
        synchronized (this.mLock) {
            this.mAudioDataNotFullyRead = null;
            this.mAudioDataQueue.clear();
        }
    }

    private void startCollectingAudioData() {
        if (this.mIsCollectingAudioData.getAndSet(true)) {
            return;
        }
        collectAudioData();
    }

    /* renamed from: updateCollectionBufferSize */
    public void lambda$updateCollectionBufferSizeAsync$4(int i) {
        int i2 = this.mBufferSize;
        if (i2 == i) {
            return;
        }
        int i3 = this.mBytesPerFrame;
        this.mBufferSize = (i / i3) * i3;
        StringBuilder m2939xab142723 = AbstractC0362x4440ab85.m2939xab142723(i2, "Update buffer size from ", " to ");
        m2939xab142723.append(this.mBufferSize);
        Logger.d(TAG, m2939xab142723.toString());
    }

    private void updateCollectionBufferSizeAsync(int i) {
        this.mProducerExecutor.execute(new RunnableC0460x8df12640(this, i, 0));
    }

    @Override // androidx.camera.video.internal.audio.AudioStream
    @NonNull
    @SuppressLint({"BanThreadSleep"})
    public AudioStream.PacketInfo read(@NonNull ByteBuffer byteBuffer) {
        boolean z;
        checkNotReleasedOrThrow();
        checkStartedOrThrow();
        updateCollectionBufferSizeAsync(byteBuffer.remaining());
        AudioStream.PacketInfo of = AudioStream.PacketInfo.of(0, 0L);
        do {
            synchronized (this.mLock) {
                try {
                    AudioData audioData = this.mAudioDataNotFullyRead;
                    this.mAudioDataNotFullyRead = null;
                    if (audioData == null) {
                        audioData = this.mAudioDataQueue.poll();
                    }
                    if (audioData != null) {
                        of = audioData.read(byteBuffer);
                        if (audioData.getRemainingBufferSizeInBytes() > 0) {
                            this.mAudioDataNotFullyRead = audioData;
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (of.getSizeInBytes() <= 0 && this.mIsStarted.get() && !this.mIsReleased.get()) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                try {
                    Thread.sleep(1L);
                } catch (InterruptedException e) {
                    Logger.w(TAG, "Interruption while waiting for audio data", e);
                }
            }
        } while (z);
        return of;
    }

    @Override // androidx.camera.video.internal.audio.AudioStream
    public void release() {
        if (this.mIsReleased.getAndSet(true)) {
            return;
        }
        this.mProducerExecutor.execute(new RunnableC0459x3361f2(this, 3));
    }

    @Override // androidx.camera.video.internal.audio.AudioStream
    public void setCallback(@Nullable AudioStream.AudioStreamCallback audioStreamCallback, @Nullable Executor executor) {
        boolean z = true;
        Preconditions.checkState(!this.mIsStarted.get(), "AudioStream can not be started when setCallback.");
        checkNotReleasedOrThrow();
        if (audioStreamCallback != null && executor == null) {
            z = false;
        }
        Preconditions.checkArgument(z, "executor can't be null with non-null callback.");
        this.mProducerExecutor.execute(new RunnableC0384x149e5abd(this, 3, audioStreamCallback, executor));
    }

    @Override // androidx.camera.video.internal.audio.AudioStream
    public void start() {
        checkNotReleasedOrThrow();
        if (this.mIsStarted.getAndSet(true)) {
            return;
        }
        FutureTask futureTask = new FutureTask(new RunnableC0459x3361f2(this, 1), null);
        this.mProducerExecutor.execute(futureTask);
        try {
            futureTask.get();
        } catch (InterruptedException | ExecutionException e) {
            this.mIsStarted.set(false);
            throw new AudioStream.AudioStreamException(e);
        }
    }

    @Override // androidx.camera.video.internal.audio.AudioStream
    public void stop() {
        checkNotReleasedOrThrow();
        if (!this.mIsStarted.getAndSet(false)) {
            return;
        }
        this.mProducerExecutor.execute(new RunnableC0459x3361f2(this, 0));
    }
}
