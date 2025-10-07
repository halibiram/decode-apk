package androidx.room;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import androidx.core.app.NotificationCompat;
import androidx.room.IMultiInstanceInvalidationService;
import androidx.room.InvalidationTracker;
import androidx.room.MultiInstanceInvalidationClient;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ\u0006\u00109\u001a\u00020:R\u0016\u0010\r\u001a\n \u000e*\u0004\u0018\u00010\u00030\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u000f\u001a\u00020\u0010¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u00020\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001eR\u001a\u0010\u001f\u001a\u00020 X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R\u0011\u0010%\u001a\u00020&¢\u0006\b\n\u0000\u001a\u0004\b'\u0010(R\u001c\u0010)\u001a\u0004\u0018\u00010*X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.R\u0011\u0010/\u001a\u000200¢\u0006\b\n\u0000\u001a\u0004\b1\u00102R\u0011\u00103\u001a\u00020&¢\u0006\b\n\u0000\u001a\u0004\b4\u0010(R\u0011\u00105\u001a\u000206¢\u0006\b\n\u0000\u001a\u0004\b7\u00108¨\u0006;"}, d2 = {"Landroidx/room/MultiInstanceInvalidationClient;", "", "context", "Landroid/content/Context;", "name", "", "serviceIntent", "Landroid/content/Intent;", "invalidationTracker", "Landroidx/room/InvalidationTracker;", "executor", "Ljava/util/concurrent/Executor;", "(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroidx/room/InvalidationTracker;Ljava/util/concurrent/Executor;)V", "appContext", "kotlin.jvm.PlatformType", "callback", "Landroidx/room/IMultiInstanceInvalidationCallback;", "getCallback", "()Landroidx/room/IMultiInstanceInvalidationCallback;", "clientId", "", "getClientId", "()I", "setClientId", "(I)V", "getExecutor", "()Ljava/util/concurrent/Executor;", "getInvalidationTracker", "()Landroidx/room/InvalidationTracker;", "getName", "()Ljava/lang/String;", "observer", "Landroidx/room/InvalidationTracker$Observer;", "getObserver", "()Landroidx/room/InvalidationTracker$Observer;", "setObserver", "(Landroidx/room/InvalidationTracker$Observer;)V", "removeObserverRunnable", "Ljava/lang/Runnable;", "getRemoveObserverRunnable", "()Ljava/lang/Runnable;", NotificationCompat.CATEGORY_SERVICE, "Landroidx/room/IMultiInstanceInvalidationService;", "getService", "()Landroidx/room/IMultiInstanceInvalidationService;", "setService", "(Landroidx/room/IMultiInstanceInvalidationService;)V", "serviceConnection", "Landroid/content/ServiceConnection;", "getServiceConnection", "()Landroid/content/ServiceConnection;", "setUpRunnable", "getSetUpRunnable", "stopped", "Ljava/util/concurrent/atomic/AtomicBoolean;", "getStopped", "()Ljava/util/concurrent/atomic/AtomicBoolean;", "stop", "", "room-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nMultiInstanceInvalidationClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MultiInstanceInvalidationClient.kt\nandroidx/room/MultiInstanceInvalidationClient\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,130:1\n37#2,2:131\n*S KotlinDebug\n*F\n+ 1 MultiInstanceInvalidationClient.kt\nandroidx/room/MultiInstanceInvalidationClient\n*L\n95#1:131,2\n*E\n"})
/* loaded from: classes.dex */
public final class MultiInstanceInvalidationClient {
    private final Context appContext;

    @NotNull
    private final IMultiInstanceInvalidationCallback callback;
    private int clientId;

    @NotNull
    private final Executor executor;

    @NotNull
    private final InvalidationTracker invalidationTracker;

    @NotNull
    private final String name;
    public InvalidationTracker.Observer observer;

    @NotNull
    private final Runnable removeObserverRunnable;

    @Nullable
    private IMultiInstanceInvalidationService service;

    @NotNull
    private final ServiceConnection serviceConnection;

    @NotNull
    private final Runnable setUpRunnable;

