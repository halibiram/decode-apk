package androidx.camera.camera2.internal.compat.quirk;

import android.os.Build;
import androidx.camera.core.impl.Quirk;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;

/* loaded from: classes.dex */
public class ImageCaptureFailedForVideoSnapshotQuirk implements Quirk {
    private static final Set<String> PROBLEMATIC_UNI_SOC_MODELS = new HashSet(Arrays.asList("itel l6006", "itel w6004", "moto g(20)", "moto e13", "moto e20", "rmx3231", "rmx3511", "sm-a032f", "sm-a035m", "tecno mobile bf6"));

    private static boolean isHuaweiPSmart() {
        if ("HUAWEI".equalsIgnoreCase(Build.BRAND) && "FIG-LX1".equalsIgnoreCase(Build.MODEL)) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0020, code lost:
    
        if ("Spreadtrum".equalsIgnoreCase(r1) == false) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static boolean isUniSocChipsetDevice() {
        String str;
        Set<String> set = PROBLEMATIC_UNI_SOC_MODELS;
        String str2 = Build.MODEL;
        Locale locale = Locale.US;
        if (!set.contains(str2.toLowerCase(locale))) {
            if (Build.VERSION.SDK_INT >= 31) {
                str = Build.SOC_MANUFACTURER;
            }
            String str3 = Build.HARDWARE;
            if (!str3.toLowerCase(locale).startsWith("ums") && (!"itel".equalsIgnoreCase(Build.BRAND) || !str3.toLowerCase(locale).startsWith("sp"))) {
                return false;
            }
        }
        return true;
    }

    public static boolean load() {
        if (!isUniSocChipsetDevice() && !isHuaweiPSmart()) {
            return false;
        }
        return true;
    }
}
