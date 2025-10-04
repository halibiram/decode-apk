package com.google.android.gms.internal.ads;

import java.nio.ShortBuffer;
import java.util.Arrays;
import okhttp3.internal.http.HttpStatusCodesKt;

/* loaded from: classes2.dex */
final class zzdv {
    private final int zza;
    private final int zzb;
    private final float zzc;
    private final float zzd;
    private final float zze;
    private final int zzf;
    private final int zzg;
    private final int zzh;
    private final short[] zzi;
    private short[] zzj;
    private int zzk;
    private short[] zzl;
    private int zzm;
    private short[] zzn;
    private int zzo;
    private int zzp;
    private int zzq;
    private int zzr;
    private int zzs;
    private int zzt;
    private int zzu;
    private int zzv;

    public zzdv(int i, int i2, float f, float f2, int i3) {
        this.zza = i;
        this.zzb = i2;
        this.zzc = f;
        this.zzd = f2;
        this.zze = i / i3;
        this.zzf = i / HttpStatusCodesKt.HTTP_BAD_REQUEST;
        int i4 = i / 65;
        this.zzg = i4;
        int i5 = i4 + i4;
        this.zzh = i5;
        this.zzi = new short[i5];
        int i6 = i5 * i2;
        this.zzj = new short[i6];
        this.zzl = new short[i6];
        this.zzn = new short[i6];
    }

    private final int zzg(short[] sArr, int i, int i2, int i3) {
        int i4 = 1;
        int i5 = 255;
        int i6 = 0;
        int i7 = 0;
        while (i2 <= i3) {
            int i8 = 0;
            for (int i9 = 0; i9 < i2; i9++) {
                int i10 = this.zzb * i;
                i8 += Math.abs(sArr[i10 + i9] - sArr[(i10 + i2) + i9]);
            }
            int i11 = i8 * i6;
            int i12 = i4 * i2;
            if (i11 < i12) {
                i4 = i8;
            }
            if (i11 < i12) {
                i6 = i2;
            }
            int i13 = i8 * i5;
            int i14 = i7 * i2;
            if (i13 > i14) {
                i7 = i8;
            }
            if (i13 > i14) {
                i5 = i2;
            }
            i2++;
        }
        this.zzu = i4 / i6;
        this.zzv = i7 / i5;
        return i6;
    }

    private final void zzh(short[] sArr, int i, int i2) {
        short[] zzl = zzl(this.zzl, this.zzm, i2);
        this.zzl = zzl;
        int i3 = this.zzm;
        int i4 = this.zzb;
        System.arraycopy(sArr, i * i4, zzl, i3 * i4, i2 * i4);
        this.zzm += i2;
    }

    private final void zzi(short[] sArr, int i, int i2) {
        int i3;
        for (int i4 = 0; i4 < this.zzh / i2; i4++) {
            int i5 = 0;
            int i6 = 0;
            while (true) {
                int i7 = this.zzb;
                i3 = i7 * i2;
                if (i5 < i3) {
                    i6 += sArr[(i3 * i4) + (i7 * i) + i5];
                    i5++;
                }
            }
            this.zzi[i4] = (short) (i6 / i3);
        }
    }

    private static void zzj(int i, int i2, short[] sArr, int i3, short[] sArr2, int i4, short[] sArr3, int i5) {
        for (int i6 = 0; i6 < i2; i6++) {
            int i7 = (i4 * i2) + i6;
            int i8 = (i5 * i2) + i6;
            int i9 = (i3 * i2) + i6;
            for (int i10 = 0; i10 < i; i10++) {
                sArr[i9] = (short) (((sArr3[i8] * i10) + ((i - i10) * sArr2[i7])) / i);
                i9 += i2;
                i7 += i2;
                i8 += i2;
            }
        }
    }

