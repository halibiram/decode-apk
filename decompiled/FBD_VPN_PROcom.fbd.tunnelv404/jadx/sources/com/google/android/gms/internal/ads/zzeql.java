package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzeql implements zzeqt {
    final /* synthetic */ zzeqm zza;

    public zzeql(zzeqm zzeqmVar) {
        this.zza = zzeqmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeqt
    public final void zza() {
        synchronized (this.zza) {
            this.zza.zzj = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeqt
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzdjn zzdjnVar;
        zzdjn zzdjnVar2 = (zzdjn) obj;
        synchronized (this.zza) {
            this.zza.zzj = zzdjnVar2;
            zzdjnVar = this.zza.zzj;
            zzdjnVar.zzj();
        }
    }
}
