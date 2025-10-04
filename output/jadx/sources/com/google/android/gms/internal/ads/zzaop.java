package com.google.android.gms.internal.ads;

import com.google.common.base.Ascii;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.math.RoundingMode;
import okhttp3.internal.http.HttpStatusCodesKt;

/* loaded from: classes2.dex */
final class zzaop implements zzaoq {
    private static final int[] zza = {-1, -1, -1, -1, 2, 4, 6, 8, -1, -1, -1, -1, 2, 4, 6, 8};
    private static final int[] zzb = {7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 19, 21, 23, 25, 28, 31, 34, 37, 41, 45, 50, 55, 60, 66, 73, 80, 88, 97, 107, 118, 130, 143, 157, 173, 190, 209, 230, 253, 279, 307, 337, 371, HttpStatusCodesKt.HTTP_CLIENT_TIMEOUT, 449, 494, 544, 598, 658, 724, 796, 876, 963, 1060, 1166, 1282, 1411, 1552, 1707, 1878, 2066, 2272, 2499, 2749, 3024, 3327, 3660, 4026, 4428, 4871, 5358, 5894, 6484, 7132, 7845, 8630, 9493, 10442, 11487, 12635, 13899, 15289, 16818, 18500, 20350, 22385, 24623, 27086, 29794, 32767};
    private final zzacx zzc;
    private final zzaea zzd;
    private final zzaot zze;
    private final int zzf;
    private final byte[] zzg;
    private final zzfp zzh;
    private final int zzi;
    private final zzam zzj;
    private int zzk;
    private long zzl;
    private int zzm;
    private long zzn;

    public zzaop(zzacx zzacxVar, zzaea zzaeaVar, zzaot zzaotVar) {
        this.zzc = zzacxVar;
        this.zzd = zzaeaVar;
        this.zze = zzaotVar;
        int max = Math.max(1, zzaotVar.zzc / 10);
        this.zzi = max;
        zzfp zzfpVar = new zzfp(zzaotVar.zzf);
        zzfpVar.zzk();
        int zzk = zzfpVar.zzk();
        this.zzf = zzk;
        int i = zzaotVar.zzb;
        int i2 = zzaotVar.zzd;
        int m3323xfbe0c504 = AbstractC0749x8313616e.m3323xfbe0c504(i2 - (i * 4), 8, zzaotVar.zze * i, 1);
        if (zzk == m3323xfbe0c504) {
            int i3 = zzfy.zza;
            int i4 = ((max + zzk) - 1) / zzk;
            this.zzg = new byte[i2 * i4];
            this.zzh = new zzfp((zzk + zzk) * i * i4);
            int i5 = ((zzaotVar.zzc * zzaotVar.zzd) * 8) / zzk;
            zzak zzakVar = new zzak();
            zzakVar.zzW(new ObfuscatedString(new long[]{6288562353040895796L, -4629785582550500005L, -1622299166278660463L}).toString());
            zzakVar.zzx(i5);
            zzakVar.zzR(i5);
            zzakVar.zzO((max + max) * i);
            zzakVar.zzy(zzaotVar.zzb);
            zzakVar.zzX(zzaotVar.zzc);
            zzakVar.zzQ(2);
            this.zzj = zzakVar.zzac();
            return;
        }
        throw zzcc.zza(new ObfuscatedString(new long[]{2215207752318197263L, 3853788324713846668L, 720882683694149707L, -5745698333713162171L, -8509365182859318352L}).toString() + m3323xfbe0c504 + new ObfuscatedString(new long[]{7186630334535992780L, -867794974737094708L}).toString() + zzk, null);
    }

    private final int zzd(int i) {
        int i2 = this.zze.zzb;
        return i / (i2 + i2);
    }

    private final int zze(int i) {
        return (i + i) * this.zze.zzb;
    }

    private final void zzf(int i) {
        long zzs = this.zzl + zzfy.zzs(this.zzn, 1000000L, this.zze.zzc, RoundingMode.FLOOR);
        int zze = zze(i);
        this.zzd.zzt(zzs, 1, zze, this.zzm - zze, null);
        this.zzn += i;
        this.zzm -= zze;
    }

    @Override // com.google.android.gms.internal.ads.zzaoq
    public final void zza(int i, long j) {
        this.zzc.zzO(new zzaow(this.zze, this.zzf, i, j));
        this.zzd.zzl(this.zzj);
    }

