package com.google.android.gms.internal.ads;

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
public final class zzfwe {
    private static final Map zza = new HashMap();
    private final Context zzb;
    private final zzfvt zzc;
    private boolean zzh;
    private final Intent zzi;

    @Nullable
    private ServiceConnection zzm;

    @Nullable
    private IInterface zzn;
    private final zzfvg zzo;
    private final List zze = new ArrayList();

    @GuardedBy("attachedRemoteTasksLock")
    private final Set zzf = new HashSet();
    private final Object zzg = new Object();
    private final IBinder.DeathRecipient zzk = new IBinder.DeathRecipient() { // from class: com.google.android.gms.internal.ads.zzfvv
        @Override // android.os.IBinder.DeathRecipient
        public final void binderDied() {
            zzfwe.zzj(zzfwe.this);
        }
    };

    @GuardedBy("attachedRemoteTasksLock")
    private final AtomicInteger zzl = new AtomicInteger(0);
    private final String zzd = new ObfuscatedString(new long[]{-7441098618465902788L, 8084457650682998903L, 1089691739681776560L, 7546379447411809508L}).toString();
    private final WeakReference zzj = new WeakReference(null);

    public zzfwe(Context context, zzfvt zzfvtVar, String str, Intent intent, zzfvg zzfvgVar, @Nullable zzfvz zzfvzVar) {
        this.zzb = context;
        this.zzc = zzfvtVar;
        this.zzi = intent;
        this.zzo = zzfvgVar;
    }

    public static /* synthetic */ void zzj(zzfwe zzfweVar) {
        zzfweVar.zzc.zzc(new ObfuscatedString(new long[]{2069076918282010920L, 609790342211963000L, 3796102359240622932L, 4649916010667432981L}).toString(), new Object[0]);
        zzfvz zzfvzVar = (zzfvz) zzfweVar.zzj.get();
        if (zzfvzVar != null) {
            zzfweVar.zzc.zzc(new ObfuscatedString(new long[]{2502441592269577714L, -8355691756139689806L, 6004175083843344638L, 4357018988180910436L}).toString(), new Object[0]);
            zzfvzVar.zza();
        } else {
            zzfweVar.zzc.zzc(new ObfuscatedString(new long[]{5968152028181742343L, -3935252564008507082L, 316360527285006053L, -8450336401489891158L}).toString(), zzfweVar.zzd);
            Iterator it = zzfweVar.zze.iterator();
            while (it.hasNext()) {
                ((zzfvu) it.next()).zzc(zzfweVar.zzv());
            }
            zzfweVar.zze.clear();
        }
        synchronized (zzfweVar.zzg) {
            zzfweVar.zzw();
        }
    }

    public static /* bridge */ /* synthetic */ void zzn(zzfwe zzfweVar, final TaskCompletionSource taskCompletionSource) {
        zzfweVar.zzf.add(taskCompletionSource);
        taskCompletionSource.getTask().addOnCompleteListener(new OnCompleteListener() { // from class: com.google.android.gms.internal.ads.zzfvw
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task task) {
                zzfwe.this.zzt(taskCompletionSource, task);
            }
        });
    }

    public static /* bridge */ /* synthetic */ void zzp(zzfwe zzfweVar, zzfvu zzfvuVar) {
        if (zzfweVar.zzn == null && !zzfweVar.zzh) {
            zzfweVar.zzc.zzc(new ObfuscatedString(new long[]{576171985835417721L, 8769210177985116388L, -103184957322741429L, -4695525157595695295L, -5269681784778663055L}).toString(), new Object[0]);
            zzfweVar.zze.add(zzfvuVar);
            zzfwd zzfwdVar = new zzfwd(zzfweVar, null);
            zzfweVar.zzm = zzfwdVar;
            zzfweVar.zzh = true;
            if (!zzfweVar.zzb.bindService(zzfweVar.zzi, zzfwdVar, 1)) {
                zzfweVar.zzc.zzc(new ObfuscatedString(new long[]{-6835125878684234051L, 3174126323403695391L, -7056764344439732900L, -174328108376861243L, 4039019508058178053L}).toString(), new Object[0]);
                zzfweVar.zzh = false;
                Iterator it = zzfweVar.zze.iterator();
                while (it.hasNext()) {
                    ((zzfvu) it.next()).zzc(new zzfwf());
                }
                zzfweVar.zze.clear();
                return;
            }
            return;
        }
        if (zzfweVar.zzh) {
            zzfweVar.zzc.zzc(new ObfuscatedString(new long[]{-5043336916181685965L, 1127389916487438841L, 9005784692189853954L, -3860911478884530681L, 3882981474772126271L}).toString(), new Object[0]);
            zzfweVar.zze.add(zzfvuVar);
            return;
        }
        zzfvuVar.run();
    }

    public static /* bridge */ /* synthetic */ void zzq(zzfwe zzfweVar) {
        zzfweVar.zzc.zzc(new ObfuscatedString(new long[]{-4310750019888923520L, -5266525349315132009L, 5973926785970671821L}).toString(), new Object[0]);
        try {
            zzfweVar.zzn.asBinder().linkToDeath(zzfweVar.zzk, 0);
        } catch (RemoteException e) {
            zzfweVar.zzc.zzb(e, new ObfuscatedString(new long[]{7709698754294796429L, -5407555922465984056L, -8222861638328560532L, 2598183166395426264L}).toString(), new Object[0]);
        }
    }

    public static /* bridge */ /* synthetic */ void zzr(zzfwe zzfweVar) {
        zzfweVar.zzc.zzc(new ObfuscatedString(new long[]{-6782579228596116705L, -4661717176479928142L, -2521050324195656913L}).toString(), new Object[0]);
        zzfweVar.zzn.asBinder().unlinkToDeath(zzfweVar.zzk, 0);
    }

    private final RemoteException zzv() {
        return new RemoteException(String.valueOf(this.zzd).concat(new ObfuscatedString(new long[]{-1391330055809948582L, 2090061296839106314L, 3846650601110890368L, 3416795929388238977L}).toString()));
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

    public final void zzs(zzfvu zzfvuVar, @Nullable TaskCompletionSource taskCompletionSource) {
        zzc().post(new zzfvx(this, zzfvuVar.zzb(), taskCompletionSource, zzfvuVar));
    }

    public final /* synthetic */ void zzt(TaskCompletionSource taskCompletionSource, Task task) {
        synchronized (this.zzg) {
            this.zzf.remove(taskCompletionSource);
        }
    }

    public final void zzu() {
        zzc().post(new zzfvy(this));
    }
}
