package androidx.camera.video.internal.encoder;

import android.annotation.SuppressLint;
import android.media.MediaCodec;
import android.media.MediaCodecInfo;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.SystemClock;
import android.util.Range;
import android.view.Surface;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.Observable;
import androidx.camera.core.impl.Timebase;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.impl.utils.futures.FutureCallback;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.camera.video.internal.BufferProvider;
import androidx.camera.video.internal.DebugUtils;
import androidx.camera.video.internal.compat.quirk.AudioEncoderIgnoresInputTimestampQuirk;
import androidx.camera.video.internal.compat.quirk.CameraUseInconsistentTimebaseQuirk;
import androidx.camera.video.internal.compat.quirk.CodecStuckOnFlushQuirk;
import androidx.camera.video.internal.compat.quirk.DeviceQuirks;
import androidx.camera.video.internal.compat.quirk.EncoderNotUsePersistentInputSurfaceQuirk;
import androidx.camera.video.internal.compat.quirk.SignalEosOutputBufferNotComeQuirk;
import androidx.camera.video.internal.compat.quirk.StopCodecAfterSurfaceRemovalCrashMediaServerQuirk;
import androidx.camera.video.internal.compat.quirk.VideoEncoderSuspendDoesNotIncludeSuspendTimeQuirk;
import androidx.camera.video.internal.encoder.Encoder;
import androidx.camera.video.internal.encoder.EncoderImpl;
import androidx.camera.video.internal.utils.CodecUtil;
import androidx.camera.video.internal.workaround.VideoTimebaseConverter;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.util.Preconditions;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.C0458xabc6b8ed;
import defpackage.RunnableC0371x742e2fda;
import defpackage.RunnableC0384x149e5abd;
import defpackage.RunnableC0703x8affad75;
import defpackage.RunnableC0704x26897e44;
import defpackage.RunnableC0706x61029d7d;
import defpackage.RunnableC0707xaac1168e;
import j$.util.Objects;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Deque;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public class EncoderImpl implements Encoder {
    private static final boolean DEBUG = false;
    private static final long NO_LIMIT_LONG = Long.MAX_VALUE;
    private static final Range<Long> NO_RANGE = Range.create(Long.MAX_VALUE, Long.MAX_VALUE);
    private static final long SIGNAL_EOS_TIMEOUT_MS = 1000;
    private static final long STOP_TIMEOUT_MS = 1000;
    final Executor mEncoderExecutor;
    private final EncoderInfo mEncoderInfo;
    final Encoder.EncoderInput mEncoderInput;
    final Timebase mInputTimebase;
    final boolean mIsVideoEncoder;
    final MediaCodec mMediaCodec;
    private final MediaFormat mMediaFormat;
    private final CallbackToFutureAdapter.Completer<Void> mReleasedCompleter;
    private final ListenableFuture<Void> mReleasedFuture;

    @Nullable
    private Future<?> mSignalEosTimeoutFuture;
    InternalState mState;
    final String mTag;
    final Object mLock = new Object();
    final Queue<Integer> mFreeInputBufferIndexQueue = new ArrayDeque();
    private final Queue<CallbackToFutureAdapter.Completer<InputBuffer>> mAcquisitionQueue = new ArrayDeque();
    private final Set<InputBuffer> mInputBufferSet = new HashSet();
    final Set<EncodedDataImpl> mEncodedDataSet = new HashSet();
    final Deque<Range<Long>> mActivePauseResumeTimeRanges = new ArrayDeque();
    final TimeProvider mTimeProvider = new SystemTimeProvider();

    @GuardedBy("mLock")
    EncoderCallback mEncoderCallback = EncoderCallback.EMPTY;

    @GuardedBy("mLock")
    Executor mEncoderCallbackExecutor = CameraXExecutors.directExecutor();
    Range<Long> mStartStopTimeRangeUs = NO_RANGE;
    long mTotalPausedDurationUs = 0;
    boolean mPendingCodecStop = false;
    Long mLastDataStopTimestamp = null;
    Future<?> mStopTimeoutFuture = null;
    private MediaCodecCallback mMediaCodecCallback = null;
    private boolean mIsFlushedAfterEndOfStream = false;
    private boolean mSourceStoppedSignalled = false;
    boolean mMediaCodecEosSignalled = false;

    /* renamed from: androidx.camera.video.internal.encoder.EncoderImpl$1 */
    /* loaded from: classes.dex */
    public class AnonymousClass1 implements FutureCallback<InputBuffer> {

        /* renamed from: androidx.camera.video.internal.encoder.EncoderImpl$1$1 */
        /* loaded from: classes.dex */
        public class C00941 implements FutureCallback<Void> {
            public C00941() {
            }

            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public void onFailure(@NonNull Throwable th) {
                if (th instanceof MediaCodec.CodecException) {
                    EncoderImpl.this.handleEncodeError((MediaCodec.CodecException) th);
                } else {
                    EncoderImpl.this.handleEncodeError(0, th.getMessage(), th);
                }
            }

            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public void onSuccess(@Nullable Void r1) {
            }
        }

        public AnonymousClass1() {
        }

        @Override // androidx.camera.core.impl.utils.futures.FutureCallback
        public void onFailure(@NonNull Throwable th) {
            EncoderImpl.this.handleEncodeError(0, "Unable to acquire InputBuffer.", th);
        }

        @Override // androidx.camera.core.impl.utils.futures.FutureCallback
        public void onSuccess(InputBuffer inputBuffer) {
            inputBuffer.setPresentationTimeUs(EncoderImpl.this.generatePresentationTimeUs());
            inputBuffer.setEndOfStream(true);
            inputBuffer.submit();
            Futures.addCallback(inputBuffer.getTerminationFuture(), new FutureCallback<Void>() { // from class: androidx.camera.video.internal.encoder.EncoderImpl.1.1
                public C00941() {
                }

                @Override // androidx.camera.core.impl.utils.futures.FutureCallback
                public void onFailure(@NonNull Throwable th) {
                    if (th instanceof MediaCodec.CodecException) {
                        EncoderImpl.this.handleEncodeError((MediaCodec.CodecException) th);
                    } else {
                        EncoderImpl.this.handleEncodeError(0, th.getMessage(), th);
                    }
                }

                @Override // androidx.camera.core.impl.utils.futures.FutureCallback
                public void onSuccess(@Nullable Void r1) {
                }
            }, EncoderImpl.this.mEncoderExecutor);
        }
    }

    @RequiresApi(23)
    /* loaded from: classes.dex */
    public static class Api23Impl {
        private Api23Impl() {
        }

        @NonNull
        public static Surface createPersistentInputSurface() {
            Surface createPersistentInputSurface;
            createPersistentInputSurface = MediaCodec.createPersistentInputSurface();
            return createPersistentInputSurface;
        }

        public static void setInputSurface(@NonNull MediaCodec mediaCodec, @NonNull Surface surface) {
            mediaCodec.setInputSurface(surface);
        }
    }

    /* loaded from: classes.dex */
    public class ByteBufferInput implements Encoder.ByteBufferInput {
        private final Map<Observable.Observer<? super BufferProvider.State>, Executor> mStateObservers = new LinkedHashMap();
        private BufferProvider.State mBufferProviderState = BufferProvider.State.INACTIVE;
        private final List<ListenableFuture<InputBuffer>> mAcquisitionList = new ArrayList();

        public ByteBufferInput() {
        }

        /* renamed from: cancelInputBuffer */
        public void lambda$acquireBuffer$2(@NonNull ListenableFuture<InputBuffer> listenableFuture) {
            if (!listenableFuture.cancel(true)) {
                Preconditions.checkState(listenableFuture.isDone());
                try {
                    listenableFuture.get().cancel();
                } catch (InterruptedException | CancellationException | ExecutionException e) {
                    Logger.w(EncoderImpl.this.mTag, "Unable to cancel the input buffer: " + e);
                }
            }
        }

        public /* synthetic */ void lambda$acquireBuffer$3(ListenableFuture listenableFuture) {
            this.mAcquisitionList.remove(listenableFuture);
        }

        public /* synthetic */ void lambda$acquireBuffer$4(CallbackToFutureAdapter.Completer completer) {
            BufferProvider.State state = this.mBufferProviderState;
            if (state == BufferProvider.State.ACTIVE) {
                final ListenableFuture<InputBuffer> acquireInputBuffer = EncoderImpl.this.acquireInputBuffer();
                Futures.propagate(acquireInputBuffer, completer);
                final int i = 0;
                completer.addCancellationListener(new Runnable(this) { // from class: androidx.camera.video.internal.encoder.뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤

                    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
                    public final /* synthetic */ EncoderImpl.ByteBufferInput f243x3271d0aa;

                    {
                        this.f243x3271d0aa = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        switch (i) {
                            case 0:
                                this.f243x3271d0aa.lambda$acquireBuffer$2(acquireInputBuffer);
                                return;
                            default:
                                this.f243x3271d0aa.lambda$acquireBuffer$3(acquireInputBuffer);
                                return;
                        }
                    }
                }, CameraXExecutors.directExecutor());
                this.mAcquisitionList.add(acquireInputBuffer);
                final int i2 = 1;
                acquireInputBuffer.addListener(new Runnable(this) { // from class: androidx.camera.video.internal.encoder.뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤

                    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
                    public final /* synthetic */ EncoderImpl.ByteBufferInput f243x3271d0aa;

                    {
                        this.f243x3271d0aa = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        switch (i2) {
                            case 0:
                                this.f243x3271d0aa.lambda$acquireBuffer$2(acquireInputBuffer);
                                return;
                            default:
                                this.f243x3271d0aa.lambda$acquireBuffer$3(acquireInputBuffer);
                                return;
                        }
                    }
                }, EncoderImpl.this.mEncoderExecutor);
                return;
            }
            if (state == BufferProvider.State.INACTIVE) {
                completer.setException(new IllegalStateException("BufferProvider is not active."));
                return;
            }
            completer.setException(new IllegalStateException("Unknown state: " + this.mBufferProviderState));
        }

        public /* synthetic */ Object lambda$acquireBuffer$5(CallbackToFutureAdapter.Completer completer) {
            EncoderImpl.this.mEncoderExecutor.execute(new RunnableC0099x9738a56c(this, completer, 0));
            return "acquireBuffer";
        }

        public /* synthetic */ void lambda$addObserver$7(Observable.Observer observer, Executor executor) {
            this.mStateObservers.put((Observable.Observer) Preconditions.checkNotNull(observer), (Executor) Preconditions.checkNotNull(executor));
            executor.execute(new RunnableC0095xfbe0c504(observer, this.mBufferProviderState, 3));
        }

        public /* synthetic */ void lambda$fetchData$0(CallbackToFutureAdapter.Completer completer) {
            completer.set(this.mBufferProviderState);
        }

        public /* synthetic */ Object lambda$fetchData$1(CallbackToFutureAdapter.Completer completer) {
            EncoderImpl.this.mEncoderExecutor.execute(new RunnableC0099x9738a56c(this, completer, 1));
            return "fetchData";
        }

        public /* synthetic */ void lambda$removeObserver$8(Observable.Observer observer) {
            this.mStateObservers.remove(Preconditions.checkNotNull(observer));
        }

        public static /* synthetic */ void lambda$setActive$9(Map.Entry entry, BufferProvider.State state) {
            ((Observable.Observer) entry.getKey()).onNewData(state);
        }

        @Override // androidx.camera.video.internal.BufferProvider
        @NonNull
        public ListenableFuture<InputBuffer> acquireBuffer() {
            return CallbackToFutureAdapter.getFuture(new C0098x75d576dc(this, 1));
        }

        @Override // androidx.camera.core.impl.Observable
        public void addObserver(@NonNull Executor executor, @NonNull Observable.Observer<? super BufferProvider.State> observer) {
            EncoderImpl.this.mEncoderExecutor.execute(new RunnableC0097x1378447b(this, observer, executor));
        }

        @Override // androidx.camera.core.impl.Observable
        @NonNull
        public ListenableFuture<BufferProvider.State> fetchData() {
            return CallbackToFutureAdapter.getFuture(new C0098x75d576dc(this, 0));
        }

        @Override // androidx.camera.core.impl.Observable
        public void removeObserver(@NonNull Observable.Observer<? super BufferProvider.State> observer) {
            EncoderImpl.this.mEncoderExecutor.execute(new RunnableC0095xfbe0c504(this, observer, 4));
        }

        public void setActive(boolean z) {
            BufferProvider.State state;
            if (z) {
                state = BufferProvider.State.ACTIVE;
            } else {
                state = BufferProvider.State.INACTIVE;
            }
            if (this.mBufferProviderState == state) {
                return;
            }
            this.mBufferProviderState = state;
            if (state == BufferProvider.State.INACTIVE) {
                Iterator<ListenableFuture<InputBuffer>> it = this.mAcquisitionList.iterator();
                while (it.hasNext()) {
                    it.next().cancel(true);
                }
                this.mAcquisitionList.clear();
            }
            for (Map.Entry<Observable.Observer<? super BufferProvider.State>, Executor> entry : this.mStateObservers.entrySet()) {
                try {
                    entry.getValue().execute(new RunnableC0095xfbe0c504(entry, state, 2));
                } catch (RejectedExecutionException e) {
                    Logger.e(EncoderImpl.this.mTag, "Unable to post to the supplied executor.", e);
                }
            }
        }
    }

    /* loaded from: classes.dex */
    public enum InternalState {
        CONFIGURED,
        STARTED,
        PAUSED,
        STOPPING,
        PENDING_START,
        PENDING_START_PAUSED,
        PENDING_RELEASE,
        ERROR,
        RELEASED
    }

    /* loaded from: classes.dex */
    public class MediaCodecCallback extends MediaCodec.Callback {
        private boolean mReachStopTimeAsEos;

        @Nullable
        private final VideoTimebaseConverter mVideoTimestampConverter;
        private boolean mHasSendStartCallback = false;
        private boolean mHasFirstData = false;
        private boolean mHasEndData = false;
        private long mLastPresentationTimeUs = 0;
        private long mLastSentAdjustedTimeUs = 0;
        private boolean mIsOutputBufferInPauseState = false;
        private boolean mIsKeyFrameRequired = false;
        private boolean mStopped = false;

        /* renamed from: androidx.camera.video.internal.encoder.EncoderImpl$MediaCodecCallback$1 */
        /* loaded from: classes.dex */
        public class AnonymousClass1 implements FutureCallback<Void> {
            final /* synthetic */ EncodedDataImpl val$encodedData;

            public AnonymousClass1(EncodedDataImpl encodedDataImpl) {
                r2 = encodedDataImpl;
            }

            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public void onFailure(@NonNull Throwable th) {
                EncoderImpl.this.mEncodedDataSet.remove(r2);
                if (th instanceof MediaCodec.CodecException) {
                    EncoderImpl.this.handleEncodeError((MediaCodec.CodecException) th);
                } else {
                    EncoderImpl.this.handleEncodeError(0, th.getMessage(), th);
                }
            }

            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public void onSuccess(@Nullable Void r2) {
                EncoderImpl.this.mEncodedDataSet.remove(r2);
            }
        }

        public MediaCodecCallback() {
            this.mReachStopTimeAsEos = true;
            if (EncoderImpl.this.mIsVideoEncoder) {
                this.mVideoTimestampConverter = new VideoTimebaseConverter(EncoderImpl.this.mTimeProvider, EncoderImpl.this.mInputTimebase, (CameraUseInconsistentTimebaseQuirk) DeviceQuirks.get(CameraUseInconsistentTimebaseQuirk.class));
            } else {
                this.mVideoTimestampConverter = null;
            }
            CodecStuckOnFlushQuirk codecStuckOnFlushQuirk = (CodecStuckOnFlushQuirk) DeviceQuirks.get(CodecStuckOnFlushQuirk.class);
            if (codecStuckOnFlushQuirk != null && codecStuckOnFlushQuirk.isProblematicMimeType(EncoderImpl.this.mMediaFormat.getString("mime"))) {
                this.mReachStopTimeAsEos = false;
            }
        }

        private boolean checkBufferInfo(@NonNull MediaCodec.BufferInfo bufferInfo) {
            if (this.mHasEndData) {
                Logger.d(EncoderImpl.this.mTag, "Drop buffer by already reach end of stream.");
                return false;
            }
            if (bufferInfo.size <= 0) {
                Logger.d(EncoderImpl.this.mTag, "Drop buffer by invalid buffer size.");
                return false;
            }
            if ((bufferInfo.flags & 2) != 0) {
                Logger.d(EncoderImpl.this.mTag, "Drop buffer by codec config.");
                return false;
            }
            VideoTimebaseConverter videoTimebaseConverter = this.mVideoTimestampConverter;
            if (videoTimebaseConverter != null) {
                bufferInfo.presentationTimeUs = videoTimebaseConverter.convertToUptimeUs(bufferInfo.presentationTimeUs);
            }
            long j = bufferInfo.presentationTimeUs;
            if (j <= this.mLastPresentationTimeUs) {
                Logger.d(EncoderImpl.this.mTag, "Drop buffer by out of order buffer from MediaCodec.");
                return false;
            }
            this.mLastPresentationTimeUs = j;
            if (!EncoderImpl.this.mStartStopTimeRangeUs.contains((Range<Long>) Long.valueOf(j))) {
                Logger.d(EncoderImpl.this.mTag, "Drop buffer by not in start-stop range.");
                EncoderImpl encoderImpl = EncoderImpl.this;
                if (encoderImpl.mPendingCodecStop && bufferInfo.presentationTimeUs >= encoderImpl.mStartStopTimeRangeUs.getUpper().longValue()) {
                    Future<?> future = EncoderImpl.this.mStopTimeoutFuture;
                    if (future != null) {
                        future.cancel(true);
                    }
                    EncoderImpl.this.mLastDataStopTimestamp = Long.valueOf(bufferInfo.presentationTimeUs);
                    EncoderImpl.this.signalCodecStop();
                    EncoderImpl.this.mPendingCodecStop = false;
                }
                return false;
            }
            if (updatePauseRangeStateAndCheckIfBufferPaused(bufferInfo)) {
                Logger.d(EncoderImpl.this.mTag, "Drop buffer by pause.");
                return false;
            }
            if (EncoderImpl.this.getAdjustedTimeUs(bufferInfo) <= this.mLastSentAdjustedTimeUs) {
                Logger.d(EncoderImpl.this.mTag, "Drop buffer by adjusted time is less than the last sent time.");
                if (EncoderImpl.this.mIsVideoEncoder && EncoderImpl.isKeyFrame(bufferInfo)) {
                    this.mIsKeyFrameRequired = true;
                }
                return false;
            }
            if (!this.mHasFirstData && !this.mIsKeyFrameRequired && EncoderImpl.this.mIsVideoEncoder) {
                this.mIsKeyFrameRequired = true;
            }
            if (this.mIsKeyFrameRequired) {
                if (!EncoderImpl.isKeyFrame(bufferInfo)) {
                    Logger.d(EncoderImpl.this.mTag, "Drop buffer by not a key frame.");
                    EncoderImpl.this.requestKeyFrameToMediaCodec();
                    return false;
                }
                this.mIsKeyFrameRequired = false;
            }
            return true;
        }

        private boolean isEndOfStream(@NonNull MediaCodec.BufferInfo bufferInfo) {
            if (!EncoderImpl.hasEndOfStreamFlag(bufferInfo) && (!this.mReachStopTimeAsEos || !isEosSignalledAndStopTimeReached(bufferInfo))) {
                return false;
            }
            return true;
        }

        private boolean isEosSignalledAndStopTimeReached(@NonNull MediaCodec.BufferInfo bufferInfo) {
            EncoderImpl encoderImpl = EncoderImpl.this;
            if (encoderImpl.mMediaCodecEosSignalled && bufferInfo.presentationTimeUs > encoderImpl.mStartStopTimeRangeUs.getUpper().longValue()) {
                return true;
            }
            return false;
        }

        public /* synthetic */ void lambda$onError$4(MediaCodec.CodecException codecException) {
            switch (EncoderImpl.this.mState) {
                case CONFIGURED:
                case ERROR:
                case RELEASED:
                    return;
                case STARTED:
                case PAUSED:
                case STOPPING:
                case PENDING_START:
                case PENDING_START_PAUSED:
                case PENDING_RELEASE:
                    EncoderImpl.this.handleEncodeError(codecException);
                    return;
                default:
                    throw new IllegalStateException("Unknown state: " + EncoderImpl.this.mState);
            }
        }

        public /* synthetic */ void lambda$onInputBufferAvailable$0(int i) {
            if (this.mStopped) {
                Logger.w(EncoderImpl.this.mTag, "Receives input frame after codec is reset.");
                return;
            }
            switch (EncoderImpl.this.mState) {
                case CONFIGURED:
                case ERROR:
                case RELEASED:
                    return;
                case STARTED:
                case PAUSED:
                case STOPPING:
                case PENDING_START:
                case PENDING_START_PAUSED:
                case PENDING_RELEASE:
                    EncoderImpl.this.mFreeInputBufferIndexQueue.offer(Integer.valueOf(i));
                    EncoderImpl.this.matchAcquisitionsAndFreeBufferIndexes();
                    return;
                default:
                    throw new IllegalStateException("Unknown state: " + EncoderImpl.this.mState);
            }
        }

        public /* synthetic */ void lambda$onOutputBufferAvailable$1(MediaCodec.BufferInfo bufferInfo, MediaCodec mediaCodec, int i) {
            EncoderCallback encoderCallback;
            Executor executor;
            if (this.mStopped) {
                Logger.w(EncoderImpl.this.mTag, "Receives frame after codec is reset.");
                return;
            }
            switch (EncoderImpl.this.mState) {
                case CONFIGURED:
                case ERROR:
                case RELEASED:
                    return;
                case STARTED:
                case PAUSED:
                case STOPPING:
                case PENDING_START:
                case PENDING_START_PAUSED:
                case PENDING_RELEASE:
                    synchronized (EncoderImpl.this.mLock) {
                        EncoderImpl encoderImpl = EncoderImpl.this;
                        encoderCallback = encoderImpl.mEncoderCallback;
                        executor = encoderImpl.mEncoderCallbackExecutor;
                    }
                    if (!this.mHasSendStartCallback) {
                        this.mHasSendStartCallback = true;
                        try {
                            Objects.requireNonNull(encoderCallback);
                            executor.execute(new RunnableC0707xaac1168e(encoderCallback, 1));
                        } catch (RejectedExecutionException e) {
                            Logger.e(EncoderImpl.this.mTag, "Unable to post to the supplied executor.", e);
                        }
                    }
                    if (checkBufferInfo(bufferInfo)) {
                        if (!this.mHasFirstData) {
                            this.mHasFirstData = true;
                            Logger.d(EncoderImpl.this.mTag, "data timestampUs = " + bufferInfo.presentationTimeUs + ", data timebase = " + EncoderImpl.this.mInputTimebase + ", current system uptimeMs = " + SystemClock.uptimeMillis() + ", current system realtimeMs = " + SystemClock.elapsedRealtime());
                        }
                        MediaCodec.BufferInfo resolveOutputBufferInfo = resolveOutputBufferInfo(bufferInfo);
                        this.mLastSentAdjustedTimeUs = resolveOutputBufferInfo.presentationTimeUs;
                        try {
                            sendEncodedData(new EncodedDataImpl(mediaCodec, i, resolveOutputBufferInfo), encoderCallback, executor);
                        } catch (MediaCodec.CodecException e2) {
                            EncoderImpl.this.handleEncodeError(e2);
                            return;
                        }
                    } else {
                        try {
                            EncoderImpl.this.mMediaCodec.releaseOutputBuffer(i, false);
                        } catch (MediaCodec.CodecException e3) {
                            EncoderImpl.this.handleEncodeError(e3);
                            return;
                        }
                    }
                    if (!this.mHasEndData && isEndOfStream(bufferInfo)) {
                        reachEndData();
                        return;
                    }
                    return;
                default:
                    throw new IllegalStateException("Unknown state: " + EncoderImpl.this.mState);
            }
        }

        public static /* synthetic */ MediaFormat lambda$onOutputFormatChanged$5(MediaFormat mediaFormat) {
            return mediaFormat;
        }

        public static /* synthetic */ void lambda$onOutputFormatChanged$6(EncoderCallback encoderCallback, MediaFormat mediaFormat) {
            encoderCallback.onOutputConfigUpdate(new C0103x3db60231(mediaFormat));
        }

        public /* synthetic */ void lambda$onOutputFormatChanged$7(MediaFormat mediaFormat) {
            EncoderCallback encoderCallback;
            Executor executor;
            if (this.mStopped) {
                Logger.w(EncoderImpl.this.mTag, "Receives onOutputFormatChanged after codec is reset.");
                return;
            }
            switch (EncoderImpl.this.mState) {
                case CONFIGURED:
                case ERROR:
                case RELEASED:
                    return;
                case STARTED:
                case PAUSED:
                case STOPPING:
                case PENDING_START:
                case PENDING_START_PAUSED:
                case PENDING_RELEASE:
                    synchronized (EncoderImpl.this.mLock) {
                        EncoderImpl encoderImpl = EncoderImpl.this;
                        encoderCallback = encoderImpl.mEncoderCallback;
                        executor = encoderImpl.mEncoderCallbackExecutor;
                    }
                    try {
                        executor.execute(new RunnableC0095xfbe0c504(encoderCallback, mediaFormat, 7));
                        return;
                    } catch (RejectedExecutionException e) {
                        Logger.e(EncoderImpl.this.mTag, "Unable to post to the supplied executor.", e);
                        return;
                    }
                default:
                    throw new IllegalStateException("Unknown state: " + EncoderImpl.this.mState);
            }
        }

        public /* synthetic */ void lambda$reachEndData$2(Executor executor, EncoderCallback encoderCallback) {
            if (EncoderImpl.this.mState == InternalState.ERROR) {
                return;
            }
            try {
                Objects.requireNonNull(encoderCallback);
                executor.execute(new RunnableC0707xaac1168e(encoderCallback, 0));
            } catch (RejectedExecutionException e) {
                Logger.e(EncoderImpl.this.mTag, "Unable to post to the supplied executor.", e);
            }
        }

        @NonNull
        private MediaCodec.BufferInfo resolveOutputBufferInfo(@NonNull MediaCodec.BufferInfo bufferInfo) {
            boolean z;
            long adjustedTimeUs = EncoderImpl.this.getAdjustedTimeUs(bufferInfo);
            if (bufferInfo.presentationTimeUs == adjustedTimeUs) {
                return bufferInfo;
            }
            if (adjustedTimeUs > this.mLastSentAdjustedTimeUs) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.checkState(z);
            MediaCodec.BufferInfo bufferInfo2 = new MediaCodec.BufferInfo();
            bufferInfo2.set(bufferInfo.offset, bufferInfo.size, adjustedTimeUs, bufferInfo.flags);
            return bufferInfo2;
        }

        private void sendEncodedData(@NonNull EncodedDataImpl encodedDataImpl, @NonNull EncoderCallback encoderCallback, @NonNull Executor executor) {
            EncoderImpl.this.mEncodedDataSet.add(encodedDataImpl);
            Futures.addCallback(encodedDataImpl.getClosedFuture(), new FutureCallback<Void>() { // from class: androidx.camera.video.internal.encoder.EncoderImpl.MediaCodecCallback.1
                final /* synthetic */ EncodedDataImpl val$encodedData;

                public AnonymousClass1(EncodedDataImpl encodedDataImpl2) {
                    r2 = encodedDataImpl2;
                }

                @Override // androidx.camera.core.impl.utils.futures.FutureCallback
                public void onFailure(@NonNull Throwable th) {
                    EncoderImpl.this.mEncodedDataSet.remove(r2);
                    if (th instanceof MediaCodec.CodecException) {
                        EncoderImpl.this.handleEncodeError((MediaCodec.CodecException) th);
                    } else {
                        EncoderImpl.this.handleEncodeError(0, th.getMessage(), th);
                    }
                }

                @Override // androidx.camera.core.impl.utils.futures.FutureCallback
                public void onSuccess(@Nullable Void r2) {
                    EncoderImpl.this.mEncodedDataSet.remove(r2);
                }
            }, EncoderImpl.this.mEncoderExecutor);
            try {
                executor.execute(new RunnableC0095xfbe0c504(encoderCallback, encodedDataImpl2, 6));
            } catch (RejectedExecutionException e) {
                Logger.e(EncoderImpl.this.mTag, "Unable to post to the supplied executor.", e);
                encodedDataImpl2.close();
            }
        }

        private boolean updatePauseRangeStateAndCheckIfBufferPaused(@NonNull MediaCodec.BufferInfo bufferInfo) {
            Executor executor;
            EncoderCallback encoderCallback;
            EncoderImpl.this.updateTotalPausedDuration(bufferInfo.presentationTimeUs);
            boolean isInPauseRange = EncoderImpl.this.isInPauseRange(bufferInfo.presentationTimeUs);
            boolean z = this.mIsOutputBufferInPauseState;
            if (!z && isInPauseRange) {
                Logger.d(EncoderImpl.this.mTag, "Switch to pause state");
                this.mIsOutputBufferInPauseState = true;
                synchronized (EncoderImpl.this.mLock) {
                    EncoderImpl encoderImpl = EncoderImpl.this;
                    executor = encoderImpl.mEncoderCallbackExecutor;
                    encoderCallback = encoderImpl.mEncoderCallback;
                }
                Objects.requireNonNull(encoderCallback);
                executor.execute(new RunnableC0707xaac1168e(encoderCallback, 2));
                EncoderImpl encoderImpl2 = EncoderImpl.this;
                if (encoderImpl2.mState == InternalState.PAUSED && ((encoderImpl2.mIsVideoEncoder || DeviceQuirks.get(AudioEncoderIgnoresInputTimestampQuirk.class) == null) && (!EncoderImpl.this.mIsVideoEncoder || DeviceQuirks.get(VideoEncoderSuspendDoesNotIncludeSuspendTimeQuirk.class) == null))) {
                    Encoder.EncoderInput encoderInput = EncoderImpl.this.mEncoderInput;
                    if (encoderInput instanceof ByteBufferInput) {
                        ((ByteBufferInput) encoderInput).setActive(false);
                    }
                    EncoderImpl.this.setMediaCodecPaused(true);
                }
                EncoderImpl.this.mLastDataStopTimestamp = Long.valueOf(bufferInfo.presentationTimeUs);
                EncoderImpl encoderImpl3 = EncoderImpl.this;
                if (encoderImpl3.mPendingCodecStop) {
                    Future<?> future = encoderImpl3.mStopTimeoutFuture;
                    if (future != null) {
                        future.cancel(true);
                    }
                    EncoderImpl.this.signalCodecStop();
                    EncoderImpl.this.mPendingCodecStop = false;
                }
            } else if (z && !isInPauseRange) {
                Logger.d(EncoderImpl.this.mTag, "Switch to resume state");
                this.mIsOutputBufferInPauseState = false;
                if (EncoderImpl.this.mIsVideoEncoder && !EncoderImpl.isKeyFrame(bufferInfo)) {
                    this.mIsKeyFrameRequired = true;
                }
            }
            return this.mIsOutputBufferInPauseState;
        }

        @Override // android.media.MediaCodec.Callback
        public void onError(@NonNull MediaCodec mediaCodec, @NonNull MediaCodec.CodecException codecException) {
            EncoderImpl.this.mEncoderExecutor.execute(new RunnableC0095xfbe0c504(this, (Object) codecException, 8));
        }

        @Override // android.media.MediaCodec.Callback
        public void onInputBufferAvailable(@NonNull MediaCodec mediaCodec, final int i) {
            EncoderImpl.this.mEncoderExecutor.execute(new Runnable() { // from class: androidx.camera.video.internal.encoder.뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋
                @Override // java.lang.Runnable
                public final void run() {
                    EncoderImpl.MediaCodecCallback.this.lambda$onInputBufferAvailable$0(i);
                }
            });
        }

        @Override // android.media.MediaCodec.Callback
        public void onOutputBufferAvailable(@NonNull final MediaCodec mediaCodec, final int i, @NonNull final MediaCodec.BufferInfo bufferInfo) {
            EncoderImpl.this.mEncoderExecutor.execute(new Runnable() { // from class: androidx.camera.video.internal.encoder.뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두
                @Override // java.lang.Runnable
                public final void run() {
                    EncoderImpl.MediaCodecCallback.this.lambda$onOutputBufferAvailable$1(bufferInfo, mediaCodec, i);
                }
            });
        }

        @Override // android.media.MediaCodec.Callback
        public void onOutputFormatChanged(@NonNull MediaCodec mediaCodec, @NonNull MediaFormat mediaFormat) {
            EncoderImpl.this.mEncoderExecutor.execute(new RunnableC0095xfbe0c504(this, (Object) mediaFormat, 5));
        }

        public void reachEndData() {
            EncoderImpl encoderImpl;
            EncoderCallback encoderCallback;
            Executor executor;
            if (this.mHasEndData) {
                return;
            }
            this.mHasEndData = true;
            if (EncoderImpl.this.mSignalEosTimeoutFuture != null) {
                EncoderImpl.this.mSignalEosTimeoutFuture.cancel(false);
                EncoderImpl.this.mSignalEosTimeoutFuture = null;
            }
            synchronized (EncoderImpl.this.mLock) {
                encoderImpl = EncoderImpl.this;
                encoderCallback = encoderImpl.mEncoderCallback;
                executor = encoderImpl.mEncoderCallbackExecutor;
            }
            encoderImpl.stopMediaCodec(new RunnableC0097x1378447b(this, executor, encoderCallback));
        }

        public void stop() {
            this.mStopped = true;
        }
    }

    /* loaded from: classes.dex */
    public class SurfaceInput implements Encoder.SurfaceInput {
        private final Object mLock = new Object();

        @GuardedBy("mLock")
        private final Set<Surface> mObsoleteSurfaces = new HashSet();

        @GuardedBy("mLock")
        private Surface mSurface;

        @GuardedBy("mLock")
        private Executor mSurfaceUpdateExecutor;

        @GuardedBy("mLock")
        private Encoder.SurfaceInput.OnSurfaceUpdateListener mSurfaceUpdateListener;

        public SurfaceInput() {
        }

        private void notifySurfaceUpdate(@NonNull Executor executor, @NonNull Encoder.SurfaceInput.OnSurfaceUpdateListener onSurfaceUpdateListener, @NonNull Surface surface) {
            try {
                executor.execute(new RunnableC0095xfbe0c504(onSurfaceUpdateListener, surface, 9));
            } catch (RejectedExecutionException e) {
                Logger.e(EncoderImpl.this.mTag, "Unable to post to the supplied executor.", e);
            }
        }

        public void releaseSurface() {
            Surface surface;
            HashSet hashSet;
            synchronized (this.mLock) {
                surface = this.mSurface;
                this.mSurface = null;
                hashSet = new HashSet(this.mObsoleteSurfaces);
                this.mObsoleteSurfaces.clear();
            }
            if (surface != null) {
                surface.release();
            }
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                ((Surface) it.next()).release();
            }
        }

        @SuppressLint({"NewApi"})
        public void resetSurface() {
            Surface createInputSurface;
            Encoder.SurfaceInput.OnSurfaceUpdateListener onSurfaceUpdateListener;
            Executor executor;
            EncoderNotUsePersistentInputSurfaceQuirk encoderNotUsePersistentInputSurfaceQuirk = (EncoderNotUsePersistentInputSurfaceQuirk) DeviceQuirks.get(EncoderNotUsePersistentInputSurfaceQuirk.class);
            synchronized (this.mLock) {
                try {
                    if (encoderNotUsePersistentInputSurfaceQuirk == null) {
                        if (this.mSurface == null) {
                            createInputSurface = Api23Impl.createPersistentInputSurface();
                            this.mSurface = createInputSurface;
                        } else {
                            createInputSurface = null;
                        }
                        Api23Impl.setInputSurface(EncoderImpl.this.mMediaCodec, this.mSurface);
                    } else {
                        Surface surface = this.mSurface;
                        if (surface != null) {
                            this.mObsoleteSurfaces.add(surface);
                        }
                        createInputSurface = EncoderImpl.this.mMediaCodec.createInputSurface();
                        this.mSurface = createInputSurface;
                    }
                    onSurfaceUpdateListener = this.mSurfaceUpdateListener;
                    executor = this.mSurfaceUpdateExecutor;
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (createInputSurface != null && onSurfaceUpdateListener != null && executor != null) {
                notifySurfaceUpdate(executor, onSurfaceUpdateListener, createInputSurface);
            }
        }

        @Override // androidx.camera.video.internal.encoder.Encoder.SurfaceInput
        public void setOnSurfaceUpdateListener(@NonNull Executor executor, @NonNull Encoder.SurfaceInput.OnSurfaceUpdateListener onSurfaceUpdateListener) {
            Surface surface;
            synchronized (this.mLock) {
                this.mSurfaceUpdateListener = (Encoder.SurfaceInput.OnSurfaceUpdateListener) Preconditions.checkNotNull(onSurfaceUpdateListener);
                this.mSurfaceUpdateExecutor = (Executor) Preconditions.checkNotNull(executor);
                surface = this.mSurface;
            }
            if (surface != null) {
                notifySurfaceUpdate(executor, onSurfaceUpdateListener, surface);
            }
        }
    }

    public EncoderImpl(@NonNull Executor executor, @NonNull EncoderConfig encoderConfig) {
        Preconditions.checkNotNull(executor);
        Preconditions.checkNotNull(encoderConfig);
        MediaCodec createCodec = CodecUtil.createCodec(encoderConfig);
        this.mMediaCodec = createCodec;
        MediaCodecInfo codecInfo = createCodec.getCodecInfo();
        this.mEncoderExecutor = CameraXExecutors.newSequentialExecutor(executor);
        MediaFormat mediaFormat = encoderConfig.toMediaFormat();
        this.mMediaFormat = mediaFormat;
        Timebase inputTimebase = encoderConfig.getInputTimebase();
        this.mInputTimebase = inputTimebase;
        if (encoderConfig instanceof AudioEncoderConfig) {
            this.mTag = "AudioEncoder";
            this.mIsVideoEncoder = false;
            this.mEncoderInput = new ByteBufferInput();
            this.mEncoderInfo = new AudioEncoderInfoImpl(codecInfo, encoderConfig.getMimeType());
        } else if (encoderConfig instanceof VideoEncoderConfig) {
            this.mTag = "VideoEncoder";
            this.mIsVideoEncoder = true;
            this.mEncoderInput = new SurfaceInput();
            VideoEncoderInfoImpl videoEncoderInfoImpl = new VideoEncoderInfoImpl(codecInfo, encoderConfig.getMimeType());
            clampVideoBitrateIfNotSupported(videoEncoderInfoImpl, mediaFormat);
            this.mEncoderInfo = videoEncoderInfoImpl;
        } else {
            throw new InvalidConfigException("Unknown encoder config type");
        }
        Logger.d(this.mTag, "mInputTimebase = " + inputTimebase);
        Logger.d(this.mTag, "mMediaFormat = " + mediaFormat);
        try {
            reset();
            AtomicReference atomicReference = new AtomicReference();
            this.mReleasedFuture = Futures.nonCancellationPropagating(CallbackToFutureAdapter.getFuture(new C0458xabc6b8ed(atomicReference, 3)));
            this.mReleasedCompleter = (CallbackToFutureAdapter.Completer) Preconditions.checkNotNull((CallbackToFutureAdapter.Completer) atomicReference.get());
            setState(InternalState.CONFIGURED);
        } catch (MediaCodec.CodecException e) {
            throw new InvalidConfigException(e);
        }
    }

    private void addSignalEosTimeoutIfNeeded() {
        if (DeviceQuirks.get(SignalEosOutputBufferNotComeQuirk.class) != null) {
            MediaCodecCallback mediaCodecCallback = this.mMediaCodecCallback;
            Executor executor = this.mEncoderExecutor;
            Future<?> future = this.mSignalEosTimeoutFuture;
            if (future != null) {
                future.cancel(false);
            }
            this.mSignalEosTimeoutFuture = CameraXExecutors.mainThreadExecutor().schedule(new RunnableC0095xfbe0c504(executor, mediaCodecCallback, 0), 1000L, TimeUnit.MILLISECONDS);
        }
    }

    private void clampVideoBitrateIfNotSupported(@NonNull VideoEncoderInfo videoEncoderInfo, @NonNull MediaFormat mediaFormat) {
        Preconditions.checkState(this.mIsVideoEncoder);
        if (mediaFormat.containsKey("bitrate")) {
            int integer = mediaFormat.getInteger("bitrate");
            int intValue = videoEncoderInfo.getSupportedBitrateRange().clamp(Integer.valueOf(integer)).intValue();
            if (integer != intValue) {
                mediaFormat.setInteger("bitrate", intValue);
                Logger.d(this.mTag, "updated bitrate from " + integer + " to " + intValue);
            }
        }
    }

    public static boolean hasEndOfStreamFlag(@NonNull MediaCodec.BufferInfo bufferInfo) {
        if ((bufferInfo.flags & 4) != 0) {
            return true;
        }
        return false;
    }

    private boolean hasStopCodecAfterSurfaceRemovalCrashMediaServerQuirk() {
        if (DeviceQuirks.get(StopCodecAfterSurfaceRemovalCrashMediaServerQuirk.class) != null) {
            return true;
        }
        return false;
    }

    public static boolean isKeyFrame(@NonNull MediaCodec.BufferInfo bufferInfo) {
        if ((bufferInfo.flags & 1) != 0) {
            return true;
        }
        return false;
    }

    public static /* synthetic */ Object lambda$acquireInputBuffer$13(AtomicReference atomicReference, CallbackToFutureAdapter.Completer completer) {
        atomicReference.set(completer);
        return "acquireInputBuffer";
    }

    public /* synthetic */ void lambda$acquireInputBuffer$14(CallbackToFutureAdapter.Completer completer) {
        this.mAcquisitionQueue.remove(completer);
    }

    public static /* synthetic */ void lambda$addSignalEosTimeoutIfNeeded$9(Executor executor, final MediaCodecCallback mediaCodecCallback) {
        Objects.requireNonNull(mediaCodecCallback);
        executor.execute(new Runnable() { // from class: androidx.camera.video.internal.encoder.뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫
            @Override // java.lang.Runnable
            public final void run() {
                EncoderImpl.MediaCodecCallback.this.reachEndData();
            }
        });
    }

    public /* synthetic */ void lambda$matchAcquisitionsAndFreeBufferIndexes$15(InputBufferImpl inputBufferImpl) {
        this.mInputBufferSet.remove(inputBufferImpl);
    }

    public static /* synthetic */ Object lambda$new$0(AtomicReference atomicReference, CallbackToFutureAdapter.Completer completer) {
        atomicReference.set(completer);
        return "mReleasedFuture";
    }

    public static /* synthetic */ void lambda$notifyError$11(EncoderCallback encoderCallback, int i, String str, Throwable th) {
        encoderCallback.onEncodeError(new EncodeException(i, str, th));
    }

    public /* synthetic */ void lambda$pause$5(long j) {
        switch (this.mState) {
            case CONFIGURED:
            case PAUSED:
            case STOPPING:
            case PENDING_START_PAUSED:
            case ERROR:
                return;
            case STARTED:
                Logger.d(this.mTag, "Pause on " + DebugUtils.readableUs(j));
                this.mActivePauseResumeTimeRanges.addLast(Range.create(Long.valueOf(j), Long.MAX_VALUE));
                setState(InternalState.PAUSED);
                return;
            case PENDING_START:
                setState(InternalState.PENDING_START_PAUSED);
                return;
            case PENDING_RELEASE:
            case RELEASED:
                throw new IllegalStateException("Encoder is released");
            default:
                throw new IllegalStateException("Unknown state: " + this.mState);
        }
    }

    public /* synthetic */ void lambda$release$6() {
        switch (this.mState) {
            case CONFIGURED:
            case STARTED:
            case PAUSED:
            case ERROR:
                releaseInternal();
                return;
            case STOPPING:
            case PENDING_START:
            case PENDING_START_PAUSED:
                setState(InternalState.PENDING_RELEASE);
                return;
            case PENDING_RELEASE:
            case RELEASED:
                return;
            default:
                throw new IllegalStateException("Unknown state: " + this.mState);
        }
    }

    public /* synthetic */ void lambda$requestKeyFrame$8() {
        int ordinal = this.mState.ordinal();
        if (ordinal != 1) {
            if (ordinal == 6 || ordinal == 8) {
                throw new IllegalStateException("Encoder is released");
            }
            return;
        }
        requestKeyFrameToMediaCodec();
    }

    public /* synthetic */ void lambda$signalSourceStopped$7() {
        this.mSourceStoppedSignalled = true;
        if (this.mIsFlushedAfterEndOfStream) {
            this.mMediaCodec.stop();
            reset();
        }
    }

    public /* synthetic */ void lambda$start$1(long j) {
        boolean z;
        switch (this.mState) {
            case CONFIGURED:
                this.mLastDataStopTimestamp = null;
                Logger.d(this.mTag, "Start on " + DebugUtils.readableUs(j));
                try {
                    if (this.mIsFlushedAfterEndOfStream) {
                        reset();
                    }
                    this.mStartStopTimeRangeUs = Range.create(Long.valueOf(j), Long.MAX_VALUE);
                    this.mMediaCodec.start();
                    Encoder.EncoderInput encoderInput = this.mEncoderInput;
                    if (encoderInput instanceof ByteBufferInput) {
                        ((ByteBufferInput) encoderInput).setActive(true);
                    }
                    setState(InternalState.STARTED);
                    return;
                } catch (MediaCodec.CodecException e) {
                    handleEncodeError(e);
                    return;
                }
            case STARTED:
            case PENDING_START:
            case ERROR:
                return;
            case PAUSED:
                this.mLastDataStopTimestamp = null;
                Range<Long> removeLast = this.mActivePauseResumeTimeRanges.removeLast();
                if (removeLast != null && removeLast.getUpper().longValue() == Long.MAX_VALUE) {
                    z = true;
                } else {
                    z = false;
                }
                Preconditions.checkState(z, "There should be a \"pause\" before \"resume\"");
                Long lower = removeLast.getLower();
                long longValue = lower.longValue();
                this.mActivePauseResumeTimeRanges.addLast(Range.create(lower, Long.valueOf(j)));
                Logger.d(this.mTag, "Resume on " + DebugUtils.readableUs(j) + "\nPaused duration = " + DebugUtils.readableUs(j - longValue));
                if ((this.mIsVideoEncoder || DeviceQuirks.get(AudioEncoderIgnoresInputTimestampQuirk.class) == null) && (!this.mIsVideoEncoder || DeviceQuirks.get(VideoEncoderSuspendDoesNotIncludeSuspendTimeQuirk.class) == null)) {
                    setMediaCodecPaused(false);
                    Encoder.EncoderInput encoderInput2 = this.mEncoderInput;
                    if (encoderInput2 instanceof ByteBufferInput) {
                        ((ByteBufferInput) encoderInput2).setActive(true);
                    }
                }
                if (this.mIsVideoEncoder) {
                    requestKeyFrameToMediaCodec();
                }
                setState(InternalState.STARTED);
                return;
            case STOPPING:
            case PENDING_START_PAUSED:
                setState(InternalState.PENDING_START);
                return;
            case PENDING_RELEASE:
            case RELEASED:
                throw new IllegalStateException("Encoder is released");
            default:
                throw new IllegalStateException("Unknown state: " + this.mState);
        }
    }

    public /* synthetic */ void lambda$stop$2() {
        if (this.mPendingCodecStop) {
            Logger.w(this.mTag, "The data didn't reach the expected timestamp before timeout, stop the codec.");
            this.mLastDataStopTimestamp = null;
            signalCodecStop();
            this.mPendingCodecStop = false;
        }
    }

    public /* synthetic */ void lambda$stop$3() {
        this.mEncoderExecutor.execute(new RunnableC0706x61029d7d(this, 0));
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00a6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$stop$4(long j, long j2) {
        switch (this.mState) {
            case CONFIGURED:
            case STOPPING:
            case ERROR:
                return;
            case STARTED:
            case PAUSED:
                InternalState internalState = this.mState;
                setState(InternalState.STOPPING);
                Long lower = this.mStartStopTimeRangeUs.getLower();
                long longValue = lower.longValue();
                if (longValue != Long.MAX_VALUE) {
                    if (j != -1) {
                        if (j < longValue) {
                            Logger.w(this.mTag, "The expected stop time is less than the start time. Use current time as stop time.");
                        }
                        if (j < longValue) {
                            this.mStartStopTimeRangeUs = Range.create(lower, Long.valueOf(j));
                            Logger.d(this.mTag, "Stop on " + DebugUtils.readableUs(j));
                            if (internalState == InternalState.PAUSED && this.mLastDataStopTimestamp != null) {
                                signalCodecStop();
                                return;
                            } else {
                                this.mPendingCodecStop = true;
                                this.mStopTimeoutFuture = CameraXExecutors.mainThreadExecutor().schedule(new RunnableC0706x61029d7d(this, 5), 1000L, TimeUnit.MILLISECONDS);
                                return;
                            }
                        }
                        throw new AssertionError("The start time should be before the stop time.");
                    }
                    j = j2;
                    if (j < longValue) {
                    }
                } else {
                    throw new AssertionError("There should be a \"start\" before \"stop\"");
                }
                break;
            case PENDING_START:
            case PENDING_START_PAUSED:
                setState(InternalState.CONFIGURED);
                return;
            case PENDING_RELEASE:
            case RELEASED:
                throw new IllegalStateException("Encoder is released");
            default:
                throw new IllegalStateException("Unknown state: " + this.mState);
        }
    }

    public /* synthetic */ void lambda$stopMediaCodec$12(List list, Runnable runnable) {
        if (this.mState != InternalState.ERROR) {
            if (!list.isEmpty()) {
                Logger.d(this.mTag, "encoded data and input buffers are returned");
            }
            if ((this.mEncoderInput instanceof SurfaceInput) && !this.mSourceStoppedSignalled && !hasStopCodecAfterSurfaceRemovalCrashMediaServerQuirk()) {
                this.mMediaCodec.flush();
                this.mIsFlushedAfterEndOfStream = true;
            } else {
                this.mMediaCodec.stop();
            }
        }
        if (runnable != null) {
            runnable.run();
        }
        handleStopped();
    }

    private void releaseInternal() {
        if (this.mIsFlushedAfterEndOfStream) {
            this.mMediaCodec.stop();
            this.mIsFlushedAfterEndOfStream = false;
        }
        this.mMediaCodec.release();
        Encoder.EncoderInput encoderInput = this.mEncoderInput;
        if (encoderInput instanceof SurfaceInput) {
            ((SurfaceInput) encoderInput).releaseSurface();
        }
        setState(InternalState.RELEASED);
        this.mReleasedCompleter.set(null);
    }

    private void reset() {
        this.mStartStopTimeRangeUs = NO_RANGE;
        this.mTotalPausedDurationUs = 0L;
        this.mActivePauseResumeTimeRanges.clear();
        this.mFreeInputBufferIndexQueue.clear();
        Iterator<CallbackToFutureAdapter.Completer<InputBuffer>> it = this.mAcquisitionQueue.iterator();
        while (it.hasNext()) {
            it.next().setCancelled();
        }
        this.mAcquisitionQueue.clear();
        this.mMediaCodec.reset();
        this.mIsFlushedAfterEndOfStream = false;
        this.mSourceStoppedSignalled = false;
        this.mMediaCodecEosSignalled = false;
        this.mPendingCodecStop = false;
        Future<?> future = this.mStopTimeoutFuture;
        if (future != null) {
            future.cancel(true);
            this.mStopTimeoutFuture = null;
        }
        Future<?> future2 = this.mSignalEosTimeoutFuture;
        if (future2 != null) {
            future2.cancel(false);
            this.mSignalEosTimeoutFuture = null;
        }
        MediaCodecCallback mediaCodecCallback = this.mMediaCodecCallback;
        if (mediaCodecCallback != null) {
            mediaCodecCallback.stop();
        }
        MediaCodecCallback mediaCodecCallback2 = new MediaCodecCallback();
        this.mMediaCodecCallback = mediaCodecCallback2;
        this.mMediaCodec.setCallback(mediaCodecCallback2);
        this.mMediaCodec.configure(this.mMediaFormat, (Surface) null, (MediaCrypto) null, 1);
        Encoder.EncoderInput encoderInput = this.mEncoderInput;
        if (encoderInput instanceof SurfaceInput) {
            ((SurfaceInput) encoderInput).resetSurface();
        }
    }

    private void setState(InternalState internalState) {
        if (this.mState == internalState) {
            return;
        }
        Logger.d(this.mTag, "Transitioning encoder internal state: " + this.mState + " --> " + internalState);
        this.mState = internalState;
    }

    public void signalEndOfInputStream() {
        Futures.addCallback(acquireInputBuffer(), new FutureCallback<InputBuffer>() { // from class: androidx.camera.video.internal.encoder.EncoderImpl.1

            /* renamed from: androidx.camera.video.internal.encoder.EncoderImpl$1$1 */
            /* loaded from: classes.dex */
            public class C00941 implements FutureCallback<Void> {
                public C00941() {
                }

                @Override // androidx.camera.core.impl.utils.futures.FutureCallback
                public void onFailure(@NonNull Throwable th) {
                    if (th instanceof MediaCodec.CodecException) {
                        EncoderImpl.this.handleEncodeError((MediaCodec.CodecException) th);
                    } else {
                        EncoderImpl.this.handleEncodeError(0, th.getMessage(), th);
                    }
                }

                @Override // androidx.camera.core.impl.utils.futures.FutureCallback
                public void onSuccess(@Nullable Void r1) {
                }
            }

            public AnonymousClass1() {
            }

            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public void onFailure(@NonNull Throwable th) {
                EncoderImpl.this.handleEncodeError(0, "Unable to acquire InputBuffer.", th);
            }

            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public void onSuccess(InputBuffer inputBuffer) {
                inputBuffer.setPresentationTimeUs(EncoderImpl.this.generatePresentationTimeUs());
                inputBuffer.setEndOfStream(true);
                inputBuffer.submit();
                Futures.addCallback(inputBuffer.getTerminationFuture(), new FutureCallback<Void>() { // from class: androidx.camera.video.internal.encoder.EncoderImpl.1.1
                    public C00941() {
                    }

                    @Override // androidx.camera.core.impl.utils.futures.FutureCallback
                    public void onFailure(@NonNull Throwable th) {
                        if (th instanceof MediaCodec.CodecException) {
                            EncoderImpl.this.handleEncodeError((MediaCodec.CodecException) th);
                        } else {
                            EncoderImpl.this.handleEncodeError(0, th.getMessage(), th);
                        }
                    }

                    @Override // androidx.camera.core.impl.utils.futures.FutureCallback
                    public void onSuccess(@Nullable Void r1) {
                    }
                }, EncoderImpl.this.mEncoderExecutor);
            }
        }, this.mEncoderExecutor);
    }

    @NonNull
    public ListenableFuture<InputBuffer> acquireInputBuffer() {
        switch (this.mState) {
            case CONFIGURED:
                return Futures.immediateFailedFuture(new IllegalStateException("Encoder is not started yet."));
            case STARTED:
            case PAUSED:
            case STOPPING:
            case PENDING_START:
            case PENDING_START_PAUSED:
            case PENDING_RELEASE:
                AtomicReference atomicReference = new AtomicReference();
                ListenableFuture<InputBuffer> future = CallbackToFutureAdapter.getFuture(new C0458xabc6b8ed(atomicReference, 2));
                CallbackToFutureAdapter.Completer<InputBuffer> completer = (CallbackToFutureAdapter.Completer) Preconditions.checkNotNull((CallbackToFutureAdapter.Completer) atomicReference.get());
                this.mAcquisitionQueue.offer(completer);
                completer.addCancellationListener(new RunnableC0371x742e2fda(this, completer, 23), this.mEncoderExecutor);
                matchAcquisitionsAndFreeBufferIndexes();
                return future;
            case ERROR:
                return Futures.immediateFailedFuture(new IllegalStateException("Encoder is in error state."));
            case RELEASED:
                return Futures.immediateFailedFuture(new IllegalStateException("Encoder is released."));
            default:
                throw new IllegalStateException("Unknown state: " + this.mState);
        }
    }

    public long generatePresentationTimeUs() {
        return this.mTimeProvider.uptimeUs();
    }

    public long getAdjustedTimeUs(@NonNull MediaCodec.BufferInfo bufferInfo) {
        long j = this.mTotalPausedDurationUs;
        if (j > 0) {
            return bufferInfo.presentationTimeUs - j;
        }
        return bufferInfo.presentationTimeUs;
    }

    @Override // androidx.camera.video.internal.encoder.Encoder
    public int getConfiguredBitrate() {
        if (this.mMediaFormat.containsKey("bitrate")) {
            return this.mMediaFormat.getInteger("bitrate");
        }
        return 0;
    }

    @Override // androidx.camera.video.internal.encoder.Encoder
    @NonNull
    public EncoderInfo getEncoderInfo() {
        return this.mEncoderInfo;
    }

    @Override // androidx.camera.video.internal.encoder.Encoder
    @NonNull
    public Encoder.EncoderInput getInput() {
        return this.mEncoderInput;
    }

    @Override // androidx.camera.video.internal.encoder.Encoder
    @NonNull
    public ListenableFuture<Void> getReleasedFuture() {
        return this.mReleasedFuture;
    }

    public void handleEncodeError(@NonNull MediaCodec.CodecException codecException) {
        handleEncodeError(1, codecException.getMessage(), codecException);
    }

    public void handleStopped() {
        InternalState internalState = this.mState;
        if (internalState == InternalState.PENDING_RELEASE) {
            releaseInternal();
            return;
        }
        if (!this.mIsFlushedAfterEndOfStream) {
            reset();
        }
        setState(InternalState.CONFIGURED);
        if (internalState == InternalState.PENDING_START || internalState == InternalState.PENDING_START_PAUSED) {
            start();
            if (internalState == InternalState.PENDING_START_PAUSED) {
                pause();
            }
        }
    }

    public boolean isInPauseRange(long j) {
        for (Range<Long> range : this.mActivePauseResumeTimeRanges) {
            if (range.contains((Range<Long>) Long.valueOf(j))) {
                return true;
            }
            if (j < range.getLower().longValue()) {
                break;
            }
        }
        return false;
    }

    public void matchAcquisitionsAndFreeBufferIndexes() {
        while (!this.mAcquisitionQueue.isEmpty() && !this.mFreeInputBufferIndexQueue.isEmpty()) {
            CallbackToFutureAdapter.Completer<InputBuffer> poll = this.mAcquisitionQueue.poll();
            Objects.requireNonNull(poll);
            Integer poll2 = this.mFreeInputBufferIndexQueue.poll();
            Objects.requireNonNull(poll2);
            try {
                InputBufferImpl inputBufferImpl = new InputBufferImpl(this.mMediaCodec, poll2.intValue());
                if (poll.set(inputBufferImpl)) {
                    this.mInputBufferSet.add(inputBufferImpl);
                    inputBufferImpl.getTerminationFuture().addListener(new RunnableC0095xfbe0c504(this, inputBufferImpl, 1), this.mEncoderExecutor);
                } else {
                    inputBufferImpl.cancel();
                }
            } catch (MediaCodec.CodecException e) {
                handleEncodeError(e);
                return;
            }
        }
    }

    /* renamed from: notifyError */
    public void lambda$handleEncodeError$10(int i, @Nullable String str, @Nullable Throwable th) {
        EncoderCallback encoderCallback;
        Executor executor;
        synchronized (this.mLock) {
            encoderCallback = this.mEncoderCallback;
            executor = this.mEncoderCallbackExecutor;
        }
        try {
            executor.execute(new RunnableC0703x8affad75(encoderCallback, i, str, th, 0));
        } catch (RejectedExecutionException e) {
            Logger.e(this.mTag, "Unable to post to the supplied executor.", e);
        }
    }

    @Override // androidx.camera.video.internal.encoder.Encoder
    public void pause() {
        this.mEncoderExecutor.execute(new RunnableC0704x26897e44(this, generatePresentationTimeUs(), 1));
    }

    @Override // androidx.camera.video.internal.encoder.Encoder
    public void release() {
        this.mEncoderExecutor.execute(new RunnableC0706x61029d7d(this, 1));
    }

    @Override // androidx.camera.video.internal.encoder.Encoder
    public void requestKeyFrame() {
        this.mEncoderExecutor.execute(new RunnableC0706x61029d7d(this, 2));
    }

    public void requestKeyFrameToMediaCodec() {
        Bundle bundle = new Bundle();
        bundle.putInt("request-sync", 0);
        this.mMediaCodec.setParameters(bundle);
    }

    @Override // androidx.camera.video.internal.encoder.Encoder
    public void setEncoderCallback(@NonNull EncoderCallback encoderCallback, @NonNull Executor executor) {
        synchronized (this.mLock) {
            this.mEncoderCallback = encoderCallback;
            this.mEncoderCallbackExecutor = executor;
        }
    }

    public void setMediaCodecPaused(boolean z) {
        Bundle bundle = new Bundle();
        bundle.putInt("drop-input-frames", z ? 1 : 0);
        this.mMediaCodec.setParameters(bundle);
    }

    public void signalCodecStop() {
        Logger.d(this.mTag, "signalCodecStop");
        Encoder.EncoderInput encoderInput = this.mEncoderInput;
        if (encoderInput instanceof ByteBufferInput) {
            ((ByteBufferInput) encoderInput).setActive(false);
            ArrayList arrayList = new ArrayList();
            Iterator<InputBuffer> it = this.mInputBufferSet.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().getTerminationFuture());
            }
            Futures.successfulAsList(arrayList).addListener(new RunnableC0706x61029d7d(this, 4), this.mEncoderExecutor);
            return;
        }
        if (encoderInput instanceof SurfaceInput) {
            try {
                addSignalEosTimeoutIfNeeded();
                this.mMediaCodec.signalEndOfInputStream();
                this.mMediaCodecEosSignalled = true;
            } catch (MediaCodec.CodecException e) {
                handleEncodeError(e);
            }
        }
    }

    public void signalSourceStopped() {
        this.mEncoderExecutor.execute(new RunnableC0706x61029d7d(this, 3));
    }

    @Override // androidx.camera.video.internal.encoder.Encoder
    public void start() {
        this.mEncoderExecutor.execute(new RunnableC0704x26897e44(this, generatePresentationTimeUs(), 0));
    }

    @Override // androidx.camera.video.internal.encoder.Encoder
    public void stop() {
        stop(-1L);
    }

    public void stopMediaCodec(@Nullable Runnable runnable) {
        Logger.d(this.mTag, "stopMediaCodec");
        ArrayList arrayList = new ArrayList();
        Iterator<EncodedDataImpl> it = this.mEncodedDataSet.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().getClosedFuture());
        }
        Iterator<InputBuffer> it2 = this.mInputBufferSet.iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next().getTerminationFuture());
        }
        if (!arrayList.isEmpty()) {
            Logger.d(this.mTag, "Waiting for resources to return. encoded data = " + this.mEncodedDataSet.size() + ", input buffers = " + this.mInputBufferSet.size());
        }
        Futures.successfulAsList(arrayList).addListener(new RunnableC0384x149e5abd(this, 8, arrayList, runnable), this.mEncoderExecutor);
    }

    public void updateTotalPausedDuration(long j) {
        while (!this.mActivePauseResumeTimeRanges.isEmpty()) {
            Range<Long> first = this.mActivePauseResumeTimeRanges.getFirst();
            if (j > first.getUpper().longValue()) {
                this.mActivePauseResumeTimeRanges.removeFirst();
                this.mTotalPausedDurationUs = (first.getUpper().longValue() - first.getLower().longValue()) + this.mTotalPausedDurationUs;
                Logger.d(this.mTag, "Total paused duration = " + DebugUtils.readableUs(this.mTotalPausedDurationUs));
            } else {
                return;
            }
        }
    }

    public void handleEncodeError(int i, @Nullable String str, @Nullable Throwable th) {
        switch (this.mState) {
            case CONFIGURED:
                lambda$handleEncodeError$10(i, str, th);
                reset();
                return;
            case STARTED:
            case PAUSED:
            case STOPPING:
            case PENDING_START:
            case PENDING_START_PAUSED:
            case PENDING_RELEASE:
                setState(InternalState.ERROR);
                stopMediaCodec(new RunnableC0703x8affad75(this, i, str, th, 1));
                return;
            case ERROR:
                Logger.w(this.mTag, "Get more than one error: " + str + "(" + i + ")", th);
                return;
            default:
                return;
        }
    }

    @Override // androidx.camera.video.internal.encoder.Encoder
    public void stop(final long j) {
        final long generatePresentationTimeUs = generatePresentationTimeUs();
        this.mEncoderExecutor.execute(new Runnable() { // from class: 뒛돷듟뎹됩듰뎡딽땲돤듼돸땩돸돵돸뎠돷두딐뎨딟땄땧돰됫뒨딎둡뒋득딁돷된둡뒀딜듔뎸됩듟됫디됐뒵듨딹땻듻땄디땜땸됨돤둑돛듌땻딀돨딸듔돝땫땯땯될뒙뒙둬따딻듸돳딽둡될딨뒼듻땬뎰든둑디땐뒐듔돠둡뎠땧땭득딀딠땮듔뎰따땪둘땋돠땧딄둘둠득되되뒬뒉땟땃딎득듟뒤듐돛땮땠땲땧돤땱둘뒵
            @Override // java.lang.Runnable
            public final void run() {
                EncoderImpl.this.lambda$stop$4(j, generatePresentationTimeUs);
            }
        });
    }
}
