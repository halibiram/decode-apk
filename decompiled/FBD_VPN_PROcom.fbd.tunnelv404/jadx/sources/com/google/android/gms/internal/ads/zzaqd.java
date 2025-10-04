package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes2.dex */
public final class zzaqd {
    private final AtomicInteger zza;
    private final Set zzb;
    private final PriorityBlockingQueue zzc;
    private final PriorityBlockingQueue zzd;
    private final zzapk zze;
    private final zzapt zzf;
    private final zzapu[] zzg;
    private zzapm zzh;
    private final List zzi;
    private final List zzj;
    private final zzapr zzk;

    public zzaqd(zzapk zzapkVar, zzapt zzaptVar, int i) {
        zzapr zzaprVar = new zzapr(new Handler(Looper.getMainLooper()));
        this.zza = new AtomicInteger();
        this.zzb = new HashSet();
        this.zzc = new PriorityBlockingQueue();
        this.zzd = new PriorityBlockingQueue();
        this.zzi = new ArrayList();
        this.zzj = new ArrayList();
        this.zze = zzapkVar;
        this.zzf = zzaptVar;
        this.zzg = new zzapu[4];
        this.zzk = zzaprVar;
    }

    public final zzaqa zza(zzaqa zzaqaVar) {
        zzaqaVar.zzf(this);
        synchronized (this.zzb) {
            this.zzb.add(zzaqaVar);
        }
        zzaqaVar.zzg(this.zza.incrementAndGet());
        zzaqaVar.zzm(new ObfuscatedString(new long[]{-8925409158468241609L, 8917139780493207463L, -2910250851769905336L}).toString());
        zzc(zzaqaVar, 0);
        this.zzc.add(zzaqaVar);
        return zzaqaVar;
    }

    public final void zzb(zzaqa zzaqaVar) {
        synchronized (this.zzb) {
            this.zzb.remove(zzaqaVar);
        }
        synchronized (this.zzi) {
            try {
                Iterator it = this.zzi.iterator();
                while (it.hasNext()) {
                    ((zzaqc) it.next()).zza();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        zzc(zzaqaVar, 5);
    }

    public final void zzc(zzaqa zzaqaVar, int i) {
        synchronized (this.zzj) {
            try {
                Iterator it = this.zzj.iterator();
                while (it.hasNext()) {
                    ((zzaqb) it.next()).zza();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zzd() {
        zzapm zzapmVar = this.zzh;
        if (zzapmVar != null) {
            zzapmVar.zzb();
        }
        zzapu[] zzapuVarArr = this.zzg;
        for (int i = 0; i < 4; i++) {
            zzapu zzapuVar = zzapuVarArr[i];
            if (zzapuVar != null) {
                zzapuVar.zza();
            }
        }
        zzapm zzapmVar2 = new zzapm(this.zzc, this.zzd, this.zze, this.zzk);
        this.zzh = zzapmVar2;
        zzapmVar2.start();
        for (int i2 = 0; i2 < 4; i2++) {
            zzapu zzapuVar2 = new zzapu(this.zzd, this.zzf, this.zze, this.zzk);
            this.zzg[i2] = zzapuVar2;
            zzapuVar2.start();
        }
    }
}
