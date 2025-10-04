package androidx.browser.trusted;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.Context;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import defpackage.AbstractC1005xc1f7307f;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
class NotificationApiHelperForO {
    private NotificationApiHelperForO() {
    }

    @Nullable
    @RequiresApi(26)
    public static Notification copyNotificationOntoChannel(Context context, NotificationManager notificationManager, Notification notification, String str, String str2) {
        NotificationChannel notificationChannel;
        int importance;
        Notification.Builder recoverBuilder;
        notificationManager.createNotificationChannel(AbstractC1005xc1f7307f.m3563x1378447b(str, str2));
        notificationChannel = notificationManager.getNotificationChannel(str);
        importance = notificationChannel.getImportance();
        if (importance != 0) {
            recoverBuilder = Notification.Builder.recoverBuilder(context, notification);
            recoverBuilder.setChannelId(str);
            return recoverBuilder.build();
        }
        return null;
    }

    @RequiresApi(26)
    public static boolean isChannelEnabled(NotificationManager notificationManager, String str) {
        NotificationChannel notificationChannel;
        int importance;
        notificationChannel = notificationManager.getNotificationChannel(str);
        if (notificationChannel != null) {
            importance = notificationChannel.getImportance();
            if (importance == 0) {
                return false;
            }
        }
        return true;
    }
}
