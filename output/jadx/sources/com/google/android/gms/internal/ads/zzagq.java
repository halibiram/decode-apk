package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class zzagq {
    public static final zzago zza = new zzago() { // from class: com.google.android.gms.internal.ads.zzagn
    };

    /* JADX WARN: Removed duplicated region for block: B:6:0x0118 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0119  */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final zzby zza(byte[] bArr, int i, zzago zzagoVar, zzafr zzafrVar) {
        boolean z;
        zzagp zzagpVar;
        int i2;
        int i3;
        boolean z2;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        ArrayList arrayList = new ArrayList();
        zzfp zzfpVar = new zzfp(bArr, i);
        boolean z3 = false;
        int i9 = 10;
        if (zzfpVar.zzb() < 10) {
            zzff.zzf(new ObfuscatedString(new long[]{-9021796697055510523L, 1323757194107611246L, -493594946177714172L}).toString(), new ObfuscatedString(new long[]{507861456240291045L, 5401633039389249045L, -8924366732774165394L, -2536840954444450404L, 3403961043831466139L}).toString());
        } else {
            int zzo = zzfpVar.zzo();
            if (zzo != 4801587) {
                zzff.zzf(new ObfuscatedString(new long[]{-8196292751463821396L, -4118436827813033682L, -5033392122143620588L}).toString(), new ObfuscatedString(new long[]{1739976964114484956L, -4663676830807763587L, -149041829253111496L, -80454149348993838L, 5556024521425700782L, 1880904900365854485L, 3281305679538713971L, 3205354012046982114L}).toString().concat(String.format(new ObfuscatedString(new long[]{2531441861920481700L, 123556737883496681L}).toString(), Integer.valueOf(zzo))));
            } else {
                int zzm = zzfpVar.zzm();
                zzfpVar.zzL(1);
                int zzm2 = zzfpVar.zzm();
                int zzl = zzfpVar.zzl();
                if (zzm == 2) {
                    if ((zzm2 & 64) != 0) {
                        zzff.zzf(new ObfuscatedString(new long[]{-4354079138878959307L, -2832761261890350723L, 7375071862742857913L}).toString(), new ObfuscatedString(new long[]{-4167247845021476143L, 2543925281344003324L, -3970843135304488668L, -788369568909837876L, -3761562262063239255L, 1603132045133984461L, -3726630018154076369L, -4295932520361534009L, -7414590962807233582L, -725578071253908422L}).toString());
                    }
                    if (zzm >= 4 && (zzm2 & 128) != 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    zzagpVar = new zzagp(zzm, z, zzl);
                } else {
                    if (zzm == 3) {
                        if ((zzm2 & 64) != 0) {
                            int zzg = zzfpVar.zzg();
                            zzfpVar.zzL(zzg);
                            zzl -= zzg + 4;
                        }
                    } else if (zzm == 4) {
                        if ((zzm2 & 64) != 0) {
                            int zzl2 = zzfpVar.zzl();
                            zzfpVar.zzL(zzl2 - 4);
                            zzl -= zzl2;
                        }
                        if ((zzm2 & 16) != 0) {
                            zzl -= 10;
                        }
                    } else {
                        zzff.zzf(new ObfuscatedString(new long[]{-4749074276631315704L, -3515510244085107475L, -8808152641150942947L}).toString(), AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-7797333075344299540L, 6088257109538314990L, 1115452124500507833L, -7909598510625236804L, 7719399282040053620L, 2027377175380474890L, 7149728897959537094L}), new StringBuilder(), zzm));
                    }
                    if (zzm >= 4) {
                    }
                    z = false;
                    zzagpVar = new zzagp(zzm, z, zzl);
                }
                if (zzagpVar != null) {
                    return null;
                }
                int zzd = zzfpVar.zzd();
                i2 = zzagpVar.zza;
                if (i2 == 2) {
                    i9 = 6;
                }
                i3 = zzagpVar.zzc;
                z2 = zzagpVar.zzb;
                if (z2) {
                    i8 = zzagpVar.zzc;
                    i3 = zze(zzfpVar, i8);
                }
                zzfpVar.zzJ(zzd + i3);
                i4 = zzagpVar.zza;
                if (!zzk(zzfpVar, i4, i9, false)) {
                    i6 = zzagpVar.zza;
                    if (i6 == 4 && zzk(zzfpVar, 4, i9, true)) {
                        z3 = true;
                    } else {
                        i7 = zzagpVar.zza;
                        zzff.zzf(new ObfuscatedString(new long[]{622831197016476871L, -2451572525910877199L, -8202051424597683977L}).toString(), AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{5062823057864883163L, 6188905976070523322L, 8541856478312007333L, 4882231903582871114L, -6447984364890078321L, -4350837676534004038L, 8596196227936820402L}), new StringBuilder(), i7));
                        return null;
                    }
                }
                while (zzfpVar.zzb() >= i9) {
                    i5 = zzagpVar.zza;
                    zzagr zzf = zzf(i5, zzfpVar, z3, i9, zzagoVar);
                    if (zzf != null) {
                        arrayList.add(zzf);
                    }
                }
                return new zzby(arrayList);
            }
        }
        zzagpVar = null;
        if (zzagpVar != null) {
        }
    }

    private static int zzb(int i) {
        return (i == 0 || i == 3) ? 1 : 2;
    }

    private static int zzc(byte[] bArr, int i, int i2) {
        int zzd = zzd(bArr, i);
        if (i2 == 0 || i2 == 3) {
            return zzd;
        }
        while (true) {
            int length = bArr.length;
            if (zzd < length - 1) {
                int i3 = zzd + 1;
                if ((zzd - i) % 2 == 0 && bArr[i3] == 0) {
                    return zzd;
                }
                zzd = zzd(bArr, i3);
            } else {
                return length;
            }
        }
    }

    private static int zzd(byte[] bArr, int i) {
        while (true) {
            int length = bArr.length;
            if (i < length) {
                if (bArr[i] == 0) {
                    return i;
                }
                i++;
            } else {
                return length;
            }
        }
    }

    private static int zze(zzfp zzfpVar, int i) {
        byte[] zzM = zzfpVar.zzM();
        int zzd = zzfpVar.zzd();
        int i2 = zzd;
        while (true) {
            int i3 = i2 + 1;
            if (i3 < zzd + i) {
                if ((zzM[i2] & 255) == 255 && zzM[i3] == 0) {
                    System.arraycopy(zzM, i2 + 2, zzM, i3, (i - (i2 - zzd)) - 2);
                    i--;
                }
                i2 = i3;
            } else {
                return i;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0654  */
    /* JADX WARN: Type inference failed for: r10v15 */
    /* JADX WARN: Type inference failed for: r10v16 */
    /* JADX WARN: Type inference failed for: r10v49 */
    /* JADX WARN: Type inference failed for: r10v50 */
    /* JADX WARN: Type inference failed for: r10v7 */
    /* JADX WARN: Type inference failed for: r10v8 */
    /* JADX WARN: Type inference failed for: r10v9 */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static zzagr zzf(int i, zzfp zzfpVar, boolean z, int i2, @Nullable zzago zzagoVar) {
        int zzo;
        int i3;
        int i4;
        boolean z2;
        boolean z3;
        int i5;
        int i6;
        Throwable th;
        zzfp zzfpVar2;
        int i7;
        Throwable th2;
        int i8;
        int i9;
        Throwable th3;
        zzagr zzagrVar;
        int i10;
        int i11;
        zzfp zzfpVar3;
        String zzi;
        byte[] bArr;
        zzagr zzageVar;
        int i12;
        int i13;
        int i14;
        String str;
        int zzd;
        String zza2;
        zzagr zzagxVar;
        int zzm = zzfpVar.zzm();
        int zzm2 = zzfpVar.zzm();
        int zzm3 = zzfpVar.zzm();
        int zzm4 = i >= 3 ? zzfpVar.zzm() : 0;
        if (i == 4) {
            zzo = zzfpVar.zzp();
            if (!z) {
                zzo = ((zzo >> 24) << 21) | (((zzo >> 8) & 255) << 7) | (zzo & 255) | (((zzo >> 16) & 255) << 14);
            }
        } else if (i == 3) {
            zzo = zzfpVar.zzp();
        } else {
            zzo = zzfpVar.zzo();
        }
        int zzq = i >= 3 ? zzfpVar.zzq() : 0;
        if (zzm == 0 && zzm2 == 0 && zzm3 == 0 && zzm4 == 0 && zzo == 0 && zzq == 0) {
            zzfpVar.zzK(zzfpVar.zze());
            return null;
        }
        int zzd2 = zzfpVar.zzd() + zzo;
        if (zzd2 > zzfpVar.zze()) {
            zzff.zzf(new ObfuscatedString(new long[]{7157918619549095617L, 5848279937088217949L, -6535758353704449578L}).toString(), new ObfuscatedString(new long[]{-7818815296706100940L, -8084140685922325113L, 6487255109392667608L, -2036500918360021969L, -4398842444778883372L, -3791275701291918460L}).toString());
            zzfpVar.zzK(zzfpVar.zze());
            return null;
        }
        if (zzagoVar == null) {
            if (i == 3) {
                int i15 = zzq & 64;
                i4 = (zzq & 128) != 0 ? 1 : 0;
                z2 = i15 != 0;
                z3 = (zzq & 32) != 0;
                i5 = i4;
                i3 = 1;
            } else {
                if (i == 4) {
                    boolean z4 = (zzq & 64) != 0;
                    int i16 = (zzq & 8) != 0 ? 1 : 0;
                    boolean z5 = (zzq & 4) != 0;
                    i3 = 1;
                    int i17 = (zzq & 2) != 0 ? 1 : 0;
                    int i18 = zzq & 1;
                    i6 = i17;
                    z3 = z4;
                    i4 = i16;
                    z2 = z5;
                    i5 = i18;
                    if (i4 != 0 && !z2) {
                        if (z3) {
                            zzfpVar.zzL(i3);
                            zzo--;
                        }
                        if (i5 != 0) {
                            zzfpVar.zzL(4);
                            zzo -= 4;
                        }
                        if (i6 != 0) {
                            zzo = zze(zzfpVar, zzo);
                        }
                        try {
                            try {
                                try {
                                } catch (Throwable th4) {
                                    th2 = th4;
                                    zzfpVar2 = zzfpVar;
                                }
                            } catch (Exception e) {
                                e = e;
                                zzfpVar2 = zzfpVar;
                                i7 = zzm4;
                                i6 = zzm;
                                i8 = zzm2;
                                i9 = zzm3;
                                th3 = e;
                                zzfpVar2.zzK(zzd2);
                                zzagrVar = null;
                                if (zzagrVar == null) {
                                }
                                return zzagrVar;
                            } catch (OutOfMemoryError e2) {
                                e = e2;
                                zzfpVar2 = zzfpVar;
                                i7 = zzm4;
                                i6 = zzm;
                                i8 = zzm2;
                                i9 = zzm3;
                                th3 = e;
                                zzfpVar2.zzK(zzd2);
                                zzagrVar = null;
                                if (zzagrVar == null) {
                                }
                                return zzagrVar;
                            }
                        } catch (Exception e3) {
                            e = e3;
                            th = e;
                            zzfpVar2 = zzfpVar;
                            i6 = zzm;
                            i8 = zzm2;
                            i9 = zzm3;
                            int i19 = zzm4;
                            th3 = th;
                            i7 = i19;
                            zzfpVar2.zzK(zzd2);
                            zzagrVar = null;
                            if (zzagrVar == null) {
                            }
                            return zzagrVar;
                        } catch (OutOfMemoryError e4) {
                            e = e4;
                            th = e;
                            zzfpVar2 = zzfpVar;
                            i6 = zzm;
                            i8 = zzm2;
                            i9 = zzm3;
                            int i192 = zzm4;
                            th3 = th;
                            i7 = i192;
                            zzfpVar2.zzK(zzd2);
                            zzagrVar = null;
                            if (zzagrVar == null) {
                            }
                            return zzagrVar;
                        }
                        if (zzm == 84 && zzm2 == 88 && zzm3 == 88 && (i == 2 || zzm4 == 88)) {
                            if (zzo > 0) {
                                int zzm5 = zzfpVar.zzm();
                                int i20 = zzo - 1;
                                byte[] bArr2 = new byte[i20];
                                zzfpVar.zzG(bArr2, 0, i20);
                                int zzc = zzc(bArr2, 0, zzm5);
                                zzagxVar = new zzagz(new ObfuscatedString(new long[]{-5530637742182404562L, -8297398548688163903L}).toString(), new String(bArr2, 0, zzc, zzj(zzm5)), zzg(bArr2, zzm5, zzc + zzb(zzm5)));
                                zzfpVar2 = zzfpVar;
                                zzageVar = zzagxVar;
                                i7 = zzm4;
                                i6 = zzm;
                                i8 = zzm2;
                                i9 = zzm3;
                            }
                            zzfpVar2 = zzfpVar;
                            i7 = zzm4;
                            i6 = zzm;
                            i8 = zzm2;
                            i9 = zzm3;
                            zzageVar = null;
                        } else {
                            if (zzm == 84) {
                                String zzi2 = zzi(i, 84, zzm2, zzm3, zzm4);
                                if (zzo > 0) {
                                    int zzm6 = zzfpVar.zzm();
                                    int i21 = zzo - 1;
                                    byte[] bArr3 = new byte[i21];
                                    zzfpVar.zzG(bArr3, 0, i21);
                                    zzageVar = new zzagz(zzi2, null, zzg(bArr3, zzm6, 0));
                                    zzfpVar2 = zzfpVar;
                                    i7 = zzm4;
                                    i6 = zzm;
                                    i8 = zzm2;
                                    i9 = zzm3;
                                }
                            } else {
                                if (zzm == 87) {
                                    if (zzm2 != 88 || zzm3 != 88 || (i != 2 && zzm4 != 88)) {
                                        i10 = 87;
                                    }
                                    int zzm7 = zzfpVar.zzm();
                                    int i22 = zzo - 1;
                                    byte[] bArr4 = new byte[i22];
                                    zzfpVar.zzG(bArr4, 0, i22);
                                    int zzc2 = zzc(bArr4, 0, zzm7);
                                    String str2 = new String(bArr4, 0, zzc2, zzj(zzm7));
                                    int zzb = zzc2 + zzb(zzm7);
                                    zzagxVar = new zzahb(new ObfuscatedString(new long[]{2145133679061084617L, 2137849450234267104L}).toString(), str2, zzh(bArr4, zzb, zzd(bArr4, zzb), zzfwq.zzb));
                                    zzfpVar2 = zzfpVar;
                                    zzageVar = zzagxVar;
                                    i7 = zzm4;
                                    i6 = zzm;
                                    i8 = zzm2;
                                    i9 = zzm3;
                                } else {
                                    i10 = zzm;
                                }
                                if (i10 == 87) {
                                    String zzi3 = zzi(i, 87, zzm2, zzm3, zzm4);
                                    byte[] bArr5 = new byte[zzo];
                                    zzfpVar.zzG(bArr5, 0, zzo);
                                    zzagxVar = new zzahb(zzi3, null, new String(bArr5, 0, zzd(bArr5, 0), zzfwq.zzb));
                                } else {
                                    ?? r10 = 73;
                                    ?? r102 = 73;
                                    r10 = 73;
                                    if (i10 == 80) {
                                        if (zzm2 == 82 && zzm3 == 73 && zzm4 == 86) {
                                            byte[] bArr6 = new byte[zzo];
                                            zzfpVar.zzG(bArr6, 0, zzo);
                                            int zzd3 = zzd(bArr6, 0);
                                            zzagxVar = new zzagx(new String(bArr6, 0, zzd3, zzfwq.zzb), zzl(bArr6, zzd3 + 1, zzo));
                                        } else {
                                            i10 = 80;
                                        }
                                    }
                                    try {
                                        if (i10 != 71) {
                                            i6 = zzm;
                                        } else if (zzm2 == 69 && zzm3 == 79 && (zzm4 == 66 || i == 2)) {
                                            try {
                                                int zzm8 = zzfpVar.zzm();
                                                Charset zzj = zzj(zzm8);
                                                int i23 = zzo - 1;
                                                byte[] bArr7 = new byte[i23];
                                                zzfpVar.zzG(bArr7, 0, i23);
                                                int zzd4 = zzd(bArr7, 0);
                                                i6 = zzm;
                                                String zze = zzcb.zze(new String(bArr7, 0, zzd4, zzfwq.zzb));
                                                int i24 = zzd4 + 1;
                                                int zzc3 = zzc(bArr7, i24, zzm8);
                                                String zzh = zzh(bArr7, i24, zzc3, zzj);
                                                int zzb2 = zzc3 + zzb(zzm8);
                                                int zzc4 = zzc(bArr7, zzb2, zzm8);
                                                zzageVar = new zzagm(zze, zzh, zzh(bArr7, zzb2, zzc4, zzj), zzl(bArr7, zzc4 + zzb(zzm8), i23));
                                                zzfpVar2 = zzfpVar;
                                                i7 = zzm4;
                                                i8 = zzm2;
                                                i9 = zzm3;
                                            } catch (Exception | OutOfMemoryError e5) {
                                                e = e5;
                                                i6 = zzm;
                                                zzfpVar2 = zzfpVar;
                                                i7 = zzm4;
                                                i8 = zzm2;
                                                i9 = zzm3;
                                                th3 = e;
                                                zzfpVar2.zzK(zzd2);
                                                zzagrVar = null;
                                                if (zzagrVar == null) {
                                                }
                                                return zzagrVar;
                                            }
                                        } else {
                                            i6 = zzm;
                                            i10 = 71;
                                        }
                                        try {
                                        } catch (Throwable th5) {
                                            zzfpVar2 = zzfpVar;
                                            th2 = th5;
                                        }
                                    } catch (Exception e6) {
                                        e = e6;
                                    } catch (OutOfMemoryError e7) {
                                        e = e7;
                                    }
                                    if (i != 2 ? !(i10 == 65 && zzm2 == 80 && zzm3 == 73 && zzm4 == 67) : !(i10 == 80 && zzm2 == 73 && zzm3 == 67)) {
                                        i11 = zzd2;
                                        try {
                                            try {
                                            } catch (Throwable th6) {
                                                th = th6;
                                            }
                                        } catch (Exception e8) {
                                            e = e8;
                                        } catch (OutOfMemoryError e9) {
                                            e = e9;
                                        }
                                        if (i10 != 67 || zzm2 != 79 || zzm3 != 77 || (zzm4 != 77 && i != 2)) {
                                            zzfpVar3 = zzfpVar;
                                            if (i10 == 67 && zzm2 == 72 && zzm3 == 65 && zzm4 == 80) {
                                                int zzd5 = zzfpVar.zzd();
                                                int zzd6 = zzd(zzfpVar.zzM(), zzd5);
                                                String str3 = new String(zzfpVar.zzM(), zzd5, zzd6 - zzd5, zzfwq.zzb);
                                                zzfpVar3.zzK(zzd6 + 1);
                                                int zzg = zzfpVar.zzg();
                                                int zzg2 = zzfpVar.zzg();
                                                long zzu = zzfpVar.zzu();
                                                long j = zzu == 4294967295L ? -1L : zzu;
                                                long zzu2 = zzfpVar.zzu();
                                                long j2 = zzu2 == 4294967295L ? -1L : zzu2;
                                                ArrayList arrayList = new ArrayList();
                                                int i25 = zzd5 + zzo;
                                                while (zzfpVar.zzd() < i25) {
                                                    zzagr zzf = zzf(i, zzfpVar3, z, i2, null);
                                                    if (zzf != null) {
                                                        arrayList.add(zzf);
                                                    }
                                                }
                                                zzageVar = new zzagg(str3, zzg, zzg2, j, j2, (zzagr[]) arrayList.toArray(new zzagr[0]));
                                            } else {
                                                if (i10 == 67 && zzm2 == 84 && zzm3 == 79 && zzm4 == 67) {
                                                    try {
                                                        int zzd7 = zzfpVar.zzd();
                                                        int zzd8 = zzd(zzfpVar.zzM(), zzd7);
                                                        String str4 = new String(zzfpVar.zzM(), zzd7, zzd8 - zzd7, zzfwq.zzb);
                                                        zzfpVar3.zzK(zzd8 + 1);
                                                        int zzm9 = zzfpVar.zzm();
                                                        boolean z6 = (2 & zzm9) != 0;
                                                        int i26 = zzm9 & 1;
                                                        int zzm10 = zzfpVar.zzm();
                                                        String[] strArr = new String[zzm10];
                                                        int i27 = 0;
                                                        while (i27 < zzm10) {
                                                            int zzd9 = zzfpVar.zzd();
                                                            int i28 = zzm10;
                                                            int zzd10 = zzd(zzfpVar.zzM(), zzd9);
                                                            i12 = zzm4;
                                                            try {
                                                                i14 = zzm3;
                                                                try {
                                                                    i13 = zzm2;
                                                                    str = str4;
                                                                } catch (Exception e10) {
                                                                    e = e10;
                                                                    i13 = zzm2;
                                                                    th3 = e;
                                                                    zzfpVar2 = zzfpVar3;
                                                                    i7 = i12;
                                                                    i9 = i14;
                                                                    zzd2 = i11;
                                                                    i8 = i13;
                                                                    zzfpVar2.zzK(zzd2);
                                                                    zzagrVar = null;
                                                                    if (zzagrVar == null) {
                                                                    }
                                                                    return zzagrVar;
                                                                } catch (OutOfMemoryError e11) {
                                                                    e = e11;
                                                                    i13 = zzm2;
                                                                    th3 = e;
                                                                    zzfpVar2 = zzfpVar3;
                                                                    i7 = i12;
                                                                    i9 = i14;
                                                                    zzd2 = i11;
                                                                    i8 = i13;
                                                                    zzfpVar2.zzK(zzd2);
                                                                    zzagrVar = null;
                                                                    if (zzagrVar == null) {
                                                                    }
                                                                    return zzagrVar;
                                                                }
                                                            } catch (Exception e12) {
                                                                e = e12;
                                                                i13 = zzm2;
                                                                i14 = zzm3;
                                                                th3 = e;
                                                                zzfpVar2 = zzfpVar3;
                                                                i7 = i12;
                                                                i9 = i14;
                                                                zzd2 = i11;
                                                                i8 = i13;
                                                                zzfpVar2.zzK(zzd2);
                                                                zzagrVar = null;
                                                                if (zzagrVar == null) {
                                                                }
                                                                return zzagrVar;
                                                            } catch (OutOfMemoryError e13) {
                                                                e = e13;
                                                                i13 = zzm2;
                                                                i14 = zzm3;
                                                                th3 = e;
                                                                zzfpVar2 = zzfpVar3;
                                                                i7 = i12;
                                                                i9 = i14;
                                                                zzd2 = i11;
                                                                i8 = i13;
                                                                zzfpVar2.zzK(zzd2);
                                                                zzagrVar = null;
                                                                if (zzagrVar == null) {
                                                                }
                                                                return zzagrVar;
                                                            }
                                                            try {
                                                                strArr[i27] = new String(zzfpVar.zzM(), zzd9, zzd10 - zzd9, zzfwq.zzb);
                                                                zzfpVar3.zzK(zzd10 + 1);
                                                                i27++;
                                                                zzm10 = i28;
                                                                zzm4 = i12;
                                                                zzm3 = i14;
                                                                str4 = str;
                                                                zzm2 = i13;
                                                            } catch (Exception e14) {
                                                                e = e14;
                                                                th3 = e;
                                                                zzfpVar2 = zzfpVar3;
                                                                i7 = i12;
                                                                i9 = i14;
                                                                zzd2 = i11;
                                                                i8 = i13;
                                                                zzfpVar2.zzK(zzd2);
                                                                zzagrVar = null;
                                                                if (zzagrVar == null) {
                                                                }
                                                                return zzagrVar;
                                                            } catch (OutOfMemoryError e15) {
                                                                e = e15;
                                                                th3 = e;
                                                                zzfpVar2 = zzfpVar3;
                                                                i7 = i12;
                                                                i9 = i14;
                                                                zzd2 = i11;
                                                                i8 = i13;
                                                                zzfpVar2.zzK(zzd2);
                                                                zzagrVar = null;
                                                                if (zzagrVar == null) {
                                                                }
                                                                return zzagrVar;
                                                            }
                                                        }
                                                        i12 = zzm4;
                                                        String str5 = str4;
                                                        i13 = zzm2;
                                                        i14 = zzm3;
                                                        ArrayList arrayList2 = new ArrayList();
                                                        int i29 = zzd7 + zzo;
                                                        while (zzfpVar.zzd() < i29) {
                                                            zzagr zzf2 = zzf(i, zzfpVar3, z, i2, null);
                                                            if (zzf2 != null) {
                                                                arrayList2.add(zzf2);
                                                            }
                                                        }
                                                        zzageVar = new zzagi(str5, z6, 1 == i26, strArr, (zzagr[]) arrayList2.toArray(new zzagr[0]));
                                                        zzfpVar2 = zzfpVar3;
                                                        i7 = i12;
                                                        i9 = i14;
                                                        zzd2 = i11;
                                                        i8 = i13;
                                                    } catch (Exception e16) {
                                                        e = e16;
                                                        i12 = zzm4;
                                                        i13 = zzm2;
                                                        i14 = zzm3;
                                                        th3 = e;
                                                        zzfpVar2 = zzfpVar3;
                                                        i7 = i12;
                                                        i9 = i14;
                                                        zzd2 = i11;
                                                        i8 = i13;
                                                        zzfpVar2.zzK(zzd2);
                                                        zzagrVar = null;
                                                        if (zzagrVar == null) {
                                                        }
                                                        return zzagrVar;
                                                    } catch (OutOfMemoryError e17) {
                                                        e = e17;
                                                        i12 = zzm4;
                                                        i13 = zzm2;
                                                        i14 = zzm3;
                                                        th3 = e;
                                                        zzfpVar2 = zzfpVar3;
                                                        i7 = i12;
                                                        i9 = i14;
                                                        zzd2 = i11;
                                                        i8 = i13;
                                                        zzfpVar2.zzK(zzd2);
                                                        zzagrVar = null;
                                                        if (zzagrVar == null) {
                                                        }
                                                        return zzagrVar;
                                                    }
                                                } else {
                                                    int i30 = zzm4;
                                                    try {
                                                        try {
                                                            if (i10 == 77) {
                                                                i8 = zzm2;
                                                                if (i8 == 76) {
                                                                    i9 = zzm3;
                                                                    if (i9 == 76) {
                                                                        i7 = i30;
                                                                        if (i7 == 84) {
                                                                            try {
                                                                                int zzq2 = zzfpVar.zzq();
                                                                                int zzo2 = zzfpVar.zzo();
                                                                                int zzo3 = zzfpVar.zzo();
                                                                                int zzm11 = zzfpVar.zzm();
                                                                                int zzm12 = zzfpVar.zzm();
                                                                                zzfo zzfoVar = new zzfo();
                                                                                zzfoVar.zzi(zzfpVar3);
                                                                                int i31 = ((zzo - 10) * 8) / (zzm11 + zzm12);
                                                                                int[] iArr = new int[i31];
                                                                                int[] iArr2 = new int[i31];
                                                                                for (int i32 = 0; i32 < i31; i32++) {
                                                                                    int zzd11 = zzfoVar.zzd(zzm11);
                                                                                    int zzd12 = zzfoVar.zzd(zzm12);
                                                                                    iArr[i32] = zzd11;
                                                                                    iArr2[i32] = zzd12;
                                                                                }
                                                                                zzfpVar2 = zzfpVar;
                                                                                zzageVar = new zzagv(zzq2, zzo2, zzo3, iArr, iArr2);
                                                                                zzd2 = i11;
                                                                            } catch (Exception e18) {
                                                                                e = e18;
                                                                                zzfpVar2 = zzfpVar;
                                                                                th3 = e;
                                                                                zzd2 = i11;
                                                                                zzfpVar2.zzK(zzd2);
                                                                                zzagrVar = null;
                                                                                if (zzagrVar == null) {
                                                                                }
                                                                                return zzagrVar;
                                                                            } catch (OutOfMemoryError e19) {
                                                                                e = e19;
                                                                                zzfpVar2 = zzfpVar;
                                                                                th3 = e;
                                                                                zzd2 = i11;
                                                                                zzfpVar2.zzK(zzd2);
                                                                                zzagrVar = null;
                                                                                if (zzagrVar == null) {
                                                                                }
                                                                                return zzagrVar;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        i7 = i30;
                                                                    }
                                                                } else {
                                                                    i7 = i30;
                                                                    i9 = zzm3;
                                                                }
                                                            } else {
                                                                i7 = i30;
                                                                i9 = zzm3;
                                                                i8 = zzm2;
                                                            }
                                                            zzfpVar2.zzG(bArr, 0, zzo);
                                                            zzageVar = new zzage(zzi, bArr);
                                                            zzd2 = i11;
                                                        } catch (Exception e20) {
                                                            e = e20;
                                                            zzd2 = i11;
                                                            th3 = e;
                                                            zzfpVar2.zzK(zzd2);
                                                            zzagrVar = null;
                                                            if (zzagrVar == null) {
                                                            }
                                                            return zzagrVar;
                                                        } catch (OutOfMemoryError e21) {
                                                            e = e21;
                                                            zzd2 = i11;
                                                            th3 = e;
                                                            zzfpVar2.zzK(zzd2);
                                                            zzagrVar = null;
                                                            if (zzagrVar == null) {
                                                            }
                                                            return zzagrVar;
                                                        } catch (Throwable th7) {
                                                            th = th7;
                                                            zzd2 = i11;
                                                            th2 = th;
                                                            zzfpVar2.zzK(zzd2);
                                                            throw th2;
                                                        }
                                                        zzi = zzi(i, i10, i8, i9, i7);
                                                        bArr = new byte[zzo];
                                                        zzfpVar2 = zzfpVar;
                                                    } catch (Exception e22) {
                                                        e = e22;
                                                        zzfpVar2 = zzfpVar;
                                                        zzd2 = i11;
                                                        th3 = e;
                                                        zzfpVar2.zzK(zzd2);
                                                        zzagrVar = null;
                                                        if (zzagrVar == null) {
                                                        }
                                                        return zzagrVar;
                                                    } catch (OutOfMemoryError e23) {
                                                        e = e23;
                                                        zzfpVar2 = zzfpVar;
                                                        zzd2 = i11;
                                                        th3 = e;
                                                        zzfpVar2.zzK(zzd2);
                                                        zzagrVar = null;
                                                        if (zzagrVar == null) {
                                                        }
                                                        return zzagrVar;
                                                    } catch (Throwable th8) {
                                                        th = th8;
                                                        zzfpVar2 = zzfpVar;
                                                    }
                                                }
                                                zzfpVar2.zzK(zzd2);
                                                zzagrVar = null;
                                                if (zzagrVar == null) {
                                                    String zzi4 = zzi(i, i6, i8, i9, i7);
                                                    StringBuilder sb = new StringBuilder();
                                                    sb.append(new ObfuscatedString(new long[]{7848999241051398260L, -2436625712157938512L, 17435022310254666L, -6454137781274082974L, -4127453119784028278L}).toString());
                                                    sb.append(zzi4);
                                                    zzff.zzg(new ObfuscatedString(new long[]{1061632482308732215L, -1250535982934441824L, 6741304108564632113L}).toString(), AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-5141546512359873188L, 6898644796925790249L, 2842723659260116509L}), sb, zzo), th3);
                                                }
                                                return zzagrVar;
                                            }
                                        } else if (zzo < 4) {
                                            zzfpVar2 = zzfpVar;
                                            i7 = zzm4;
                                            i8 = zzm2;
                                            i9 = zzm3;
                                            zzd2 = i11;
                                            zzageVar = null;
                                        } else {
                                            try {
                                                int zzm13 = zzfpVar.zzm();
                                                Charset zzj2 = zzj(zzm13);
                                                byte[] bArr8 = new byte[3];
                                                zzfpVar3 = zzfpVar;
                                                zzfpVar3.zzG(bArr8, 0, 3);
                                                String str6 = new String(bArr8, 0, 3);
                                                int i33 = zzo - 4;
                                                byte[] bArr9 = new byte[i33];
                                                zzfpVar3.zzG(bArr9, 0, i33);
                                                int zzc5 = zzc(bArr9, 0, zzm13);
                                                String str7 = new String(bArr9, 0, zzc5, zzj2);
                                                int zzb3 = zzc5 + zzb(zzm13);
                                                zzageVar = new zzagk(str6, str7, zzh(bArr9, zzb3, zzc(bArr9, zzb3, zzm13), zzj2));
                                            } catch (Exception e24) {
                                                e = e24;
                                                r10 = zzfpVar;
                                                i7 = zzm4;
                                                zzfpVar2 = r10;
                                                i8 = zzm2;
                                                i9 = zzm3;
                                                zzd2 = i11;
                                                th3 = e;
                                                zzfpVar2.zzK(zzd2);
                                                zzagrVar = null;
                                                if (zzagrVar == null) {
                                                }
                                                return zzagrVar;
                                            } catch (OutOfMemoryError e25) {
                                                e = e25;
                                                r10 = zzfpVar;
                                                i7 = zzm4;
                                                zzfpVar2 = r10;
                                                i8 = zzm2;
                                                i9 = zzm3;
                                                zzd2 = i11;
                                                th3 = e;
                                                zzfpVar2.zzK(zzd2);
                                                zzagrVar = null;
                                                if (zzagrVar == null) {
                                                }
                                                return zzagrVar;
                                            } catch (Throwable th9) {
                                                th = th9;
                                                r102 = zzfpVar;
                                                th2 = th;
                                                zzfpVar2 = r102;
                                                zzd2 = i11;
                                                zzfpVar2.zzK(zzd2);
                                                throw th2;
                                            }
                                        }
                                        i7 = zzm4;
                                        zzfpVar2 = zzfpVar3;
                                    } else {
                                        try {
                                            int zzm14 = zzfpVar.zzm();
                                            Charset zzj3 = zzj(zzm14);
                                            int i34 = zzo - 1;
                                            byte[] bArr10 = new byte[i34];
                                            zzfpVar.zzG(bArr10, 0, i34);
                                            try {
                                                if (i == 2) {
                                                    zza2 = new ObfuscatedString(new long[]{369536696739034511L, -553736696038784816L}).toString().concat(String.valueOf(zzfwk.zza(new String(bArr10, 0, 3, zzfwq.zzb))));
                                                    if (new ObfuscatedString(new long[]{-1143327784042677639L, -4413500759265152576L, 2750920943764859640L}).toString().equals(zza2)) {
                                                        zza2 = new ObfuscatedString(new long[]{-1127822886427563472L, 6814482988696128158L, -4691588470738951412L}).toString();
                                                    }
                                                    zzd = 2;
                                                } else {
                                                    zzd = zzd(bArr10, 0);
                                                    zza2 = zzfwk.zza(new String(bArr10, 0, zzd, zzfwq.zzb));
                                                    if (zza2.indexOf(47) == -1) {
                                                        zza2 = new ObfuscatedString(new long[]{-9114906167088498339L, 5234005229882593768L}).toString().concat(zza2);
                                                        zzd = zzd;
                                                    }
                                                }
                                                int i35 = bArr10[1 + zzd] & 255;
                                                int i36 = zzd + 2;
                                                int zzc6 = zzc(bArr10, i36, zzm14);
                                                i11 = zzd2;
                                                try {
                                                    zzagc zzagcVar = new zzagc(zza2, new String(bArr10, i36, zzc6 - i36, zzj3), i35, zzl(bArr10, zzc6 + zzb(zzm14), i34));
                                                    zzfpVar2 = zzfpVar;
                                                    zzageVar = zzagcVar;
                                                    i7 = zzm4;
                                                } catch (Exception | OutOfMemoryError e26) {
                                                    e = e26;
                                                    zzfpVar2 = zzfpVar;
                                                    i7 = zzm4;
                                                    i8 = zzm2;
                                                    i9 = zzm3;
                                                    zzd2 = i11;
                                                    th3 = e;
                                                    zzfpVar2.zzK(zzd2);
                                                    zzagrVar = null;
                                                    if (zzagrVar == null) {
                                                    }
                                                    return zzagrVar;
                                                }
                                            } catch (Exception | OutOfMemoryError e27) {
                                                th = e27;
                                                zzfpVar2 = zzfpVar;
                                                i8 = zzm2;
                                                i9 = zzm3;
                                                int i1922 = zzm4;
                                                th3 = th;
                                                i7 = i1922;
                                                zzfpVar2.zzK(zzd2);
                                                zzagrVar = null;
                                                if (zzagrVar == null) {
                                                }
                                                return zzagrVar;
                                            }
                                        } catch (Exception e28) {
                                            e = e28;
                                            zzfpVar2 = zzfpVar;
                                            i7 = zzm4;
                                            i8 = zzm2;
                                            i9 = zzm3;
                                            th3 = e;
                                            zzfpVar2.zzK(zzd2);
                                            zzagrVar = null;
                                            if (zzagrVar == null) {
                                            }
                                            return zzagrVar;
                                        } catch (OutOfMemoryError e29) {
                                            e = e29;
                                            zzfpVar2 = zzfpVar;
                                            i7 = zzm4;
                                            i8 = zzm2;
                                            i9 = zzm3;
                                            th3 = e;
                                            zzfpVar2.zzK(zzd2);
                                            zzagrVar = null;
                                            if (zzagrVar == null) {
                                            }
                                            return zzagrVar;
                                        } catch (Throwable th10) {
                                            th = th10;
                                            zzfpVar2 = zzfpVar;
                                            th2 = th;
                                            zzfpVar2.zzK(zzd2);
                                            throw th2;
                                        }
                                    }
                                    i8 = zzm2;
                                    i9 = zzm3;
                                    zzd2 = i11;
                                }
                                zzfpVar2 = zzfpVar;
                                zzageVar = zzagxVar;
                                i7 = zzm4;
                                i6 = zzm;
                                i8 = zzm2;
                                i9 = zzm3;
                            }
                            zzfpVar2 = zzfpVar;
                            i7 = zzm4;
                            i6 = zzm;
                            i8 = zzm2;
                            i9 = zzm3;
                            zzageVar = null;
                        }
                        zzfpVar2.zzK(zzd2);
                        zzagrVar = zzageVar;
                        th3 = null;
                        if (zzagrVar == null) {
                        }
                        return zzagrVar;
                    }
                    zzff.zzf(new ObfuscatedString(new long[]{6338160406756240702L, 8918476588543382897L, 1084915882383904782L}).toString(), new ObfuscatedString(new long[]{-4977781531498218591L, 6168880940608111147L, 7623738831889055725L, 7977512485850484751L, 3814396438361373436L, -4419383552252162941L, 7622793795141226566L, 7123844020939195943L}).toString());
                    zzfpVar.zzK(zzd2);
                    return null;
                }
                i3 = 1;
                i4 = 0;
                z2 = false;
                z3 = false;
                i5 = 0;
            }
            i6 = 0;
            if (i4 != 0) {
            }
            zzff.zzf(new ObfuscatedString(new long[]{6338160406756240702L, 8918476588543382897L, 1084915882383904782L}).toString(), new ObfuscatedString(new long[]{-4977781531498218591L, 6168880940608111147L, 7623738831889055725L, 7977512485850484751L, 3814396438361373436L, -4419383552252162941L, 7622793795141226566L, 7123844020939195943L}).toString());
            zzfpVar.zzK(zzd2);
            return null;
        }
        zzfpVar.zzK(zzd2);
        return null;
    }

    private static zzgaa zzg(byte[] bArr, int i, int i2) {
        if (i2 >= bArr.length) {
            return zzgaa.zzm(new ObfuscatedString(new long[]{-8649052595426201355L}).toString());
        }
        zzfzx zzfzxVar = new zzfzx();
        int zzc = zzc(bArr, i2, i);
        while (i2 < zzc) {
            zzfzxVar.zzf(new String(bArr, i2, zzc - i2, zzj(i)));
            i2 = zzb(i) + zzc;
            zzc = zzc(bArr, i2, i);
        }
        zzgaa zzi = zzfzxVar.zzi();
        if (zzi.isEmpty()) {
            return zzgaa.zzm(new ObfuscatedString(new long[]{6370772588501562562L}).toString());
        }
        return zzi;
    }

    private static String zzh(byte[] bArr, int i, int i2, Charset charset) {
        return (i2 <= i || i2 > bArr.length) ? new ObfuscatedString(new long[]{1899747823847548479L}).toString() : new String(bArr, i, i2 - i, charset);
    }

    private static String zzi(int i, int i2, int i3, int i4, int i5) {
        if (i == 2) {
            return String.format(Locale.US, new ObfuscatedString(new long[]{-887633491312568006L, 855233403093899618L}).toString(), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4));
        }
        return String.format(Locale.US, new ObfuscatedString(new long[]{2771076602299786663L, -7535128522676017175L}).toString(), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5));
    }

    private static Charset zzj(int i) {
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    return zzfwq.zzb;
                }
                return zzfwq.zzc;
            }
            return zzfwq.zzd;
        }
        return zzfwq.zzf;
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0048, code lost:
    
        r4 = false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static boolean zzk(zzfp zzfpVar, int i, int i2, boolean z) {
        boolean z2;
        int zzo;
        long zzo2;
        int i3;
        int i4;
        int zzd = zzfpVar.zzd();
        while (true) {
            try {
                z2 = true;
                z2 = true;
                int i5 = 1;
                int i6 = 1;
                if (zzfpVar.zzb() < i2) {
                    break;
                }
                if (i >= 3) {
                    zzo = zzfpVar.zzg();
                    zzo2 = zzfpVar.zzu();
                    i3 = zzfpVar.zzq();
                } else {
                    zzo = zzfpVar.zzo();
                    zzo2 = zzfpVar.zzo();
                    i3 = 0;
                }
                if (zzo != 0 || zzo2 != 0 || i3 != 0) {
                    if (i == 4 && !z) {
                        if ((8421504 & zzo2) != 0) {
                            break;
                        }
                        long j = ((zzo2 >> 16) & 255) << 14;
                        zzo2 = ((zzo2 >> 24) << 21) | j | (zzo2 & 255) | (((zzo2 >> 8) & 255) << 7);
                    }
                    if (i == 4) {
                        if ((i3 & 64) == 0) {
                            i5 = 0;
                        }
                        int i7 = i5;
                        i6 = i3 & 1;
                        i4 = i7;
                    } else {
                        if (i == 3) {
                            if ((i3 & 32) != 0) {
                                i4 = 1;
                            } else {
                                i4 = 0;
                            }
                            if ((i3 & 128) != 0) {
                            }
                        } else {
                            i4 = 0;
                        }
                        i6 = 0;
                    }
                    if (i6 != 0) {
                        i4 += 4;
                    }
                    if (zzo2 >= i4 && zzfpVar.zzb() >= zzo2) {
                        zzfpVar.zzL((int) zzo2);
                    }
                }
            } finally {
                zzfpVar.zzK(zzd);
            }
        }
        return z2;
    }

    private static byte[] zzl(byte[] bArr, int i, int i2) {
        if (i2 <= i) {
            return zzfy.zzf;
        }
        return Arrays.copyOfRange(bArr, i, i2);
    }
}
