package androidx.camera.core.imagecapture;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.Rect;
import androidx.annotation.IntRange;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.camera.core.ImageCapture;
import androidx.camera.core.ImageCaptureException;
import androidx.camera.core.ImageProxy;
import androidx.camera.core.impl.CameraCaptureCallback;
import androidx.camera.core.impl.utils.Threads;
import androidx.camera.core.internal.compat.workaround.CaptureFailedRetryEnabler;
import androidx.core.util.Preconditions;
import com.google.auto.value.AutoValue;
import defpackage.RunnableC0460x8df12640;
import defpackage.RunnableC0938xaa9be1e3;
import j$.util.Objects;
import java.util.List;
import java.util.concurrent.Executor;

@AutoValue
/* loaded from: classes.dex */
public abstract class TakePictureRequest {
    private int mRemainingRetires = new CaptureFailedRetryEnabler().getRetryCount();

    /* loaded from: classes.dex */
    public interface RetryControl {
        void retryRequest(@NonNull TakePictureRequest takePictureRequest);
    }

    public /* synthetic */ void lambda$onCaptureProcessProgressed$3(int i) {
        if (getOnDiskCallback() != null) {
            getOnDiskCallback().onCaptureProcessProgressed(i);
        } else if (getInMemoryCallback() != null) {
            getInMemoryCallback().onCaptureProcessProgressed(i);
        }
    }

    public /* synthetic */ void lambda$onError$0(ImageCaptureException imageCaptureException) {
        boolean z;
        boolean z2 = false;
        if (getInMemoryCallback() != null) {
            z = true;
        } else {
            z = false;
        }
        if (getOnDiskCallback() != null) {
            z2 = true;
        }
        if (z && !z2) {
            ImageCapture.OnImageCapturedCallback inMemoryCallback = getInMemoryCallback();
            Objects.requireNonNull(inMemoryCallback);
            inMemoryCallback.onError(imageCaptureException);
        } else {
            if (z2 && !z) {
                ImageCapture.OnImageSavedCallback onDiskCallback = getOnDiskCallback();
                Objects.requireNonNull(onDiskCallback);
                onDiskCallback.onError(imageCaptureException);
                return;
            }
            throw new IllegalStateException("One and only one callback is allowed.");
        }
    }

    public /* synthetic */ void lambda$onPostviewBitmapAvailable$4(Bitmap bitmap) {
        if (getOnDiskCallback() != null) {
            getOnDiskCallback().onPostviewBitmapAvailable(bitmap);
        } else if (getInMemoryCallback() != null) {
            getInMemoryCallback().onPostviewBitmapAvailable(bitmap);
        }
    }

    public /* synthetic */ void lambda$onResult$1(ImageCapture.OutputFileResults outputFileResults) {
        ImageCapture.OnImageSavedCallback onDiskCallback = getOnDiskCallback();
        Objects.requireNonNull(onDiskCallback);
        Objects.requireNonNull(outputFileResults);
        onDiskCallback.onImageSaved(outputFileResults);
    }

    public /* synthetic */ void lambda$onResult$2(ImageProxy imageProxy) {
        ImageCapture.OnImageCapturedCallback inMemoryCallback = getInMemoryCallback();
        Objects.requireNonNull(inMemoryCallback);
        Objects.requireNonNull(imageProxy);
        inMemoryCallback.onCaptureSuccess(imageProxy);
    }

    @NonNull
    public static TakePictureRequest of(@NonNull Executor executor, @Nullable ImageCapture.OnImageCapturedCallback onImageCapturedCallback, @Nullable ImageCapture.OnImageSavedCallback onImageSavedCallback, @Nullable ImageCapture.OutputFileOptions outputFileOptions, @NonNull Rect rect, @NonNull Matrix matrix, int i, int i2, int i3, @NonNull List<CameraCaptureCallback> list) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5 = false;
        if (onImageSavedCallback == null) {
            z = true;
        } else {
            z = false;
        }
        if (outputFileOptions == null) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z == z2) {
            z3 = true;
        } else {
            z3 = false;
        }
        Preconditions.checkArgument(z3, "onDiskCallback and outputFileOptions should be both null or both non-null.");
        if (onImageSavedCallback == null) {
            z4 = true;
        } else {
            z4 = false;
        }
        if (onImageCapturedCallback == null) {
            z5 = true;
        }
        Preconditions.checkArgument(z5 ^ z4, "One and only one on-disk or in-memory callback should be present.");
        return new AutoValue_TakePictureRequest(executor, onImageCapturedCallback, onImageSavedCallback, outputFileOptions, rect, matrix, i, i2, i3, list);
    }

    @MainThread
    public boolean decrementRetryCounter() {
        Threads.checkMainThread();
        int i = this.mRemainingRetires;
        if (i > 0) {
            this.mRemainingRetires = i - 1;
            return true;
        }
        return false;
    }

    @NonNull
    public abstract Executor getAppExecutor();

    public abstract int getCaptureMode();

    @NonNull
    public abstract Rect getCropRect();

    @Nullable
    public abstract ImageCapture.OnImageCapturedCallback getInMemoryCallback();

    @IntRange(from = 1, to = 100)
    public abstract int getJpegQuality();

    @Nullable
    public abstract ImageCapture.OnImageSavedCallback getOnDiskCallback();

    @Nullable
    public abstract ImageCapture.OutputFileOptions getOutputFileOptions();

    @MainThread
    @VisibleForTesting
    public int getRemainingRetries() {
        Threads.checkMainThread();
        return this.mRemainingRetires;
    }

    public abstract int getRotationDegrees();

    @NonNull
    public abstract Matrix getSensorToBufferTransform();

    @NonNull
    public abstract List<CameraCaptureCallback> getSessionConfigCameraCaptureCallbacks();

    @MainThread
    public void incrementRetryCounter() {
        Threads.checkMainThread();
        this.mRemainingRetires++;
    }

    public void onCaptureProcessProgressed(int i) {
        getAppExecutor().execute(new RunnableC0460x8df12640(this, i, 5));
    }

    public void onError(@NonNull ImageCaptureException imageCaptureException) {
        getAppExecutor().execute(new RunnableC0938xaa9be1e3(this, imageCaptureException, 20));
    }

    public void onPostviewBitmapAvailable(@NonNull Bitmap bitmap) {
        getAppExecutor().execute(new RunnableC0938xaa9be1e3(this, bitmap, 18));
    }

    public void onResult(@Nullable ImageCapture.OutputFileResults outputFileResults) {
        getAppExecutor().execute(new RunnableC0938xaa9be1e3(this, outputFileResults, 19));
    }

    public void onResult(@Nullable ImageProxy imageProxy) {
        getAppExecutor().execute(new RunnableC0938xaa9be1e3(this, imageProxy, 17));
    }
}
