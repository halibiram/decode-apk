package androidx.camera.video.internal.compat.quirk;

import android.os.Build;
import androidx.camera.core.internal.compat.quirk.SurfaceProcessingQuirk;
import defpackage.AbstractC1214x8a7878a2;

/* loaded from: classes.dex */
public class ExtraSupportedResolutionQuirk implements SurfaceProcessingQuirk {
    private static boolean isMotoE5Play() {
        if ("motorola".equalsIgnoreCase(Build.BRAND) && "moto e5 play".equalsIgnoreCase(Build.MODEL)) {
            return true;
        }
        return false;
    }

    public static boolean load() {
        return isMotoE5Play();
    }

    @Override // androidx.camera.core.internal.compat.quirk.SurfaceProcessingQuirk
    public final /* synthetic */ boolean workaroundBySurfaceProcessing() {
        return AbstractC1214x8a7878a2.m3958xfbe0c504(this);
    }
}
