package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.Executor;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzfeo implements zzgej {
    final /* synthetic */ zzeqt zza;
    final /* synthetic */ zzfmz zzb;
    final /* synthetic */ zzfmo zzc;
    final /* synthetic */ zzdko zzd;
    final /* synthetic */ zzfep zze;

    public zzfeo(zzfep zzfepVar, zzeqt zzeqtVar, zzfmz zzfmzVar, zzfmo zzfmoVar, zzdko zzdkoVar) {
        this.zza = zzeqtVar;
        this.zzb = zzfmzVar;
        this.zzc = zzfmoVar;
        this.zzd = zzdkoVar;
        this.zze = zzfepVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgej
    public final void zza(Throwable th) {
        zzfnc zzfncVar;
        zzfmz zzfmzVar;
        Executor executor;
        Executor executor2;
        final com.google.android.gms.ads.internal.client.zze zza = this.zzd.zza().zza(th);
        synchronized (this.zze) {
            try {
                this.zze.zzi = null;
                this.zzd.zzb().zzbK(zza);
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzib)).booleanValue()) {
                    executor = this.zze.zzb;
                    executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfek
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzeqe zzeqeVar;
                            zzeqeVar = zzfeo.this.zze.zzd;
                            zzeqeVar.zzbK(zza);
                        }
                    });
                    executor2 = this.zze.zzb;
                    executor2.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfel
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzffp zzffpVar;
                            zzffpVar = zzfeo.this.zze.zze;
                            zzffpVar.zzbK(zza);
                        }
                    });
                }
                zzfie.zzb(zza.zza, th, new ObfuscatedString(new long[]{8744453588728601364L, -440717898420496394L, 3494230690447681810L, -33832733071003791L, -2634844271445749490L}).toString());
                this.zza.zza();
                if (((Boolean) zzbht.zzc.zze()).booleanValue() && (zzfmzVar = this.zzb) != null) {
                    zzfmzVar.zzc(zza);
                    zzfmo zzfmoVar = this.zzc;
                    zzfmoVar.zzg(th);
                    zzfmoVar.zzf(false);
                    zzfmzVar.zza(zzfmoVar);
                    zzfmzVar.zzg();
                } else {
                    zzfncVar = this.zze.zzg;
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
        Executor executor;
        Executor executor2;
        zzeqe zzeqeVar;
        zzffp zzffpVar;
        zzdjn zzdjnVar = (zzdjn) obj;
        synchronized (this.zze) {
            try {
                this.zze.zzi = null;
                zzbfu zzbfuVar = zzbgc.zzib;
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbfuVar)).booleanValue()) {
                    zzdfc zzn = zzdjnVar.zzn();
                    zzeqeVar = this.zze.zzd;
                    zzn.zza(zzeqeVar);
                    zzffpVar = this.zze.zze;
                    zzn.zzd(zzffpVar);
                }
                this.zza.zzb(zzdjnVar);
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbfuVar)).booleanValue()) {
                    executor = this.zze.zzb;
                    executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfem
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzeqe zzeqeVar2;
                            zzeqeVar2 = zzfeo.this.zze.zzd;
                            zzeqeVar2.zzr();
                        }
                    });
                    executor2 = this.zze.zzb;
                    executor2.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfen
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzffp zzffpVar2;
                            zzffpVar2 = zzfeo.this.zze.zze;
                            zzffpVar2.zzr();
                        }
                    });
                }
                if (((Boolean) zzbht.zzc.zze()).booleanValue() && (zzfmzVar = this.zzb) != null) {
                    zzfmzVar.zzf(zzdjnVar.zzp().zzb);
                    zzfmzVar.zze(zzdjnVar.zzl().zzg());
                    zzfmo zzfmoVar = this.zzc;
                    zzfmoVar.zzf(true);
                    zzfmzVar.zza(zzfmoVar);
                    zzfmzVar.zzg();
                } else {
                    zzfncVar = this.zze.zzg;
                    zzfmo zzfmoVar2 = this.zzc;
                    zzfmoVar2.zzb(zzdjnVar.zzp().zzb);
                    zzfmoVar2.zzd(zzdjnVar.zzl().zzg());
                    zzfmoVar2.zzf(true);
                    zzfncVar.zzb(zzfmoVar2.zzl());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
