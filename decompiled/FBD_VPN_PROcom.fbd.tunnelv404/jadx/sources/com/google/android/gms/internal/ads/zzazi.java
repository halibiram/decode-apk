package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzazi implements Application.ActivityLifecycleCallbacks {

    @Nullable
    private Activity zza;
    private Context zzb;
    private Runnable zzh;
    private long zzj;
    private final Object zzc = new Object();
    private boolean zzd = true;
    private boolean zze = false;
    private final List zzf = new ArrayList();
    private final List zzg = new ArrayList();
    private boolean zzi = false;

    private final void zzk(Activity activity) {
        synchronized (this.zzc) {
            try {
                if (!activity.getClass().getName().startsWith(new ObfuscatedString(new long[]{-4799058267555661977L, 8852808561945552347L, 2005658514216195114L, -1333198161653037880L, 8395276810370433941L}).toString())) {
                    this.zza = activity;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        synchronized (this.zzc) {
            try {
                Activity activity2 = this.zza;
                if (activity2 == null) {
                    return;
                }
                if (activity2.equals(activity)) {
                    this.zza = null;
                }
                Iterator it = this.zzg.iterator();
                while (it.hasNext()) {
                    try {
                        if (((zzazx) it.next()).zza()) {
                            it.remove();
                        }
                    } catch (Exception e) {
                        com.google.android.gms.ads.internal.zzt.zzo().zzw(e, new ObfuscatedString(new long[]{3313128323120822501L, 4001995275871495364L, -3319072284469467828L, -4859623522564212841L, -4235172317467418386L, 3886895832461202392L, -4945391239109050603L, 5800642844904716646L}).toString());
                        zzcec.zzh(new ObfuscatedString(new long[]{8687130325880653045L}).toString(), e);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        zzk(activity);
        synchronized (this.zzc) {
            Iterator it = this.zzg.iterator();
            while (it.hasNext()) {
                try {
                    ((zzazx) it.next()).zzb();
                } catch (Exception e) {
                    com.google.android.gms.ads.internal.zzt.zzo().zzw(e, new ObfuscatedString(new long[]{8276801190570953994L, 8133382711063869862L, -4054242566860606421L, -3389852111300834730L, -3299245070503071927L, -5733058021895537314L, -8973472555685866898L, -3548061230836786250L}).toString());
                    zzcec.zzh(new ObfuscatedString(new long[]{1084997632681455779L}).toString(), e);
                }
            }
        }
        this.zze = true;
        Runnable runnable = this.zzh;
        if (runnable != null) {
            com.google.android.gms.ads.internal.util.zzt.zza.removeCallbacks(runnable);
        }
        zzftt zzfttVar = com.google.android.gms.ads.internal.util.zzt.zza;
        zzazh zzazhVar = new zzazh(this);
        this.zzh = zzazhVar;
        zzfttVar.postDelayed(zzazhVar, this.zzj);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        zzk(activity);
        this.zze = false;
        boolean z = this.zzd;
        this.zzd = true;
        Runnable runnable = this.zzh;
        if (runnable != null) {
            com.google.android.gms.ads.internal.util.zzt.zza.removeCallbacks(runnable);
        }
        synchronized (this.zzc) {
            Iterator it = this.zzg.iterator();
            while (it.hasNext()) {
                try {
                    ((zzazx) it.next()).zzc();
                } catch (Exception e) {
                    com.google.android.gms.ads.internal.zzt.zzo().zzw(e, new ObfuscatedString(new long[]{-4723876579181355374L, 5064621337940304201L, -8955121358406753401L, 2884033338916134567L, -2589802751178171413L, 8275619816957119827L, -3472958599822803668L, 532751332970848639L}).toString());
                    zzcec.zzh(new ObfuscatedString(new long[]{6664506208822921468L}).toString(), e);
                }
            }
            if (!z) {
                Iterator it2 = this.zzf.iterator();
                while (it2.hasNext()) {
                    try {
                        ((zzazj) it2.next()).zza(true);
                    } catch (Exception e2) {
                        zzcec.zzh(new ObfuscatedString(new long[]{205649225609451850L}).toString(), e2);
                    }
                }
            } else {
                zzcec.zze(new ObfuscatedString(new long[]{-3534764220754511914L, 1223171687619304855L, 6857139756955596828L, 5582576124131361940L}).toString());
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        zzk(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }

    @Nullable
    public final Activity zza() {
        return this.zza;
    }

    @Nullable
    public final Context zzb() {
        return this.zzb;
    }

    public final void zzf(zzazj zzazjVar) {
        synchronized (this.zzc) {
            this.zzf.add(zzazjVar);
        }
    }

    public final void zzg(Application application, Context context) {
        if (!this.zzi) {
            application.registerActivityLifecycleCallbacks(this);
            if (context instanceof Activity) {
                zzk((Activity) context);
            }
            this.zzb = application;
            this.zzj = ((Long) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzaS)).longValue();
            this.zzi = true;
        }
    }

    public final void zzh(zzazj zzazjVar) {
        synchronized (this.zzc) {
            this.zzf.remove(zzazjVar);
        }
    }
}
