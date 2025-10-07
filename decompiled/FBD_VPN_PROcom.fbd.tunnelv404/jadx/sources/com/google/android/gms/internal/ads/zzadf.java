package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzadf implements zzadu {
    private final zzadh zza;
    private final long zzb;

    public zzadf(zzadh zzadhVar, long j) {
        this.zza = zzadhVar;
        this.zzb = j;
    }

    private final zzadv zzb(long j, long j2) {
        return new zzadv((j * 1000000) / this.zza.zze, this.zzb + j2);
    }

    @Override // com.google.android.gms.internal.ads.zzadu
    public final long zza() {
        return this.zza.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzadu
    public final zzads zzg(long j) {
        long j2;
        zzek.zzb(this.zza.zzk);
        zzadh zzadhVar = this.zza;
        zzadg zzadgVar = zzadhVar.zzk;
        long[] jArr = zzadgVar.zza;
        long[] jArr2 = zzadgVar.zzb;
        int zzc = zzfy.zzc(jArr, zzadhVar.zzb(j), true, false);
        long j3 = 0;
        if (zzc == -1) {
            j2 = 0;
        } else {
            j2 = jArr[zzc];
        }
        if (zzc != -1) {
            j3 = jArr2[zzc];
        }
        zzadv zzb = zzb(j2, j3);
        if (zzb.zzb != j && zzc != jArr.length - 1) {
            int i = zzc + 1;
            return new zzads(zzb, zzb(jArr[i], jArr2[i]));
        }
        return new zzads(zzb, zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzadu
    public final boolean zzh() {
        return true;
    }
}
