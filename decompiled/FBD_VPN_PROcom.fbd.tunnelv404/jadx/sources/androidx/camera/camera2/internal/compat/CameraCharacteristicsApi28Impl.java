package androidx.camera.camera2.internal.compat;

import android.hardware.camera2.CameraCharacteristics;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.camera.core.Logger;
import java.util.Collections;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
@RequiresApi(28)
/* loaded from: classes.dex */
public class CameraCharacteristicsApi28Impl extends CameraCharacteristicsBaseImpl {
    private static final String TAG = "CameraCharacteristicsImpl";

    public CameraCharacteristicsApi28Impl(@NonNull CameraCharacteristics cameraCharacteristics) {
        super(cameraCharacteristics);
    }

    @Override // androidx.camera.camera2.internal.compat.CameraCharacteristicsBaseImpl, androidx.camera.camera2.internal.compat.CameraCharacteristicsCompat.CameraCharacteristicsCompatImpl
    @NonNull
    public Set<String> getPhysicalCameraIds() {
        try {
            return this.mCameraCharacteristics.getPhysicalCameraIds();
        } catch (Exception e) {
            Logger.e(TAG, "CameraCharacteristics.getPhysicalCameraIds throws an exception.", e);
            return Collections.emptySet();
        }
    }
}
