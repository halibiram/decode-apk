package androidx.camera.camera2.internal;

import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.params.StreamConfigurationMap;
import android.media.Image;
import android.media.ImageWriter;
import android.os.Build;
import android.util.Size;
import android.view.Surface;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import androidx.camera.camera2.internal.compat.CameraCharacteristicsCompat;
import androidx.camera.camera2.internal.compat.quirk.DeviceQuirks;
import androidx.camera.camera2.internal.compat.quirk.ZslDisablerQuirk;
import androidx.camera.core.ImageProxy;
import androidx.camera.core.Logger;
import androidx.camera.core.MetadataImageReader;
import androidx.camera.core.SafeCloseImageReaderProxy;
import androidx.camera.core.impl.CameraCaptureCallback;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.ImageReaderProxy;
import androidx.camera.core.impl.ImmediateSurface;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.utils.CompareSizesByArea;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.internal.compat.ImageWriterCompat;
import androidx.camera.core.internal.utils.ZslRingBuffer;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.AbstractC1040xbbbe0b3f;
import defpackage.RunnableC1044x8c43c726;
import j$.util.Objects;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.NoSuchElementException;

@RequiresApi(23)
/* loaded from: classes.dex */
public final class ZslControlImpl implements ZslControl {

    @VisibleForTesting
    static final int MAX_IMAGES = 9;

    @VisibleForTesting
    static final int RING_BUFFER_CAPACITY = 3;
    private static final String TAG = "ZslControlImpl";

    @NonNull
    private final CameraCharacteristicsCompat mCameraCharacteristicsCompat;

    @NonNull
    @VisibleForTesting
    final ZslRingBuffer mImageRingBuffer;
    private boolean mIsPrivateReprocessingSupported;
    private CameraCaptureCallback mMetadataMatchingCaptureCallback;
    private DeferrableSurface mReprocessingImageDeferrableSurface;
    SafeCloseImageReaderProxy mReprocessingImageReader;

    @Nullable
    ImageWriter mReprocessingImageWriter;
    private boolean mShouldZslDisabledByQuirks;
    private boolean mIsZslDisabledByUseCaseConfig = false;
    private boolean mIsZslDisabledByFlashMode = false;

    /* renamed from: androidx.camera.camera2.internal.ZslControlImpl$1 */
    /* loaded from: classes.dex */
    public class AnonymousClass1 extends CameraCaptureSession.StateCallback {
        public AnonymousClass1() {
        }

        @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
        public void onConfigureFailed(@NonNull CameraCaptureSession cameraCaptureSession) {
        }

        @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
        public void onConfigured(@NonNull CameraCaptureSession cameraCaptureSession) {
            Surface inputSurface;
            inputSurface = cameraCaptureSession.getInputSurface();
            if (inputSurface != null) {
                ZslControlImpl.this.mReprocessingImageWriter = ImageWriterCompat.newInstance(inputSurface, 1);
            }
        }
    }

    public ZslControlImpl(@NonNull CameraCharacteristicsCompat cameraCharacteristicsCompat) {
        this.mIsPrivateReprocessingSupported = false;
        this.mShouldZslDisabledByQuirks = false;
        this.mCameraCharacteristicsCompat = cameraCharacteristicsCompat;
        this.mIsPrivateReprocessingSupported = ZslUtil.isCapabilitySupported(cameraCharacteristicsCompat, 4);
        this.mShouldZslDisabledByQuirks = DeviceQuirks.get(ZslDisablerQuirk.class) != null;
        this.mImageRingBuffer = new ZslRingBuffer(3, new C0043x4440ab85(3));
    }

    private void cleanup() {
        ZslRingBuffer zslRingBuffer = this.mImageRingBuffer;
        while (!zslRingBuffer.isEmpty()) {
            zslRingBuffer.dequeue().close();
        }
        DeferrableSurface deferrableSurface = this.mReprocessingImageDeferrableSurface;
        if (deferrableSurface != null) {
            SafeCloseImageReaderProxy safeCloseImageReaderProxy = this.mReprocessingImageReader;
            if (safeCloseImageReaderProxy != null) {
                deferrableSurface.getTerminationFuture().addListener(new RunnableC1044x8c43c726(safeCloseImageReaderProxy, 14), CameraXExecutors.mainThreadExecutor());
                this.mReprocessingImageReader = null;
            }
            deferrableSurface.close();
            this.mReprocessingImageDeferrableSurface = null;
        }
        ImageWriter imageWriter = this.mReprocessingImageWriter;
        if (imageWriter != null) {
            imageWriter.close();
            this.mReprocessingImageWriter = null;
        }
    }

