package androidx.camera.view;

import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.camera.core.Camera;
import androidx.camera.core.CameraInfo;
import androidx.camera.core.CameraSelector;
import androidx.camera.core.UseCase;
import androidx.camera.core.UseCaseGroup;
import androidx.lifecycle.LifecycleOwner;
import com.google.common.util.concurrent.ListenableFuture;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public interface ProcessCameraProviderWrapper {
    @NonNull
    @MainThread
    Camera bindToLifecycle(@NonNull LifecycleOwner lifecycleOwner, @NonNull CameraSelector cameraSelector, @NonNull UseCaseGroup useCaseGroup);

    @NonNull
    CameraInfo getCameraInfo(CameraSelector cameraSelector);

    boolean hasCamera(@NonNull CameraSelector cameraSelector);

    @NonNull
    @VisibleForTesting
    ListenableFuture<Void> shutdownAsync();

    void unbind(@NonNull UseCase... useCaseArr);

    void unbindAll();
}
