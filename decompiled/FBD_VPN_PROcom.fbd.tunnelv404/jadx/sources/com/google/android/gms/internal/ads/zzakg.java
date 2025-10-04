package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.util.ArrayList;
import java.util.Arrays;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;

/* loaded from: classes2.dex */
final class zzakg extends zzake {

    @Nullable
    private zzakf zza;
    private int zzb;
    private boolean zzc;

    @Nullable
    private zzaef zzd;

    @Nullable
    private zzaed zze;

    @Override // com.google.android.gms.internal.ads.zzake
    public final long zza(zzfp zzfpVar) {
        int i;
        int i2 = 0;
        if ((zzfpVar.zzM()[0] & 1) == 1) {
            return -1L;
        }
        byte b = zzfpVar.zzM()[0];
        zzakf zzakfVar = this.zza;
        zzek.zzb(zzakfVar);
        if (!zzakfVar.zzd[(b >> 1) & (255 >>> (8 - zzakfVar.zze))].zza) {
            i = zzakfVar.zza.zze;
        } else {
            i = zzakfVar.zza.zzf;
        }
        if (this.zzc) {
            i2 = (this.zzb + i) / 4;
        }
        if (zzfpVar.zzc() < zzfpVar.zze() + 4) {
            byte[] copyOf = Arrays.copyOf(zzfpVar.zzM(), zzfpVar.zze() + 4);
            zzfpVar.zzI(copyOf, copyOf.length);
        } else {
            zzfpVar.zzJ(zzfpVar.zze() + 4);
        }
        long j = i2;
        byte[] zzM = zzfpVar.zzM();
        zzM[zzfpVar.zze() - 4] = (byte) (j & 255);
        zzM[zzfpVar.zze() - 3] = (byte) ((j >>> 8) & 255);
        zzM[zzfpVar.zze() - 2] = (byte) ((j >>> 16) & 255);
        zzM[zzfpVar.zze() - 1] = (byte) ((j >>> 24) & 255);
        this.zzc = true;
        this.zzb = i;
        return j;
    }

    @Override // com.google.android.gms.internal.ads.zzake
    public final void zzb(boolean z) {
        super.zzb(z);
        if (z) {
            this.zza = null;
            this.zzd = null;
            this.zze = null;
        }
        this.zzb = 0;
        this.zzc = false;
    }

