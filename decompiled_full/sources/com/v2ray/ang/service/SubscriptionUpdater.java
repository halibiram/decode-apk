package com.v2ray.ang.service;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import androidx.core.app.NotificationCompat;
import androidx.core.app.NotificationManagerCompat;
import androidx.work.CoroutineWorker;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import com.fbd.tunnel.R;
import com.panda912.muddy.ObfuscatedString;
import com.v2ray.ang.dto.SubscriptionItem;
import com.v2ray.ang.handler.AngConfigManager;
import com.v2ray.ang.handler.MmkvManager;
import defpackage.AbstractC1026x65ee1cd8;
import defpackage.AbstractC1319x9e4ecaa8;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0004B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcom/v2ray/ang/service/SubscriptionUpdater;", "", "<init>", "()V", "UpdateTask", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class SubscriptionUpdater {

    @NotNull
    public static final SubscriptionUpdater INSTANCE = new SubscriptionUpdater();

    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u000e\u0010\r\u001a\u00020\u000eH\u0097@¢\u0006\u0002\u0010\u000fR\u0013\u0010\b\u001a\u00070\t¢\u0006\u0002\b\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u0013\u0010\u000b\u001a\u00070\f¢\u0006\u0002\b\nX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/v2ray/ang/service/SubscriptionUpdater$UpdateTask;", "Landroidx/work/CoroutineWorker;", "context", "Landroid/content/Context;", "params", "Landroidx/work/WorkerParameters;", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "notificationManager", "Landroidx/core/app/NotificationManagerCompat;", "Lorg/jspecify/annotations/NonNull;", "notification", "Landroidx/core/app/NotificationCompat$Builder;", "doWork", "Landroidx/work/ListenableWorker$Result;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nSubscriptionUpdater.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SubscriptionUpdater.kt\ncom/v2ray/ang/service/SubscriptionUpdater$UpdateTask\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,67:1\n774#2:68\n865#2,2:69\n*S KotlinDebug\n*F\n+ 1 SubscriptionUpdater.kt\ncom/v2ray/ang/service/SubscriptionUpdater$UpdateTask\n*L\n43#1:68\n43#1:69,2\n*E\n"})
    /* loaded from: classes3.dex */
    public static final class UpdateTask extends CoroutineWorker {

        @NotNull
        private final NotificationCompat.Builder notification;

        @NotNull
        private final NotificationManagerCompat notificationManager;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public UpdateTask(@NotNull Context context, @NotNull WorkerParameters workerParameters) {
            super(context, workerParameters);
            Intrinsics.checkNotNullParameter(context, new ObfuscatedString(new long[]{-6490439935776244068L, -8685644145810734557L}).toString());
            Intrinsics.checkNotNullParameter(workerParameters, new ObfuscatedString(new long[]{-1084309385093545439L, -5940755759154967330L}).toString());
            NotificationManagerCompat from = NotificationManagerCompat.from(getApplicationContext());
            Intrinsics.checkNotNullExpressionValue(from, new ObfuscatedString(new long[]{5958171455610230544L, 1446538826949911446L, -1852105369820462130L}).toString());
            this.notificationManager = from;
            NotificationCompat.Builder priority = new NotificationCompat.Builder(getApplicationContext(), new ObfuscatedString(new long[]{5117481584662933472L, 2175260857327481951L, 4637768191679677771L, 6158117612662826029L, -9070633385128760928L}).toString()).setWhen(0L).setTicker(new ObfuscatedString(new long[]{6009383565258319302L, -185838446040602401L}).toString()).setContentTitle(context.getString(R.string.title_pref_auto_update_subscription)).setSmallIcon(com.v2ray.ang.R.drawable.ic_stat_name).setCategory(new ObfuscatedString(new long[]{-6025711091428220463L, 469362468394721680L}).toString()).setPriority(0);
            Intrinsics.checkNotNullExpressionValue(priority, new ObfuscatedString(new long[]{-533371499981736539L, -5757594651754181134L, 5772292037276334935L}).toString());
            this.notification = priority;
        }

        @Override // androidx.work.CoroutineWorker
        @SuppressLint({"MissingPermission"})
        @Nullable
        public Object doWork(@NotNull Continuation<? super ListenableWorker.Result> continuation) {
            new ObfuscatedString(new long[]{2112592858178870598L, 6870113746038471918L, 9077134039843516657L}).toString();
            new ObfuscatedString(new long[]{1714366474068077268L, -6601005970394599151L, -4506930210818664000L, -58990384433778183L, 7776154169932446846L, -8513000943902501090L}).toString();
            List<Pair<String, SubscriptionItem>> decodeSubscriptions = MmkvManager.INSTANCE.decodeSubscriptions();
            ArrayList arrayList = new ArrayList();
            for (Object obj : decodeSubscriptions) {
                if (((SubscriptionItem) ((Pair) obj).getSecond()).getAutoUpdate()) {
                    arrayList.add(obj);
                }
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                Pair pair = (Pair) it.next();
                SubscriptionItem subscriptionItem = (SubscriptionItem) pair.getSecond();
                if (Build.VERSION.SDK_INT >= 26) {
                    this.notification.setChannelId(new ObfuscatedString(new long[]{1292013537159356651L, -9094532209959098842L, -4664315677354044778L, -4664560649097491612L, -4873849153897071390L}).toString());
                    AbstractC1319x9e4ecaa8.m4347x9738a56c();
                    this.notificationManager.createNotificationChannel(AbstractC1026x65ee1cd8.m3655xfbe0c504(new ObfuscatedString(new long[]{8144282194622529860L, 6412694510793532767L, -2743110370206659250L, -2707210334172237536L, 3926159100397811392L}).toString(), new ObfuscatedString(new long[]{-1209159388814675543L, 7093535979647912343L, -6048776845316293305L, 2493245129449213978L, 6299457626589152433L}).toString()));
                }
                this.notificationManager.notify(3, this.notification.build());
                new ObfuscatedString(new long[]{-9153912748588811305L, 6271029160818240065L, -4776208154494521460L}).toString();
                subscriptionItem.getRemarks();
                AngConfigManager.INSTANCE.updateConfigViaSub(new Pair<>(pair.getFirst(), subscriptionItem));
                this.notification.setContentText("Updating " + subscriptionItem.getRemarks());
            }
            this.notificationManager.cancel(3);
            ListenableWorker.Result success = ListenableWorker.Result.success();
            Intrinsics.checkNotNullExpressionValue(success, new ObfuscatedString(new long[]{-7582582204157825462L, 8260224129353912711L, 4047111310283656771L}).toString());
            return success;
        }
    }

    private SubscriptionUpdater() {
    }
}
