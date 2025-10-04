package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzajl {
    private static final int[] zza = {1769172845, 1769172786, 1769172787, 1769172788, 1769172789, 1769172790, 1769172793, 1635148593, 1752589105, 1751479857, 1635135537, 1836069937, 1836069938, 862401121, 862401122, 862417462, 862417718, 862414134, 862414646, 1295275552, 1295270176, 1714714144, 1801741417, 1295275600, 1903435808, 1297305174, 1684175153, 1769172332, 1885955686};

    public static boolean zza(zzacv zzacvVar) {
        return zzc(zzacvVar, true, false);
    }

    public static boolean zzb(zzacv zzacvVar, boolean z) {
        return zzc(zzacvVar, false, z);
    }

    private static boolean zzc(zzacv zzacvVar, boolean z, boolean z2) {
        boolean z3;
        long j;
        int i;
        boolean z4;
        boolean z5;
        long zzd = zzacvVar.zzd();
        long j2 = 4096;
        long j3 = -1;
        if (zzd != -1 && zzd <= 4096) {
            j2 = zzd;
        }
        zzfp zzfpVar = new zzfp(64);
        int i2 = (int) j2;
        int i3 = 0;
        boolean z6 = false;
        while (i3 < i2) {
            zzfpVar.zzH(8);
            if (!zzacvVar.zzm(zzfpVar.zzM(), 0, 8, true)) {
                break;
            }
            long zzu = zzfpVar.zzu();
            int zzg = zzfpVar.zzg();
            if (zzu == 1) {
                zzacvVar.zzh(zzfpVar.zzM(), 8, 8);
                i = 16;
                zzfpVar.zzJ(16);
                j = zzfpVar.zzt();
            } else {
                if (zzu == 0) {
                    long zzd2 = zzacvVar.zzd();
                    if (zzd2 != j3) {
                        zzu = (zzd2 - zzacvVar.zze()) + 8;
                    }
                }
                j = zzu;
                i = 8;
            }
            long j4 = i;
            if (j < j4) {
                return false;
            }
            i3 += i;
            if (zzg == 1836019574) {
                i2 += (int) j;
                if (zzd != -1 && i2 > zzd) {
                    i2 = (int) zzd;
                }
            } else {
                if (zzg == 1836019558 || zzg == 1836475768) {
                    z3 = true;
                    break;
                }
                if (zzg == 1835295092) {
                    z4 = false;
                } else {
                    z4 = true;
                }
                z6 = (!z4) | z6;
                long j5 = zzd;
                if ((i3 + j) - j4 >= i2) {
                    break;
                }
                int i4 = (int) (j - j4);
                i3 += i4;
                if (zzg == 1718909296) {
                    if (i4 < 8) {
                        return false;
                    }
                    zzfpVar.zzH(i4);
                    zzacvVar.zzh(zzfpVar.zzM(), 0, i4);
                    int i5 = i4 >> 2;
                    for (int i6 = 0; i6 < i5; i6++) {
                        if (i6 == 1) {
                            zzfpVar.zzL(4);
                        } else {
                            int zzg2 = zzfpVar.zzg();
                            if ((zzg2 >>> 8) != 3368816) {
                                if (zzg2 == 1751476579) {
                                    if (!z2) {
                                        zzg2 = 1751476579;
                                    }
                                }
                                int[] iArr = zza;
                                for (int i7 = 0; i7 < 29; i7++) {
                                    if (iArr[i7] != zzg2) {
                                    }
                                }
                            }
                            z5 = true;
                            break;
                        }
                    }
                    z5 = z6;
                    if (!z5) {
                        return false;
                    }
                    z6 = z5;
                } else if (i4 != 0) {
                    zzacvVar.zzg(i4);
                }
                zzd = j5;
            }
            j3 = -1;
        }
        z3 = false;
        if (!z6 || z != z3) {
            return false;
        }
        return true;
    }
}
