package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzach {
    public static void zza(long j, zzfp zzfpVar, zzaea[] zzaeaVarArr) {
        int i;
        boolean z;
        while (true) {
            boolean z2 = true;
            if (zzfpVar.zzb() > 1) {
                int zzc = zzc(zzfpVar);
                int zzc2 = zzc(zzfpVar);
                int zzd = zzfpVar.zzd() + zzc2;
                if (zzc2 != -1 && zzc2 <= zzfpVar.zzb()) {
                    if (zzc == 4 && zzc2 >= 8) {
                        int zzm = zzfpVar.zzm();
                        int zzq = zzfpVar.zzq();
                        if (zzq == 49) {
                            i = zzfpVar.zzg();
                            zzq = 49;
                        } else {
                            i = 0;
                        }
                        int zzm2 = zzfpVar.zzm();
                        if (zzq == 47) {
                            zzfpVar.zzL(1);
                            zzq = 47;
                        }
                        if (zzm != 181 || ((zzq != 49 && zzq != 47) || zzm2 != 3)) {
                            z = false;
                        } else {
                            z = true;
                        }
                        if (zzq == 49) {
                            if (i != 1195456820) {
                                z2 = false;
                            }
                            z &= z2;
                        }
                        if (z) {
                            zzb(j, zzfpVar, zzaeaVarArr);
                        }
                    }
                } else {
                    zzff.zzf(new ObfuscatedString(new long[]{2801804775860288417L, 8516268671720658528L}).toString(), new ObfuscatedString(new long[]{-877944111581929068L, 6420514869515042767L, 2732753270873022542L, -2171528823497647886L, -1871162952378861056L, -2439514000051484419L, 8256739908253787227L}).toString());
                    zzd = zzfpVar.zze();
                }
                zzfpVar.zzK(zzd);
            } else {
                return;
            }
        }
    }

    public static void zzb(long j, zzfp zzfpVar, zzaea[] zzaeaVarArr) {
        boolean z;
        int zzm = zzfpVar.zzm();
        if ((zzm & 64) != 0) {
            int i = zzm & 31;
            zzfpVar.zzL(1);
            int zzd = zzfpVar.zzd();
            for (zzaea zzaeaVar : zzaeaVarArr) {
                int i2 = i * 3;
                zzfpVar.zzK(zzd);
                zzaeaVar.zzr(zzfpVar, i2);
                if (j != -9223372036854775807L) {
                    z = true;
                } else {
                    z = false;
                }
                zzek.zzf(z);
                zzaeaVar.zzt(j, 1, i2, 0, null);
            }
        }
    }

    private static int zzc(zzfp zzfpVar) {
        int i = 0;
        while (zzfpVar.zzb() != 0) {
            int zzm = zzfpVar.zzm();
            i += zzm;
            if (zzm != 255) {
                return i;
            }
        }
        return -1;
    }
}
