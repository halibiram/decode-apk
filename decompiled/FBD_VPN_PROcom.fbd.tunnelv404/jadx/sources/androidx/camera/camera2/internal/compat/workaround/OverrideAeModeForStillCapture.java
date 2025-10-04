package androidx.camera.camera2.internal.compat.workaround;

import androidx.annotation.NonNull;
import androidx.camera.camera2.internal.compat.quirk.AutoFlashUnderExposedQuirk;
import androidx.camera.core.impl.Quirks;

/* loaded from: classes.dex */
public class OverrideAeModeForStillCapture {
    private boolean mAePrecaptureStarted = false;
    private final boolean mHasAutoFlashUnderExposedQuirk;

    public OverrideAeModeForStillCapture(@NonNull Quirks quirks) {
        this.mHasAutoFlashUnderExposedQuirk = quirks.get(AutoFlashUnderExposedQuirk.class) != null;
    }

    public void onAePrecaptureFinished() {
        this.mAePrecaptureStarted = false;
    }

    public void onAePrecaptureStarted() {
        this.mAePrecaptureStarted = true;
    }

    public boolean shouldSetAeModeAlwaysFlash(int i) {
        if (this.mAePrecaptureStarted && i == 0 && this.mHasAutoFlashUnderExposedQuirk) {
            return true;
        }
        return false;
    }
}
