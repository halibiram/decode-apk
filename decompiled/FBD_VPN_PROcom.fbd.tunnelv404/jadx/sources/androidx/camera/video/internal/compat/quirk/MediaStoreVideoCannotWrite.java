package androidx.camera.video.internal.compat.quirk;

import android.os.Build;
import androidx.camera.core.impl.Quirk;

/* loaded from: classes.dex */
public class MediaStoreVideoCannotWrite implements Quirk {
    public static boolean isItelW6004() {
        if ("itel".equalsIgnoreCase(Build.BRAND) && "itel w6004".equalsIgnoreCase(Build.MODEL)) {
            return true;
        }
        return false;
    }

    public static boolean isPositivoTwist2Pro() {
        if ("positivo".equalsIgnoreCase(Build.BRAND) && "twist 2 pro".equalsIgnoreCase(Build.MODEL)) {
            return true;
        }
        return false;
    }

    public static boolean load() {
        if (!isPositivoTwist2Pro() && !isItelW6004()) {
            return false;
        }
        return true;
    }
}
