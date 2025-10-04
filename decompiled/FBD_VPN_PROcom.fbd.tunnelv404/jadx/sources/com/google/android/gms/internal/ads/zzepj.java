package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzepj implements zzeqt {
    final /* synthetic */ zzepk zza;

    public zzepj(zzepk zzepkVar) {
        this.zza = zzepkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeqt
    public final void zza() {
        synchronized (this.zza) {
            this.zza.zzi = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeqt
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzcuf zzcufVar;
        zzcuf zzcufVar2;
        zzcuf zzcufVar3;
        zzcuf zzcufVar4 = (zzcuf) obj;
        synchronized (this.zza) {
            try {
                zzepk zzepkVar = this.zza;
                zzcufVar = zzepkVar.zzi;
                if (zzcufVar != null) {
                    zzcufVar3 = zzepkVar.zzi;
                    zzcufVar3.zzb();
                }
                this.zza.zzi = zzcufVar4;
                zzcufVar2 = this.zza.zzi;
                zzcufVar2.zzj();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
