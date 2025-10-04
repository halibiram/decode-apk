package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzafn extends zzadi {
    private final long zza;

    public zzafn(zzacv zzacvVar, long j) {
        super(zzacvVar);
        boolean z;
        if (zzacvVar.zzf() >= j) {
            z = true;
        } else {
            z = false;
        }
        zzek.zzd(z);
        this.zza = j;
    }

    @Override // com.google.android.gms.internal.ads.zzadi, com.google.android.gms.internal.ads.zzacv
    public final long zzd() {
        return super.zzd() - this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzadi, com.google.android.gms.internal.ads.zzacv
    public final long zze() {
        return super.zze() - this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzadi, com.google.android.gms.internal.ads.zzacv
    public final long zzf() {
        return super.zzf() - this.zza;
    }
}
