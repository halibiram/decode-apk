package com.google.android.play.core.review.internal;

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
public final class zzt {
    private static final Map zza = new HashMap();
    private final Context zzb;
    private final zzi zzc;
    private boolean zzh;
    private final Intent zzi;

    @Nullable
    private ServiceConnection zzm;

    @Nullable
    private IInterface zzn;
    private final List zze = new ArrayList();

    @GuardedBy("attachedRemoteTasksLock")
    private final Set zzf = new HashSet();
    private final Object zzg = new Object();
    private final IBinder.DeathRecipient zzk = new IBinder.DeathRecipient() { // from class: com.google.android.play.core.review.internal.zzk
        @Override // android.os.IBinder.DeathRecipient
        public final void binderDied() {
            zzt.zzj(zzt.this);
        }
    };

    @GuardedBy("attachedRemoteTasksLock")
    private final AtomicInteger zzl = new AtomicInteger(0);
    private final String zzd = new ObfuscatedString(new long[]{-4020923323600688722L, 6829895693182268281L, -2639973848157213623L, 7828470888372115375L, -5102788796519357691L, -8910924758061200034L, 4841071858817271056L, 1929539122547168115L, -4172196584307545412L}).toString();
    private final WeakReference zzj = new WeakReference(null);

    public zzt(Context context, zzi zziVar, String str, Intent intent, com.google.android.play.core.review.zze zzeVar, @Nullable zzo zzoVar) {
        this.zzb = context;
        this.zzc = zziVar;
        this.zzi = intent;
    }

    public static /* synthetic */ void zzj(zzt zztVar) {
        zztVar.zzc.zzc(new ObfuscatedString(new long[]{8988478215485495332L, -7547437614864556385L, 5610303631599487061L, 604908018643632202L}).toString(), new Object[0]);
        zzo zzoVar = (zzo) zztVar.zzj.get();
        if (zzoVar != null) {
            zztVar.zzc.zzc(new ObfuscatedString(new long[]{-4162235255359266812L, 6501278883596813524L, 1594949895819620409L, 4931748095142086500L}).toString(), new Object[0]);
            zzoVar.zza();
        } else {
            zztVar.zzc.zzc(new ObfuscatedString(new long[]{-7279792628405744349L, -4785832430927687870L, 7066542254322025208L, 2407032961576365642L}).toString(), zztVar.zzd);
            Iterator it = zztVar.zze.iterator();
            while (it.hasNext()) {
                ((zzj) it.next()).zzc(zztVar.zzv());
            }
            zztVar.zze.clear();
        }
        synchronized (zztVar.zzg) {
            zztVar.zzw();
        }
    }

    public static /* bridge */ /* synthetic */ void zzn(zzt zztVar, final TaskCompletionSource taskCompletionSource) {
        zztVar.zzf.add(taskCompletionSource);
        taskCompletionSource.getTask().addOnCompleteListener(new OnCompleteListener() { // from class: com.google.android.play.core.review.internal.zzl
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task task) {
                zzt.this.zzt(taskCompletionSource, task);
            }
        });
    }

    public static /* bridge */ /* synthetic */ void zzp(zzt zztVar, zzj zzjVar) {
        if (zztVar.zzn == null && !zztVar.zzh) {
            zztVar.zzc.zzc(new ObfuscatedString(new long[]{-4439153108100017190L, -1564414910395851510L, 2546821078329375067L, 5934403836435770720L, 6122784045153285110L}).toString(), new Object[0]);
            zztVar.zze.add(zzjVar);
            zzr zzrVar = new zzr(zztVar, null);
            zztVar.zzm = zzrVar;
            zztVar.zzh = true;
            if (!zztVar.zzb.bindService(zztVar.zzi, zzrVar, 1)) {
                zztVar.zzc.zzc(new ObfuscatedString(new long[]{-7193222610969849185L, -1681176621367033770L, 8459305486601410044L, -7474406308583501831L, 8940930923799278317L}).toString(), new Object[0]);
                zztVar.zzh = false;
                Iterator it = zztVar.zze.iterator();
                while (it.hasNext()) {
                    ((zzj) it.next()).zzc(new zzu());
                }
                zztVar.zze.clear();
                return;
            }
            return;
        }
        if (zztVar.zzh) {
            zztVar.zzc.zzc(new ObfuscatedString(new long[]{6095091016943482317L, -3525704771261481876L, -4754784948243145614L, 863421113781773042L, 336202481137386820L}).toString(), new Object[0]);
            zztVar.zze.add(zzjVar);
            return;
        }
        zzjVar.run();
    }

    public static /* bridge */ /* synthetic */ void zzq(zzt zztVar) {
        zztVar.zzc.zzc(new ObfuscatedString(new long[]{8380800427090558830L, -1914753364407102784L, 7746131506749398903L}).toString(), new Object[0]);
        try {
            zztVar.zzn.asBinder().linkToDeath(zztVar.zzk, 0);
        } catch (RemoteException e) {
            zztVar.zzc.zzb(e, new ObfuscatedString(new long[]{1739501948777366422L, 2849968548170548348L, 120455035118841421L, -7775630347430094537L}).toString(), new Object[0]);
        }
    }

    public static /* bridge */ /* synthetic */ void zzr(zzt zztVar) {
        zztVar.zzc.zzc(new ObfuscatedString(new long[]{-272859075097939494L, 6048669015318668395L, 8682685290742702950L}).toString(), new Object[0]);
        zztVar.zzn.asBinder().unlinkToDeath(zztVar.zzk, 0);
    }

    private final RemoteException zzv() {
        return new RemoteException(String.valueOf(this.zzd).concat(new ObfuscatedString(new long[]{5385579836022860661L, -6116616914540339458L, 2542671578464667530L, 976643029163545257L}).toString()));
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

    public final void zzs(zzj zzjVar, @Nullable TaskCompletionSource taskCompletionSource) {
        zzc().post(new zzm(this, zzjVar.zzb(), taskCompletionSource, zzjVar));
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
        zzc().post(new zzn(this));
    }
}
