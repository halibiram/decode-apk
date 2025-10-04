package androidx.camera.core;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.location.Location;
import android.net.Uri;
import android.os.Build;
import android.os.Looper;
import android.util.Pair;
import android.util.Rational;
import android.util.Size;
import androidx.annotation.GuardedBy;
import androidx.annotation.IntRange;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.OptIn;
import androidx.annotation.RestrictTo;
import androidx.annotation.UiThread;
import androidx.annotation.VisibleForTesting;
import androidx.camera.core.imagecapture.ImageCaptureControl;
import androidx.camera.core.imagecapture.ImagePipeline;
import androidx.camera.core.imagecapture.TakePictureManager;
import androidx.camera.core.imagecapture.TakePictureRequest;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.CaptureConfig;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.ConfigProvider;
import androidx.camera.core.impl.ImageCaptureConfig;
import androidx.camera.core.impl.ImageInputConfig;
import androidx.camera.core.impl.ImageOutputConfig;
import androidx.camera.core.impl.ImageReaderProxy;
import androidx.camera.core.impl.MutableConfig;
import androidx.camera.core.impl.MutableOptionsBundle;
import androidx.camera.core.impl.OptionsBundle;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.SessionProcessor;
import androidx.camera.core.impl.StreamSpec;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.UseCaseConfigFactory;
import androidx.camera.core.impl.utils.CameraOrientationUtil;
import androidx.camera.core.impl.utils.CompareSizesByArea;
import androidx.camera.core.impl.utils.Threads;
import androidx.camera.core.impl.utils.TransformUtils;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.camera.core.internal.IoConfig;
import androidx.camera.core.internal.ScreenFlashWrapper;
import androidx.camera.core.internal.SupportedOutputSizesSorter;
import androidx.camera.core.internal.TargetConfig;
import androidx.camera.core.internal.compat.quirk.SoftwareJpegEncodingPreferredQuirk;
import androidx.camera.core.internal.compat.workaround.ExifRotationAvailability;
import androidx.camera.core.internal.utils.ImageUtil;
import androidx.camera.core.resolutionselector.AspectRatioStrategy;
import androidx.camera.core.resolutionselector.ResolutionSelector;
import androidx.camera.core.resolutionselector.ResolutionStrategy;
import androidx.core.util.Preconditions;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0634x5c1485ac;
import defpackage.AbstractC0878x546518ba;
import defpackage.AbstractC1064x6e5ec593;
import defpackage.AbstractC1275x4479f3e9;
import defpackage.C0667x7214e6ee;
import defpackage.C0871x6413f5c1;
import defpackage.RunnableC0384x149e5abd;
import defpackage.RunnableC0666x99196b8a;
import j$.util.DesugarCollections;
import j$.util.Objects;
import java.io.File;
import java.io.OutputStream;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class ImageCapture extends UseCase {
    public static final int CAPTURE_MODE_MAXIMIZE_QUALITY = 0;
    public static final int CAPTURE_MODE_MINIMIZE_LATENCY = 1;

    @ExperimentalZeroShutterLag
    public static final int CAPTURE_MODE_ZERO_SHUTTER_LAG = 2;
    private static final int DEFAULT_CAPTURE_MODE = 1;
    private static final int DEFAULT_FLASH_MODE = 2;
    public static final int ERROR_CAMERA_CLOSED = 3;
    public static final int ERROR_CAPTURE_FAILED = 2;
    public static final int ERROR_FILE_IO = 1;
    public static final int ERROR_INVALID_CAMERA = 4;
    public static final int ERROR_UNKNOWN = 0;
    public static final int FLASH_MODE_AUTO = 0;
    public static final int FLASH_MODE_OFF = 2;
    public static final int FLASH_MODE_ON = 1;
    public static final int FLASH_MODE_SCREEN = 3;
    private static final int FLASH_MODE_UNKNOWN = -1;

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static final int FLASH_TYPE_ONE_SHOT_FLASH = 0;

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static final int FLASH_TYPE_USE_TORCH_AS_FLASH = 1;
    private static final byte JPEG_QUALITY_MAXIMIZE_QUALITY_MODE = 100;
    private static final byte JPEG_QUALITY_MINIMIZE_LATENCY_MODE = 95;
    private static final int MAX_IMAGES = 2;

    @ExperimentalImageCaptureOutputFormat
    public static final int OUTPUT_FORMAT_JPEG = 0;

    @ExperimentalImageCaptureOutputFormat
    public static final int OUTPUT_FORMAT_JPEG_ULTRA_HDR = 1;

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static final long SCREEN_FLASH_UI_APPLY_TIMEOUT_SECONDS = 3;
    private static final String TAG = "ImageCapture";
    private final int mCaptureMode;

    @Nullable
    private SessionConfig.CloseableErrorListener mCloseableErrorListener;
    private final ImageReaderProxy.OnImageAvailableListener mClosingListener;
    private Rational mCropAspectRatio;

    @GuardedBy("mLockedFlashMode")
    private int mFlashMode;
    private final int mFlashType;
    private final ImageCaptureControl mImageCaptureControl;

    @Nullable
    private ImagePipeline mImagePipeline;

    @GuardedBy("mLockedFlashMode")
    private final AtomicReference<Integer> mLockedFlashMode;

    @NonNull
    private ScreenFlashWrapper mScreenFlashWrapper;
    SessionConfig.Builder mSessionConfigBuilder;

    @Nullable
    private TakePictureManager mTakePictureManager;

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static final Defaults DEFAULT_CONFIG = new Defaults();
    static final ExifRotationAvailability EXIF_ROTATION_AVAILABILITY = new ExifRotationAvailability();

    /* renamed from: androidx.camera.core.ImageCapture$1 */
    /* loaded from: classes.dex */
    public class AnonymousClass1 implements ImageCaptureControl {
        public AnonymousClass1() {
        }

        @Override // androidx.camera.core.imagecapture.ImageCaptureControl
        @MainThread
        public void lockFlashMode() {
            ImageCapture.this.lockFlashMode();
        }

        @Override // androidx.camera.core.imagecapture.ImageCaptureControl
        @NonNull
        @MainThread
        public ListenableFuture<Void> submitStillCaptureRequests(@NonNull List<CaptureConfig> list) {
            return ImageCapture.this.submitStillCaptureRequest(list);
        }

        @Override // androidx.camera.core.imagecapture.ImageCaptureControl
        @MainThread
        public void unlockFlashMode() {
            ImageCapture.this.unlockFlashMode();
        }
    }

    /* loaded from: classes.dex */
    public static final class Builder implements UseCaseConfig.Builder<ImageCapture, ImageCaptureConfig, Builder>, ImageOutputConfig.Builder<Builder>, IoConfig.Builder<Builder>, ImageInputConfig.Builder<Builder> {
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
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public Builder setBufferFormat(int i) {
            getMutableConfig().insertOption(ImageCaptureConfig.OPTION_BUFFER_FORMAT, Integer.valueOf(i));
            return this;
        }

        @NonNull
        public Builder setCaptureMode(int i) {
            getMutableConfig().insertOption(ImageCaptureConfig.OPTION_IMAGE_CAPTURE_MODE, Integer.valueOf(i));
            return this;
        }

        @Override // androidx.camera.core.impl.ImageOutputConfig.Builder
        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public /* bridge */ /* synthetic */ Builder setCustomOrderedResolutions(@NonNull List list) {
            return setCustomOrderedResolutions((List<Size>) list);
        }

        @NonNull
        public Builder setFlashMode(int i) {
            getMutableConfig().insertOption(ImageCaptureConfig.OPTION_FLASH_MODE, Integer.valueOf(i));
            return this;
        }

        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public Builder setFlashType(int i) {
            getMutableConfig().insertOption(ImageCaptureConfig.OPTION_FLASH_TYPE, Integer.valueOf(i));
            return this;
        }

        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public Builder setImageReaderProxyProvider(@NonNull ImageReaderProxyProvider imageReaderProxyProvider) {
            getMutableConfig().insertOption(ImageCaptureConfig.OPTION_IMAGE_READER_PROXY_PROVIDER, imageReaderProxyProvider);
            return this;
        }

        @NonNull
        public Builder setJpegQuality(@IntRange(from = 1, to = 100) int i) {
            Preconditions.checkArgumentInRange(i, 1, 100, "jpegQuality");
            getMutableConfig().insertOption(ImageCaptureConfig.OPTION_JPEG_COMPRESSION_QUALITY, Integer.valueOf(i));
            return this;
        }

        @NonNull
        @ExperimentalImageCaptureOutputFormat
        public Builder setOutputFormat(int i) {
            getMutableConfig().insertOption(ImageCaptureConfig.OPTION_OUTPUT_FORMAT, Integer.valueOf(i));
            return this;
        }

        @NonNull
        public Builder setPostviewEnabled(boolean z) {
            getMutableConfig().insertOption(ImageCaptureConfig.OPTION_POSTVIEW_ENABLED, Boolean.valueOf(z));
            return this;
        }

        @NonNull
        public Builder setPostviewResolutionSelector(@NonNull ResolutionSelector resolutionSelector) {
            getMutableConfig().insertOption(ImageCaptureConfig.OPTION_POSTVIEW_RESOLUTION_SELECTOR, resolutionSelector);
            return this;
        }

        @NonNull
        public Builder setScreenFlash(@NonNull ScreenFlash screenFlash) {
            getMutableConfig().insertOption(ImageCaptureConfig.OPTION_SCREEN_FLASH, screenFlash);
            return this;
        }

        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public Builder setSoftwareJpegEncoderRequested(boolean z) {
            getMutableConfig().insertOption(ImageCaptureConfig.OPTION_USE_SOFTWARE_JPEG_ENCODER, Boolean.valueOf(z));
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
            return setTargetClass((Class<ImageCapture>) cls);
        }

        private Builder(MutableOptionsBundle mutableOptionsBundle) {
            this.mMutableConfig = mutableOptionsBundle;
            Class cls = (Class) mutableOptionsBundle.retrieveOption(TargetConfig.OPTION_TARGET_CLASS, null);
            if (cls != null && !cls.equals(ImageCapture.class)) {
                throw new IllegalArgumentException("Invalid target class configuration for " + this + ": " + cls);
            }
            setCaptureType(UseCaseConfigFactory.CaptureType.IMAGE_CAPTURE);
            setTargetClass(ImageCapture.class);
        }

        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public static Builder fromConfig(@NonNull ImageCaptureConfig imageCaptureConfig) {
            return new Builder(MutableOptionsBundle.from((Config) imageCaptureConfig));
        }

        @Override // androidx.camera.core.ExtendableBuilder
        @NonNull
        public ImageCapture build() {
            Integer num = (Integer) getMutableConfig().retrieveOption(ImageCaptureConfig.OPTION_BUFFER_FORMAT, null);
            if (num == null) {
                if (ImageCapture.isOutputFormatUltraHdr(getMutableConfig())) {
                    getMutableConfig().insertOption(ImageInputConfig.OPTION_INPUT_FORMAT, 4101);
                    getMutableConfig().insertOption(ImageInputConfig.OPTION_INPUT_DYNAMIC_RANGE, DynamicRange.UNSPECIFIED);
                } else {
                    getMutableConfig().insertOption(ImageInputConfig.OPTION_INPUT_FORMAT, 256);
                }
            } else {
                getMutableConfig().insertOption(ImageInputConfig.OPTION_INPUT_FORMAT, num);
            }
            ImageCaptureConfig useCaseConfig = getUseCaseConfig();
            AbstractC0878x546518ba.m3461xc20437a5(useCaseConfig);
            ImageCapture imageCapture = new ImageCapture(useCaseConfig);
            Size size = (Size) getMutableConfig().retrieveOption(ImageOutputConfig.OPTION_TARGET_RESOLUTION, null);
            if (size != null) {
                imageCapture.setCropAspectRatio(new Rational(size.getWidth(), size.getHeight()));
            }
            Preconditions.checkNotNull((Executor) getMutableConfig().retrieveOption(IoConfig.OPTION_IO_EXECUTOR, CameraXExecutors.ioExecutor()), "The IO executor can't be null");
            MutableConfig mutableConfig = getMutableConfig();
            Config.Option<Integer> option = ImageCaptureConfig.OPTION_FLASH_MODE;
            if (mutableConfig.containsOption(option)) {
                Integer num2 = (Integer) getMutableConfig().retrieveOption(option);
                if (num2 != null && (num2.intValue() == 0 || num2.intValue() == 1 || num2.intValue() == 3 || num2.intValue() == 2)) {
                    if (num2.intValue() == 3 && getMutableConfig().retrieveOption(ImageCaptureConfig.OPTION_SCREEN_FLASH, null) == null) {
                        throw new IllegalArgumentException("The flash mode is not allowed to set to FLASH_MODE_SCREEN without setting ScreenFlash");
                    }
                } else {
                    throw new IllegalArgumentException("The flash mode is not allowed to set: " + num2);
                }
            }
            return imageCapture;
        }

        @Override // androidx.camera.core.impl.UseCaseConfig.Builder
        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public ImageCaptureConfig getUseCaseConfig() {
            return new ImageCaptureConfig(OptionsBundle.from(this.mMutableConfig));
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
            getMutableConfig().insertOption(ImageInputConfig.OPTION_INPUT_DYNAMIC_RANGE, dynamicRange);
            return this;
        }

        @Override // androidx.camera.core.impl.UseCaseConfig.Builder
        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public Builder setHighResolutionDisabled(boolean z) {
            getMutableConfig().insertOption(UseCaseConfig.OPTION_HIGH_RESOLUTION_DISABLED, Boolean.valueOf(z));
            return this;
        }

        @Override // androidx.camera.core.internal.IoConfig.Builder
        @NonNull
        public Builder setIoExecutor(@NonNull Executor executor) {
            getMutableConfig().insertOption(IoConfig.OPTION_IO_EXECUTOR, executor);
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
        public Builder setTargetClass(@NonNull Class<ImageCapture> cls) {
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

    @OptIn(markerClass = {ExperimentalZeroShutterLag.class})
    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes.dex */
    public @interface CaptureMode {
    }

    @OptIn(markerClass = {ExperimentalImageCaptureOutputFormat.class})
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes.dex */
    public static final class Defaults implements ConfigProvider<ImageCaptureConfig> {
        private static final int DEFAULT_ASPECT_RATIO = 0;
        private static final ImageCaptureConfig DEFAULT_CONFIG;
        private static final DynamicRange DEFAULT_DYNAMIC_RANGE;
        private static final int DEFAULT_OUTPUT_FORMAT = 0;
        private static final ResolutionSelector DEFAULT_RESOLUTION_SELECTOR;
        private static final int DEFAULT_SURFACE_OCCUPANCY_PRIORITY = 4;

        static {
            ResolutionSelector build = new ResolutionSelector.Builder().setAspectRatioStrategy(AspectRatioStrategy.RATIO_4_3_FALLBACK_AUTO_STRATEGY).setResolutionStrategy(ResolutionStrategy.HIGHEST_AVAILABLE_STRATEGY).build();
            DEFAULT_RESOLUTION_SELECTOR = build;
            DynamicRange dynamicRange = DynamicRange.SDR;
            DEFAULT_DYNAMIC_RANGE = dynamicRange;
            DEFAULT_CONFIG = new Builder().setSurfaceOccupancyPriority(4).setTargetAspectRatio(0).setResolutionSelector(build).setOutputFormat(0).setDynamicRange(dynamicRange).getUseCaseConfig();
        }

        @Override // androidx.camera.core.impl.ConfigProvider
        @NonNull
        public ImageCaptureConfig getConfig() {
            return DEFAULT_CONFIG;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes.dex */
    public @interface FlashMode {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes.dex */
    public @interface FlashType {
    }

    /* loaded from: classes.dex */
    public static class ImageCaptureCapabilitiesImpl implements ImageCaptureCapabilities {
        private final CameraInfo mCameraInfo;

        public ImageCaptureCapabilitiesImpl(@NonNull CameraInfo cameraInfo) {
            this.mCameraInfo = cameraInfo;
        }

        private boolean isUltraHdrSupported() {
            CameraInfo cameraInfo = this.mCameraInfo;
            if (cameraInfo instanceof CameraInfoInternal) {
                return ((CameraInfoInternal) cameraInfo).getSupportedOutputFormats().contains(4101);
            }
            return false;
        }

        @Override // androidx.camera.core.ImageCaptureCapabilities
        @NonNull
        @ExperimentalImageCaptureOutputFormat
        public Set<Integer> getSupportedOutputFormats() {
            HashSet hashSet = new HashSet();
            hashSet.add(0);
            if (isUltraHdrSupported()) {
                hashSet.add(1);
            }
            return hashSet;
        }

        @Override // androidx.camera.core.ImageCaptureCapabilities
        public boolean isCaptureProcessProgressSupported() {
            CameraInfo cameraInfo = this.mCameraInfo;
            if (cameraInfo instanceof CameraInfoInternal) {
                return ((CameraInfoInternal) cameraInfo).isCaptureProcessProgressSupported();
            }
            return false;
        }

        @Override // androidx.camera.core.ImageCaptureCapabilities
        public boolean isPostviewSupported() {
            CameraInfo cameraInfo = this.mCameraInfo;
            if (cameraInfo instanceof CameraInfoInternal) {
                return ((CameraInfoInternal) cameraInfo).isPostviewSupported();
            }
            return false;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes.dex */
    public @interface ImageCaptureError {
    }

    /* loaded from: classes.dex */
    public static final class Metadata {
        private boolean mIsReversedHorizontal;
        private boolean mIsReversedHorizontalSet = false;
        private boolean mIsReversedVertical;

        @Nullable
        private Location mLocation;

        @Nullable
        public Location getLocation() {
            return this.mLocation;
        }

        public boolean isReversedHorizontal() {
            return this.mIsReversedHorizontal;
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public boolean isReversedHorizontalSet() {
            return this.mIsReversedHorizontalSet;
        }

        public boolean isReversedVertical() {
            return this.mIsReversedVertical;
        }

        public void setLocation(@Nullable Location location) {
            this.mLocation = location;
        }

        public void setReversedHorizontal(boolean z) {
            this.mIsReversedHorizontal = z;
            this.mIsReversedHorizontalSet = true;
        }

        public void setReversedVertical(boolean z) {
            this.mIsReversedVertical = z;
        }

        @NonNull
        public String toString() {
            return "Metadata{mIsReversedHorizontal=" + this.mIsReversedHorizontal + ", mIsReversedVertical=" + this.mIsReversedVertical + ", mLocation=" + this.mLocation + "}";
        }
    }

    /* loaded from: classes.dex */
    public static abstract class OnImageCapturedCallback {
        public void onCaptureProcessProgressed(int i) {
        }

        public void onCaptureStarted() {
        }

        public void onCaptureSuccess(@NonNull ImageProxy imageProxy) {
        }

        public void onError(@NonNull ImageCaptureException imageCaptureException) {
        }

        public void onPostviewBitmapAvailable(@NonNull Bitmap bitmap) {
        }
    }

    /* loaded from: classes.dex */
    public interface OnImageSavedCallback {
        void onCaptureProcessProgressed(int i);

        void onCaptureStarted();

        void onError(@NonNull ImageCaptureException imageCaptureException);

        void onImageSaved(@NonNull OutputFileResults outputFileResults);

        void onPostviewBitmapAvailable(@NonNull Bitmap bitmap);
    }

    /* loaded from: classes.dex */
    public static final class OutputFileOptions {

        @Nullable
        private final ContentResolver mContentResolver;

        @Nullable
        private final ContentValues mContentValues;

        @Nullable
        private final File mFile;

        @NonNull
        private final Metadata mMetadata;

        @Nullable
        private final OutputStream mOutputStream;

        @Nullable
        private final Uri mSaveCollection;

        public OutputFileOptions(@Nullable File file, @Nullable ContentResolver contentResolver, @Nullable Uri uri, @Nullable ContentValues contentValues, @Nullable OutputStream outputStream, @Nullable Metadata metadata) {
            this.mFile = file;
            this.mContentResolver = contentResolver;
            this.mSaveCollection = uri;
            this.mContentValues = contentValues;
            this.mOutputStream = outputStream;
            this.mMetadata = metadata == null ? new Metadata() : metadata;
        }

        @Nullable
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public ContentResolver getContentResolver() {
            return this.mContentResolver;
        }

        @Nullable
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public ContentValues getContentValues() {
            return this.mContentValues;
        }

        @Nullable
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public File getFile() {
            return this.mFile;
        }

        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public Metadata getMetadata() {
            return this.mMetadata;
        }

        @Nullable
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public OutputStream getOutputStream() {
            return this.mOutputStream;
        }

        @Nullable
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public Uri getSaveCollection() {
            return this.mSaveCollection;
        }

        @NonNull
        public String toString() {
            return "OutputFileOptions{mFile=" + this.mFile + ", mContentResolver=" + this.mContentResolver + ", mSaveCollection=" + this.mSaveCollection + ", mContentValues=" + this.mContentValues + ", mOutputStream=" + this.mOutputStream + ", mMetadata=" + this.mMetadata + "}";
        }

        /* loaded from: classes.dex */
        public static final class Builder {

            @Nullable
            private ContentResolver mContentResolver;

            @Nullable
            private ContentValues mContentValues;

            @Nullable
            private File mFile;

            @Nullable
            private Metadata mMetadata;

            @Nullable
            private OutputStream mOutputStream;

            @Nullable
            private Uri mSaveCollection;

            public Builder(@NonNull File file) {
                this.mFile = file;
            }

            @NonNull
            public OutputFileOptions build() {
                return new OutputFileOptions(this.mFile, this.mContentResolver, this.mSaveCollection, this.mContentValues, this.mOutputStream, this.mMetadata);
            }

            @NonNull
            public Builder setMetadata(@NonNull Metadata metadata) {
                this.mMetadata = metadata;
                return this;
            }

            public Builder(@NonNull ContentResolver contentResolver, @NonNull Uri uri, @NonNull ContentValues contentValues) {
                this.mContentResolver = contentResolver;
                this.mSaveCollection = uri;
                this.mContentValues = contentValues;
            }

            public Builder(@NonNull OutputStream outputStream) {
                this.mOutputStream = outputStream;
            }
        }
    }

    /* loaded from: classes.dex */
    public static class OutputFileResults {

        @Nullable
        private final Uri mSavedUri;

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public OutputFileResults(@Nullable Uri uri) {
            this.mSavedUri = uri;
        }

        @Nullable
        public Uri getSavedUri() {
            return this.mSavedUri;
        }
    }

    @Target({ElementType.TYPE_USE})
    @OptIn(markerClass = {ExperimentalImageCaptureOutputFormat.class})
    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes.dex */
    public @interface OutputFormat {
    }

    /* loaded from: classes.dex */
    public interface ScreenFlash {
        @UiThread
        void apply(long j, @NonNull ScreenFlashListener screenFlashListener);

        @UiThread
        void clear();
    }

    /* loaded from: classes.dex */
    public interface ScreenFlashListener {
        void onCompleted();
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [androidx.camera.core.impl.ImageReaderProxy$OnImageAvailableListener, java.lang.Object] */
    public ImageCapture(@NonNull ImageCaptureConfig imageCaptureConfig) {
        super(imageCaptureConfig);
        this.mClosingListener = new Object();
        this.mLockedFlashMode = new AtomicReference<>(null);
        this.mFlashMode = -1;
        this.mCropAspectRatio = null;
        this.mImageCaptureControl = new ImageCaptureControl() { // from class: androidx.camera.core.ImageCapture.1
            public AnonymousClass1() {
            }

            @Override // androidx.camera.core.imagecapture.ImageCaptureControl
            @MainThread
            public void lockFlashMode() {
                ImageCapture.this.lockFlashMode();
            }

            @Override // androidx.camera.core.imagecapture.ImageCaptureControl
            @NonNull
            @MainThread
            public ListenableFuture<Void> submitStillCaptureRequests(@NonNull List<CaptureConfig> list) {
                return ImageCapture.this.submitStillCaptureRequest(list);
            }

            @Override // androidx.camera.core.imagecapture.ImageCaptureControl
            @MainThread
            public void unlockFlashMode() {
                ImageCapture.this.unlockFlashMode();
            }
        };
        ImageCaptureConfig imageCaptureConfig2 = (ImageCaptureConfig) getCurrentConfig();
        Config.Option<Integer> option = ImageCaptureConfig.OPTION_IMAGE_CAPTURE_MODE;
        imageCaptureConfig2.getClass();
        if (AbstractC1064x6e5ec593.m3774xfbe0c504(imageCaptureConfig2, option)) {
            this.mCaptureMode = imageCaptureConfig2.getCaptureMode();
        } else {
            this.mCaptureMode = 1;
        }
        this.mFlashType = imageCaptureConfig2.getFlashType(0);
        this.mScreenFlashWrapper = ScreenFlashWrapper.from(imageCaptureConfig2.getScreenFlash());
    }

    @UiThread
    private void abortImageCaptureRequests() {
        this.mScreenFlashWrapper.completePendingTasks();
        TakePictureManager takePictureManager = this.mTakePictureManager;
        if (takePictureManager != null) {
            takePictureManager.abortRequests();
        }
    }

    @MainThread
    private void clearPipeline() {
        clearPipeline(false);
    }

    @NonNull
    public static Rect computeDispatchCropRect(@Nullable Rect rect, @Nullable Rational rational, int i, @NonNull Size size, int i2) {
        if (rect != null) {
            return ImageUtil.computeCropRectFromDispatchInfo(rect, i, size, i2);
        }
        if (rational != null) {
            if (i2 % 180 != 0) {
                rational = new Rational(rational.getDenominator(), rational.getNumerator());
            }
            if (ImageUtil.isAspectRatioValid(size, rational)) {
                Rect computeCropRectFromAspectRatio = ImageUtil.computeCropRectFromAspectRatio(size, rational);
                Objects.requireNonNull(computeCropRectFromAspectRatio);
                return computeCropRectFromAspectRatio;
            }
        }
        return new Rect(0, 0, size.getWidth(), size.getHeight());
    }

    @OptIn(markerClass = {ExperimentalZeroShutterLag.class})
    @MainThread
    private SessionConfig.Builder createPipeline(@NonNull String str, @NonNull ImageCaptureConfig imageCaptureConfig, @NonNull StreamSpec streamSpec) {
        Size size;
        int i;
        SessionProcessor sessionProcessor;
        List<Size> list;
        Size size2;
        Threads.checkMainThread();
        String.format("createPipeline(cameraId: %s, streamSpec: %s)", str, streamSpec);
        Size resolution = streamSpec.getResolution();
        CameraInternal camera = getCamera();
        Objects.requireNonNull(camera);
        boolean z = !camera.getHasTransform();
        if (this.mImagePipeline != null) {
            Preconditions.checkState(z);
            this.mImagePipeline.close();
        }
        int i2 = 35;
        if (((Boolean) getCurrentConfig().retrieveOption(ImageCaptureConfig.OPTION_POSTVIEW_ENABLED, Boolean.FALSE)).booleanValue() && (sessionProcessor = getSessionProcessor()) != null) {
            ResolutionSelector resolutionSelector = (ResolutionSelector) getCurrentConfig().retrieveOption(ImageCaptureConfig.OPTION_POSTVIEW_RESOLUTION_SELECTOR, null);
            Map<Integer, List<Size>> supportedPostviewSize = sessionProcessor.getSupportedPostviewSize(resolution);
            List<Size> list2 = supportedPostviewSize.get(35);
            if (list2 != null && !list2.isEmpty()) {
                list = list2;
            } else {
                i2 = 256;
                list = supportedPostviewSize.get(256);
            }
            if (list != null && !list.isEmpty()) {
                if (resolutionSelector != null) {
                    Collections.sort(list, new CompareSizesByArea(true));
                    CameraInternal camera2 = getCamera();
                    Rect sensorRect = camera2.getCameraControlInternal().getSensorRect();
                    CameraInfoInternal cameraInfoInternal = camera2.getCameraInfoInternal();
                    List<Size> sortSupportedOutputSizesByResolutionSelector = SupportedOutputSizesSorter.sortSupportedOutputSizesByResolutionSelector(resolutionSelector, list, null, getTargetRotation(), new Rational(sensorRect.width(), sensorRect.height()), cameraInfoInternal.getSensorRotationDegrees(), cameraInfoInternal.getLensFacing());
                    if (!sortSupportedOutputSizesByResolutionSelector.isEmpty()) {
                        size2 = sortSupportedOutputSizesByResolutionSelector.get(0);
                    } else {
                        throw new IllegalArgumentException("The postview ResolutionSelector cannot select a valid size for the postview.");
                    }
                } else {
                    size2 = (Size) Collections.max(list, new CompareSizesByArea());
                }
                size = size2;
                i = i2;
            } else {
                i = i2;
                size = null;
            }
        } else {
            size = null;
            i = 35;
        }
        this.mImagePipeline = new ImagePipeline(imageCaptureConfig, resolution, getEffect(), z, size, i);
        if (this.mTakePictureManager == null) {
            this.mTakePictureManager = new TakePictureManager(this.mImageCaptureControl);
        }
        this.mTakePictureManager.setImagePipeline(this.mImagePipeline);
        SessionConfig.Builder createSessionConfigBuilder = this.mImagePipeline.createSessionConfigBuilder(streamSpec.getResolution());
        if (Build.VERSION.SDK_INT >= 23 && getCaptureMode() == 2 && !streamSpec.getZslDisabled()) {
            getCameraControl().addZslConfig(createSessionConfigBuilder);
        }
        if (streamSpec.getImplementationOptions() != null) {
            createSessionConfigBuilder.addImplementationOptions(streamSpec.getImplementationOptions());
        }
        SessionConfig.CloseableErrorListener closeableErrorListener = this.mCloseableErrorListener;
        if (closeableErrorListener != null) {
            closeableErrorListener.close();
        }
        SessionConfig.CloseableErrorListener closeableErrorListener2 = new SessionConfig.CloseableErrorListener(new C0871x6413f5c1(this, 1));
        this.mCloseableErrorListener = closeableErrorListener2;
        createSessionConfigBuilder.setErrorListener(closeableErrorListener2);
        return createSessionConfigBuilder;
    }

    private int getCameraLens() {
        CameraInternal camera = getCamera();
        if (camera != null) {
            return camera.getCameraInfo().getLensFacing();
        }
        return -1;
    }

    public static int getError(Throwable th) {
        if (th instanceof CameraClosedException) {
            return 3;
        }
        if (th instanceof ImageCaptureException) {
            return ((ImageCaptureException) th).getImageCaptureError();
        }
        return 0;
    }

    @NonNull
    public static ImageCaptureCapabilities getImageCaptureCapabilities(@NonNull CameraInfo cameraInfo) {
        return new ImageCaptureCapabilitiesImpl(cameraInfo);
    }

    @IntRange(from = 1, to = 100)
    @OptIn(markerClass = {ExperimentalZeroShutterLag.class})
    private int getJpegQualityInternal() {
        ImageCaptureConfig imageCaptureConfig = (ImageCaptureConfig) getCurrentConfig();
        Config.Option<Integer> option = ImageCaptureConfig.OPTION_JPEG_COMPRESSION_QUALITY;
        imageCaptureConfig.getClass();
        if (AbstractC1064x6e5ec593.m3774xfbe0c504(imageCaptureConfig, option)) {
            return imageCaptureConfig.getJpegQuality();
        }
        int i = this.mCaptureMode;
        if (i != 0) {
            if (i != 1 && i != 2) {
                throw new IllegalStateException(AbstractC0362x4440ab85.m2935x1db10c9d(new StringBuilder("CaptureMode "), " is invalid", this.mCaptureMode));
            }
            return 95;
        }
        return 100;
    }

    @Nullable
    private SessionProcessor getSessionProcessor() {
        return getCamera().getExtendedConfig().getSessionProcessor(null);
    }

    @NonNull
    private Rect getTakePictureCropRect() {
        Rect viewPortCropRect = getViewPortCropRect();
        Size attachedSurfaceResolution = getAttachedSurfaceResolution();
        Objects.requireNonNull(attachedSurfaceResolution);
        if (viewPortCropRect != null) {
            return viewPortCropRect;
        }
        if (ImageUtil.isAspectRatioValid(this.mCropAspectRatio)) {
            CameraInternal camera = getCamera();
            Objects.requireNonNull(camera);
            int relativeRotation = getRelativeRotation(camera);
            Rational rational = new Rational(this.mCropAspectRatio.getDenominator(), this.mCropAspectRatio.getNumerator());
            if (!TransformUtils.is90or270(relativeRotation)) {
                rational = this.mCropAspectRatio;
            }
            Rect computeCropRectFromAspectRatio = ImageUtil.computeCropRectFromAspectRatio(attachedSurfaceResolution, rational);
            Objects.requireNonNull(computeCropRectFromAspectRatio);
            return computeCropRectFromAspectRatio;
        }
        return new Rect(0, 0, attachedSurfaceResolution.getWidth(), attachedSurfaceResolution.getHeight());
    }

    private static boolean isImageFormatSupported(List<Pair<Integer, Size[]>> list, int i) {
        if (list == null) {
            return false;
        }
        Iterator<Pair<Integer, Size[]>> it = list.iterator();
        while (it.hasNext()) {
            if (((Integer) it.next().first).equals(Integer.valueOf(i))) {
                return true;
            }
        }
        return false;
    }

    @OptIn(markerClass = {ExperimentalImageCaptureOutputFormat.class})
    public static boolean isOutputFormatUltraHdr(@NonNull MutableConfig mutableConfig) {
        return Objects.equals(mutableConfig.retrieveOption(ImageCaptureConfig.OPTION_OUTPUT_FORMAT, null), 1);
    }

    private boolean isSessionProcessorEnabledInCurrentCamera() {
        if (getCamera() == null || getCamera().getExtendedConfig().getSessionProcessor(null) == null) {
            return false;
        }
        return true;
    }

    public /* synthetic */ void lambda$createPipeline$3(SessionConfig sessionConfig, SessionConfig.SessionError sessionError) {
        if (getCamera() == null) {
            return;
        }
        this.mTakePictureManager.pause();
        clearPipeline(true);
        SessionConfig.Builder createPipeline = createPipeline(getCameraId(), (ImageCaptureConfig) getCurrentConfig(), (StreamSpec) Preconditions.checkNotNull(getAttachedStreamSpec()));
        this.mSessionConfigBuilder = createPipeline;
        Object[] objArr = {createPipeline.build()};
        ArrayList arrayList = new ArrayList(1);
        Object obj = objArr[0];
        Objects.requireNonNull(obj);
        arrayList.add(obj);
        updateSessionConfig(DesugarCollections.unmodifiableList(arrayList));
        notifyReset();
        this.mTakePictureManager.resume();
    }

    public static /* synthetic */ void lambda$new$0(ImageReaderProxy imageReaderProxy) {
        try {
            ImageProxy acquireLatestImage = imageReaderProxy.acquireLatestImage();
            try {
                Objects.toString(acquireLatestImage);
                if (acquireLatestImage != null) {
                    acquireLatestImage.close();
                }
            } finally {
            }
        } catch (IllegalStateException unused) {
        }
    }

    public static /* synthetic */ Void lambda$submitStillCaptureRequest$4(List list) {
        return null;
    }

    private void sendInvalidCameraError(@NonNull Executor executor, @Nullable OnImageCapturedCallback onImageCapturedCallback, @Nullable OnImageSavedCallback onImageSavedCallback) {
        ImageCaptureException imageCaptureException = new ImageCaptureException(4, "Not bound to a valid Camera [" + this + "]", null);
        if (onImageCapturedCallback != null) {
            onImageCapturedCallback.onError(imageCaptureException);
        } else {
            if (onImageSavedCallback != null) {
                onImageSavedCallback.onError(imageCaptureException);
                return;
            }
            throw new IllegalArgumentException("Must have either in-memory or on-disk callback.");
        }
    }

    private void setScreenFlashToCameraControl() {
        setScreenFlashToCameraControl(this.mScreenFlashWrapper);
    }

    @MainThread
    private void takePictureInternal(@NonNull Executor executor, @Nullable OnImageCapturedCallback onImageCapturedCallback, @Nullable OnImageSavedCallback onImageSavedCallback, @Nullable OutputFileOptions outputFileOptions) {
        Threads.checkMainThread();
        if (getFlashMode() == 3 && this.mScreenFlashWrapper.getScreenFlash() == null) {
            throw new IllegalArgumentException("ScreenFlash not set for FLASH_MODE_SCREEN");
        }
        CameraInternal camera = getCamera();
        if (camera == null) {
            sendInvalidCameraError(executor, onImageCapturedCallback, onImageSavedCallback);
            return;
        }
        TakePictureManager takePictureManager = this.mTakePictureManager;
        Objects.requireNonNull(takePictureManager);
        takePictureManager.offerRequest(TakePictureRequest.of(executor, onImageCapturedCallback, onImageSavedCallback, outputFileOptions, getTakePictureCropRect(), getSensorToBufferTransformMatrix(), getRelativeRotation(camera), getJpegQualityInternal(), getCaptureMode(), this.mSessionConfigBuilder.getSingleCameraCaptureCallbacks()));
    }

    private void trySetFlashModeToCameraControl() {
        synchronized (this.mLockedFlashMode) {
            try {
                if (this.mLockedFlashMode.get() != null) {
                    return;
                }
                getCameraControl().setFlashMode(getFlashMode());
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean enforceSoftwareJpegConstraints(@NonNull MutableConfig mutableConfig) {
        boolean z;
        Boolean bool = Boolean.TRUE;
        Config.Option<Boolean> option = ImageCaptureConfig.OPTION_USE_SOFTWARE_JPEG_ENCODER;
        Boolean bool2 = Boolean.FALSE;
        boolean z2 = false;
        if (bool.equals(mutableConfig.retrieveOption(option, bool2))) {
            if (isSessionProcessorEnabledInCurrentCamera()) {
                Logger.w(TAG, "Software JPEG cannot be used with Extensions.");
                z = false;
            } else {
                z = true;
            }
            Integer num = (Integer) mutableConfig.retrieveOption(ImageCaptureConfig.OPTION_BUFFER_FORMAT, null);
            if (num != null && num.intValue() != 256) {
                Logger.w(TAG, "Software JPEG cannot be used with non-JPEG output buffer format.");
            } else {
                z2 = z;
            }
            if (!z2) {
                Logger.w(TAG, "Unable to support software JPEG. Disabling.");
                mutableConfig.insertOption(option, bool2);
            }
        }
        return z2;
    }

    public int getCaptureMode() {
        return this.mCaptureMode;
    }

    /* JADX WARN: Type inference failed for: r4v2, types: [androidx.camera.core.impl.UseCaseConfig, androidx.camera.core.impl.UseCaseConfig<?>] */
    @Override // androidx.camera.core.UseCase
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public UseCaseConfig<?> getDefaultConfig(boolean z, @NonNull UseCaseConfigFactory useCaseConfigFactory) {
        Defaults defaults = DEFAULT_CONFIG;
        ImageCaptureConfig config2 = defaults.getConfig();
        config2.getClass();
        Config config3 = useCaseConfigFactory.getConfig(AbstractC1275x4479f3e9.m4243x1378447b(config2), getCaptureMode());
        if (z) {
            config3 = AbstractC0634x5c1485ac.m3230x3271d0aa(config3, defaults.getConfig());
        }
        if (config3 == null) {
            return null;
        }
        return getUseCaseConfigBuilder(config3).getUseCaseConfig();
    }

    public int getFlashMode() {
        int i;
        synchronized (this.mLockedFlashMode) {
            i = this.mFlashMode;
            if (i == -1) {
                i = ((ImageCaptureConfig) getCurrentConfig()).getFlashMode(2);
            }
        }
        return i;
    }

    @Nullable
    @VisibleForTesting
    public ImagePipeline getImagePipeline() {
        return this.mImagePipeline;
    }

    @IntRange(from = 1, to = 100)
    public int getJpegQuality() {
        return getJpegQualityInternal();
    }

    @ExperimentalImageCaptureOutputFormat
    public int getOutputFormat() {
        return ((Integer) Preconditions.checkNotNull((Integer) getCurrentConfig().retrieveOption(ImageCaptureConfig.OPTION_OUTPUT_FORMAT, 0))).intValue();
    }

    @Nullable
    public ResolutionSelector getPostviewResolutionSelector() {
        return (ResolutionSelector) getCurrentConfig().retrieveOption(ImageCaptureConfig.OPTION_POSTVIEW_RESOLUTION_SELECTOR, null);
    }

    @NonNull
    public ImageCaptureLatencyEstimate getRealtimeCaptureLatencyEstimate() {
        CameraInternal camera = getCamera();
        if (camera == null) {
            return ImageCaptureLatencyEstimate.UNDEFINED_IMAGE_CAPTURE_LATENCY;
        }
        Pair<Long, Long> realtimeCaptureLatency = camera.getExtendedConfig().getSessionProcessor().getRealtimeCaptureLatency();
        if (realtimeCaptureLatency == null) {
            return ImageCaptureLatencyEstimate.UNDEFINED_IMAGE_CAPTURE_LATENCY;
        }
        return new ImageCaptureLatencyEstimate(((Long) realtimeCaptureLatency.first).longValue(), ((Long) realtimeCaptureLatency.second).longValue());
    }

    @Nullable
    public ResolutionInfo getResolutionInfo() {
        return getResolutionInfoInternal();
    }

    @Override // androidx.camera.core.UseCase
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public ResolutionInfo getResolutionInfoInternal() {
        CameraInternal camera = getCamera();
        Size attachedSurfaceResolution = getAttachedSurfaceResolution();
        if (camera != null && attachedSurfaceResolution != null) {
            Rect viewPortCropRect = getViewPortCropRect();
            Rational rational = this.mCropAspectRatio;
            if (viewPortCropRect == null) {
                if (rational != null) {
                    viewPortCropRect = ImageUtil.computeCropRectFromAspectRatio(attachedSurfaceResolution, rational);
                } else {
                    viewPortCropRect = new Rect(0, 0, attachedSurfaceResolution.getWidth(), attachedSurfaceResolution.getHeight());
                }
            }
            int relativeRotation = getRelativeRotation(camera);
            Objects.requireNonNull(viewPortCropRect);
            return new ResolutionInfo(attachedSurfaceResolution, viewPortCropRect, relativeRotation);
        }
        return null;
    }

    @Nullable
    public ResolutionSelector getResolutionSelector() {
        return ((ImageOutputConfig) getCurrentConfig()).getResolutionSelector(null);
    }

    @Nullable
    public ScreenFlash getScreenFlash() {
        return this.mScreenFlashWrapper.getScreenFlash();
    }

    @Override // androidx.camera.core.UseCase
    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public Set<Integer> getSupportedEffectTargets() {
        HashSet hashSet = new HashSet();
        hashSet.add(4);
        return hashSet;
    }

    @NonNull
    @VisibleForTesting
    public TakePictureManager getTakePictureManager() {
        TakePictureManager takePictureManager = this.mTakePictureManager;
        Objects.requireNonNull(takePictureManager);
        return takePictureManager;
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

    public boolean isPostviewEnabled() {
        return ((Boolean) getCurrentConfig().retrieveOption(ImageCaptureConfig.OPTION_POSTVIEW_ENABLED, Boolean.FALSE)).booleanValue();
    }

    @VisibleForTesting
    public boolean isProcessingPipelineEnabled() {
        if (this.mImagePipeline != null && this.mTakePictureManager != null) {
            return true;
        }
        return false;
    }

    public void lockFlashMode() {
        synchronized (this.mLockedFlashMode) {
            try {
                if (this.mLockedFlashMode.get() != null) {
                    return;
                }
                this.mLockedFlashMode.set(Integer.valueOf(getFlashMode()));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.camera.core.UseCase
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void onBind() {
        Preconditions.checkNotNull(getCamera(), "Attached camera cannot be null");
        if (getFlashMode() == 3 && getCameraLens() != 0) {
            throw new IllegalArgumentException("Not a front camera despite setting FLASH_MODE_SCREEN in ImageCapture");
        }
    }

    @Override // androidx.camera.core.UseCase
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void onCameraControlReady() {
        Logger.d(TAG, "onCameraControlReady");
        trySetFlashModeToCameraControl();
        setScreenFlashToCameraControl();
    }

    /* JADX WARN: Type inference failed for: r5v15, types: [androidx.camera.core.impl.UseCaseConfig, androidx.camera.core.impl.UseCaseConfig<?>] */
    @Override // androidx.camera.core.UseCase
    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public UseCaseConfig<?> onMergeConfig(@NonNull CameraInfoInternal cameraInfoInternal, @NonNull UseCaseConfig.Builder<?, ?, ?> builder) {
        boolean z;
        if (cameraInfoInternal.getCameraQuirks().contains(SoftwareJpegEncodingPreferredQuirk.class)) {
            Boolean bool = Boolean.FALSE;
            MutableConfig mutableConfig = builder.getMutableConfig();
            Config.Option<Boolean> option = ImageCaptureConfig.OPTION_USE_SOFTWARE_JPEG_ENCODER;
            Boolean bool2 = Boolean.TRUE;
            if (bool.equals(mutableConfig.retrieveOption(option, bool2))) {
                Logger.w(TAG, "Device quirk suggests software JPEG encoder, but it has been explicitly disabled.");
            } else {
                Logger.i(TAG, "Requesting software JPEG due to device quirk.");
                builder.getMutableConfig().insertOption(option, bool2);
            }
        }
        boolean enforceSoftwareJpegConstraints = enforceSoftwareJpegConstraints(builder.getMutableConfig());
        Integer num = (Integer) builder.getMutableConfig().retrieveOption(ImageCaptureConfig.OPTION_BUFFER_FORMAT, null);
        int i = 35;
        if (num != null) {
            if (isSessionProcessorEnabledInCurrentCamera() && num.intValue() != 256) {
                z = false;
            } else {
                z = true;
            }
            Preconditions.checkArgument(z, "Cannot set non-JPEG buffer format with Extensions enabled.");
            MutableConfig mutableConfig2 = builder.getMutableConfig();
            Config.Option<Integer> option2 = ImageInputConfig.OPTION_INPUT_FORMAT;
            if (!enforceSoftwareJpegConstraints) {
                i = num.intValue();
            }
            mutableConfig2.insertOption(option2, Integer.valueOf(i));
        } else if (isOutputFormatUltraHdr(builder.getMutableConfig())) {
            builder.getMutableConfig().insertOption(ImageInputConfig.OPTION_INPUT_FORMAT, 4101);
            builder.getMutableConfig().insertOption(ImageInputConfig.OPTION_INPUT_DYNAMIC_RANGE, DynamicRange.UNSPECIFIED);
        } else if (enforceSoftwareJpegConstraints) {
            builder.getMutableConfig().insertOption(ImageInputConfig.OPTION_INPUT_FORMAT, 35);
        } else {
            List list = (List) builder.getMutableConfig().retrieveOption(ImageOutputConfig.OPTION_SUPPORTED_RESOLUTIONS, null);
            if (list == null) {
                builder.getMutableConfig().insertOption(ImageInputConfig.OPTION_INPUT_FORMAT, 256);
            } else if (isImageFormatSupported(list, 256)) {
                builder.getMutableConfig().insertOption(ImageInputConfig.OPTION_INPUT_FORMAT, 256);
            } else if (isImageFormatSupported(list, 35)) {
                builder.getMutableConfig().insertOption(ImageInputConfig.OPTION_INPUT_FORMAT, 35);
            }
        }
        return builder.getUseCaseConfig();
    }

    @Override // androidx.camera.core.UseCase
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @UiThread
    public void onStateDetached() {
        abortImageCaptureRequests();
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
        SessionConfig.Builder createPipeline = createPipeline(getCameraId(), (ImageCaptureConfig) getCurrentConfig(), streamSpec);
        this.mSessionConfigBuilder = createPipeline;
        Object[] objArr = {createPipeline.build()};
        ArrayList arrayList = new ArrayList(1);
        Object obj = objArr[0];
        Objects.requireNonNull(obj);
        arrayList.add(obj);
        updateSessionConfig(DesugarCollections.unmodifiableList(arrayList));
        notifyActive();
        return streamSpec;
    }

    @Override // androidx.camera.core.UseCase
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void onUnbind() {
        abortImageCaptureRequests();
        clearPipeline();
        setScreenFlashToCameraControl(null);
    }

    public void setCropAspectRatio(@NonNull Rational rational) {
        this.mCropAspectRatio = rational;
    }

    public void setFlashMode(int i) {
        Logger.d(TAG, "setFlashMode: flashMode = " + i);
        if (i != 0 && i != 1 && i != 2) {
            if (i == 3) {
                if (this.mScreenFlashWrapper.getScreenFlash() != null) {
                    if (getCamera() != null && getCameraLens() != 0) {
                        throw new IllegalArgumentException("Not a front camera despite setting FLASH_MODE_SCREEN");
                    }
                } else {
                    throw new IllegalArgumentException("ScreenFlash not set for FLASH_MODE_SCREEN");
                }
            } else {
                throw new IllegalArgumentException(AbstractC0362x4440ab85.m2929x9738a56c(i, "Invalid flash mode: "));
            }
        }
        synchronized (this.mLockedFlashMode) {
            this.mFlashMode = i;
            trySetFlashModeToCameraControl();
        }
    }

    public void setScreenFlash(@Nullable ScreenFlash screenFlash) {
        this.mScreenFlashWrapper = ScreenFlashWrapper.from(screenFlash);
        setScreenFlashToCameraControl();
    }

    public void setTargetRotation(int i) {
        int targetRotation = getTargetRotation();
        if (setTargetRotationInternal(i) && this.mCropAspectRatio != null) {
            this.mCropAspectRatio = ImageUtil.getRotatedAspectRatio(Math.abs(CameraOrientationUtil.surfaceRotationToDegrees(i) - CameraOrientationUtil.surfaceRotationToDegrees(targetRotation)), this.mCropAspectRatio);
        }
    }

    @MainThread
    public ListenableFuture<Void> submitStillCaptureRequest(@NonNull List<CaptureConfig> list) {
        Threads.checkMainThread();
        return Futures.transform(getCameraControl().submitStillCaptureRequests(list, this.mCaptureMode, this.mFlashType), new C0667x7214e6ee(1), CameraXExecutors.directExecutor());
    }

    /* renamed from: takePicture */
    public void lambda$takePicture$1(@NonNull Executor executor, @NonNull OnImageCapturedCallback onImageCapturedCallback) {
        if (Looper.getMainLooper() != Looper.myLooper()) {
            CameraXExecutors.mainThreadExecutor().execute(new RunnableC0384x149e5abd(this, 9, executor, onImageCapturedCallback));
        } else {
            takePictureInternal(executor, onImageCapturedCallback, null, null);
        }
    }

    @NonNull
    public String toString() {
        return "ImageCapture:" + getName();
    }

    public void unlockFlashMode() {
        synchronized (this.mLockedFlashMode) {
            try {
                Integer andSet = this.mLockedFlashMode.getAndSet(null);
                if (andSet == null) {
                    return;
                }
                if (andSet.intValue() != getFlashMode()) {
                    trySetFlashModeToCameraControl();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @MainThread
    private void clearPipeline(boolean z) {
        TakePictureManager takePictureManager;
        Threads.checkMainThread();
        SessionConfig.CloseableErrorListener closeableErrorListener = this.mCloseableErrorListener;
        if (closeableErrorListener != null) {
            closeableErrorListener.close();
            this.mCloseableErrorListener = null;
        }
        ImagePipeline imagePipeline = this.mImagePipeline;
        if (imagePipeline != null) {
            imagePipeline.close();
            this.mImagePipeline = null;
        }
        if (z || (takePictureManager = this.mTakePictureManager) == null) {
            return;
        }
        takePictureManager.abortRequests();
        this.mTakePictureManager = null;
    }

    private void setScreenFlashToCameraControl(@Nullable ScreenFlash screenFlash) {
        getCameraControl().setScreenFlash(screenFlash);
    }

    /* renamed from: takePicture */
    public void lambda$takePicture$2(@NonNull OutputFileOptions outputFileOptions, @NonNull Executor executor, @NonNull OnImageSavedCallback onImageSavedCallback) {
        if (Looper.getMainLooper() != Looper.myLooper()) {
            CameraXExecutors.mainThreadExecutor().execute(new RunnableC0666x99196b8a(2, this, outputFileOptions, executor, onImageSavedCallback));
        } else {
            takePictureInternal(executor, null, onImageSavedCallback, outputFileOptions);
        }
    }
}
