package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.Executor;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzfbr implements zzgej {
    final /* synthetic */ zzeqt zza;
    final /* synthetic */ zzfmz zzb;
    final /* synthetic */ zzfmo zzc;
    final /* synthetic */ zzfbt zzd;
    final /* synthetic */ zzfbu zze;

    public zzfbr(zzfbu zzfbuVar, zzeqt zzeqtVar, zzfmz zzfmzVar, zzfmo zzfmoVar, zzfbt zzfbtVar) {
        this.zza = zzeqtVar;
        this.zzb = zzfmzVar;
        this.zzc = zzfmoVar;
        this.zzd = zzfbtVar;
        this.zze = zzfbuVar;
    }

    /* JADX WARN: Type inference failed for: r0v8, types: [java.lang.Object, com.google.android.gms.internal.ads.zzdae] */
    @Override // com.google.android.gms.internal.ads.zzgej
    public final void zza(Throwable th) {
        zzfed zzfedVar;
        final com.google.android.gms.ads.internal.client.zze zza;
        zzfck zzfckVar;
        zzdad zzm;
        zzfnc zzfncVar;
        zzfmz zzfmzVar;
        Executor executor;
        zzfedVar = this.zze.zze;
        zzctp zzctpVar = (zzctp) zzfedVar.zzd();
        if (zzctpVar == null) {
            zza = zzfij.zzb(th, null);
        } else {
            zza = zzctpVar.zzb().zza(th);
        }
        synchronized (this.zze) {
            try {
                this.zze.zzj = null;
                if (zzctpVar != null) {
                    zzctpVar.zzc().zzbK(zza);
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzia)).booleanValue()) {
                        executor = this.zze.zzc;
                        executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfbq
                            @Override // java.lang.Runnable
                            public final void run() {
                                zzfck zzfckVar2;
                                zzfckVar2 = zzfbr.this.zze.zzd;
                                zzfckVar2.zzbK(zza);
                            }
                        });
                    }
                } else {
                    zzfckVar = this.zze.zzd;
                    zzfckVar.zzbK(zza);
                    zzm = this.zze.zzm(this.zzd);
                    zzm.zzh().zzb().zzc().zzh();
                }
                zzfie.zzb(zza.zza, th, new ObfuscatedString(new long[]{2655194030451596721L, 1463628699211927196L, 9109868429292730170L, -1725159538895881960L, 7378216444425833010L}).toString());
                this.zza.zza();
                if (((Boolean) zzbht.zzc.zze()).booleanValue() && (zzfmzVar = this.zzb) != null) {
                    zzfmzVar.zzc(zza);
                    zzfmo zzfmoVar = this.zzc;
                    zzfmoVar.zzg(th);
                    zzfmoVar.zzf(false);
                    zzfmzVar.zza(zzfmoVar);
                    zzfmzVar.zzg();
                } else {
                    zzfncVar = this.zze.zzh;
                    zzfmo zzfmoVar2 = this.zzc;
                    zzfmoVar2.zza(zza);
                    zzfmoVar2.zzg(th);
                    zzfmoVar2.zzf(false);
                    zzfncVar.zzb(zzfmoVar2.zzl());
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgej
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzfnc zzfncVar;
        zzfmz zzfmzVar;
        zzfck zzfckVar;
        zzcwh zzcwhVar = (zzcwh) obj;
        synchronized (this.zze) {
            try {
                this.zze.zzj = null;
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzia)).booleanValue()) {
                    zzdfc zzn = zzcwhVar.zzn();
                    zzfckVar = this.zze.zzd;
                    zzn.zzb(zzfckVar);
                }
                this.zza.zzb(zzcwhVar);
                if (((Boolean) zzbht.zzc.zze()).booleanValue() && (zzfmzVar = this.zzb) != null) {
                    zzfmzVar.zzf(zzcwhVar.zzp().zzb);
                    zzfmzVar.zze(zzcwhVar.zzl().zzg());
                    zzfmo zzfmoVar = this.zzc;
                    zzfmoVar.zzf(true);
                    zzfmzVar.zza(zzfmoVar);
                    zzfmzVar.zzg();
                } else {
                    zzfncVar = this.zze.zzh;
                    zzfmo zzfmoVar2 = this.zzc;
                    zzfmoVar2.zzb(zzcwhVar.zzp().zzb);
                    zzfmoVar2.zzd(zzcwhVar.zzl().zzg());
                    zzfmoVar2.zzf(true);
                    zzfncVar.zzb(zzfmoVar2.zzl());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
