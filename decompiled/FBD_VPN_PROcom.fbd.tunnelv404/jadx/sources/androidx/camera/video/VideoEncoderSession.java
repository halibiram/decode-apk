package androidx.camera.video;

import android.view.Surface;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.Logger;
import androidx.camera.core.SurfaceRequest;
import androidx.camera.core.impl.Timebase;
import androidx.camera.core.impl.utils.futures.FutureCallback;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.camera.video.internal.VideoValidatedEncoderProfilesProxy;
import androidx.camera.video.internal.config.VideoConfigUtil;
import androidx.camera.video.internal.encoder.Encoder;
import androidx.camera.video.internal.encoder.EncoderFactory;
import androidx.camera.video.internal.encoder.InvalidConfigException;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import com.google.common.util.concurrent.ListenableFuture;
import j$.util.Objects;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class VideoEncoderSession {
    private static final String TAG = "VideoEncoderSession";
    private final Executor mExecutor;
    private final Executor mSequentialExecutor;
    private final EncoderFactory mVideoEncoderFactory;
    private Encoder mVideoEncoder = null;
    private Surface mActiveSurface = null;
    private SurfaceRequest mSurfaceRequest = null;
    private Executor mOnSurfaceUpdateExecutor = null;
    private Encoder.SurfaceInput.OnSurfaceUpdateListener mOnSurfaceUpdateListener = null;
    private VideoEncoderState mVideoEncoderState = VideoEncoderState.NOT_INITIALIZED;
    private ListenableFuture<Void> mReleasedFuture = Futures.immediateFailedFuture(new IllegalStateException("Cannot close the encoder before configuring."));
    private CallbackToFutureAdapter.Completer<Void> mReleasedCompleter = null;
    private ListenableFuture<Encoder> mReadyToReleaseFuture = Futures.immediateFailedFuture(new IllegalStateException("Cannot close the encoder before configuring."));
    private CallbackToFutureAdapter.Completer<Encoder> mReadyToReleaseCompleter = null;

    /* renamed from: androidx.camera.video.VideoEncoderSession$1 */
    /* loaded from: classes.dex */
    public class AnonymousClass1 implements FutureCallback<Encoder> {
        public AnonymousClass1() {
        }

        @Override // androidx.camera.core.impl.utils.futures.FutureCallback
        public void onFailure(@NonNull Throwable th) {
            Logger.w(VideoEncoderSession.TAG, "VideoEncoder configuration failed.", th);
            VideoEncoderSession.this.terminateNow();
        }

        @Override // androidx.camera.core.impl.utils.futures.FutureCallback
        public void onSuccess(@Nullable Encoder encoder) {
        }
    }

    /* loaded from: classes.dex */
    public enum VideoEncoderState {
        NOT_INITIALIZED,
        INITIALIZING,
        PENDING_RELEASE,
        READY,
        RELEASED
    }

    public VideoEncoderSession(@NonNull EncoderFactory encoderFactory, @NonNull Executor executor, @NonNull Executor executor2) {
        this.mExecutor = executor2;
        this.mSequentialExecutor = executor;
        this.mVideoEncoderFactory = encoderFactory;
    }

    private void closeInternal() {
        int ordinal = this.mVideoEncoderState.ordinal();
        if (ordinal != 0 && ordinal != 1) {
            if (ordinal != 2 && ordinal != 3) {
                if (ordinal == 4) {
                    Logger.d(TAG, "closeInternal in RELEASED state, No-op");
                    return;
                }
                throw new IllegalStateException("State " + this.mVideoEncoderState + " is not handled");
            }
            Logger.d(TAG, "closeInternal in " + this.mVideoEncoderState + " state");
            this.mVideoEncoderState = VideoEncoderState.PENDING_RELEASE;
            return;
        }
        terminateNow();
    }

    private void configureVideoEncoderInternal(@NonNull final SurfaceRequest surfaceRequest, @NonNull Timebase timebase, @Nullable VideoValidatedEncoderProfilesProxy videoValidatedEncoderProfilesProxy, @NonNull MediaSpec mediaSpec, @NonNull final CallbackToFutureAdapter.Completer<Encoder> completer) {
        DynamicRange dynamicRange = surfaceRequest.getDynamicRange();
        try {
            Encoder createEncoder = this.mVideoEncoderFactory.createEncoder(this.mExecutor, VideoConfigUtil.resolveVideoEncoderConfig(VideoConfigUtil.resolveVideoMimeInfo(mediaSpec, dynamicRange, videoValidatedEncoderProfilesProxy), timebase, mediaSpec.getVideoSpec(), surfaceRequest.getResolution(), dynamicRange, surfaceRequest.getExpectedFrameRate()));
            this.mVideoEncoder = createEncoder;
            Encoder.EncoderInput input = createEncoder.getInput();
            if (!(input instanceof Encoder.SurfaceInput)) {
                completer.setException(new AssertionError("The EncoderInput of video isn't a SurfaceInput."));
            } else {
                ((Encoder.SurfaceInput) input).setOnSurfaceUpdateListener(this.mSequentialExecutor, new Encoder.SurfaceInput.OnSurfaceUpdateListener() { // from class: androidx.camera.video.뎨딐딁들땠듟땣땝딄둬돨땁땸뒷돵뒝듨뒬딀듨듔딁뒐땯되들돶듰땋듽듸땡둥딹됨돨듼땀땝딀땳땍됨땱뒀땵될됫땪뒼돨땲뎹딨딅딄땜딜땨듌땫둑딜땠뒨땮땸뎡둔됫듐뒾따됐돶둡땦땲땵뒤땄든땃든뒵둑따돶듻드뒋뎸뎸돨뒘듽땧딻땋딸땯뒹딤땤디뒀둡되땯뒾뎹뒷됴뒨딁땰들됨된딜둬땣땀땔딸됩땩돴땡뎨
                    @Override // androidx.camera.video.internal.encoder.Encoder.SurfaceInput.OnSurfaceUpdateListener
                    public final void onSurfaceUpdate(Surface surface) {
                        VideoEncoderSession.this.lambda$configureVideoEncoderInternal$5(completer, surfaceRequest, surface);
                    }
                });
            }
        } catch (InvalidConfigException e) {
            Logger.e(TAG, "Unable to initialize video encoder.", e);
            completer.setException(e);
        }
    }

    public /* synthetic */ Object lambda$configure$0(CallbackToFutureAdapter.Completer completer) {
        this.mReleasedCompleter = completer;
        return "ReleasedFuture " + this;
    }

    public /* synthetic */ Object lambda$configure$1(CallbackToFutureAdapter.Completer completer) {
        this.mReadyToReleaseCompleter = completer;
        return "ReadyToReleaseFuture " + this;
    }

    public /* synthetic */ Object lambda$configure$2(SurfaceRequest surfaceRequest, Timebase timebase, VideoValidatedEncoderProfilesProxy videoValidatedEncoderProfilesProxy, MediaSpec mediaSpec, CallbackToFutureAdapter.Completer completer) {
        configureVideoEncoderInternal(surfaceRequest, timebase, videoValidatedEncoderProfilesProxy, mediaSpec, completer);
        return "ConfigureVideoEncoderFuture " + this;
    }

    public /* synthetic */ void lambda$configureVideoEncoderInternal$4(Surface surface) {
        this.mOnSurfaceUpdateListener.onSurfaceUpdate(surface);
    }

    public /* synthetic */ void lambda$configureVideoEncoderInternal$5(CallbackToFutureAdapter.Completer completer, SurfaceRequest surfaceRequest, Surface surface) {
        Executor executor;
        int ordinal = this.mVideoEncoderState.ordinal();
        if (ordinal != 0) {
            if (ordinal != 1) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        if (ordinal != 4) {
                            throw new IllegalStateException("State " + this.mVideoEncoderState + " is not handled");
                        }
                    } else {
                        if (this.mOnSurfaceUpdateListener != null && (executor = this.mOnSurfaceUpdateExecutor) != null) {
                            executor.execute(new RunnableC0114x1db10c9d(this, surface, 2));
                        }
                        Logger.w(TAG, "Surface is updated in READY state: " + surface);
                        return;
                    }
                }
            } else {
                if (surfaceRequest.isServiced()) {
                    Logger.d(TAG, "Not provide surface, " + Objects.toString(surfaceRequest, "EMPTY") + " is already serviced.");
                    completer.set(null);
                    closeInternal();
                    return;
                }
                this.mActiveSurface = surface;
                Logger.d(TAG, "provide surface: " + surface);
                surfaceRequest.provideSurface(surface, this.mSequentialExecutor, new C0110x34271fae(this, 2));
                this.mVideoEncoderState = VideoEncoderState.READY;
                completer.set(this.mVideoEncoder);
                return;
            }
        }
        Logger.d(TAG, "Not provide surface in " + this.mVideoEncoderState);
        completer.set(null);
    }

    public /* synthetic */ void lambda$terminateNow$3() {
        this.mReleasedCompleter.set(null);
    }

    public void onSurfaceRequestComplete(@NonNull SurfaceRequest.Result result) {
        Logger.d(TAG, "Surface can be closed: " + result.getSurface().hashCode());
        Surface surface = result.getSurface();
        if (surface == this.mActiveSurface) {
            this.mActiveSurface = null;
            this.mReadyToReleaseCompleter.set(this.mVideoEncoder);
            closeInternal();
            return;
        }
        surface.release();
    }

    @NonNull
    public ListenableFuture<Encoder> configure(@NonNull final SurfaceRequest surfaceRequest, @NonNull final Timebase timebase, @NonNull final MediaSpec mediaSpec, @Nullable final VideoValidatedEncoderProfilesProxy videoValidatedEncoderProfilesProxy) {
        if (this.mVideoEncoderState.ordinal() != 0) {
            return Futures.immediateFailedFuture(new IllegalStateException("configure() shouldn't be called in " + this.mVideoEncoderState));
        }
        this.mVideoEncoderState = VideoEncoderState.INITIALIZING;
        this.mSurfaceRequest = surfaceRequest;
        Logger.d(TAG, "Create VideoEncoderSession: " + this);
        final int i = 0;
        this.mReleasedFuture = CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver(this) { // from class: androidx.camera.video.뎨딠땱땯딃땯땪됨땧돛돳뒹됴뎹될디든땣뒐돳돤든둔뒻땰됨뒻땤듰딄됨뒘땀딃둬둥둔딻돴땡땡될딠딨뎰땭됩딀두뒘딠득뒝딞딹땁됩땨땫된둣땳둑땁뒈땳땠도든딹뎡돼되뎸땨뎬딤딐돴땧돝딄땫듬뒉딟땋딐돼뎻딅땀돶둡디돶득되둔딝땪뎬뒛땟뒋돰돤됨돳땭돳됐뎰듻땃듬듻돷듸뒤딟땃도뎸돸딁딹땯뒙듐

            /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
            public final /* synthetic */ VideoEncoderSession f285x3271d0aa;

            {
                this.f285x3271d0aa = this;
            }

            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                Object lambda$configure$0;
                Object lambda$configure$1;
                switch (i) {
                    case 0:
                        lambda$configure$0 = this.f285x3271d0aa.lambda$configure$0(completer);
                        return lambda$configure$0;
                    default:
                        lambda$configure$1 = this.f285x3271d0aa.lambda$configure$1(completer);
                        return lambda$configure$1;
                }
            }
        });
        final int i2 = 1;
        this.mReadyToReleaseFuture = CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver(this) { // from class: androidx.camera.video.뎨딠땱땯딃땯땪됨땧돛돳뒹됴뎹될디든땣뒐돳돤든둔뒻땰됨뒻땤듰딄됨뒘땀딃둬둥둔딻돴땡땡될딠딨뎰땭됩딀두뒘딠득뒝딞딹땁됩땨땫된둣땳둑땁뒈땳땠도든딹뎡돼되뎸땨뎬딤딐돴땧돝딄땫듬뒉딟땋딐돼뎻딅땀돶둡디돶득되둔딝땪뎬뒛땟뒋돰돤됨돳땭돳됐뎰듻땃듬듻돷듸뒤딟땃도뎸돸딁딹땯뒙듐

            /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
            public final /* synthetic */ VideoEncoderSession f285x3271d0aa;

            {
                this.f285x3271d0aa = this;
            }

            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                Object lambda$configure$0;
                Object lambda$configure$1;
                switch (i2) {
                    case 0:
                        lambda$configure$0 = this.f285x3271d0aa.lambda$configure$0(completer);
                        return lambda$configure$0;
                    default:
                        lambda$configure$1 = this.f285x3271d0aa.lambda$configure$1(completer);
                        return lambda$configure$1;
                }
            }
        });
        ListenableFuture future = CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() { // from class: androidx.camera.video.뎨땋된땫딜딜땮듔든득됫뒻뒬땃돰땔땠땫뒉딜돛둑땅뒙든듨땁딁땧땦뒼딎듨딽되땩뒤됐땫돳뎻뎨듰딞됐뎸땯뎻땸뎨땋딞뎰딠딅뒐됩뒐뎡뒹딅딞뎽땅둑땟땧땣듸됨뒷땤딀뒉돨딎둠됫딁땳뎰됨땁땧되땔들뒻뎠땨뎠딜뒘땻땤뎰돤딜땦땩딃돸둣땣됐듐땃뒛뒷둔두땃딽땤됐딻땝둔딞뎽돝된땫뒻뎬돛땨딹든듌
            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                Object lambda$configure$2;
                lambda$configure$2 = VideoEncoderSession.this.lambda$configure$2(surfaceRequest, timebase, videoValidatedEncoderProfilesProxy, mediaSpec, completer);
                return lambda$configure$2;
            }
        });
        Futures.addCallback(future, new FutureCallback<Encoder>() { // from class: androidx.camera.video.VideoEncoderSession.1
            public AnonymousClass1() {
            }

            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public void onFailure(@NonNull Throwable th) {
                Logger.w(VideoEncoderSession.TAG, "VideoEncoder configuration failed.", th);
                VideoEncoderSession.this.terminateNow();
            }

            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public void onSuccess(@Nullable Encoder encoder) {
            }
        }, this.mSequentialExecutor);
        return Futures.nonCancellationPropagating(future);
    }

    @Nullable
    public Surface getActiveSurface() {
        if (this.mVideoEncoderState != VideoEncoderState.READY) {
            return null;
        }
        return this.mActiveSurface;
    }

    @NonNull
    public ListenableFuture<Encoder> getReadyToReleaseFuture() {
        return Futures.nonCancellationPropagating(this.mReadyToReleaseFuture);
    }

    @Nullable
    public Encoder getVideoEncoder() {
        return this.mVideoEncoder;
    }

    public boolean isConfiguredSurfaceRequest(@NonNull SurfaceRequest surfaceRequest) {
        int ordinal = this.mVideoEncoderState.ordinal();
        if (ordinal == 0) {
            return false;
        }
        if (ordinal != 1) {
            if (ordinal == 2) {
                return false;
            }
            if (ordinal != 3) {
                if (ordinal == 4) {
                    return false;
                }
                throw new IllegalStateException("State " + this.mVideoEncoderState + " is not handled");
            }
        }
        if (this.mSurfaceRequest != surfaceRequest) {
            return false;
        }
        return true;
    }

    public void setOnSurfaceUpdateListener(@NonNull Executor executor, @NonNull Encoder.SurfaceInput.OnSurfaceUpdateListener onSurfaceUpdateListener) {
        this.mOnSurfaceUpdateExecutor = executor;
        this.mOnSurfaceUpdateListener = onSurfaceUpdateListener;
    }

    @NonNull
    public ListenableFuture<Void> signalTermination() {
        closeInternal();
        return Futures.nonCancellationPropagating(this.mReleasedFuture);
    }

    public void terminateNow() {
        int ordinal = this.mVideoEncoderState.ordinal();
        if (ordinal != 0) {
            if (ordinal != 1 && ordinal != 2 && ordinal != 3) {
                if (ordinal == 4) {
                    Logger.d(TAG, "terminateNow in " + this.mVideoEncoderState + ", No-op");
                    return;
                }
                throw new IllegalStateException("State " + this.mVideoEncoderState + " is not handled");
            }
            this.mVideoEncoderState = VideoEncoderState.RELEASED;
            this.mReadyToReleaseCompleter.set(this.mVideoEncoder);
            this.mSurfaceRequest = null;
            if (this.mVideoEncoder != null) {
                Logger.d(TAG, "VideoEncoder is releasing: " + this.mVideoEncoder);
                this.mVideoEncoder.release();
                this.mVideoEncoder.getReleasedFuture().addListener(new RunnableC0116x8c6fc18a(this, 1), this.mSequentialExecutor);
                this.mVideoEncoder = null;
                return;
            }
            Logger.w(TAG, "There's no VideoEncoder to release! Finish release completer.");
            this.mReleasedCompleter.set(null);
            return;
        }
        this.mVideoEncoderState = VideoEncoderState.RELEASED;
    }

    @NonNull
    public String toString() {
        return "VideoEncoderSession@" + hashCode() + " for " + Objects.toString(this.mSurfaceRequest, "SURFACE_REQUEST_NOT_CONFIGURED");
    }
}
