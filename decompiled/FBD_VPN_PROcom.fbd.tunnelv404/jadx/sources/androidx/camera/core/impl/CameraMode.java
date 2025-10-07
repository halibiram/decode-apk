package androidx.camera.core.impl;

import androidx.annotation.NonNull;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes.dex */
public final class CameraMode {
    public static final int CONCURRENT_CAMERA = 1;
    public static final int DEFAULT = 0;
    public static final int ULTRA_HIGH_RESOLUTION_CAMERA = 2;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface Mode {
    }

    private CameraMode() {
    }

    @NonNull
    public static String toLabelString(int i) {
        if (i != 1) {
            if (i != 2) {
                return "DEFAULT";
            }
            return "ULTRA_HIGH_RESOLUTION_CAMERA";
        }
        return "CONCURRENT_CAMERA";
    }
}
