package androidx.camera.core;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.media.ImageWriter;
import android.os.Build;
import androidx.annotation.GuardedBy;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.camera.core.ImageAnalysis;
import androidx.camera.core.impl.ImageReaderProxy;
import androidx.camera.core.impl.TagBundle;
import androidx.camera.core.impl.utils.TransformUtils;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.camera.core.internal.compat.ImageWriterCompat;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.os.OperationCanceledException;
import com.google.common.util.concurrent.ListenableFuture;
import java.nio.ByteBuffer;
import java.util.concurrent.Executor;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class ImageAnalysisAbstractAnalyzer implements ImageReaderProxy.OnImageAvailableListener {
    private static final String TAG = "ImageAnalysisAnalyzer";
    private volatile boolean mOnePixelShiftEnabled;
    private volatile boolean mOutputImageRotationEnabled;

    @IntRange(from = 0, to = 359)
    private volatile int mPrevBufferRotationDegrees;

    @Nullable
    @GuardedBy("mAnalyzerLock")
    private SafeCloseImageReaderProxy mProcessedImageReaderProxy;

    @Nullable
    @GuardedBy("mAnalyzerLock")
    private ImageWriter mProcessedImageWriter;

    @Nullable
    @GuardedBy("mAnalyzerLock")
    @VisibleForTesting
    ByteBuffer mRGBConvertedBuffer;

    @IntRange(from = 0, to = 359)
    private volatile int mRelativeRotation;

    @GuardedBy("mAnalyzerLock")
    private ImageAnalysis.Analyzer mSubscribedAnalyzer;

    @Nullable
    @GuardedBy("mAnalyzerLock")
    @VisibleForTesting
    ByteBuffer mURotatedBuffer;

    @GuardedBy("mAnalyzerLock")
    private Executor mUserExecutor;

    @Nullable
    @GuardedBy("mAnalyzerLock")
    @VisibleForTesting
    ByteBuffer mVRotatedBuffer;

    @Nullable
    @GuardedBy("mAnalyzerLock")
    @VisibleForTesting
    ByteBuffer mYRotatedBuffer;
    private volatile int mOutputImageFormat = 1;

    @GuardedBy("mAnalyzerLock")
    private Rect mOriginalViewPortCropRect = new Rect();

    @GuardedBy("mAnalyzerLock")
    private Rect mUpdatedViewPortCropRect = new Rect();

    @GuardedBy("mAnalyzerLock")
    private Matrix mOriginalSensorToBufferTransformMatrix = new Matrix();

    @GuardedBy("mAnalyzerLock")
    private Matrix mUpdatedSensorToBufferTransformMatrix = new Matrix();
    private final Object mAnalyzerLock = new Object();
    protected boolean mIsAttached = true;

    @GuardedBy("mAnalyzerLock")
    private void createHelperBuffer(@NonNull ImageProxy imageProxy) {
        if (this.mOutputImageFormat == 1) {
            if (this.mYRotatedBuffer == null) {
                this.mYRotatedBuffer = ByteBuffer.allocateDirect(imageProxy.getHeight() * imageProxy.getWidth());
            }
            this.mYRotatedBuffer.position(0);
            if (this.mURotatedBuffer == null) {
                this.mURotatedBuffer = ByteBuffer.allocateDirect((imageProxy.getHeight() * imageProxy.getWidth()) / 4);
            }
            this.mURotatedBuffer.position(0);
            if (this.mVRotatedBuffer == null) {
                this.mVRotatedBuffer = ByteBuffer.allocateDirect((imageProxy.getHeight() * imageProxy.getWidth()) / 4);
            }
            this.mVRotatedBuffer.position(0);
            return;
        }
        if (this.mOutputImageFormat == 2 && this.mRGBConvertedBuffer == null) {
            this.mRGBConvertedBuffer = ByteBuffer.allocateDirect(imageProxy.getHeight() * imageProxy.getWidth() * 4);
        }
    }

    @NonNull
    private static SafeCloseImageReaderProxy createImageReaderProxy(int i, int i2, int i3, int i4, int i5) {
        boolean z;
        int i6;
        if (i3 != 90 && i3 != 270) {
            z = false;
        } else {
            z = true;
        }
        if (z) {
            i6 = i2;
        } else {
            i6 = i;
        }
        if (!z) {
            i = i2;
        }
        return new SafeCloseImageReaderProxy(ImageReaderProxys.createIsolatedReader(i6, i, i4, i5));
    }

    @NonNull
    @VisibleForTesting
    public static Matrix getAdditionalTransformMatrixAppliedByProcessor(int i, int i2, int i3, int i4, @IntRange(from = 0, to = 359) int i5) {
        Matrix matrix = new Matrix();
        if (i5 > 0) {
            matrix.setRectToRect(new RectF(0.0f, 0.0f, i, i2), TransformUtils.NORMALIZED_RECT, Matrix.ScaleToFit.FILL);
            matrix.postRotate(i5);
            matrix.postConcat(TransformUtils.getNormalizedToBuffer(new RectF(0.0f, 0.0f, i3, i4)));
        }
        return matrix;
    }

    @NonNull
    public static Rect getUpdatedCropRect(@NonNull Rect rect, @NonNull Matrix matrix) {
        RectF rectF = new RectF(rect);
        matrix.mapRect(rectF);
        Rect rect2 = new Rect();
        rectF.round(rect2);
        return rect2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$analyzeImage$0(ImageProxy imageProxy, Matrix matrix, ImageProxy imageProxy2, Rect rect, ImageAnalysis.Analyzer analyzer, CallbackToFutureAdapter.Completer completer) {
        int i;
        if (this.mIsAttached) {
            TagBundle tagBundle = imageProxy.getImageInfo().getTagBundle();
            long timestamp = imageProxy.getImageInfo().getTimestamp();
            if (this.mOutputImageRotationEnabled) {
                i = 0;
            } else {
                i = this.mRelativeRotation;
            }
            SettableImageProxy settableImageProxy = new SettableImageProxy(imageProxy2, ImmutableImageInfo.create(tagBundle, timestamp, i, matrix));
            if (!rect.isEmpty()) {
                settableImageProxy.setCropRect(rect);
            }
            analyzer.analyze(settableImageProxy);
            completer.set(null);
            return;
        }
        completer.setException(new OperationCanceledException("ImageAnalysis is detached"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$analyzeImage$1(Executor executor, final ImageProxy imageProxy, final Matrix matrix, final ImageProxy imageProxy2, final Rect rect, final ImageAnalysis.Analyzer analyzer, final CallbackToFutureAdapter.Completer completer) {
        executor.execute(new Runnable() { // from class: androidx.camera.core.뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉
            @Override // java.lang.Runnable
            public final void run() {
                ImageAnalysisAbstractAnalyzer.this.lambda$analyzeImage$0(imageProxy, matrix, imageProxy2, rect, analyzer, completer);
            }
        });
        return "analyzeImage";
    }

    @GuardedBy("mAnalyzerLock")
    private void recalculateTransformMatrixAndCropRect(int i, int i2, int i3, int i4) {
        Matrix additionalTransformMatrixAppliedByProcessor = getAdditionalTransformMatrixAppliedByProcessor(i, i2, i3, i4, this.mRelativeRotation);
        this.mUpdatedViewPortCropRect = getUpdatedCropRect(this.mOriginalViewPortCropRect, additionalTransformMatrixAppliedByProcessor);
        this.mUpdatedSensorToBufferTransformMatrix.setConcat(this.mOriginalSensorToBufferTransformMatrix, additionalTransformMatrixAppliedByProcessor);
    }

    @GuardedBy("mAnalyzerLock")
    private void recreateImageReaderProxy(@NonNull ImageProxy imageProxy, @IntRange(from = 0, to = 359) int i) {
        SafeCloseImageReaderProxy safeCloseImageReaderProxy = this.mProcessedImageReaderProxy;
        if (safeCloseImageReaderProxy == null) {
            return;
        }
        safeCloseImageReaderProxy.safeClose();
        this.mProcessedImageReaderProxy = createImageReaderProxy(imageProxy.getWidth(), imageProxy.getHeight(), i, this.mProcessedImageReaderProxy.getImageFormat(), this.mProcessedImageReaderProxy.getMaxImages());
        if (Build.VERSION.SDK_INT >= 23 && this.mOutputImageFormat == 1) {
            ImageWriter imageWriter = this.mProcessedImageWriter;
            if (imageWriter != null) {
                ImageWriterCompat.close(imageWriter);
            }
            this.mProcessedImageWriter = ImageWriterCompat.newInstance(this.mProcessedImageReaderProxy.getSurface(), this.mProcessedImageReaderProxy.getMaxImages());
        }
    }

    @Nullable
    public abstract ImageProxy acquireImage(@NonNull ImageReaderProxy imageReaderProxy);

    /* JADX WARN: Removed duplicated region for block: B:28:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0073  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public ListenableFuture<Void> analyzeImage(@NonNull final ImageProxy imageProxy) {
        int i;
        final Executor executor;
        final ImageAnalysis.Analyzer analyzer;
        boolean z;
        SafeCloseImageReaderProxy safeCloseImageReaderProxy;
        ImageWriter imageWriter;
        ByteBuffer byteBuffer;
        ByteBuffer byteBuffer2;
        ByteBuffer byteBuffer3;
        ByteBuffer byteBuffer4;
        ImageProxy imageProxy2;
        final ImageProxy imageProxy3;
        boolean z2 = false;
        if (this.mOutputImageRotationEnabled) {
            i = this.mRelativeRotation;
        } else {
            i = 0;
        }
        synchronized (this.mAnalyzerLock) {
            try {
                executor = this.mUserExecutor;
                analyzer = this.mSubscribedAnalyzer;
                if (this.mOutputImageRotationEnabled && i != this.mPrevBufferRotationDegrees) {
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    recreateImageReaderProxy(imageProxy, i);
                }
                if (this.mOutputImageRotationEnabled) {
                    createHelperBuffer(imageProxy);
                }
                safeCloseImageReaderProxy = this.mProcessedImageReaderProxy;
                imageWriter = this.mProcessedImageWriter;
                byteBuffer = this.mRGBConvertedBuffer;
                byteBuffer2 = this.mYRotatedBuffer;
                byteBuffer3 = this.mURotatedBuffer;
                byteBuffer4 = this.mVRotatedBuffer;
            } finally {
            }
        }
        if (analyzer != null && executor != null && this.mIsAttached) {
            if (safeCloseImageReaderProxy != null) {
                if (this.mOutputImageFormat == 2) {
                    imageProxy2 = ImageProcessingUtil.convertYUVToRGB(imageProxy, safeCloseImageReaderProxy, byteBuffer, i, this.mOnePixelShiftEnabled);
                } else if (this.mOutputImageFormat == 1) {
                    if (this.mOnePixelShiftEnabled) {
                        ImageProcessingUtil.applyPixelShiftForYUV(imageProxy);
                    }
                    if (imageWriter != null && byteBuffer2 != null && byteBuffer3 != null && byteBuffer4 != null) {
                        imageProxy2 = ImageProcessingUtil.rotateYUV(imageProxy, safeCloseImageReaderProxy, imageWriter, byteBuffer2, byteBuffer3, byteBuffer4, i);
                    }
                }
                if (imageProxy2 == null) {
                    z2 = true;
                }
                if (!z2) {
                    imageProxy3 = imageProxy;
                } else {
                    imageProxy3 = imageProxy2;
                }
                final Rect rect = new Rect();
                final Matrix matrix = new Matrix();
                synchronized (this.mAnalyzerLock) {
                    if (z && !z2) {
                        try {
                            recalculateTransformMatrixAndCropRect(imageProxy.getWidth(), imageProxy.getHeight(), imageProxy3.getWidth(), imageProxy3.getHeight());
                        } finally {
                        }
                    }
                    this.mPrevBufferRotationDegrees = i;
                    rect.set(this.mUpdatedViewPortCropRect);
                    matrix.set(this.mUpdatedSensorToBufferTransformMatrix);
                }
                return CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() { // from class: androidx.camera.core.뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨
                    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
                    public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                        Object lambda$analyzeImage$1;
                        Rect rect2 = rect;
                        lambda$analyzeImage$1 = ImageAnalysisAbstractAnalyzer.this.lambda$analyzeImage$1(executor, imageProxy, matrix, imageProxy3, rect2, analyzer, completer);
                        return lambda$analyzeImage$1;
                    }
                });
            }
            imageProxy2 = null;
            if (imageProxy2 == null) {
            }
            if (!z2) {
            }
            final Rect rect2 = new Rect();
            final Matrix matrix2 = new Matrix();
            synchronized (this.mAnalyzerLock) {
            }
        } else {
            return Futures.immediateFailedFuture(new OperationCanceledException("No analyzer or executor currently set."));
        }
    }

    public void attach() {
        this.mIsAttached = true;
    }

    public abstract void clearCache();

    public void detach() {
        this.mIsAttached = false;
        clearCache();
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy.OnImageAvailableListener
    public void onImageAvailable(@NonNull ImageReaderProxy imageReaderProxy) {
        try {
            ImageProxy acquireImage = acquireImage(imageReaderProxy);
            if (acquireImage != null) {
                onValidImageAvailable(acquireImage);
            }
        } catch (IllegalStateException e) {
            Logger.e(TAG, "Failed to acquire image.", e);
        }
    }

    public abstract void onValidImageAvailable(@NonNull ImageProxy imageProxy);

    public void setAnalyzer(@Nullable Executor executor, @Nullable ImageAnalysis.Analyzer analyzer) {
        if (analyzer == null) {
            clearCache();
        }
        synchronized (this.mAnalyzerLock) {
            this.mSubscribedAnalyzer = analyzer;
            this.mUserExecutor = executor;
        }
    }

    public void setOnePixelShiftEnabled(boolean z) {
        this.mOnePixelShiftEnabled = z;
    }

    public void setOutputImageFormat(int i) {
        this.mOutputImageFormat = i;
    }

    public void setOutputImageRotationEnabled(boolean z) {
        this.mOutputImageRotationEnabled = z;
    }

    public void setProcessedImageReaderProxy(@NonNull SafeCloseImageReaderProxy safeCloseImageReaderProxy) {
        synchronized (this.mAnalyzerLock) {
            this.mProcessedImageReaderProxy = safeCloseImageReaderProxy;
        }
    }

    public void setRelativeRotation(int i) {
        this.mRelativeRotation = i;
    }

    public void setSensorToBufferTransformMatrix(@NonNull Matrix matrix) {
        synchronized (this.mAnalyzerLock) {
            this.mOriginalSensorToBufferTransformMatrix = matrix;
            this.mUpdatedSensorToBufferTransformMatrix = new Matrix(this.mOriginalSensorToBufferTransformMatrix);
        }
    }

    public void setViewPortCropRect(@NonNull Rect rect) {
        synchronized (this.mAnalyzerLock) {
            this.mOriginalViewPortCropRect = rect;
            this.mUpdatedViewPortCropRect = new Rect(this.mOriginalViewPortCropRect);
        }
    }
}
