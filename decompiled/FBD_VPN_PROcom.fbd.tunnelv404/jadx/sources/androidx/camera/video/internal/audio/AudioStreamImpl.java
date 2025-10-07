package androidx.camera.video.internal.audio;

import android.annotation.SuppressLint;
import android.content.Context;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.AudioRecord;
import android.media.AudioRecordingConfiguration;
import android.media.AudioTimestamp;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RequiresPermission;
import androidx.camera.core.Logger;
import androidx.camera.video.internal.audio.AudioStream;
import androidx.camera.video.internal.compat.Api23Impl;
import androidx.camera.video.internal.compat.Api24Impl;
import androidx.camera.video.internal.compat.Api29Impl;
import androidx.camera.video.internal.compat.Api31Impl;
import androidx.camera.video.internal.compat.quirk.AudioTimestampFramePositionIncorrectQuirk;
import androidx.camera.video.internal.compat.quirk.DeviceQuirks;
import androidx.core.util.Preconditions;
import defpackage.AbstractC0352x9d12c1f4;
import defpackage.RunnableC0395x2fa10a30;
import j$.util.Objects;
import java.nio.ByteBuffer;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public class AudioStreamImpl implements AudioStream {
    private static final long DIFF_LIMIT_FROM_SYSTEM_TIME_NS = TimeUnit.MILLISECONDS.toNanos(500);
    private static final String TAG = "AudioStreamImpl";

    @NonNull
    private AudioRecord mAudioRecord;

    @Nullable
    private AudioManager.AudioRecordingCallback mAudioRecordingCallback;

    @Nullable
    private AudioStream.AudioStreamCallback mAudioStreamCallback;
    private final int mBufferSize;
    private final int mBytesPerFrame;

    @Nullable
    private Executor mCallbackExecutor;
    private final AudioSettings mSettings;
    private long mTotalFramesRead;
    private final AtomicBoolean mIsReleased = new AtomicBoolean(false);
    private final AtomicBoolean mIsStarted = new AtomicBoolean(false);
    private final AtomicReference<Boolean> mNotifiedSilenceState = new AtomicReference<>(null);
    private boolean mShouldFallbackToSystemTime = false;

    @RequiresApi(29)
    /* loaded from: classes.dex */
    public class AudioRecordingApi29Callback extends AudioManager.AudioRecordingCallback {
        public AudioRecordingApi29Callback() {
        }

        @Override // android.media.AudioManager.AudioRecordingCallback
        public void onRecordingConfigChanged(List<AudioRecordingConfiguration> list) {
            Iterator<AudioRecordingConfiguration> it = list.iterator();
            while (it.hasNext()) {
                AudioRecordingConfiguration m2711x3db60231 = AbstractC0352x9d12c1f4.m2711x3db60231(it.next());
                if (Api24Impl.getClientAudioSessionId(m2711x3db60231) == AudioStreamImpl.this.mAudioRecord.getAudioSessionId()) {
                    AudioStreamImpl.this.notifySilenced(Api29Impl.isClientSilenced(m2711x3db60231));
                    return;
                }
            }
        }
    }

    @RequiresPermission("android.permission.RECORD_AUDIO")
    public AudioStreamImpl(@NonNull AudioSettings audioSettings, @Nullable Context context) {
        if (isSettingsSupported(audioSettings.getSampleRate(), audioSettings.getChannelCount(), audioSettings.getAudioFormat())) {
            this.mSettings = audioSettings;
            this.mBytesPerFrame = audioSettings.getBytesPerFrame();
            int minBufferSize = getMinBufferSize(audioSettings.getSampleRate(), audioSettings.getChannelCount(), audioSettings.getAudioFormat());
            Preconditions.checkState(minBufferSize > 0);
            int i = minBufferSize * 2;
            this.mBufferSize = i;
            AudioRecord createAudioRecord = createAudioRecord(i, audioSettings, context);
            this.mAudioRecord = createAudioRecord;
            checkAudioRecordInitialStateOrReleaseAndThrow(createAudioRecord);
            return;
        }
        throw new UnsupportedOperationException(String.format("The combination of sample rate %d, channel count %d and audio format %d is not supported.", Integer.valueOf(audioSettings.getSampleRate()), Integer.valueOf(audioSettings.getChannelCount()), Integer.valueOf(audioSettings.getAudioFormat())));
    }

    private static void checkAudioRecordInitialStateOrReleaseAndThrow(@NonNull AudioRecord audioRecord) {
        if (audioRecord.getState() == 1) {
            return;
        }
        audioRecord.release();
        throw new AudioStream.AudioStreamException("Unable to initialize AudioRecord");
    }

    private void checkNotReleasedOrThrow() {
        Preconditions.checkState(!this.mIsReleased.get(), "AudioStream has been released.");
    }

    private void checkStartedOrThrow() {
        Preconditions.checkState(this.mIsStarted.get(), "AudioStream has not been started.");
    }

    @NonNull
    @RequiresPermission("android.permission.RECORD_AUDIO")
    private static AudioRecord createAudioRecord(int i, @NonNull AudioSettings audioSettings, @Nullable Context context) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 23) {
            AudioFormat build = new AudioFormat.Builder().setSampleRate(audioSettings.getSampleRate()).setChannelMask(AudioUtils.channelCountToChannelMask(audioSettings.getChannelCount())).setEncoding(audioSettings.getAudioFormat()).build();
            AudioRecord.Builder createAudioRecordBuilder = Api23Impl.createAudioRecordBuilder();
            if (i2 >= 31 && context != null) {
                Api31Impl.setContext(createAudioRecordBuilder, context);
            }
            Api23Impl.setAudioSource(createAudioRecordBuilder, audioSettings.getAudioSource());
            Api23Impl.setAudioFormat(createAudioRecordBuilder, build);
            Api23Impl.setBufferSizeInBytes(createAudioRecordBuilder, i);
            return Api23Impl.build(createAudioRecordBuilder);
        }
        return new AudioRecord(audioSettings.getAudioSource(), audioSettings.getSampleRate(), AudioUtils.channelCountToChannelConfig(audioSettings.getChannelCount()), audioSettings.getAudioFormat(), i);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:15:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private long generatePresentationTimeNs() {
        long j;
        if (Build.VERSION.SDK_INT >= 24 && !this.mShouldFallbackToSystemTime) {
            AudioTimestamp audioTimestamp = new AudioTimestamp();
            if (Api24Impl.getTimestamp(this.mAudioRecord, audioTimestamp, 0) == 0) {
                j = AudioUtils.computeInterpolatedTimeNs(this.mSettings.getSampleRate(), this.mTotalFramesRead, audioTimestamp);
                if (Math.abs(j - System.nanoTime()) > DIFF_LIMIT_FROM_SYSTEM_TIME_NS) {
                    this.mShouldFallbackToSystemTime = true;
                }
                if (j != -1) {
                    return System.nanoTime();
                }
                return j;
            }
            Logger.w(TAG, "Unable to get audio timestamp");
        }
        j = -1;
        if (j != -1) {
        }
    }

    private static int getMinBufferSize(int i, int i2, int i3) {
        return AudioRecord.getMinBufferSize(i, AudioUtils.channelCountToChannelConfig(i2), i3);
    }

    private static boolean hasAudioTimestampQuirk() {
        if (DeviceQuirks.get(AudioTimestampFramePositionIncorrectQuirk.class) != null) {
            return true;
        }
        return false;
    }

    public static boolean isSettingsSupported(int i, int i2, int i3) {
        if (i <= 0 || i2 <= 0 || getMinBufferSize(i, i2, i3) <= 0) {
            return false;
        }
        return true;
    }

    public void notifySilenced(boolean z) {
        Executor executor = this.mCallbackExecutor;
        AudioStream.AudioStreamCallback audioStreamCallback = this.mAudioStreamCallback;
        if (executor != null && audioStreamCallback != null && !Objects.equals(this.mNotifiedSilenceState.getAndSet(Boolean.valueOf(z)), Boolean.valueOf(z))) {
            executor.execute(new RunnableC0395x2fa10a30(1, audioStreamCallback, z));
        }
    }

    @Override // androidx.camera.video.internal.audio.AudioStream
    @NonNull
    public AudioStream.PacketInfo read(@NonNull ByteBuffer byteBuffer) {
        long j;
        checkNotReleasedOrThrow();
        checkStartedOrThrow();
        int read = this.mAudioRecord.read(byteBuffer, this.mBufferSize);
        if (read > 0) {
            byteBuffer.limit(read);
            j = generatePresentationTimeNs();
            this.mTotalFramesRead = AudioUtils.sizeToFrameCount(read, this.mBytesPerFrame) + this.mTotalFramesRead;
        } else {
            j = 0;
        }
        return AudioStream.PacketInfo.of(read, j);
    }

    @Override // androidx.camera.video.internal.audio.AudioStream
    public void release() {
        AudioManager.AudioRecordingCallback audioRecordingCallback;
        if (this.mIsReleased.getAndSet(true)) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 29 && (audioRecordingCallback = this.mAudioRecordingCallback) != null) {
            Api29Impl.unregisterAudioRecordingCallback(this.mAudioRecord, audioRecordingCallback);
        }
        this.mAudioRecord.release();
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
        this.mAudioStreamCallback = audioStreamCallback;
        this.mCallbackExecutor = executor;
        if (Build.VERSION.SDK_INT >= 29) {
            AudioManager.AudioRecordingCallback audioRecordingCallback = this.mAudioRecordingCallback;
            if (audioRecordingCallback != null) {
                Api29Impl.unregisterAudioRecordingCallback(this.mAudioRecord, audioRecordingCallback);
            }
            if (audioStreamCallback == null) {
                return;
            }
            if (this.mAudioRecordingCallback == null) {
                this.mAudioRecordingCallback = new AudioRecordingApi29Callback();
            }
            Api29Impl.registerAudioRecordingCallback(this.mAudioRecord, executor, this.mAudioRecordingCallback);
        }
    }

    @Override // androidx.camera.video.internal.audio.AudioStream
    public void start() {
        checkNotReleasedOrThrow();
        boolean z = true;
        if (this.mIsStarted.getAndSet(true)) {
            return;
        }
        if (hasAudioTimestampQuirk()) {
            checkAudioRecordInitialStateOrReleaseAndThrow(this.mAudioRecord);
        }
        this.mAudioRecord.startRecording();
        boolean z2 = false;
        if (this.mAudioRecord.getRecordingState() == 3) {
            this.mTotalFramesRead = 0L;
            this.mShouldFallbackToSystemTime = false;
            this.mNotifiedSilenceState.set(null);
            if (Build.VERSION.SDK_INT >= 29) {
                AudioRecordingConfiguration activeRecordingConfiguration = Api29Impl.getActiveRecordingConfiguration(this.mAudioRecord);
                if (activeRecordingConfiguration == null || !Api29Impl.isClientSilenced(activeRecordingConfiguration)) {
                    z = false;
                }
                z2 = z;
            }
            notifySilenced(z2);
            return;
        }
        this.mIsStarted.set(false);
        throw new AudioStream.AudioStreamException("Unable to start AudioRecord with state: " + this.mAudioRecord.getRecordingState());
    }

    @Override // androidx.camera.video.internal.audio.AudioStream
    @SuppressLint({"MissingPermission"})
    public void stop() {
        checkNotReleasedOrThrow();
        if (!this.mIsStarted.getAndSet(false)) {
            return;
        }
        this.mAudioRecord.stop();
        if (this.mAudioRecord.getRecordingState() != 1) {
            Logger.w(TAG, "Failed to stop AudioRecord with state: " + this.mAudioRecord.getRecordingState());
        }
        if (hasAudioTimestampQuirk()) {
            this.mAudioRecord.release();
            this.mAudioRecord = createAudioRecord(this.mBufferSize, this.mSettings, null);
        }
    }
}
