package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes2.dex */
public final class zzczu implements zzdax, zzdhz, zzdfp, zzdbn, zzayq {
    private final zzdbp zza;
    private final zzfgm zzb;
    private final ScheduledExecutorService zzc;
    private final Executor zzd;
    private ScheduledFuture zzf;

    @Nullable
    private final String zzh;
    private final zzgfg zze = zzgfg.zze();
    private final AtomicBoolean zzg = new AtomicBoolean();

    public zzczu(zzdbp zzdbpVar, zzfgm zzfgmVar, ScheduledExecutorService scheduledExecutorService, Executor executor, @Nullable String str) {
        this.zza = zzdbpVar;
        this.zzb = zzfgmVar;
        this.zzc = scheduledExecutorService;
        this.zzd = executor;
        this.zzh = str;
    }

    private final boolean zzm() {
        if (this.zzh.equals(new ObfuscatedString(new long[]{1076523608464643521L, 1901151077235348456L, -9064806396519527976L, -1149696039055956558L, 4273522730398762258L, 4048891603253289197L, 3173234569702972755L}).toString())) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzdax
    public final void zza() {
    }

    @Override // com.google.android.gms.internal.ads.zzdax
    public final void zzb() {
    }

    @Override // com.google.android.gms.internal.ads.zzdax
    public final void zzbB(zzbzu zzbzuVar, String str, String str2) {
    }

    @Override // com.google.android.gms.internal.ads.zzayq
    public final void zzby(zzayp zzaypVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkQ)).booleanValue() && zzm() && zzaypVar.zzj && this.zzg.compareAndSet(false, true) && this.zzb.zzf != 3) {
            com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{4140019132073777538L, 7920412176232215592L, -4581431776007638594L, -5777065499396109475L, 5250693158844132315L, 5687999524876742245L}).toString());
            this.zza.zza();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdax
    public final void zzc() {
        zzfgm zzfgmVar = this.zzb;
        if (zzfgmVar.zzf != 3) {
            int i = zzfgmVar.zzZ;
            if (i == 0 || i == 1) {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkQ)).booleanValue() && zzm()) {
                    return;
                }
                this.zza.zza();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdax
    public final void zze() {
    }

    @Override // com.google.android.gms.internal.ads.zzdax
    public final void zzf() {
    }

    public final /* synthetic */ void zzh() {
        synchronized (this) {
            try {
                if (this.zze.isDone()) {
                    return;
                }
                this.zze.zzc(Boolean.TRUE);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdfp
    public final void zzi() {
    }

    @Override // com.google.android.gms.internal.ads.zzdfp
    public final synchronized void zzj() {
        try {
            if (this.zze.isDone()) {
                return;
            }
            ScheduledFuture scheduledFuture = this.zzf;
            if (scheduledFuture != null) {
                scheduledFuture.cancel(true);
            }
            this.zze.zzc(Boolean.TRUE);
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdhz
    public final void zzk() {
        if (this.zzb.zzf != 3) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzbw)).booleanValue()) {
                zzfgm zzfgmVar = this.zzb;
                if (zzfgmVar.zzZ == 2) {
                    if (zzfgmVar.zzr == 0) {
                        this.zza.zza();
                    } else {
                        zzgen.zzr(this.zze, new zzczt(this), this.zzd);
                        this.zzf = this.zzc.schedule(new Runnable() { // from class: com.google.android.gms.internal.ads.zzczs
                            @Override // java.lang.Runnable
                            public final void run() {
                                zzczu.this.zzh();
                            }
                        }, this.zzb.zzr, TimeUnit.MILLISECONDS);
                    }
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdhz
    public final void zzl() {
    }

    @Override // com.google.android.gms.internal.ads.zzdbn
    public final synchronized void zzp(com.google.android.gms.ads.internal.client.zze zzeVar) {
        try {
            if (this.zze.isDone()) {
                return;
            }
            ScheduledFuture scheduledFuture = this.zzf;
            if (scheduledFuture != null) {
                scheduledFuture.cancel(true);
            }
            this.zze.zzd(new Exception());
        } catch (Throwable th) {
            throw th;
        }
    }
}
