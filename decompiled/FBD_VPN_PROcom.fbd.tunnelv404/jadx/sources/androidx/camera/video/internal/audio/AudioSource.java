package androidx.camera.video.internal.audio;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresPermission;
import androidx.annotation.VisibleForTesting;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.Observable;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.impl.utils.futures.FutureCallback;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.camera.video.internal.BufferProvider;
import androidx.camera.video.internal.audio.AudioStream;
import androidx.camera.video.internal.encoder.InputBuffer;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.util.Preconditions;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.C0419x35cc9f53;
import defpackage.RunnableC0371x742e2fda;
import defpackage.RunnableC0384x149e5abd;
import defpackage.RunnableC0427x4544b8f9;
import defpackage.RunnableC0428x85c1d9df;
import defpackage.RunnableC0429x4d857145;
import j$.util.Objects;
import java.nio.ByteBuffer;
import java.nio.ShortBuffer;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class AudioSource {

    @VisibleForTesting
    static final long DEFAULT_START_RETRY_INTERVAL_MS = 3000;
    private static final String TAG = "AudioSource";

    @Nullable
    private FutureCallback<InputBuffer> mAcquireBufferCallback;
    long mAmplitudeTimestamp;
    double mAudioAmplitude;
    private final int mAudioFormat;

    @VisibleForTesting
    public final int mAudioSource;

    @Nullable
    AudioSourceCallback mAudioSourceCallback;
    final AudioStream mAudioStream;
    boolean mAudioStreamSilenced;

    @Nullable
    BufferProvider<? extends InputBuffer> mBufferProvider;

    @NonNull
    BufferProvider.State mBufferProviderState;

    @Nullable
    Executor mCallbackExecutor;
    final Executor mExecutor;
    boolean mInSilentStartState;
    boolean mIsSendingAudio;
    private long mLatestFailedStartTimeNs;
    boolean mMuted;
    final AtomicReference<Boolean> mNotifiedSilenceState;
    final AtomicBoolean mNotifiedSuspendState;
    final SilentAudioStream mSilentAudioStream;
    private final long mStartRetryIntervalNs;

    @NonNull
    InternalState mState;

    @Nullable
    private Observable.Observer<BufferProvider.State> mStateObserver;

    @Nullable
    private byte[] mZeroBytes;

    /* renamed from: androidx.camera.video.internal.audio.AudioSource$1 */
    /* loaded from: classes.dex */
    public class AnonymousClass1 implements Observable.Observer<BufferProvider.State> {
        final /* synthetic */ BufferProvider val$bufferProvider;

        public AnonymousClass1(BufferProvider bufferProvider) {
            r2 = bufferProvider;
        }

        @Override // androidx.camera.core.impl.Observable.Observer
        public void onError(@NonNull Throwable th) {
            AudioSource audioSource = AudioSource.this;
            if (audioSource.mBufferProvider == r2) {
                audioSource.notifyError(th);
            }
        }

        @Override // androidx.camera.core.impl.Observable.Observer
        public void onNewData(@Nullable BufferProvider.State state) {
            Objects.requireNonNull(state);
            if (AudioSource.this.mBufferProvider == r2) {
                Logger.d(AudioSource.TAG, "Receive BufferProvider state change: " + AudioSource.this.mBufferProviderState + " to " + state);
                AudioSource audioSource = AudioSource.this;
                if (audioSource.mBufferProviderState != state) {
                    audioSource.mBufferProviderState = state;
                    audioSource.updateSendingAudio();
                }
            }
        }
    }

    /* renamed from: androidx.camera.video.internal.audio.AudioSource$2 */
    /* loaded from: classes.dex */
    public class AnonymousClass2 implements FutureCallback<InputBuffer> {
        final /* synthetic */ BufferProvider val$bufferProvider;

        public AnonymousClass2(BufferProvider bufferProvider) {
            r2 = bufferProvider;
        }

        @Override // androidx.camera.core.impl.utils.futures.FutureCallback
        public void onFailure(@NonNull Throwable th) {
            if (AudioSource.this.mBufferProvider != r2) {
                return;
            }
            Logger.d(AudioSource.TAG, "Unable to get input buffer, the BufferProvider could be transitioning to INACTIVE state.");
            if (!(th instanceof IllegalStateException)) {
                AudioSource.this.notifyError(th);
            }
        }

        @Override // androidx.camera.core.impl.utils.futures.FutureCallback
        public void onSuccess(InputBuffer inputBuffer) {
            AudioSource audioSource = AudioSource.this;
            if (audioSource.mIsSendingAudio && audioSource.mBufferProvider == r2) {
                if (audioSource.mInSilentStartState && audioSource.isStartRetryIntervalReached()) {
                    AudioSource.this.retryStartAudioStream();
                }
                AudioStream currentAudioStream = AudioSource.this.getCurrentAudioStream();
                ByteBuffer byteBuffer = inputBuffer.getByteBuffer();
                AudioStream.PacketInfo read = currentAudioStream.read(byteBuffer);
                if (read.getSizeInBytes() > 0) {
                    AudioSource audioSource2 = AudioSource.this;
                    if (audioSource2.mMuted) {
                        audioSource2.overrideBySilence(byteBuffer, read.getSizeInBytes());
                    }
                    if (AudioSource.this.mCallbackExecutor != null) {
                        long timestampNs = read.getTimestampNs();
                        AudioSource audioSource3 = AudioSource.this;
                        if (timestampNs - audioSource3.mAmplitudeTimestamp >= 200) {
                            audioSource3.mAmplitudeTimestamp = read.getTimestampNs();
                            AudioSource.this.postMaxAmplitude(byteBuffer);
                        }
                    }
                    byteBuffer.limit(read.getSizeInBytes() + byteBuffer.position());
                    inputBuffer.setPresentationTimeUs(TimeUnit.NANOSECONDS.toMicros(read.getTimestampNs()));
                    inputBuffer.submit();
                } else {
                    Logger.w(AudioSource.TAG, "Unable to read data from AudioStream.");
                    inputBuffer.cancel();
                }
                AudioSource.this.sendNextAudio();
                return;
            }
            inputBuffer.cancel();
        }
    }

    /* loaded from: classes.dex */
    public interface AudioSourceCallback {
        void onAmplitudeValue(double d);

        void onError(@NonNull Throwable th);

        void onSilenceStateChanged(boolean z);

        @VisibleForTesting
        void onSuspendStateChanged(boolean z);
    }

    /* loaded from: classes.dex */
    public class AudioStreamCallback implements AudioStream.AudioStreamCallback {
        public AudioStreamCallback() {
        }

        @Override // androidx.camera.video.internal.audio.AudioStream.AudioStreamCallback
        public void onSilenceStateChanged(boolean z) {
            AudioSource audioSource = AudioSource.this;
            audioSource.mAudioStreamSilenced = z;
            if (audioSource.mState == InternalState.STARTED) {
                audioSource.notifySilenced();
            }
        }
    }

    /* loaded from: classes.dex */
    public enum InternalState {
        CONFIGURED,
        STARTED,
        RELEASED
    }

    /* JADX WARN: Type inference failed for: r4v0, types: [androidx.camera.video.internal.audio.AudioStreamFactory, java.lang.Object] */
    @RequiresPermission("android.permission.RECORD_AUDIO")
    public AudioSource(@NonNull AudioSettings audioSettings, @NonNull Executor executor, @Nullable Context context) {
        this(audioSettings, executor, context, new Object(), DEFAULT_START_RETRY_INTERVAL_MS);
    }

    @Nullable
    private static BufferProvider.State fetchBufferProviderState(@NonNull BufferProvider<? extends InputBuffer> bufferProvider) {
        try {
            ListenableFuture<? extends InputBuffer> fetchData = bufferProvider.fetchData();
            if (!fetchData.isDone()) {
                return null;
            }
            return (BufferProvider.State) fetchData.get();
        } catch (InterruptedException | ExecutionException unused) {
            return null;
        }
    }

    private static long getCurrentSystemTimeNs() {
        return System.nanoTime();
    }

    public static boolean isSettingsSupported(int i, int i2, int i3) {
        return AudioStreamImpl.isSettingsSupported(i, i2, i3);
    }

    public /* synthetic */ void lambda$mute$7(boolean z) {
        int ordinal = this.mState.ordinal();
        if (ordinal != 0 && ordinal != 1) {
            if (ordinal == 2) {
                throw new AssertionError("AudioSource is released");
            }
        } else {
            if (this.mMuted == z) {
                return;
            }
            this.mMuted = z;
            if (this.mState == InternalState.STARTED) {
                notifySilenced();
            }
        }
    }

    public /* synthetic */ void lambda$postMaxAmplitude$11(AudioSourceCallback audioSourceCallback) {
        audioSourceCallback.onAmplitudeValue(this.mAudioAmplitude);
    }

    public /* synthetic */ void lambda$release$4(CallbackToFutureAdapter.Completer completer) {
        try {
            int ordinal = this.mState.ordinal();
            if (ordinal == 0 || ordinal == 1) {
                resetBufferProvider(null);
                this.mSilentAudioStream.release();
                this.mAudioStream.release();
                stopSendingAudio();
                setState(InternalState.RELEASED);
            }
            completer.set(null);
        } catch (Throwable th) {
            completer.setException(th);
        }
    }

    public /* synthetic */ Object lambda$release$5(CallbackToFutureAdapter.Completer completer) {
        this.mExecutor.execute(new RunnableC0371x742e2fda(this, completer, 6));
        return "AudioSource-release";
    }

    public /* synthetic */ void lambda$setAudioSourceCallback$6(Executor executor, AudioSourceCallback audioSourceCallback) {
        int ordinal = this.mState.ordinal();
        if (ordinal != 0) {
            if (ordinal == 1 || ordinal == 2) {
                throw new AssertionError("The audio recording callback must be registered before the audio source is started.");
            }
        } else {
            this.mCallbackExecutor = executor;
            this.mAudioSourceCallback = audioSourceCallback;
        }
    }

    public /* synthetic */ void lambda$setBufferProvider$0(BufferProvider bufferProvider) {
        int ordinal = this.mState.ordinal();
        if (ordinal != 0 && ordinal != 1) {
            if (ordinal == 2) {
                throw new AssertionError("AudioSource is released");
            }
        } else if (this.mBufferProvider != bufferProvider) {
            resetBufferProvider(bufferProvider);
        }
    }

    public /* synthetic */ void lambda$start$1() {
        start(this.mMuted);
    }

    public /* synthetic */ void lambda$start$2(boolean z) {
        int ordinal = this.mState.ordinal();
        if (ordinal != 0) {
            if (ordinal == 2) {
                throw new AssertionError("AudioSource is released");
            }
            return;
        }
        this.mNotifiedSilenceState.set(null);
        this.mNotifiedSuspendState.set(false);
        setState(InternalState.STARTED);
        mute(z);
        updateSendingAudio();
    }

    public /* synthetic */ void lambda$stop$3() {
        int ordinal = this.mState.ordinal();
        if (ordinal != 1) {
            if (ordinal == 2) {
                Logger.w(TAG, "AudioSource is released. Calling stop() is a no-op.");
            }
        } else {
            setState(InternalState.CONFIGURED);
            updateSendingAudio();
        }
    }

    private void resetBufferProvider(@Nullable BufferProvider<? extends InputBuffer> bufferProvider) {
        BufferProvider<? extends InputBuffer> bufferProvider2 = this.mBufferProvider;
        if (bufferProvider2 != null) {
            Observable.Observer<BufferProvider.State> observer = this.mStateObserver;
            Objects.requireNonNull(observer);
            bufferProvider2.removeObserver(observer);
            this.mBufferProvider = null;
            this.mStateObserver = null;
            this.mAcquireBufferCallback = null;
            this.mBufferProviderState = BufferProvider.State.INACTIVE;
            updateSendingAudio();
        }
        if (bufferProvider != null) {
            this.mBufferProvider = bufferProvider;
            this.mStateObserver = new Observable.Observer<BufferProvider.State>() { // from class: androidx.camera.video.internal.audio.AudioSource.1
                final /* synthetic */ BufferProvider val$bufferProvider;

                public AnonymousClass1(BufferProvider bufferProvider3) {
                    r2 = bufferProvider3;
                }

                @Override // androidx.camera.core.impl.Observable.Observer
                public void onError(@NonNull Throwable th) {
                    AudioSource audioSource = AudioSource.this;
                    if (audioSource.mBufferProvider == r2) {
                        audioSource.notifyError(th);
                    }
                }

                @Override // androidx.camera.core.impl.Observable.Observer
                public void onNewData(@Nullable BufferProvider.State state) {
                    Objects.requireNonNull(state);
                    if (AudioSource.this.mBufferProvider == r2) {
                        Logger.d(AudioSource.TAG, "Receive BufferProvider state change: " + AudioSource.this.mBufferProviderState + " to " + state);
                        AudioSource audioSource = AudioSource.this;
                        if (audioSource.mBufferProviderState != state) {
                            audioSource.mBufferProviderState = state;
                            audioSource.updateSendingAudio();
                        }
                    }
                }
            };
            this.mAcquireBufferCallback = new FutureCallback<InputBuffer>() { // from class: androidx.camera.video.internal.audio.AudioSource.2
                final /* synthetic */ BufferProvider val$bufferProvider;

                public AnonymousClass2(BufferProvider bufferProvider3) {
                    r2 = bufferProvider3;
                }

                @Override // androidx.camera.core.impl.utils.futures.FutureCallback
                public void onFailure(@NonNull Throwable th) {
                    if (AudioSource.this.mBufferProvider != r2) {
                        return;
                    }
                    Logger.d(AudioSource.TAG, "Unable to get input buffer, the BufferProvider could be transitioning to INACTIVE state.");
                    if (!(th instanceof IllegalStateException)) {
                        AudioSource.this.notifyError(th);
                    }
                }

                @Override // androidx.camera.core.impl.utils.futures.FutureCallback
                public void onSuccess(InputBuffer inputBuffer) {
                    AudioSource audioSource = AudioSource.this;
                    if (audioSource.mIsSendingAudio && audioSource.mBufferProvider == r2) {
                        if (audioSource.mInSilentStartState && audioSource.isStartRetryIntervalReached()) {
                            AudioSource.this.retryStartAudioStream();
                        }
                        AudioStream currentAudioStream = AudioSource.this.getCurrentAudioStream();
                        ByteBuffer byteBuffer = inputBuffer.getByteBuffer();
                        AudioStream.PacketInfo read = currentAudioStream.read(byteBuffer);
                        if (read.getSizeInBytes() > 0) {
                            AudioSource audioSource2 = AudioSource.this;
                            if (audioSource2.mMuted) {
                                audioSource2.overrideBySilence(byteBuffer, read.getSizeInBytes());
                            }
                            if (AudioSource.this.mCallbackExecutor != null) {
                                long timestampNs = read.getTimestampNs();
                                AudioSource audioSource3 = AudioSource.this;
                                if (timestampNs - audioSource3.mAmplitudeTimestamp >= 200) {
                                    audioSource3.mAmplitudeTimestamp = read.getTimestampNs();
                                    AudioSource.this.postMaxAmplitude(byteBuffer);
                                }
                            }
                            byteBuffer.limit(read.getSizeInBytes() + byteBuffer.position());
                            inputBuffer.setPresentationTimeUs(TimeUnit.NANOSECONDS.toMicros(read.getTimestampNs()));
                            inputBuffer.submit();
                        } else {
                            Logger.w(AudioSource.TAG, "Unable to read data from AudioStream.");
                            inputBuffer.cancel();
                        }
                        AudioSource.this.sendNextAudio();
                        return;
                    }
                    inputBuffer.cancel();
                }
            };
            BufferProvider.State fetchBufferProviderState = fetchBufferProviderState(bufferProvider3);
            if (fetchBufferProviderState != null) {
                this.mBufferProviderState = fetchBufferProviderState;
                updateSendingAudio();
            }
            this.mBufferProvider.addObserver(this.mExecutor, this.mStateObserver);
        }
    }

    private void startSendingAudio() {
        if (this.mIsSendingAudio) {
            return;
        }
        try {
            Logger.d(TAG, "startSendingAudio");
            this.mAudioStream.start();
            this.mInSilentStartState = false;
        } catch (AudioStream.AudioStreamException e) {
            Logger.w(TAG, "Failed to start AudioStream", e);
            this.mInSilentStartState = true;
            this.mSilentAudioStream.start();
            this.mLatestFailedStartTimeNs = getCurrentSystemTimeNs();
            notifySilenced();
        }
        this.mIsSendingAudio = true;
        sendNextAudio();
    }

    private void stopSendingAudio() {
        if (!this.mIsSendingAudio) {
            return;
        }
        this.mIsSendingAudio = false;
        Logger.d(TAG, "stopSendingAudio");
        this.mAudioStream.stop();
    }

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉 */
    public static /* synthetic */ void m389x1378447b(AudioSourceCallback audioSourceCallback, Throwable th) {
        audioSourceCallback.onError(th);
    }

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨 */
    public static /* synthetic */ void m390x75d576dc(AudioSource audioSource, BufferProvider bufferProvider) {
        audioSource.lambda$setBufferProvider$0(bufferProvider);
    }

    /* renamed from: 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤 */
    public static /* synthetic */ void m392x9e171bf9(AudioSource audioSource, CallbackToFutureAdapter.Completer completer) {
        audioSource.lambda$release$4(completer);
    }

    /* renamed from: 뎨돶땰딎땵딃됨드땭두뒹듟땭땧될땤돝땡땟땡득땫땟듌둑듔뒐둔뒨딽땪돵둥뒬돝뒼뒹땻딹둡듔든땐땰땜땠돳땔될땪두땃딄되돸든돵뎬둘땨딀둡땲뎽땬듬딝딃땜뒼됨땤딝돴듽돰듻땲됫듸든둬듰듰듸뒈땳땠뎰딽둬딽뒼딎땃돸돳딠뒷뒛땯듬뎬땅땀되될딅땩땵됨땐땧뎰뎨땥됩뒋됐딟따됐땮뎡돛듰딸뎬뒙돷 */
    public static /* synthetic */ void m395x3db60231(AudioSource audioSource, AudioSourceCallback audioSourceCallback) {
        audioSource.lambda$postMaxAmplitude$11(audioSourceCallback);
    }

    @NonNull
    public AudioStream getCurrentAudioStream() {
        if (this.mInSilentStartState) {
            return this.mSilentAudioStream;
        }
        return this.mAudioStream;
    }

    public boolean isStartRetryIntervalReached() {
        boolean z;
        if (this.mLatestFailedStartTimeNs > 0) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkState(z);
        if (getCurrentSystemTimeNs() - this.mLatestFailedStartTimeNs < this.mStartRetryIntervalNs) {
            return false;
        }
        return true;
    }

    public void mute(boolean z) {
        this.mExecutor.execute(new RunnableC0427x4544b8f9(this, z, 0));
    }

    public void notifyError(@NonNull Throwable th) {
        Executor executor = this.mCallbackExecutor;
        AudioSourceCallback audioSourceCallback = this.mAudioSourceCallback;
        if (executor != null && audioSourceCallback != null) {
            executor.execute(new RunnableC0371x742e2fda(audioSourceCallback, th, 5));
        }
    }

    public void notifySilenced() {
        boolean z;
        Executor executor = this.mCallbackExecutor;
        AudioSourceCallback audioSourceCallback = this.mAudioSourceCallback;
        if (executor != null && audioSourceCallback != null) {
            if (!this.mMuted && !this.mInSilentStartState && !this.mAudioStreamSilenced) {
                z = false;
            } else {
                z = true;
            }
            if (!Objects.equals(this.mNotifiedSilenceState.getAndSet(Boolean.valueOf(z)), Boolean.valueOf(z))) {
                executor.execute(new RunnableC0429x4d857145(audioSourceCallback, z, 0));
            }
        }
    }

    public void notifySuspended(boolean z) {
        Executor executor = this.mCallbackExecutor;
        AudioSourceCallback audioSourceCallback = this.mAudioSourceCallback;
        if (executor != null && audioSourceCallback != null && this.mNotifiedSuspendState.getAndSet(z) != z) {
            executor.execute(new RunnableC0429x4d857145(audioSourceCallback, z, 1));
        }
    }

    public void overrideBySilence(@NonNull ByteBuffer byteBuffer, int i) {
        byte[] bArr = this.mZeroBytes;
        if (bArr == null || bArr.length < i) {
            this.mZeroBytes = new byte[i];
        }
        int position = byteBuffer.position();
        byteBuffer.put(this.mZeroBytes, 0, i);
        byteBuffer.limit(byteBuffer.position()).position(position);
    }

    public void postMaxAmplitude(ByteBuffer byteBuffer) {
        Executor executor = this.mCallbackExecutor;
        AudioSourceCallback audioSourceCallback = this.mAudioSourceCallback;
        if (this.mAudioFormat == 2) {
            ShortBuffer asShortBuffer = byteBuffer.asShortBuffer();
            double d = 0.0d;
            while (asShortBuffer.hasRemaining()) {
                d = Math.max(d, Math.abs((int) asShortBuffer.get()));
            }
            this.mAudioAmplitude = d / 32767.0d;
            if (executor != null && audioSourceCallback != null) {
                executor.execute(new RunnableC0371x742e2fda(this, audioSourceCallback, 7));
            }
        }
    }

    @NonNull
    public ListenableFuture<Void> release() {
        return CallbackToFutureAdapter.getFuture(new C0419x35cc9f53(this, 1));
    }

    public void retryStartAudioStream() {
        Preconditions.checkState(this.mInSilentStartState);
        try {
            this.mAudioStream.start();
            Logger.d(TAG, "Retry start AudioStream succeed");
            this.mSilentAudioStream.stop();
            this.mInSilentStartState = false;
        } catch (AudioStream.AudioStreamException e) {
            Logger.w(TAG, "Retry start AudioStream failed", e);
            this.mLatestFailedStartTimeNs = getCurrentSystemTimeNs();
        }
    }

    public void sendNextAudio() {
        BufferProvider<? extends InputBuffer> bufferProvider = this.mBufferProvider;
        Objects.requireNonNull(bufferProvider);
        ListenableFuture<? extends InputBuffer> acquireBuffer = bufferProvider.acquireBuffer();
        FutureCallback<InputBuffer> futureCallback = this.mAcquireBufferCallback;
        Objects.requireNonNull(futureCallback);
        Futures.addCallback(acquireBuffer, futureCallback, this.mExecutor);
    }

    public void setAudioSourceCallback(@NonNull Executor executor, @NonNull AudioSourceCallback audioSourceCallback) {
        this.mExecutor.execute(new RunnableC0384x149e5abd(this, 2, executor, audioSourceCallback));
    }

    public void setBufferProvider(@NonNull BufferProvider<? extends InputBuffer> bufferProvider) {
        this.mExecutor.execute(new RunnableC0371x742e2fda(this, bufferProvider, 4));
    }

    public void setState(InternalState internalState) {
        Logger.d(TAG, "Transitioning internal state: " + this.mState + " --> " + internalState);
        this.mState = internalState;
    }

    public void start() {
        this.mExecutor.execute(new RunnableC0428x85c1d9df(this, 1));
    }

    public void stop() {
        this.mExecutor.execute(new RunnableC0428x85c1d9df(this, 0));
    }

    public void updateSendingAudio() {
        boolean z;
        if (this.mState == InternalState.STARTED) {
            if (this.mBufferProviderState == BufferProvider.State.ACTIVE) {
                z = true;
            } else {
                z = false;
            }
            notifySuspended(!z);
            if (z) {
                startSendingAudio();
                return;
            } else {
                stopSendingAudio();
                return;
            }
        }
        stopSendingAudio();
    }

    @RequiresPermission("android.permission.RECORD_AUDIO")
    @VisibleForTesting
    public AudioSource(@NonNull AudioSettings audioSettings, @NonNull Executor executor, @Nullable Context context, @NonNull AudioStreamFactory audioStreamFactory, long j) {
        this.mNotifiedSilenceState = new AtomicReference<>(null);
        this.mNotifiedSuspendState = new AtomicBoolean(false);
        this.mState = InternalState.CONFIGURED;
        this.mBufferProviderState = BufferProvider.State.INACTIVE;
        this.mAmplitudeTimestamp = 0L;
        Executor newSequentialExecutor = CameraXExecutors.newSequentialExecutor(executor);
        this.mExecutor = newSequentialExecutor;
        this.mStartRetryIntervalNs = TimeUnit.MILLISECONDS.toNanos(j);
        try {
            BufferedAudioStream bufferedAudioStream = new BufferedAudioStream(audioStreamFactory.create(audioSettings, context), audioSettings);
            this.mAudioStream = bufferedAudioStream;
            bufferedAudioStream.setCallback(new AudioStreamCallback(), newSequentialExecutor);
            this.mSilentAudioStream = new SilentAudioStream(audioSettings);
            this.mAudioFormat = audioSettings.getAudioFormat();
            this.mAudioSource = audioSettings.getAudioSource();
        } catch (AudioStream.AudioStreamException | IllegalArgumentException e) {
            throw new AudioSourceAccessException("Unable to create AudioStream", e);
        }
    }

    public void start(boolean z) {
        this.mExecutor.execute(new RunnableC0427x4544b8f9(this, z, 1));
    }
}
