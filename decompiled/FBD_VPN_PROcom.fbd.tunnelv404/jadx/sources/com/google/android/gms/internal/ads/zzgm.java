package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class zzgm {
    public static final byte[] zza = {0, 0, 0, 1};
    public static final float[] zzb = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 2.1818182f, 1.8181819f, 2.909091f, 2.4242425f, 1.6363636f, 1.3636364f, 1.939394f, 1.6161616f, 1.3333334f, 1.5f, 2.0f};
    private static final Object zzc = new Object();
    private static int[] zzd = new int[10];

    public static int zza(byte[] bArr, int i, int i2, boolean[] zArr) {
        boolean z;
        boolean z2;
        boolean z3;
        int i3 = i2 - i;
        boolean z4 = false;
        if (i3 >= 0) {
            z = true;
        } else {
            z = false;
        }
        zzek.zzf(z);
        if (i3 == 0) {
            return i2;
        }
        if (zArr[0]) {
            zzf(zArr);
            return i - 3;
        }
        if (i3 > 1 && zArr[1] && bArr[i] == 1) {
            zzf(zArr);
            return i - 2;
        }
        if (i3 > 2 && zArr[2] && bArr[i] == 0 && bArr[i + 1] == 1) {
            zzf(zArr);
            return i - 1;
        }
        int i4 = i2 - 1;
        int i5 = i + 2;
        while (i5 < i4) {
            byte b = bArr[i5];
            if ((b & 254) == 0) {
                int i6 = i5 - 2;
                if (bArr[i6] == 0 && bArr[i5 - 1] == 0 && b == 1) {
                    zzf(zArr);
                    return i6;
                }
                i5 = i6;
            }
            i5 += 3;
        }
        if (i3 <= 2 ? !(i3 != 2 ? !zArr[1] || bArr[i4] != 1 : !zArr[2] || bArr[i2 - 2] != 0 || bArr[i4] != 1) : !(bArr[i2 - 3] != 0 || bArr[i2 - 2] != 0 || bArr[i4] != 1)) {
            z2 = true;
        } else {
            z2 = false;
        }
        zArr[0] = z2;
        if (i3 <= 1 ? !(!zArr[2] || bArr[i4] != 0) : !(bArr[i2 - 2] != 0 || bArr[i4] != 0)) {
            z3 = true;
        } else {
            z3 = false;
        }
        zArr[1] = z3;
        if (bArr[i4] == 0) {
            z4 = true;
        }
        zArr[2] = z4;
        return i2;
    }

    public static int zzb(byte[] bArr, int i) {
        int i2;
        synchronized (zzc) {
            int i3 = 0;
            int i4 = 0;
            while (i3 < i) {
                while (true) {
                    try {
                        if (i3 < i - 2) {
                            int i5 = i3 + 1;
                            if (bArr[i3] == 0 && bArr[i5] == 0 && bArr[i3 + 2] == 3) {
                                break;
                            }
                            i3 = i5;
                        } else {
                            i3 = i;
                            break;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (i3 < i) {
                    int[] iArr = zzd;
                    int length = iArr.length;
                    if (length <= i4) {
                        zzd = Arrays.copyOf(iArr, length + length);
                    }
                    zzd[i4] = i3;
                    i3 += 3;
                    i4++;
                }
            }
            i2 = i - i4;
            int i6 = 0;
            int i7 = 0;
            for (int i8 = 0; i8 < i4; i8++) {
                int i9 = zzd[i8] - i6;
                System.arraycopy(bArr, i6, bArr, i7, i9);
                int i10 = i7 + i9;
                int i11 = i10 + 1;
                bArr[i10] = 0;
                i7 = i10 + 2;
                bArr[i11] = 0;
                i6 += i9 + 3;
            }
            System.arraycopy(bArr, i6, bArr, i7, i2 - i7);
        }
        return i2;
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00a6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static zzgj zzc(byte[] bArr, int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int[] iArr;
        int i13;
        int[] iArr2;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20 = 6;
        zzgn zzgnVar = new zzgn(bArr, i, i2);
        zzgnVar.zze(4);
        int zza2 = zzgnVar.zza(3);
        zzgnVar.zzd();
        int zza3 = zzgnVar.zza(2);
        boolean zzf = zzgnVar.zzf();
        int zza4 = zzgnVar.zza(5);
        int i21 = 0;
        for (int i22 = 0; i22 < 32; i22++) {
            if (zzgnVar.zzf()) {
                i21 |= 1 << i22;
            }
        }
        int[] iArr3 = new int[6];
        for (int i23 = 0; i23 < 6; i23++) {
            iArr3[i23] = zzgnVar.zza(8);
        }
        int zza5 = zzgnVar.zza(8);
        int i24 = 0;
        for (int i25 = 0; i25 < zza2; i25++) {
            if (zzgnVar.zzf()) {
                i24 += 89;
            }
            if (zzgnVar.zzf()) {
                i24 += 8;
            }
        }
        zzgnVar.zze(i24);
        if (zza2 > 0) {
            int i26 = 8 - zza2;
            zzgnVar.zze(i26 + i26);
        }
        int zzc2 = zzgnVar.zzc();
        int zzc3 = zzgnVar.zzc();
        if (zzc3 == 3) {
            zzgnVar.zzd();
            zzc3 = 3;
        }
        int zzc4 = zzgnVar.zzc();
        int zzc5 = zzgnVar.zzc();
        if (zzgnVar.zzf()) {
            int zzc6 = zzgnVar.zzc();
            int zzc7 = zzgnVar.zzc();
            int zzc8 = zzgnVar.zzc();
            int zzc9 = zzgnVar.zzc();
            if (zzc3 != 1) {
                if (zzc3 == 2) {
                    zzc3 = 2;
                } else {
                    i18 = 1;
                    if (zzc3 != 1) {
                        i19 = 2;
                    } else {
                        i19 = 1;
                    }
                    zzc4 -= (zzc6 + zzc7) * i18;
                    zzc5 -= (zzc8 + zzc9) * i19;
                }
            }
            i18 = 2;
            if (zzc3 != 1) {
            }
            zzc4 -= (zzc6 + zzc7) * i18;
            zzc5 -= (zzc8 + zzc9) * i19;
        }
        int i27 = zzc4;
        int zzc10 = zzgnVar.zzc();
        int zzc11 = zzgnVar.zzc();
        int zzc12 = zzgnVar.zzc();
        if (true != zzgnVar.zzf()) {
            i3 = zza2;
        } else {
            i3 = 0;
        }
        while (i3 <= zza2) {
            zzgnVar.zzc();
            zzgnVar.zzc();
            zzgnVar.zzc();
            i3++;
        }
        zzgnVar.zzc();
        zzgnVar.zzc();
        zzgnVar.zzc();
        zzgnVar.zzc();
        zzgnVar.zzc();
        zzgnVar.zzc();
        if (zzgnVar.zzf() && zzgnVar.zzf()) {
            int i28 = 0;
            for (int i29 = 4; i28 < i29; i29 = 4) {
                int i30 = 0;
                while (i30 < i20) {
                    if (!zzgnVar.zzf()) {
                        zzgnVar.zzc();
                    } else {
                        int min = Math.min(64, 1 << ((i28 + i28) + 4));
                        if (i28 > 1) {
                            zzgnVar.zzb();
                        }
                        for (int i31 = 0; i31 < min; i31++) {
                            zzgnVar.zzb();
                        }
                    }
                    if (i28 == 3) {
                        i17 = 3;
                    } else {
                        i17 = 1;
                    }
                    i30 += i17;
                    i20 = 6;
                }
                i28++;
                i20 = 6;
            }
        }
        zzgnVar.zze(2);
        if (zzgnVar.zzf()) {
            zzgnVar.zze(8);
            zzgnVar.zzc();
            zzgnVar.zzc();
            zzgnVar.zzd();
        }
        int zzc13 = zzgnVar.zzc();
        int[] iArr4 = new int[0];
        int[] iArr5 = new int[0];
        int i32 = 0;
        int i33 = -1;
        int i34 = -1;
        while (i32 < zzc13) {
            if (i32 != 0 && zzgnVar.zzf()) {
                int i35 = i33 + i34;
                boolean zzf2 = zzgnVar.zzf();
                int zzc14 = zzgnVar.zzc() + 1;
                int i36 = 1 - ((zzf2 ? 1 : 0) + (zzf2 ? 1 : 0));
                i10 = zzc13;
                int i37 = i35 + 1;
                boolean[] zArr = new boolean[i37];
                iArr = iArr3;
                for (int i38 = 0; i38 <= i35; i38++) {
                    if (!zzgnVar.zzf()) {
                        zArr[i38] = zzgnVar.zzf();
                    } else {
                        zArr[i38] = true;
                    }
                }
                int i39 = i34 - 1;
                int[] iArr6 = new int[i37];
                int[] iArr7 = new int[i37];
                int i40 = 0;
                while (true) {
                    i16 = i36 * zzc14;
                    if (i39 < 0) {
                        break;
                    }
                    int i41 = iArr5[i39] + i16;
                    if (i41 < 0 && zArr[i33 + i39]) {
                        iArr6[i40] = i41;
                        i40++;
                    }
                    i39--;
                }
                if (i16 < 0 && zArr[i35]) {
                    iArr6[i40] = i16;
                    i40++;
                }
                i11 = zzc3;
                i12 = i21;
                int i42 = i40;
                for (int i43 = 0; i43 < i33; i43++) {
                    int i44 = iArr4[i43] + i16;
                    if (i44 < 0 && zArr[i43]) {
                        iArr6[i42] = i44;
                        i42++;
                    }
                }
                iArr2 = Arrays.copyOf(iArr6, i42);
                int i45 = 0;
                for (int i46 = i33 - 1; i46 >= 0; i46--) {
                    int i47 = iArr4[i46] + i16;
                    if (i47 > 0 && zArr[i46]) {
                        iArr7[i45] = i47;
                        i45++;
                    }
                }
                if (i16 > 0 && zArr[i35]) {
                    iArr7[i45] = i16;
                    i45++;
                }
                for (int i48 = 0; i48 < i34; i48++) {
                    int i49 = iArr5[i48] + i16;
                    if (i49 > 0 && zArr[i33 + i48]) {
                        iArr7[i45] = i49;
                        i45++;
                    }
                }
                iArr5 = Arrays.copyOf(iArr7, i45);
                i33 = i42;
                i34 = i45;
                i13 = 1;
            } else {
                i10 = zzc13;
                i11 = zzc3;
                i12 = i21;
                iArr = iArr3;
                int zzc15 = zzgnVar.zzc();
                int zzc16 = zzgnVar.zzc();
                int[] iArr8 = new int[zzc15];
                for (int i50 = 0; i50 < zzc15; i50++) {
                    if (i50 > 0) {
                        i15 = iArr8[i50 - 1];
                    } else {
                        i15 = 0;
                    }
                    iArr8[i50] = i15 - (zzgnVar.zzc() + 1);
                    zzgnVar.zzd();
                }
                i13 = 1;
                int[] iArr9 = new int[zzc16];
                for (int i51 = 0; i51 < zzc16; i51++) {
                    if (i51 > 0) {
                        i14 = iArr9[i51 - 1];
                    } else {
                        i14 = 0;
                    }
                    iArr9[i51] = zzgnVar.zzc() + 1 + i14;
                    zzgnVar.zzd();
                }
                i34 = zzc16;
                iArr2 = iArr8;
                iArr5 = iArr9;
                i33 = zzc15;
            }
            i32 += i13;
            iArr4 = iArr2;
            zzc3 = i11;
            i21 = i12;
            zzc13 = i10;
            iArr3 = iArr;
        }
        int i52 = zzc3;
        int i53 = i21;
        int[] iArr10 = iArr3;
        int i54 = -1;
        if (zzgnVar.zzf()) {
            int zzc17 = zzgnVar.zzc();
            for (int i55 = 0; i55 < zzc17; i55++) {
                zzgnVar.zze(zzc12 + 5);
            }
        }
        zzgnVar.zze(2);
        float f = 1.0f;
        if (zzgnVar.zzf()) {
            if (zzgnVar.zzf()) {
                int zza6 = zzgnVar.zza(8);
                if (zza6 == 255) {
                    int zza7 = zzgnVar.zza(16);
                    int zza8 = zzgnVar.zza(16);
                    if (zza7 != 0 && zza8 != 0) {
                        f = zza7 / zza8;
                    }
                } else if (zza6 < 17) {
                    f = zzb[zza6];
                } else {
                    zzff.zzf(new ObfuscatedString(new long[]{-2131213744039779862L, -8901964128464864787L, -2923122874477698051L}).toString(), AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{7394379916154945676L, -4913503057819304731L, -5049951221612476805L, 6561802282595383541L, -5207177640749851135L, 1362364234003772776L}), new StringBuilder(), zza6));
                }
            }
            if (zzgnVar.zzf()) {
                zzgnVar.zzd();
            }
            if (zzgnVar.zzf()) {
                zzgnVar.zze(3);
                i9 = 1;
                if (true != zzgnVar.zzf()) {
                    i9 = 2;
                }
                if (zzgnVar.zzf()) {
                    int zza9 = zzgnVar.zza(8);
                    int zza10 = zzgnVar.zza(8);
                    zzgnVar.zze(8);
                    int zza11 = zzt.zza(zza9);
                    i8 = zzt.zzb(zza10);
                    i54 = zza11;
                } else {
                    i8 = -1;
                }
            } else {
                i8 = -1;
                i9 = -1;
            }
            if (zzgnVar.zzf()) {
                zzgnVar.zzc();
                zzgnVar.zzc();
            }
            zzgnVar.zzd();
            if (zzgnVar.zzf()) {
                zzc5 += zzc5;
            }
            i7 = i8;
            i6 = i9;
            i5 = i54;
            i4 = zzc5;
        } else {
            i4 = zzc5;
            i5 = -1;
            i6 = -1;
            i7 = -1;
        }
        return new zzgj(zza3, zzf, zza4, i53, i52, zzc10, zzc11, iArr10, zza5, zzc2, i27, i4, f, i5, i6, i7);
    }

    public static zzgk zzd(byte[] bArr, int i, int i2) {
        zzgn zzgnVar = new zzgn(bArr, 4, i2);
        int zzc2 = zzgnVar.zzc();
        int zzc3 = zzgnVar.zzc();
        zzgnVar.zzd();
        return new zzgk(zzc2, zzc3, zzgnVar.zzf());
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0154  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x01af  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x01b8  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01ef  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01f4  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x00ca  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static zzgl zze(byte[] bArr, int i, int i2) {
        int zzc2;
        int i3;
        boolean z;
        int i4;
        int i5;
        boolean z2;
        int i6;
        int i7;
        int zzc3;
        int i8;
        int i9;
        boolean z3;
        boolean zzf;
        int i10;
        float f;
        int i11;
        int i12;
        float f2;
        int i13;
        int i14;
        int i15;
        int i16 = 6;
        zzgn zzgnVar = new zzgn(bArr, i, i2);
        int zza2 = zzgnVar.zza(8);
        int zza3 = zzgnVar.zza(8);
        int zza4 = zzgnVar.zza(8);
        int zzc4 = zzgnVar.zzc();
        if (zza2 != 100 && zza2 != 110 && zza2 != 122 && zza2 != 244 && zza2 != 44 && zza2 != 83 && zza2 != 86 && zza2 != 118 && zza2 != 128) {
            if (zza2 == 138) {
                zza2 = 138;
            } else {
                zzc2 = 1;
                i4 = 0;
                i5 = 0;
                z2 = false;
                int zzc5 = zzgnVar.zzc() + 4;
                zzc3 = zzgnVar.zzc();
                if (zzc3 != 0) {
                    i8 = zza3;
                    i9 = zzgnVar.zzc() + 4;
                } else {
                    if (zzc3 == 1) {
                        boolean zzf2 = zzgnVar.zzf();
                        zzgnVar.zzb();
                        zzgnVar.zzb();
                        long zzc6 = zzgnVar.zzc();
                        i8 = zza3;
                        for (int i17 = 0; i17 < zzc6; i17++) {
                            zzgnVar.zzc();
                        }
                        z3 = zzf2;
                        zzc3 = 1;
                        i9 = 0;
                        int zzc7 = zzgnVar.zzc();
                        zzgnVar.zzd();
                        int zzc8 = zzgnVar.zzc() + 1;
                        int zzc9 = zzgnVar.zzc() + 1;
                        zzf = zzgnVar.zzf();
                        int i18 = 2 - (zzf ? 1 : 0);
                        if (!zzf) {
                            zzgnVar.zzd();
                        }
                        zzgnVar.zzd();
                        int i19 = zzc8 * 16;
                        int i20 = zzc9 * i18 * 16;
                        if (zzgnVar.zzf()) {
                            int zzc10 = zzgnVar.zzc();
                            int zzc11 = zzgnVar.zzc();
                            int zzc12 = zzgnVar.zzc();
                            int zzc13 = zzgnVar.zzc();
                            if (zzc2 == 0) {
                                i14 = 1;
                            } else {
                                if (zzc2 == 3) {
                                    i14 = 1;
                                } else {
                                    i14 = 2;
                                }
                                if (zzc2 == 1) {
                                    i15 = 2;
                                } else {
                                    i15 = 1;
                                }
                                i18 *= i15;
                            }
                            i19 -= (zzc10 + zzc11) * i14;
                            i20 -= (zzc12 + zzc13) * i18;
                        }
                        int i21 = i19;
                        int i22 = i20;
                        if (zzgnVar.zzf()) {
                            if (zzgnVar.zzf()) {
                                int zza5 = zzgnVar.zza(8);
                                if (zza5 == 255) {
                                    int zza6 = zzgnVar.zza(16);
                                    int zza7 = zzgnVar.zza(16);
                                    if (zza6 != 0 && zza7 != 0) {
                                        f2 = zza6 / zza7;
                                        if (zzgnVar.zzf()) {
                                            zzgnVar.zzd();
                                        }
                                        if (zzgnVar.zzf()) {
                                            zzgnVar.zze(3);
                                            if (true != zzgnVar.zzf()) {
                                                i13 = 2;
                                            } else {
                                                i13 = 1;
                                            }
                                            if (zzgnVar.zzf()) {
                                                int zza8 = zzgnVar.zza(8);
                                                int zza9 = zzgnVar.zza(8);
                                                zzgnVar.zze(8);
                                                i10 = zzt.zza(zza8);
                                                i12 = zzt.zzb(zza9);
                                                f = f2;
                                                i11 = i13;
                                            } else {
                                                f = f2;
                                                i11 = i13;
                                                i10 = -1;
                                                i12 = -1;
                                            }
                                        } else {
                                            f = f2;
                                            i10 = -1;
                                        }
                                    }
                                } else if (zza5 < 17) {
                                    f2 = zzb[zza5];
                                    if (zzgnVar.zzf()) {
                                    }
                                    if (zzgnVar.zzf()) {
                                    }
                                } else {
                                    zzff.zzf(new ObfuscatedString(new long[]{-6489091638587848778L, 8581606704289207809L, 2635884549926072810L}).toString(), AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-1274847970033356439L, -713067487912672914L, -8922394511315386356L, 7026951086322517916L, 6230356985440093248L, 5076192240492428250L}), new StringBuilder(), zza5));
                                }
                                return new zzgl(zza2, i8, zza4, zzc4, zzc7, i21, i22, f, i4, i5, z2, zzf, zzc5, zzc3, i9, z3, i10, i11, i12);
                            }
                            f2 = 1.0f;
                            if (zzgnVar.zzf()) {
                            }
                            if (zzgnVar.zzf()) {
                            }
                        } else {
                            i10 = -1;
                            f = 1.0f;
                        }
                        i11 = -1;
                        i12 = -1;
                        return new zzgl(zza2, i8, zza4, zzc4, zzc7, i21, i22, f, i4, i5, z2, zzf, zzc5, zzc3, i9, z3, i10, i11, i12);
                    }
                    i8 = zza3;
                    i9 = 0;
                }
                z3 = false;
                int zzc72 = zzgnVar.zzc();
                zzgnVar.zzd();
                int zzc82 = zzgnVar.zzc() + 1;
                int zzc92 = zzgnVar.zzc() + 1;
                zzf = zzgnVar.zzf();
                int i182 = 2 - (zzf ? 1 : 0);
                if (!zzf) {
                }
                zzgnVar.zzd();
                int i192 = zzc82 * 16;
                int i202 = zzc92 * i182 * 16;
                if (zzgnVar.zzf()) {
                }
                int i212 = i192;
                int i222 = i202;
                if (zzgnVar.zzf()) {
                }
                i11 = -1;
                i12 = -1;
                return new zzgl(zza2, i8, zza4, zzc4, zzc72, i212, i222, f, i4, i5, z2, zzf, zzc5, zzc3, i9, z3, i10, i11, i12);
            }
        }
        zzc2 = zzgnVar.zzc();
        if (zzc2 == 3) {
            z = zzgnVar.zzf();
            i3 = 3;
        } else {
            i3 = zzc2;
            z = false;
        }
        int zzc14 = zzgnVar.zzc();
        int zzc15 = zzgnVar.zzc();
        zzgnVar.zzd();
        if (zzgnVar.zzf()) {
            if (i3 != 3) {
                i6 = 8;
            } else {
                i6 = 12;
            }
            int i23 = 0;
            while (i23 < i6) {
                if (zzgnVar.zzf()) {
                    if (i23 < i16) {
                        i7 = 16;
                    } else {
                        i7 = 64;
                    }
                    int i24 = 8;
                    int i25 = 8;
                    for (int i26 = 0; i26 < i7; i26++) {
                        if (i24 != 0) {
                            i24 = ((zzgnVar.zzb() + i25) + 256) % 256;
                        }
                        if (i24 != 0) {
                            i25 = i24;
                        }
                    }
                }
                i23++;
                i16 = 6;
            }
        }
        i4 = zzc14;
        i5 = zzc15;
        z2 = z;
        int zzc52 = zzgnVar.zzc() + 4;
        zzc3 = zzgnVar.zzc();
        if (zzc3 != 0) {
        }
        z3 = false;
        int zzc722 = zzgnVar.zzc();
        zzgnVar.zzd();
        int zzc822 = zzgnVar.zzc() + 1;
        int zzc922 = zzgnVar.zzc() + 1;
        zzf = zzgnVar.zzf();
        int i1822 = 2 - (zzf ? 1 : 0);
        if (!zzf) {
        }
        zzgnVar.zzd();
        int i1922 = zzc822 * 16;
        int i2022 = zzc922 * i1822 * 16;
        if (zzgnVar.zzf()) {
        }
        int i2122 = i1922;
        int i2222 = i2022;
        if (zzgnVar.zzf()) {
        }
        i11 = -1;
        i12 = -1;
        return new zzgl(zza2, i8, zza4, zzc4, zzc722, i2122, i2222, f, i4, i5, z2, zzf, zzc52, zzc3, i9, z3, i10, i11, i12);
    }

    public static void zzf(boolean[] zArr) {
        zArr[0] = false;
        zArr[1] = false;
        zArr[2] = false;
    }
}
