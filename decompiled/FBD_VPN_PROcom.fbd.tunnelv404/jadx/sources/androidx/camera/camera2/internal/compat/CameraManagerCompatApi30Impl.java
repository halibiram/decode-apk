package androidx.camera.camera2.internal.compat;

import android.content.Context;
import android.hardware.camera2.CameraAccessException;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
@RequiresApi(30)
/* loaded from: classes.dex */
public class CameraManagerCompatApi30Impl extends CameraManagerCompatApi29Impl {
    public CameraManagerCompatApi30Impl(@NonNull Context context) {
        super(context);
    }

    @Override // androidx.camera.camera2.internal.compat.CameraManagerCompatBaseImpl, androidx.camera.camera2.internal.compat.CameraManagerCompat.CameraManagerCompatImpl
    @NonNull
    public Set<Set<String>> getConcurrentCameraIds() {
        try {
            return this.mCameraManager.getConcurrentCameraIds();
        } catch (CameraAccessException e) {
            throw CameraAccessExceptionCompat.toCameraAccessExceptionCompat(e);
        }
    }
}
