package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
final class zzajy {
    public int zza;
    public long zzb;
    public int zzc;
    public int zzd;
    public int zze;
    public final int[] zzf = new int[255];
    private final zzfp zzg = new zzfp(255);

    public final void zza() {
        this.zza = 0;
        this.zzb = 0L;
        this.zzc = 0;
        this.zzd = 0;
        this.zze = 0;
    }

    public final boolean zzb(zzacv zzacvVar, boolean z) {
        zza();
        this.zzg.zzH(27);
        if (zzacy.zzc(zzacvVar, this.zzg.zzM(), 0, 27, z) && this.zzg.zzu() == 1332176723) {
            if (this.zzg.zzm() != 0) {
                if (z) {
                    return false;
                }
                throw zzcc.zzc(new ObfuscatedString(new long[]{4660869489121591994L, 7437576757369777970L, -2154520031877646337L, 6117746492375944242L, 8239310669379706585L}).toString());
            }
            this.zza = this.zzg.zzm();
            this.zzb = this.zzg.zzr();
            this.zzg.zzs();
            this.zzg.zzs();
            this.zzg.zzs();
            int zzm = this.zzg.zzm();
            this.zzc = zzm;
            this.zzd = 27 + zzm;
            this.zzg.zzH(zzm);
            if (zzacy.zzc(zzacvVar, this.zzg.zzM(), 0, this.zzc, z)) {
                for (int i = 0; i < this.zzc; i++) {
                    this.zzf[i] = this.zzg.zzm();
                    this.zze += this.zzf[i];
                }
                return true;
            }
        }
        return false;
    }

    public final boolean zzc(zzacv zzacvVar, long j) {
        boolean z;
        if (zzacvVar.zzf() == zzacvVar.zze()) {
            z = true;
        } else {
            z = false;
        }
        zzek.zzd(z);
        this.zzg.zzH(4);
        while (true) {
            if ((j == -1 || zzacvVar.zzf() + 4 < j) && zzacy.zzc(zzacvVar, this.zzg.zzM(), 0, 4, true)) {
                this.zzg.zzK(0);
                if (this.zzg.zzu() != 1332176723) {
                    ((zzack) zzacvVar).zzo(1, false);
                } else {
                    zzacvVar.zzj();
                    return true;
                }
            }
        }
        do {
            if (j != -1 && zzacvVar.zzf() >= j) {
                break;
            }
        } while (zzacvVar.zzc(1) != -1);
        return false;
    }
}
