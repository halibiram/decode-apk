package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import java.nio.ByteBuffer;
import okhttp3.internal.http.HttpStatusCodesKt;
import okio.Utf8;

/* loaded from: classes2.dex */
public final class zzabv {
    public static final /* synthetic */ int zza = 0;
    private static final int[] zzb = {1, 2, 3, 6};
    private static final int[] zzc = {48000, 44100, 32000};
    private static final int[] zzd = {24000, 22050, 16000};
    private static final int[] zze = {2, 1, 2, 3, 3, 4, 4, 5};
    private static final int[] zzf = {32, 40, 48, 56, 64, 80, 96, 112, 128, 160, 192, 224, 256, 320, 384, 448, 512, 576, 640};
    private static final int[] zzg = {69, 87, 104, 121, 139, 174, HttpStatusCodesKt.HTTP_ALREADY_REPORTED, 243, 278, 348, HttpStatusCodesKt.HTTP_EXPECTATION_FAILED, 487, 557, 696, 835, 975, 1114, 1253, 1393};

    public static int zza(ByteBuffer byteBuffer) {
        int i = 3;
        if (((byteBuffer.get(byteBuffer.position() + 5) & 248) >> 3) > 10) {
            if (((byteBuffer.get(byteBuffer.position() + 4) & 192) >> 6) != 3) {
                i = (byteBuffer.get(byteBuffer.position() + 4) & 48) >> 4;
            }
            return zzb[i] * 256;
        }
        return 1536;
    }

    public static int zzb(byte[] bArr) {
        if (bArr.length < 6) {
            return -1;
        }
        if (((bArr[5] & 248) >> 3) > 10) {
            int i = bArr[2] & 7;
            int i2 = ((bArr[3] & 255) | (i << 8)) + 1;
            return i2 + i2;
        }
        byte b = bArr[4];
        return zzf((b & 192) >> 6, b & Utf8.REPLACEMENT_BYTE);
    }

    public static zzam zzc(zzfp zzfpVar, String str, String str2, @Nullable zzae zzaeVar) {
        zzfo zzfoVar = new zzfo();
        zzfoVar.zzi(zzfpVar);
        int i = zzc[zzfoVar.zzd(2)];
        zzfoVar.zzm(8);
        int i2 = zze[zzfoVar.zzd(3)];
        if (zzfoVar.zzd(1) != 0) {
            i2++;
        }
        int i3 = zzf[zzfoVar.zzd(5)] * 1000;
        zzfoVar.zze();
        zzfpVar.zzK(zzfoVar.zzb());
        zzak zzakVar = new zzak();
        zzakVar.zzK(str);
        zzakVar.zzW(new ObfuscatedString(new long[]{1331895933212802010L, 4079613906266970297L, 478327782030374411L}).toString());
        zzakVar.zzy(i2);
        zzakVar.zzX(i);
        zzakVar.zzE(zzaeVar);
        zzakVar.zzN(str2);
        zzakVar.zzx(i3);
        zzakVar.zzR(i3);
        return zzakVar.zzac();
    }

