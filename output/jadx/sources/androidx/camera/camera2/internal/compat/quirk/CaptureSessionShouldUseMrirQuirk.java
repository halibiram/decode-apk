package androidx.camera.camera2.internal.compat.quirk;

import android.os.Build;
import androidx.camera.core.impl.Quirk;

/* loaded from: classes.dex */
public class CaptureSessionShouldUseMrirQuirk implements Quirk {
    public static boolean load() {
        if ("google".equalsIgnoreCase(Build.BRAND) && Build.VERSION.SDK_INT >= 35) {
            return true;
        }
        return false;
    }
}
