package androidx.core.hardware.display;

import android.annotation.SuppressLint;
import android.content.Context;
import android.hardware.display.DisplayManager;
import android.os.Build;
import android.view.Display;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import j$.util.Objects;

/* loaded from: classes.dex */
public final class DisplayManagerCompat {

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @VisibleForTesting
    static final String DISPLAY_CATEGORY_ALL = "android.hardware.display.category.ALL_INCLUDING_DISABLED";

    @ExperimentalDisplayApi
    public static final String DISPLAY_CATEGORY_BUILT_IN_DISPLAYS = "android.hardware.display.category.BUILT_IN_DISPLAYS";
    public static final String DISPLAY_CATEGORY_PRESENTATION = "android.hardware.display.category.PRESENTATION";

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @VisibleForTesting
    static final int DISPLAY_TYPE_INTERNAL = 1;
    private final Context mContext;

    private DisplayManagerCompat(Context context) {
        this.mContext = context;
    }

    private static Display[] computeBuiltInDisplays(DisplayManager displayManager) {
        Display[] displays;
        if (Build.VERSION.SDK_INT >= 32) {
            displays = displayManager.getDisplays(DISPLAY_CATEGORY_ALL);
        } else {
            displays = displayManager.getDisplays();
        }
        Display[] displayArr = new Display[numberOfDisplaysByType(1, displays)];
        int i = 0;
        for (Display display : displays) {
            if (1 == getTypeCompat(display)) {
                displayArr[i] = display;
                i++;
            }
        }
        return displayArr;
    }

    public static DisplayManagerCompat getInstance(Context context) {
        return new DisplayManagerCompat(context);
    }

    @SuppressLint({"BanUncheckedReflection"})
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @VisibleForTesting
    public static int getTypeCompat(Display display) {
        try {
            Object invoke = Display.class.getMethod("getType", null).invoke(display, null);
            Objects.requireNonNull(invoke);
            return ((Integer) invoke).intValue();
        } catch (NoSuchMethodException unused) {
            return 0;
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    private static int numberOfDisplaysByType(int i, Display[] displayArr) {
        int i2 = 0;
        for (Display display : displayArr) {
            if (i == getTypeCompat(display)) {
                i2++;
            }
        }
        return i2;
    }

    public Display getDisplay(int i) {
        return ((DisplayManager) this.mContext.getSystemService("display")).getDisplay(i);
    }

    public Display[] getDisplays() {
        return ((DisplayManager) this.mContext.getSystemService("display")).getDisplays();
    }

    public Display[] getDisplays(String str) {
        DisplayManager displayManager = (DisplayManager) this.mContext.getSystemService("display");
        if (DISPLAY_CATEGORY_BUILT_IN_DISPLAYS.equals(str)) {
            return computeBuiltInDisplays(displayManager);
        }
        return ((DisplayManager) this.mContext.getSystemService("display")).getDisplays(str);
    }
}
