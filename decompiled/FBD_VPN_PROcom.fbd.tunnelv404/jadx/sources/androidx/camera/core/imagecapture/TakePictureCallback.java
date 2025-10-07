package androidx.camera.core.imagecapture;

import android.graphics.Bitmap;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.camera.core.ImageCapture;
import androidx.camera.core.ImageCaptureException;
import androidx.camera.core.ImageProxy;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public interface TakePictureCallback {
    boolean isAborted();

    @MainThread
    void onCaptureFailure(@NonNull ImageCaptureException imageCaptureException);

    void onCaptureProcessProgressed(int i);

    void onCaptureStarted();

    @MainThread
    void onFinalResult(@NonNull ImageCapture.OutputFileResults outputFileResults);

    @MainThread
    void onFinalResult(@NonNull ImageProxy imageProxy);

    @MainThread
    void onImageCaptured();

    void onPostviewBitmapAvailable(@NonNull Bitmap bitmap);

    @MainThread
    void onProcessFailure(@NonNull ImageCaptureException imageCaptureException);
}
