package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzaox implements zzacu {
    private final zzfp zza = new zzfp(4);
    private final zzadw zzb = new zzadw(-1, -1, new ObfuscatedString(new long[]{1275736452793275262L, -3036065931191042425L, -3045905014749193742L}).toString());

    @Override // com.google.android.gms.internal.ads.zzacu
    public final int zzb(zzacv zzacvVar, zzadr zzadrVar) {
        return this.zzb.zzb(zzacvVar, zzadrVar);
    }

    @Override // com.google.android.gms.internal.ads.zzacu
    public final void zzc(zzacx zzacxVar) {
        this.zzb.zzc(zzacxVar);
    }

    @Override // com.google.android.gms.internal.ads.zzacu
    public final void zzd(long j, long j2) {
        this.zzb.zzd(j, j2);
    }

    @Override // com.google.android.gms.internal.ads.zzacu
    public final boolean zze(zzacv zzacvVar) {
        this.zza.zzH(4);
        zzack zzackVar = (zzack) zzacvVar;
        zzackVar.zzm(this.zza.zzM(), 0, 4, false);
        if (this.zza.zzu() == 1380533830) {
            zzackVar.zzl(4, false);
            this.zza.zzH(4);
            zzackVar.zzm(this.zza.zzM(), 0, 4, false);
            if (this.zza.zzu() == 1464156752) {
                return true;
            }
        }
        return false;
    }
}
