package androidx.camera.core.impl.utils;

import androidx.camera.core.Logger;
import defpackage.AbstractC0362x4440ab85;

/* loaded from: classes.dex */
public final class CameraOrientationUtil {
    private static final String TAG = "CameraOrientationUtil";

    private CameraOrientationUtil() {
    }

    public static int degreesToSurfaceRotation(int i) {
        if (i != 0) {
            if (i != 90) {
                if (i != 180) {
                    if (i == 270) {
                        return 3;
                    }
                    throw new IllegalStateException(AbstractC0362x4440ab85.m2929x9738a56c(i, "Invalid sensor rotation: "));
                }
                return 2;
            }
            return 1;
        }
        return 0;
    }

    public static int getRelativeImageRotation(int i, int i2, boolean z) {
        int i3;
        if (z) {
            i3 = ((i2 - i) + 360) % 360;
        } else {
            i3 = (i2 + i) % 360;
        }
        if (Logger.isVerboseEnabled(TAG)) {
            StringBuilder m2937x8c6fc18a = AbstractC0362x4440ab85.m2937x8c6fc18a(i, i2, "getRelativeImageRotation: destRotationDegrees=", ", sourceRotationDegrees=", ", isOppositeFacing=");
            m2937x8c6fc18a.append(z);
            m2937x8c6fc18a.append(", result=");
            m2937x8c6fc18a.append(i3);
            Logger.d(TAG, m2937x8c6fc18a.toString());
        }
        return i3;
    }

    public static int surfaceRotationToDegrees(int i) {
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i == 3) {
                        return 270;
                    }
                    throw new IllegalArgumentException(AbstractC0362x4440ab85.m2929x9738a56c(i, "Unsupported surface rotation: "));
                }
                return 180;
            }
            return 90;
        }
        return 0;
    }
}
