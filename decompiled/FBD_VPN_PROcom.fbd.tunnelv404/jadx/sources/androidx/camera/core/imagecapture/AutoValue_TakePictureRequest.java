package androidx.camera.core.imagecapture;

import android.graphics.Matrix;
import android.graphics.Rect;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.camera.core.ImageCapture;
import androidx.camera.core.impl.CameraCaptureCallback;
import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class AutoValue_TakePictureRequest extends TakePictureRequest {
    private final Executor appExecutor;
    private final int captureMode;
    private final Rect cropRect;
    private final ImageCapture.OnImageCapturedCallback inMemoryCallback;
    private final int jpegQuality;
    private final ImageCapture.OnImageSavedCallback onDiskCallback;
    private final ImageCapture.OutputFileOptions outputFileOptions;
    private final int rotationDegrees;
    private final Matrix sensorToBufferTransform;
    private final List<CameraCaptureCallback> sessionConfigCameraCaptureCallbacks;

    public AutoValue_TakePictureRequest(Executor executor, @Nullable ImageCapture.OnImageCapturedCallback onImageCapturedCallback, @Nullable ImageCapture.OnImageSavedCallback onImageSavedCallback, @Nullable ImageCapture.OutputFileOptions outputFileOptions, Rect rect, Matrix matrix, int i, int i2, int i3, List<CameraCaptureCallback> list) {
        if (executor != null) {
            this.appExecutor = executor;
            this.inMemoryCallback = onImageCapturedCallback;
            this.onDiskCallback = onImageSavedCallback;
            this.outputFileOptions = outputFileOptions;
            if (rect != null) {
                this.cropRect = rect;
                if (matrix != null) {
                    this.sensorToBufferTransform = matrix;
                    this.rotationDegrees = i;
                    this.jpegQuality = i2;
                    this.captureMode = i3;
                    if (list != null) {
                        this.sessionConfigCameraCaptureCallbacks = list;
                        return;
                    }
                    throw new NullPointerException("Null sessionConfigCameraCaptureCallbacks");
                }
                throw new NullPointerException("Null sensorToBufferTransform");
            }
            throw new NullPointerException("Null cropRect");
        }
        throw new NullPointerException("Null appExecutor");
    }

    public boolean equals(Object obj) {
        ImageCapture.OnImageCapturedCallback onImageCapturedCallback;
        ImageCapture.OnImageSavedCallback onImageSavedCallback;
        ImageCapture.OutputFileOptions outputFileOptions;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof TakePictureRequest)) {
            return false;
        }
        TakePictureRequest takePictureRequest = (TakePictureRequest) obj;
        if (this.appExecutor.equals(takePictureRequest.getAppExecutor()) && ((onImageCapturedCallback = this.inMemoryCallback) != null ? onImageCapturedCallback.equals(takePictureRequest.getInMemoryCallback()) : takePictureRequest.getInMemoryCallback() == null) && ((onImageSavedCallback = this.onDiskCallback) != null ? onImageSavedCallback.equals(takePictureRequest.getOnDiskCallback()) : takePictureRequest.getOnDiskCallback() == null) && ((outputFileOptions = this.outputFileOptions) != null ? outputFileOptions.equals(takePictureRequest.getOutputFileOptions()) : takePictureRequest.getOutputFileOptions() == null) && this.cropRect.equals(takePictureRequest.getCropRect()) && this.sensorToBufferTransform.equals(takePictureRequest.getSensorToBufferTransform()) && this.rotationDegrees == takePictureRequest.getRotationDegrees() && this.jpegQuality == takePictureRequest.getJpegQuality() && this.captureMode == takePictureRequest.getCaptureMode() && this.sessionConfigCameraCaptureCallbacks.equals(takePictureRequest.getSessionConfigCameraCaptureCallbacks())) {
            return true;
        }
        return false;
    }

    @Override // androidx.camera.core.imagecapture.TakePictureRequest
    @NonNull
    public Executor getAppExecutor() {
        return this.appExecutor;
    }

    @Override // androidx.camera.core.imagecapture.TakePictureRequest
    public int getCaptureMode() {
        return this.captureMode;
    }

    @Override // androidx.camera.core.imagecapture.TakePictureRequest
    @NonNull
    public Rect getCropRect() {
        return this.cropRect;
    }

    @Override // androidx.camera.core.imagecapture.TakePictureRequest
    @Nullable
    public ImageCapture.OnImageCapturedCallback getInMemoryCallback() {
        return this.inMemoryCallback;
    }

    @Override // androidx.camera.core.imagecapture.TakePictureRequest
    @IntRange(from = 1, to = 100)
    public int getJpegQuality() {
        return this.jpegQuality;
    }

    @Override // androidx.camera.core.imagecapture.TakePictureRequest
    @Nullable
    public ImageCapture.OnImageSavedCallback getOnDiskCallback() {
        return this.onDiskCallback;
    }

    @Override // androidx.camera.core.imagecapture.TakePictureRequest
    @Nullable
    public ImageCapture.OutputFileOptions getOutputFileOptions() {
        return this.outputFileOptions;
    }

    @Override // androidx.camera.core.imagecapture.TakePictureRequest
    public int getRotationDegrees() {
        return this.rotationDegrees;
    }

    @Override // androidx.camera.core.imagecapture.TakePictureRequest
    @NonNull
    public Matrix getSensorToBufferTransform() {
        return this.sensorToBufferTransform;
    }

    @Override // androidx.camera.core.imagecapture.TakePictureRequest
    @NonNull
    public List<CameraCaptureCallback> getSessionConfigCameraCaptureCallbacks() {
        return this.sessionConfigCameraCaptureCallbacks;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3 = (this.appExecutor.hashCode() ^ 1000003) * 1000003;
        ImageCapture.OnImageCapturedCallback onImageCapturedCallback = this.inMemoryCallback;
        int i = 0;
        if (onImageCapturedCallback == null) {
            hashCode = 0;
        } else {
            hashCode = onImageCapturedCallback.hashCode();
        }
        int i2 = (hashCode3 ^ hashCode) * 1000003;
        ImageCapture.OnImageSavedCallback onImageSavedCallback = this.onDiskCallback;
        if (onImageSavedCallback == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = onImageSavedCallback.hashCode();
        }
        int i3 = (i2 ^ hashCode2) * 1000003;
        ImageCapture.OutputFileOptions outputFileOptions = this.outputFileOptions;
        if (outputFileOptions != null) {
            i = outputFileOptions.hashCode();
        }
        return ((((((((((((i3 ^ i) * 1000003) ^ this.cropRect.hashCode()) * 1000003) ^ this.sensorToBufferTransform.hashCode()) * 1000003) ^ this.rotationDegrees) * 1000003) ^ this.jpegQuality) * 1000003) ^ this.captureMode) * 1000003) ^ this.sessionConfigCameraCaptureCallbacks.hashCode();
    }

    public String toString() {
        return "TakePictureRequest{appExecutor=" + this.appExecutor + ", inMemoryCallback=" + this.inMemoryCallback + ", onDiskCallback=" + this.onDiskCallback + ", outputFileOptions=" + this.outputFileOptions + ", cropRect=" + this.cropRect + ", sensorToBufferTransform=" + this.sensorToBufferTransform + ", rotationDegrees=" + this.rotationDegrees + ", jpegQuality=" + this.jpegQuality + ", captureMode=" + this.captureMode + ", sessionConfigCameraCaptureCallbacks=" + this.sessionConfigCameraCaptureCallbacks + "}";
    }
}
