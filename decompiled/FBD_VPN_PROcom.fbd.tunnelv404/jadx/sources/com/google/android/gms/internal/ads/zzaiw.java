package com.google.android.gms.internal.ads;

import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.core.internal.view.SupportMenu;
import androidx.work.WorkRequest;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import j$.util.Objects;
import java.math.RoundingMode;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzaiw {
    private static final byte[] zza;

    static {
        int i = zzfy.zza;
        zza = new ObfuscatedString(new long[]{6789405445810610350L, -8221707280920717741L}).toString().getBytes(zzfwq.zzc);
    }

    @Nullable
    public static zzby zza(zzaim zzaimVar) {
        zzgc zzgcVar;
        zzain zzb = zzaimVar.zzb(1751411826);
        zzain zzb2 = zzaimVar.zzb(1801812339);
        zzain zzb3 = zzaimVar.zzb(1768715124);
        if (zzb != null && zzb2 != null && zzb3 != null && zzg(zzb.zza) == 1835299937) {
            zzfp zzfpVar = zzb2.zza;
            zzfpVar.zzK(12);
            int zzg = zzfpVar.zzg();
            String[] strArr = new String[zzg];
            for (int i = 0; i < zzg; i++) {
                int zzg2 = zzfpVar.zzg();
                zzfpVar.zzL(4);
                strArr[i] = zzfpVar.zzA(zzg2 - 8, zzfwq.zzc);
            }
            zzfp zzfpVar2 = zzb3.zza;
            zzfpVar2.zzK(8);
            ArrayList arrayList = new ArrayList();
            while (zzfpVar2.zzb() > 8) {
                int zzg3 = zzfpVar2.zzg() + zzfpVar2.zzd();
                int zzg4 = zzfpVar2.zzg() - 1;
                if (zzg4 >= 0 && zzg4 < zzg) {
                    String str = strArr[zzg4];
                    int i2 = zzajd.zzb;
                    while (true) {
                        int zzd = zzfpVar2.zzd();
                        if (zzd < zzg3) {
                            int zzg5 = zzfpVar2.zzg();
                            if (zzfpVar2.zzg() == 1684108385) {
                                int zzg6 = zzfpVar2.zzg();
                                int zzg7 = zzfpVar2.zzg();
                                int i3 = zzg5 - 16;
                                byte[] bArr = new byte[i3];
                                zzfpVar2.zzG(bArr, 0, i3);
                                zzgcVar = new zzgc(str, bArr, zzg7, zzg6);
                                break;
                            }
                            zzfpVar2.zzK(zzd + zzg5);
                        } else {
                            zzgcVar = null;
                            break;
                        }
                    }
                    if (zzgcVar != null) {
                        arrayList.add(zzgcVar);
                    }
                } else {
                    zzff.zzf(new ObfuscatedString(new long[]{-2862254608961510484L, 6933531045896584245L, -925273036362219693L}).toString(), AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-8325982640184990097L, -3234867696492711319L, -4435495249452032237L, -8107604274577386577L, -1453451984286179675L, -1864087359495960731L, -4724104736317305244L}), new StringBuilder(), zzg4));
                }
                zzfpVar2.zzK(zzg3);
            }
            if (!arrayList.isEmpty()) {
                return new zzby(arrayList);
            }
        }
        return null;
    }

    public static zzby zzb(zzain zzainVar) {
        int zzn;
        zzfp zzfpVar = zzainVar.zza;
        zzfpVar.zzK(8);
        zzby zzbyVar = new zzby(-9223372036854775807L, new zzbx[0]);
        while (zzfpVar.zzb() >= 8) {
            int zzd = zzfpVar.zzd();
            int zzg = zzfpVar.zzg() + zzd;
            int zzg2 = zzfpVar.zzg();
            zzby zzbyVar2 = null;
            if (zzg2 == 1835365473) {
                zzfpVar.zzK(zzd);
                zzfpVar.zzL(8);
                zze(zzfpVar);
                while (true) {
                    if (zzfpVar.zzd() >= zzg) {
                        break;
                    }
                    int zzd2 = zzfpVar.zzd();
                    int zzg3 = zzfpVar.zzg() + zzd2;
                    if (zzfpVar.zzg() == 1768715124) {
                        zzfpVar.zzK(zzd2);
                        zzfpVar.zzL(8);
                        ArrayList arrayList = new ArrayList();
                        while (zzfpVar.zzd() < zzg3) {
                            zzbx zza2 = zzajd.zza(zzfpVar);
                            if (zza2 != null) {
                                arrayList.add(zza2);
                            }
                        }
                        if (!arrayList.isEmpty()) {
                            zzbyVar2 = new zzby(arrayList);
                        }
                    } else {
                        zzfpVar.zzK(zzg3);
                    }
                }
                zzbyVar = zzbyVar.zzd(zzbyVar2);
            } else if (zzg2 == 1936553057) {
                zzfpVar.zzK(zzd);
                zzfpVar.zzL(12);
                while (true) {
                    if (zzfpVar.zzd() >= zzg) {
                        break;
                    }
                    int zzd3 = zzfpVar.zzd();
                    int zzg4 = zzfpVar.zzg();
                    if (zzfpVar.zzg() == 1935766900) {
                        if (zzg4 >= 16) {
                            zzfpVar.zzL(4);
                            int i = -1;
                            int i2 = 0;
                            for (int i3 = 0; i3 < 2; i3++) {
                                int zzm = zzfpVar.zzm();
                                int zzm2 = zzfpVar.zzm();
                                if (zzm == 0) {
                                    i = zzm2;
                                } else if (zzm == 1) {
                                    i2 = zzm2;
                                }
                            }
                            if (i == 12) {
                                zzn = 240;
                            } else if (i == 13) {
                                zzn = 120;
                            } else {
                                if (i == 21 && zzfpVar.zzb() >= 8 && zzfpVar.zzd() + 8 <= zzg) {
                                    int zzg5 = zzfpVar.zzg();
                                    int zzg6 = zzfpVar.zzg();
                                    if (zzg5 >= 12 && zzg6 == 1936877170) {
                                        zzn = zzfpVar.zzn();
                                    }
                                }
                                zzn = -2147483647;
                            }
                            if (zzn != -2147483647) {
                                zzbyVar2 = new zzby(-9223372036854775807L, new zzahm(zzn, i2));
                            }
                        }
                    } else {
                        zzfpVar.zzK(zzd3 + zzg4);
                    }
                }
                zzbyVar = zzbyVar.zzd(zzbyVar2);
            } else if (zzg2 == -1451722374) {
                zzbyVar = zzbyVar.zzd(zzi(zzfpVar));
            }
            zzfpVar.zzK(zzg);
        }
        return zzbyVar;
    }

    public static zzgi zzc(zzfp zzfpVar) {
        long zzt;
        long zzt2;
        zzfpVar.zzK(8);
        if (zzaio.zze(zzfpVar.zzg()) == 0) {
            zzt = zzfpVar.zzu();
            zzt2 = zzfpVar.zzu();
        } else {
            zzt = zzfpVar.zzt();
            zzt2 = zzfpVar.zzt();
        }
        return new zzgi(zzt, zzt2, zzfpVar.zzu());
    }

    /* JADX WARN: Code restructure failed: missing block: B:246:0x0975, code lost:
    
        if (r11 == 1) goto L364;
     */
    /* JADX WARN: Code restructure failed: missing block: B:249:0x0951, code lost:
    
        if (r6.zzd(1) > 0) goto L352;
     */
    /* JADX WARN: Removed duplicated region for block: B:173:0x07e1  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x080d  */
    /* JADX WARN: Removed duplicated region for block: B:225:0x0986  */
    /* JADX WARN: Removed duplicated region for block: B:235:0x09b9  */
    /* JADX WARN: Removed duplicated region for block: B:237:0x09bb  */
    /* JADX WARN: Removed duplicated region for block: B:342:0x0bdf  */
    /* JADX WARN: Removed duplicated region for block: B:345:0x0be1  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x017d  */
    /* JADX WARN: Removed duplicated region for block: B:488:0x0d90  */
    /* JADX WARN: Removed duplicated region for block: B:489:0x0d94  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0192  */
    /* JADX WARN: Removed duplicated region for block: B:512:0x0e11 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:515:0x01de  */
    /* JADX WARN: Removed duplicated region for block: B:516:0x01d5  */
    /* JADX WARN: Removed duplicated region for block: B:517:0x0198  */
    /* JADX WARN: Removed duplicated region for block: B:518:0x0184  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x01d2  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x01dc  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0222  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static List zzd(zzaim zzaimVar, zzadk zzadkVar, long j, @Nullable zzae zzaeVar, boolean z, boolean z2, zzfws zzfwsVar) {
        long j2;
        int i;
        long j3;
        zzain zzb;
        int i2;
        int i3;
        int i4;
        ArrayList arrayList;
        long[] jArr;
        long[] jArr2;
        zzajm zzajmVar;
        int i5;
        zzfws zzfwsVar2;
        Pair create;
        int i6;
        long zzg;
        zzaim zzaimVar2;
        boolean z3;
        String str;
        int i7;
        ArrayList arrayList2;
        int i8;
        Pair pair;
        zzaiv zzaivVar;
        zzaim zzaimVar3;
        int i9;
        int i10;
        zzfp zzfpVar;
        int i11;
        int i12;
        int i13;
        int i14;
        zzais zzaisVar;
        int i15;
        int i16;
        zzae zzaeVar2;
        String str2;
        zzais zzaisVar2;
        byte[] bArr;
        long j4;
        long j5;
        int i17;
        int i18;
        int i19;
        boolean z4;
        zzais zzaisVar3;
        int i20;
        int i21;
        String str3;
        boolean z5;
        String str4;
        byte[] bArr2;
        int zzd;
        int i22;
        boolean z6;
        zzt zzg2;
        int i23;
        int i24;
        int i25;
        int zzd2;
        String str5;
        boolean z7;
        String str6;
        boolean z8;
        float f;
        boolean z9;
        float f2;
        boolean z10;
        ObfuscatedString obfuscatedString;
        String obfuscatedString2;
        int i26;
        long j6;
        zzgaa zzgaaVar;
        long j7;
        ArrayList arrayList3;
        zzaim zzaimVar4 = zzaimVar;
        zzae zzaeVar3 = zzaeVar;
        int i27 = 1835297121;
        int i28 = 16;
        int i29 = 8;
        int i30 = 1;
        int i31 = 4;
        ArrayList arrayList4 = new ArrayList();
        int i32 = 0;
        while (i32 < zzaimVar4.zzc.size()) {
            zzaim zzaimVar5 = (zzaim) zzaimVar4.zzc.get(i32);
            if (zzaimVar5.zzd != 1953653099) {
                i4 = i32;
                arrayList3 = arrayList4;
            } else {
                zzain zzb2 = zzaimVar4.zzb(1836476516);
                zzb2.getClass();
                zzaim zza2 = zzaimVar5.zza(i27);
                zza2.getClass();
                zzain zzb3 = zza2.zzb(1751411826);
                zzb3.getClass();
                int zzg3 = zzg(zzb3.zza);
                int i33 = zzg3 == 1936684398 ? 1 : zzg3 == 1986618469 ? 2 : (zzg3 == 1952807028 || zzg3 == 1935832172 || zzg3 == 1937072756 || zzg3 == 1668047728) ? 3 : zzg3 == 1835365473 ? 5 : -1;
                if (i33 == -1) {
                    zzfwsVar2 = zzfwsVar;
                    i4 = i32;
                    arrayList = arrayList4;
                    zzajmVar = null;
                } else {
                    zzain zzb4 = zzaimVar5.zzb(1953196132);
                    zzb4.getClass();
                    zzfp zzfpVar2 = zzb4.zza;
                    zzfpVar2.zzK(i29);
                    int zze = zzaio.zze(zzfpVar2.zzg());
                    zzfpVar2.zzL(zze == 0 ? 8 : 16);
                    int zzg4 = zzfpVar2.zzg();
                    zzfpVar2.zzL(i31);
                    int zzd3 = zzfpVar2.zzd();
                    int i34 = 0;
                    while (true) {
                        int i35 = zze == 0 ? 4 : 8;
                        if (i34 < i35) {
                            if (zzfpVar2.zzM()[zzd3 + i34] != -1) {
                                long zzu = zze == 0 ? zzfpVar2.zzu() : zzfpVar2.zzv();
                                if (zzu != 0) {
                                    j2 = zzu;
                                }
                            } else {
                                i34 += i30;
                            }
                        } else {
                            zzfpVar2.zzL(i35);
                            break;
                        }
                    }
                    j2 = -9223372036854775807L;
                    zzfpVar2.zzL(i28);
                    int zzg5 = zzfpVar2.zzg();
                    int zzg6 = zzfpVar2.zzg();
                    zzfpVar2.zzL(i31);
                    int zzg7 = zzfpVar2.zzg();
                    int zzg8 = zzfpVar2.zzg();
                    int i36 = 65536;
                    if (zzg5 == 0) {
                        if (zzg6 != 65536) {
                            zzg5 = 0;
                        } else if (zzg7 != -65536) {
                            zzg5 = 0;
                            zzg6 = 65536;
                        } else if (zzg8 == 0) {
                            i = 90;
                            zzaiv zzaivVar2 = new zzaiv(zzg4, j2, i);
                            if (j == -9223372036854775807L) {
                                j7 = zzaivVar2.zzb;
                                j3 = j7;
                            } else {
                                j3 = j;
                            }
                            long j8 = zzc(zzb2.zza).zzc;
                            long zzs = j3 == -9223372036854775807L ? -9223372036854775807L : zzfy.zzs(j3, 1000000L, j8, RoundingMode.FLOOR);
                            zzaim zza3 = zza2.zza(1835626086);
                            zza3.getClass();
                            zzaim zza4 = zza3.zza(1937007212);
                            zza4.getClass();
                            zzain zzb5 = zza2.zzb(1835296868);
                            zzb5.getClass();
                            zzfp zzfpVar3 = zzb5.zza;
                            zzfpVar3.zzK(8);
                            int zze2 = zzaio.zze(zzfpVar3.zzg());
                            zzfpVar3.zzL(zze2 == 0 ? 8 : 16);
                            int i37 = zze2 == 0 ? 4 : 8;
                            long zzu2 = zzfpVar3.zzu();
                            zzfpVar3.zzL(i37);
                            int zzq = zzfpVar3.zzq();
                            StringBuilder sb = new StringBuilder();
                            sb.append((char) (((zzq >> 10) & 31) + 96));
                            sb.append((char) (((zzq >> 5) & 31) + 96));
                            sb.append((char) ((zzq & 31) + 96));
                            Pair create2 = Pair.create(Long.valueOf(zzu2), sb.toString());
                            zzb = zza4.zzb(1937011556);
                            if (zzb != null) {
                                i2 = zzaivVar2.zza;
                                i3 = zzaivVar2.zzc;
                                String str7 = (String) create2.second;
                                zzfp zzfpVar4 = zzb.zza;
                                zzfpVar4.zzK(12);
                                int zzg9 = zzfpVar4.zzg();
                                zzais zzaisVar4 = new zzais(zzg9);
                                int i38 = 0;
                                while (i38 < zzg9) {
                                    int zzd4 = zzfpVar4.zzd();
                                    int i39 = zzg9;
                                    int zzg10 = zzfpVar4.zzg();
                                    if (zzg10 > 0) {
                                        zzaimVar2 = zzaimVar5;
                                        z3 = true;
                                    } else {
                                        zzaimVar2 = zzaimVar5;
                                        z3 = false;
                                    }
                                    int i40 = i33;
                                    int i41 = i3;
                                    zzacy.zzb(z3, new ObfuscatedString(new long[]{7078919547900019788L, -4927921781669949028L, 8505155204143678306L, 4288151157881607391L, 8448093748670031426L}).toString());
                                    int zzg11 = zzfpVar4.zzg();
                                    int i42 = 1211250227;
                                    if (zzg11 == 1635148593 || zzg11 == 1635148595 || zzg11 == 1701733238 || zzg11 == 1831958048 || zzg11 == 1836070006 || zzg11 == 1752589105 || zzg11 == 1751479857 || zzg11 == 1932670515 || zzg11 == 1211250227 || zzg11 == 1987063864 || zzg11 == 1987063865 || zzg11 == 1635135537 || zzg11 == 1685479798 || zzg11 == 1685479729 || zzg11 == 1685481573) {
                                        str = str7;
                                        i7 = i32;
                                        arrayList2 = arrayList4;
                                        i8 = i2;
                                        pair = create2;
                                        zzaivVar = zzaivVar2;
                                        zzaimVar3 = zzaimVar2;
                                        i9 = i40;
                                        i10 = i41;
                                        zzfpVar = zzfpVar4;
                                        i11 = 16;
                                    } else if (zzg11 == 1685481521) {
                                        str = str7;
                                        i7 = i32;
                                        arrayList2 = arrayList4;
                                        i8 = i2;
                                        pair = create2;
                                        zzaivVar = zzaivVar2;
                                        zzaimVar3 = zzaimVar2;
                                        i9 = i40;
                                        i10 = i41;
                                        i11 = 16;
                                        zzfpVar = zzfpVar4;
                                    } else {
                                        if (zzg11 == 1836069985 || zzg11 == 1701733217 || zzg11 == 1633889587 || zzg11 == 1700998451 || zzg11 == 1633889588 || zzg11 == 1835823201 || zzg11 == 1685353315 || zzg11 == 1685353317 || zzg11 == 1685353320 || zzg11 == 1685353324 || zzg11 == 1685353336 || zzg11 == 1935764850 || zzg11 == 1935767394 || zzg11 == 1819304813 || zzg11 == 1936684916 || zzg11 == 1953984371 || zzg11 == 778924082 || zzg11 == 778924083 || zzg11 == 1835557169 || zzg11 == 1835560241 || zzg11 == 1634492771 || zzg11 == 1634492791 || zzg11 == 1970037111 || zzg11 == 1332770163 || zzg11 == 1716281667) {
                                            zzaivVar = zzaivVar2;
                                            zzfpVar = zzfpVar4;
                                            str = str7;
                                            i9 = i40;
                                            zzaimVar3 = zzaimVar2;
                                            i7 = i32;
                                            arrayList2 = arrayList4;
                                            pair = create2;
                                            zzm(zzfpVar4, zzg11, zzd4, zzg10, i2, str, z2, zzaeVar, zzaisVar4, i38);
                                            zzaisVar = zzaisVar4;
                                            i13 = zzg10;
                                            i14 = i38;
                                            i12 = zzd4;
                                            i15 = i41;
                                            i16 = i2;
                                        } else {
                                            if (zzg11 == 1414810956 || zzg11 == 1954034535 || zzg11 == 2004251764 || zzg11 == 1937010800 || zzg11 == 1664495672) {
                                                zzfpVar4.zzK(zzd4 + 16);
                                                if (zzg11 == 1414810956) {
                                                    obfuscatedString2 = new ObfuscatedString(new long[]{-4454945027677177461L, 1894952097127987481L, -6141100947743538748L, -9127510180960781211L}).toString();
                                                } else {
                                                    if (zzg11 == 1954034535) {
                                                        int i43 = zzg10 - 16;
                                                        byte[] bArr3 = new byte[i43];
                                                        zzfpVar4.zzG(bArr3, 0, i43);
                                                        i26 = i32;
                                                        j6 = Long.MAX_VALUE;
                                                        zzgaaVar = zzgaa.zzm(bArr3);
                                                        obfuscatedString2 = new ObfuscatedString(new long[]{-7862268048372773856L, 2275765449525196965L, -7455700023825913487L, 1649015856487352556L, -3055412930577117851L}).toString();
                                                    } else {
                                                        if (zzg11 == 2004251764) {
                                                            obfuscatedString = new ObfuscatedString(new long[]{4316309068255319650L, 2403775330333746532L, -9086846573205634875L, 4104122645314711966L});
                                                        } else if (zzg11 == 1937010800) {
                                                            obfuscatedString2 = new ObfuscatedString(new long[]{8206062729808862972L, 4232313595628592486L, 8935132956590533787L, 454524524817033592L}).toString();
                                                            i26 = i32;
                                                            j6 = 0;
                                                            zzgaaVar = null;
                                                        } else {
                                                            zzaisVar4.zzd = 1;
                                                            obfuscatedString = new ObfuscatedString(new long[]{3818335894511882534L, -5948249834639291280L, -658463254341019182L, 8343068036639296550L, -6095538275893530354L});
                                                        }
                                                        obfuscatedString2 = obfuscatedString.toString();
                                                    }
                                                    zzak zzakVar = new zzak();
                                                    zzakVar.zzJ(i2);
                                                    zzakVar.zzW(obfuscatedString2);
                                                    zzakVar.zzN(str7);
                                                    zzakVar.zzaa(j6);
                                                    zzakVar.zzL(zzgaaVar);
                                                    zzaisVar4.zzb = zzakVar.zzac();
                                                    zzaisVar = zzaisVar4;
                                                    str = str7;
                                                    arrayList2 = arrayList4;
                                                    pair = create2;
                                                    zzaivVar = zzaivVar2;
                                                    i14 = i38;
                                                    i7 = i26;
                                                }
                                                i26 = i32;
                                                zzgaaVar = null;
                                                j6 = Long.MAX_VALUE;
                                                zzak zzakVar2 = new zzak();
                                                zzakVar2.zzJ(i2);
                                                zzakVar2.zzW(obfuscatedString2);
                                                zzakVar2.zzN(str7);
                                                zzakVar2.zzaa(j6);
                                                zzakVar2.zzL(zzgaaVar);
                                                zzaisVar4.zzb = zzakVar2.zzac();
                                                zzaisVar = zzaisVar4;
                                                str = str7;
                                                arrayList2 = arrayList4;
                                                pair = create2;
                                                zzaivVar = zzaivVar2;
                                                i14 = i38;
                                                i7 = i26;
                                            } else {
                                                if (zzg11 == 1835365492) {
                                                    zzfpVar4.zzK(zzd4 + 16);
                                                    zzfpVar4.zzx((char) 0);
                                                    String zzx = zzfpVar4.zzx((char) 0);
                                                    if (zzx != null) {
                                                        zzak zzakVar3 = new zzak();
                                                        zzakVar3.zzJ(i2);
                                                        zzakVar3.zzW(zzx);
                                                        zzaisVar4.zzb = zzakVar3.zzac();
                                                    }
                                                } else if (zzg11 == 1667329389) {
                                                    zzak zzakVar4 = new zzak();
                                                    zzakVar4.zzJ(i2);
                                                    zzakVar4.zzW(new ObfuscatedString(new long[]{5707550758493091059L, -6574430481189401399L, -1037695757098151906L, -4443983215744834341L, 7066077780127995101L}).toString());
                                                    zzaisVar4.zzb = zzakVar4.zzac();
                                                }
                                                zzaisVar = zzaisVar4;
                                                str = str7;
                                                i7 = i32;
                                                arrayList2 = arrayList4;
                                                pair = create2;
                                                zzaivVar = zzaivVar2;
                                                i14 = i38;
                                            }
                                            zzaimVar3 = zzaimVar2;
                                            i9 = i40;
                                            i15 = i41;
                                            zzfpVar = zzfpVar4;
                                            i16 = i2;
                                            i13 = zzg10;
                                            i12 = zzd4;
                                        }
                                        zzfpVar.zzK(i12 + i13);
                                        zzaeVar3 = zzaeVar;
                                        i2 = i16;
                                        zzaisVar4 = zzaisVar;
                                        i38 = i14 + 1;
                                        zzfpVar4 = zzfpVar;
                                        i32 = i7;
                                        zzaivVar2 = zzaivVar;
                                        i33 = i9;
                                        zzg9 = i39;
                                        zzaimVar5 = zzaimVar3;
                                        arrayList4 = arrayList2;
                                        create2 = pair;
                                        i3 = i15;
                                        str7 = str;
                                    }
                                    zzfpVar.zzK(zzd4 + 16);
                                    zzfpVar.zzL(i11);
                                    int zzq2 = zzfpVar.zzq();
                                    int zzq3 = zzfpVar.zzq();
                                    zzfpVar.zzL(50);
                                    int zzd5 = zzfpVar.zzd();
                                    if (zzg11 == 1701733238) {
                                        Pair zzh = zzh(zzfpVar, zzd4, zzg10);
                                        if (zzh != null) {
                                            int intValue = ((Integer) zzh.first).intValue();
                                            zzaeVar2 = zzaeVar3 == null ? null : zzaeVar3.zzb(((zzajn) zzh.second).zzb);
                                            zzaisVar4.zza[i38] = (zzajn) zzh.second;
                                            zzg11 = intValue;
                                        } else {
                                            zzaeVar2 = zzaeVar3;
                                            zzg11 = 1701733238;
                                        }
                                        zzfpVar.zzK(zzd5);
                                    } else {
                                        zzaeVar2 = zzaeVar3;
                                    }
                                    if (zzg11 == 1831958048) {
                                        i42 = zzg11;
                                        str2 = new ObfuscatedString(new long[]{8597394613859156757L, 1608268440161767766L, 4538925144825575760L}).toString();
                                    } else if (zzg11 == 1211250227) {
                                        str2 = new ObfuscatedString(new long[]{3933578578092795186L, 680144000258873483L, -2907820874732773457L}).toString();
                                    } else {
                                        i42 = zzg11;
                                        str2 = null;
                                    }
                                    String str8 = str2;
                                    int i44 = zzd5;
                                    zzae zzaeVar4 = zzaeVar2;
                                    i14 = i38;
                                    byte[] bArr4 = null;
                                    ByteBuffer byteBuffer = null;
                                    int i45 = -1;
                                    int i46 = -1;
                                    String str9 = null;
                                    float f3 = 1.0f;
                                    zzaiq zzaiqVar = null;
                                    boolean z11 = false;
                                    int i47 = 8;
                                    List list = null;
                                    int i48 = -1;
                                    int i49 = 8;
                                    int i50 = -1;
                                    while (true) {
                                        if (i44 - zzd4 >= zzg10) {
                                            zzaisVar2 = zzaisVar4;
                                            bArr = bArr4;
                                            break;
                                        }
                                        zzfpVar.zzK(i44);
                                        int zzd6 = zzfpVar.zzd();
                                        int zzg12 = zzfpVar.zzg();
                                        if (zzg12 == 0) {
                                            bArr = bArr4;
                                            if (zzfpVar.zzd() - zzd4 == zzg10) {
                                                zzaisVar2 = zzaisVar4;
                                                break;
                                            }
                                            i17 = 0;
                                        } else {
                                            bArr = bArr4;
                                            i17 = zzg12;
                                        }
                                        if (i17 > 0) {
                                            i18 = zzg10;
                                            i19 = zzd4;
                                            z4 = true;
                                        } else {
                                            i18 = zzg10;
                                            i19 = zzd4;
                                            z4 = false;
                                        }
                                        int i51 = zzq3;
                                        float f4 = f3;
                                        zzacy.zzb(z4, new ObfuscatedString(new long[]{8997406803792298194L, 1626715984816930670L, -4873992868591650941L, -6711193990021214080L, -8233720944897874710L}).toString());
                                        int zzg13 = zzfpVar.zzg();
                                        if (zzg13 == 1635148611) {
                                            int i52 = zzd6 + 8;
                                            zzacy.zzb(str8 == null, null);
                                            zzfpVar.zzK(i52);
                                            zzabz zza5 = zzabz.zza(zzfpVar);
                                            List list2 = zza5.zza;
                                            zzaisVar4.zzc = zza5.zzb;
                                            if (z11) {
                                                f2 = f4;
                                                z10 = true;
                                            } else {
                                                f2 = zza5.zzj;
                                                z10 = false;
                                            }
                                            String str10 = zza5.zzk;
                                            int i53 = zza5.zzg;
                                            int i54 = zza5.zzh;
                                            int i55 = zza5.zzi;
                                            int i56 = zza5.zze;
                                            int i57 = zza5.zzf;
                                            boolean z12 = z10;
                                            zzaisVar3 = zzaisVar4;
                                            i20 = zzq2;
                                            str8 = new ObfuscatedString(new long[]{-8630461756730370373L, -9180768884502272147L, 5401780719416859597L}).toString();
                                            i21 = i42;
                                            str3 = str10;
                                            i46 = i53;
                                            i50 = i54;
                                            f4 = f2;
                                            i45 = i55;
                                            i49 = i57;
                                            z11 = z12;
                                            list = list2;
                                            i47 = i56;
                                        } else {
                                            if (zzg13 != 1752589123) {
                                                if (zzg13 != 1685480259 && zzg13 != 1685485123) {
                                                    if (zzg13 != 1987076931) {
                                                        if (zzg13 != 1635135811) {
                                                            if (zzg13 != 1668050025) {
                                                                if (zzg13 != 1835295606) {
                                                                    zzaisVar3 = zzaisVar4;
                                                                    i20 = zzq2;
                                                                    i21 = i42;
                                                                    str3 = str9;
                                                                    if (zzg13 != 1681012275) {
                                                                        if (zzg13 != 1702061171) {
                                                                            if (zzg13 != 1885434736) {
                                                                                if (zzg13 == 1937126244) {
                                                                                    int i58 = zzd6 + 8;
                                                                                    while (i58 - zzd6 < i17) {
                                                                                        zzfpVar.zzK(i58);
                                                                                        int zzg14 = zzfpVar.zzg() + i58;
                                                                                        if (zzfpVar.zzg() == 1886547818) {
                                                                                            bArr = Arrays.copyOfRange(zzfpVar.zzM(), i58, zzg14);
                                                                                        } else {
                                                                                            i58 = zzg14;
                                                                                        }
                                                                                    }
                                                                                    bArr = null;
                                                                                } else if (zzg13 == 1936995172) {
                                                                                    int zzm = zzfpVar.zzm();
                                                                                    zzfpVar.zzL(3);
                                                                                    if (zzm == 0) {
                                                                                        int zzm2 = zzfpVar.zzm();
                                                                                        if (zzm2 == 0) {
                                                                                            i48 = 0;
                                                                                        } else if (zzm2 == 1) {
                                                                                            i48 = 1;
                                                                                        } else if (zzm2 == 2) {
                                                                                            i48 = 2;
                                                                                        } else if (zzm2 == 3) {
                                                                                            i48 = 3;
                                                                                        }
                                                                                    }
                                                                                } else if (zzg13 == 1668246642) {
                                                                                    if (i46 == -1) {
                                                                                        if (i45 == -1) {
                                                                                            int zzg15 = zzfpVar.zzg();
                                                                                            if (zzg15 != 1852009592 && zzg15 != 1852009571) {
                                                                                                zzff.zzf(new ObfuscatedString(new long[]{-656787487023194791L, 6986089265321757834L, 5565288605867195885L}).toString(), new ObfuscatedString(new long[]{-2304873901749802218L, 4000698408991373017L, 2937836912423370580L, 3688632619235570143L}).toString().concat(zzaio.zzf(zzg15)));
                                                                                                i45 = -1;
                                                                                                i46 = -1;
                                                                                                break;
                                                                                            }
                                                                                            int zzq4 = zzfpVar.zzq();
                                                                                            int zzq5 = zzfpVar.zzq();
                                                                                            zzfpVar.zzL(2);
                                                                                            if (i17 == 19) {
                                                                                                if ((zzfpVar.zzm() & 128) != 0) {
                                                                                                    i17 = 19;
                                                                                                    z5 = true;
                                                                                                    i46 = zzt.zza(zzq4);
                                                                                                    int i59 = true == z5 ? 2 : 1;
                                                                                                    i45 = zzt.zzb(zzq5);
                                                                                                    i50 = i59;
                                                                                                } else {
                                                                                                    i17 = 19;
                                                                                                }
                                                                                            }
                                                                                            z5 = false;
                                                                                            i46 = zzt.zza(zzq4);
                                                                                            if (true == z5) {
                                                                                            }
                                                                                            i45 = zzt.zzb(zzq5);
                                                                                            i50 = i59;
                                                                                        } else {
                                                                                            i46 = -1;
                                                                                        }
                                                                                    }
                                                                                }
                                                                                break;
                                                                                break;
                                                                            }
                                                                            zzfpVar.zzK(zzd6 + 8);
                                                                            f4 = zzfpVar.zzp() / zzfpVar.zzp();
                                                                            z11 = true;
                                                                        } else {
                                                                            zzacy.zzb(str8 == null, null);
                                                                            zzaiq zzj = zzj(zzfpVar, zzd6);
                                                                            str4 = zzj.zza;
                                                                            bArr2 = zzj.zzb;
                                                                            if (bArr2 != null) {
                                                                                zzaiqVar = zzj;
                                                                                str8 = str4;
                                                                                list = zzgaa.zzm(bArr2);
                                                                            } else {
                                                                                zzaiqVar = zzj;
                                                                                str8 = str4;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        zzacy.zzb(str8 == null, null);
                                                                        str8 = new ObfuscatedString(new long[]{1058976325146917634L, 1449235570280240087L, -4084667886692800699L}).toString();
                                                                    }
                                                                } else {
                                                                    if (byteBuffer == null) {
                                                                        byteBuffer = zzl();
                                                                    }
                                                                    short zzD = zzfpVar.zzD();
                                                                    short zzD2 = zzfpVar.zzD();
                                                                    short zzD3 = zzfpVar.zzD();
                                                                    short zzD4 = zzfpVar.zzD();
                                                                    short zzD5 = zzfpVar.zzD();
                                                                    i21 = i42;
                                                                    short zzD6 = zzfpVar.zzD();
                                                                    zzaisVar3 = zzaisVar4;
                                                                    short zzD7 = zzfpVar.zzD();
                                                                    i20 = zzq2;
                                                                    short zzD8 = zzfpVar.zzD();
                                                                    long zzu3 = zzfpVar.zzu();
                                                                    long zzu4 = zzfpVar.zzu();
                                                                    str3 = str9;
                                                                    byteBuffer.position(1);
                                                                    byteBuffer.putShort(zzD5);
                                                                    byteBuffer.putShort(zzD6);
                                                                    byteBuffer.putShort(zzD);
                                                                    byteBuffer.putShort(zzD2);
                                                                    byteBuffer.putShort(zzD3);
                                                                    byteBuffer.putShort(zzD4);
                                                                    byteBuffer.putShort(zzD7);
                                                                    byteBuffer.putShort(zzD8);
                                                                    byteBuffer.putShort((short) (zzu3 / WorkRequest.MIN_BACKOFF_MILLIS));
                                                                    byteBuffer.putShort((short) (zzu4 / WorkRequest.MIN_BACKOFF_MILLIS));
                                                                }
                                                                break;
                                                                break;
                                                            }
                                                            if (byteBuffer == null) {
                                                                byteBuffer = zzl();
                                                            }
                                                            byteBuffer.position(21);
                                                            byteBuffer.putShort(zzfpVar.zzD());
                                                            byteBuffer.putShort(zzfpVar.zzD());
                                                            zzaisVar3 = zzaisVar4;
                                                            i20 = zzq2;
                                                            i21 = i42;
                                                            str3 = str9;
                                                        } else {
                                                            zzfpVar.zzK(zzd6 + 8);
                                                            zzr zzrVar = new zzr();
                                                            byte[] zzM = zzfpVar.zzM();
                                                            zzfo zzfoVar = new zzfo(zzM, zzM.length);
                                                            zzfoVar.zzk(zzfpVar.zzd() * 8);
                                                            zzfoVar.zzn(1);
                                                            int zzd7 = zzfoVar.zzd(3);
                                                            zzfoVar.zzm(6);
                                                            boolean zzo = zzfoVar.zzo();
                                                            boolean zzo2 = zzfoVar.zzo();
                                                            if (zzd7 == 2) {
                                                                if (zzo) {
                                                                    int i60 = true != zzo2 ? 10 : 12;
                                                                    zzrVar.zzf(i60);
                                                                    zzrVar.zza(i60);
                                                                    zzfoVar.zzm(13);
                                                                    zzfoVar.zzl();
                                                                    zzd = zzfoVar.zzd(4);
                                                                    if (zzd == 1) {
                                                                        zzff.zze(new ObfuscatedString(new long[]{-7863904905052821275L, -5652994470523940111L, 4532174660189101704L}).toString(), AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{3418951626861984421L, -2072036366009654885L, -6235786609167406525L, 805360824937984551L}), new StringBuilder(), zzd));
                                                                        zzg2 = zzrVar.zzg();
                                                                    } else if (zzfoVar.zzo()) {
                                                                        zzff.zze(new ObfuscatedString(new long[]{6684723518018122627L, 9080344567057536612L, -7733889468093653516L}).toString(), new ObfuscatedString(new long[]{-2318165111661021862L, 7394363475837358908L, 822818180775422708L, -2413989206904976612L, -5985601582948993834L}).toString());
                                                                        zzg2 = zzrVar.zzg();
                                                                    } else {
                                                                        boolean zzo3 = zzfoVar.zzo();
                                                                        zzfoVar.zzl();
                                                                        if (zzo3 && zzfoVar.zzd(8) > 127) {
                                                                            zzff.zze(new ObfuscatedString(new long[]{-177990949082221028L, 2264757411935507770L, 1132054174823439177L}).toString(), new ObfuscatedString(new long[]{434533951232562802L, 5738345778152929814L, 4075068754825603161L, 3588019943831538320L}).toString());
                                                                            zzg2 = zzrVar.zzg();
                                                                        } else {
                                                                            int zzd8 = zzfoVar.zzd(3);
                                                                            zzfoVar.zzl();
                                                                            if (zzfoVar.zzo()) {
                                                                                zzff.zze(new ObfuscatedString(new long[]{3608133351783629164L, -6764593010998598266L, 5126505204214627719L}).toString(), new ObfuscatedString(new long[]{-1479124806431037947L, -1030017763243170152L, -7469674929784043636L, 6393008749259779584L, -8493629927956311608L, 8531529681686804703L}).toString());
                                                                                zzg2 = zzrVar.zzg();
                                                                            } else if (zzfoVar.zzo()) {
                                                                                zzff.zze(new ObfuscatedString(new long[]{-2634430816462376072L, 9087080092705329310L, -3599066523752281985L}).toString(), new ObfuscatedString(new long[]{-6427828892609204315L, -8647771035617193446L, 698824745594378556L, -5952515002473502212L, 1939746066178566917L, 3206542401174754021L}).toString());
                                                                                zzg2 = zzrVar.zzg();
                                                                            } else if (zzfoVar.zzo()) {
                                                                                zzff.zze(new ObfuscatedString(new long[]{5550348965212224115L, 1145678294504278744L, 4819362707378261357L}).toString(), new ObfuscatedString(new long[]{-6366997012244173526L, 5512206736994257076L, -4678786653450380449L, 5717602471721109882L, 6258576633031195110L, -5650182071599483081L, -2762429359976986083L}).toString());
                                                                                zzg2 = zzrVar.zzg();
                                                                            } else {
                                                                                int i61 = 5;
                                                                                int zzd9 = zzfoVar.zzd(5);
                                                                                int i62 = 0;
                                                                                while (i62 <= zzd9) {
                                                                                    zzfoVar.zzm(12);
                                                                                    if (zzfoVar.zzd(i61) > 7) {
                                                                                        zzfoVar.zzl();
                                                                                    }
                                                                                    i62++;
                                                                                    i61 = 5;
                                                                                }
                                                                                int zzd10 = zzfoVar.zzd(4);
                                                                                int zzd11 = zzfoVar.zzd(4);
                                                                                zzfoVar.zzm(zzd10 + 1);
                                                                                zzfoVar.zzm(zzd11 + 1);
                                                                                if (zzfoVar.zzo()) {
                                                                                    zzfoVar.zzm(7);
                                                                                }
                                                                                zzfoVar.zzm(7);
                                                                                boolean zzo4 = zzfoVar.zzo();
                                                                                if (zzo4) {
                                                                                    zzfoVar.zzm(2);
                                                                                }
                                                                                int i63 = zzfoVar.zzo() ? 1 : 1;
                                                                                if (!zzfoVar.zzo()) {
                                                                                    zzfoVar.zzm(i63);
                                                                                }
                                                                                if (zzo4) {
                                                                                    i22 = 3;
                                                                                    zzfoVar.zzm(3);
                                                                                } else {
                                                                                    i22 = 3;
                                                                                }
                                                                                zzfoVar.zzm(i22);
                                                                                boolean zzo5 = zzfoVar.zzo();
                                                                                if (zzd8 == 2) {
                                                                                    if (zzo5) {
                                                                                        zzfoVar.zzl();
                                                                                    }
                                                                                }
                                                                                if (zzfoVar.zzo()) {
                                                                                    z6 = true;
                                                                                    if (zzfoVar.zzo()) {
                                                                                        int zzd12 = zzfoVar.zzd(8);
                                                                                        int zzd13 = zzfoVar.zzd(8);
                                                                                        int zzd14 = zzfoVar.zzd(8);
                                                                                        if (z6) {
                                                                                            i23 = 1;
                                                                                        } else {
                                                                                            i23 = 1;
                                                                                            if (zzd12 == 1) {
                                                                                                i25 = 13;
                                                                                                if (zzd13 != 13) {
                                                                                                    i25 = zzd13;
                                                                                                } else if (zzd14 == 0) {
                                                                                                    zzd2 = 1;
                                                                                                    i24 = 1;
                                                                                                    zzrVar.zzc(zzt.zza(i24));
                                                                                                    zzrVar.zzb(zzd2 == i23 ? 1 : 2);
                                                                                                    zzrVar.zzd(zzt.zzb(i25));
                                                                                                }
                                                                                                i24 = 1;
                                                                                                zzd2 = zzfoVar.zzd(i23);
                                                                                                zzrVar.zzc(zzt.zza(i24));
                                                                                                zzrVar.zzb(zzd2 == i23 ? 1 : 2);
                                                                                                zzrVar.zzd(zzt.zzb(i25));
                                                                                            }
                                                                                        }
                                                                                        i24 = zzd12;
                                                                                        i25 = zzd13;
                                                                                        zzd2 = zzfoVar.zzd(i23);
                                                                                        zzrVar.zzc(zzt.zza(i24));
                                                                                        zzrVar.zzb(zzd2 == i23 ? 1 : 2);
                                                                                        zzrVar.zzd(zzt.zzb(i25));
                                                                                    }
                                                                                    zzg2 = zzrVar.zzg();
                                                                                    i45 = zzg2.zzf;
                                                                                    int i64 = zzg2.zze;
                                                                                    i46 = zzg2.zzd;
                                                                                    int i65 = zzg2.zzi;
                                                                                    zzaisVar3 = zzaisVar4;
                                                                                    i20 = zzq2;
                                                                                    i47 = zzg2.zzh;
                                                                                    i21 = i42;
                                                                                    i50 = i64;
                                                                                    str3 = str9;
                                                                                    i49 = i65;
                                                                                    str8 = new ObfuscatedString(new long[]{4841829912971297621L, 229835373374366798L, -395689416672579674L}).toString();
                                                                                }
                                                                                z6 = false;
                                                                                if (zzfoVar.zzo()) {
                                                                                }
                                                                                zzg2 = zzrVar.zzg();
                                                                                i45 = zzg2.zzf;
                                                                                int i642 = zzg2.zze;
                                                                                i46 = zzg2.zzd;
                                                                                int i652 = zzg2.zzi;
                                                                                zzaisVar3 = zzaisVar4;
                                                                                i20 = zzq2;
                                                                                i47 = zzg2.zzh;
                                                                                i21 = i42;
                                                                                i50 = i642;
                                                                                str3 = str9;
                                                                                i49 = i652;
                                                                                str8 = new ObfuscatedString(new long[]{4841829912971297621L, 229835373374366798L, -395689416672579674L}).toString();
                                                                            }
                                                                        }
                                                                    }
                                                                    i45 = zzg2.zzf;
                                                                    int i6422 = zzg2.zze;
                                                                    i46 = zzg2.zzd;
                                                                    int i6522 = zzg2.zzi;
                                                                    zzaisVar3 = zzaisVar4;
                                                                    i20 = zzq2;
                                                                    i47 = zzg2.zzh;
                                                                    i21 = i42;
                                                                    i50 = i6422;
                                                                    str3 = str9;
                                                                    i49 = i6522;
                                                                    str8 = new ObfuscatedString(new long[]{4841829912971297621L, 229835373374366798L, -395689416672579674L}).toString();
                                                                } else {
                                                                    zzo = false;
                                                                    zzd7 = 2;
                                                                }
                                                            }
                                                            if (zzd7 <= 2) {
                                                                int i66 = true != zzo ? 8 : 10;
                                                                zzrVar.zzf(i66);
                                                                zzrVar.zza(i66);
                                                            }
                                                            zzfoVar.zzm(13);
                                                            zzfoVar.zzl();
                                                            zzd = zzfoVar.zzd(4);
                                                            if (zzd == 1) {
                                                            }
                                                            i45 = zzg2.zzf;
                                                            int i64222 = zzg2.zze;
                                                            i46 = zzg2.zzd;
                                                            int i65222 = zzg2.zzi;
                                                            zzaisVar3 = zzaisVar4;
                                                            i20 = zzq2;
                                                            i47 = zzg2.zzh;
                                                            i21 = i42;
                                                            i50 = i64222;
                                                            str3 = str9;
                                                            i49 = i65222;
                                                            str8 = new ObfuscatedString(new long[]{4841829912971297621L, 229835373374366798L, -395689416672579674L}).toString();
                                                        }
                                                    } else {
                                                        if (str8 == null) {
                                                            str5 = null;
                                                            z7 = true;
                                                        } else {
                                                            str5 = null;
                                                            z7 = false;
                                                        }
                                                        zzacy.zzb(z7, str5);
                                                        zzfpVar.zzK(zzd6 + 12);
                                                        zzfpVar.zzL(2);
                                                        int zzm3 = zzfpVar.zzm();
                                                        int i67 = zzm3 >> 4;
                                                        int i68 = zzm3 & 1;
                                                        int zzm4 = zzfpVar.zzm();
                                                        int zzm5 = zzfpVar.zzm();
                                                        i46 = zzt.zza(zzm4);
                                                        int i69 = 1 != i68 ? 2 : 1;
                                                        i45 = zzt.zzb(zzm5);
                                                        zzaisVar3 = zzaisVar4;
                                                        i20 = zzq2;
                                                        i50 = i69;
                                                        i21 = i42;
                                                        i47 = i67;
                                                        i49 = i47;
                                                        str3 = str9;
                                                        str8 = (i42 == 1987063864 ? new ObfuscatedString(new long[]{-4930011069191533285L, 7283530533171648012L, -1513518152501929062L, -3545107686282191468L}) : new ObfuscatedString(new long[]{8323904573583463454L, -3411368167756468680L, 4451627605318832072L, -4801181625534015542L})).toString();
                                                    }
                                                } else {
                                                    zzaisVar3 = zzaisVar4;
                                                    i20 = zzq2;
                                                    i21 = i42;
                                                    str3 = str9;
                                                    zzacq zza6 = zzacq.zza(zzfpVar);
                                                    if (zza6 != null) {
                                                        str3 = zza6.zza;
                                                        str8 = new ObfuscatedString(new long[]{-5364219225060882291L, -537641539344289437L, -1901035382616558655L, -702187984623603098L}).toString();
                                                    }
                                                }
                                            } else {
                                                int i70 = zzd6 + 8;
                                                if (str8 == null) {
                                                    str6 = null;
                                                    z8 = true;
                                                } else {
                                                    str6 = null;
                                                    z8 = false;
                                                }
                                                zzacy.zzb(z8, str6);
                                                zzfpVar.zzK(i70);
                                                zzadl zza7 = zzadl.zza(zzfpVar);
                                                List list3 = zza7.zza;
                                                zzaisVar4.zzc = zza7.zzb;
                                                if (z11) {
                                                    f = f4;
                                                    z9 = true;
                                                } else {
                                                    f = zza7.zzh;
                                                    z9 = false;
                                                }
                                                String str11 = zza7.zzi;
                                                int i71 = zza7.zze;
                                                int i72 = zza7.zzf;
                                                int i73 = zza7.zzg;
                                                int i74 = zza7.zzc;
                                                int i75 = zza7.zzd;
                                                boolean z13 = z9;
                                                zzaisVar3 = zzaisVar4;
                                                i20 = zzq2;
                                                str8 = new ObfuscatedString(new long[]{-6668082802919214334L, -6922515699218774134L, 2188676573530701123L}).toString();
                                                i21 = i42;
                                                str3 = str11;
                                                i46 = i71;
                                                i50 = i72;
                                                i45 = i73;
                                                f4 = f;
                                                i49 = i75;
                                                z11 = z13;
                                                list = list3;
                                                i47 = i74;
                                            }
                                            i44 += i17;
                                            zzg10 = i18;
                                            bArr4 = bArr;
                                            zzd4 = i19;
                                            f3 = f4;
                                            zzq3 = i51;
                                            i42 = i21;
                                            zzaisVar4 = zzaisVar3;
                                            zzq2 = i20;
                                            str9 = str3;
                                        }
                                        i44 += i17;
                                        zzg10 = i18;
                                        bArr4 = bArr;
                                        zzd4 = i19;
                                        f3 = f4;
                                        zzq3 = i51;
                                        i42 = i21;
                                        zzaisVar4 = zzaisVar3;
                                        zzq2 = i20;
                                        str9 = str3;
                                    }
                                    int i76 = zzq2;
                                    int i77 = zzq3;
                                    String str12 = str9;
                                    i13 = zzg10;
                                    float f5 = f3;
                                    i12 = zzd4;
                                    if (str8 == null) {
                                        i15 = i10;
                                        i16 = i8;
                                        zzaisVar = zzaisVar2;
                                    } else {
                                        zzak zzakVar5 = new zzak();
                                        i16 = i8;
                                        zzakVar5.zzJ(i16);
                                        zzakVar5.zzW(str8);
                                        zzakVar5.zzz(str12);
                                        zzakVar5.zzab(i76);
                                        zzakVar5.zzI(i77);
                                        zzakVar5.zzS(f5);
                                        i15 = i10;
                                        zzakVar5.zzV(i15);
                                        zzakVar5.zzT(bArr);
                                        zzakVar5.zzZ(i48);
                                        zzakVar5.zzL(list);
                                        zzakVar5.zzE(zzaeVar4);
                                        zzr zzrVar2 = new zzr();
                                        zzrVar2.zzc(i46);
                                        zzrVar2.zzb(i50);
                                        zzrVar2.zzd(i45);
                                        zzrVar2.zze(byteBuffer != null ? byteBuffer.array() : null);
                                        zzrVar2.zzf(i47);
                                        zzrVar2.zza(i49);
                                        zzakVar5.zzA(zzrVar2.zzg());
                                        if (zzaiqVar != null) {
                                            j4 = zzaiqVar.zzc;
                                            zzakVar5.zzx(zzgcu.zzc(j4));
                                            j5 = zzaiqVar.zzd;
                                            zzakVar5.zzR(zzgcu.zzc(j5));
                                        }
                                        zzaisVar = zzaisVar2;
                                        zzaisVar.zzb = zzakVar5.zzac();
                                    }
                                    zzfpVar.zzK(i12 + i13);
                                    zzaeVar3 = zzaeVar;
                                    i2 = i16;
                                    zzaisVar4 = zzaisVar;
                                    i38 = i14 + 1;
                                    zzfpVar4 = zzfpVar;
                                    i32 = i7;
                                    zzaivVar2 = zzaivVar;
                                    i33 = i9;
                                    zzg9 = i39;
                                    zzaimVar5 = zzaimVar3;
                                    arrayList4 = arrayList2;
                                    create2 = pair;
                                    i3 = i15;
                                    str7 = str;
                                }
                                zzais zzaisVar5 = zzaisVar4;
                                zzaim zzaimVar6 = zzaimVar5;
                                int i78 = i33;
                                i4 = i32;
                                arrayList = arrayList4;
                                Pair pair2 = create2;
                                zzaiv zzaivVar3 = zzaivVar2;
                                if (z) {
                                    zzaimVar5 = zzaimVar6;
                                } else {
                                    zzaimVar5 = zzaimVar6;
                                    zzaim zza8 = zzaimVar5.zza(1701082227);
                                    if (zza8 != null) {
                                        zzain zzb6 = zza8.zzb(1701606260);
                                        if (zzb6 == null) {
                                            create = null;
                                        } else {
                                            zzfp zzfpVar5 = zzb6.zza;
                                            zzfpVar5.zzK(8);
                                            int zze3 = zzaio.zze(zzfpVar5.zzg());
                                            int zzp = zzfpVar5.zzp();
                                            long[] jArr3 = new long[zzp];
                                            long[] jArr4 = new long[zzp];
                                            int i79 = 0;
                                            while (i79 < zzp) {
                                                jArr3[i79] = zze3 == 1 ? zzfpVar5.zzv() : zzfpVar5.zzu();
                                                if (zze3 == 1) {
                                                    zzg = zzfpVar5.zzt();
                                                    i6 = zze3;
                                                } else {
                                                    i6 = zze3;
                                                    zzg = zzfpVar5.zzg();
                                                }
                                                jArr4[i79] = zzg;
                                                if (zzfpVar5.zzD() == 1) {
                                                    zzfpVar5.zzL(2);
                                                    i79++;
                                                    zze3 = i6;
                                                } else {
                                                    throw new IllegalArgumentException(new ObfuscatedString(new long[]{-2711770279125715256L, -4461265551787299053L, 4580498184209108774L, -3998810971406813446L}).toString());
                                                }
                                            }
                                            create = Pair.create(jArr3, jArr4);
                                        }
                                        if (create != null) {
                                            long[] jArr5 = (long[]) create.first;
                                            jArr2 = (long[]) create.second;
                                            jArr = jArr5;
                                            if (zzaisVar5.zzb == null) {
                                                zzfwsVar2 = zzfwsVar;
                                                zzajmVar = null;
                                            } else {
                                                i5 = zzaivVar3.zza;
                                                zzajmVar = new zzajm(i5, i78, ((Long) pair2.first).longValue(), j8, zzs, zzaisVar5.zzb, zzaisVar5.zzd, zzaisVar5.zza, zzaisVar5.zzc, jArr, jArr2);
                                                zzfwsVar2 = zzfwsVar;
                                            }
                                        }
                                        jArr = null;
                                        jArr2 = null;
                                        if (zzaisVar5.zzb == null) {
                                        }
                                    }
                                }
                                jArr = null;
                                jArr2 = null;
                                if (zzaisVar5.zzb == null) {
                                }
                            } else {
                                throw zzcc.zza(new ObfuscatedString(new long[]{4253159556696131675L, -1858363764371845608L, -3112841925679314812L, -244150877411153362L, 7351549402688419207L, -6247385461403422041L, -1790862259867099473L, 3498696784899782839L, -3934534771124507741L}).toString(), null);
                            }
                        } else {
                            zzg5 = 0;
                            zzg6 = 65536;
                            zzg7 = SupportMenu.CATEGORY_MASK;
                        }
                    }
                    if (zzg5 != 0) {
                        i36 = zzg7;
                    } else if (zzg6 == -65536) {
                        if (zzg7 != 65536) {
                            i36 = zzg7;
                        } else if (zzg8 == 0) {
                            i = 270;
                            zzaiv zzaivVar22 = new zzaiv(zzg4, j2, i);
                            if (j == -9223372036854775807L) {
                            }
                            long j82 = zzc(zzb2.zza).zzc;
                            if (j3 == -9223372036854775807L) {
                            }
                            zzaim zza32 = zza2.zza(1835626086);
                            zza32.getClass();
                            zzaim zza42 = zza32.zza(1937007212);
                            zza42.getClass();
                            zzain zzb52 = zza2.zzb(1835296868);
                            zzb52.getClass();
                            zzfp zzfpVar32 = zzb52.zza;
                            zzfpVar32.zzK(8);
                            int zze22 = zzaio.zze(zzfpVar32.zzg());
                            zzfpVar32.zzL(zze22 == 0 ? 8 : 16);
                            if (zze22 == 0) {
                            }
                            long zzu22 = zzfpVar32.zzu();
                            zzfpVar32.zzL(i37);
                            int zzq6 = zzfpVar32.zzq();
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append((char) (((zzq6 >> 10) & 31) + 96));
                            sb2.append((char) (((zzq6 >> 5) & 31) + 96));
                            sb2.append((char) ((zzq6 & 31) + 96));
                            Pair create22 = Pair.create(Long.valueOf(zzu22), sb2.toString());
                            zzb = zza42.zzb(1937011556);
                            if (zzb != null) {
                            }
                        }
                        zzg5 = 0;
                        zzg6 = SupportMenu.CATEGORY_MASK;
                    } else {
                        i36 = zzg7;
                        zzg5 = 0;
                    }
                    i = (zzg5 == -65536 && zzg6 == 0 && i36 == 0 && zzg8 == -65536) ? 180 : 0;
                    zzaiv zzaivVar222 = new zzaiv(zzg4, j2, i);
                    if (j == -9223372036854775807L) {
                    }
                    long j822 = zzc(zzb2.zza).zzc;
                    if (j3 == -9223372036854775807L) {
                    }
                    zzaim zza322 = zza2.zza(1835626086);
                    zza322.getClass();
                    zzaim zza422 = zza322.zza(1937007212);
                    zza422.getClass();
                    zzain zzb522 = zza2.zzb(1835296868);
                    zzb522.getClass();
                    zzfp zzfpVar322 = zzb522.zza;
                    zzfpVar322.zzK(8);
                    int zze222 = zzaio.zze(zzfpVar322.zzg());
                    zzfpVar322.zzL(zze222 == 0 ? 8 : 16);
                    if (zze222 == 0) {
                    }
                    long zzu222 = zzfpVar322.zzu();
                    zzfpVar322.zzL(i37);
                    int zzq62 = zzfpVar322.zzq();
                    StringBuilder sb22 = new StringBuilder();
                    sb22.append((char) (((zzq62 >> 10) & 31) + 96));
                    sb22.append((char) (((zzq62 >> 5) & 31) + 96));
                    sb22.append((char) ((zzq62 & 31) + 96));
                    Pair create222 = Pair.create(Long.valueOf(zzu222), sb22.toString());
                    zzb = zza422.zzb(1937011556);
                    if (zzb != null) {
                    }
                }
                zzajm zzajmVar2 = (zzajm) zzfwsVar2.apply(zzajmVar);
                if (zzajmVar2 != null) {
                    zzaim zza9 = zzaimVar5.zza(1835297121);
                    zza9.getClass();
                    zzaim zza10 = zza9.zza(1835626086);
                    zza10.getClass();
                    zzaim zza11 = zza10.zza(1937007212);
                    zza11.getClass();
                    zzajp zzk = zzk(zzajmVar2, zza11, zzadkVar);
                    arrayList3 = arrayList;
                    arrayList3.add(zzk);
                } else {
                    arrayList3 = arrayList;
                }
            }
            zzaimVar4 = zzaimVar;
            zzaeVar3 = zzaeVar;
            arrayList4 = arrayList3;
            i32 = i4 + 1;
            i27 = 1835297121;
            i31 = 4;
            i30 = 1;
            i28 = 16;
            i29 = 8;
        }
        return arrayList4;
    }

    public static void zze(zzfp zzfpVar) {
        int zzd = zzfpVar.zzd();
        zzfpVar.zzL(4);
        if (zzfpVar.zzg() != 1751411826) {
            zzd += 4;
        }
        zzfpVar.zzK(zzd);
    }

    private static int zzf(zzfp zzfpVar) {
        int zzm = zzfpVar.zzm();
        int i = zzm & 127;
        while ((zzm & 128) == 128) {
            zzm = zzfpVar.zzm();
            i = (i << 7) | (zzm & 127);
        }
        return i;
    }

    private static int zzg(zzfp zzfpVar) {
        zzfpVar.zzK(16);
        return zzfpVar.zzg();
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x017f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0180 A[SYNTHETIC] */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static Pair zzh(zzfp zzfpVar, int i, int i2) {
        boolean z;
        boolean z2;
        boolean z3;
        Integer num;
        zzajn zzajnVar;
        Pair create;
        int i3;
        int i4;
        boolean z4;
        byte[] bArr;
        int i5 = 2;
        int zzd = zzfpVar.zzd();
        while (zzd - i < i2) {
            zzfpVar.zzK(zzd);
            int zzg = zzfpVar.zzg();
            boolean z5 = true;
            if (zzg > 0) {
                z = true;
            } else {
                z = false;
            }
            zzacy.zzb(z, new ObfuscatedString(new long[]{2935580701912537465L, -1878269185543890075L, -4412683767579754142L, 7671632228246946160L, -6090081196348562611L}).toString());
            if (zzfpVar.zzg() == 1936289382) {
                int i6 = zzd + 8;
                int i7 = -1;
                int i8 = 0;
                String str = null;
                Integer num2 = null;
                while (i6 - zzd < zzg) {
                    zzfpVar.zzK(i6);
                    int zzg2 = zzfpVar.zzg();
                    int zzg3 = zzfpVar.zzg();
                    if (zzg3 == 1718775137) {
                        num2 = Integer.valueOf(zzfpVar.zzg());
                    } else if (zzg3 == 1935894637) {
                        zzfpVar.zzL(4);
                        str = zzfpVar.zzA(4, zzfwq.zzc);
                    } else if (zzg3 == 1935894633) {
                        i7 = i6;
                        i8 = zzg2;
                    }
                    i6 += zzg2;
                }
                long[] jArr = new long[i5];
                // fill-array-data instruction
                jArr[0] = 7266103251529443677L;
                jArr[1] = -7780009114777105388L;
                if (!new ObfuscatedString(jArr).toString().equals(str)) {
                    long[] jArr2 = new long[i5];
                    // fill-array-data instruction
                    jArr2[0] = -4432400803074429389L;
                    jArr2[1] = -3508486449949394767L;
                    if (!new ObfuscatedString(jArr2).toString().equals(str)) {
                        long[] jArr3 = new long[i5];
                        // fill-array-data instruction
                        jArr3[0] = 6938607928346454188L;
                        jArr3[1] = -8064294995513184382L;
                        if (!new ObfuscatedString(jArr3).toString().equals(str)) {
                            long[] jArr4 = new long[i5];
                            // fill-array-data instruction
                            jArr4[0] = 2889638818954404790L;
                            jArr4[1] = 5046108975592383489L;
                            if (!new ObfuscatedString(jArr4).toString().equals(str)) {
                                create = null;
                                if (create == null) {
                                    return create;
                                }
                            }
                        }
                    }
                }
                if (num2 != null) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                zzacy.zzb(z2, new ObfuscatedString(new long[]{7662080149392038311L, -1634919493470826969L, -4094229115493106153L, -1640342691501302424L}).toString());
                if (i7 != -1) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                zzacy.zzb(z3, new ObfuscatedString(new long[]{-7798044212731406488L, 5189886145171991359L, -3278291610052710718L, 2256464715201046119L}).toString());
                int i9 = i7 + 8;
                while (true) {
                    if (i9 - i7 < i8) {
                        zzfpVar.zzK(i9);
                        int zzg4 = zzfpVar.zzg();
                        if (zzfpVar.zzg() == 1952804451) {
                            int zze = zzaio.zze(zzfpVar.zzg());
                            zzfpVar.zzL(1);
                            if (zze == 0) {
                                zzfpVar.zzL(1);
                                i3 = 0;
                                i4 = 0;
                            } else {
                                int zzm = zzfpVar.zzm();
                                i3 = (zzm & 240) >> 4;
                                i4 = zzm & 15;
                            }
                            if (zzfpVar.zzm() == 1) {
                                z4 = true;
                            } else {
                                z4 = false;
                            }
                            int zzm2 = zzfpVar.zzm();
                            byte[] bArr2 = new byte[16];
                            zzfpVar.zzG(bArr2, 0, 16);
                            if (z4 && zzm2 == 0) {
                                int zzm3 = zzfpVar.zzm();
                                byte[] bArr3 = new byte[zzm3];
                                zzfpVar.zzG(bArr3, 0, zzm3);
                                bArr = bArr3;
                            } else {
                                bArr = null;
                            }
                            num = num2;
                            zzajnVar = new zzajn(z4, str, zzm2, bArr2, i3, i4, bArr);
                        } else {
                            i9 += zzg4;
                        }
                    } else {
                        num = num2;
                        zzajnVar = null;
                        break;
                    }
                }
                if (zzajnVar == null) {
                    z5 = false;
                }
                zzacy.zzb(z5, new ObfuscatedString(new long[]{-8984786156737486760L, 4205918644432863472L, -8246165003775729790L, 9177263260796512918L}).toString());
                int i10 = zzfy.zza;
                create = Pair.create(num, zzajnVar);
                if (create == null) {
                }
            }
            zzd += zzg;
            i5 = 2;
        }
        return null;
    }

    @Nullable
    private static zzby zzi(zzfp zzfpVar) {
        short zzD = zzfpVar.zzD();
        zzfpVar.zzL(2);
        String zzA = zzfpVar.zzA(zzD, zzfwq.zzc);
        int max = Math.max(zzA.lastIndexOf(43), zzA.lastIndexOf(45));
        try {
            return new zzby(-9223372036854775807L, new zzgf(Float.parseFloat(zzA.substring(0, max)), Float.parseFloat(zzA.substring(max, zzA.length() - 1))));
        } catch (IndexOutOfBoundsException | NumberFormatException unused) {
            return null;
        }
    }

    private static zzaiq zzj(zzfp zzfpVar, int i) {
        long j;
        long j2;
        zzfpVar.zzK(i + 12);
        zzfpVar.zzL(1);
        zzf(zzfpVar);
        zzfpVar.zzL(2);
        int zzm = zzfpVar.zzm();
        if ((zzm & 128) != 0) {
            zzfpVar.zzL(2);
        }
        if ((zzm & 64) != 0) {
            zzfpVar.zzL(zzfpVar.zzm());
        }
        if ((zzm & 32) != 0) {
            zzfpVar.zzL(2);
        }
        zzfpVar.zzL(1);
        zzf(zzfpVar);
        String zzd = zzcb.zzd(zzfpVar.zzm());
        if (!new ObfuscatedString(new long[]{284881241416010237L, -6802025140918009532L, -6433272552294800864L}).toString().equals(zzd) && !new ObfuscatedString(new long[]{-5316463894230678183L, -5637999703249101511L, 300711603876806407L}).toString().equals(zzd) && !new ObfuscatedString(new long[]{-4943889993406525335L, -1639371058613954012L, 4869037013879554625L}).toString().equals(zzd)) {
            zzfpVar.zzL(4);
            long zzu = zzfpVar.zzu();
            long zzu2 = zzfpVar.zzu();
            zzfpVar.zzL(1);
            int zzf = zzf(zzfpVar);
            byte[] bArr = new byte[zzf];
            zzfpVar.zzG(bArr, 0, zzf);
            if (zzu2 <= 0) {
                j = -1;
            } else {
                j = zzu2;
            }
            if (zzu > 0) {
                j2 = zzu;
            } else {
                j2 = -1;
            }
            return new zzaiq(zzd, bArr, j, j2);
        }
        return new zzaiq(zzd, null, -1L, -1L);
    }

    /* JADX WARN: Removed duplicated region for block: B:113:0x057a A[EDGE_INSN: B:113:0x057a->B:114:0x057a BREAK  A[LOOP:5: B:93:0x0515->B:109:0x0570], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0583  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0589  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x0590  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0599  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x059d  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x05ad  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x05a1  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x0594  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x058c  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x0585  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x0507  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x01b8  */
    /* JADX WARN: Removed duplicated region for block: B:215:0x029b A[ADDED_TO_REGION, LOOP:12: B:215:0x029b->B:218:0x02a5, LOOP_START, PHI: r28
      0x029b: PHI (r28v2 int) = (r28v1 int), (r28v3 int) binds: [B:214:0x0299, B:218:0x02a5] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:222:0x02af  */
    /* JADX WARN: Removed duplicated region for block: B:231:0x0386  */
    /* JADX WARN: Removed duplicated region for block: B:234:0x0396  */
    /* JADX WARN: Removed duplicated region for block: B:241:0x02ef  */
    /* JADX WARN: Removed duplicated region for block: B:246:0x0292 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x03e2  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x03f2  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x04ba  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0505  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x051a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static zzajp zzk(zzajm zzajmVar, zzaim zzaimVar, zzadk zzadkVar) {
        zzair zzaiuVar;
        boolean z;
        int i;
        int i2;
        int i3;
        int zza2;
        long[] jArr;
        int[] iArr;
        int i4;
        long j;
        int i5;
        int i6;
        long[] jArr2;
        boolean z2;
        zzajm zzajmVar2;
        boolean z3;
        int i7;
        int i8;
        int i9;
        int i10;
        int[] iArr2;
        long[] jArr3;
        int i11;
        int[] iArr3;
        long j2;
        int[] iArr4;
        int i12;
        int i13;
        long[] jArr4;
        long[] jArr5;
        long j3;
        int[] iArr5;
        int i14;
        zzair zzairVar;
        int i15;
        long[] jArr6;
        int[] iArr6;
        int i16;
        int length;
        long[] jArr7;
        int i17;
        long[] jArr8;
        int i18;
        boolean z4;
        int i19;
        long[] jArr9;
        int[] iArr7;
        int[] iArr8;
        int[] iArr9;
        long[] jArr10;
        long[] jArr11;
        int[] iArr10;
        int i20;
        int i21;
        int length2;
        zzain zzb = zzaimVar.zzb(1937011578);
        if (zzb != null) {
            zzaiuVar = new zzait(zzb, zzajmVar.zzf);
        } else {
            zzain zzb2 = zzaimVar.zzb(1937013298);
            if (zzb2 != null) {
                zzaiuVar = new zzaiu(zzb2);
            } else {
                throw zzcc.zza(new ObfuscatedString(new long[]{4394666900560536555L, -2897948189785271446L, 6304600990460954811L, 3246373636928351028L, 4439293334898160675L, -32276466956595021L, -7260332339160377840L}).toString(), null);
            }
        }
        int zzb3 = zzaiuVar.zzb();
        if (zzb3 == 0) {
            return new zzajp(zzajmVar, new long[0], new int[0], 0, new long[0], new int[0], 0L);
        }
        zzain zzb4 = zzaimVar.zzb(1937007471);
        if (zzb4 == null) {
            zzb4 = zzaimVar.zzb(1668232756);
            zzb4.getClass();
            z = true;
        } else {
            z = false;
        }
        zzain zzb5 = zzaimVar.zzb(1937011555);
        zzb5.getClass();
        zzain zzb6 = zzaimVar.zzb(1937011827);
        zzb6.getClass();
        zzain zzb7 = zzaimVar.zzb(1937011571);
        zzfp zzfpVar = zzb7 != null ? zzb7.zza : null;
        zzain zzb8 = zzaimVar.zzb(1668576371);
        zzfp zzfpVar2 = zzb8 != null ? zzb8.zza : null;
        zzfp zzfpVar3 = zzb6.zza;
        zzaip zzaipVar = new zzaip(zzb5.zza, zzb4.zza, z);
        zzfpVar3.zzK(12);
        int zzp = zzfpVar3.zzp() - 1;
        int zzp2 = zzfpVar3.zzp();
        int zzp3 = zzfpVar3.zzp();
        if (zzfpVar2 != null) {
            zzfpVar2.zzK(12);
            i = zzfpVar2.zzp();
        } else {
            i = 0;
        }
        if (zzfpVar != null) {
            zzfpVar.zzK(12);
            i2 = zzfpVar.zzp();
            if (i2 > 0) {
                i3 = zzfpVar.zzp() - 1;
                zza2 = zzaiuVar.zza();
                String str = zzajmVar.zzf.zzm;
                if (zza2 != -1 && ((new ObfuscatedString(new long[]{1345601759006676174L, -8390008689929190291L, 1709254694118770218L}).toString().equals(str) || new ObfuscatedString(new long[]{-4006601161959619185L, 7646628576981045960L, 4636212746004430487L}).toString().equals(str) || new ObfuscatedString(new long[]{8044595213896729278L, -5172158519896286515L, 9181092982954536528L}).toString().equals(str)) && zzp == 0)) {
                    if (i != 0 && i2 == 0) {
                        int i22 = zzaipVar.zza;
                        long[] jArr12 = new long[i22];
                        int[] iArr11 = new int[i22];
                        while (zzaipVar.zza()) {
                            int i23 = zzaipVar.zzb;
                            jArr12[i23] = zzaipVar.zzd;
                            iArr11[i23] = zzaipVar.zzc;
                        }
                        long j4 = zzp3;
                        int i24 = 8192 / zza2;
                        int i25 = 0;
                        for (int i26 = 0; i26 < i22; i26++) {
                            int i27 = iArr11[i26];
                            int i28 = zzfy.zza;
                            i25 += ((i27 + i24) - 1) / i24;
                        }
                        long[] jArr13 = new long[i25];
                        int[] iArr12 = new int[i25];
                        jArr4 = new long[i25];
                        int[] iArr13 = new int[i25];
                        int i29 = 0;
                        int i30 = 0;
                        int i31 = 0;
                        int i32 = 0;
                        while (i29 < i22) {
                            int i33 = iArr11[i29];
                            long j5 = jArr12[i29];
                            int i34 = i33;
                            while (i34 > 0) {
                                int min = Math.min(i24, i34);
                                jArr13[i32] = j5;
                                int i35 = i22;
                                int i36 = zza2 * min;
                                iArr12[i32] = i36;
                                i31 = Math.max(i31, i36);
                                jArr4[i32] = i30 * j4;
                                iArr13[i32] = 1;
                                j5 += iArr12[i32];
                                i30 += min;
                                i34 -= min;
                                i32++;
                                i22 = i35;
                                jArr12 = jArr12;
                            }
                            i29++;
                            i22 = i22;
                        }
                        j2 = j4 * i30;
                        jArr5 = jArr13;
                        i12 = zzb3;
                        iArr4 = iArr13;
                        iArr3 = iArr12;
                        i13 = i31;
                        zzajmVar2 = zzajmVar;
                        long j6 = zzajmVar2.zzc;
                        RoundingMode roundingMode = RoundingMode.FLOOR;
                        long zzs = zzfy.zzs(j2, 1000000L, j6, roundingMode);
                        jArr6 = zzajmVar2.zzh;
                        if (jArr6 != null) {
                            zzfy.zzE(jArr4, 1000000L, zzajmVar2.zzc);
                            return new zzajp(zzajmVar, jArr5, iArr3, i13, jArr4, iArr4, zzs);
                        }
                        if (jArr6.length == 1 && zzajmVar2.zzb == 1 && (length2 = jArr4.length) >= 2) {
                            long[] jArr14 = zzajmVar2.zzi;
                            jArr14.getClass();
                            long j7 = jArr14[0];
                            long zzs2 = j7 + zzfy.zzs(jArr6[0], zzajmVar2.zzc, zzajmVar2.zzd, roundingMode);
                            int i37 = (-1) + length2;
                            int max = Math.max(0, Math.min(4, i37));
                            int max2 = Math.max(0, Math.min(length2 - 4, i37));
                            long j8 = jArr4[0];
                            if (j8 <= j7 && j7 < jArr4[max] && jArr4[max2] < zzs2 && zzs2 <= j2) {
                                long zzs3 = zzfy.zzs(j7 - j8, zzajmVar2.zzf.zzA, zzajmVar2.zzc, roundingMode);
                                iArr6 = iArr4;
                                i16 = i12;
                                long zzs4 = zzfy.zzs(j2 - zzs2, zzajmVar2.zzf.zzA, zzajmVar2.zzc, roundingMode);
                                if (zzs3 == 0) {
                                    if (zzs4 != 0) {
                                        zzs3 = 0;
                                    }
                                    long[] jArr15 = zzajmVar2.zzh;
                                    length = jArr15.length;
                                    if (length == 1) {
                                        if (jArr15[0] == 0) {
                                            long[] jArr16 = zzajmVar2.zzi;
                                            jArr16.getClass();
                                            long j9 = jArr16[0];
                                            for (int i38 = 0; i38 < jArr4.length; i38++) {
                                                jArr4[i38] = zzfy.zzs(jArr4[i38] - j9, 1000000L, zzajmVar2.zzc, RoundingMode.FLOOR);
                                            }
                                            return new zzajp(zzajmVar, jArr5, iArr3, i13, jArr4, iArr6, zzfy.zzs(j2 - j9, 1000000L, zzajmVar2.zzc, RoundingMode.FLOOR));
                                        }
                                        length = 1;
                                    }
                                    boolean z5 = zzajmVar2.zzb == 1;
                                    jArr7 = zzajmVar2.zzi;
                                    int[] iArr14 = new int[length];
                                    int[] iArr15 = new int[length];
                                    jArr7.getClass();
                                    i17 = 0;
                                    int i39 = 0;
                                    boolean z6 = false;
                                    int i40 = 0;
                                    while (true) {
                                        jArr8 = zzajmVar2.zzh;
                                        if (i17 >= jArr8.length) {
                                            break;
                                        }
                                        int[] iArr16 = iArr3;
                                        int i41 = i13;
                                        long j10 = jArr7[i17];
                                        if (j10 != -1) {
                                            iArr10 = iArr16;
                                            jArr10 = jArr7;
                                            jArr11 = jArr5;
                                            long zzs5 = zzfy.zzs(jArr8[i17], zzajmVar2.zzc, zzajmVar2.zzd, RoundingMode.FLOOR);
                                            int i42 = 1;
                                            iArr14[i17] = zzfy.zzc(jArr4, j10, true, true);
                                            iArr15[i17] = zzfy.zza(jArr4, j10 + zzs5, z5, false);
                                            while (true) {
                                                i20 = iArr14[i17];
                                                i21 = iArr15[i17];
                                                if (i20 >= i21 || (iArr6[i20] & i42) != 0) {
                                                    break;
                                                }
                                                iArr14[i17] = i20 + i42;
                                                i42 = 1;
                                            }
                                            int i43 = (i21 - i20) + i39;
                                            z6 = (i40 != i20) | z6;
                                            i40 = i21;
                                            i39 = i43;
                                        } else {
                                            jArr10 = jArr7;
                                            jArr11 = jArr5;
                                            iArr10 = iArr16;
                                        }
                                        i17++;
                                        iArr3 = iArr10;
                                        i13 = i41;
                                        jArr5 = jArr11;
                                        jArr7 = jArr10;
                                    }
                                    long[] jArr17 = jArr5;
                                    int[] iArr17 = iArr3;
                                    int i44 = i13;
                                    i18 = 0;
                                    z4 = (i39 != i16) | z6;
                                    long[] jArr18 = z4 ? new long[i39] : jArr17;
                                    int[] iArr18 = z4 ? new int[i39] : iArr17;
                                    if (true == z4) {
                                        i44 = 0;
                                    }
                                    int[] iArr19 = z4 ? new int[i39] : iArr6;
                                    long[] jArr19 = new long[i39];
                                    int i45 = 0;
                                    long j11 = 0;
                                    while (i18 < zzajmVar2.zzh.length) {
                                        long j12 = zzajmVar2.zzi[i18];
                                        int i46 = iArr14[i18];
                                        int[] iArr20 = iArr14;
                                        int i47 = iArr15[i18];
                                        if (z4) {
                                            iArr7 = iArr15;
                                            int i48 = i47 - i46;
                                            i19 = i18;
                                            System.arraycopy(jArr17, i46, jArr18, i45, i48);
                                            iArr9 = iArr17;
                                            System.arraycopy(iArr9, i46, iArr18, i45, i48);
                                            jArr9 = jArr18;
                                            iArr8 = iArr6;
                                            System.arraycopy(iArr8, i46, iArr19, i45, i48);
                                        } else {
                                            i19 = i18;
                                            jArr9 = jArr18;
                                            iArr7 = iArr15;
                                            iArr8 = iArr6;
                                            iArr9 = iArr17;
                                        }
                                        int i49 = i44;
                                        while (i46 < i47) {
                                            int[] iArr21 = iArr9;
                                            int[] iArr22 = iArr8;
                                            long j13 = zzajmVar2.zzd;
                                            RoundingMode roundingMode2 = RoundingMode.FLOOR;
                                            long zzs6 = zzfy.zzs(j11, 1000000L, j13, roundingMode2);
                                            long[] jArr20 = jArr4;
                                            long j14 = j12;
                                            long zzs7 = zzfy.zzs(jArr4[i46] - j12, 1000000L, zzajmVar2.zzc, roundingMode2);
                                            int i50 = i47;
                                            long j15 = j11;
                                            if (zzajmVar2.zzb != 1) {
                                                zzs7 = Math.max(0L, zzs7);
                                            }
                                            jArr19[i45] = zzs6 + zzs7;
                                            if (z4 && iArr18[i45] > i49) {
                                                i49 = iArr21[i46];
                                            }
                                            i45++;
                                            i46++;
                                            iArr8 = iArr22;
                                            iArr9 = iArr21;
                                            i47 = i50;
                                            j11 = j15;
                                            jArr4 = jArr20;
                                            j12 = j14;
                                        }
                                        iArr17 = iArr9;
                                        iArr6 = iArr8;
                                        i18 = i19 + 1;
                                        i44 = i49;
                                        j11 += zzajmVar2.zzh[i19];
                                        iArr14 = iArr20;
                                        iArr15 = iArr7;
                                        jArr18 = jArr9;
                                        jArr4 = jArr4;
                                    }
                                    return new zzajp(zzajmVar, jArr18, iArr18, i44, jArr19, iArr19, zzfy.zzs(j11, 1000000L, zzajmVar2.zzd, RoundingMode.FLOOR));
                                }
                                if (zzs3 <= 2147483647L && zzs4 <= 2147483647L) {
                                    zzadkVar.zza = (int) zzs3;
                                    zzadkVar.zzb = (int) zzs4;
                                    zzfy.zzE(jArr4, 1000000L, zzajmVar2.zzc);
                                    return new zzajp(zzajmVar, jArr5, iArr3, i13, jArr4, iArr6, zzfy.zzs(zzajmVar2.zzh[0], 1000000L, zzajmVar2.zzd, roundingMode));
                                }
                                long[] jArr152 = zzajmVar2.zzh;
                                length = jArr152.length;
                                if (length == 1) {
                                }
                                if (zzajmVar2.zzb == 1) {
                                }
                                jArr7 = zzajmVar2.zzi;
                                int[] iArr142 = new int[length];
                                int[] iArr152 = new int[length];
                                jArr7.getClass();
                                i17 = 0;
                                int i392 = 0;
                                boolean z62 = false;
                                int i402 = 0;
                                while (true) {
                                    jArr8 = zzajmVar2.zzh;
                                    if (i17 >= jArr8.length) {
                                    }
                                    i17++;
                                    iArr3 = iArr10;
                                    i13 = i41;
                                    jArr5 = jArr11;
                                    jArr7 = jArr10;
                                }
                                long[] jArr172 = jArr5;
                                int[] iArr172 = iArr3;
                                int i442 = i13;
                                i18 = 0;
                                z4 = (i392 != i16) | z62;
                                if (z4) {
                                }
                                if (z4) {
                                }
                                if (true == z4) {
                                }
                                if (z4) {
                                }
                                long[] jArr192 = new long[i392];
                                int i452 = 0;
                                long j112 = 0;
                                while (i18 < zzajmVar2.zzh.length) {
                                }
                                return new zzajp(zzajmVar, jArr18, iArr18, i442, jArr192, iArr19, zzfy.zzs(j112, 1000000L, zzajmVar2.zzd, RoundingMode.FLOOR));
                            }
                        }
                        iArr6 = iArr4;
                        i16 = i12;
                        long[] jArr1522 = zzajmVar2.zzh;
                        length = jArr1522.length;
                        if (length == 1) {
                        }
                        if (zzajmVar2.zzb == 1) {
                        }
                        jArr7 = zzajmVar2.zzi;
                        int[] iArr1422 = new int[length];
                        int[] iArr1522 = new int[length];
                        jArr7.getClass();
                        i17 = 0;
                        int i3922 = 0;
                        boolean z622 = false;
                        int i4022 = 0;
                        while (true) {
                            jArr8 = zzajmVar2.zzh;
                            if (i17 >= jArr8.length) {
                            }
                            i17++;
                            iArr3 = iArr10;
                            i13 = i41;
                            jArr5 = jArr11;
                            jArr7 = jArr10;
                        }
                        long[] jArr1722 = jArr5;
                        int[] iArr1722 = iArr3;
                        int i4422 = i13;
                        i18 = 0;
                        z4 = (i3922 != i16) | z622;
                        if (z4) {
                        }
                        if (z4) {
                        }
                        if (true == z4) {
                        }
                        if (z4) {
                        }
                        long[] jArr1922 = new long[i3922];
                        int i4522 = 0;
                        long j1122 = 0;
                        while (i18 < zzajmVar2.zzh.length) {
                        }
                        return new zzajp(zzajmVar, jArr18, iArr18, i4422, jArr1922, iArr19, zzfy.zzs(j1122, 1000000L, zzajmVar2.zzd, RoundingMode.FLOOR));
                    }
                    zzp = 0;
                }
                jArr = new long[zzb3];
                iArr = new int[zzb3];
                long[] jArr21 = new long[zzb3];
                int[] iArr23 = new int[zzb3];
                int i51 = zzp;
                int i52 = i3;
                int i53 = i;
                i4 = 0;
                int i54 = 0;
                int i55 = 0;
                j = 0;
                long j16 = 0;
                i5 = i2;
                int i56 = zzp2;
                i6 = 0;
                int i57 = 0;
                while (true) {
                    if (i6 < zzb3) {
                        jArr2 = jArr;
                        break;
                    }
                    j3 = j;
                    boolean z7 = true;
                    while (true) {
                        if (i4 != 0) {
                            iArr5 = iArr23;
                            i14 = i4;
                            break;
                        }
                        z7 = zzaipVar.zza();
                        iArr5 = iArr23;
                        if (!z7) {
                            i14 = 0;
                            break;
                        }
                        long j17 = zzaipVar.zzd;
                        i4 = zzaipVar.zzc;
                        j3 = j17;
                        iArr23 = iArr5;
                    }
                    if (!z7) {
                        zzff.zzf(new ObfuscatedString(new long[]{-8737397456670483510L, 8465295314408389842L, 3098139596325385922L}).toString(), new ObfuscatedString(new long[]{4064556796909719078L, -8651333236949898483L, -236992997999260383L, 1324976330980832552L, -3781345977607688502L}).toString());
                        long[] copyOf = Arrays.copyOf(jArr, i6);
                        iArr = Arrays.copyOf(iArr, i6);
                        jArr21 = Arrays.copyOf(jArr21, i6);
                        iArr23 = Arrays.copyOf(iArr5, i6);
                        jArr2 = copyOf;
                        zzb3 = i6;
                        break;
                    }
                    iArr23 = iArr5;
                    if (zzfpVar2 != null) {
                        while (true) {
                            if (i55 != 0) {
                                break;
                            }
                            if (i53 <= 0) {
                                i55 = 0;
                                break;
                            }
                            i53--;
                            i55 = zzfpVar2.zzp();
                            i57 = zzfpVar2.zzg();
                        }
                        i55--;
                    }
                    jArr[i6] = j3;
                    int zzc = zzaiuVar.zzc();
                    iArr[i6] = zzc;
                    long[] jArr22 = jArr;
                    int i58 = i54;
                    if (zzc > i58) {
                        zzairVar = zzaiuVar;
                        i54 = zzc;
                    } else {
                        i54 = i58;
                        zzairVar = zzaiuVar;
                    }
                    jArr21[i6] = j16 + i57;
                    iArr23[i6] = zzfpVar == null ? 1 : 0;
                    if (i6 == i52) {
                        iArr23[i6] = 1;
                        i15 = -1;
                        i5--;
                        if (i5 > 0) {
                            zzfpVar.getClass();
                            i52 = zzfpVar.zzp() - 1;
                        }
                    } else {
                        i15 = -1;
                    }
                    j16 += zzp3;
                    int i59 = i56 - 1;
                    if (i59 != 0) {
                        i56 = i59;
                    } else if (i51 > 0) {
                        i51--;
                        i56 = zzfpVar3.zzp();
                        zzp3 = zzfpVar3.zzg();
                    } else {
                        i56 = 0;
                    }
                    long j18 = j3 + iArr[i6];
                    int i60 = i14 + i15;
                    i6++;
                    jArr = jArr22;
                    j = j18;
                    zzaiuVar = zzairVar;
                    i4 = i60;
                }
                int i61 = i54;
                long j19 = j16 + i57;
                if (zzfpVar2 != null) {
                    while (i53 > 0) {
                        if (zzfpVar2.zzp() != 0) {
                            z2 = false;
                            break;
                        }
                        zzfpVar2.zzg();
                        i53--;
                    }
                }
                z2 = true;
                if (i5 == 0) {
                    zzajmVar2 = zzajmVar;
                    z3 = z2;
                    i7 = i5;
                    i8 = i56;
                    i9 = i51;
                    i10 = i55;
                } else if (i56 == 0) {
                    if (i4 == 0) {
                        if (i51 != 0) {
                            z3 = z2;
                            i9 = i51;
                            i10 = i55;
                            i7 = 0;
                            i8 = 0;
                        } else if (i55 != 0) {
                            z3 = z2;
                            i10 = i55;
                            i7 = 0;
                            i8 = 0;
                            i9 = 0;
                        } else if (z2) {
                            zzajmVar2 = zzajmVar;
                            i11 = i61;
                            iArr2 = iArr;
                            jArr3 = jArr21;
                            iArr3 = iArr2;
                            j2 = j19;
                            iArr4 = iArr23;
                            i12 = zzb3;
                            i13 = i11;
                            jArr4 = jArr3;
                            jArr5 = jArr2;
                            long j62 = zzajmVar2.zzc;
                            RoundingMode roundingMode3 = RoundingMode.FLOOR;
                            long zzs8 = zzfy.zzs(j2, 1000000L, j62, roundingMode3);
                            jArr6 = zzajmVar2.zzh;
                            if (jArr6 != null) {
                            }
                        } else {
                            i7 = 0;
                            i8 = 0;
                            i9 = 0;
                            i10 = 0;
                            i4 = 0;
                            z3 = false;
                        }
                        i4 = 0;
                    } else {
                        z3 = z2;
                        i9 = i51;
                        i10 = i55;
                        i7 = 0;
                        i8 = 0;
                    }
                    zzajmVar2 = zzajmVar;
                } else {
                    zzajmVar2 = zzajmVar;
                    z3 = z2;
                    i8 = i56;
                    i9 = i51;
                    i10 = i55;
                    i7 = 0;
                }
                int i62 = zzajmVar2.zza;
                StringBuilder sb = new StringBuilder();
                i11 = i61;
                iArr2 = iArr;
                jArr3 = jArr21;
                sb.append(new ObfuscatedString(new long[]{1123086685577247380L, -6029259366020754384L, 7070892045324238200L, -5681926571178317587L, -1606239392296026343L}).toString());
                sb.append(i62);
                sb.append(new ObfuscatedString(new long[]{-3068515872077488911L, 6188277847768103998L, 3350945236853544392L, -6014715409774889113L, 4356941422591545994L, 9156911463020764692L}).toString());
                sb.append(i7);
                sb.append(new ObfuscatedString(new long[]{2523274929005393316L, -1231939336270482354L, 389480237875460065L, -3605846529121675186L, 687367250036846512L, 7830257792020856825L}).toString());
                sb.append(i8);
                sb.append(new ObfuscatedString(new long[]{-8633024197460354467L, -1085168990380228795L, 7704199937893018716L, -8110049181420911025L, -255582953774085348L}).toString());
                sb.append(i4);
                sb.append(new ObfuscatedString(new long[]{1471498595311718320L, 5508307645189614749L, 1628156324323787327L, -2512411925631082515L, 50071400408316830L, -8906276955330445011L}).toString());
                sb.append(i9);
                sb.append(new ObfuscatedString(new long[]{-5628472985033089562L, 900063897575962574L, 3223848194665352968L, -3268231914909562840L, 6207007610594861546L, -5322816108411422664L}).toString());
                sb.append(i10);
                sb.append(true == z3 ? new ObfuscatedString(new long[]{8310011228657954079L, 4532213802514287813L, -5575786216649722143L}).toString() : new ObfuscatedString(new long[]{-3198278564276519812L}).toString());
                zzff.zzf(new ObfuscatedString(new long[]{2980509937970754315L, 173119469621933711L, -1448249570861165490L}).toString(), sb.toString());
                iArr3 = iArr2;
                j2 = j19;
                iArr4 = iArr23;
                i12 = zzb3;
                i13 = i11;
                jArr4 = jArr3;
                jArr5 = jArr2;
                long j622 = zzajmVar2.zzc;
                RoundingMode roundingMode32 = RoundingMode.FLOOR;
                long zzs82 = zzfy.zzs(j2, 1000000L, j622, roundingMode32);
                jArr6 = zzajmVar2.zzh;
                if (jArr6 != null) {
                }
            } else {
                zzfpVar = null;
            }
        } else {
            i2 = 0;
        }
        i3 = -1;
        zza2 = zzaiuVar.zza();
        String str2 = zzajmVar.zzf.zzm;
        if (zza2 != -1) {
            if (i != 0) {
            }
            zzp = 0;
        }
        jArr = new long[zzb3];
        iArr = new int[zzb3];
        long[] jArr212 = new long[zzb3];
        int[] iArr232 = new int[zzb3];
        int i512 = zzp;
        int i522 = i3;
        int i532 = i;
        i4 = 0;
        int i542 = 0;
        int i552 = 0;
        j = 0;
        long j162 = 0;
        i5 = i2;
        int i562 = zzp2;
        i6 = 0;
        int i572 = 0;
        while (true) {
            if (i6 < zzb3) {
            }
            long j182 = j3 + iArr[i6];
            int i602 = i14 + i15;
            i6++;
            jArr = jArr22;
            j = j182;
            zzaiuVar = zzairVar;
            i4 = i602;
        }
        int i612 = i542;
        long j192 = j162 + i572;
        if (zzfpVar2 != null) {
        }
        z2 = true;
        if (i5 == 0) {
        }
        int i622 = zzajmVar2.zza;
        StringBuilder sb2 = new StringBuilder();
        i11 = i612;
        iArr2 = iArr;
        jArr3 = jArr212;
        sb2.append(new ObfuscatedString(new long[]{1123086685577247380L, -6029259366020754384L, 7070892045324238200L, -5681926571178317587L, -1606239392296026343L}).toString());
        sb2.append(i622);
        sb2.append(new ObfuscatedString(new long[]{-3068515872077488911L, 6188277847768103998L, 3350945236853544392L, -6014715409774889113L, 4356941422591545994L, 9156911463020764692L}).toString());
        sb2.append(i7);
        sb2.append(new ObfuscatedString(new long[]{2523274929005393316L, -1231939336270482354L, 389480237875460065L, -3605846529121675186L, 687367250036846512L, 7830257792020856825L}).toString());
        sb2.append(i8);
        sb2.append(new ObfuscatedString(new long[]{-8633024197460354467L, -1085168990380228795L, 7704199937893018716L, -8110049181420911025L, -255582953774085348L}).toString());
        sb2.append(i4);
        sb2.append(new ObfuscatedString(new long[]{1471498595311718320L, 5508307645189614749L, 1628156324323787327L, -2512411925631082515L, 50071400408316830L, -8906276955330445011L}).toString());
        sb2.append(i9);
        sb2.append(new ObfuscatedString(new long[]{-5628472985033089562L, 900063897575962574L, 3223848194665352968L, -3268231914909562840L, 6207007610594861546L, -5322816108411422664L}).toString());
        sb2.append(i10);
        sb2.append(true == z3 ? new ObfuscatedString(new long[]{8310011228657954079L, 4532213802514287813L, -5575786216649722143L}).toString() : new ObfuscatedString(new long[]{-3198278564276519812L}).toString());
        zzff.zzf(new ObfuscatedString(new long[]{2980509937970754315L, 173119469621933711L, -1448249570861165490L}).toString(), sb2.toString());
        iArr3 = iArr2;
        j2 = j192;
        iArr4 = iArr232;
        i12 = zzb3;
        i13 = i11;
        jArr4 = jArr3;
        jArr5 = jArr2;
        long j6222 = zzajmVar2.zzc;
        RoundingMode roundingMode322 = RoundingMode.FLOOR;
        long zzs822 = zzfy.zzs(j2, 1000000L, j6222, roundingMode322);
        jArr6 = zzajmVar2.zzh;
        if (jArr6 != null) {
        }
    }

    private static ByteBuffer zzl() {
        return ByteBuffer.allocate(25).order(ByteOrder.LITTLE_ENDIAN);
    }

    /* JADX WARN: Code restructure failed: missing block: B:206:0x01bc, code lost:
    
        if (r12 == (-1)) goto L80;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void zzm(zzfp zzfpVar, int i, int i2, int i3, int i4, String str, boolean z, @Nullable zzae zzaeVar, zzais zzaisVar, int i5) {
        int i6;
        int zzq;
        int zzn;
        int i7;
        int i8;
        ObfuscatedString obfuscatedString;
        String str2;
        long j;
        long j2;
        int i9;
        List list;
        int i10;
        int i11;
        byte[] bArr;
        String str3;
        int i12;
        zzfp zzfpVar2 = zzfpVar;
        int i13 = i2;
        int i14 = i3;
        zzae zzaeVar2 = zzaeVar;
        zzfpVar2.zzK(i13 + 16);
        if (z) {
            i6 = zzfpVar.zzq();
            zzfpVar2.zzL(6);
        } else {
            zzfpVar2.zzL(8);
            i6 = 0;
        }
        if (i6 == 0 || i6 == 1) {
            zzq = zzfpVar.zzq();
            zzfpVar2.zzL(6);
            zzn = zzfpVar.zzn();
            zzfpVar2.zzK(zzfpVar.zzd() - 4);
            int zzg = zzfpVar.zzg();
            if (i6 == 1) {
                zzfpVar2.zzL(16);
            }
            i7 = zzg;
            i8 = -1;
        } else {
            if (i6 != 2) {
                return;
            }
            zzfpVar2.zzL(16);
            zzn = (int) Math.round(Double.longBitsToDouble(zzfpVar.zzt()));
            zzq = zzfpVar.zzp();
            zzfpVar2.zzL(4);
            int zzp = zzfpVar.zzp();
            int zzp2 = zzfpVar.zzp();
            int i15 = zzp2 & 1;
            int i16 = zzp2 & 2;
            if (i15 == 0) {
                if (zzp == 8) {
                    i8 = 3;
                } else if (zzp == 16) {
                    i8 = i16 != 0 ? 268435456 : 2;
                } else if (zzp == 24) {
                    i8 = i16 != 0 ? 1342177280 : 21;
                } else {
                    if (zzp == 32) {
                        i8 = i16 != 0 ? 1610612736 : 22;
                    }
                    i8 = -1;
                }
                zzfpVar2.zzL(8);
                i7 = 0;
            } else {
                if (zzp == 32) {
                    i8 = 4;
                    zzfpVar2.zzL(8);
                    i7 = 0;
                }
                i8 = -1;
                zzfpVar2.zzL(8);
                i7 = 0;
            }
        }
        int zzd = zzfpVar.zzd();
        int i17 = 1701733217;
        int i18 = i;
        if (i18 == 1701733217) {
            Pair zzh = zzh(zzfpVar2, i13, i14);
            if (zzh != null) {
                i17 = ((Integer) zzh.first).intValue();
                zzaeVar2 = zzaeVar2 == null ? null : zzaeVar2.zzb(((zzajn) zzh.second).zzb);
                zzaisVar.zza[i5] = (zzajn) zzh.second;
            }
            zzfpVar2.zzK(zzd);
            i18 = i17;
        }
        if (i18 == 1633889587) {
            str2 = new ObfuscatedString(new long[]{-8896102634895247553L, -2816686146126036579L, -3352190902382273530L}).toString();
        } else {
            if (i18 == 1700998451) {
                obfuscatedString = new ObfuscatedString(new long[]{-6051322077910138386L, -3996180238930729198L, 501794412685397566L});
            } else if (i18 == 1633889588) {
                obfuscatedString = new ObfuscatedString(new long[]{-414122746350675287L, -8418458997750169516L, -4598043235599187688L});
            } else if (i18 == 1685353315) {
                obfuscatedString = new ObfuscatedString(new long[]{-1194764212263649603L, 8139512213867786513L, -6463272617182757473L});
            } else if (i18 == 1685353320 || i18 == 1685353324) {
                obfuscatedString = new ObfuscatedString(new long[]{-3636344315594118803L, -1593697717084554837L, -5903146570754816785L});
            } else if (i18 == 1685353317) {
                obfuscatedString = new ObfuscatedString(new long[]{525915678364330615L, 8523825642405786164L, 7147465825798711505L, 6614256339152173175L, -3672292481187498175L});
            } else if (i18 == 1685353336) {
                obfuscatedString = new ObfuscatedString(new long[]{-6968134829678526758L, 6495704494280036703L, -5455681283652505463L, -8127952950296072631L, -5278166165040648444L});
            } else if (i18 == 1935764850) {
                obfuscatedString = new ObfuscatedString(new long[]{2719119718564066061L, 6207628282866752624L, -8279483282662661882L});
            } else if (i18 == 1935767394) {
                obfuscatedString = new ObfuscatedString(new long[]{6440397101314775349L, 2144287142222435112L, 649978415241860030L});
            } else {
                if (i18 == 1936684916) {
                    str2 = new ObfuscatedString(new long[]{-1054561134432920119L, -3262333182798441835L, -8403621089448756953L}).toString();
                } else if (i18 == 1953984371) {
                    str2 = new ObfuscatedString(new long[]{-3303157624933330258L, 6295067032822174513L, -75767829542144782L}).toString();
                    i8 = 268435456;
                } else if (i18 == 1819304813) {
                    str2 = new ObfuscatedString(new long[]{-701684397806106533L, 3069852088697070085L, -1919994611932074640L}).toString();
                } else if (i18 == 778924082 || i18 == 778924083) {
                    obfuscatedString = new ObfuscatedString(new long[]{1669293463108431836L, 5423109982592023343L, -5385334268604768558L});
                } else if (i18 == 1835557169) {
                    obfuscatedString = new ObfuscatedString(new long[]{-1782990463767995186L, 3663795666571541143L, 5244453780752230859L});
                } else if (i18 == 1835560241) {
                    obfuscatedString = new ObfuscatedString(new long[]{2387859972713558677L, -8311139404270133368L, -7266495633208257240L});
                } else if (i18 == 1634492771) {
                    obfuscatedString = new ObfuscatedString(new long[]{-2217173583547335251L, 3841832879189627664L, 2443190735336366860L});
                } else if (i18 == 1634492791) {
                    obfuscatedString = new ObfuscatedString(new long[]{439064400431269664L, -2915885280939018332L, 7807487013876713906L});
                } else if (i18 == 1970037111) {
                    obfuscatedString = new ObfuscatedString(new long[]{-6556551483732729653L, -3843793092851332750L, -1395959023624162283L});
                } else if (i18 == 1332770163) {
                    obfuscatedString = new ObfuscatedString(new long[]{-4887863367834814961L, 6427264172652616876L, 3490770083476289660L});
                } else if (i18 == 1716281667) {
                    obfuscatedString = new ObfuscatedString(new long[]{-3442722594405470944L, -6689626262166730561L, -5251832534765645942L});
                } else if (i18 == 1835823201) {
                    obfuscatedString = new ObfuscatedString(new long[]{1553337940317534282L, -4518531827649770014L, 2800418668541761831L});
                } else {
                    str2 = null;
                }
                i8 = 2;
            }
            str2 = obfuscatedString.toString();
        }
        String str4 = null;
        List list2 = null;
        zzaiq zzaiqVar = null;
        while (zzd - i13 < i14) {
            zzfpVar2.zzK(zzd);
            int zzg2 = zzfpVar.zzg();
            String str5 = str4;
            int i19 = i8;
            zzacy.zzb(zzg2 > 0, new ObfuscatedString(new long[]{-5688193961763506693L, -6261541084738060759L, 4439771163221263610L, 6194429258550762451L, 3340168331092862321L}).toString());
            int zzg3 = zzfpVar.zzg();
            if (zzg3 == 1835557187) {
                zzfpVar2.zzK(zzd + 8);
                zzfpVar2.zzL(1);
                int zzm = zzfpVar.zzm();
                zzfpVar2.zzL(1);
                str4 = Objects.equals(str2, new ObfuscatedString(new long[]{3945506430445911960L, -8176877032551161798L, 2892565344883661538L}).toString()) ? String.format(new ObfuscatedString(new long[]{-8140024023359869497L, -3474420546106783806L, -7060835023572855449L}).toString(), Integer.valueOf(zzm)) : String.format(new ObfuscatedString(new long[]{7646242189390505786L, 8240437465188117845L, -489336189160059899L}).toString(), Integer.valueOf(zzm));
                int zzq2 = zzfpVar.zzq();
                byte[] bArr2 = new byte[zzq2];
                zzfpVar2.zzG(bArr2, 0, zzq2);
                if (list2 == null) {
                    list2 = zzgaa.zzm(bArr2);
                } else {
                    list2 = zzgaa.zzn(bArr2, (byte[]) list2.get(0));
                }
            } else {
                if (zzg3 == 1835557200) {
                    zzfpVar2.zzK(zzd + 8);
                    int zzm2 = zzfpVar.zzm();
                    if (zzm2 > 0) {
                        byte[] bArr3 = new byte[zzm2];
                        zzfpVar2.zzG(bArr3, 0, zzm2);
                        if (list2 == null) {
                            list2 = zzgaa.zzm(bArr3);
                        } else {
                            list2 = zzgaa.zzn((byte[]) list2.get(0), bArr3);
                        }
                        str4 = str5;
                    } else {
                        i9 = zzn;
                        list = list2;
                    }
                } else {
                    if (zzg3 == 1702061171) {
                        i9 = zzn;
                        list = list2;
                        i10 = zzd;
                        i11 = -1;
                    } else if (z && zzg3 == 2002876005) {
                        int zzd2 = zzfpVar.zzd();
                        zzacy.zzb(zzd2 >= zzd, null);
                        i10 = zzd2;
                        while (true) {
                            if (i10 - zzd >= zzg2) {
                                list = list2;
                                i9 = zzn;
                                i11 = -1;
                                i10 = -1;
                                break;
                            }
                            zzfpVar2.zzK(i10);
                            int zzg4 = zzfpVar.zzg();
                            int i20 = zzn;
                            list = list2;
                            zzacy.zzb(zzg4 > 0, new ObfuscatedString(new long[]{-1102994053658241695L, -656157763919526894L, 1491769209360825394L, 7454670784754646605L, -8287756389270803920L}).toString());
                            if (zzfpVar.zzg() == 1702061171) {
                                i9 = i20;
                                i11 = -1;
                                break;
                            } else {
                                i10 += zzg4;
                                list2 = list;
                                zzn = i20;
                            }
                        }
                    } else {
                        int i21 = zzn;
                        list = list2;
                        if (zzg3 == 1684103987) {
                            zzfpVar2.zzK(zzd + 8);
                            zzaisVar.zzb = zzabv.zzc(zzfpVar2, Integer.toString(i4), str, zzaeVar2);
                        } else if (zzg3 == 1684366131) {
                            zzfpVar2.zzK(zzd + 8);
                            zzaisVar.zzb = zzabv.zzd(zzfpVar2, Integer.toString(i4), str, zzaeVar2);
                        } else if (zzg3 == 1684103988) {
                            zzfpVar2.zzK(zzd + 8);
                            String num = Integer.toString(i4);
                            zzfpVar2.zzL(1);
                            int zzm3 = zzfpVar.zzm() & 32;
                            zzak zzakVar = new zzak();
                            zzakVar.zzK(num);
                            zzakVar.zzW(new ObfuscatedString(new long[]{-3197580346697251527L, -8455709770773982466L, -1909393775393785793L}).toString());
                            zzakVar.zzy(2);
                            zzakVar.zzX(1 != (zzm3 >> 5) ? 44100 : 48000);
                            zzakVar.zzE(zzaeVar2);
                            zzakVar.zzN(str);
                            zzaisVar.zzb = zzakVar.zzac();
                        } else if (zzg3 != 1684892784) {
                            if (zzg3 == 1684305011 || zzg3 == 1969517683) {
                                zzak zzakVar2 = new zzak();
                                zzakVar2.zzJ(i4);
                                zzakVar2.zzW(str2);
                                zzakVar2.zzy(zzq);
                                i9 = i21;
                                zzakVar2.zzX(i9);
                                zzakVar2.zzE(zzaeVar2);
                                zzakVar2.zzN(str);
                                zzaisVar.zzb = zzakVar2.zzac();
                            } else if (zzg3 == 1682927731) {
                                int i22 = zzg2 - 8;
                                byte[] bArr4 = zza;
                                byte[] copyOf = Arrays.copyOf(bArr4, bArr4.length + i22);
                                zzfpVar2.zzK(zzd + 8);
                                zzfpVar2.zzG(copyOf, bArr4.length, i22);
                                list2 = zzadq.zze(copyOf);
                                str4 = str5;
                                i9 = i21;
                                zzd += zzg2;
                                zzfpVar2 = zzfpVar;
                                i13 = i2;
                                i8 = i19;
                                zzn = i9;
                                i14 = i3;
                            } else if (zzg3 == 1684425825) {
                                byte[] bArr5 = new byte[zzg2 - 8];
                                bArr5[0] = 102;
                                bArr5[1] = 76;
                                bArr5[2] = 97;
                                bArr5[3] = 67;
                                zzfpVar2.zzK(zzd + 12);
                                zzfpVar2.zzG(bArr5, 4, zzg2 - 12);
                                zzgaa zzm4 = zzgaa.zzm(bArr5);
                                str4 = str5;
                                list2 = zzm4;
                                i9 = i21;
                                zzd += zzg2;
                                zzfpVar2 = zzfpVar;
                                i13 = i2;
                                i8 = i19;
                                zzn = i9;
                                i14 = i3;
                            } else if (zzg3 == 1634492771) {
                                int i23 = zzg2 - 12;
                                byte[] bArr6 = new byte[i23];
                                zzfpVar2.zzK(zzd + 12);
                                zzfpVar2.zzG(bArr6, 0, i23);
                                int i24 = zzem.zza;
                                zzfp zzfpVar3 = new zzfp(bArr6);
                                zzfpVar3.zzK(9);
                                int zzm5 = zzfpVar3.zzm();
                                zzfpVar3.zzK(20);
                                Pair create = Pair.create(Integer.valueOf(zzfpVar3.zzp()), Integer.valueOf(zzm5));
                                i9 = ((Integer) create.first).intValue();
                                int intValue = ((Integer) create.second).intValue();
                                zzgaa zzm6 = zzgaa.zzm(bArr6);
                                zzq = intValue;
                                list2 = zzm6;
                                str4 = str5;
                                zzd += zzg2;
                                zzfpVar2 = zzfpVar;
                                i13 = i2;
                                i8 = i19;
                                zzn = i9;
                                i14 = i3;
                            } else {
                                i9 = i21;
                            }
                            str4 = str5;
                            list2 = list;
                            zzd += zzg2;
                            zzfpVar2 = zzfpVar;
                            i13 = i2;
                            i8 = i19;
                            zzn = i9;
                            i14 = i3;
                        } else {
                            if (i7 <= 0) {
                                throw zzcc.zza(new ObfuscatedString(new long[]{-8505934593548759217L, -3000524096803720746L, 6432159730547913347L, -8578702750289313523L, -469122734227231305L, -242670395001923682L, -8836617841506356397L, 116682647996717554L}).toString() + i7, null);
                            }
                            str4 = str5;
                            i9 = i7;
                            list2 = list;
                            zzq = 2;
                            zzd += zzg2;
                            zzfpVar2 = zzfpVar;
                            i13 = i2;
                            i8 = i19;
                            zzn = i9;
                            i14 = i3;
                        }
                        i9 = i21;
                    }
                    if (i10 != i11) {
                        zzaiqVar = zzj(zzfpVar2, i10);
                        str2 = zzaiqVar.zza;
                        bArr = zzaiqVar.zzb;
                        if (bArr != null) {
                            if (new ObfuscatedString(new long[]{5095898221698528189L, 9203286835077019912L, 313021357941084450L}).toString().equals(str2)) {
                                zzfp zzfpVar4 = new zzfp(bArr);
                                int i25 = 1;
                                zzfpVar4.zzL(1);
                                int i26 = 0;
                                while (true) {
                                    if (zzfpVar4.zzb() <= 0) {
                                        i12 = 255;
                                        break;
                                    }
                                    i12 = 255;
                                    if (zzfpVar4.zzf() != 255) {
                                        break;
                                    }
                                    zzfpVar4.zzL(i25);
                                    i26 += 255;
                                    i25 = 1;
                                }
                                int zzm7 = zzfpVar4.zzm() + i26;
                                int i27 = 0;
                                while (zzfpVar4.zzb() > 0 && zzfpVar4.zzf() == i12) {
                                    zzfpVar4.zzL(1);
                                    i27 += i12;
                                }
                                int zzm8 = zzfpVar4.zzm() + i27;
                                byte[] bArr7 = new byte[zzm7];
                                int zzd3 = zzfpVar4.zzd();
                                System.arraycopy(bArr, zzd3, bArr7, 0, zzm7);
                                int i28 = zzd3 + zzm7 + zzm8;
                                int length = bArr.length - i28;
                                byte[] bArr8 = new byte[length];
                                System.arraycopy(bArr, i28, bArr8, 0, length);
                                list2 = zzgaa.zzn(bArr7, bArr8);
                                str4 = str5;
                                zzd += zzg2;
                                zzfpVar2 = zzfpVar;
                                i13 = i2;
                                i8 = i19;
                                zzn = i9;
                                i14 = i3;
                            } else {
                                if (new ObfuscatedString(new long[]{6392457885682761305L, 1969073400678308241L, -4222831323196741148L}).toString().equals(str2)) {
                                    zzabr zza2 = zzabs.zza(bArr);
                                    i9 = zza2.zza;
                                    zzq = zza2.zzb;
                                    str3 = zza2.zzc;
                                } else {
                                    str3 = str5;
                                }
                                list2 = zzgaa.zzm(bArr);
                                str4 = str3;
                                zzd += zzg2;
                                zzfpVar2 = zzfpVar;
                                i13 = i2;
                                i8 = i19;
                                zzn = i9;
                                i14 = i3;
                            }
                        }
                    }
                    str4 = str5;
                    list2 = list;
                    zzd += zzg2;
                    zzfpVar2 = zzfpVar;
                    i13 = i2;
                    i8 = i19;
                    zzn = i9;
                    i14 = i3;
                }
                str4 = str5;
                list2 = list;
                zzd += zzg2;
                zzfpVar2 = zzfpVar;
                i13 = i2;
                i8 = i19;
                zzn = i9;
                i14 = i3;
            }
            i9 = zzn;
            zzd += zzg2;
            zzfpVar2 = zzfpVar;
            i13 = i2;
            i8 = i19;
            zzn = i9;
            i14 = i3;
        }
        String str6 = str4;
        int i29 = zzn;
        int i30 = i8;
        List list3 = list2;
        if (zzaisVar.zzb != null || str2 == null) {
            return;
        }
        zzak zzakVar3 = new zzak();
        zzakVar3.zzJ(i4);
        zzakVar3.zzW(str2);
        zzakVar3.zzz(str6);
        zzakVar3.zzy(zzq);
        zzakVar3.zzX(i29);
        zzakVar3.zzQ(i30);
        zzakVar3.zzL(list3);
        zzakVar3.zzE(zzaeVar2);
        zzakVar3.zzN(str);
        if (zzaiqVar != null) {
            j = zzaiqVar.zzc;
            zzakVar3.zzx(zzgcu.zzc(j));
            j2 = zzaiqVar.zzd;
            zzakVar3.zzR(zzgcu.zzc(j2));
        }
        zzaisVar.zzb = zzakVar3.zzac();
    }
}
