package androidx.camera.camera2.internal.compat.quirk;

import android.os.Build;
import androidx.camera.core.internal.compat.quirk.SurfaceProcessingQuirk;
import defpackage.AbstractC0517x4ad4e4fd;
import defpackage.AbstractC1214x8a7878a2;

/* loaded from: classes.dex */
public class PreviewDelayWhenVideoCaptureIsBoundQuirk implements CaptureIntentPreviewQuirk, SurfaceProcessingQuirk {
    public static boolean load() {
        return "Huawei".equalsIgnoreCase(Build.MANUFACTURER);
    }

    @Override // androidx.camera.camera2.internal.compat.quirk.CaptureIntentPreviewQuirk
    public final /* synthetic */ boolean workaroundByCaptureIntentPreview() {
        return AbstractC0517x4ad4e4fd.m3155xfbe0c504(this);
    }

    @Override // androidx.camera.core.internal.compat.quirk.SurfaceProcessingQuirk
    public final /* synthetic */ boolean workaroundBySurfaceProcessing() {
        return AbstractC1214x8a7878a2.m3958xfbe0c504(this);
    }
}
