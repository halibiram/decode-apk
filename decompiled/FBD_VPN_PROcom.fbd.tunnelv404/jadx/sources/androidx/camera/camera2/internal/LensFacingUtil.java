package androidx.camera.camera2.internal;

import androidx.annotation.OptIn;
import androidx.camera.core.ExperimentalLensFacing;
import defpackage.AbstractC0749x8313616e;

/* loaded from: classes.dex */
public class LensFacingUtil {
    private LensFacingUtil() {
    }

    @OptIn(markerClass = {ExperimentalLensFacing.class})
    public static int getCameraSelectorLensFacing(int i) {
        if (i != 0) {
            if (i == 1) {
                return 1;
            }
            if (i == 2) {
                return 2;
            }
            throw new IllegalArgumentException(AbstractC0749x8313616e.m3330x95f25580(i, "The given lens facing integer: ", " can not be recognized."));
        }
        return 0;
    }

    @OptIn(markerClass = {ExperimentalLensFacing.class})
    public static int getLensFacingInt(int i) {
        if (i != 0) {
            if (i == 1) {
                return 1;
            }
            if (i == 2) {
                return 2;
            }
            throw new IllegalArgumentException(AbstractC0749x8313616e.m3330x95f25580(i, "The given lens facing: ", " can not be recognized."));
        }
        return 0;
    }
}
