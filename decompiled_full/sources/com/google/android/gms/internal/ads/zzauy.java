package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzauy implements zzfru {
    final /* synthetic */ zzfqr zza;

    public zzauy(zzfqr zzfqrVar) {
        this.zza = zzfqrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfru
    public final void zza(int i, long j) {
        this.zza.zzd(i, System.currentTimeMillis() - j);
    }

    @Override // com.google.android.gms.internal.ads.zzfru
    public final void zzb(int i, long j, String str) {
        this.zza.zze(i, System.currentTimeMillis() - j, str);
    }
}
