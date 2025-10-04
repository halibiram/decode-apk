package androidx.camera.core;

import androidx.annotation.NonNull;
import java.util.List;

/* loaded from: classes.dex */
public interface CameraProvider {
    @NonNull
    List<CameraInfo> getAvailableCameraInfos();

    @NonNull
    @ExperimentalCameraInfo
    CameraInfo getCameraInfo(@NonNull CameraSelector cameraSelector);

    boolean hasCamera(@NonNull CameraSelector cameraSelector);
}
