package androidx.camera.camera2.internal.compat;

import android.hardware.camera2.params.StreamConfigurationMap;
import android.util.Size;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

/* JADX INFO: Access modifiers changed from: package-private */
@RequiresApi(23)
/* loaded from: classes.dex */
public class StreamConfigurationMapCompatApi23Impl extends StreamConfigurationMapCompatBaseImpl {
    public StreamConfigurationMapCompatApi23Impl(@NonNull StreamConfigurationMap streamConfigurationMap) {
        super(streamConfigurationMap);
    }

    @Override // androidx.camera.camera2.internal.compat.StreamConfigurationMapCompatBaseImpl, androidx.camera.camera2.internal.compat.StreamConfigurationMapCompat.StreamConfigurationMapCompatImpl
    @Nullable
    public Size[] getOutputSizes(int i) {
        return this.mStreamConfigurationMap.getOutputSizes(i);
    }
}
