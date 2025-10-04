package com.google.android.play.core.appupdate.internal;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.panda912.muddy.ObfuscatedString;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes2.dex */
public final class zzx {
    private static final Map zza = new HashMap();
    private final Context zzb;
    private final zzm zzc;
    private boolean zzh;
    private final Intent zzi;

    @Nullable
    private ServiceConnection zzm;

    @Nullable
    private IInterface zzn;
    private final com.google.android.play.core.appupdate.zzl zzo;
    private final List zze = new ArrayList();

    @GuardedBy("attachedRemoteTasksLock")
    private final Set zzf = new HashSet();
    private final Object zzg = new Object();
    private final IBinder.DeathRecipient zzk = new IBinder.DeathRecipient() { // from class: com.google.android.play.core.appupdate.internal.zzp
        @Override // android.os.IBinder.DeathRecipient
        public final void binderDied() {
            zzx.zzj(zzx.this);
        }
    };

    @GuardedBy("attachedRemoteTasksLock")
    private final AtomicInteger zzl = new AtomicInteger(0);
    private final String zzd = new ObfuscatedString(new long[]{-7594589592922320841L, -5143084116439044852L, -5083902726252642011L}).toString();
    private final WeakReference zzj = new WeakReference(null);

    public zzx(Context context, zzm zzmVar, String str, Intent intent, com.google.android.play.core.appupdate.zzl zzlVar, @Nullable zzs zzsVar) {
        this.zzb = context;
        this.zzc = zzmVar;
        this.zzi = intent;
        this.zzo = zzlVar;
    }

    public static /* synthetic */ void zzj(zzx zzxVar) {
        zzxVar.zzc.zzd(new ObfuscatedString(new long[]{3915105700827235661L, -4567299769393692270L, 6508284291880236396L, 4693500441280218892L}).toString(), new Object[0]);
        zzs zzsVar = (zzs) zzxVar.zzj.get();
        if (zzsVar != null) {
            zzxVar.zzc.zzd(new ObfuscatedString(new long[]{1412516617988450662L, -5411094592455066734L, -403092442426793001L, 3310079529131012321L}).toString(), new Object[0]);
            zzsVar.zza();
        } else {
            zzxVar.zzc.zzd(new ObfuscatedString(new long[]{3557349959141661350L, 8368339540897325869L, -3717304418993783013L, 8297246547324018983L}).toString(), zzxVar.zzd);
            Iterator it = zzxVar.zze.iterator();
            while (it.hasNext()) {
                ((zzn) it.next()).zzc(zzxVar.zzv());
            }
            zzxVar.zze.clear();
        }
        synchronized (zzxVar.zzg) {
            zzxVar.zzw();
        }
    }

    public static /* bridge */ /* synthetic */ void zzn(zzx zzxVar, final TaskCompletionSource taskCompletionSource) {
        zzxVar.zzf.add(taskCompletionSource);
        taskCompletionSource.getTask().addOnCompleteListener(new OnCompleteListener() { // from class: com.google.android.play.core.appupdate.internal.zzo
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task task) {
                zzx.this.zzt(taskCompletionSource, task);
            }
        });
    }

    public static /* bridge */ /* synthetic */ void zzp(zzx zzxVar, zzn zznVar) {
        if (zzxVar.zzn == null && !zzxVar.zzh) {
            zzxVar.zzc.zzd(new ObfuscatedString(new long[]{-2652981877805003738L, 9003368598656277937L, -3620462404712600333L, 220095435247675397L, -1405366310910235031L}).toString(), new Object[0]);
            zzxVar.zze.add(zznVar);
            zzw zzwVar = new zzw(zzxVar, null);
            zzxVar.zzm = zzwVar;
            zzxVar.zzh = true;
            if (!zzxVar.zzb.bindService(zzxVar.zzi, zzwVar, 1)) {
                zzxVar.zzc.zzd(new ObfuscatedString(new long[]{8112272579313487354L, 4622463955132262197L, -5265557105317688069L, -180073444035270905L, 1729151191701231643L}).toString(), new Object[0]);
                zzxVar.zzh = false;
                Iterator it = zzxVar.zze.iterator();
                while (it.hasNext()) {
                    ((zzn) it.next()).zzc(new zzy());
                }
                zzxVar.zze.clear();
                return;
            }
            return;
        }
        if (zzxVar.zzh) {
            zzxVar.zzc.zzd(new ObfuscatedString(new long[]{-5125937686393659021L, -2297944499549790371L, 8800635772106984L, -5543274140138690736L, -435113059409875843L}).toString(), new Object[0]);
            zzxVar.zze.add(zznVar);
            return;
        }
        zznVar.run();
    }

    public static /* bridge */ /* synthetic */ void zzq(zzx zzxVar) {
        zzxVar.zzc.zzd(new ObfuscatedString(new long[]{-2757009223144775907L, -1030970248937536539L, -2454295367481809746L}).toString(), new Object[0]);
        try {
            zzxVar.zzn.asBinder().linkToDeath(zzxVar.zzk, 0);
        } catch (RemoteException e) {
            zzxVar.zzc.zzc(e, new ObfuscatedString(new long[]{6232773854996863632L, 1708670865174968773L, 3419976047840211124L, -4847443621683491685L}).toString(), new Object[0]);
        }
    }

    public static /* bridge */ /* synthetic */ void zzr(zzx zzxVar) {
        zzxVar.zzc.zzd(new ObfuscatedString(new long[]{-4690081336994413510L, -4097696739333824976L, 3200473422344122955L}).toString(), new Object[0]);
        zzxVar.zzn.asBinder().unlinkToDeath(zzxVar.zzk, 0);
    }

    private final RemoteException zzv() {
        return new RemoteException(String.valueOf(this.zzd).concat(new ObfuscatedString(new long[]{-6825379049161279890L, 138050722972621600L, 4060257068747276542L, 8120245131077700009L}).toString()));
    }

    @GuardedBy("attachedRemoteTasksLock")
    public final void zzw() {
        Iterator it = this.zzf.iterator();
        while (it.hasNext()) {
            ((TaskCompletionSource) it.next()).trySetException(zzv());
        }
        this.zzf.clear();
    }

    public final Handler zzc() {
        Handler handler;
        Map map = zza;
        synchronized (map) {
            try {
                if (!map.containsKey(this.zzd)) {
                    HandlerThread handlerThread = new HandlerThread(this.zzd, 10);
                    handlerThread.start();
                    map.put(this.zzd, new Handler(handlerThread.getLooper()));
                }
                handler = (Handler) map.get(this.zzd);
            } catch (Throwable th) {
                throw th;
            }
        }
        return handler;
    }

    @Nullable
    public final IInterface zze() {
        return this.zzn;
    }

    public final void zzs(zzn zznVar, @Nullable TaskCompletionSource taskCompletionSource) {
        zzc().post(new zzq(this, zznVar.zzb(), taskCompletionSource, zznVar));
    }

    public final /* synthetic */ void zzt(TaskCompletionSource taskCompletionSource, Task task) {
        synchronized (this.zzg) {
            this.zzf.remove(taskCompletionSource);
        }
    }

    public final void zzu(TaskCompletionSource taskCompletionSource) {
        synchronized (this.zzg) {
            this.zzf.remove(taskCompletionSource);
        }
        zzc().post(new zzr(this));
    }
}
