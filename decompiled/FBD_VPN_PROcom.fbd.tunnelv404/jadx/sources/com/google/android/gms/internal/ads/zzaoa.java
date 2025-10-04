package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzaoa implements zzacf {
    private final zzfw zza;
    private final zzfp zzb = new zzfp();
    private final int zzc;

    public zzaoa(int i, zzfw zzfwVar, int i2) {
        this.zzc = i;
        this.zza = zzfwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzacf
    public final zzace zza(zzacv zzacvVar, long j) {
        int zza;
        int zza2;
        long zzf = zzacvVar.zzf();
        int min = (int) Math.min(112800L, zzacvVar.zzd() - zzf);
        this.zzb.zzH(min);
        ((zzack) zzacvVar).zzm(this.zzb.zzM(), 0, min, false);
        zzfp zzfpVar = this.zzb;
        int zze = zzfpVar.zze();
        long j2 = -1;
        long j3 = -9223372036854775807L;
        long j4 = -1;
        while (zzfpVar.zzb() >= 188 && (zza2 = (zza = zzaom.zza(zzfpVar.zzM(), zzfpVar.zzd(), zze)) + 188) <= zze) {
            long zzb = zzaom.zzb(zzfpVar, zza, this.zzc);
            if (zzb != -9223372036854775807L) {
                long zzb2 = this.zza.zzb(zzb);
                if (zzb2 > j) {
                    if (j3 == -9223372036854775807L) {
                        return zzace.zzd(zzb2, zzf);
                    }
                } else {
                    j4 = zza;
                    if (100000 + zzb2 <= j) {
                        j3 = zzb2;
                    }
                }
                return zzace.zze(zzf + j4);
            }
            zzfpVar.zzK(zza2);
            j2 = zza2;
        }
        if (j3 != -9223372036854775807L) {
            return zzace.zzf(j3, zzf + j2);
        }
        return zzace.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzacf
    public final void zzb() {
        byte[] bArr = zzfy.zzf;
        int length = bArr.length;
        this.zzb.zzI(bArr, 0);
    }
}
