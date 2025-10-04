package androidx.camera.core;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.util.Pair;
import android.util.Size;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.CaptureConfig;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.ConfigProvider;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.ImageAnalysisConfig;
import androidx.camera.core.impl.ImageInputConfig;
import androidx.camera.core.impl.ImageOutputConfig;
import androidx.camera.core.impl.ImmediateSurface;
import androidx.camera.core.impl.MutableConfig;
import androidx.camera.core.impl.MutableOptionsBundle;
import androidx.camera.core.impl.OptionsBundle;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.StreamSpec;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.UseCaseConfigFactory;
import androidx.camera.core.impl.utils.Threads;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.internal.TargetConfig;
import androidx.camera.core.internal.ThreadConfig;
import androidx.camera.core.internal.compat.quirk.OnePixelShiftQuirk;
import androidx.camera.core.internal.utils.SizeUtil;
import androidx.camera.core.resolutionselector.AspectRatioStrategy;
import androidx.camera.core.resolutionselector.ResolutionSelector;
import androidx.camera.core.resolutionselector.ResolutionStrategy;
import androidx.core.util.Preconditions;
import defpackage.AbstractC0634x5c1485ac;
import defpackage.AbstractC0878x546518ba;
import defpackage.AbstractC1231x78f434de;
import defpackage.AbstractC1275x4479f3e9;
import defpackage.C0419x35cc9f53;
import defpackage.C0871x6413f5c1;
import defpackage.RunnableC0371x742e2fda;
import j$.util.DesugarCollections;
import j$.util.Objects;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class ImageAnalysis extends UseCase {
    public static final int COORDINATE_SYSTEM_ORIGINAL = 0;
    public static final int COORDINATE_SYSTEM_SENSOR = 2;
    public static final int COORDINATE_SYSTEM_VIEW_REFERENCED = 1;
    private static final int DEFAULT_BACKPRESSURE_STRATEGY = 0;
    private static final int DEFAULT_IMAGE_QUEUE_DEPTH = 6;
    private static final int DEFAULT_OUTPUT_IMAGE_FORMAT = 1;
    private static final boolean DEFAULT_OUTPUT_IMAGE_ROTATION_ENABLED = false;
    private static final int NON_BLOCKING_IMAGE_DEPTH = 4;
    public static final int OUTPUT_IMAGE_FORMAT_RGBA_8888 = 2;
    public static final int OUTPUT_IMAGE_FORMAT_YUV_420_888 = 1;
    public static final int STRATEGY_BLOCK_PRODUCER = 1;
    public static final int STRATEGY_KEEP_ONLY_LATEST = 0;
    private static final String TAG = "ImageAnalysis";
    private final Object mAnalysisLock;

    @Nullable
    private SessionConfig.CloseableErrorListener mCloseableErrorListener;

    @Nullable
    private DeferrableSurface mDeferrableSurface;
    final ImageAnalysisAbstractAnalyzer mImageAnalysisAbstractAnalyzer;
    SessionConfig.Builder mSessionConfigBuilder;

    @GuardedBy("mAnalysisLock")
    private Analyzer mSubscribedAnalyzer;

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static final Defaults DEFAULT_CONFIG = new Defaults();
    private static final Boolean DEFAULT_ONE_PIXEL_SHIFT_ENABLED = null;

    /* loaded from: classes.dex */
    public interface Analyzer {
        void analyze(@NonNull ImageProxy imageProxy);

        @Nullable
        Size getDefaultTargetResolution();

        int getTargetCoordinateSystem();

        void updateTransform(@Nullable Matrix matrix);
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes.dex */
    public @interface BackpressureStrategy {
    }

    /* loaded from: classes.dex */
    public static final class Builder implements ImageOutputConfig.Builder<Builder>, ThreadConfig.Builder<Builder>, UseCaseConfig.Builder<ImageAnalysis, ImageAnalysisConfig, Builder>, ImageInputConfig.Builder<Builder> {
        private final MutableOptionsBundle mMutableConfig;

        public Builder() {
            this(MutableOptionsBundle.create());
        }

        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public static Builder fromConfig(@NonNull Config config2) {
            return new Builder(MutableOptionsBundle.from(config2));
        }

        @Override // androidx.camera.core.ExtendableBuilder
        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public MutableConfig getMutableConfig() {
            return this.mMutableConfig;
        }

        @NonNull
        public Builder setBackpressureStrategy(int i) {
            getMutableConfig().insertOption(ImageAnalysisConfig.OPTION_BACKPRESSURE_STRATEGY, Integer.valueOf(i));
            return this;
        }

        @Override // androidx.camera.core.impl.ImageOutputConfig.Builder
        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public /* bridge */ /* synthetic */ Builder setCustomOrderedResolutions(@NonNull List list) {
            return setCustomOrderedResolutions((List<Size>) list);
        }

        @NonNull
        public Builder setImageQueueDepth(int i) {
            getMutableConfig().insertOption(ImageAnalysisConfig.OPTION_IMAGE_QUEUE_DEPTH, Integer.valueOf(i));
            return this;
        }

        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public Builder setImageReaderProxyProvider(@NonNull ImageReaderProxyProvider imageReaderProxyProvider) {
            getMutableConfig().insertOption(ImageAnalysisConfig.OPTION_IMAGE_READER_PROXY_PROVIDER, imageReaderProxyProvider);
            return this;
        }

        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public Builder setOnePixelShiftEnabled(boolean z) {
            getMutableConfig().insertOption(ImageAnalysisConfig.OPTION_ONE_PIXEL_SHIFT_ENABLED, Boolean.valueOf(z));
            return this;
        }

        @NonNull
        public Builder setOutputImageFormat(int i) {
            getMutableConfig().insertOption(ImageAnalysisConfig.OPTION_OUTPUT_IMAGE_FORMAT, Integer.valueOf(i));
            return this;
        }

        @NonNull
        @RequiresApi(23)
        public Builder setOutputImageRotationEnabled(boolean z) {
            getMutableConfig().insertOption(ImageAnalysisConfig.OPTION_OUTPUT_IMAGE_ROTATION_ENABLED, Boolean.valueOf(z));
            return this;
        }

        @Override // androidx.camera.core.impl.ImageOutputConfig.Builder
        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public /* bridge */ /* synthetic */ Builder setSupportedResolutions(@NonNull List list) {
            return setSupportedResolutions((List<Pair<Integer, Size[]>>) list);
        }

        @Override // androidx.camera.core.internal.TargetConfig.Builder
        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public /* bridge */ /* synthetic */ Object setTargetClass(@NonNull Class cls) {
            return setTargetClass((Class<ImageAnalysis>) cls);
        }

        private Builder(MutableOptionsBundle mutableOptionsBundle) {
            this.mMutableConfig = mutableOptionsBundle;
            Class cls = (Class) mutableOptionsBundle.retrieveOption(TargetConfig.OPTION_TARGET_CLASS, null);
            if (cls != null && !cls.equals(ImageAnalysis.class)) {
                throw new IllegalArgumentException("Invalid target class configuration for " + this + ": " + cls);
            }
            setCaptureType(UseCaseConfigFactory.CaptureType.IMAGE_ANALYSIS);
            setTargetClass(ImageAnalysis.class);
        }

        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public static Builder fromConfig(@NonNull ImageAnalysisConfig imageAnalysisConfig) {
            return new Builder(MutableOptionsBundle.from((Config) imageAnalysisConfig));
        }

        @Override // androidx.camera.core.ExtendableBuilder
        @NonNull
        public ImageAnalysis build() {
            ImageAnalysisConfig useCaseConfig = getUseCaseConfig();
            AbstractC0878x546518ba.m3461xc20437a5(useCaseConfig);
            return new ImageAnalysis(useCaseConfig);
        }

        @Override // androidx.camera.core.impl.UseCaseConfig.Builder
        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public ImageAnalysisConfig getUseCaseConfig() {
            return new ImageAnalysisConfig(OptionsBundle.from(this.mMutableConfig));
        }

        @Override // androidx.camera.core.internal.ThreadConfig.Builder
        @NonNull
        public Builder setBackgroundExecutor(@NonNull Executor executor) {
            getMutableConfig().insertOption(ThreadConfig.OPTION_BACKGROUND_EXECUTOR, executor);
            return this;
        }

        @Override // androidx.camera.core.impl.UseCaseConfig.Builder
        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public Builder setCaptureOptionUnpacker(@NonNull CaptureConfig.OptionUnpacker optionUnpacker) {
            getMutableConfig().insertOption(UseCaseConfig.OPTION_CAPTURE_CONFIG_UNPACKER, optionUnpacker);
            return this;
        }

        @Override // androidx.camera.core.impl.UseCaseConfig.Builder
        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public Builder setCaptureType(@NonNull UseCaseConfigFactory.CaptureType captureType) {
            getMutableConfig().insertOption(UseCaseConfig.OPTION_CAPTURE_TYPE, captureType);
            return this;
        }

        @Override // androidx.camera.core.impl.ImageOutputConfig.Builder
        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public Builder setCustomOrderedResolutions(@NonNull List<Size> list) {
            getMutableConfig().insertOption(ImageOutputConfig.OPTION_CUSTOM_ORDERED_RESOLUTIONS, list);
            return this;
        }

        @Override // androidx.camera.core.impl.UseCaseConfig.Builder
        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public Builder setDefaultCaptureConfig(@NonNull CaptureConfig captureConfig) {
            getMutableConfig().insertOption(UseCaseConfig.OPTION_DEFAULT_CAPTURE_CONFIG, captureConfig);
            return this;
        }

        @Override // androidx.camera.core.impl.ImageOutputConfig.Builder
        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public Builder setDefaultResolution(@NonNull Size size) {
            getMutableConfig().insertOption(ImageOutputConfig.OPTION_DEFAULT_RESOLUTION, size);
            return this;
        }

        @Override // androidx.camera.core.impl.UseCaseConfig.Builder
        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public Builder setDefaultSessionConfig(@NonNull SessionConfig sessionConfig) {
            getMutableConfig().insertOption(UseCaseConfig.OPTION_DEFAULT_SESSION_CONFIG, sessionConfig);
            return this;
        }

        @Override // androidx.camera.core.impl.ImageInputConfig.Builder
        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY})
        public Builder setDynamicRange(@NonNull DynamicRange dynamicRange) {
            if (Objects.equals(DynamicRange.SDR, dynamicRange)) {
                getMutableConfig().insertOption(ImageInputConfig.OPTION_INPUT_DYNAMIC_RANGE, dynamicRange);
                return this;
            }
            throw new UnsupportedOperationException("ImageAnalysis currently only supports SDR");
        }

        @Override // androidx.camera.core.impl.UseCaseConfig.Builder
        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public Builder setHighResolutionDisabled(boolean z) {
            getMutableConfig().insertOption(UseCaseConfig.OPTION_HIGH_RESOLUTION_DISABLED, Boolean.valueOf(z));
            return this;
        }

        @Override // androidx.camera.core.impl.ImageOutputConfig.Builder
        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public Builder setMaxResolution(@NonNull Size size) {
            getMutableConfig().insertOption(ImageOutputConfig.OPTION_MAX_RESOLUTION, size);
            return this;
        }

        @Override // androidx.camera.core.impl.ImageOutputConfig.Builder
        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public Builder setMirrorMode(int i) {
            throw new UnsupportedOperationException("setMirrorMode is not supported.");
        }

        @Override // androidx.camera.core.impl.ImageOutputConfig.Builder
        @NonNull
        public Builder setResolutionSelector(@NonNull ResolutionSelector resolutionSelector) {
            getMutableConfig().insertOption(ImageOutputConfig.OPTION_RESOLUTION_SELECTOR, resolutionSelector);
            return this;
        }

        @Override // androidx.camera.core.impl.UseCaseConfig.Builder
        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public Builder setSessionOptionUnpacker(@NonNull SessionConfig.OptionUnpacker optionUnpacker) {
            getMutableConfig().insertOption(UseCaseConfig.OPTION_SESSION_CONFIG_UNPACKER, optionUnpacker);
            return this;
        }

        @Override // androidx.camera.core.impl.ImageOutputConfig.Builder
        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public Builder setSupportedResolutions(@NonNull List<Pair<Integer, Size[]>> list) {
            getMutableConfig().insertOption(ImageOutputConfig.OPTION_SUPPORTED_RESOLUTIONS, list);
            return this;
        }

        @Override // androidx.camera.core.impl.UseCaseConfig.Builder
        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public Builder setSurfaceOccupancyPriority(int i) {
            getMutableConfig().insertOption(UseCaseConfig.OPTION_SURFACE_OCCUPANCY_PRIORITY, Integer.valueOf(i));
            return this;
        }

        @Override // androidx.camera.core.impl.ImageOutputConfig.Builder
        @NonNull
        @Deprecated
        public Builder setTargetAspectRatio(int i) {
            if (i == -1) {
                i = 0;
            }
            getMutableConfig().insertOption(ImageOutputConfig.OPTION_TARGET_ASPECT_RATIO, Integer.valueOf(i));
            return this;
        }

        @Override // androidx.camera.core.internal.TargetConfig.Builder
        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public Builder setTargetClass(@NonNull Class<ImageAnalysis> cls) {
            getMutableConfig().insertOption(TargetConfig.OPTION_TARGET_CLASS, cls);
            if (getMutableConfig().retrieveOption(TargetConfig.OPTION_TARGET_NAME, null) == null) {
                setTargetName(cls.getCanonicalName() + "-" + UUID.randomUUID());
            }
            return this;
        }

        @Override // androidx.camera.core.internal.TargetConfig.Builder
        @NonNull
        public Builder setTargetName(@NonNull String str) {
            getMutableConfig().insertOption(TargetConfig.OPTION_TARGET_NAME, str);
            return this;
        }

        @Override // androidx.camera.core.impl.ImageOutputConfig.Builder
        @NonNull
        @Deprecated
        public Builder setTargetResolution(@NonNull Size size) {
            getMutableConfig().insertOption(ImageOutputConfig.OPTION_TARGET_RESOLUTION, size);
            return this;
        }

        @Override // androidx.camera.core.impl.ImageOutputConfig.Builder
        @NonNull
        public Builder setTargetRotation(int i) {
            getMutableConfig().insertOption(ImageOutputConfig.OPTION_TARGET_ROTATION, Integer.valueOf(i));
            return this;
        }

        @Override // androidx.camera.core.impl.UseCaseConfig.Builder
        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public Builder setZslDisabled(boolean z) {
            getMutableConfig().insertOption(UseCaseConfig.OPTION_ZSL_DISABLED, Boolean.valueOf(z));
            return this;
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes.dex */
    public static final class Defaults implements ConfigProvider<ImageAnalysisConfig> {
        private static final int DEFAULT_ASPECT_RATIO = 0;
        private static final ImageAnalysisConfig DEFAULT_CONFIG;
        private static final DynamicRange DEFAULT_DYNAMIC_RANGE;
        private static final ResolutionSelector DEFAULT_RESOLUTION_SELECTOR;
        private static final int DEFAULT_SURFACE_OCCUPANCY_PRIORITY = 1;
        private static final Size DEFAULT_TARGET_RESOLUTION;

        static {
            Size size = new Size(640, 480);
            DEFAULT_TARGET_RESOLUTION = size;
            DynamicRange dynamicRange = DynamicRange.SDR;
            DEFAULT_DYNAMIC_RANGE = dynamicRange;
            ResolutionSelector build = new ResolutionSelector.Builder().setAspectRatioStrategy(AspectRatioStrategy.RATIO_4_3_FALLBACK_AUTO_STRATEGY).setResolutionStrategy(new ResolutionStrategy(SizeUtil.RESOLUTION_VGA, 1)).build();
            DEFAULT_RESOLUTION_SELECTOR = build;
            DEFAULT_CONFIG = new Builder().setDefaultResolution(size).setSurfaceOccupancyPriority(1).setTargetAspectRatio(0).setResolutionSelector(build).setDynamicRange(dynamicRange).getUseCaseConfig();
        }

        @Override // androidx.camera.core.impl.ConfigProvider
        @NonNull
        public ImageAnalysisConfig getConfig() {
            return DEFAULT_CONFIG;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes.dex */
    public @interface OutputImageFormat {
    }

    public ImageAnalysis(@NonNull ImageAnalysisConfig imageAnalysisConfig) {
        super(imageAnalysisConfig);
        this.mAnalysisLock = new Object();
        if (((ImageAnalysisConfig) getCurrentConfig()).getBackpressureStrategy(0) == 1) {
            this.mImageAnalysisAbstractAnalyzer = new ImageAnalysisBlockingAnalyzer();
        } else {
            Executor highPriorityExecutor = CameraXExecutors.highPriorityExecutor();
            imageAnalysisConfig.getClass();
            this.mImageAnalysisAbstractAnalyzer = new ImageAnalysisNonBlockingAnalyzer(AbstractC1231x78f434de.m3975x3271d0aa(imageAnalysisConfig, highPriorityExecutor));
        }
        this.mImageAnalysisAbstractAnalyzer.setOutputImageFormat(getOutputImageFormat());
        this.mImageAnalysisAbstractAnalyzer.setOutputImageRotationEnabled(isOutputImageRotationEnabled());
    }

    private boolean isFlipWH(@NonNull CameraInternal cameraInternal) {
        if (!isOutputImageRotationEnabled() || getRelativeRotation(cameraInternal) % 180 == 0) {
            return false;
        }
        return true;
    }

    public static /* synthetic */ void lambda$createPipeline$1(SafeCloseImageReaderProxy safeCloseImageReaderProxy, SafeCloseImageReaderProxy safeCloseImageReaderProxy2) {
        safeCloseImageReaderProxy.safeClose();
        if (safeCloseImageReaderProxy2 != null) {
            safeCloseImageReaderProxy2.safeClose();
        }
    }

    public /* synthetic */ void lambda$createPipeline$2(SessionConfig sessionConfig, SessionConfig.SessionError sessionError) {
        if (getCamera() == null) {
            return;
        }
        clearPipeline();
        this.mImageAnalysisAbstractAnalyzer.clearCache();
        SessionConfig.Builder createPipeline = createPipeline(getCameraId(), (ImageAnalysisConfig) getCurrentConfig(), (StreamSpec) Preconditions.checkNotNull(getAttachedStreamSpec()));
        this.mSessionConfigBuilder = createPipeline;
        Object[] objArr = {createPipeline.build()};
        ArrayList arrayList = new ArrayList(1);
        Object obj = objArr[0];
        Objects.requireNonNull(obj);
        arrayList.add(obj);
        updateSessionConfig(DesugarCollections.unmodifiableList(arrayList));
        notifyReset();
    }

    public static /* synthetic */ List lambda$onMergeConfig$0(Size size, List list, int i) {
        ArrayList arrayList = new ArrayList(list);
        if (arrayList.contains(size)) {
            arrayList.remove(size);
            arrayList.add(0, size);
        }
        return arrayList;
    }

    private void tryUpdateRelativeRotation() {
        CameraInternal camera = getCamera();
        if (camera != null) {
            this.mImageAnalysisAbstractAnalyzer.setRelativeRotation(getRelativeRotation(camera));
        }
    }

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫 */
    public static /* synthetic */ void m196x3271d0aa(SafeCloseImageReaderProxy safeCloseImageReaderProxy, SafeCloseImageReaderProxy safeCloseImageReaderProxy2) {
        lambda$createPipeline$1(safeCloseImageReaderProxy, safeCloseImageReaderProxy2);
    }

    public void clearAnalyzer() {
        synchronized (this.mAnalysisLock) {
            try {
                this.mImageAnalysisAbstractAnalyzer.setAnalyzer(null, null);
                if (this.mSubscribedAnalyzer != null) {
                    notifyInactive();
                }
                this.mSubscribedAnalyzer = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void clearPipeline() {
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
    }

    public SessionConfig.Builder createPipeline(@NonNull String str, @NonNull ImageAnalysisConfig imageAnalysisConfig, @NonNull StreamSpec streamSpec) {
        int i;
        SafeCloseImageReaderProxy safeCloseImageReaderProxy;
        boolean z;
        int width;
        int height;
        int i2;
        boolean z2;
        SafeCloseImageReaderProxy safeCloseImageReaderProxy2;
        Threads.checkMainThread();
        Size resolution = streamSpec.getResolution();
        Executor highPriorityExecutor = CameraXExecutors.highPriorityExecutor();
        imageAnalysisConfig.getClass();
        Executor executor = (Executor) Preconditions.checkNotNull(AbstractC1231x78f434de.m3975x3271d0aa(imageAnalysisConfig, highPriorityExecutor));
        boolean z3 = true;
        if (getBackpressureStrategy() == 1) {
            i = getImageQueueDepth();
        } else {
            i = 4;
        }
        if (imageAnalysisConfig.getImageReaderProxyProvider() != null) {
            safeCloseImageReaderProxy = new SafeCloseImageReaderProxy(imageAnalysisConfig.getImageReaderProxyProvider().newInstance(resolution.getWidth(), resolution.getHeight(), getImageFormat(), i, 0L));
        } else {
            safeCloseImageReaderProxy = new SafeCloseImageReaderProxy(ImageReaderProxys.createIsolatedReader(resolution.getWidth(), resolution.getHeight(), getImageFormat(), i));
        }
        if (getCamera() != null) {
            z = isFlipWH(getCamera());
        } else {
            z = false;
        }
        if (z) {
            width = resolution.getHeight();
        } else {
            width = resolution.getWidth();
        }
        if (z) {
            height = resolution.getWidth();
        } else {
            height = resolution.getHeight();
        }
        if (getOutputImageFormat() == 2) {
            i2 = 1;
        } else {
            i2 = 35;
        }
        if (getImageFormat() == 35 && getOutputImageFormat() == 2) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (getImageFormat() != 35 || ((getCamera() == null || getRelativeRotation(getCamera()) == 0) && !Boolean.TRUE.equals(getOnePixelShiftEnabled()))) {
            z3 = false;
        }
        if (!z2 && !z3) {
            safeCloseImageReaderProxy2 = null;
        } else {
            safeCloseImageReaderProxy2 = new SafeCloseImageReaderProxy(ImageReaderProxys.createIsolatedReader(width, height, i2, safeCloseImageReaderProxy.getMaxImages()));
        }
        if (safeCloseImageReaderProxy2 != null) {
            this.mImageAnalysisAbstractAnalyzer.setProcessedImageReaderProxy(safeCloseImageReaderProxy2);
        }
        tryUpdateRelativeRotation();
        safeCloseImageReaderProxy.setOnImageAvailableListener(this.mImageAnalysisAbstractAnalyzer, executor);
        SessionConfig.Builder createFrom = SessionConfig.Builder.createFrom(imageAnalysisConfig, streamSpec.getResolution());
        if (streamSpec.getImplementationOptions() != null) {
            createFrom.addImplementationOptions(streamSpec.getImplementationOptions());
        }
        DeferrableSurface deferrableSurface = this.mDeferrableSurface;
        if (deferrableSurface != null) {
            deferrableSurface.close();
        }
        ImmediateSurface immediateSurface = new ImmediateSurface(safeCloseImageReaderProxy.getSurface(), resolution, getImageFormat());
        this.mDeferrableSurface = immediateSurface;
        immediateSurface.getTerminationFuture().addListener(new RunnableC0371x742e2fda(safeCloseImageReaderProxy, safeCloseImageReaderProxy2, 28), CameraXExecutors.mainThreadExecutor());
        createFrom.setExpectedFrameRateRange(streamSpec.getExpectedFrameRateRange());
        createFrom.addSurface(this.mDeferrableSurface, streamSpec.getDynamicRange(), null, -1);
        SessionConfig.CloseableErrorListener closeableErrorListener = this.mCloseableErrorListener;
        if (closeableErrorListener != null) {
            closeableErrorListener.close();
        }
        SessionConfig.CloseableErrorListener closeableErrorListener2 = new SessionConfig.CloseableErrorListener(new C0871x6413f5c1(this, 0));
        this.mCloseableErrorListener = closeableErrorListener2;
        createFrom.setErrorListener(closeableErrorListener2);
        return createFrom;
    }

    @Nullable
    @ExperimentalUseCaseApi
    public Executor getBackgroundExecutor() {
        ImageAnalysisConfig imageAnalysisConfig = (ImageAnalysisConfig) getCurrentConfig();
        imageAnalysisConfig.getClass();
        return AbstractC1231x78f434de.m3975x3271d0aa(imageAnalysisConfig, null);
    }

    public int getBackpressureStrategy() {
        return ((ImageAnalysisConfig) getCurrentConfig()).getBackpressureStrategy(0);
    }

    /* JADX WARN: Type inference failed for: r4v2, types: [androidx.camera.core.impl.UseCaseConfig, androidx.camera.core.impl.UseCaseConfig<?>] */
    @Override // androidx.camera.core.UseCase
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public UseCaseConfig<?> getDefaultConfig(boolean z, @NonNull UseCaseConfigFactory useCaseConfigFactory) {
        Defaults defaults = DEFAULT_CONFIG;
        ImageAnalysisConfig config2 = defaults.getConfig();
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

    public int getImageQueueDepth() {
        return ((ImageAnalysisConfig) getCurrentConfig()).getImageQueueDepth(6);
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public Boolean getOnePixelShiftEnabled() {
        return ((ImageAnalysisConfig) getCurrentConfig()).getOnePixelShiftEnabled(DEFAULT_ONE_PIXEL_SHIFT_ENABLED);
    }

    public int getOutputImageFormat() {
        return ((ImageAnalysisConfig) getCurrentConfig()).getOutputImageFormat(1);
    }

    @Nullable
    public ResolutionInfo getResolutionInfo() {
        return getResolutionInfoInternal();
    }

    @Nullable
    public ResolutionSelector getResolutionSelector() {
        return ((ImageOutputConfig) getCurrentConfig()).getResolutionSelector(null);
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

    public boolean isOutputImageRotationEnabled() {
        return ((ImageAnalysisConfig) getCurrentConfig()).isOutputImageRotationEnabled(Boolean.FALSE).booleanValue();
    }

    @Override // androidx.camera.core.UseCase
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void onBind() {
        this.mImageAnalysisAbstractAnalyzer.attach();
    }

    /* JADX WARN: Type inference failed for: r6v16, types: [androidx.camera.core.impl.UseCaseConfig, androidx.camera.core.impl.UseCaseConfig<?>] */
    /* JADX WARN: Type inference failed for: r6v4, types: [androidx.camera.core.impl.ReadableConfig, androidx.camera.core.impl.UseCaseConfig] */
    /* JADX WARN: Type inference failed for: r6v6, types: [androidx.camera.core.impl.ReadableConfig, androidx.camera.core.impl.UseCaseConfig] */
    /* JADX WARN: Type inference failed for: r6v8, types: [androidx.camera.core.impl.UseCaseConfig, androidx.camera.core.impl.UseCaseConfig<?>] */
    @Override // androidx.camera.core.UseCase
    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public UseCaseConfig<?> onMergeConfig(@NonNull CameraInfoInternal cameraInfoInternal, @NonNull UseCaseConfig.Builder<?, ?, ?> builder) {
        Size size;
        ResolutionSelector.Builder fromResolutionSelector;
        Boolean onePixelShiftEnabled = getOnePixelShiftEnabled();
        boolean contains = cameraInfoInternal.getCameraQuirks().contains(OnePixelShiftQuirk.class);
        ImageAnalysisAbstractAnalyzer imageAnalysisAbstractAnalyzer = this.mImageAnalysisAbstractAnalyzer;
        if (onePixelShiftEnabled != null) {
            contains = onePixelShiftEnabled.booleanValue();
        }
        imageAnalysisAbstractAnalyzer.setOnePixelShiftEnabled(contains);
        synchronized (this.mAnalysisLock) {
            try {
                Analyzer analyzer = this.mSubscribedAnalyzer;
                if (analyzer != null) {
                    size = analyzer.getDefaultTargetResolution();
                } else {
                    size = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (size == null) {
            return builder.getUseCaseConfig();
        }
        if (cameraInfoInternal.getSensorRotationDegrees(((Integer) builder.getMutableConfig().retrieveOption(ImageOutputConfig.OPTION_TARGET_ROTATION, 0)).intValue()) % 180 == 90) {
            size = new Size(size.getHeight(), size.getWidth());
        }
        ?? useCaseConfig = builder.getUseCaseConfig();
        Config.Option<Size> option = ImageOutputConfig.OPTION_TARGET_RESOLUTION;
        if (!useCaseConfig.containsOption(option)) {
            builder.getMutableConfig().insertOption(option, size);
        }
        ?? useCaseConfig2 = builder.getUseCaseConfig();
        Config.Option option2 = ImageOutputConfig.OPTION_RESOLUTION_SELECTOR;
        if (useCaseConfig2.containsOption(option2)) {
            ResolutionSelector resolutionSelector = (ResolutionSelector) getAppConfig().retrieveOption(option2, null);
            if (resolutionSelector == null) {
                fromResolutionSelector = new ResolutionSelector.Builder();
            } else {
                fromResolutionSelector = ResolutionSelector.Builder.fromResolutionSelector(resolutionSelector);
            }
            if (resolutionSelector == null || resolutionSelector.getResolutionStrategy() == null) {
                fromResolutionSelector.setResolutionStrategy(new ResolutionStrategy(size, 1));
            }
            if (resolutionSelector == null) {
                fromResolutionSelector.setResolutionFilter(new C0419x35cc9f53(size, 13));
            }
            builder.getMutableConfig().insertOption(option2, fromResolutionSelector.build());
        }
        return builder.getUseCaseConfig();
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
        return getAttachedStreamSpec().toBuilder().setImplementationOptions(config2).build();
    }

    @Override // androidx.camera.core.UseCase
    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public StreamSpec onSuggestedStreamSpecUpdated(@NonNull StreamSpec streamSpec, @Nullable StreamSpec streamSpec2) {
        SessionConfig.Builder createPipeline = createPipeline(getCameraId(), (ImageAnalysisConfig) getCurrentConfig(), streamSpec);
        this.mSessionConfigBuilder = createPipeline;
        Object[] objArr = {createPipeline.build()};
        ArrayList arrayList = new ArrayList(1);
        Object obj = objArr[0];
        Objects.requireNonNull(obj);
        arrayList.add(obj);
        updateSessionConfig(DesugarCollections.unmodifiableList(arrayList));
        return streamSpec;
    }

    @Override // androidx.camera.core.UseCase
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void onUnbind() {
        clearPipeline();
        this.mImageAnalysisAbstractAnalyzer.detach();
    }

    public void setAnalyzer(@NonNull Executor executor, @NonNull Analyzer analyzer) {
        synchronized (this.mAnalysisLock) {
            try {
                this.mImageAnalysisAbstractAnalyzer.setAnalyzer(executor, new C0419x35cc9f53(analyzer, 12));
                if (this.mSubscribedAnalyzer == null) {
                    notifyActive();
                }
                this.mSubscribedAnalyzer = analyzer;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.camera.core.UseCase
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setSensorToBufferTransformMatrix(@NonNull Matrix matrix) {
        super.setSensorToBufferTransformMatrix(matrix);
        this.mImageAnalysisAbstractAnalyzer.setSensorToBufferTransformMatrix(matrix);
    }

    public void setTargetRotation(int i) {
        if (setTargetRotationInternal(i)) {
            tryUpdateRelativeRotation();
        }
    }

    @Override // androidx.camera.core.UseCase
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setViewPortCropRect(@NonNull Rect rect) {
        super.setViewPortCropRect(rect);
        this.mImageAnalysisAbstractAnalyzer.setViewPortCropRect(rect);
    }

    @NonNull
    public String toString() {
        return "ImageAnalysis:" + getName();
    }
}
