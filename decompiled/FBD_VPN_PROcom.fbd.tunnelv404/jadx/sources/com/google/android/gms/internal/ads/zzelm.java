package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzelm extends zzbul {
    final /* synthetic */ zzeln zza;
    private final zzeiq zzb;

    public /* synthetic */ zzelm(zzeln zzelnVar, zzeiq zzeiqVar, zzell zzellVar) {
        this.zza = zzelnVar;
        this.zzb = zzeiqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbum
    public final void zze(String str) {
        ((zzekj) this.zzb.zzc).zzi(0, str);
    }

    @Override // com.google.android.gms.internal.ads.zzbum
    public final void zzf(com.google.android.gms.ads.internal.client.zze zzeVar) {
        ((zzekj) this.zzb.zzc).zzh(zzeVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbum
    public final void zzg(zzbtk zzbtkVar) {
        zzeln.zzc(this.zza, zzbtkVar);
        ((zzekj) this.zzb.zzc).zzo();
    }
}
