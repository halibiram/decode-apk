package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzcwu implements zzgej {
    final /* synthetic */ zzgej zza;
    final /* synthetic */ zzcww zzb;

    public zzcwu(zzcww zzcwwVar, zzgej zzgejVar) {
        this.zza = zzgejVar;
        this.zzb = zzcwwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgej
    public final void zza(Throwable th) {
        this.zza.zza(th);
        zzcep.zze.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcwq
            @Override // java.lang.Runnable
            public final void run() {
                zzcww.this.zzd();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzgej
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzcww.zzb(this.zzb, ((zzcwp) obj).zza, this.zza);
    }
}
