package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzfcr implements zzeqt {
    final /* synthetic */ zzfcs zza;

    public zzfcr(zzfcs zzfcsVar) {
        this.zza = zzfcsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeqt
    public final void zza() {
        synchronized (this.zza) {
            this.zza.zza = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeqt
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzfck zzfckVar;
        zzfck zzfckVar2;
        zzdwf zzdwfVar;
        zzctz zzctzVar = (zzctz) obj;
        synchronized (this.zza) {
            try {
                zzctz zzctzVar2 = this.zza.zza;
                if (zzctzVar2 != null) {
                    zzctzVar2.zzb();
                }
                zzfcs zzfcsVar = this.zza;
                zzfcsVar.zza = zzctzVar;
                zzctzVar.zzc(zzfcsVar);
                zzfcs zzfcsVar2 = this.zza;
                zzfckVar = zzfcsVar2.zzg;
                zzfckVar2 = zzfcsVar2.zzg;
                zzdwfVar = zzfcsVar2.zzi;
                zzfckVar.zzk(new zzcua(zzctzVar, zzfcsVar2, zzfckVar2, zzdwfVar));
                zzctzVar.zzj();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
