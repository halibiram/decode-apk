package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzfgc implements zzeqt {
    final /* synthetic */ zzfgd zza;

    public zzfgc(zzfgd zzfgdVar) {
        this.zza = zzfgdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeqt
    public final void zza() {
        synchronized (this.zza) {
            this.zza.zzi = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeqt
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzdso zzdsoVar;
        zzfgz zzfgzVar;
        synchronized (this.zza) {
            try {
                this.zza.zzi = (zzdso) obj;
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzdq)).booleanValue()) {
                    zzfha zzd = ((zzdso) obj).zzd();
                    zzfgzVar = this.zza.zzd;
                    zzd.zza = zzfgzVar;
                }
                zzdsoVar = this.zza.zzi;
                zzdsoVar.zzj();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
