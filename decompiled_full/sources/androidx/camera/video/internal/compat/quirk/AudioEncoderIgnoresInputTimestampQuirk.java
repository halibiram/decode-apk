package androidx.camera.video.internal.compat.quirk;

import android.os.Build;
import androidx.camera.core.impl.Quirk;

/* loaded from: classes.dex */
public class AudioEncoderIgnoresInputTimestampQuirk implements Quirk {
    private static boolean isSonyG3125() {
        if ("Sony".equalsIgnoreCase(Build.BRAND) && "G3125".equalsIgnoreCase(Build.MODEL)) {
            return true;
        }
        return false;
    }

    public static boolean load() {
        return isSonyG3125();
    }
}
