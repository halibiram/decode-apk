package androidx.camera.camera2.internal.compat.quirk;

import android.os.Build;
import defpackage.AbstractC0517x4ad4e4fd;

/* loaded from: classes.dex */
public class PreviewStretchWhenVideoCaptureIsBoundQuirk implements CaptureIntentPreviewQuirk {
    private static boolean isHuaweiP8Lite() {
        if ("HUAWEI".equalsIgnoreCase(Build.MANUFACTURER) && "HUAWEI ALE-L04".equalsIgnoreCase(Build.MODEL)) {
            return true;
        }
        return false;
    }

    private static boolean isOppoA37F() {
        if ("OPPO".equalsIgnoreCase(Build.MANUFACTURER) && "A37F".equalsIgnoreCase(Build.MODEL)) {
            return true;
        }
        return false;
    }

    private static boolean isSamsungJ1AceNeo() {
        if ("Samsung".equalsIgnoreCase(Build.MANUFACTURER) && "sm-j111f".equalsIgnoreCase(Build.MODEL)) {
            return true;
        }
        return false;
    }

    private static boolean isSamsungJ3() {
        if ("Samsung".equalsIgnoreCase(Build.MANUFACTURER) && "sm-j320f".equalsIgnoreCase(Build.MODEL)) {
            return true;
        }
        return false;
    }

    private static boolean isSamsungJ5() {
        if ("Samsung".equalsIgnoreCase(Build.MANUFACTURER) && "sm-j510fn".equalsIgnoreCase(Build.MODEL)) {
            return true;
        }
        return false;
    }

    private static boolean isSamsungJ7() {
        if ("Samsung".equalsIgnoreCase(Build.MANUFACTURER) && "sm-j700f".equalsIgnoreCase(Build.MODEL)) {
            return true;
        }
        return false;
    }

    public static boolean load() {
        if (!isHuaweiP8Lite() && !isSamsungJ3() && !isSamsungJ7() && !isSamsungJ1AceNeo() && !isOppoA37F() && !isSamsungJ5()) {
            return false;
        }
        return true;
    }

    @Override // androidx.camera.camera2.internal.compat.quirk.CaptureIntentPreviewQuirk
    public final /* synthetic */ boolean workaroundByCaptureIntentPreview() {
        return AbstractC0517x4ad4e4fd.m3155xfbe0c504(this);
    }
}