    public static zzam zzd(zzfp zzfpVar, String str, String str2, @Nullable zzae zzaeVar) {
        zzfo zzfoVar = new zzfo();
        zzfoVar.zzi(zzfpVar);
        int zzd2 = zzfoVar.zzd(13) * 1000;
        zzfoVar.zzm(3);
        int i = zzc[zzfoVar.zzd(2)];
        zzfoVar.zzm(10);
        int i2 = zze[zzfoVar.zzd(3)];
        if (zzfoVar.zzd(1) != 0) {
            i2++;
        }
        zzfoVar.zzm(3);
        int zzd3 = zzfoVar.zzd(4);
        zzfoVar.zzm(1);
        if (zzd3 > 0) {
            zzfoVar.zzm(6);
            if (zzfoVar.zzd(1) != 0) {
                i2 += 2;
            }
            zzfoVar.zzm(1);
        }
        int zza2 = zzfoVar.zza();
        String obfuscatedString = new ObfuscatedString(new long[]{5477095898941454829L, 6006372063758636940L, -6582098387699140327L}).toString();
        if (zza2 > 7) {
            zzfoVar.zzm(7);
            if (zzfoVar.zzd(1) != 0) {
                obfuscatedString = new ObfuscatedString(new long[]{-8041449540285094387L, -836250958011533607L, -434436456033038002L}).toString();
            }
        }
        zzfoVar.zze();
        zzfpVar.zzK(zzfoVar.zzb());
        zzak zzakVar = new zzak();
        zzakVar.zzK(str);
        zzakVar.zzW(obfuscatedString);
        zzakVar.zzy(i2);
        zzakVar.zzX(i);
        zzakVar.zzE(zzaeVar);
        zzakVar.zzN(str2);
        zzakVar.zzR(zzd2);
        return zzakVar.zzac();
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x01f2  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01c9  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x01f5 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x01fc A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x021b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static zzabu zze(zzfo zzfoVar) {
        String obfuscatedString;
        int i;
        String str;
        int i2;
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
        int i13;
        int i14;
        int i15;
        boolean zzo;
        String obfuscatedString2;
        int zzc2 = zzfoVar.zzc();
        zzfoVar.zzm(40);
        int zzd2 = zzfoVar.zzd(5);
        zzfoVar.zzk(zzc2);
        int i16 = -1;
        if (zzd2 > 10) {
            zzfoVar.zzm(16);
            int zzd3 = zzfoVar.zzd(2);
            if (zzd3 != 0) {
                if (zzd3 != 1) {
                    if (zzd3 == 2) {
                        i16 = 2;
                    }
                } else {
                    i16 = 1;
                }
            } else {
                i16 = 0;
            }
            zzfoVar.zzm(3);
            int zzd4 = zzfoVar.zzd(11) + 1;
            int zzd5 = zzfoVar.zzd(2);
            if (zzd5 == 3) {
                i10 = zzd[zzfoVar.zzd(2)];
                i8 = 6;
                i9 = 3;
            } else {
                int zzd6 = zzfoVar.zzd(2);
                i8 = zzb[zzd6];
                i9 = zzd6;
                i10 = zzc[zzd5];
            }
            int i17 = zzd4 + zzd4;
            int i18 = (i17 * i10) / (i8 * 32);
            int zzd7 = zzfoVar.zzd(3);
            boolean zzo2 = zzfoVar.zzo();
            int i19 = zze[zzd7] + (zzo2 ? 1 : 0);
            zzfoVar.zzm(10);
            if (zzfoVar.zzo()) {
                zzfoVar.zzm(8);
            }
            if (zzd7 == 0) {
                zzfoVar.zzm(5);
                if (zzfoVar.zzo()) {
                    zzfoVar.zzm(8);
                }
                zzd7 = 0;
                i11 = 0;
            } else {
                i11 = zzd7;
            }
            if (i16 == 1) {
                if (zzfoVar.zzo()) {
                    zzfoVar.zzm(16);
                }
                i12 = 1;
            } else {
                i12 = i16;
            }
            if (zzfoVar.zzo()) {
                if (zzd7 > 2) {
                    zzfoVar.zzm(2);
                }
                if ((zzd7 & 1) != 0 && zzd7 > 2) {
                    zzfoVar.zzm(6);
                }
                if ((zzd7 & 4) != 0) {
                    zzfoVar.zzm(6);
                }
                if (zzo2 && zzfoVar.zzo()) {
                    zzfoVar.zzm(5);
                }
                if (i12 == 0) {
                    if (zzfoVar.zzo()) {
                        zzfoVar.zzm(6);
                    }
                    if (zzd7 == 0 && zzfoVar.zzo()) {
                        zzfoVar.zzm(6);
                    }
                    if (zzfoVar.zzo()) {
                        zzfoVar.zzm(6);
                    }
                    int zzd8 = zzfoVar.zzd(2);
                    if (zzd8 == 1) {
                        zzfoVar.zzm(5);
                    } else if (zzd8 == 2) {
                        zzfoVar.zzm(12);
                    } else if (zzd8 == 3) {
                        int zzd9 = zzfoVar.zzd(5);
                        if (zzfoVar.zzo()) {
                            zzfoVar.zzm(5);
                            if (zzfoVar.zzo()) {
                                zzfoVar.zzm(4);
                            }
                            if (zzfoVar.zzo()) {
                                zzfoVar.zzm(4);
                            }
                            if (zzfoVar.zzo()) {
                                zzfoVar.zzm(4);
                            }
                            if (zzfoVar.zzo()) {
                                zzfoVar.zzm(4);
                            }
                            if (zzfoVar.zzo()) {
                                zzfoVar.zzm(4);
                            }
                            if (zzfoVar.zzo()) {
                                zzfoVar.zzm(4);
                            }
                            if (zzfoVar.zzo()) {
                                zzfoVar.zzm(4);
                            }
                            if (zzfoVar.zzo()) {
                                if (zzfoVar.zzo()) {
                                    zzfoVar.zzm(4);
                                }
                                if (zzfoVar.zzo()) {
                                    zzfoVar.zzm(4);
                                }
                            }
                        }
                        if (zzfoVar.zzo()) {
                            zzfoVar.zzm(5);
                            if (zzfoVar.zzo()) {
                                zzfoVar.zzm(7);
                                if (zzfoVar.zzo()) {
                                    zzfoVar.zzm(8);
                                }
                            }
                        }
                        zzfoVar.zzm((zzd9 + 2) * 8);
                        zzfoVar.zze();
                    }
                    if (zzd7 < 2) {
                        if (zzfoVar.zzo()) {
                            zzfoVar.zzm(14);
                        }
                        if (i11 == 0 && zzfoVar.zzo()) {
                            zzfoVar.zzm(14);
                        }
                    }
                    if (zzfoVar.zzo()) {
                        if (i9 == 0) {
                            zzfoVar.zzm(5);
                            i14 = 0;
                            i13 = 0;
                            if (zzfoVar.zzo()) {
                                zzfoVar.zzm(5);
                                if (zzd7 == 2) {
                                    zzfoVar.zzm(4);
                                    zzd7 = 2;
                                }
                                if (zzd7 >= 6) {
                                    zzfoVar.zzm(2);
                                }
                                if (zzfoVar.zzo()) {
                                    zzfoVar.zzm(8);
                                }
                                if (zzd7 == 0 && zzfoVar.zzo()) {
                                    zzfoVar.zzm(8);
                                }
                                i15 = 3;
                                if (zzd5 < 3) {
                                    zzfoVar.zzl();
                                }
                            } else {
                                i15 = 3;
                            }
                            if (i13 == 0 && i14 != i15) {
                                zzfoVar.zzl();
                            }
                            if (i13 == 2 && (i14 == i15 || zzfoVar.zzo())) {
                                zzfoVar.zzm(6);
                            }
                            zzo = zzfoVar.zzo();
                            long[] jArr = new long[i15];
                            // fill-array-data instruction
                            jArr[0] = 1872447297825320643L;
                            jArr[1] = -6750033324418150037L;
                            jArr[2] = -1828171752467669519L;
                            obfuscatedString2 = new ObfuscatedString(jArr).toString();
                            if (zzo && zzfoVar.zzd(6) == 1 && zzfoVar.zzd(8) == 1) {
                                long[] jArr2 = new long[i15];
                                // fill-array-data instruction
                                jArr2[0] = -6652065032163550607L;
                                jArr2[1] = 1959134897149553507L;
                                jArr2[2] = 7052320138969625604L;
                                obfuscatedString2 = new ObfuscatedString(jArr2).toString();
                            }
                            i6 = i16;
                            str = obfuscatedString2;
                            i3 = i17;
                            i7 = i8 * 256;
                            i4 = i10;
                            i2 = i18;
                            i5 = i19;
                        } else {
                            for (int i20 = 0; i20 < i8; i20++) {
                                if (zzfoVar.zzo()) {
                                    zzfoVar.zzm(5);
                                }
                            }
                        }
                    }
                    i14 = i9;
                    i13 = 0;
                    if (zzfoVar.zzo()) {
                    }
                    if (i13 == 0) {
                        zzfoVar.zzl();
                    }
                    if (i13 == 2) {
                        zzfoVar.zzm(6);
                    }
                    zzo = zzfoVar.zzo();
                    long[] jArr3 = new long[i15];
                    // fill-array-data instruction
                    jArr3[0] = 1872447297825320643L;
                    jArr3[1] = -6750033324418150037L;
                    jArr3[2] = -1828171752467669519L;
                    obfuscatedString2 = new ObfuscatedString(jArr3).toString();
                    if (zzo) {
                        long[] jArr22 = new long[i15];
                        // fill-array-data instruction
                        jArr22[0] = -6652065032163550607L;
                        jArr22[1] = 1959134897149553507L;
                        jArr22[2] = 7052320138969625604L;
                        obfuscatedString2 = new ObfuscatedString(jArr22).toString();
                    }
                    i6 = i16;
                    str = obfuscatedString2;
                    i3 = i17;
                    i7 = i8 * 256;
                    i4 = i10;
                    i2 = i18;
                    i5 = i19;
                }
            }
            i13 = i12;
            i14 = i9;
            if (zzfoVar.zzo()) {
            }
            if (i13 == 0) {
            }
            if (i13 == 2) {
            }
            zzo = zzfoVar.zzo();
            long[] jArr32 = new long[i15];
            // fill-array-data instruction
            jArr32[0] = 1872447297825320643L;
            jArr32[1] = -6750033324418150037L;
            jArr32[2] = -1828171752467669519L;
            obfuscatedString2 = new ObfuscatedString(jArr32).toString();
            if (zzo) {
            }
            i6 = i16;
            str = obfuscatedString2;
            i3 = i17;
            i7 = i8 * 256;
            i4 = i10;
            i2 = i18;
            i5 = i19;
        } else {
            zzfoVar.zzm(32);
            int zzd10 = zzfoVar.zzd(2);
            if (zzd10 == 3) {
                obfuscatedString = null;
            } else {
                obfuscatedString = new ObfuscatedString(new long[]{2190416400654725883L, 8497335708826619599L, 704135065527678104L}).toString();
            }
            int zzd11 = zzfoVar.zzd(6);
            int i21 = zzf[zzd11 / 2] * 1000;
            int zzf2 = zzf(zzd10, zzd11);
            zzfoVar.zzm(8);
            int zzd12 = zzfoVar.zzd(3);
            if ((zzd12 & 1) != 0 && zzd12 != 1) {
                zzfoVar.zzm(2);
            }
            if ((4 & zzd12) != 0) {
                zzfoVar.zzm(2);
            }
            if (zzd12 == 2) {
                zzfoVar.zzm(2);
            }
            if (zzd10 < 3) {
                i = zzc[zzd10];
            } else {
                i = -1;
            }
            str = obfuscatedString;
            i2 = i21;
            i3 = zzf2;
            i4 = i;
            i5 = zze[zzd12] + (zzfoVar.zzo() ? 1 : 0);
            i6 = -1;
            i7 = 1536;
        }
        return new zzabu(str, i6, i5, i4, i3, i7, i2, null);
    }

    private static int zzf(int i, int i2) {
        int i3;
        if (i < 0 || i >= 3 || i2 < 0 || (i3 = i2 >> 1) >= 19) {
            return -1;
        }
        int i4 = zzc[i];
        if (i4 == 44100) {
            int i5 = zzg[i3] + (i2 & 1);
            return i5 + i5;
        }
        int i6 = zzf[i3];
        return i4 == 32000 ? i6 * 6 : i6 * 4;
    }
}