    @NotNull
    private final AtomicBoolean stopped;

    public MultiInstanceInvalidationClient(@NotNull Context context, @NotNull String name, @NotNull Intent serviceIntent, @NotNull InvalidationTracker invalidationTracker, @NotNull Executor executor) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(serviceIntent, "serviceIntent");
        Intrinsics.checkNotNullParameter(invalidationTracker, "invalidationTracker");
        Intrinsics.checkNotNullParameter(executor, "executor");
        this.name = name;
        this.invalidationTracker = invalidationTracker;
        this.executor = executor;
        Context applicationContext = context.getApplicationContext();
        this.appContext = applicationContext;
        this.callback = new MultiInstanceInvalidationClient$callback$1(this);
        this.stopped = new AtomicBoolean(false);
        ServiceConnection serviceConnection = new ServiceConnection() { // from class: androidx.room.MultiInstanceInvalidationClient$serviceConnection$1
            @Override // android.content.ServiceConnection
            public void onServiceConnected(@NotNull ComponentName name2, @NotNull IBinder service) {
                Intrinsics.checkNotNullParameter(name2, "name");
                Intrinsics.checkNotNullParameter(service, "service");
                MultiInstanceInvalidationClient.this.setService(IMultiInstanceInvalidationService.Stub.asInterface(service));
                MultiInstanceInvalidationClient.this.getExecutor().execute(MultiInstanceInvalidationClient.this.getSetUpRunnable());
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(@NotNull ComponentName name2) {
                Intrinsics.checkNotNullParameter(name2, "name");
                MultiInstanceInvalidationClient.this.getExecutor().execute(MultiInstanceInvalidationClient.this.getRemoveObserverRunnable());
                MultiInstanceInvalidationClient.this.setService(null);
            }
        };
        this.serviceConnection = serviceConnection;
        final int i = 0;
        this.setUpRunnable = new Runnable(this) { // from class: 딟뒙돨듸뒘땵돤돤땯따됐뒵뎸득듬뎠둠딃뎠디뎬든딝땱듌듔둘뎹뒹뒹듔돸들뎬디뒹뎸뒻딽된땫땥땻돝땐듬됩듰뒝둑땝뒬둔뎠뎰될들뎻땐땥딹딜딤땻뒛드땯뎸딠들둬뒤땦뒋돤뎨땃땪땁딽뒉땦될돨듼딠뒙듨딀돶둘땨뎹돳땥땡듨뎠뎨드딟뒐디딤돳땭땜땋땁뎬딎뎠땬듬딐뒙딸듟딄돸듌됨딨딨딤땩들땃뒻뎹

            /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
            public final /* synthetic */ MultiInstanceInvalidationClient f5161x3271d0aa;

            {
                this.f5161x3271d0aa = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                switch (i) {
                    case 0:
                        MultiInstanceInvalidationClient.setUpRunnable$lambda$1(this.f5161x3271d0aa);
                        return;
                    default:
                        MultiInstanceInvalidationClient.removeObserverRunnable$lambda$2(this.f5161x3271d0aa);
                        return;
                }
            }
        };
        final int i2 = 1;
        this.removeObserverRunnable = new Runnable(this) { // from class: 딟뒙돨듸뒘땵돤돤땯따됐뒵뎸득듬뎠둠딃뎠디뎬든딝땱듌듔둘뎹뒹뒹듔돸들뎬디뒹뎸뒻딽된땫땥땻돝땐듬됩듰뒝둑땝뒬둔뎠뎰될들뎻땐땥딹딜딤땻뒛드땯뎸딠들둬뒤땦뒋돤뎨땃땪땁딽뒉땦될돨듼딠뒙듨딀돶둘땨뎹돳땥땡듨뎠뎨드딟뒐디딤돳땭땜땋땁뎬딎뎠땬듬딐뒙딸듟딄돸듌됨딨딨딤땩들땃뒻뎹

            /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
            public final /* synthetic */ MultiInstanceInvalidationClient f5161x3271d0aa;

            {
                this.f5161x3271d0aa = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                switch (i2) {
                    case 0:
                        MultiInstanceInvalidationClient.setUpRunnable$lambda$1(this.f5161x3271d0aa);
                        return;
                    default:
                        MultiInstanceInvalidationClient.removeObserverRunnable$lambda$2(this.f5161x3271d0aa);
                        return;
                }
            }
        };
        setObserver(new InvalidationTracker.Observer((String[]) invalidationTracker.getTableIdLookup$room_runtime_release().keySet().toArray(new String[0])) { // from class: androidx.room.MultiInstanceInvalidationClient.1
            @Override // androidx.room.InvalidationTracker.Observer
            public boolean isRemote$room_runtime_release() {
                return true;
            }

            @Override // androidx.room.InvalidationTracker.Observer
            public void onInvalidated(@NotNull Set<String> tables) {
                Intrinsics.checkNotNullParameter(tables, "tables");
                if (MultiInstanceInvalidationClient.this.getStopped().get()) {
                    return;
                }
                try {
                    IMultiInstanceInvalidationService service = MultiInstanceInvalidationClient.this.getService();
                    if (service != null) {
                        service.broadcastInvalidation(MultiInstanceInvalidationClient.this.getClientId(), (String[]) tables.toArray(new String[0]));
                    }
                } catch (RemoteException unused) {
                }
            }
        });
        applicationContext.bindService(serviceIntent, serviceConnection, 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void removeObserverRunnable$lambda$2(MultiInstanceInvalidationClient this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.invalidationTracker.removeObserver(this$0.getObserver());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setUpRunnable$lambda$1(MultiInstanceInvalidationClient this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            IMultiInstanceInvalidationService iMultiInstanceInvalidationService = this$0.service;
            if (iMultiInstanceInvalidationService != null) {
                this$0.clientId = iMultiInstanceInvalidationService.registerCallback(this$0.callback, this$0.name);
                this$0.invalidationTracker.addObserver(this$0.getObserver());
            }
        } catch (RemoteException unused) {
        }
    }

    @NotNull
    public final IMultiInstanceInvalidationCallback getCallback() {
        return this.callback;
    }

    public final int getClientId() {
        return this.clientId;
    }

    @NotNull
    public final Executor getExecutor() {
        return this.executor;
    }

    @NotNull
    public final InvalidationTracker getInvalidationTracker() {
        return this.invalidationTracker;
    }

    @NotNull
    public final String getName() {
        return this.name;
    }

    @NotNull
    public final InvalidationTracker.Observer getObserver() {
        InvalidationTracker.Observer observer = this.observer;
        if (observer != null) {
            return observer;
        }
        return null;
    }

    @NotNull
    public final Runnable getRemoveObserverRunnable() {
        return this.removeObserverRunnable;
    }

    @Nullable
    public final IMultiInstanceInvalidationService getService() {
        return this.service;
    }

    @NotNull
    public final ServiceConnection getServiceConnection() {
        return this.serviceConnection;
    }

    @NotNull
    public final Runnable getSetUpRunnable() {
        return this.setUpRunnable;
    }

    @NotNull
    public final AtomicBoolean getStopped() {
        return this.stopped;
    }

    public final void setClientId(int i) {
        this.clientId = i;
    }

    public final void setObserver(@NotNull InvalidationTracker.Observer observer) {
        Intrinsics.checkNotNullParameter(observer, "<set-?>");
        this.observer = observer;
    }

    public final void setService(@Nullable IMultiInstanceInvalidationService iMultiInstanceInvalidationService) {
        this.service = iMultiInstanceInvalidationService;
    }

    public final void stop() {
        if (this.stopped.compareAndSet(false, true)) {
            this.invalidationTracker.removeObserver(getObserver());
            try {
                IMultiInstanceInvalidationService iMultiInstanceInvalidationService = this.service;
                if (iMultiInstanceInvalidationService != null) {
                    iMultiInstanceInvalidationService.unregisterCallback(this.callback, this.clientId);
                }
            } catch (RemoteException unused) {
            }
            this.appContext.unbindService(this.serviceConnection);
        }
    }
}
