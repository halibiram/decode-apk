package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzafi implements zzacu {
    private final zzfp zza = new zzfp(4);
    private final zzadw zzb = new zzadw(-1, -1, new ObfuscatedString(new long[]{-8184950438571602061L, 1152510406690599238L, -9138771398185171468L}).toString());

    private final boolean zza(zzacv zzacvVar, int i) {
        this.zza.zzH(4);
        ((zzack) zzacvVar).zzm(this.zza.zzM(), 0, 4, false);
        if (this.zza.zzu() != i) {
            return false;
        }
        return true;
    }

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
        ((zzack) zzacvVar).zzl(4, false);
        if (!zza(zzacvVar, 1718909296) || !zza(zzacvVar, 1751476579)) {
            return false;
        }
        return true;
    }
}
