package androidx.camera.video.internal.compat.quirk;

import android.os.Build;
import androidx.annotation.NonNull;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.internal.compat.quirk.SurfaceProcessingQuirk;
import androidx.camera.video.Quality;
import java.util.Arrays;
import java.util.Locale;

/* loaded from: classes.dex */
public class ReportedVideoQualityNotSupportedQuirk implements VideoQualityQuirk, SurfaceProcessingQuirk {
    private static boolean isHuaweiMate20() {
        if ("Huawei".equalsIgnoreCase(Build.BRAND) && "HMA-L29".equalsIgnoreCase(Build.MODEL)) {
            return true;
        }
        return false;
    }

    private static boolean isHuaweiMate20Pro() {
        if ("Huawei".equalsIgnoreCase(Build.BRAND) && "LYA-AL00".equalsIgnoreCase(Build.MODEL)) {
            return true;
        }
        return false;
    }

    private static boolean isHuaweiP40Lite() {
        if ("Huawei".equalsIgnoreCase(Build.MANUFACTURER) && Arrays.asList("JNY-L21A", "JNY-L01A", "JNY-L21B", "JNY-L22A", "JNY-L02A", "JNY-L22B", "JNY-LX1").contains(Build.MODEL.toUpperCase(Locale.US))) {
            return true;
        }
        return false;
    }

    private static boolean isOppoPht110() {
        if ("OPPO".equalsIgnoreCase(Build.BRAND) && "PHT110".equalsIgnoreCase(Build.MODEL)) {
            return true;
        }
        return false;
    }

    private static boolean isVivoY91i() {
        if ("Vivo".equalsIgnoreCase(Build.BRAND) && "vivo 1820".equalsIgnoreCase(Build.MODEL)) {
            return true;
        }
        return false;
    }

    public static boolean load() {
        if (!isHuaweiMate20() && !isHuaweiMate20Pro() && !isVivoY91i() && !isHuaweiP40Lite() && !isOppoPht110()) {
            return false;
        }
        return true;
    }

    @Override // androidx.camera.video.internal.compat.quirk.VideoQualityQuirk
    public boolean isProblematicVideoQuality(@NonNull CameraInfoInternal cameraInfoInternal, @NonNull Quality quality) {
        if (!isHuaweiMate20() && !isHuaweiMate20Pro()) {
            if (isVivoY91i()) {
                if (quality == Quality.HD || quality == Quality.FHD) {
                    return true;
                }
                return false;
            }
            if (isHuaweiP40Lite()) {
                if (cameraInfoInternal.getLensFacing() == 0 && (quality == Quality.FHD || quality == Quality.HD)) {
                    return true;
                }
                return false;
            }
            if (isOppoPht110() && cameraInfoInternal.getLensFacing() == 1 && quality == Quality.UHD) {
                return true;
            }
            return false;
        }
        if (quality == Quality.UHD) {
            return true;
        }
        return false;
    }

    @Override // androidx.camera.core.internal.compat.quirk.SurfaceProcessingQuirk
    public boolean workaroundBySurfaceProcessing() {
        if (!isHuaweiMate20() && !isHuaweiMate20Pro() && !isHuaweiP40Lite() && !isOppoPht110()) {
            return false;
        }
        return true;
    }
}
