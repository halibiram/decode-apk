package com.v2ray.ang.receiver;

import android.app.PendingIntent;
import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProvider;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.widget.RemoteViews;
import com.fbd.tunnel.R;
import com.panda912.muddy.ObfuscatedString;
import com.v2ray.ang.service.V2RayServiceManager;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J \u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J(\u0010\f\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0018\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u0011H\u0016¨\u0006\u0012"}, d2 = {"Lcom/v2ray/ang/receiver/WidgetProvider;", "Landroid/appwidget/AppWidgetProvider;", "<init>", "()V", "onUpdate", "", "context", "Landroid/content/Context;", "appWidgetManager", "Landroid/appwidget/AppWidgetManager;", "appWidgetIds", "", "updateWidgetBackground", "isRunning", "", "onReceive", "intent", "Landroid/content/Intent;", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class WidgetProvider extends AppWidgetProvider {
    private final void updateWidgetBackground(Context context, AppWidgetManager appWidgetManager, int[] appWidgetIds, boolean isRunning) {
        int i;
        RemoteViews remoteViews = new RemoteViews(context.getPackageName(), R.layout.widget_switch);
        Intent intent = new Intent(context, (Class<?>) WidgetProvider.class);
        intent.setAction(new ObfuscatedString(new long[]{-6967733113908198522L, -278872209246065201L, 317399428844368562L, -2690015774165514160L, -5346417296652079822L, 8611437573240139502L}).toString());
        if (Build.VERSION.SDK_INT >= 23) {
            i = 201326592;
        } else {
            i = 134217728;
        }
        remoteViews.setOnClickPendingIntent(R.id.layout_switch, PendingIntent.getBroadcast(context, R.id.layout_switch, intent, i));
        if (isRunning) {
            remoteViews.setInt(R.id.image_switch, new ObfuscatedString(new long[]{8817203035013124349L, 7347264400100747263L, 8412931553873622910L}).toString(), R.drawable.ic_stop_24dp);
            remoteViews.setInt(R.id.layout_background, new ObfuscatedString(new long[]{6006272175247930464L, -6925462083554405160L, -7185058720412297282L, 8475282025539605341L}).toString(), R.drawable.ic_rounded_corner_active);
        } else {
            remoteViews.setInt(R.id.image_switch, new ObfuscatedString(new long[]{-8499630966988817736L, 1784521394531178299L, -7008368282762011076L}).toString(), R.drawable.ic_play_24dp);
            remoteViews.setInt(R.id.layout_background, new ObfuscatedString(new long[]{7304709958090246709L, 3054948239401188741L, -1837114479220765848L, -984698664647112748L}).toString(), R.drawable.ic_rounded_corner_inactive);
        }
        for (int i2 : appWidgetIds) {
            appWidgetManager.updateAppWidget(i2, remoteViews);
        }
    }

    @Override // android.appwidget.AppWidgetProvider, android.content.BroadcastReceiver
    public void onReceive(@NotNull Context context, @NotNull Intent intent) {
        AppWidgetManager appWidgetManager;
        Intrinsics.checkNotNullParameter(context, new ObfuscatedString(new long[]{5810067816731973097L, 1340395624533944622L}).toString());
        Intrinsics.checkNotNullParameter(intent, new ObfuscatedString(new long[]{3952931889761041238L, -2022298389074341324L}).toString());
        super.onReceive(context, intent);
        if (Intrinsics.areEqual(new ObfuscatedString(new long[]{9193996296061951619L, -5198936114987139880L, -2560437356296655543L, 1605239523508195910L, 3408781980442605328L, 36288853659493401L}).toString(), intent.getAction())) {
            V2RayServiceManager v2RayServiceManager = V2RayServiceManager.INSTANCE;
            if (v2RayServiceManager.isRunning()) {
                V2RayServiceManager.stopVService(context);
                return;
            } else {
                v2RayServiceManager.startVServiceFromToggle(context);
                return;
            }
        }
        if (Intrinsics.areEqual(new ObfuscatedString(new long[]{-8377928102810723317L, 8955257986479400441L, -2667058574864005980L, 3097929525440255895L, -4510763949557434009L}).toString(), intent.getAction()) && (appWidgetManager = AppWidgetManager.getInstance(context)) != null) {
            int intExtra = intent.getIntExtra(new ObfuscatedString(new long[]{1359194799936820168L, -4169015407690422599L}).toString(), 0);
            if (intExtra != 11) {
                if (intExtra != 12) {
                    if (intExtra != 31) {
                        if (intExtra != 32 && intExtra != 41) {
                            return;
                        }
                    }
                }
                int[] appWidgetIds = appWidgetManager.getAppWidgetIds(new ComponentName(context, (Class<?>) WidgetProvider.class));
                Intrinsics.checkNotNullExpressionValue(appWidgetIds, new ObfuscatedString(new long[]{753965837481859479L, -8351525892091363806L, 5126827380775931656L, -2166186102599888284L}).toString());
                updateWidgetBackground(context, appWidgetManager, appWidgetIds, false);
                return;
            }
            int[] appWidgetIds2 = appWidgetManager.getAppWidgetIds(new ComponentName(context, (Class<?>) WidgetProvider.class));
            Intrinsics.checkNotNullExpressionValue(appWidgetIds2, new ObfuscatedString(new long[]{-4695828988487585289L, -8056328170497463582L, -8198601248324064324L, 4354121623873115362L}).toString());
            updateWidgetBackground(context, appWidgetManager, appWidgetIds2, true);
        }
    }

    @Override // android.appwidget.AppWidgetProvider
    public void onUpdate(@NotNull Context context, @NotNull AppWidgetManager appWidgetManager, @NotNull int[] appWidgetIds) {
        Intrinsics.checkNotNullParameter(context, new ObfuscatedString(new long[]{-6624545915828378241L, -937425146889172814L}).toString());
        Intrinsics.checkNotNullParameter(appWidgetManager, new ObfuscatedString(new long[]{-42964594578649347L, 8121007487674323203L, -2389877271041614823L}).toString());
        Intrinsics.checkNotNullParameter(appWidgetIds, new ObfuscatedString(new long[]{1517040458306773394L, -3036870790431563321L, -7422437686538506458L}).toString());
        super.onUpdate(context, appWidgetManager, appWidgetIds);
        updateWidgetBackground(context, appWidgetManager, appWidgetIds, V2RayServiceManager.INSTANCE.isRunning());
    }
}