    @Override // com.google.android.gms.internal.ads.zzaoq
    public final void zzb(long j) {
        this.zzk = 0;
        this.zzl = j;
        this.zzm = 0;
        this.zzn = 0L;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:6:0x0027  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:8:0x003d -> B:3:0x0022). Please report as a decompilation issue!!! */
    @Override // com.google.android.gms.internal.ads.zzaoq
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean zzc(zzacv zzacvVar, long j) {
        boolean z;
        int i;
        int zzd;
        int i2;
        int zzd2 = this.zzi - zzd(this.zzm);
        int i3 = zzfy.zza;
        int i4 = (((zzd2 + r3) - 1) / this.zzf) * this.zze.zzd;
        if (j != 0) {
            z = false;
            while (!z) {
                if (this.zzk >= i4) {
                    break;
                }
                int zza2 = zzacvVar.zza(this.zzg, this.zzk, (int) Math.min(i4 - r8, j));
                if (zza2 != -1) {
                    this.zzk += zza2;
                }
            }
            i = this.zzk / this.zze.zzd;
            if (i > 0) {
                byte[] bArr = this.zzg;
                zzfp zzfpVar = this.zzh;
                for (int i5 = 0; i5 < i; i5++) {
                    int i6 = 0;
                    while (true) {
                        zzaot zzaotVar = this.zze;
                        int i7 = zzaotVar.zzb;
                        if (i6 < i7) {
                            byte[] zzM = zzfpVar.zzM();
                            int i8 = zzaotVar.zzd;
                            int i9 = i5 * i8;
                            int i10 = (i8 / i7) - 4;
                            int i11 = (i6 * 4) + i9;
                            int i12 = bArr[i11 + 1] & 255;
                            int i13 = bArr[i11] & 255;
                            int min = Math.min(bArr[i11 + 2] & 255, 88);
                            int i14 = zzb[min];
                            int i15 = (this.zzf * i5 * i7) + i6;
                            int i16 = (short) ((i12 << 8) | i13);
                            int i17 = i15 + i15;
                            zzM[i17] = (byte) (i16 & 255);
                            zzM[i17 + 1] = (byte) (i16 >> 8);
                            int i18 = 0;
                            while (i18 < i10 + i10) {
                                byte b = bArr[((i18 / 8) * i7 * 4) + (i7 * 4) + i11 + ((i18 / 2) % 4)];
                                byte[] bArr2 = bArr;
                                int i19 = b & 255;
                                if (i18 % 2 == 0) {
                                    i2 = b & Ascii.SI;
                                } else {
                                    i2 = i19 >> 4;
                                }
                                int i20 = i2 & 7;
                                int i21 = (((i20 + i20) + 1) * i14) >> 3;
                                if ((i2 & 8) != 0) {
                                    i21 = -i21;
                                }
                                i16 = Math.max(-32768, Math.min(i16 + i21, 32767));
                                i17 += i7 + i7;
                                zzM[i17] = (byte) (i16 & 255);
                                zzM[i17 + 1] = (byte) (i16 >> 8);
                                int max = Math.max(0, Math.min(min + zza[i2], 88));
                                i14 = zzb[max];
                                i18++;
                                min = max;
                                bArr = bArr2;
                            }
                            i6++;
                        }
                    }
                }
                int zze = zze(this.zzf * i);
                zzfpVar.zzK(0);
                zzfpVar.zzJ(zze);
                this.zzk -= i * this.zze.zzd;
                zzfp zzfpVar2 = this.zzh;
                zzaea zzaeaVar = this.zzd;
                int zze2 = zzfpVar2.zze();
                zzady.zzb(zzaeaVar, zzfpVar2, zze2);
                int i22 = this.zzm + zze2;
                this.zzm = i22;
                int zzd3 = zzd(i22);
                int i23 = this.zzi;
                if (zzd3 >= i23) {
                    zzf(i23);
                }
            }
            if (z && (zzd = zzd(this.zzm)) > 0) {
                zzf(zzd);
            }
            return z;
        }
        z = true;
        while (!z) {
        }
        i = this.zzk / this.zze.zzd;
        if (i > 0) {
        }
        if (z) {
            zzf(zzd);
        }
        return z;
    }
}
