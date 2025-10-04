package androidx.test.platform.graphics;

import android.os.Build;
import androidx.test.internal.platform.reflect.ReflectionException;
import androidx.test.internal.platform.reflect.ReflectiveMethod;

/* loaded from: classes.dex */
public class HardwareRendererCompat {
    private static final String TAG = "HardwareRendererCompat";
    private static final ReflectiveMethod<Boolean> isDrawingEnabledReflectiveCall = new ReflectiveMethod<>("android.graphics.HardwareRenderer", "isDrawingEnabled", (Class<?>[]) new Class[0]);
    private static final ReflectiveMethod<Void> setDrawingEnabledReflectiveCall = new ReflectiveMethod<>("android.graphics.HardwareRenderer", "setDrawingEnabled", (Class<?>[]) new Class[]{Boolean.TYPE});

    private HardwareRendererCompat() {
    }

    public static boolean isDrawingEnabled() {
        if (Build.VERSION.SDK_INT < 30) {
            return true;
        }
        try {
            return isDrawingEnabledReflectiveCall.invokeStatic(new Object[0]).booleanValue();
        } catch (ReflectionException unused) {
            return true;
        }
    }

    public static void setDrawingEnabled(boolean z) {
        if (Build.VERSION.SDK_INT < 30) {
            return;
        }
        try {
            setDrawingEnabledReflectiveCall.invokeStatic(Boolean.valueOf(z));
        } catch (ReflectionException unused) {
        }
    }
}
