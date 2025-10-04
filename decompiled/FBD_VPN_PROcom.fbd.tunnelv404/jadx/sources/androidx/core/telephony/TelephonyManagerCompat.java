package androidx.core.telephony;

import android.annotation.SuppressLint;
import android.os.Build;
import android.telephony.TelephonyManager;
import androidx.annotation.RequiresApi;
import androidx.annotation.RequiresPermission;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class TelephonyManagerCompat {
    private static Method sGetDeviceIdMethod;
    private static Method sGetSubIdMethod;

    @RequiresApi(23)
    /* loaded from: classes.dex */
    public static class Api23Impl {
        private Api23Impl() {
        }

        @RequiresPermission("android.permission.READ_PHONE_STATE")
        @SuppressLint({"MissingPermission"})
        public static String getDeviceId(TelephonyManager telephonyManager, int i) {
            return telephonyManager.getDeviceId(i);
        }
    }

    @RequiresApi(26)
    /* loaded from: classes.dex */
    public static class Api26Impl {
        private Api26Impl() {
        }

        @RequiresPermission("android.permission.READ_PHONE_STATE")
        @SuppressLint({"MissingPermission"})
        public static String getImei(TelephonyManager telephonyManager) {
            return telephonyManager.getImei();
        }
    }

    @RequiresApi(30)
    /* loaded from: classes.dex */
    public static class Api30Impl {
        private Api30Impl() {
        }

        public static int getSubscriptionId(TelephonyManager telephonyManager) {
            return telephonyManager.getSubscriptionId();
        }
    }

    private TelephonyManagerCompat() {
    }

    @RequiresPermission("android.permission.READ_PHONE_STATE")
    @SuppressLint({"MissingPermission"})
    public static String getImei(TelephonyManager telephonyManager) {
        int subscriptionId;
        int i = Build.VERSION.SDK_INT;
        if (i >= 26) {
            return Api26Impl.getImei(telephonyManager);
        }
        if (i >= 22 && (subscriptionId = getSubscriptionId(telephonyManager)) != Integer.MAX_VALUE && subscriptionId != -1) {
            int slotIndex = SubscriptionManagerCompat.getSlotIndex(subscriptionId);
            if (i >= 23) {
                return Api23Impl.getDeviceId(telephonyManager, slotIndex);
            }
            try {
                if (sGetDeviceIdMethod == null) {
                    Method declaredMethod = TelephonyManager.class.getDeclaredMethod("getDeviceId", Integer.TYPE);
                    sGetDeviceIdMethod = declaredMethod;
                    declaredMethod.setAccessible(true);
                }
                return (String) sGetDeviceIdMethod.invoke(telephonyManager, Integer.valueOf(slotIndex));
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
                return null;
            }
        }
        return telephonyManager.getDeviceId();
    }

    @SuppressLint({"SoonBlockedPrivateApi"})
    public static int getSubscriptionId(TelephonyManager telephonyManager) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 30) {
            return Api30Impl.getSubscriptionId(telephonyManager);
        }
        if (i >= 22) {
            try {
                if (sGetSubIdMethod == null) {
                    Method declaredMethod = TelephonyManager.class.getDeclaredMethod("getSubId", null);
                    sGetSubIdMethod = declaredMethod;
                    declaredMethod.setAccessible(true);
                }
                Integer num = (Integer) sGetSubIdMethod.invoke(telephonyManager, null);
                if (num != null && num.intValue() != -1) {
                    return num.intValue();
                }
                return Integer.MAX_VALUE;
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
                return Integer.MAX_VALUE;
            }
        }
        return Integer.MAX_VALUE;
    }
}