    private final void zzk() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        boolean z;
        float f = this.zzc / this.zzd;
        double d = f;
        int i11 = this.zzm;
        if (d <= 1.00001d && d >= 0.99999d) {
            zzh(this.zzj, 0, this.zzk);
            this.zzk = 0;
        } else {
            int i12 = this.zzk;
            if (i12 >= this.zzh) {
                int i13 = 0;
                do {
                    int i14 = this.zzr;
                    if (i14 > 0) {
                        int min = Math.min(this.zzh, i14);
                        zzh(this.zzj, i13, min);
                        this.zzr -= min;
                        i13 += min;
                    } else {
                        short[] sArr = this.zzj;
                        int i15 = this.zza;
                        if (i15 > 4000) {
                            i = i15 / 4000;
                        } else {
                            i = 1;
                        }
                        if (this.zzb == 1 && i == 1) {
                            i2 = zzg(sArr, i13, this.zzf, this.zzg);
                        } else {
                            zzi(sArr, i13, i);
                            int zzg = zzg(this.zzi, 0, this.zzf / i, this.zzg / i);
                            if (i != 1) {
                                int i16 = zzg * i;
                                int i17 = i * 4;
                                int i18 = this.zzf;
                                int i19 = i16 - i17;
                                if (i19 >= i18) {
                                    i18 = i19;
                                }
                                int i20 = i16 + i17;
                                int i21 = this.zzg;
                                if (i20 > i21) {
                                    i20 = i21;
                                }
                                if (this.zzb == 1) {
                                    i2 = zzg(sArr, i13, i18, i20);
                                } else {
                                    zzi(sArr, i13, 1);
                                    i2 = zzg(this.zzi, 0, i18, i20);
                                }
                            } else {
                                i2 = zzg;
                            }
                        }
                        int i22 = this.zzu;
                        int i23 = this.zzv;
                        if (i22 != 0 && (i6 = this.zzs) != 0 && i23 <= i22 * 3 && i22 + i22 > this.zzt * 3) {
                            i3 = i6;
                        } else {
                            i3 = i2;
                        }
                        int i24 = i13 + i3;
                        this.zzt = i22;
                        this.zzs = i2;
                        float f2 = i3;
                        if (d > 1.0d) {
                            short[] sArr2 = this.zzj;
                            float f3 = (-1.0f) + f;
                            if (f >= 2.0f) {
                                i5 = (int) (f2 / f3);
                            } else {
                                this.zzr = (int) (((2.0f - f) * f2) / f3);
                                i5 = i3;
                            }
                            short[] zzl = zzl(this.zzl, this.zzm, i5);
                            this.zzl = zzl;
                            int i25 = i5;
                            zzj(i5, this.zzb, zzl, this.zzm, sArr2, i13, sArr2, i24);
                            this.zzm += i25;
                            i13 = i3 + i25 + i13;
                        } else {
                            int i26 = i3;
                            short[] sArr3 = this.zzj;
                            float f4 = 1.0f - f;
                            if (f < 0.5f) {
                                i4 = (int) ((f2 * f) / f4);
                            } else {
                                this.zzr = (int) ((((f + f) - 1.0f) * f2) / f4);
                                i4 = i26;
                            }
                            int i27 = i26 + i4;
                            short[] zzl2 = zzl(this.zzl, this.zzm, i27);
                            this.zzl = zzl2;
                            int i28 = this.zzb;
                            System.arraycopy(sArr3, i13 * i28, zzl2, this.zzm * i28, i28 * i26);
                            zzj(i4, this.zzb, this.zzl, this.zzm + i26, sArr3, i24, sArr3, i13);
                            this.zzm += i27;
                            i13 += i4;
                        }
                    }
                } while (this.zzh + i13 <= i12);
                int i29 = this.zzk - i13;
                short[] sArr4 = this.zzj;
                int i30 = this.zzb;
                System.arraycopy(sArr4, i13 * i30, sArr4, 0, i30 * i29);
                this.zzk = i29;
            }
        }
        float f5 = this.zze * this.zzd;
        if (f5 != 1.0f && this.zzm != i11) {
            int i31 = this.zza;
            int i32 = (int) (i31 / f5);
            while (true) {
                if (i32 <= 16384 && i31 <= 16384) {
                    break;
                }
                i32 /= 2;
                i31 /= 2;
            }
            int i33 = this.zzm - i11;
            short[] zzl3 = zzl(this.zzn, this.zzo, i33);
            this.zzn = zzl3;
            short[] sArr5 = this.zzl;
            int i34 = this.zzb;
            System.arraycopy(sArr5, i11 * i34, zzl3, this.zzo * i34, i34 * i33);
            this.zzm = i11;
            this.zzo += i33;
            int i35 = 0;
            while (true) {
                i7 = this.zzo;
                i8 = i7 - 1;
                if (i35 >= i8) {
                    break;
                }
                while (true) {
                    i9 = this.zzp + 1;
                    int i36 = i9 * i32;
                    i10 = this.zzq;
                    if (i36 <= i10 * i31) {
                        break;
                    }
                    this.zzl = zzl(this.zzl, this.zzm, 1);
                    int i37 = 0;
                    while (true) {
                        int i38 = this.zzb;
                        if (i37 < i38) {
                            short[] sArr6 = this.zzl;
                            int i39 = this.zzm * i38;
                            short[] sArr7 = this.zzn;
                            int i40 = (i35 * i38) + i37;
                            short s = sArr7[i40];
                            short s2 = sArr7[i40 + i38];
                            int i41 = this.zzq * i31;
                            int i42 = this.zzp;
                            int i43 = i42 * i32;
                            int i44 = (i42 + 1) * i32;
                            int i45 = i44 - i41;
                            int i46 = i44 - i43;
                            sArr6[i39 + i37] = (short) ((((i46 - i45) * s2) + (s * i45)) / i46);
                            i37++;
                        }
                    }
                    this.zzq++;
                    this.zzm++;
                }
                this.zzp = i9;
                if (i9 == i31) {
                    this.zzp = 0;
                    if (i10 == i32) {
                        z = true;
                    } else {
                        z = false;
                    }
                    zzek.zzf(z);
                    this.zzq = 0;
                }
                i35++;
            }
            if (i8 != 0) {
                short[] sArr8 = this.zzn;
                int i47 = this.zzb;
                System.arraycopy(sArr8, i8 * i47, sArr8, 0, (i7 - i8) * i47);
                this.zzo -= i8;
            }
        }
    }

    private final short[] zzl(short[] sArr, int i, int i2) {
        int length = sArr.length;
        int i3 = this.zzb;
        int i4 = length / i3;
        if (i + i2 <= i4) {
            return sArr;
        }
        return Arrays.copyOf(sArr, (((i4 * 3) / 2) + i2) * i3);
    }

    public final int zza() {
        int i = this.zzm * this.zzb;
        return i + i;
    }

    public final int zzb() {
        int i = this.zzk * this.zzb;
        return i + i;
    }

    public final void zzc() {
        this.zzk = 0;
        this.zzm = 0;
        this.zzo = 0;
        this.zzp = 0;
        this.zzq = 0;
        this.zzr = 0;
        this.zzs = 0;
        this.zzt = 0;
        this.zzu = 0;
        this.zzv = 0;
    }

    public final void zzd(ShortBuffer shortBuffer) {
        int min = Math.min(shortBuffer.remaining() / this.zzb, this.zzm);
        shortBuffer.put(this.zzl, 0, this.zzb * min);
        int i = this.zzm - min;
        this.zzm = i;
        int i2 = this.zzb;
        short[] sArr = this.zzl;
        System.arraycopy(sArr, min * i2, sArr, 0, i * i2);
    }

    public final void zze() {
        int i;
        int i2 = this.zzk;
        int i3 = this.zzm;
        float f = this.zzo;
        float f2 = this.zzc;
        float f3 = this.zze;
        float f4 = this.zzd;
        int i4 = i3 + ((int) ((((i2 / (f2 / f4)) + f) / (f3 * f4)) + 0.5f));
        int i5 = this.zzh;
        this.zzj = zzl(this.zzj, i2, i5 + i5 + i2);
        int i6 = 0;
        while (true) {
            int i7 = this.zzh;
            int i8 = this.zzb;
            i = i7 + i7;
            if (i6 >= i * i8) {
                break;
            }
            this.zzj[(i8 * i2) + i6] = 0;
            i6++;
        }
        this.zzk += i;
        zzk();
        if (this.zzm > i4) {
            this.zzm = i4;
        }
        this.zzk = 0;
        this.zzr = 0;
        this.zzo = 0;
    }

    public final void zzf(ShortBuffer shortBuffer) {
        int remaining = shortBuffer.remaining();
        int i = this.zzb;
        int i2 = remaining / i;
        int i3 = i * i2;
        short[] zzl = zzl(this.zzj, this.zzk, i2);
        this.zzj = zzl;
        shortBuffer.get(zzl, this.zzk * this.zzb, (i3 + i3) / 2);
        this.zzk += i2;
        zzk();
    }
}
