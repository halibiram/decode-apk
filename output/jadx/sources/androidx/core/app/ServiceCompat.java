package androidx.core.app;

import android.app.Notification;
import android.app.Service;
import android.os.Build;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes.dex */
public final class ServiceCompat {
    private static final int FOREGROUND_SERVICE_TYPE_ALLOWED_SINCE_Q = 255;
    private static final int FOREGROUND_SERVICE_TYPE_ALLOWED_SINCE_U = 1073745919;
    public static final int START_STICKY = 1;
    public static final int STOP_FOREGROUND_DETACH = 2;
    public static final int STOP_FOREGROUND_REMOVE = 1;

    @RequiresApi(24)
    /* loaded from: classes.dex */
    public static class Api24Impl {
        private Api24Impl() {
        }

        public static void stopForeground(Service service, int i) {
            service.stopForeground(i);
        }
    }

    @RequiresApi(29)
    /* loaded from: classes.dex */
    public static class Api29Impl {
        private Api29Impl() {
        }

        public static void startForeground(Service service, int i, Notification notification, int i2) {
            if (i2 != 0 && i2 != -1) {
                service.startForeground(i, notification, i2 & 255);
            } else {
                service.startForeground(i, notification, i2);
            }
        }
    }

    @RequiresApi(34)
    /* loaded from: classes.dex */
    public static class Api34Impl {
        private Api34Impl() {
        }

        public static void startForeground(Service service, int i, Notification notification, int i2) {
            if (i2 != 0 && i2 != -1) {
                service.startForeground(i, notification, i2 & ServiceCompat.FOREGROUND_SERVICE_TYPE_ALLOWED_SINCE_U);
            } else {
                service.startForeground(i, notification, i2);
            }
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public @interface StopForegroundFlags {
    }

    private ServiceCompat() {
    }

    public static void startForeground(Service service, int i, Notification notification, int i2) {
        int i3 = Build.VERSION.SDK_INT;
        if (i3 >= 34) {
            Api34Impl.startForeground(service, i, notification, i2);
        } else if (i3 >= 29) {
            Api29Impl.startForeground(service, i, notification, i2);
        } else {
            service.startForeground(i, notification);
        }
    }

    public static void stopForeground(Service service, int i) {
        if (Build.VERSION.SDK_INT >= 24) {
            Api24Impl.stopForeground(service, i);
            return;
        }
        boolean z = true;
        if ((i & 1) == 0) {
            z = false;
        }
        service.stopForeground(z);
    }
}