    @Override // com.google.android.gms.internal.ads.zzake
    @EnsuresNonNullIf(expression = {"#3.format"}, result = false)
    public final boolean zzc(zzfp zzfpVar, long j, zzakb zzakbVar) {
        zzakf zzakfVar;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        long j2;
        int i7;
        int i8;
        int i9;
        boolean z;
        if (this.zza != null) {
            zzakbVar.zza.getClass();
            return false;
        }
        zzaef zzaefVar = this.zzd;
        int i10 = 4;
        if (zzaefVar == null) {
            zzaeg.zzd(1, zzfpVar, false);
            int zzj = zzfpVar.zzj();
            int zzm = zzfpVar.zzm();
            int zzj2 = zzfpVar.zzj();
            int zzi = zzfpVar.zzi();
            if (zzi <= 0) {
                i7 = -1;
            } else {
                i7 = zzi;
            }
            int zzi2 = zzfpVar.zzi();
            if (zzi2 <= 0) {
                i8 = -1;
            } else {
                i8 = zzi2;
            }
            int zzi3 = zzfpVar.zzi();
            if (zzi3 <= 0) {
                i9 = -1;
            } else {
                i9 = zzi3;
            }
            int zzm2 = zzfpVar.zzm();
            int pow = (int) Math.pow(2.0d, zzm2 & 15);
            int pow2 = (int) Math.pow(2.0d, (zzm2 & 240) >> 4);
            if (1 != (zzfpVar.zzm() & 1)) {
                z = false;
            } else {
                z = true;
            }
            this.zzd = new zzaef(zzj, zzm, zzj2, i7, i8, i9, pow, pow2, z, Arrays.copyOf(zzfpVar.zzM(), zzfpVar.zze()));
        } else {
            zzaed zzaedVar = this.zze;
            if (zzaedVar == null) {
                this.zze = zzaeg.zzc(zzfpVar, true, true);
            } else {
                byte[] bArr = new byte[zzfpVar.zze()];
                System.arraycopy(zzfpVar.zzM(), 0, bArr, 0, zzfpVar.zze());
                int i11 = zzaefVar.zza;
                int i12 = 5;
                zzaeg.zzd(5, zzfpVar, false);
                int zzm3 = zzfpVar.zzm() + 1;
                zzaec zzaecVar = new zzaec(zzfpVar.zzM());
                zzaecVar.zzc(zzfpVar.zzd() * 8);
                int i13 = 0;
                while (true) {
                    int i14 = 16;
                    if (i13 < zzm3) {
                        if (zzaecVar.zzb(24) == 5653314) {
                            int zzb = zzaecVar.zzb(16);
                            int zzb2 = zzaecVar.zzb(24);
                            if (!zzaecVar.zzd()) {
                                boolean zzd = zzaecVar.zzd();
                                for (int i15 = 0; i15 < zzb2; i15++) {
                                    if (zzd) {
                                        if (zzaecVar.zzd()) {
                                            zzaecVar.zzc(5);
                                        }
                                    } else {
                                        zzaecVar.zzc(5);
                                    }
                                }
                            } else {
                                zzaecVar.zzc(5);
                                for (int i16 = 0; i16 < zzb2; i16 += zzaecVar.zzb(zzaeg.zza(zzb2 - i16))) {
                                }
                            }
                            int zzb3 = zzaecVar.zzb(i10);
                            if (zzb3 <= 2) {
                                if (zzb3 != 1) {
                                    if (zzb3 == 2) {
                                        zzb3 = 2;
                                    } else {
                                        i6 = i11;
                                        i13++;
                                        i11 = i6;
                                        i10 = 4;
                                    }
                                }
                                zzaecVar.zzc(32);
                                zzaecVar.zzc(32);
                                int zzb4 = zzaecVar.zzb(i10) + 1;
                                zzaecVar.zzc(1);
                                if (zzb3 == 1) {
                                    if (zzb != 0) {
                                        i6 = i11;
                                        j2 = (long) Math.floor(Math.pow(zzb2, 1.0d / zzb));
                                    } else {
                                        i6 = i11;
                                        j2 = 0;
                                    }
                                } else {
                                    i6 = i11;
                                    j2 = zzb2 * zzb;
                                }
                                zzaecVar.zzc((int) (j2 * zzb4));
                                i13++;
                                i11 = i6;
                                i10 = 4;
                            } else {
                                throw zzcc.zza(new ObfuscatedString(new long[]{-7611540250501380635L, 7843297540250872573L, 7848246099119223943L, -4265433432284511814L, -9116006369698905444L, -7409016361218712086L, 2881123712809370205L}).toString() + zzb3, null);
                            }
                        } else {
                            throw zzcc.zza(new ObfuscatedString(new long[]{4024650032963792591L, -481198552512986335L, -2311234994619558948L, 8729525301239415587L, 7298158900696646936L, -263218104631357022L, -3492355674675552470L, 6261016351912541664L}).toString() + zzaecVar.zza(), null);
                        }
                    } else {
                        int i17 = i11;
                        int i18 = 6;
                        int zzb5 = zzaecVar.zzb(6) + 1;
                        for (int i19 = 0; i19 < zzb5; i19++) {
                            if (zzaecVar.zzb(16) != 0) {
                                throw zzcc.zza(new ObfuscatedString(new long[]{5397911038064137113L, -8209051511993508293L, 3512860224428936715L, 1173662515116923811L, -5880838389593673953L, -6303593509373710655L, -1310320283267968711L, 7070587356686749460L}).toString(), null);
                            }
                        }
                        int zzb6 = zzaecVar.zzb(6) + 1;
                        int i20 = 0;
                        while (i20 < zzb6) {
                            int zzb7 = zzaecVar.zzb(i14);
                            if (zzb7 != 0) {
                                if (zzb7 == 1) {
                                    int zzb8 = zzaecVar.zzb(i12);
                                    int[] iArr = new int[zzb8];
                                    int i21 = -1;
                                    for (int i22 = 0; i22 < zzb8; i22++) {
                                        int zzb9 = zzaecVar.zzb(4);
                                        iArr[i22] = zzb9;
                                        if (zzb9 > i21) {
                                            i21 = zzb9;
                                        }
                                    }
                                    int i23 = i21 + 1;
                                    int[] iArr2 = new int[i23];
                                    int i24 = 0;
                                    while (i24 < i23) {
                                        iArr2[i24] = zzaecVar.zzb(3) + 1;
                                        int zzb10 = zzaecVar.zzb(2);
                                        if (zzb10 > 0) {
                                            i5 = 8;
                                            zzaecVar.zzc(8);
                                        } else {
                                            i5 = 8;
                                        }
                                        int i25 = zzb6;
                                        int i26 = 0;
                                        while (i26 < (1 << zzb10)) {
                                            zzaecVar.zzc(i5);
                                            i26++;
                                            i5 = 8;
                                        }
                                        i24++;
                                        zzb6 = i25;
                                    }
                                    i4 = zzb6;
                                    zzaecVar.zzc(2);
                                    int zzb11 = zzaecVar.zzb(4);
                                    int i27 = 0;
                                    int i28 = 0;
                                    for (int i29 = 0; i29 < zzb8; i29++) {
                                        i27 += iArr2[iArr[i29]];
                                        while (i28 < i27) {
                                            zzaecVar.zzc(zzb11);
                                            i28++;
                                        }
                                    }
                                } else {
                                    throw zzcc.zza(new ObfuscatedString(new long[]{-8439447696067181302L, 442577101878808893L, 7233869953492271815L, -510589952372340462L, 8799961332250032513L, -4067826859218860072L, -8889150844345911586L}).toString() + zzb7, null);
                                }
                            } else {
                                i4 = zzb6;
                                int i30 = 8;
                                zzaecVar.zzc(8);
                                zzaecVar.zzc(16);
                                zzaecVar.zzc(16);
                                zzaecVar.zzc(6);
                                zzaecVar.zzc(8);
                                int zzb12 = zzaecVar.zzb(4) + 1;
                                int i31 = 0;
                                while (i31 < zzb12) {
                                    zzaecVar.zzc(i30);
                                    i31++;
                                    i30 = 8;
                                }
                            }
                            i20++;
                            zzb6 = i4;
                            i18 = 6;
                            i14 = 16;
                            i12 = 5;
                        }
                        int zzb13 = zzaecVar.zzb(i18) + 1;
                        int i32 = 0;
                        while (i32 < zzb13) {
                            if (zzaecVar.zzb(16) <= 2) {
                                zzaecVar.zzc(24);
                                zzaecVar.zzc(24);
                                zzaecVar.zzc(24);
                                int zzb14 = zzaecVar.zzb(i18) + 1;
                                int i33 = 8;
                                zzaecVar.zzc(8);
                                int[] iArr3 = new int[zzb14];
                                for (int i34 = 0; i34 < zzb14; i34++) {
                                    int zzb15 = zzaecVar.zzb(3);
                                    if (zzaecVar.zzd()) {
                                        i3 = zzaecVar.zzb(5);
                                    } else {
                                        i3 = 0;
                                    }
                                    iArr3[i34] = (i3 * 8) + zzb15;
                                }
                                int i35 = 0;
                                while (i35 < zzb14) {
                                    int i36 = 0;
                                    while (i36 < i33) {
                                        if ((iArr3[i35] & (1 << i36)) != 0) {
                                            zzaecVar.zzc(i33);
                                        }
                                        i36++;
                                        i33 = 8;
                                    }
                                    i35++;
                                    i33 = 8;
                                }
                                i32++;
                                i18 = 6;
                            } else {
                                throw zzcc.zza(new ObfuscatedString(new long[]{-7509238638146797955L, 3709079695250191440L, 270487723612472349L, 8182975202085860579L, 713891682248022059L, 6984071376906234024L, -824267563623915394L}).toString(), null);
                            }
                        }
                        int zzb16 = zzaecVar.zzb(i18) + 1;
                        int i37 = 0;
                        while (i37 < zzb16) {
                            int zzb17 = zzaecVar.zzb(16);
                            if (zzb17 != 0) {
                                zzff.zzc(new ObfuscatedString(new long[]{-2133706061298363374L, 6716787467800897417L, -1053713257484675842L}).toString(), AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{550884261312090282L, 1338357502514342785L, -1734768400717759876L, 2569156818980843169L, 8485061620447710491L, -690294976864903300L, 923875109116254239L}), new StringBuilder(), zzb17));
                                i2 = i17;
                            } else {
                                if (zzaecVar.zzd()) {
                                    i = zzaecVar.zzb(4) + 1;
                                } else {
                                    i = 1;
                                }
                                if (zzaecVar.zzd()) {
                                    int zzb18 = zzaecVar.zzb(8) + 1;
                                    for (int i38 = 0; i38 < zzb18; i38++) {
                                        int i39 = i17 - 1;
                                        zzaecVar.zzc(zzaeg.zza(i39));
                                        zzaecVar.zzc(zzaeg.zza(i39));
                                    }
                                }
                                if (zzaecVar.zzb(2) == 0) {
                                    if (i > 1) {
                                        i2 = i17;
                                        for (int i40 = 0; i40 < i2; i40++) {
                                            zzaecVar.zzc(4);
                                        }
                                    } else {
                                        i2 = i17;
                                    }
                                    for (int i41 = 0; i41 < i; i41++) {
                                        zzaecVar.zzc(8);
                                        zzaecVar.zzc(8);
                                        zzaecVar.zzc(8);
                                    }
                                } else {
                                    throw zzcc.zza(new ObfuscatedString(new long[]{-2239210674269045063L, -5203830107232063963L, 3674825114175236013L, 6345040094973824307L, -313492824576309656L, -4409965395542472496L, 7345426633673815699L, -7112261584503969286L, -6530052612411770100L}).toString(), null);
                                }
                            }
                            i37++;
                            i17 = i2;
                        }
                        int zzb19 = zzaecVar.zzb(6);
                        int i42 = zzb19 + 1;
                        zzaee[] zzaeeVarArr = new zzaee[i42];
                        for (int i43 = 0; i43 < i42; i43++) {
                            zzaeeVarArr[i43] = new zzaee(zzaecVar.zzd(), zzaecVar.zzb(16), zzaecVar.zzb(16), zzaecVar.zzb(8));
                        }
                        if (zzaecVar.zzd()) {
                            zzakfVar = new zzakf(zzaefVar, zzaedVar, bArr, zzaeeVarArr, zzaeg.zza(zzb19));
                        } else {
                            throw zzcc.zza(new ObfuscatedString(new long[]{6381170219861740348L, -3627840477471829657L, -5232784211372417660L, -6493426535434546522L, 7786416861834925910L, -3941686714537031752L, -4036310012103944389L}).toString(), null);
                        }
                    }
                }
            }
        }
        zzakfVar = null;
        this.zza = zzakfVar;
        if (zzakfVar == null) {
            return true;
        }
        ArrayList arrayList = new ArrayList();
        zzaef zzaefVar2 = zzakfVar.zza;
        arrayList.add(zzaefVar2.zzg);
        arrayList.add(zzakfVar.zzc);
        zzby zzb20 = zzaeg.zzb(zzgaa.zzk(zzakfVar.zzb.zzb));
        zzak zzakVar = new zzak();
        zzakVar.zzW(new ObfuscatedString(new long[]{-9100895668319241966L, 5198076027852135757L, -7266878571968132455L}).toString());
        zzakVar.zzx(zzaefVar2.zzd);
        zzakVar.zzR(zzaefVar2.zzc);
        zzakVar.zzy(zzaefVar2.zza);
        zzakVar.zzX(zzaefVar2.zzb);
        zzakVar.zzL(arrayList);
        zzakVar.zzP(zzb20);
        zzakbVar.zza = zzakVar.zzac();
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzake
    public final void zzi(long j) {
        boolean z;
        super.zzi(j);
        int i = 0;
        if (j != 0) {
            z = true;
        } else {
            z = false;
        }
        this.zzc = z;
        zzaef zzaefVar = this.zzd;
        if (zzaefVar != null) {
            i = zzaefVar.zze;
        }
        this.zzb = i;
    }
}
