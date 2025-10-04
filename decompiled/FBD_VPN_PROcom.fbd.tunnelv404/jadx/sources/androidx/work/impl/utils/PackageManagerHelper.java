package androidx.work.impl.utils;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import androidx.annotation.NonNull;
import androidx.work.Logger;

/* loaded from: classes.dex */
public class PackageManagerHelper {
    private static final String TAG = Logger.tagWithPrefix("PackageManagerHelper");

    private PackageManagerHelper() {
    }

    private static int getComponentEnabledSetting(@NonNull Context context, @NonNull String str) {
        return context.getPackageManager().getComponentEnabledSetting(new ComponentName(context, str));
    }

    private static boolean isComponentEnabled(int i, boolean z) {
        return i == 0 ? z : i == 1;
    }

    public static boolean isComponentExplicitlyEnabled(@NonNull Context context, @NonNull Class<?> cls) {
        return isComponentEnabled(getComponentEnabledSetting(context, cls.getName()), false);
    }

    public static void setComponentEnabled(@NonNull Context context, @NonNull Class<?> cls, boolean z) {
        int i;
        String str;
        String str2 = "disabled";
        try {
            if (z == isComponentEnabled(getComponentEnabledSetting(context, cls.getName()), false)) {
                Logger.get().debug(TAG, "Skipping component enablement for ".concat(cls.getName()));
                return;
            }
            PackageManager packageManager = context.getPackageManager();
            ComponentName componentName = new ComponentName(context, cls.getName());
            if (z) {
                i = 1;
            } else {
                i = 2;
            }
            packageManager.setComponentEnabledSetting(componentName, i, 1);
            Logger logger = Logger.get();
            String str3 = TAG;
            StringBuilder sb = new StringBuilder();
            sb.append(cls.getName());
            sb.append(" ");
            if (!z) {
                str = "disabled";
            } else {
                str = "enabled";
            }
            sb.append(str);
            logger.debug(str3, sb.toString());
        } catch (Exception e) {
            Logger logger2 = Logger.get();
            String str4 = TAG;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(cls.getName());
            sb2.append("could not be ");
            if (z) {
                str2 = "enabled";
            }
            sb2.append(str2);
            logger2.debug(str4, sb2.toString(), e);
        }
    }

    public static boolean isComponentExplicitlyEnabled(@NonNull Context context, @NonNull String str) {
        return getComponentEnabledSetting(context, str) == 1;
    }
}
