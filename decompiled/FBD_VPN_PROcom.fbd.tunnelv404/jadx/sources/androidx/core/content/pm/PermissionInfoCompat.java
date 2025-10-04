package androidx.core.content.pm;

import android.annotation.SuppressLint;
import android.content.pm.PermissionInfo;
import android.os.Build;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes.dex */
public final class PermissionInfoCompat {

    @RequiresApi(28)
    /* loaded from: classes.dex */
    public static class Api28Impl {
        private Api28Impl() {
        }

        public static int getProtection(PermissionInfo permissionInfo) {
            return permissionInfo.getProtection();
        }

        public static int getProtectionFlags(PermissionInfo permissionInfo) {
            return permissionInfo.getProtectionFlags();
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes.dex */
    public @interface Protection {
    }

    @SuppressLint({"UniqueConstants"})
    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes.dex */
    public @interface ProtectionFlags {
    }

    private PermissionInfoCompat() {
    }

    @SuppressLint({"WrongConstant"})
    public static int getProtection(PermissionInfo permissionInfo) {
        if (Build.VERSION.SDK_INT >= 28) {
            return Api28Impl.getProtection(permissionInfo);
        }
        return permissionInfo.protectionLevel & 15;
    }

    @SuppressLint({"WrongConstant"})
    public static int getProtectionFlags(PermissionInfo permissionInfo) {
        if (Build.VERSION.SDK_INT >= 28) {
            return Api28Impl.getProtectionFlags(permissionInfo);
        }
        return permissionInfo.protectionLevel & (-16);
    }
}
