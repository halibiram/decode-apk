package com.v2ray.ang.service;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import android.os.Build;
import androidx.annotation.RequiresApi;
import androidx.core.app.NotificationCompat;
import com.panda912.muddy.ObfuscatedString;
import com.tknetwork.tunnel.activities.ActivityUi;
import com.v2ray.ang.R;
import com.v2ray.ang.dto.ProfileItem;
import com.v2ray.ang.extension._ExtKt;
import com.v2ray.ang.handler.MmkvManager;
import defpackage.AbstractC0594x7175b0df;
import defpackage.AbstractC1319x9e4ecaa8;
import java.lang.ref.SoftReference;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.internal.ProgressionUtilKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015J\u0010\u0010\u0016\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015J\u0006\u0010\u0017\u001a\u00020\u0013J\u0010\u0010\u0018\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015J\b\u0010\u0019\u001a\u00020\u001aH\u0003J\"\u0010\u001b\u001a\u00020\u00132\b\u0010\u001c\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u001d\u001a\u00020\u000b2\u0006\u0010\u001e\u001a\u00020\u000bH\u0002J\n\u0010\u001f\u001a\u0004\u0018\u00010\u0011H\u0002J.\u0010 \u001a\u00020\u00132\n\u0010!\u001a\u00060\"j\u0002`#2\b\u0010$\u001a\u0004\u0018\u00010\u001a2\u0006\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020&H\u0002J\n\u0010(\u001a\u0004\u0018\u00010)H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006*"}, d2 = {"Lcom/v2ray/ang/service/NotificationService;", "", "<init>", "()V", "NOTIFICATION_ID", "", "NOTIFICATION_PENDING_INTENT_CONTENT", "NOTIFICATION_PENDING_INTENT_STOP_V2RAY", "NOTIFICATION_PENDING_INTENT_RESTART_V2RAY", "NOTIFICATION_ICON_THRESHOLD", "lastQueryTime", "", "mBuilder", "Landroidx/core/app/NotificationCompat$Builder;", "speedNotificationJob", "Lkotlinx/coroutines/Job;", "mNotificationManager", "Landroid/app/NotificationManager;", "startSpeedNotification", "", "currentConfig", "Lcom/v2ray/ang/dto/ProfileItem;", "showNotification", "cancelNotification", "stopSpeedNotification", "createNotificationChannel", "", "updateNotification", "contentText", "proxyTraffic", "directTraffic", "getNotificationManager", "appendSpeedString", "text", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "name", "up", "", "down", "getService", "Landroid/app/Service;", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class NotificationService {

    @NotNull
    public static final NotificationService INSTANCE = new NotificationService();
    private static final int NOTIFICATION_ICON_THRESHOLD = 3000;
    private static final int NOTIFICATION_ID = 1;
    private static final int NOTIFICATION_PENDING_INTENT_CONTENT = 0;
    private static final int NOTIFICATION_PENDING_INTENT_RESTART_V2RAY = 2;
    private static final int NOTIFICATION_PENDING_INTENT_STOP_V2RAY = 1;
    private static long lastQueryTime;

    @Nullable
    private static NotificationCompat.Builder mBuilder;

    @Nullable
    private static NotificationManager mNotificationManager;

    @Nullable
    private static Job speedNotificationJob;

    private NotificationService() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void appendSpeedString(StringBuilder text, String name, double up, double down) {
        if (name == null) {
            name = new ObfuscatedString(new long[]{5888511024840250899L, 3506631560634288930L}).toString();
        }
        String substring = name.substring(0, Math.min(name.length(), 6));
        Intrinsics.checkNotNullExpressionValue(substring, new ObfuscatedString(new long[]{-7051768970784396997L, -8455736736076206107L, 7014354230550893234L}).toString());
        text.append(substring);
        int length = substring.length();
        int progressionLastElement = ProgressionUtilKt.getProgressionLastElement(length, 6, 2);
        if (length <= progressionLastElement) {
            while (true) {
                text.append(new ObfuscatedString(new long[]{-9074814338967838619L, 4177020445082700561L}).toString());
                if (length == progressionLastElement) {
                    break;
                } else {
                    length += 2;
                }
            }
        }
        text.append("•  " + _ExtKt.toSpeedString((long) up) + "↑  " + _ExtKt.toSpeedString((long) down) + "↓\n");
    }

    @RequiresApi(26)
    private final String createNotificationChannel() {
        String obfuscatedString = new ObfuscatedString(new long[]{9118918454783648874L, -8248067274736622723L, 8137469092445562859L}).toString();
        String obfuscatedString2 = new ObfuscatedString(new long[]{7584957107396940867L, -9019277866372023027L, -8178393761246603859L, 3749403293017013391L, -3629184936179601091L}).toString();
        AbstractC1319x9e4ecaa8.m4347x9738a56c();
        NotificationChannel m3170x34271fae = AbstractC0594x7175b0df.m3170x34271fae(obfuscatedString, obfuscatedString2);
        m3170x34271fae.setLightColor(-12303292);
        m3170x34271fae.setImportance(0);
        m3170x34271fae.setLockscreenVisibility(0);
        NotificationManager notificationManager = getNotificationManager();
        if (notificationManager != null) {
            notificationManager.createNotificationChannel(m3170x34271fae);
        }
        return obfuscatedString;
    }

    private final NotificationManager getNotificationManager() {
        if (mNotificationManager == null) {
            Service service = getService();
            if (service == null) {
                return null;
            }
            Object systemService = service.getSystemService(new ObfuscatedString(new long[]{8366907337621101776L, -1816623854121545066L, 8723654230459727643L}).toString());
            Intrinsics.checkNotNull(systemService, new ObfuscatedString(new long[]{-3048716808212518542L, 5183855297552072671L, -6083759936338285310L, 2643359954690696112L, -4624711523155471107L, 3887976897992764597L, 6393046937177733918L, 4360654498301049289L, -5006683546038943388L, -247018422009390662L}).toString());
            mNotificationManager = (NotificationManager) systemService;
        }
        return mNotificationManager;
    }

    private final Service getService() {
        ServiceControl serviceControl;
        SoftReference<ServiceControl> serviceControl2 = V2RayServiceManager.INSTANCE.getServiceControl();
        if (serviceControl2 != null && (serviceControl = serviceControl2.get()) != null) {
            return serviceControl.getService();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateNotification(String contentText, long proxyTraffic, long directTraffic) {
        Notification notification;
        NotificationCompat.Builder builder = mBuilder;
        if (builder != null) {
            if (proxyTraffic < 3000 && directTraffic < 3000) {
                if (builder != null) {
                    builder.setSmallIcon(R.drawable.ic_stat_name);
                }
            } else if (proxyTraffic > directTraffic) {
                if (builder != null) {
                    builder.setSmallIcon(R.drawable.ic_stat_proxy);
                }
            } else if (builder != null) {
                builder.setSmallIcon(R.drawable.ic_stat_direct);
            }
            NotificationCompat.Builder builder2 = mBuilder;
            if (builder2 != null) {
                builder2.setStyle(new NotificationCompat.BigTextStyle().bigText(contentText));
            }
            NotificationCompat.Builder builder3 = mBuilder;
            if (builder3 != null) {
                builder3.setContentText(contentText);
            }
            NotificationManager notificationManager = getNotificationManager();
            if (notificationManager != null) {
                NotificationCompat.Builder builder4 = mBuilder;
                if (builder4 != null) {
                    notification = builder4.build();
                } else {
                    notification = null;
                }
                notificationManager.notify(1, notification);
            }
        }
    }

    public final void cancelNotification() {
        Service service = getService();
        if (service == null) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 24) {
            service.stopForeground(1);
        } else {
            service.stopForeground(true);
        }
        mBuilder = null;
        Job job = speedNotificationJob;
        if (job != null) {
            Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
        }
        speedNotificationJob = null;
        mNotificationManager = null;
    }

    public final void showNotification(@Nullable ProfileItem currentConfig) {
        int i;
        String obfuscatedString;
        String str;
        Service service = getService();
        if (service == null) {
            return;
        }
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 23) {
            i = 201326592;
        } else {
            i = 134217728;
        }
        PendingIntent activity = PendingIntent.getActivity(service, 0, new Intent(service, (Class<?>) ActivityUi.class), i);
        Intent intent = new Intent(new ObfuscatedString(new long[]{-8796256854730132406L, 5714355086213602255L, -5754357040896825097L, -8828190840250097255L, -7781915821620059156L}).toString());
        intent.setPackage(new ObfuscatedString(new long[]{8441800103892665292L, 3013291331863079394L, -9208752824294956606L}).toString());
        intent.putExtra(new ObfuscatedString(new long[]{2961213319812445185L, -3186502972640755502L}).toString(), 4);
        PendingIntent broadcast = PendingIntent.getBroadcast(service, 1, intent, i);
        Intent intent2 = new Intent(new ObfuscatedString(new long[]{2886914683991601198L, 379214836975167643L, 2209610240232195163L, 7233015974587655585L, 4356734768527897023L}).toString());
        intent2.setPackage(new ObfuscatedString(new long[]{2213779120018737058L, -7708352973147066346L, -2691500694269660390L}).toString());
        intent2.putExtra(new ObfuscatedString(new long[]{4993461291798448711L, 6375839327340138402L}).toString(), 5);
        PendingIntent broadcast2 = PendingIntent.getBroadcast(service, 2, intent2, i);
        if (i2 >= 26) {
            obfuscatedString = createNotificationChannel();
        } else {
            obfuscatedString = new ObfuscatedString(new long[]{8109770133944171003L}).toString();
        }
        NotificationCompat.Builder smallIcon = new NotificationCompat.Builder(service, obfuscatedString).setSmallIcon(R.drawable.ic_stat_name);
        Notification notification = null;
        if (currentConfig != null) {
            str = currentConfig.getRemarks();
        } else {
            str = null;
        }
        NotificationCompat.Builder addAction = smallIcon.setContentTitle(str).setPriority(-2).setOngoing(true).setShowWhen(false).setOnlyAlertOnce(true).setContentIntent(activity).addAction(com.fbd.tunnel.R.drawable.ic_delete_24dp, service.getString(com.fbd.tunnel.R.string.notification_action_stop_v2ray), broadcast).addAction(com.fbd.tunnel.R.drawable.ic_delete_24dp, service.getString(com.fbd.tunnel.R.string.title_service_restart), broadcast2);
        mBuilder = addAction;
        if (addAction != null) {
            notification = addAction.build();
        }
        service.startForeground(1, notification);
    }

    public final void startSpeedNotification(@Nullable ProfileItem currentConfig) {
        List<String> list;
        if (MmkvManager.INSTANCE.decodeSettingsBool(new ObfuscatedString(new long[]{-8089899622678116774L, -7631580199492070375L, -8769259814811344150L, 7270072529797471147L}).toString()) && speedNotificationJob == null && V2RayServiceManager.INSTANCE.isRunning()) {
            lastQueryTime = System.currentTimeMillis();
            Ref.BooleanRef booleanRef = new Ref.BooleanRef();
            if (currentConfig != null) {
                list = currentConfig.getAllOutboundTags();
            } else {
                list = null;
            }
            if (list != null) {
                list.remove(new ObfuscatedString(new long[]{-8964596004279066727L, -321331636481962180L}).toString());
            }
            speedNotificationJob = BuildersKt.launch$default(CoroutineScopeKt.CoroutineScope(Dispatchers.getIO()), null, null, new NotificationService$startSpeedNotification$1(list, booleanRef, null), 3, null);
        }
    }

    public final void stopSpeedNotification(@Nullable ProfileItem currentConfig) {
        Job job = speedNotificationJob;
        if (job != null) {
            String str = null;
            Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
            speedNotificationJob = null;
            NotificationService notificationService = INSTANCE;
            if (currentConfig != null) {
                str = currentConfig.getRemarks();
            }
            notificationService.updateNotification(str, 0L, 0L);
        }
    }
}
