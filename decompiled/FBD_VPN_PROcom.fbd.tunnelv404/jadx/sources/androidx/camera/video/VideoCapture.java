package androidx.camera.video;

import android.annotation.SuppressLint;
import android.graphics.Rect;
import android.media.MediaCodec;
import android.os.SystemClock;
import android.util.Pair;
import android.util.Range;
import android.util.Size;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.arch.core.util.Function;
import androidx.camera.core.CameraInfo;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.Logger;
import androidx.camera.core.SurfaceRequest;
import androidx.camera.core.UseCase;
import androidx.camera.core.impl.CameraCaptureCallback;
import androidx.camera.core.impl.CameraCaptureResult;
import androidx.camera.core.impl.CameraControlInternal;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.CaptureConfig;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.ConfigProvider;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.EncoderProfilesProxy;
import androidx.camera.core.impl.ImageInputConfig;
import androidx.camera.core.impl.ImageOutputConfig;
import androidx.camera.core.impl.MutableConfig;
import androidx.camera.core.impl.MutableOptionsBundle;
import androidx.camera.core.impl.Observable;
import androidx.camera.core.impl.OptionsBundle;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.StreamSpec;
import androidx.camera.core.impl.Timebase;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.UseCaseConfigFactory;
import androidx.camera.core.impl.utils.Threads;
import androidx.camera.core.impl.utils.TransformUtils;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.impl.utils.futures.FutureCallback;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.camera.core.internal.TargetConfig;
import androidx.camera.core.internal.ThreadConfig;
import androidx.camera.core.internal.utils.SizeUtil;
import androidx.camera.core.processing.DefaultSurfaceProcessor;
import androidx.camera.core.processing.SurfaceEdge;
import androidx.camera.core.processing.SurfaceProcessorInternal;
import androidx.camera.core.processing.SurfaceProcessorNode;
import androidx.camera.core.processing.util.OutConfig;
import androidx.camera.core.resolutionselector.ResolutionSelector;
import androidx.camera.video.StreamInfo;
import androidx.camera.video.VideoOutput;
import androidx.camera.video.impl.VideoCaptureConfig;
import androidx.camera.video.internal.VideoValidatedEncoderProfilesProxy;
import androidx.camera.video.internal.compat.quirk.DeviceQuirks;
import androidx.camera.video.internal.compat.quirk.SizeCannotEncodeVideoQuirk;
import androidx.camera.video.internal.config.VideoConfigUtil;
import androidx.camera.video.internal.encoder.SwappedVideoEncoderInfo;
import androidx.camera.video.internal.encoder.VideoEncoderConfig;
import androidx.camera.video.internal.encoder.VideoEncoderInfo;
import androidx.camera.video.internal.encoder.VideoEncoderInfoImpl;
import androidx.camera.video.internal.utils.DynamicRangeUtil;
import androidx.camera.video.internal.workaround.VideoEncoderInfoWrapper;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.util.Preconditions;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.AbstractC0634x5c1485ac;
import defpackage.AbstractC0878x546518ba;
import defpackage.AbstractC1214x8a7878a2;
import defpackage.AbstractC1275x4479f3e9;
import defpackage.C0379x9172909e;
import defpackage.C0612xe466f64;
import defpackage.C0871x6413f5c1;
import defpackage.RunnableC0384x149e5abd;
import defpackage.RunnableC0938xaa9be1e3;
import defpackage.RunnableC1013x3ba4617f;
import defpackage.RunnableC1044x8c43c726;
import j$.util.DesugarCollections;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final class VideoCapture<T extends VideoOutput> extends UseCase {
    private static final Defaults DEFAULT_CONFIG = new Defaults();
    private static final String SURFACE_UPDATE_KEY = "androidx.camera.video.VideoCapture.streamUpdate";
    private static final String TAG = "VideoCapture";

    @Nullable
    private SurfaceEdge mCameraEdge;

    @Nullable
    private SessionConfig.CloseableErrorListener mCloseableErrorListener;

    @Nullable
    private Rect mCropRect;
    DeferrableSurface mDeferrableSurface;
    private boolean mHasCompensatingTransformation;

    @Nullable
    private SurfaceProcessorNode mNode;
    private int mRotationDegrees;

    @NonNull
    SessionConfig.Builder mSessionConfigBuilder;
    VideoOutput.SourceState mSourceState;

    @Nullable
    private SourceStreamRequirementObserver mSourceStreamRequirementObserver;
    StreamInfo mStreamInfo;
    private final Observable.Observer<StreamInfo> mStreamInfoObserver;
    private SurfaceRequest mSurfaceRequest;
    ListenableFuture<Void> mSurfaceUpdateFuture;

    /* renamed from: androidx.camera.video.VideoCapture$1 */
    /* loaded from: classes.dex */
    public class AnonymousClass1 implements Observable.Observer<StreamInfo> {
        public AnonymousClass1() {
        }

        @Override // androidx.camera.core.impl.Observable.Observer
        public void onError(@NonNull Throwable th) {
            Logger.w(VideoCapture.TAG, "Receive onError from StreamState observer", th);
        }

        @Override // androidx.camera.core.impl.Observable.Observer
        public void onNewData(@Nullable StreamInfo streamInfo) {
            if (streamInfo != null) {
                if (VideoCapture.this.mSourceState == VideoOutput.SourceState.INACTIVE) {
                    return;
                }
                Logger.d(VideoCapture.TAG, "Stream info update: old: " + VideoCapture.this.mStreamInfo + " new: " + streamInfo);
                VideoCapture videoCapture = VideoCapture.this;
                StreamInfo streamInfo2 = videoCapture.mStreamInfo;
                videoCapture.mStreamInfo = streamInfo;
                StreamSpec streamSpec = (StreamSpec) Preconditions.checkNotNull(videoCapture.getAttachedStreamSpec());
                if (!VideoCapture.this.isStreamIdChanged(streamInfo2.getId(), streamInfo.getId()) && !VideoCapture.this.shouldResetCompensatingTransformation(streamInfo2, streamInfo)) {
                    if ((streamInfo2.getId() != -1 && streamInfo.getId() == -1) || (streamInfo2.getId() == -1 && streamInfo.getId() != -1)) {
                        VideoCapture videoCapture2 = VideoCapture.this;
                        videoCapture2.applyStreamInfoAndStreamSpecToSessionConfigBuilder(videoCapture2.mSessionConfigBuilder, streamInfo, streamSpec);
                        VideoCapture videoCapture3 = VideoCapture.this;
                        Object[] objArr = {videoCapture3.mSessionConfigBuilder.build()};
                        ArrayList arrayList = new ArrayList(1);
                        Object obj = objArr[0];
                        Objects.requireNonNull(obj);
                        arrayList.add(obj);
                        videoCapture3.updateSessionConfig(DesugarCollections.unmodifiableList(arrayList));
                        VideoCapture.this.notifyReset();
                        return;
                    }
                    if (streamInfo2.getStreamState() != streamInfo.getStreamState()) {
                        VideoCapture videoCapture4 = VideoCapture.this;
                        videoCapture4.applyStreamInfoAndStreamSpecToSessionConfigBuilder(videoCapture4.mSessionConfigBuilder, streamInfo, streamSpec);
                        VideoCapture videoCapture5 = VideoCapture.this;
                        Object[] objArr2 = {videoCapture5.mSessionConfigBuilder.build()};
                        ArrayList arrayList2 = new ArrayList(1);
                        Object obj2 = objArr2[0];
                        Objects.requireNonNull(obj2);
                        arrayList2.add(obj2);
                        videoCapture5.updateSessionConfig(DesugarCollections.unmodifiableList(arrayList2));
                        VideoCapture.this.notifyUpdated();
                        return;
                    }
                    return;
                }
                VideoCapture.this.resetPipeline();
                return;
            }
            throw new IllegalArgumentException("StreamInfo can't be null");
        }
    }

    /* renamed from: androidx.camera.video.VideoCapture$2 */
    /* loaded from: classes.dex */
    public class AnonymousClass2 extends CameraCaptureCallback {
        private boolean mIsFirstCaptureResult = true;
        final /* synthetic */ CallbackToFutureAdapter.Completer val$completer;
        final /* synthetic */ SessionConfig.Builder val$sessionConfigBuilder;
        final /* synthetic */ AtomicBoolean val$surfaceUpdateComplete;

        public AnonymousClass2(AtomicBoolean atomicBoolean, CallbackToFutureAdapter.Completer completer, SessionConfig.Builder builder) {
            this.val$surfaceUpdateComplete = atomicBoolean;
            this.val$completer = completer;
            this.val$sessionConfigBuilder = builder;
        }

        public /* synthetic */ void lambda$onCaptureCompleted$0(SessionConfig.Builder builder) {
            builder.removeCameraCaptureCallback(this);
        }

        @Override // androidx.camera.core.impl.CameraCaptureCallback
        public void onCaptureCompleted(int i, @NonNull CameraCaptureResult cameraCaptureResult) {
            Object tag;
            super.onCaptureCompleted(i, cameraCaptureResult);
            if (this.mIsFirstCaptureResult) {
                this.mIsFirstCaptureResult = false;
                Logger.d(VideoCapture.TAG, "cameraCaptureResult timestampNs = " + cameraCaptureResult.getTimestamp() + ", current system uptimeMs = " + SystemClock.uptimeMillis() + ", current system realtimeMs = " + SystemClock.elapsedRealtime());
            }
            if (!this.val$surfaceUpdateComplete.get() && (tag = cameraCaptureResult.getTagBundle().getTag(VideoCapture.SURFACE_UPDATE_KEY)) != null && ((Integer) tag).intValue() == this.val$completer.hashCode() && this.val$completer.set(null) && !this.val$surfaceUpdateComplete.getAndSet(true)) {
                CameraXExecutors.mainThreadExecutor().execute(new RunnableC0114x1db10c9d(this, this.val$sessionConfigBuilder, 1));
            }
        }
    }

    /* renamed from: androidx.camera.video.VideoCapture$3 */
    /* loaded from: classes.dex */
    public class AnonymousClass3 implements FutureCallback<Void> {
        final /* synthetic */ boolean val$isStreamActive;
        final /* synthetic */ ListenableFuture val$surfaceUpdateFuture;

        public AnonymousClass3(ListenableFuture listenableFuture, boolean z) {
            r2 = listenableFuture;
            r3 = z;
        }

        @Override // androidx.camera.core.impl.utils.futures.FutureCallback
        public void onFailure(@NonNull Throwable th) {
            if (!(th instanceof CancellationException)) {
                Logger.e(VideoCapture.TAG, "Surface update completed with unexpected exception", th);
            }
        }

        @Override // androidx.camera.core.impl.utils.futures.FutureCallback
        public void onSuccess(@Nullable Void r3) {
            ListenableFuture<Void> listenableFuture = r2;
            VideoCapture videoCapture = VideoCapture.this;
            if (listenableFuture != videoCapture.mSurfaceUpdateFuture || videoCapture.mSourceState == VideoOutput.SourceState.INACTIVE) {
                return;
            }
            videoCapture.setSourceState(r3 ? VideoOutput.SourceState.ACTIVE_STREAMING : VideoOutput.SourceState.ACTIVE_NON_STREAMING);
        }
    }

    /* loaded from: classes.dex */
    public static final class Builder<T extends VideoOutput> implements UseCaseConfig.Builder<VideoCapture<T>, VideoCaptureConfig<T>, Builder<T>>, ImageOutputConfig.Builder<Builder<T>>, ImageInputConfig.Builder<Builder<T>>, ThreadConfig.Builder<Builder<T>> {
        private final MutableOptionsBundle mMutableConfig;

        public Builder(@NonNull T t) {
            this(createInitialBundle(t));
        }

        @NonNull
        private static <T extends VideoOutput> MutableOptionsBundle createInitialBundle(@NonNull T t) {
            MutableOptionsBundle create = MutableOptionsBundle.create();
            create.insertOption(VideoCaptureConfig.OPTION_VIDEO_OUTPUT, t);
            return create;
        }

        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public static Builder<? extends VideoOutput> fromConfig(@NonNull Config config2) {
            return new Builder<>(MutableOptionsBundle.from(config2));
        }

        @Override // androidx.camera.core.ExtendableBuilder
        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public MutableConfig getMutableConfig() {
            return this.mMutableConfig;
        }

        @Override // androidx.camera.core.impl.ImageOutputConfig.Builder
        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public /* bridge */ /* synthetic */ Object setCustomOrderedResolutions(@NonNull List list) {
            return setCustomOrderedResolutions((List<Size>) list);
        }

        @Override // androidx.camera.core.impl.ImageOutputConfig.Builder
        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public /* bridge */ /* synthetic */ Object setSupportedResolutions(@NonNull List list) {
            return setSupportedResolutions((List<Pair<Integer, Size[]>>) list);
        }

        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public Builder<T> setSurfaceProcessingForceEnabled() {
            getMutableConfig().insertOption(VideoCaptureConfig.OPTION_FORCE_ENABLE_SURFACE_PROCESSING, Boolean.TRUE);
            return this;
        }

        @NonNull
        public Builder<T> setTargetFrameRate(@NonNull Range<Integer> range) {
            getMutableConfig().insertOption(UseCaseConfig.OPTION_TARGET_FRAME_RATE, range);
            return this;
        }

        @NonNull
        public Builder<T> setVideoEncoderInfoFinder(@NonNull Function<VideoEncoderConfig, VideoEncoderInfo> function) {
            getMutableConfig().insertOption(VideoCaptureConfig.OPTION_VIDEO_ENCODER_INFO_FINDER, function);
            return this;
        }

        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public Builder<T> setVideoOutput(@NonNull VideoOutput videoOutput) {
            getMutableConfig().insertOption(VideoCaptureConfig.OPTION_VIDEO_OUTPUT, videoOutput);
            return this;
        }

        @NonNull
        public Builder<T> setVideoStabilizationEnabled(boolean z) {
            int i;
            MutableConfig mutableConfig = getMutableConfig();
            Config.Option<Integer> option = UseCaseConfig.OPTION_VIDEO_STABILIZATION_MODE;
            if (z) {
                i = 2;
            } else {
                i = 1;
            }
            mutableConfig.insertOption(option, Integer.valueOf(i));
            return this;
        }

        private Builder(@NonNull MutableOptionsBundle mutableOptionsBundle) {
            this.mMutableConfig = mutableOptionsBundle;
            if (mutableOptionsBundle.containsOption(VideoCaptureConfig.OPTION_VIDEO_OUTPUT)) {
                Class cls = (Class) mutableOptionsBundle.retrieveOption(TargetConfig.OPTION_TARGET_CLASS, null);
                if (cls != null && !cls.equals(VideoCapture.class)) {
                    throw new IllegalArgumentException("Invalid target class configuration for " + this + ": " + cls);
                }
                setCaptureType(UseCaseConfigFactory.CaptureType.VIDEO_CAPTURE);
                setTargetClass((Class) VideoCapture.class);
                return;
            }
            throw new IllegalArgumentException("VideoOutput is required");
        }

        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public static <T extends VideoOutput> Builder<T> fromConfig(@NonNull VideoCaptureConfig<T> videoCaptureConfig) {
            return new Builder<>(MutableOptionsBundle.from((Config) videoCaptureConfig));
        }

        @Override // androidx.camera.core.ExtendableBuilder
        @NonNull
        public VideoCapture<T> build() {
            return new VideoCapture<>(getUseCaseConfig());
        }

        @Override // androidx.camera.core.impl.UseCaseConfig.Builder
        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public VideoCaptureConfig<T> getUseCaseConfig() {
            return new VideoCaptureConfig<>(OptionsBundle.from(this.mMutableConfig));
        }

        @Override // androidx.camera.core.internal.ThreadConfig.Builder
        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public Builder<T> setBackgroundExecutor(@NonNull Executor executor) {
            getMutableConfig().insertOption(ThreadConfig.OPTION_BACKGROUND_EXECUTOR, executor);
            return this;
        }

        @Override // androidx.camera.core.impl.UseCaseConfig.Builder
        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public Builder<T> setCaptureOptionUnpacker(@NonNull CaptureConfig.OptionUnpacker optionUnpacker) {
            getMutableConfig().insertOption(UseCaseConfig.OPTION_CAPTURE_CONFIG_UNPACKER, optionUnpacker);
            return this;
        }

        @Override // androidx.camera.core.impl.UseCaseConfig.Builder
        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public Builder<T> setCaptureType(@NonNull UseCaseConfigFactory.CaptureType captureType) {
            getMutableConfig().insertOption(UseCaseConfig.OPTION_CAPTURE_TYPE, captureType);
            return this;
        }

        @Override // androidx.camera.core.impl.ImageOutputConfig.Builder
        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public Builder<T> setCustomOrderedResolutions(@NonNull List<Size> list) {
            getMutableConfig().insertOption(ImageOutputConfig.OPTION_CUSTOM_ORDERED_RESOLUTIONS, list);
            return this;
        }

        @Override // androidx.camera.core.impl.UseCaseConfig.Builder
        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public Builder<T> setDefaultCaptureConfig(@NonNull CaptureConfig captureConfig) {
            getMutableConfig().insertOption(UseCaseConfig.OPTION_DEFAULT_CAPTURE_CONFIG, captureConfig);
            return this;
        }

        @Override // androidx.camera.core.impl.ImageOutputConfig.Builder
        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public Builder<T> setDefaultResolution(@NonNull Size size) {
            getMutableConfig().insertOption(ImageOutputConfig.OPTION_DEFAULT_RESOLUTION, size);
            return this;
        }

        @Override // androidx.camera.core.impl.UseCaseConfig.Builder
        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public Builder<T> setDefaultSessionConfig(@NonNull SessionConfig sessionConfig) {
            getMutableConfig().insertOption(UseCaseConfig.OPTION_DEFAULT_SESSION_CONFIG, sessionConfig);
            return this;
        }

        @Override // androidx.camera.core.impl.ImageInputConfig.Builder
        @NonNull
        public Builder<T> setDynamicRange(@NonNull DynamicRange dynamicRange) {
            getMutableConfig().insertOption(ImageInputConfig.OPTION_INPUT_DYNAMIC_RANGE, dynamicRange);
            return this;
        }

        @Override // androidx.camera.core.impl.UseCaseConfig.Builder
        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public Builder<T> setHighResolutionDisabled(boolean z) {
            getMutableConfig().insertOption(UseCaseConfig.OPTION_HIGH_RESOLUTION_DISABLED, Boolean.valueOf(z));
            return this;
        }

        @Override // androidx.camera.core.impl.ImageOutputConfig.Builder
        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public Builder<T> setMaxResolution(@NonNull Size size) {
            getMutableConfig().insertOption(ImageOutputConfig.OPTION_MAX_RESOLUTION, size);
            return this;
        }

        @Override // androidx.camera.core.impl.ImageOutputConfig.Builder
        @NonNull
        public Builder<T> setMirrorMode(int i) {
            getMutableConfig().insertOption(ImageOutputConfig.OPTION_MIRROR_MODE, Integer.valueOf(i));
            return this;
        }

        @Override // androidx.camera.core.impl.ImageOutputConfig.Builder
        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public Builder<T> setResolutionSelector(@NonNull ResolutionSelector resolutionSelector) {
            getMutableConfig().insertOption(ImageOutputConfig.OPTION_RESOLUTION_SELECTOR, resolutionSelector);
            return this;
        }

        @Override // androidx.camera.core.impl.UseCaseConfig.Builder
        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public Builder<T> setSessionOptionUnpacker(@NonNull SessionConfig.OptionUnpacker optionUnpacker) {
            getMutableConfig().insertOption(UseCaseConfig.OPTION_SESSION_CONFIG_UNPACKER, optionUnpacker);
            return this;
        }

        @Override // androidx.camera.core.impl.ImageOutputConfig.Builder
        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public Builder<T> setSupportedResolutions(@NonNull List<Pair<Integer, Size[]>> list) {
            getMutableConfig().insertOption(ImageOutputConfig.OPTION_SUPPORTED_RESOLUTIONS, list);
            return this;
        }

        @Override // androidx.camera.core.impl.UseCaseConfig.Builder
        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public Builder<T> setSurfaceOccupancyPriority(int i) {
            getMutableConfig().insertOption(UseCaseConfig.OPTION_SURFACE_OCCUPANCY_PRIORITY, Integer.valueOf(i));
            return this;
        }

        @Override // androidx.camera.core.impl.ImageOutputConfig.Builder
        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public Builder<T> setTargetAspectRatio(int i) {
            throw new UnsupportedOperationException("setTargetAspectRatio is not supported.");
        }

        @Override // androidx.camera.core.internal.TargetConfig.Builder
        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public Builder<T> setTargetClass(@NonNull Class<VideoCapture<T>> cls) {
            getMutableConfig().insertOption(TargetConfig.OPTION_TARGET_CLASS, cls);
            if (getMutableConfig().retrieveOption(TargetConfig.OPTION_TARGET_NAME, null) == null) {
                setTargetName(cls.getCanonicalName() + "-" + UUID.randomUUID());
            }
            return this;
        }

        @Override // androidx.camera.core.internal.TargetConfig.Builder
        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public Builder<T> setTargetName(@NonNull String str) {
            getMutableConfig().insertOption(TargetConfig.OPTION_TARGET_NAME, str);
            return this;
        }

        @Override // androidx.camera.core.impl.ImageOutputConfig.Builder
        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public Builder<T> setTargetResolution(@NonNull Size size) {
            throw new UnsupportedOperationException("setTargetResolution is not supported.");
        }

        @Override // androidx.camera.core.impl.ImageOutputConfig.Builder
        @NonNull
        public Builder<T> setTargetRotation(int i) {
            getMutableConfig().insertOption(ImageOutputConfig.OPTION_TARGET_ROTATION, Integer.valueOf(i));
            return this;
        }

        @Override // androidx.camera.core.impl.UseCaseConfig.Builder
        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public Builder<T> setZslDisabled(boolean z) {
            getMutableConfig().insertOption(UseCaseConfig.OPTION_ZSL_DISABLED, Boolean.valueOf(z));
            return this;
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes.dex */
    public static final class Defaults implements ConfigProvider<VideoCaptureConfig<?>> {
        private static final VideoCaptureConfig<?> DEFAULT_CONFIG;
        static final DynamicRange DEFAULT_DYNAMIC_RANGE;
        static final Range<Integer> DEFAULT_FPS_RANGE;
        private static final int DEFAULT_SURFACE_OCCUPANCY_PRIORITY = 5;
        private static final Function<VideoEncoderConfig, VideoEncoderInfo> DEFAULT_VIDEO_ENCODER_INFO_FINDER;
        private static final VideoOutput DEFAULT_VIDEO_OUTPUT;

        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, androidx.camera.video.VideoOutput] */
        static {
            ?? obj = new Object();
            DEFAULT_VIDEO_OUTPUT = obj;
            Function<VideoEncoderConfig, VideoEncoderInfo> function = VideoEncoderInfoImpl.FINDER;
            DEFAULT_VIDEO_ENCODER_INFO_FINDER = function;
            DEFAULT_FPS_RANGE = new Range<>(30, 30);
            DynamicRange dynamicRange = DynamicRange.SDR;
            DEFAULT_DYNAMIC_RANGE = dynamicRange;
            DEFAULT_CONFIG = new Builder(obj).setSurfaceOccupancyPriority(5).setVideoEncoderInfoFinder(function).setDynamicRange(dynamicRange).getUseCaseConfig();
        }

        @Override // androidx.camera.core.impl.ConfigProvider
        @NonNull
        public VideoCaptureConfig<?> getConfig() {
            return DEFAULT_CONFIG;
        }
    }

    /* loaded from: classes.dex */
    public static class SourceStreamRequirementObserver implements Observable.Observer<Boolean> {

        @Nullable
        private CameraControlInternal mCameraControl;
        private boolean mIsSourceStreamRequired = false;

        public SourceStreamRequirementObserver(@NonNull CameraControlInternal cameraControlInternal) {
            this.mCameraControl = cameraControlInternal;
        }

        private void updateVideoUsageInCamera(boolean z) {
            if (this.mIsSourceStreamRequired == z) {
                return;
            }
            this.mIsSourceStreamRequired = z;
            CameraControlInternal cameraControlInternal = this.mCameraControl;
            if (cameraControlInternal != null) {
                if (z) {
                    cameraControlInternal.incrementVideoUsage();
                    return;
                } else {
                    cameraControlInternal.decrementVideoUsage();
                    return;
                }
            }
            Logger.d(VideoCapture.TAG, "SourceStreamRequirementObserver#isSourceStreamRequired: Received new data despite being closed already");
        }

        @MainThread
        public void close() {
            Preconditions.checkState(Threads.isMainThread(), "SourceStreamRequirementObserver can be closed from main thread only");
            Logger.d(VideoCapture.TAG, "SourceStreamRequirementObserver#close: mIsSourceStreamRequired = " + this.mIsSourceStreamRequired);
            if (this.mCameraControl == null) {
                Logger.d(VideoCapture.TAG, "SourceStreamRequirementObserver#close: Already closed!");
            } else {
                updateVideoUsageInCamera(false);
                this.mCameraControl = null;
            }
        }

        @Override // androidx.camera.core.impl.Observable.Observer
        public void onError(@NonNull Throwable th) {
            Logger.w(VideoCapture.TAG, "SourceStreamRequirementObserver#onError", th);
        }

        @Override // androidx.camera.core.impl.Observable.Observer
        @MainThread
        public void onNewData(@Nullable Boolean bool) {
            Preconditions.checkState(Threads.isMainThread(), "SourceStreamRequirementObserver can be updated from main thread only");
            updateVideoUsageInCamera(Boolean.TRUE.equals(bool));
        }
    }

    public VideoCapture(@NonNull VideoCaptureConfig<T> videoCaptureConfig) {
        super(videoCaptureConfig);
        this.mStreamInfo = StreamInfo.STREAM_INFO_ANY_INACTIVE;
        this.mSessionConfigBuilder = new SessionConfig.Builder();
        this.mSurfaceUpdateFuture = null;
        this.mSourceState = VideoOutput.SourceState.INACTIVE;
        this.mHasCompensatingTransformation = false;
        this.mStreamInfoObserver = new Observable.Observer<StreamInfo>() { // from class: androidx.camera.video.VideoCapture.1
            public AnonymousClass1() {
            }

            @Override // androidx.camera.core.impl.Observable.Observer
            public void onError(@NonNull Throwable th) {
                Logger.w(VideoCapture.TAG, "Receive onError from StreamState observer", th);
            }

            @Override // androidx.camera.core.impl.Observable.Observer
            public void onNewData(@Nullable StreamInfo streamInfo) {
                if (streamInfo != null) {
                    if (VideoCapture.this.mSourceState == VideoOutput.SourceState.INACTIVE) {
                        return;
                    }
                    Logger.d(VideoCapture.TAG, "Stream info update: old: " + VideoCapture.this.mStreamInfo + " new: " + streamInfo);
                    VideoCapture videoCapture = VideoCapture.this;
                    StreamInfo streamInfo2 = videoCapture.mStreamInfo;
                    videoCapture.mStreamInfo = streamInfo;
                    StreamSpec streamSpec = (StreamSpec) Preconditions.checkNotNull(videoCapture.getAttachedStreamSpec());
                    if (!VideoCapture.this.isStreamIdChanged(streamInfo2.getId(), streamInfo.getId()) && !VideoCapture.this.shouldResetCompensatingTransformation(streamInfo2, streamInfo)) {
                        if ((streamInfo2.getId() != -1 && streamInfo.getId() == -1) || (streamInfo2.getId() == -1 && streamInfo.getId() != -1)) {
                            VideoCapture videoCapture2 = VideoCapture.this;
                            videoCapture2.applyStreamInfoAndStreamSpecToSessionConfigBuilder(videoCapture2.mSessionConfigBuilder, streamInfo, streamSpec);
                            VideoCapture videoCapture3 = VideoCapture.this;
                            Object[] objArr = {videoCapture3.mSessionConfigBuilder.build()};
                            ArrayList arrayList = new ArrayList(1);
                            Object obj = objArr[0];
                            Objects.requireNonNull(obj);
                            arrayList.add(obj);
                            videoCapture3.updateSessionConfig(DesugarCollections.unmodifiableList(arrayList));
                            VideoCapture.this.notifyReset();
                            return;
                        }
                        if (streamInfo2.getStreamState() != streamInfo.getStreamState()) {
                            VideoCapture videoCapture4 = VideoCapture.this;
                            videoCapture4.applyStreamInfoAndStreamSpecToSessionConfigBuilder(videoCapture4.mSessionConfigBuilder, streamInfo, streamSpec);
                            VideoCapture videoCapture5 = VideoCapture.this;
                            Object[] objArr2 = {videoCapture5.mSessionConfigBuilder.build()};
                            ArrayList arrayList2 = new ArrayList(1);
                            Object obj2 = objArr2[0];
                            Objects.requireNonNull(obj2);
                            arrayList2.add(obj2);
                            videoCapture5.updateSessionConfig(DesugarCollections.unmodifiableList(arrayList2));
                            VideoCapture.this.notifyUpdated();
                            return;
                        }
                        return;
                    }
                    VideoCapture.this.resetPipeline();
                    return;
                }
                throw new IllegalArgumentException("StreamInfo can't be null");
            }
        };
    }

    private static void addBySupportedSize(@NonNull Set<Size> set, int i, int i2, @NonNull Size size, @NonNull VideoEncoderInfo videoEncoderInfo) {
        if (i <= size.getWidth() && i2 <= size.getHeight()) {
            try {
                set.add(new Size(i, videoEncoderInfo.getSupportedHeightsFor(i).clamp(Integer.valueOf(i2)).intValue()));
            } catch (IllegalArgumentException e) {
                Logger.w(TAG, "No supportedHeights for width: " + i, e);
            }
            try {
                set.add(new Size(videoEncoderInfo.getSupportedWidthsFor(i2).clamp(Integer.valueOf(i)).intValue(), i2));
            } catch (IllegalArgumentException e2) {
                Logger.w(TAG, "No supportedWidths for height: " + i2, e2);
            }
        }
    }

    @NonNull
    private static Rect adjustCropRectByQuirk(@NonNull Rect rect, int i, boolean z, @Nullable VideoEncoderInfo videoEncoderInfo) {
        SizeCannotEncodeVideoQuirk sizeCannotEncodeVideoQuirk = (SizeCannotEncodeVideoQuirk) DeviceQuirks.get(SizeCannotEncodeVideoQuirk.class);
        if (sizeCannotEncodeVideoQuirk != null) {
            if (!z) {
                i = 0;
            }
            return sizeCannotEncodeVideoQuirk.adjustCropRectForProblematicEncodeSize(rect, i, videoEncoderInfo);
        }
        return rect;
    }

    @NonNull
    private static Rect adjustCropRectToValidSize(@NonNull Rect rect, @NonNull Size size, @NonNull VideoEncoderInfo videoEncoderInfo) {
        boolean z = true;
        Logger.d(TAG, String.format("Adjust cropRect %s by width/height alignment %d/%d and supported widths %s / supported heights %s", TransformUtils.rectToString(rect), Integer.valueOf(videoEncoderInfo.getWidthAlignment()), Integer.valueOf(videoEncoderInfo.getHeightAlignment()), videoEncoderInfo.getSupportedWidths(), videoEncoderInfo.getSupportedHeights()));
        if ((!videoEncoderInfo.getSupportedWidths().contains((Range<Integer>) Integer.valueOf(rect.width())) || !videoEncoderInfo.getSupportedHeights().contains((Range<Integer>) Integer.valueOf(rect.height()))) && videoEncoderInfo.canSwapWidthHeight() && videoEncoderInfo.getSupportedHeights().contains((Range<Integer>) Integer.valueOf(rect.width())) && videoEncoderInfo.getSupportedWidths().contains((Range<Integer>) Integer.valueOf(rect.height()))) {
            videoEncoderInfo = new SwappedVideoEncoderInfo(videoEncoderInfo);
        }
        int widthAlignment = videoEncoderInfo.getWidthAlignment();
        int heightAlignment = videoEncoderInfo.getHeightAlignment();
        Range<Integer> supportedWidths = videoEncoderInfo.getSupportedWidths();
        Range<Integer> supportedHeights = videoEncoderInfo.getSupportedHeights();
        int alignDown = alignDown(rect.width(), widthAlignment, supportedWidths);
        int alignUp = alignUp(rect.width(), widthAlignment, supportedWidths);
        int alignDown2 = alignDown(rect.height(), heightAlignment, supportedHeights);
        int alignUp2 = alignUp(rect.height(), heightAlignment, supportedHeights);
        HashSet hashSet = new HashSet();
        addBySupportedSize(hashSet, alignDown, alignDown2, size, videoEncoderInfo);
        addBySupportedSize(hashSet, alignDown, alignUp2, size, videoEncoderInfo);
        addBySupportedSize(hashSet, alignUp, alignDown2, size, videoEncoderInfo);
        addBySupportedSize(hashSet, alignUp, alignUp2, size, videoEncoderInfo);
        if (hashSet.isEmpty()) {
            Logger.w(TAG, "Can't find valid cropped size");
            return rect;
        }
        ArrayList arrayList = new ArrayList(hashSet);
        Logger.d(TAG, "candidatesList = " + arrayList);
        Collections.sort(arrayList, new C0612xe466f64(rect, 2));
        Logger.d(TAG, "sorted candidatesList = " + arrayList);
        Size size2 = (Size) arrayList.get(0);
        int width = size2.getWidth();
        int height = size2.getHeight();
        if (width == rect.width() && height == rect.height()) {
            Logger.d(TAG, "No need to adjust cropRect because crop size is valid.");
            return rect;
        }
        if (width % 2 != 0 || height % 2 != 0 || width > size.getWidth() || height > size.getHeight()) {
            z = false;
        }
        Preconditions.checkState(z);
        Rect rect2 = new Rect(rect);
        if (width != rect.width()) {
            int max = Math.max(0, rect.centerX() - (width / 2));
            rect2.left = max;
            int i = max + width;
            rect2.right = i;
            if (i > size.getWidth()) {
                int width2 = size.getWidth();
                rect2.right = width2;
                rect2.left = width2 - width;
            }
        }
        if (height != rect.height()) {
            int max2 = Math.max(0, rect.centerY() - (height / 2));
            rect2.top = max2;
            int i2 = max2 + height;
            rect2.bottom = i2;
            if (i2 > size.getHeight()) {
                int height2 = size.getHeight();
                rect2.bottom = height2;
                rect2.top = height2 - height;
            }
        }
        Logger.d(TAG, "Adjust cropRect from " + TransformUtils.rectToString(rect) + " to " + TransformUtils.rectToString(rect2));
        return rect2;
    }

    @NonNull
    private Rect adjustCropRectWithInProgressTransformation(@NonNull Rect rect, int i) {
        if (shouldCompensateTransformation()) {
            return TransformUtils.sizeToRect(TransformUtils.getRotatedSize(((SurfaceRequest.TransformationInfo) Preconditions.checkNotNull(this.mStreamInfo.getInProgressTransformationInfo())).getCropRect(), i));
        }
        return rect;
    }

    @NonNull
    private Size adjustResolutionWithInProgressTransformation(@NonNull Size size, @NonNull Rect rect, @NonNull Rect rect2) {
        if (shouldCompensateTransformation() && !rect2.equals(rect)) {
            float height = rect2.height() / rect.height();
            return new Size((int) Math.ceil(size.getWidth() * height), (int) Math.ceil(size.getHeight() * height));
        }
        return size;
    }

    private static int align(boolean z, int i, int i2, @NonNull Range<Integer> range) {
        int i3 = i % i2;
        if (i3 != 0) {
            if (z) {
                i -= i3;
            } else {
                i += i2 - i3;
            }
        }
        return range.clamp(Integer.valueOf(i)).intValue();
    }

    private static int alignDown(int i, int i2, @NonNull Range<Integer> range) {
        return align(true, i, i2, range);
    }

    private static int alignUp(int i, int i2, @NonNull Range<Integer> range) {
        return align(false, i, i2, range);
    }

    @NonNull
    private Rect calculateCropRect(@NonNull Size size, @Nullable VideoEncoderInfo videoEncoderInfo) {
        Rect rect;
        if (getViewPortCropRect() != null) {
            rect = getViewPortCropRect();
        } else {
            rect = new Rect(0, 0, size.getWidth(), size.getHeight());
        }
        if (videoEncoderInfo != null && !videoEncoderInfo.isSizeSupportedAllowSwapping(rect.width(), rect.height())) {
            return adjustCropRectToValidSize(rect, size, videoEncoderInfo);
        }
        return rect;
    }

    @MainThread
    private void clearPipeline() {
        Threads.checkMainThread();
        SessionConfig.CloseableErrorListener closeableErrorListener = this.mCloseableErrorListener;
        if (closeableErrorListener != null) {
            closeableErrorListener.close();
            this.mCloseableErrorListener = null;
        }
        DeferrableSurface deferrableSurface = this.mDeferrableSurface;
        if (deferrableSurface != null) {
            deferrableSurface.close();
            this.mDeferrableSurface = null;
        }
        SurfaceProcessorNode surfaceProcessorNode = this.mNode;
        if (surfaceProcessorNode != null) {
            surfaceProcessorNode.release();
            this.mNode = null;
        }
        SurfaceEdge surfaceEdge = this.mCameraEdge;
        if (surfaceEdge != null) {
            surfaceEdge.close();
            this.mCameraEdge = null;
        }
        this.mCropRect = null;
        this.mSurfaceRequest = null;
        this.mStreamInfo = StreamInfo.STREAM_INFO_ANY_INACTIVE;
        this.mRotationDegrees = 0;
        this.mHasCompensatingTransformation = false;
    }

    @Nullable
    private SurfaceProcessorNode createNodeIfNeeded(@NonNull CameraInternal cameraInternal, @NonNull VideoCaptureConfig<T> videoCaptureConfig, @NonNull Rect rect, @NonNull Size size, @NonNull DynamicRange dynamicRange) {
        SurfaceProcessorInternal newInstance;
        if (isCreateNodeNeeded(cameraInternal, videoCaptureConfig, rect, size)) {
            Logger.d(TAG, "Surface processing is enabled.");
            CameraInternal camera = getCamera();
            Objects.requireNonNull(camera);
            CameraInternal cameraInternal2 = camera;
            if (getEffect() != null) {
                newInstance = getEffect().createSurfaceProcessorInternal();
            } else {
                newInstance = DefaultSurfaceProcessor.Factory.newInstance(dynamicRange);
            }
            return new SurfaceProcessorNode(cameraInternal2, newInstance);
        }
        return null;
    }

    @NonNull
    @SuppressLint({"WrongConstant"})
    @MainThread
    private SessionConfig.Builder createPipeline(@NonNull VideoCaptureConfig<T> videoCaptureConfig, @NonNull StreamSpec streamSpec) {
        Threads.checkMainThread();
        CameraInternal cameraInternal = (CameraInternal) Preconditions.checkNotNull(getCamera());
        Size resolution = streamSpec.getResolution();
        RunnableC1044x8c43c726 runnableC1044x8c43c726 = new RunnableC1044x8c43c726(this, 12);
        Range<Integer> resolveFrameRate = resolveFrameRate(streamSpec);
        MediaSpec mediaSpec = getMediaSpec();
        Objects.requireNonNull(mediaSpec);
        VideoCapabilities videoCapabilities = getVideoCapabilities(cameraInternal.getCameraInfo());
        DynamicRange dynamicRange = streamSpec.getDynamicRange();
        VideoEncoderInfo resolveVideoEncoderInfo = resolveVideoEncoderInfo(videoCaptureConfig.getVideoEncoderInfoFinder(), videoCapabilities.findNearestHigherSupportedEncoderProfilesFor(resolution, dynamicRange), mediaSpec, resolution, dynamicRange, resolveFrameRate);
        this.mRotationDegrees = getCompensatedRotation(cameraInternal);
        Rect calculateCropRect = calculateCropRect(resolution, resolveVideoEncoderInfo);
        Rect adjustCropRectWithInProgressTransformation = adjustCropRectWithInProgressTransformation(calculateCropRect, this.mRotationDegrees);
        this.mCropRect = adjustCropRectWithInProgressTransformation;
        Size adjustResolutionWithInProgressTransformation = adjustResolutionWithInProgressTransformation(resolution, calculateCropRect, adjustCropRectWithInProgressTransformation);
        boolean z = true;
        if (shouldCompensateTransformation()) {
            this.mHasCompensatingTransformation = true;
        }
        Rect rect = this.mCropRect;
        Rect adjustCropRectByQuirk = adjustCropRectByQuirk(rect, this.mRotationDegrees, isCreateNodeNeeded(cameraInternal, videoCaptureConfig, rect, resolution), resolveVideoEncoderInfo);
        this.mCropRect = adjustCropRectByQuirk;
        SurfaceProcessorNode createNodeIfNeeded = createNodeIfNeeded(cameraInternal, videoCaptureConfig, adjustCropRectByQuirk, resolution, dynamicRange);
        this.mNode = createNodeIfNeeded;
        Timebase resolveTimebase = resolveTimebase(cameraInternal, createNodeIfNeeded);
        Logger.d(TAG, "camera timebase = " + cameraInternal.getCameraInfoInternal().getTimebase() + ", processing timebase = " + resolveTimebase);
        StreamSpec build = streamSpec.toBuilder().setResolution(adjustResolutionWithInProgressTransformation).setExpectedFrameRateRange(resolveFrameRate).build();
        if (this.mCameraEdge != null) {
            z = false;
        }
        Preconditions.checkState(z);
        SurfaceEdge surfaceEdge = new SurfaceEdge(2, 34, build, getSensorToBufferTransformMatrix(), cameraInternal.getHasTransform(), this.mCropRect, this.mRotationDegrees, getAppTargetRotation(), shouldMirror(cameraInternal));
        this.mCameraEdge = surfaceEdge;
        surfaceEdge.addOnInvalidatedListener(runnableC1044x8c43c726);
        if (this.mNode != null) {
            OutConfig of = OutConfig.of(this.mCameraEdge);
            SurfaceEdge surfaceEdge2 = this.mNode.transform(SurfaceProcessorNode.In.of(this.mCameraEdge, Collections.singletonList(of))).get(of);
            Objects.requireNonNull(surfaceEdge2);
            surfaceEdge2.addOnInvalidatedListener(new RunnableC1013x3ba4617f(this, surfaceEdge2, cameraInternal, videoCaptureConfig, resolveTimebase, 1));
            this.mSurfaceRequest = surfaceEdge2.createSurfaceRequest(cameraInternal);
            DeferrableSurface deferrableSurface = this.mCameraEdge.getDeferrableSurface();
            this.mDeferrableSurface = deferrableSurface;
            deferrableSurface.getTerminationFuture().addListener(new RunnableC0938xaa9be1e3(this, deferrableSurface, 25), CameraXExecutors.mainThreadExecutor());
        } else {
            SurfaceRequest createSurfaceRequest = this.mCameraEdge.createSurfaceRequest(cameraInternal);
            this.mSurfaceRequest = createSurfaceRequest;
            this.mDeferrableSurface = createSurfaceRequest.getDeferrableSurface();
        }
        videoCaptureConfig.getVideoOutput().onSurfaceRequested(this.mSurfaceRequest, resolveTimebase);
        sendTransformationInfoIfReady();
        this.mDeferrableSurface.setContainerClass(MediaCodec.class);
        SessionConfig.Builder createFrom = SessionConfig.Builder.createFrom(videoCaptureConfig, streamSpec.getResolution());
        createFrom.setExpectedFrameRateRange(streamSpec.getExpectedFrameRateRange());
        createFrom.setVideoStabilization(AbstractC1275x4479f3e9.m4255xab142723(videoCaptureConfig));
        SessionConfig.CloseableErrorListener closeableErrorListener = this.mCloseableErrorListener;
        if (closeableErrorListener != null) {
            closeableErrorListener.close();
        }
        SessionConfig.CloseableErrorListener closeableErrorListener2 = new SessionConfig.CloseableErrorListener(new C0871x6413f5c1(this, 4));
        this.mCloseableErrorListener = closeableErrorListener2;
        createFrom.setErrorListener(closeableErrorListener2);
        if (streamSpec.getImplementationOptions() != null) {
            createFrom.addImplementationOptions(streamSpec.getImplementationOptions());
        }
        return createFrom;
    }

    @Nullable
    private static <T> T fetchObservableValue(@NonNull Observable<T> observable, @Nullable T t) {
        ListenableFuture<T> fetchData = observable.fetchData();
        if (!fetchData.isDone()) {
            return t;
        }
        try {
            return fetchData.get();
        } catch (InterruptedException | ExecutionException e) {
            throw new IllegalStateException(e);
        }
    }

    @NonNull
    private static List<Size> filterOutEncoderUnsupportedResolutions(@NonNull VideoCaptureConfig<?> videoCaptureConfig, @NonNull MediaSpec mediaSpec, @NonNull DynamicRange dynamicRange, @NonNull VideoCapabilities videoCapabilities, @NonNull List<Size> list, @NonNull Map<Quality, Size> map) {
        VideoValidatedEncoderProfilesProxy findNearestHigherSupportedEncoderProfilesFor;
        if (list.isEmpty()) {
            return list;
        }
        Iterator<Size> it = list.iterator();
        while (it.hasNext()) {
            Size next = it.next();
            if (!map.containsValue(next) && (findNearestHigherSupportedEncoderProfilesFor = videoCapabilities.findNearestHigherSupportedEncoderProfilesFor(next, dynamicRange)) != null) {
                Function<VideoEncoderConfig, VideoEncoderInfo> videoEncoderInfoFinder = videoCaptureConfig.getVideoEncoderInfoFinder();
                Range m4254x1aebc6d9 = AbstractC1275x4479f3e9.m4254x1aebc6d9(videoCaptureConfig, Defaults.DEFAULT_FPS_RANGE);
                Objects.requireNonNull(m4254x1aebc6d9);
                VideoEncoderInfo findLargestSupportedSizeVideoEncoderInfo = findLargestSupportedSizeVideoEncoderInfo(videoEncoderInfoFinder, findNearestHigherSupportedEncoderProfilesFor, dynamicRange, mediaSpec, next, m4254x1aebc6d9);
                if (findLargestSupportedSizeVideoEncoderInfo != null && !findLargestSupportedSizeVideoEncoderInfo.isSizeSupportedAllowSwapping(next.getWidth(), next.getHeight())) {
                    it.remove();
                }
            }
        }
        return list;
    }

    @Nullable
    private static VideoEncoderInfo findLargestSupportedSizeVideoEncoderInfo(@NonNull Function<VideoEncoderConfig, VideoEncoderInfo> function, @NonNull VideoValidatedEncoderProfilesProxy videoValidatedEncoderProfilesProxy, @NonNull DynamicRange dynamicRange, @NonNull MediaSpec mediaSpec, @NonNull Size size, @NonNull Range<Integer> range) {
        VideoEncoderInfo resolveVideoEncoderInfo;
        int area;
        if (dynamicRange.isFullySpecified()) {
            return resolveVideoEncoderInfo(function, videoValidatedEncoderProfilesProxy, mediaSpec, size, dynamicRange, range);
        }
        VideoEncoderInfo videoEncoderInfo = null;
        int i = Integer.MIN_VALUE;
        for (EncoderProfilesProxy.VideoProfileProxy videoProfileProxy : videoValidatedEncoderProfilesProxy.getVideoProfiles()) {
            if (DynamicRangeUtil.isHdrSettingsMatched(videoProfileProxy, dynamicRange) && (resolveVideoEncoderInfo = resolveVideoEncoderInfo(function, videoValidatedEncoderProfilesProxy, mediaSpec, size, new DynamicRange(DynamicRangeUtil.videoProfileHdrFormatsToDynamicRangeEncoding(videoProfileProxy.getHdrFormat()), DynamicRangeUtil.videoProfileBitDepthToDynamicRangeBitDepth(videoProfileProxy.getBitDepth())), range)) != null && (area = SizeUtil.getArea(resolveVideoEncoderInfo.getSupportedWidths().getUpper().intValue(), resolveVideoEncoderInfo.getSupportedHeights().getUpper().intValue())) > i) {
                videoEncoderInfo = resolveVideoEncoderInfo;
                i = area;
            }
        }
        return videoEncoderInfo;
    }

    private int getCompensatedRotation(@NonNull CameraInternal cameraInternal) {
        boolean isMirroringRequired = isMirroringRequired(cameraInternal);
        int relativeRotation = getRelativeRotation(cameraInternal, isMirroringRequired);
        if (shouldCompensateTransformation()) {
            SurfaceRequest.TransformationInfo inProgressTransformationInfo = this.mStreamInfo.getInProgressTransformationInfo();
            Objects.requireNonNull(inProgressTransformationInfo);
            int rotationDegrees = inProgressTransformationInfo.getRotationDegrees();
            if (isMirroringRequired != inProgressTransformationInfo.isMirroring()) {
                rotationDegrees = -rotationDegrees;
            }
            return TransformUtils.within360(relativeRotation - rotationDegrees);
        }
        return relativeRotation;
    }

    @Nullable
    private MediaSpec getMediaSpec() {
        return (MediaSpec) fetchObservableValue(getOutput().getMediaSpec(), null);
    }

    @NonNull
    private VideoCapabilities getVideoCapabilities(@NonNull CameraInfo cameraInfo) {
        return getOutput().getMediaCapabilities(cameraInfo);
    }

    private boolean isCreateNodeNeeded(@NonNull CameraInternal cameraInternal, @NonNull VideoCaptureConfig<?> videoCaptureConfig, @NonNull Rect rect, @NonNull Size size) {
        if (getEffect() == null && !shouldEnableSurfaceProcessingByConfig(cameraInternal, videoCaptureConfig) && !shouldEnableSurfaceProcessingByQuirk(cameraInternal) && !shouldCrop(rect, size) && !shouldMirror(cameraInternal) && !shouldCompensateTransformation()) {
            return false;
        }
        return true;
    }

    public static /* synthetic */ int lambda$adjustCropRectToValidSize$4(Rect rect, Size size, Size size2) {
        return (Math.abs(size.getHeight() - rect.height()) + Math.abs(size.getWidth() - rect.width())) - (Math.abs(size2.getHeight() - rect.height()) + Math.abs(size2.getWidth() - rect.width()));
    }

    public /* synthetic */ void lambda$createPipeline$2(DeferrableSurface deferrableSurface) {
        if (deferrableSurface == this.mDeferrableSurface) {
            clearPipeline();
        }
    }

    public /* synthetic */ void lambda$createPipeline$3(SessionConfig sessionConfig, SessionConfig.SessionError sessionError) {
        resetPipeline();
    }

    public static /* synthetic */ void lambda$setupSurfaceUpdateNotifier$5(AtomicBoolean atomicBoolean, SessionConfig.Builder builder, CameraCaptureCallback cameraCaptureCallback) {
        Preconditions.checkState(Threads.isMainThread(), "Surface update cancellation should only occur on main thread.");
        atomicBoolean.set(true);
        builder.removeCameraCaptureCallback(cameraCaptureCallback);
    }

    public /* synthetic */ Object lambda$setupSurfaceUpdateNotifier$6(SessionConfig.Builder builder, CallbackToFutureAdapter.Completer completer) {
        builder.addTag(SURFACE_UPDATE_KEY, Integer.valueOf(completer.hashCode()));
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        AnonymousClass2 anonymousClass2 = new AnonymousClass2(atomicBoolean, completer, builder);
        completer.addCancellationListener(new RunnableC0384x149e5abd(atomicBoolean, 16, builder, anonymousClass2), CameraXExecutors.directExecutor());
        builder.addRepeatingCameraCaptureCallback(anonymousClass2);
        return String.format("%s[0x%x]", SURFACE_UPDATE_KEY, Integer.valueOf(completer.hashCode()));
    }

    /* renamed from: onAppEdgeInvalidated */
    public void lambda$createPipeline$1(@NonNull SurfaceEdge surfaceEdge, @NonNull CameraInternal cameraInternal, @NonNull VideoCaptureConfig<T> videoCaptureConfig, @NonNull Timebase timebase) {
        if (cameraInternal == getCamera()) {
            this.mSurfaceRequest = surfaceEdge.createSurfaceRequest(cameraInternal);
            videoCaptureConfig.getVideoOutput().onSurfaceRequested(this.mSurfaceRequest, timebase);
            sendTransformationInfoIfReady();
        }
    }

    @NonNull
    private static Range<Integer> resolveFrameRate(@NonNull StreamSpec streamSpec) {
        Range<Integer> expectedFrameRateRange = streamSpec.getExpectedFrameRateRange();
        if (Objects.equals(expectedFrameRateRange, StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED)) {
            return Defaults.DEFAULT_FPS_RANGE;
        }
        return expectedFrameRateRange;
    }

    @NonNull
    private static Timebase resolveTimebase(@NonNull CameraInternal cameraInternal, @Nullable SurfaceProcessorNode surfaceProcessorNode) {
        if (surfaceProcessorNode == null && cameraInternal.getHasTransform()) {
            return Timebase.UPTIME;
        }
        return cameraInternal.getCameraInfoInternal().getTimebase();
    }

    @Nullable
    private static VideoEncoderInfo resolveVideoEncoderInfo(@NonNull Function<VideoEncoderConfig, VideoEncoderInfo> function, @Nullable VideoValidatedEncoderProfilesProxy videoValidatedEncoderProfilesProxy, @NonNull MediaSpec mediaSpec, @NonNull Size size, @NonNull DynamicRange dynamicRange, @NonNull Range<Integer> range) {
        VideoEncoderInfo apply = function.apply(VideoConfigUtil.resolveVideoEncoderConfig(VideoConfigUtil.resolveVideoMimeInfo(mediaSpec, dynamicRange, videoValidatedEncoderProfilesProxy), Timebase.UPTIME, mediaSpec.getVideoSpec(), size, dynamicRange, range));
        Size size2 = null;
        if (apply == null) {
            Logger.w(TAG, "Can't find videoEncoderInfo");
            return null;
        }
        if (videoValidatedEncoderProfilesProxy != null) {
            size2 = new Size(videoValidatedEncoderProfilesProxy.getDefaultVideoProfile().getWidth(), videoValidatedEncoderProfilesProxy.getDefaultVideoProfile().getHeight());
        }
        return VideoEncoderInfoWrapper.from(apply, size2);
    }

    private void sendTransformationInfoIfReady() {
        CameraInternal camera = getCamera();
        SurfaceEdge surfaceEdge = this.mCameraEdge;
        if (camera != null && surfaceEdge != null) {
            int compensatedRotation = getCompensatedRotation(camera);
            this.mRotationDegrees = compensatedRotation;
            surfaceEdge.updateTransformation(compensatedRotation, getAppTargetRotation());
        }
    }

    @MainThread
    private void setupSurfaceUpdateNotifier(@NonNull SessionConfig.Builder builder, boolean z) {
        ListenableFuture<Void> listenableFuture = this.mSurfaceUpdateFuture;
        if (listenableFuture != null && listenableFuture.cancel(false)) {
            Logger.d(TAG, "A newer surface update is requested. Previous surface update cancelled.");
        }
        ListenableFuture<Void> future = CallbackToFutureAdapter.getFuture(new C0379x9172909e(this, builder, 9));
        this.mSurfaceUpdateFuture = future;
        Futures.addCallback(future, new FutureCallback<Void>() { // from class: androidx.camera.video.VideoCapture.3
            final /* synthetic */ boolean val$isStreamActive;
            final /* synthetic */ ListenableFuture val$surfaceUpdateFuture;

            public AnonymousClass3(ListenableFuture future2, boolean z2) {
                r2 = future2;
                r3 = z2;
            }

            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public void onFailure(@NonNull Throwable th) {
                if (!(th instanceof CancellationException)) {
                    Logger.e(VideoCapture.TAG, "Surface update completed with unexpected exception", th);
                }
            }

            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public void onSuccess(@Nullable Void r3) {
                ListenableFuture<Void> listenableFuture2 = r2;
                VideoCapture videoCapture = VideoCapture.this;
                if (listenableFuture2 != videoCapture.mSurfaceUpdateFuture || videoCapture.mSourceState == VideoOutput.SourceState.INACTIVE) {
                    return;
                }
                videoCapture.setSourceState(r3 ? VideoOutput.SourceState.ACTIVE_STREAMING : VideoOutput.SourceState.ACTIVE_NON_STREAMING);
            }
        }, CameraXExecutors.mainThreadExecutor());
    }

    private boolean shouldCompensateTransformation() {
        if (this.mStreamInfo.getInProgressTransformationInfo() != null) {
            return true;
        }
        return false;
    }

    private static boolean shouldCrop(@NonNull Rect rect, @NonNull Size size) {
        if (size.getWidth() == rect.width() && size.getHeight() == rect.height()) {
            return false;
        }
        return true;
    }

    private static <T extends VideoOutput> boolean shouldEnableSurfaceProcessingByConfig(@NonNull CameraInternal cameraInternal, @NonNull VideoCaptureConfig<T> videoCaptureConfig) {
        if (cameraInternal.getHasTransform() && videoCaptureConfig.isSurfaceProcessingForceEnabled()) {
            return true;
        }
        return false;
    }

    private static boolean shouldEnableSurfaceProcessingByQuirk(@NonNull CameraInternal cameraInternal) {
        if (cameraInternal.getHasTransform() && (AbstractC1214x8a7878a2.m3959x3271d0aa(DeviceQuirks.getAll()) || AbstractC1214x8a7878a2.m3959x3271d0aa(cameraInternal.getCameraInfoInternal().getCameraQuirks()))) {
            return true;
        }
        return false;
    }

    private boolean shouldMirror(@NonNull CameraInternal cameraInternal) {
        if (cameraInternal.getHasTransform() && isMirroringRequired(cameraInternal)) {
            return true;
        }
        return false;
    }

    private void updateCustomOrderedResolutionsByQuality(@NonNull CameraInfoInternal cameraInfoInternal, @NonNull UseCaseConfig.Builder<?, ?, ?> builder) {
        boolean z;
        MediaSpec mediaSpec = getMediaSpec();
        if (mediaSpec != null) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkArgument(z, "Unable to update target resolution by null MediaSpec.");
        DynamicRange dynamicRange = getDynamicRange();
        VideoCapabilities videoCapabilities = getVideoCapabilities(cameraInfoInternal);
        List<Quality> supportedQualities = videoCapabilities.getSupportedQualities(dynamicRange);
        if (supportedQualities.isEmpty()) {
            Logger.w(TAG, "Can't find any supported quality on the device.");
            return;
        }
        VideoSpec videoSpec = mediaSpec.getVideoSpec();
        QualitySelector qualitySelector = videoSpec.getQualitySelector();
        List<Quality> prioritizedQualities = qualitySelector.getPrioritizedQualities(supportedQualities);
        Logger.d(TAG, "Found selectedQualities " + prioritizedQualities + " by " + qualitySelector);
        if (!prioritizedQualities.isEmpty()) {
            int aspectRatio = videoSpec.getAspectRatio();
            Map<Quality, Size> qualityToResolutionMap = QualitySelector.getQualityToResolutionMap(videoCapabilities, dynamicRange);
            QualityRatioToResolutionsTable qualityRatioToResolutionsTable = new QualityRatioToResolutionsTable(cameraInfoInternal.getSupportedResolutions(getImageFormat()), qualityToResolutionMap);
            ArrayList arrayList = new ArrayList();
            Iterator<Quality> it = prioritizedQualities.iterator();
            while (it.hasNext()) {
                arrayList.addAll(qualityRatioToResolutionsTable.getResolutions(it.next(), aspectRatio));
            }
            List<Size> filterOutEncoderUnsupportedResolutions = filterOutEncoderUnsupportedResolutions((VideoCaptureConfig) builder.getUseCaseConfig(), mediaSpec, dynamicRange, videoCapabilities, arrayList, qualityToResolutionMap);
            Logger.d(TAG, "Set custom ordered resolutions = " + filterOutEncoderUnsupportedResolutions);
            builder.getMutableConfig().insertOption(ImageOutputConfig.OPTION_CUSTOM_ORDERED_RESOLUTIONS, filterOutEncoderUnsupportedResolutions);
            return;
        }
        throw new IllegalArgumentException("Unable to find supported quality by QualitySelector");
    }

    @NonNull
    public static <T extends VideoOutput> VideoCapture<T> withOutput(@NonNull T t) {
        return new Builder((VideoOutput) Preconditions.checkNotNull(t)).build();
    }

    @MainThread
    public void applyStreamInfoAndStreamSpecToSessionConfigBuilder(@NonNull SessionConfig.Builder builder, @NonNull StreamInfo streamInfo, @NonNull StreamSpec streamSpec) {
        boolean z;
        DeferrableSurface deferrableSurface;
        boolean z2 = false;
        if (streamInfo.getId() == -1) {
            z = true;
        } else {
            z = false;
        }
        if (streamInfo.getStreamState() == StreamInfo.StreamState.ACTIVE) {
            z2 = true;
        }
        if (z && z2) {
            throw new IllegalStateException("Unexpected stream state, stream is error but active");
        }
        builder.clearSurfaces();
        DynamicRange dynamicRange = streamSpec.getDynamicRange();
        if (!z && (deferrableSurface = this.mDeferrableSurface) != null) {
            if (z2) {
                builder.addSurface(deferrableSurface, dynamicRange, null, -1);
            } else {
                builder.addNonRepeatingSurface(deferrableSurface, dynamicRange);
            }
        }
        setupSurfaceUpdateNotifier(builder, z2);
    }

    @Nullable
    @VisibleForTesting
    public SurfaceEdge getCameraEdge() {
        return this.mCameraEdge;
    }

    @Nullable
    @VisibleForTesting
    public Rect getCropRect() {
        return this.mCropRect;
    }

    /* JADX WARN: Type inference failed for: r4v2, types: [androidx.camera.core.impl.UseCaseConfig, androidx.camera.core.impl.UseCaseConfig<?>] */
    @Override // androidx.camera.core.UseCase
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public UseCaseConfig<?> getDefaultConfig(boolean z, @NonNull UseCaseConfigFactory useCaseConfigFactory) {
        Defaults defaults = DEFAULT_CONFIG;
        VideoCaptureConfig<?> config2 = defaults.getConfig();
        config2.getClass();
        Config config3 = useCaseConfigFactory.getConfig(AbstractC1275x4479f3e9.m4243x1378447b(config2), 1);
        if (z) {
            config3 = AbstractC0634x5c1485ac.m3230x3271d0aa(config3, defaults.getConfig());
        }
        if (config3 == null) {
            return null;
        }
        return getUseCaseConfigBuilder(config3).getUseCaseConfig();
    }

    @NonNull
    public DynamicRange getDynamicRange() {
        if (getCurrentConfig().hasDynamicRange()) {
            return getCurrentConfig().getDynamicRange();
        }
        return Defaults.DEFAULT_DYNAMIC_RANGE;
    }

    public int getMirrorMode() {
        int mirrorModeInternal = getMirrorModeInternal();
        if (mirrorModeInternal == -1) {
            return 0;
        }
        return mirrorModeInternal;
    }

    @Nullable
    @VisibleForTesting
    public SurfaceProcessorNode getNode() {
        return this.mNode;
    }

    @NonNull
    public T getOutput() {
        return (T) ((VideoCaptureConfig) getCurrentConfig()).getVideoOutput();
    }

    @VisibleForTesting
    public int getRotationDegrees() {
        return this.mRotationDegrees;
    }

    @Override // androidx.camera.core.UseCase
    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public Set<Integer> getSupportedEffectTargets() {
        HashSet hashSet = new HashSet();
        hashSet.add(2);
        return hashSet;
    }

    @NonNull
    @VisibleForTesting
    public SurfaceRequest getSurfaceRequest() {
        SurfaceRequest surfaceRequest = this.mSurfaceRequest;
        Objects.requireNonNull(surfaceRequest);
        return surfaceRequest;
    }

    @NonNull
    public Range<Integer> getTargetFrameRate() {
        return getTargetFrameRateInternal();
    }

    public int getTargetRotation() {
        return getTargetRotationInternal();
    }

    @Override // androidx.camera.core.UseCase
    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public UseCaseConfig.Builder<?, ?, ?> getUseCaseConfigBuilder(@NonNull Config config2) {
        return Builder.fromConfig(config2);
    }

    public boolean isStreamIdChanged(int i, int i2) {
        Set<Integer> set = StreamInfo.NON_SURFACE_STREAM_ID;
        if (!set.contains(Integer.valueOf(i)) && !set.contains(Integer.valueOf(i2)) && i != i2) {
            return true;
        }
        return false;
    }

    public boolean isVideoStabilizationEnabled() {
        if (getCurrentConfig().getVideoStabilizationMode() == 2) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [androidx.camera.core.impl.UseCaseConfig, androidx.camera.core.impl.UseCaseConfig<?>] */
    @Override // androidx.camera.core.UseCase
    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public UseCaseConfig<?> onMergeConfig(@NonNull CameraInfoInternal cameraInfoInternal, @NonNull UseCaseConfig.Builder<?, ?, ?> builder) {
        updateCustomOrderedResolutionsByQuality(cameraInfoInternal, builder);
        return builder.getUseCaseConfig();
    }

    @Override // androidx.camera.core.UseCase
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void onStateAttached() {
        super.onStateAttached();
        Logger.d(TAG, "VideoCapture#onStateAttached: cameraID = " + getCameraId());
        if (getAttachedStreamSpec() != null && this.mSurfaceRequest == null) {
            StreamSpec streamSpec = (StreamSpec) Preconditions.checkNotNull(getAttachedStreamSpec());
            this.mStreamInfo = (StreamInfo) fetchObservableValue(getOutput().getStreamInfo(), StreamInfo.STREAM_INFO_ANY_INACTIVE);
            SessionConfig.Builder createPipeline = createPipeline((VideoCaptureConfig) getCurrentConfig(), streamSpec);
            this.mSessionConfigBuilder = createPipeline;
            applyStreamInfoAndStreamSpecToSessionConfigBuilder(createPipeline, this.mStreamInfo, streamSpec);
            Object[] objArr = {this.mSessionConfigBuilder.build()};
            ArrayList arrayList = new ArrayList(1);
            Object obj = objArr[0];
            Objects.requireNonNull(obj);
            arrayList.add(obj);
            updateSessionConfig(DesugarCollections.unmodifiableList(arrayList));
            notifyActive();
            getOutput().getStreamInfo().addObserver(CameraXExecutors.mainThreadExecutor(), this.mStreamInfoObserver);
            SourceStreamRequirementObserver sourceStreamRequirementObserver = this.mSourceStreamRequirementObserver;
            if (sourceStreamRequirementObserver != null) {
                sourceStreamRequirementObserver.close();
            }
            this.mSourceStreamRequirementObserver = new SourceStreamRequirementObserver(getCameraControl());
            getOutput().isSourceStreamRequired().addObserver(CameraXExecutors.mainThreadExecutor(), this.mSourceStreamRequirementObserver);
            setSourceState(VideoOutput.SourceState.ACTIVE_NON_STREAMING);
        }
    }

    @Override // androidx.camera.core.UseCase
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void onStateDetached() {
        Logger.d(TAG, "VideoCapture#onStateDetached");
        Preconditions.checkState(Threads.isMainThread(), "VideoCapture can only be detached on the main thread.");
        if (this.mSourceStreamRequirementObserver != null) {
            getOutput().isSourceStreamRequired().removeObserver(this.mSourceStreamRequirementObserver);
            this.mSourceStreamRequirementObserver.close();
            this.mSourceStreamRequirementObserver = null;
        }
        setSourceState(VideoOutput.SourceState.INACTIVE);
        getOutput().getStreamInfo().removeObserver(this.mStreamInfoObserver);
        ListenableFuture<Void> listenableFuture = this.mSurfaceUpdateFuture;
        if (listenableFuture != null && listenableFuture.cancel(false)) {
            Logger.d(TAG, "VideoCapture is detached from the camera. Surface update cancelled.");
        }
        clearPipeline();
    }

    @Override // androidx.camera.core.UseCase
    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public StreamSpec onSuggestedStreamSpecImplementationOptionsUpdated(@NonNull Config config2) {
        this.mSessionConfigBuilder.addImplementationOptions(config2);
        Object[] objArr = {this.mSessionConfigBuilder.build()};
        ArrayList arrayList = new ArrayList(1);
        Object obj = objArr[0];
        Objects.requireNonNull(obj);
        arrayList.add(obj);
        updateSessionConfig(DesugarCollections.unmodifiableList(arrayList));
        StreamSpec attachedStreamSpec = getAttachedStreamSpec();
        Objects.requireNonNull(attachedStreamSpec);
        return attachedStreamSpec.toBuilder().setImplementationOptions(config2).build();
    }

    @Override // androidx.camera.core.UseCase
    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public StreamSpec onSuggestedStreamSpecUpdated(@NonNull StreamSpec streamSpec, @Nullable StreamSpec streamSpec2) {
        Logger.d(TAG, "onSuggestedStreamSpecUpdated: " + streamSpec);
        VideoCaptureConfig videoCaptureConfig = (VideoCaptureConfig) getCurrentConfig();
        videoCaptureConfig.getClass();
        List m3445x1378447b = AbstractC0878x546518ba.m3445x1378447b(videoCaptureConfig, null);
        if (m3445x1378447b != null && !m3445x1378447b.contains(streamSpec.getResolution())) {
            Logger.w(TAG, "suggested resolution " + streamSpec.getResolution() + " is not in custom ordered resolutions " + m3445x1378447b);
        }
        return streamSpec;
    }

    @MainThread
    public void resetPipeline() {
        if (getCamera() == null) {
            return;
        }
        clearPipeline();
        SessionConfig.Builder createPipeline = createPipeline((VideoCaptureConfig) getCurrentConfig(), (StreamSpec) Preconditions.checkNotNull(getAttachedStreamSpec()));
        this.mSessionConfigBuilder = createPipeline;
        applyStreamInfoAndStreamSpecToSessionConfigBuilder(createPipeline, this.mStreamInfo, getAttachedStreamSpec());
        Object[] objArr = {this.mSessionConfigBuilder.build()};
        ArrayList arrayList = new ArrayList(1);
        Object obj = objArr[0];
        Objects.requireNonNull(obj);
        arrayList.add(obj);
        updateSessionConfig(DesugarCollections.unmodifiableList(arrayList));
        notifyReset();
    }

    @MainThread
    public void setSourceState(@NonNull VideoOutput.SourceState sourceState) {
        if (sourceState != this.mSourceState) {
            this.mSourceState = sourceState;
            getOutput().onSourceStateChanged(sourceState);
        }
    }

    public void setTargetRotation(int i) {
        if (setTargetRotationInternal(i)) {
            sendTransformationInfoIfReady();
        }
    }

    @Override // androidx.camera.core.UseCase
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setViewPortCropRect(@NonNull Rect rect) {
        super.setViewPortCropRect(rect);
        sendTransformationInfoIfReady();
    }

    public boolean shouldResetCompensatingTransformation(@NonNull StreamInfo streamInfo, @NonNull StreamInfo streamInfo2) {
        if (this.mHasCompensatingTransformation && streamInfo.getInProgressTransformationInfo() != null && streamInfo2.getInProgressTransformationInfo() == null) {
            return true;
        }
        return false;
    }

    @NonNull
    public String toString() {
        return "VideoCapture:" + getName();
    }
}
