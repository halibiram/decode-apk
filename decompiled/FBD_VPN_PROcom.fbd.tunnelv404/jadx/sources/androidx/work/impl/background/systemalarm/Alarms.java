package androidx.work.impl.background.systemalarm;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.core.app.NotificationCompat;
import androidx.work.Logger;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.model.SystemIdInfo;
import androidx.work.impl.model.SystemIdInfoDao;
import androidx.work.impl.model.SystemIdInfoKt;
import androidx.work.impl.model.WorkGenerationalId;
import androidx.work.impl.utils.IdGenerator;

/* JADX INFO: Access modifiers changed from: package-private */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class Alarms {
    private static final String TAG = Logger.tagWithPrefix("Alarms");

    private Alarms() {
    }

    public static void cancelAlarm(@NonNull Context context, @NonNull WorkDatabase workDatabase, @NonNull WorkGenerationalId workGenerationalId) {
        SystemIdInfoDao systemIdInfoDao = workDatabase.systemIdInfoDao();
        SystemIdInfo systemIdInfo = systemIdInfoDao.getSystemIdInfo(workGenerationalId);
        if (systemIdInfo != null) {
            cancelExactAlarm(context, workGenerationalId, systemIdInfo.systemId);
            Logger.get().debug(TAG, "Removing SystemIdInfo for workSpecId (" + workGenerationalId + ")");
            systemIdInfoDao.removeSystemIdInfo(workGenerationalId);
        }
    }

    private static void cancelExactAlarm(@NonNull Context context, @NonNull WorkGenerationalId workGenerationalId, int i) {
        int i2;
        AlarmManager alarmManager = (AlarmManager) context.getSystemService(NotificationCompat.CATEGORY_ALARM);
        Intent createDelayMetIntent = CommandHandler.createDelayMetIntent(context, workGenerationalId);
        if (Build.VERSION.SDK_INT >= 23) {
            i2 = 603979776;
        } else {
            i2 = 536870912;
        }
        PendingIntent service = PendingIntent.getService(context, i, createDelayMetIntent, i2);
        if (service != null && alarmManager != null) {
            Logger.get().debug(TAG, "Cancelling existing alarm with (workSpecId, systemId) (" + workGenerationalId + ", " + i + ")");
            alarmManager.cancel(service);
        }
    }

    public static void setAlarm(@NonNull Context context, @NonNull WorkDatabase workDatabase, @NonNull WorkGenerationalId workGenerationalId, long j) {
        SystemIdInfoDao systemIdInfoDao = workDatabase.systemIdInfoDao();
        SystemIdInfo systemIdInfo = systemIdInfoDao.getSystemIdInfo(workGenerationalId);
        if (systemIdInfo != null) {
            cancelExactAlarm(context, workGenerationalId, systemIdInfo.systemId);
            setExactAlarm(context, workGenerationalId, systemIdInfo.systemId, j);
        } else {
            int nextAlarmManagerId = new IdGenerator(workDatabase).nextAlarmManagerId();
            systemIdInfoDao.insertSystemIdInfo(SystemIdInfoKt.systemIdInfo(workGenerationalId, nextAlarmManagerId));
            setExactAlarm(context, workGenerationalId, nextAlarmManagerId, j);
        }
    }

    private static void setExactAlarm(@NonNull Context context, @NonNull WorkGenerationalId workGenerationalId, int i, long j) {
        int i2;
        AlarmManager alarmManager = (AlarmManager) context.getSystemService(NotificationCompat.CATEGORY_ALARM);
        if (Build.VERSION.SDK_INT >= 23) {
            i2 = 201326592;
        } else {
            i2 = 134217728;
        }
        PendingIntent service = PendingIntent.getService(context, i, CommandHandler.createDelayMetIntent(context, workGenerationalId), i2);
        if (alarmManager != null) {
            alarmManager.setExact(0, j, service);
        }
    }
}
