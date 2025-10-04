package com.google.android.gms.internal.ads;

import com.google.common.base.Ascii;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzgxy {
    public static int zza(byte[] bArr, int i, zzgxx zzgxxVar) {
        int zzh = zzh(bArr, i, zzgxxVar);
        int i2 = zzgxxVar.zza;
        if (i2 >= 0) {
            if (i2 <= bArr.length - zzh) {
                if (i2 == 0) {
                    zzgxxVar.zzc = zzgyl.zzb;
                    return zzh;
                }
                zzgxxVar.zzc = zzgyl.zzv(bArr, zzh, i2);
                return zzh + i2;
            }
            throw zzhag.zzj();
        }
        throw zzhag.zzf();
    }

    public static int zzb(byte[] bArr, int i) {
        int i2 = bArr[i] & 255;
        int i3 = bArr[i + 1] & 255;
        int i4 = bArr[i + 2] & 255;
        return ((bArr[i + 3] & 255) << 24) | (i3 << 8) | i2 | (i4 << 16);
    }

    public static int zzc(zzhby zzhbyVar, byte[] bArr, int i, int i2, int i3, zzgxx zzgxxVar) {
        Object zze = zzhbyVar.zze();
        int zzl = zzl(zze, zzhbyVar, bArr, i, i2, i3, zzgxxVar);
        zzhbyVar.zzf(zze);
        zzgxxVar.zzc = zze;
        return zzl;
    }

    public static int zzd(zzhby zzhbyVar, byte[] bArr, int i, int i2, zzgxx zzgxxVar) {
        Object zze = zzhbyVar.zze();
        int zzm = zzm(zze, zzhbyVar, bArr, i, i2, zzgxxVar);
        zzhbyVar.zzf(zze);
        zzgxxVar.zzc = zze;
        return zzm;
    }

    public static int zze(zzhby zzhbyVar, int i, byte[] bArr, int i2, int i3, zzhad zzhadVar, zzgxx zzgxxVar) {
        int zzd = zzd(zzhbyVar, bArr, i2, i3, zzgxxVar);
        zzhadVar.add(zzgxxVar.zzc);
        while (zzd < i3) {
            int zzh = zzh(bArr, zzd, zzgxxVar);
            if (i != zzgxxVar.zza) {
                break;
            }
            zzd = zzd(zzhbyVar, bArr, zzh, i3, zzgxxVar);
            zzhadVar.add(zzgxxVar.zzc);
        }
        return zzd;
    }

    public static int zzf(byte[] bArr, int i, zzhad zzhadVar, zzgxx zzgxxVar) {
        zzgzv zzgzvVar = (zzgzv) zzhadVar;
        int zzh = zzh(bArr, i, zzgxxVar);
        int i2 = zzgxxVar.zza + zzh;
        while (zzh < i2) {
            zzh = zzh(bArr, zzh, zzgxxVar);
            zzgzvVar.zzh(zzgxxVar.zza);
        }
        if (zzh == i2) {
            return zzh;
        }
        throw zzhag.zzj();
    }

    public static int zzg(int i, byte[] bArr, int i2, int i3, zzhcq zzhcqVar, zzgxx zzgxxVar) {
        if ((i >>> 3) != 0) {
            int i4 = i & 7;
            if (i4 != 0) {
                if (i4 != 1) {
                    if (i4 != 2) {
                        if (i4 != 3) {
                            if (i4 == 5) {
                                zzhcqVar.zzj(i, Integer.valueOf(zzb(bArr, i2)));
                                return i2 + 4;
                            }
                            throw zzhag.zzc();
                        }
                        int i5 = (i & (-8)) | 4;
                        zzhcq zzf = zzhcq.zzf();
                        int i6 = 0;
                        while (true) {
                            if (i2 >= i3) {
                                break;
                            }
                            int zzh = zzh(bArr, i2, zzgxxVar);
                            int i7 = zzgxxVar.zza;
                            i6 = i7;
                            if (i7 != i5) {
                                int zzg = zzg(i6, bArr, zzh, i3, zzf, zzgxxVar);
                                i6 = i7;
                                i2 = zzg;
                            } else {
                                i2 = zzh;
                                break;
                            }
                        }
                        if (i2 <= i3 && i6 == i5) {
                            zzhcqVar.zzj(i, zzf);
                            return i2;
                        }
                        throw zzhag.zzg();
                    }
                    int zzh2 = zzh(bArr, i2, zzgxxVar);
                    int i8 = zzgxxVar.zza;
                    if (i8 >= 0) {
                        if (i8 <= bArr.length - zzh2) {
                            if (i8 == 0) {
                                zzhcqVar.zzj(i, zzgyl.zzb);
                            } else {
                                zzhcqVar.zzj(i, zzgyl.zzv(bArr, zzh2, i8));
                            }
                            return zzh2 + i8;
                        }
                        throw zzhag.zzj();
                    }
                    throw zzhag.zzf();
                }
                zzhcqVar.zzj(i, Long.valueOf(zzn(bArr, i2)));
                return i2 + 8;
            }
            int zzk = zzk(bArr, i2, zzgxxVar);
            zzhcqVar.zzj(i, Long.valueOf(zzgxxVar.zzb));
            return zzk;
        }
        throw zzhag.zzc();
    }

    public static int zzh(byte[] bArr, int i, zzgxx zzgxxVar) {
        int i2 = i + 1;
        byte b = bArr[i];
        if (b >= 0) {
            zzgxxVar.zza = b;
            return i2;
        }
        return zzi(b, bArr, i2, zzgxxVar);
    }

    public static int zzi(int i, byte[] bArr, int i2, zzgxx zzgxxVar) {
        byte b = bArr[i2];
        int i3 = i2 + 1;
        int i4 = i & 127;
        if (b >= 0) {
            zzgxxVar.zza = i4 | (b << 7);
            return i3;
        }
        int i5 = i4 | ((b & Byte.MAX_VALUE) << 7);
        int i6 = i2 + 2;
        byte b2 = bArr[i3];
        if (b2 >= 0) {
            zzgxxVar.zza = i5 | (b2 << Ascii.SO);
            return i6;
        }
        int i7 = i5 | ((b2 & Byte.MAX_VALUE) << 14);
        int i8 = i2 + 3;
        byte b3 = bArr[i6];
        if (b3 >= 0) {
            zzgxxVar.zza = i7 | (b3 << Ascii.NAK);
            return i8;
        }
        int i9 = i7 | ((b3 & Byte.MAX_VALUE) << 21);
        int i10 = i2 + 4;
        byte b4 = bArr[i8];
        if (b4 >= 0) {
            zzgxxVar.zza = i9 | (b4 << Ascii.FS);
            return i10;
        }
        int i11 = i9 | ((b4 & Byte.MAX_VALUE) << 28);
        while (true) {
            int i12 = i10 + 1;
            if (bArr[i10] < 0) {
                i10 = i12;
            } else {
                zzgxxVar.zza = i11;
                return i12;
            }
        }
    }

    public static int zzj(int i, byte[] bArr, int i2, int i3, zzhad zzhadVar, zzgxx zzgxxVar) {
        zzgzv zzgzvVar = (zzgzv) zzhadVar;
        int zzh = zzh(bArr, i2, zzgxxVar);
        zzgzvVar.zzh(zzgxxVar.zza);
        while (zzh < i3) {
            int zzh2 = zzh(bArr, zzh, zzgxxVar);
            if (i != zzgxxVar.zza) {
                break;
            }
            zzh = zzh(bArr, zzh2, zzgxxVar);
            zzgzvVar.zzh(zzgxxVar.zza);
        }
        return zzh;
    }

    public static int zzk(byte[] bArr, int i, zzgxx zzgxxVar) {
        long j = bArr[i];
        int i2 = i + 1;
        if (j >= 0) {
            zzgxxVar.zzb = j;
            return i2;
        }
        int i3 = i + 2;
        byte b = bArr[i2];
        long j2 = (j & 127) | ((b & Byte.MAX_VALUE) << 7);
        int i4 = 7;
        while (b < 0) {
            int i5 = i3 + 1;
            i4 += 7;
            j2 |= (r10 & Byte.MAX_VALUE) << i4;
            b = bArr[i3];
            i3 = i5;
        }
        zzgxxVar.zzb = j2;
        return i3;
    }

    public static int zzl(Object obj, zzhby zzhbyVar, byte[] bArr, int i, int i2, int i3, zzgxx zzgxxVar) {
        int zzc = ((zzhbh) zzhbyVar).zzc(obj, bArr, i, i2, i3, zzgxxVar);
        zzgxxVar.zzc = obj;
        return zzc;
    }

    public static int zzm(Object obj, zzhby zzhbyVar, byte[] bArr, int i, int i2, zzgxx zzgxxVar) {
        int i3 = i + 1;
        int i4 = bArr[i];
        if (i4 < 0) {
            i3 = zzi(i4, bArr, i3, zzgxxVar);
            i4 = zzgxxVar.zza;
        }
        int i5 = i3;
        if (i4 >= 0 && i4 <= i2 - i5) {
            int i6 = i4 + i5;
            zzhbyVar.zzi(obj, bArr, i5, i6, zzgxxVar);
            zzgxxVar.zzc = obj;
            return i6;
        }
        throw zzhag.zzj();
    }

    public static long zzn(byte[] bArr, int i) {
        return (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48) | ((bArr[i + 7] & 255) << 56);
    }
}
