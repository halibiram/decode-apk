package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzeqo implements zzeqt {
    final /* synthetic */ zzeqp zza;

    public zzeqo(zzeqp zzeqpVar) {
        this.zza = zzeqpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeqt
    public final void zza() {
        synchronized (this.zza) {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeqt
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        synchronized (this.zza) {
            this.zza.zzc = ((zzcwh) obj).zzl();
            ((zzcwh) obj).zzj();
        }
    }
}
