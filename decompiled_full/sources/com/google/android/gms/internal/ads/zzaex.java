package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzaex implements zzacf {
    private final zzadh zza;
    private final int zzb;
    private final zzadc zzc = new zzadc();

    public /* synthetic */ zzaex(zzadh zzadhVar, int i, zzaew zzaewVar) {
        this.zza = zzadhVar;
        this.zzb = i;
    }

    private final long zzc(zzacv zzacvVar) {
        while (zzacvVar.zze() < zzacvVar.zzd() - 6) {
            zzadh zzadhVar = this.zza;
            int i = this.zzb;
            zzadc zzadcVar = this.zzc;
            long zze = zzacvVar.zze();
            byte[] bArr = new byte[2];
            zzack zzackVar = (zzack) zzacvVar;
            zzackVar.zzm(bArr, 0, 2, false);
            if ((((bArr[0] & 255) << 8) | (bArr[1] & 255)) != i) {
                zzacvVar.zzj();
                zzackVar.zzl((int) (zze - zzacvVar.zzf()), false);
            } else {
                zzfp zzfpVar = new zzfp(16);
                System.arraycopy(bArr, 0, zzfpVar.zzM(), 0, 2);
                zzfpVar.zzJ(zzacy.zza(zzacvVar, zzfpVar.zzM(), 2, 14));
                zzacvVar.zzj();
                zzackVar.zzl((int) (zze - zzacvVar.zzf()), false);
                if (zzadd.zzc(zzfpVar, zzadhVar, i, zzadcVar)) {
                    break;
                }
            }
            zzackVar.zzl(1, false);
        }
        if (zzacvVar.zze() >= zzacvVar.zzd() - 6) {
            ((zzack) zzacvVar).zzl((int) (zzacvVar.zzd() - zzacvVar.zze()), false);
            return this.zza.zzj;
        }
        return this.zzc.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzacf
    public final zzace zza(zzacv zzacvVar, long j) {
        int i = this.zza.zzc;
        long zzf = zzacvVar.zzf();
        long zzc = zzc(zzacvVar);
        long zze = zzacvVar.zze();
        ((zzack) zzacvVar).zzl(Math.max(6, i), false);
        long zzc2 = zzc(zzacvVar);
        long zze2 = zzacvVar.zze();
        if (zzc <= j && zzc2 > j) {
            return zzace.zze(zze);
        }
        if (zzc2 <= j) {
            return zzace.zzf(zzc2, zze2);
        }
        return zzace.zzd(zzc, zzf);
    }

    @Override // com.google.android.gms.internal.ads.zzacf
    public final /* synthetic */ void zzb() {
    }
}
