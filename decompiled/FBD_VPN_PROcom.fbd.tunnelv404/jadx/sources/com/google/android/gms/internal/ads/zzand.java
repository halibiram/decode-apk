package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import java.util.Arrays;
import java.util.Collections;

/* loaded from: classes2.dex */
public final class zzand implements zzamy {
    private static final float[] zza = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 1.0f};

    @Nullable
    private final zzaon zzb;

    @Nullable
    private final zzfp zzc;
    private final boolean[] zzd;
    private final zzanb zze;

    @Nullable
    private final zzann zzf;
    private zzanc zzg;
    private long zzh;
    private String zzi;
    private zzaea zzj;
    private boolean zzk;
    private long zzl;

    public zzand() {
        this(null);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0114  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x014f  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0187  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0211  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x021f  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0241  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0255  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0216  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x01b9  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0173  */
    @Override // com.google.android.gms.internal.ads.zzamy
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zza(zzfp zzfpVar) {
        int i;
        int i2;
        int i3;
        float f;
        float f2;
        int i4 = 4;
        zzek.zzb(this.zzg);
        zzek.zzb(this.zzj);
        int zzd = zzfpVar.zzd();
        int zze = zzfpVar.zze();
        byte[] zzM = zzfpVar.zzM();
        this.zzh += zzfpVar.zzb();
        this.zzj.zzr(zzfpVar, zzfpVar.zzb());
        while (true) {
            int zza2 = zzgm.zza(zzM, zzd, zze, this.zzd);
            if (zza2 == zze) {
                break;
            }
            int i5 = zza2 + 3;
            int i6 = zzfpVar.zzM()[i5] & 255;
            int i7 = zza2 - zzd;
            if (!this.zzk) {
                if (i7 > 0) {
                    this.zze.zza(zzM, zzd, zza2);
                }
                if (i7 < 0) {
                    i3 = -i7;
                } else {
                    i3 = 0;
                }
                if (this.zze.zzc(i6, i3)) {
                    zzaea zzaeaVar = this.zzj;
                    zzanb zzanbVar = this.zze;
                    int i8 = zzanbVar.zzb;
                    String str = this.zzi;
                    str.getClass();
                    byte[] copyOf = Arrays.copyOf(zzanbVar.zzc, zzanbVar.zza);
                    zzfo zzfoVar = new zzfo(copyOf, copyOf.length);
                    zzfoVar.zzn(i8);
                    zzfoVar.zzn(i4);
                    zzfoVar.zzl();
                    zzfoVar.zzm(8);
                    if (zzfoVar.zzo()) {
                        zzfoVar.zzm(i4);
                        zzfoVar.zzm(3);
                    }
                    int zzd2 = zzfoVar.zzd(i4);
                    if (zzd2 == 15) {
                        int zzd3 = zzfoVar.zzd(8);
                        int zzd4 = zzfoVar.zzd(8);
                        if (zzd4 == 0) {
                            zzff.zzf(new ObfuscatedString(new long[]{7453744630913453289L, -3611279958331039614L, 776758860233625792L}).toString(), new ObfuscatedString(new long[]{-8586852823137645377L, -5552682471955432415L, -5496356216579357489L, -8279759569743709622L}).toString());
                            f = 1.0f;
                            if (zzfoVar.zzo()) {
                                zzfoVar.zzm(2);
                                zzfoVar.zzm(1);
                                if (zzfoVar.zzo()) {
                                    zzfoVar.zzm(15);
                                    zzfoVar.zzl();
                                    zzfoVar.zzm(15);
                                    zzfoVar.zzl();
                                    zzfoVar.zzm(15);
                                    zzfoVar.zzl();
                                    zzfoVar.zzm(3);
                                    zzfoVar.zzm(11);
                                    zzfoVar.zzl();
                                    zzfoVar.zzm(15);
                                    zzfoVar.zzl();
                                }
                            }
                            if (zzfoVar.zzd(2) != 0) {
                                i = i5;
                                zzff.zzf(new ObfuscatedString(new long[]{-6745835072787826311L, -1432873401346369416L, -7648876681594837351L}).toString(), new ObfuscatedString(new long[]{3515249548954703474L, 5647275030769471844L, -6688743469342651008L, -1670462559362099709L, -5432330315319905639L, 7325589236138455505L}).toString());
                            } else {
                                i = i5;
                            }
                            zzfoVar.zzl();
                            int zzd5 = zzfoVar.zzd(16);
                            zzfoVar.zzl();
                            if (zzfoVar.zzo()) {
                                if (zzd5 == 0) {
                                    zzff.zzf(new ObfuscatedString(new long[]{5175330721928347842L, 5262943685177029978L, 2637068970545195447L}).toString(), new ObfuscatedString(new long[]{3695739588147742421L, 1681643476720782667L, 3469882699816414727L, -8995569731506957962L, 3773318403957863270L, -2968243183108294071L}).toString());
                                } else {
                                    int i9 = zzd5 - 1;
                                    int i10 = 0;
                                    while (i9 > 0) {
                                        i9 >>= 1;
                                        i10++;
                                    }
                                    zzfoVar.zzm(i10);
                                }
                            }
                            zzfoVar.zzl();
                            int zzd6 = zzfoVar.zzd(13);
                            zzfoVar.zzl();
                            int zzd7 = zzfoVar.zzd(13);
                            zzfoVar.zzl();
                            zzfoVar.zzl();
                            zzak zzakVar = new zzak();
                            zzakVar.zzK(str);
                            zzakVar.zzW(new ObfuscatedString(new long[]{7946803046646204034L, -7126854847714568936L, 1076063445491456857L}).toString());
                            zzakVar.zzab(zzd6);
                            zzakVar.zzI(zzd7);
                            zzakVar.zzS(f);
                            zzakVar.zzL(Collections.singletonList(copyOf));
                            zzaeaVar.zzl(zzakVar.zzac());
                            this.zzk = true;
                            this.zzg.zza(zzM, zzd, zza2);
                            zzann zzannVar = this.zzf;
                            if (i7 <= 0) {
                                zzannVar.zza(zzM, zzd, zza2);
                                i2 = 0;
                            } else {
                                i2 = -i7;
                            }
                            if (this.zzf.zzd(i2)) {
                                zzann zzannVar2 = this.zzf;
                                int zzb = zzgm.zzb(zzannVar2.zza, zzannVar2.zzb);
                                zzfp zzfpVar2 = this.zzc;
                                int i11 = zzfy.zza;
                                zzfpVar2.zzI(this.zzf.zza, zzb);
                                this.zzb.zza(this.zzl, this.zzc);
                            }
                            if (i6 == 178) {
                                if (zzfpVar.zzM()[zza2 + 2] == 1) {
                                    this.zzf.zzc(178);
                                }
                                i6 = 178;
                            }
                            int i12 = zze - zza2;
                            this.zzg.zzb(this.zzh - i12, i12, this.zzk);
                            this.zzg.zzc(i6, this.zzl);
                            zzd = i;
                            i4 = 4;
                        } else {
                            f2 = zzd3 / zzd4;
                        }
                    } else if (zzd2 < 7) {
                        f2 = zza[zzd2];
                    } else {
                        zzff.zzf(new ObfuscatedString(new long[]{-6540724856098690880L, -3940052154642012238L, -3965771436507907754L}).toString(), new ObfuscatedString(new long[]{-2207518876082075231L, -8280990205061264940L, 5488978254187956285L, 5294373611163078899L}).toString());
                        f = 1.0f;
                        if (zzfoVar.zzo()) {
                        }
                        if (zzfoVar.zzd(2) != 0) {
                        }
                        zzfoVar.zzl();
                        int zzd52 = zzfoVar.zzd(16);
                        zzfoVar.zzl();
                        if (zzfoVar.zzo()) {
                        }
                        zzfoVar.zzl();
                        int zzd62 = zzfoVar.zzd(13);
                        zzfoVar.zzl();
                        int zzd72 = zzfoVar.zzd(13);
                        zzfoVar.zzl();
                        zzfoVar.zzl();
                        zzak zzakVar2 = new zzak();
                        zzakVar2.zzK(str);
                        zzakVar2.zzW(new ObfuscatedString(new long[]{7946803046646204034L, -7126854847714568936L, 1076063445491456857L}).toString());
                        zzakVar2.zzab(zzd62);
                        zzakVar2.zzI(zzd72);
                        zzakVar2.zzS(f);
                        zzakVar2.zzL(Collections.singletonList(copyOf));
                        zzaeaVar.zzl(zzakVar2.zzac());
                        this.zzk = true;
                        this.zzg.zza(zzM, zzd, zza2);
                        zzann zzannVar3 = this.zzf;
                        if (i7 <= 0) {
                        }
                        if (this.zzf.zzd(i2)) {
                        }
                        if (i6 == 178) {
                        }
                        int i122 = zze - zza2;
                        this.zzg.zzb(this.zzh - i122, i122, this.zzk);
                        this.zzg.zzc(i6, this.zzl);
                        zzd = i;
                        i4 = 4;
                    }
                    f = f2;
                    if (zzfoVar.zzo()) {
                    }
                    if (zzfoVar.zzd(2) != 0) {
                    }
                    zzfoVar.zzl();
                    int zzd522 = zzfoVar.zzd(16);
                    zzfoVar.zzl();
                    if (zzfoVar.zzo()) {
                    }
                    zzfoVar.zzl();
                    int zzd622 = zzfoVar.zzd(13);
                    zzfoVar.zzl();
                    int zzd722 = zzfoVar.zzd(13);
                    zzfoVar.zzl();
                    zzfoVar.zzl();
                    zzak zzakVar22 = new zzak();
                    zzakVar22.zzK(str);
                    zzakVar22.zzW(new ObfuscatedString(new long[]{7946803046646204034L, -7126854847714568936L, 1076063445491456857L}).toString());
                    zzakVar22.zzab(zzd622);
                    zzakVar22.zzI(zzd722);
                    zzakVar22.zzS(f);
                    zzakVar22.zzL(Collections.singletonList(copyOf));
                    zzaeaVar.zzl(zzakVar22.zzac());
                    this.zzk = true;
                    this.zzg.zza(zzM, zzd, zza2);
                    zzann zzannVar32 = this.zzf;
                    if (i7 <= 0) {
                    }
                    if (this.zzf.zzd(i2)) {
                    }
                    if (i6 == 178) {
                    }
                    int i1222 = zze - zza2;
                    this.zzg.zzb(this.zzh - i1222, i1222, this.zzk);
                    this.zzg.zzc(i6, this.zzl);
                    zzd = i;
                    i4 = 4;
                }
            }
            i = i5;
            this.zzg.zza(zzM, zzd, zza2);
            zzann zzannVar322 = this.zzf;
            if (i7 <= 0) {
            }
            if (this.zzf.zzd(i2)) {
            }
            if (i6 == 178) {
            }
            int i12222 = zze - zza2;
            this.zzg.zzb(this.zzh - i12222, i12222, this.zzk);
            this.zzg.zzc(i6, this.zzl);
            zzd = i;
            i4 = 4;
        }
        if (!this.zzk) {
            this.zze.zza(zzM, zzd, zze);
        }
        this.zzg.zza(zzM, zzd, zze);
        this.zzf.zza(zzM, zzd, zze);
    }

    @Override // com.google.android.gms.internal.ads.zzamy
    public final void zzb(zzacx zzacxVar, zzaok zzaokVar) {
        zzaokVar.zzc();
        this.zzi = zzaokVar.zzb();
        zzaea zzw = zzacxVar.zzw(zzaokVar.zza(), 2);
        this.zzj = zzw;
        this.zzg = new zzanc(zzw);
        this.zzb.zzb(zzacxVar, zzaokVar);
    }

    @Override // com.google.android.gms.internal.ads.zzamy
    public final void zzc(boolean z) {
        zzek.zzb(this.zzg);
        if (z) {
            this.zzg.zzb(this.zzh, 0, this.zzk);
            this.zzg.zzd();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamy
    public final void zzd(long j, int i) {
        this.zzl = j;
    }

    @Override // com.google.android.gms.internal.ads.zzamy
    public final void zze() {
        zzgm.zzf(this.zzd);
        this.zze.zzb();
        zzanc zzancVar = this.zzg;
        if (zzancVar != null) {
            zzancVar.zzd();
        }
        this.zzf.zzb();
        this.zzh = 0L;
        this.zzl = -9223372036854775807L;
    }

    public zzand(@Nullable zzaon zzaonVar) {
        this.zzb = zzaonVar;
        this.zzd = new boolean[4];
        this.zze = new zzanb(128);
        this.zzl = -9223372036854775807L;
        this.zzf = new zzann(178, 128);
        this.zzc = new zzfp();
    }
}
