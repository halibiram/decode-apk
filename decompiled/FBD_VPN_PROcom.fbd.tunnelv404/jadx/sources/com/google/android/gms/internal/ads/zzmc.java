package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzmc extends zzuf {
    private final zzcw zzd;

    public zzmc(zzmd zzmdVar, zzcx zzcxVar) {
        super(zzcxVar);
        this.zzd = new zzcw();
    }

    @Override // com.google.android.gms.internal.ads.zzuf, com.google.android.gms.internal.ads.zzcx
    public final zzcu zzd(int i, zzcu zzcuVar, boolean z) {
        zzcu zzd = this.zzc.zzd(i, zzcuVar, z);
        if (this.zzc.zze(zzd.zzd, this.zzd, 0L).zzb()) {
            zzd.zzl(zzcuVar.zzb, zzcuVar.zzc, zzcuVar.zzd, zzcuVar.zze, 0L, zzd.zza, true);
        } else {
            zzd.zzg = true;
        }
        return zzd;
    }
}
