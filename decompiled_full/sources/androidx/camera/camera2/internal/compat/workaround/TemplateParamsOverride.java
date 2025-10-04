package androidx.camera.camera2.internal.compat.workaround;

import android.hardware.camera2.CaptureRequest;
import androidx.annotation.NonNull;
import androidx.camera.camera2.internal.compat.quirk.ImageCaptureFailedForVideoSnapshotQuirk;
import androidx.camera.core.impl.Quirks;
import defpackage.AbstractC0517x4ad4e4fd;
import j$.util.DesugarCollections;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class TemplateParamsOverride {
    private final boolean mWorkaroundByCaptureIntentPreview;
    private final boolean mWorkaroundByCaptureIntentStillCapture;

    public TemplateParamsOverride(@NonNull Quirks quirks) {
        this.mWorkaroundByCaptureIntentPreview = AbstractC0517x4ad4e4fd.m3156x3271d0aa(quirks);
        this.mWorkaroundByCaptureIntentStillCapture = quirks.contains(ImageCaptureFailedForVideoSnapshotQuirk.class);
    }

    @NonNull
    public Map<CaptureRequest.Key<?>, Object> getOverrideParams(int i) {
        if (i == 3 && this.mWorkaroundByCaptureIntentPreview) {
            HashMap hashMap = new HashMap();
            hashMap.put(CaptureRequest.CONTROL_CAPTURE_INTENT, 1);
            return DesugarCollections.unmodifiableMap(hashMap);
        }
        if (i == 4 && this.mWorkaroundByCaptureIntentStillCapture) {
            HashMap hashMap2 = new HashMap();
            hashMap2.put(CaptureRequest.CONTROL_CAPTURE_INTENT, 2);
            return DesugarCollections.unmodifiableMap(hashMap2);
        }
        return Collections.emptyMap();
    }
}