    @NonNull
    private Map<Integer, Size> createReprocessingInputSizeMap(@NonNull CameraCharacteristicsCompat cameraCharacteristicsCompat) {
        StreamConfigurationMap streamConfigurationMap;
        int[] inputFormats;
        int[] inputFormats2;
        Size[] inputSizes;
        try {
            streamConfigurationMap = (StreamConfigurationMap) cameraCharacteristicsCompat.get(CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP);
        } catch (AssertionError e) {
            Logger.e(TAG, "Failed to retrieve StreamConfigurationMap, error = " + e.getMessage());
            streamConfigurationMap = null;
        }
        if (streamConfigurationMap != null) {
            inputFormats = streamConfigurationMap.getInputFormats();
            if (inputFormats != null) {
                HashMap hashMap = new HashMap();
                inputFormats2 = streamConfigurationMap.getInputFormats();
                for (int i : inputFormats2) {
                    inputSizes = streamConfigurationMap.getInputSizes(i);
                    if (inputSizes != null) {
                        Arrays.sort(inputSizes, new CompareSizesByArea(true));
                        hashMap.put(Integer.valueOf(i), inputSizes[0]);
                    }
                }
                return hashMap;
            }
        }
        return new HashMap();
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x000c, code lost:
    
        r5 = r5.getValidOutputFormatsForInput(r6);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean isJpegValidOutputForInputFormat(@NonNull CameraCharacteristicsCompat cameraCharacteristicsCompat, int i) {
        int[] validOutputFormatsForInput;
        StreamConfigurationMap streamConfigurationMap = (StreamConfigurationMap) cameraCharacteristicsCompat.get(CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP);
        if (streamConfigurationMap == null || validOutputFormatsForInput == null) {
            return false;
        }
        for (int i2 : validOutputFormatsForInput) {
            if (i2 == 256) {
                return true;
            }
        }
        return false;
    }

    public /* synthetic */ void lambda$addZslConfig$1(ImageReaderProxy imageReaderProxy) {
        try {
            ImageProxy acquireLatestImage = imageReaderProxy.acquireLatestImage();
            if (acquireLatestImage != null) {
                this.mImageRingBuffer.enqueue(acquireLatestImage);
            }
        } catch (IllegalStateException e) {
            Logger.e(TAG, "Failed to acquire latest image IllegalStateException = " + e.getMessage());
        }
    }

    @Override // androidx.camera.camera2.internal.ZslControl
    public void addZslConfig(@NonNull SessionConfig.Builder builder) {
        cleanup();
        if (this.mIsZslDisabledByUseCaseConfig) {
            builder.setTemplateType(1);
            return;
        }
        if (this.mShouldZslDisabledByQuirks) {
            builder.setTemplateType(1);
            return;
        }
        Map<Integer, Size> createReprocessingInputSizeMap = createReprocessingInputSizeMap(this.mCameraCharacteristicsCompat);
        if (this.mIsPrivateReprocessingSupported && !createReprocessingInputSizeMap.isEmpty() && createReprocessingInputSizeMap.containsKey(34) && isJpegValidOutputForInputFormat(this.mCameraCharacteristicsCompat, 34)) {
            Size size = createReprocessingInputSizeMap.get(34);
            MetadataImageReader metadataImageReader = new MetadataImageReader(size.getWidth(), size.getHeight(), 34, 9);
            this.mMetadataMatchingCaptureCallback = metadataImageReader.getCameraCaptureCallback();
            this.mReprocessingImageReader = new SafeCloseImageReaderProxy(metadataImageReader);
            metadataImageReader.setOnImageAvailableListener(new ImageReaderProxy.OnImageAvailableListener() { // from class: androidx.camera.camera2.internal.뎻둥됴듟돴들뎽땦딨땟땡땁듌딎둥듼도땭딃든뎸뎻둔땨둡뒬됩땜땄땸둘땔딁뒘땃뎨딃둑땔된딻듸뎡뒉듸딨딁듰땬딝딸뒻둣뒝뒵딄돵땪땨뒬땲둔딎뒐딌뒐땟땧뒵땧땪땳딜딞듬돛땣돼딻딐듐된된딌들땻되둑듻뒼땀돰뒨됴딁뒬땅뎰딎뎻딜득딐땝뒋뒙뒝뎸둘딐뎽둣뒼땵뎠돵딌돨돸돨딻땤딌뎹들땟뒀됫듰듔
                @Override // androidx.camera.core.impl.ImageReaderProxy.OnImageAvailableListener
                public final void onImageAvailable(ImageReaderProxy imageReaderProxy) {
                    ZslControlImpl.this.lambda$addZslConfig$1(imageReaderProxy);
                }
            }, CameraXExecutors.ioExecutor());
            ImmediateSurface immediateSurface = new ImmediateSurface(this.mReprocessingImageReader.getSurface(), new Size(this.mReprocessingImageReader.getWidth(), this.mReprocessingImageReader.getHeight()), 34);
            this.mReprocessingImageDeferrableSurface = immediateSurface;
            SafeCloseImageReaderProxy safeCloseImageReaderProxy = this.mReprocessingImageReader;
            ListenableFuture<Void> terminationFuture = immediateSurface.getTerminationFuture();
            Objects.requireNonNull(safeCloseImageReaderProxy);
            terminationFuture.addListener(new RunnableC1044x8c43c726(safeCloseImageReaderProxy, 14), CameraXExecutors.mainThreadExecutor());
            builder.addSurface(this.mReprocessingImageDeferrableSurface);
            builder.addCameraCaptureCallback(this.mMetadataMatchingCaptureCallback);
            builder.addSessionStateCallback(new CameraCaptureSession.StateCallback() { // from class: androidx.camera.camera2.internal.ZslControlImpl.1
                public AnonymousClass1() {
                }

                @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
                public void onConfigureFailed(@NonNull CameraCaptureSession cameraCaptureSession) {
                }

                @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
                public void onConfigured(@NonNull CameraCaptureSession cameraCaptureSession) {
                    Surface inputSurface;
                    inputSurface = cameraCaptureSession.getInputSurface();
                    if (inputSurface != null) {
                        ZslControlImpl.this.mReprocessingImageWriter = ImageWriterCompat.newInstance(inputSurface, 1);
                    }
                }
            });
            AbstractC1040xbbbe0b3f.m3705xd2bcb0cf();
            builder.setInputConfiguration(AbstractC1040xbbbe0b3f.m3697x75d576dc(this.mReprocessingImageReader.getWidth(), this.mReprocessingImageReader.getHeight(), this.mReprocessingImageReader.getImageFormat()));
            return;
        }
        builder.setTemplateType(1);
    }

    @Override // androidx.camera.camera2.internal.ZslControl
    @Nullable
    public ImageProxy dequeueImageFromBuffer() {
        try {
            return this.mImageRingBuffer.dequeue();
        } catch (NoSuchElementException unused) {
            Logger.e(TAG, "dequeueImageFromBuffer no such element");
            return null;
        }
    }

    @Override // androidx.camera.camera2.internal.ZslControl
    public boolean enqueueImageToImageWriter(@NonNull ImageProxy imageProxy) {
        ImageWriter imageWriter;
        Image image = imageProxy.getImage();
        if (Build.VERSION.SDK_INT >= 23 && (imageWriter = this.mReprocessingImageWriter) != null && image != null) {
            try {
                ImageWriterCompat.queueInputImage(imageWriter, image);
                return true;
            } catch (IllegalStateException e) {
                Logger.e(TAG, "enqueueImageToImageWriter throws IllegalStateException = " + e.getMessage());
            }
        }
        return false;
    }

    @Override // androidx.camera.camera2.internal.ZslControl
    public boolean isZslDisabledByFlashMode() {
        return this.mIsZslDisabledByFlashMode;
    }

    @Override // androidx.camera.camera2.internal.ZslControl
    public boolean isZslDisabledByUserCaseConfig() {
        return this.mIsZslDisabledByUseCaseConfig;
    }

    @Override // androidx.camera.camera2.internal.ZslControl
    public void setZslDisabledByFlashMode(boolean z) {
        this.mIsZslDisabledByFlashMode = z;
    }

    @Override // androidx.camera.camera2.internal.ZslControl
    public void setZslDisabledByUserCaseConfig(boolean z) {
        this.mIsZslDisabledByUseCaseConfig = z;
    }
}
