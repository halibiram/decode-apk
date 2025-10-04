package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzadn implements zzadu {
    private final long[] zza;
    private final long[] zzb;
    private final long zzc;
    private final boolean zzd;

    public zzadn(long[] jArr, long[] jArr2, long j) {
        boolean z;
        boolean z2;
        int length = jArr.length;
        int length2 = jArr2.length;
        if (length == length2) {
            z = true;
        } else {
            z = false;
        }
        zzek.zzd(z);
        if (length2 > 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        this.zzd = z2;
        if (z2 && jArr2[0] > 0) {
            int i = length2 + 1;
            long[] jArr3 = new long[i];
            this.zza = jArr3;
            long[] jArr4 = new long[i];
            this.zzb = jArr4;
            System.arraycopy(jArr, 0, jArr3, 1, length2);
            System.arraycopy(jArr2, 0, jArr4, 1, length2);
        } else {
            this.zza = jArr;
            this.zzb = jArr2;
        }
        this.zzc = j;
    }

    @Override // com.google.android.gms.internal.ads.zzadu
    public final long zza() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzadu
    public final zzads zzg(long j) {
        if (!this.zzd) {
            zzadv zzadvVar = zzadv.zza;
            return new zzads(zzadvVar, zzadvVar);
        }
        int zzc = zzfy.zzc(this.zzb, j, true, true);
        zzadv zzadvVar2 = new zzadv(this.zzb[zzc], this.zza[zzc]);
        if (zzadvVar2.zzb != j) {
            long[] jArr = this.zzb;
            if (zzc != jArr.length - 1) {
                int i = zzc + 1;
                return new zzads(zzadvVar2, new zzadv(jArr[i], this.zza[i]));
            }
        }
        return new zzads(zzadvVar2, zzadvVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzadu
    public final boolean zzh() {
        return this.zzd;
    }
}
