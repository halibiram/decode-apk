package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzam {
    public final int zzA;
    public final int zzB;
    public final int zzC;
    public final int zzD;
    public final int zzE;
    public final int zzF;
    public final int zzG;
    private int zzao;

    @Nullable
    public final String zzb;

    @Nullable
    public final String zzc;

    @Nullable
    public final String zzd;
    public final int zze;
    public final int zzf;
    public final int zzg;
    public final int zzh;
    public final int zzi;

    @Nullable
    public final String zzj;

    @Nullable
    public final zzby zzk;

    @Nullable
    public final String zzl;

    @Nullable
    public final String zzm;
    public final int zzn;
    public final List zzo;

    @Nullable
    public final zzae zzp;
    public final long zzq;
    public final int zzr;
    public final int zzs;
    public final float zzt;
    public final int zzu;
    public final float zzv;

    @Nullable
    public final byte[] zzw;
    public final int zzx;

    @Nullable
    public final zzt zzy;
    public final int zzz;
    private static final zzam zzH = new zzam(new zzak());
    private static final String zzI = Integer.toString(0, 36);
    private static final String zzJ = Integer.toString(1, 36);
    private static final String zzK = Integer.toString(2, 36);
    private static final String zzL = Integer.toString(3, 36);
    private static final String zzM = Integer.toString(4, 36);
    private static final String zzN = Integer.toString(5, 36);
    private static final String zzO = Integer.toString(6, 36);
    private static final String zzP = Integer.toString(7, 36);
    private static final String zzQ = Integer.toString(8, 36);
    private static final String zzR = Integer.toString(9, 36);
    private static final String zzS = Integer.toString(10, 36);
    private static final String zzT = Integer.toString(11, 36);
    private static final String zzU = Integer.toString(12, 36);
    private static final String zzV = Integer.toString(13, 36);
    private static final String zzW = Integer.toString(14, 36);
    private static final String zzX = Integer.toString(15, 36);
    private static final String zzY = Integer.toString(16, 36);
    private static final String zzZ = Integer.toString(17, 36);
    private static final String zzaa = Integer.toString(18, 36);
    private static final String zzab = Integer.toString(19, 36);
    private static final String zzac = Integer.toString(20, 36);
    private static final String zzad = Integer.toString(21, 36);
    private static final String zzae = Integer.toString(22, 36);
    private static final String zzaf = Integer.toString(23, 36);
    private static final String zzag = Integer.toString(24, 36);
    private static final String zzah = Integer.toString(25, 36);
    private static final String zzai = Integer.toString(26, 36);
    private static final String zzaj = Integer.toString(27, 36);
    private static final String zzak = Integer.toString(28, 36);
    private static final String zzal = Integer.toString(29, 36);
    private static final String zzam = Integer.toString(30, 36);
    private static final String zzan = Integer.toString(31, 36);

    @Deprecated
    public static final zzn zza = new zzn() { // from class: com.google.android.gms.internal.ads.zzai
    };

    public final boolean equals(@Nullable Object obj) {
        int i;
        if (this == obj) {
            return true;
        }
        if (obj != null && zzam.class == obj.getClass()) {
            zzam zzamVar = (zzam) obj;
            int i2 = this.zzao;
            if ((i2 == 0 || (i = zzamVar.zzao) == 0 || i2 == i) && this.zze == zzamVar.zze && this.zzf == zzamVar.zzf && this.zzg == zzamVar.zzg && this.zzh == zzamVar.zzh && this.zzn == zzamVar.zzn && this.zzq == zzamVar.zzq && this.zzr == zzamVar.zzr && this.zzs == zzamVar.zzs && this.zzu == zzamVar.zzu && this.zzx == zzamVar.zzx && this.zzz == zzamVar.zzz && this.zzA == zzamVar.zzA && this.zzB == zzamVar.zzB && this.zzC == zzamVar.zzC && this.zzD == zzamVar.zzD && this.zzE == zzamVar.zzE && this.zzG == zzamVar.zzG && Float.compare(this.zzt, zzamVar.zzt) == 0 && Float.compare(this.zzv, zzamVar.zzv) == 0 && zzfy.zzF(this.zzb, zzamVar.zzb) && zzfy.zzF(this.zzc, zzamVar.zzc) && zzfy.zzF(this.zzj, zzamVar.zzj) && zzfy.zzF(this.zzl, zzamVar.zzl) && zzfy.zzF(this.zzm, zzamVar.zzm) && zzfy.zzF(this.zzd, zzamVar.zzd) && Arrays.equals(this.zzw, zzamVar.zzw) && zzfy.zzF(this.zzk, zzamVar.zzk) && zzfy.zzF(this.zzy, zzamVar.zzy) && zzfy.zzF(this.zzp, zzamVar.zzp) && zzd(zzamVar)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        int i;
        int hashCode2;
        int hashCode3;
        int hashCode4;
        int hashCode5;
        int i2 = this.zzao;
        if (i2 == 0) {
            String str = this.zzb;
            int i3 = 0;
            if (str == null) {
                hashCode = 0;
            } else {
                hashCode = str.hashCode();
            }
            String str2 = this.zzc;
            if (str2 != null) {
                i = str2.hashCode();
            } else {
                i = 0;
            }
            int i4 = hashCode + 527;
            String str3 = this.zzd;
            if (str3 == null) {
                hashCode2 = 0;
            } else {
                hashCode2 = str3.hashCode();
            }
            int i5 = (i4 * 31) + i;
            int i6 = this.zze;
            int i7 = this.zzf;
            int i8 = this.zzg;
            int i9 = this.zzh;
            String str4 = this.zzj;
            if (str4 == null) {
                hashCode3 = 0;
            } else {
                hashCode3 = str4.hashCode();
            }
            int i10 = ((((((((((((i5 * 31) + hashCode2) * 31) + i6) * 31) + i7) * 31) + i8) * 31) + i9) * 31) + hashCode3) * 31;
            zzby zzbyVar = this.zzk;
            if (zzbyVar == null) {
                hashCode4 = 0;
            } else {
                hashCode4 = zzbyVar.hashCode();
            }
            int i11 = (i10 + hashCode4) * 31;
            String str5 = this.zzl;
            if (str5 == null) {
                hashCode5 = 0;
            } else {
                hashCode5 = str5.hashCode();
            }
            int i12 = (i11 + hashCode5) * 31;
            String str6 = this.zzm;
            if (str6 != null) {
                i3 = str6.hashCode();
            }
            int floatToIntBits = ((((((((((((((((((((Float.floatToIntBits(this.zzv) + ((((Float.floatToIntBits(this.zzt) + ((((((((((i12 + i3) * 31) + this.zzn) * 31) + ((int) this.zzq)) * 31) + this.zzr) * 31) + this.zzs) * 31)) * 31) + this.zzu) * 31)) * 31) + this.zzx) * 31) + this.zzz) * 31) + this.zzA) * 31) + this.zzB) * 31) + this.zzC) * 31) + this.zzD) * 31) + this.zzE) * 31) - 1) * 31) - 1) * 31) + this.zzG;
            this.zzao = floatToIntBits;
            return floatToIntBits;
        }
        return i2;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.zzy);
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{518524092117367645L, 182137516863067477L}).toString());
        sb.append(this.zzb);
        sb.append(new ObfuscatedString(new long[]{4413439326437301631L, -3633011996022329612L}).toString());
        sb.append(this.zzc);
        sb.append(new ObfuscatedString(new long[]{3764984697504089152L, 5407406670364525569L}).toString());
        sb.append(this.zzl);
        sb.append(new ObfuscatedString(new long[]{-5798471716166372940L, -564954091048075330L}).toString());
        sb.append(this.zzm);
        sb.append(new ObfuscatedString(new long[]{-7043247206887195302L, -1884448702504180374L}).toString());
        sb.append(this.zzj);
        sb.append(new ObfuscatedString(new long[]{334640153158178224L, -2929119092755641767L}).toString());
        sb.append(this.zzi);
        sb.append(new ObfuscatedString(new long[]{-1349672411869216256L, 365071939894459187L}).toString());
        sb.append(this.zzd);
        sb.append(new ObfuscatedString(new long[]{8449883280053302044L, 3611881309711913179L}).toString());
        sb.append(this.zzr);
        sb.append(new ObfuscatedString(new long[]{-4553137099059252255L, 8961988482743181099L}).toString());
        sb.append(this.zzs);
        sb.append(new ObfuscatedString(new long[]{-1440530443196564427L, -9092550910367322247L}).toString());
        sb.append(this.zzt);
        sb.append(new ObfuscatedString(new long[]{674707234011241353L, -1115145074412862274L}).toString());
        sb.append(valueOf);
        sb.append(new ObfuscatedString(new long[]{-2448303755290985799L, 6847876683092925577L}).toString());
        sb.append(this.zzz);
        sb.append(new ObfuscatedString(new long[]{8057792788302484129L, -7336057868105113335L}).toString());
        sb.append(this.zzA);
        return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-4233549627218826962L, -6123745484123105726L}), sb);
    }

    public final int zza() {
        int i;
        int i2 = this.zzr;
        if (i2 == -1 || (i = this.zzs) == -1) {
            return -1;
        }
        return i2 * i;
    }

    public final zzak zzb() {
        return new zzak(this, null);
    }

    public final zzam zzc(int i) {
        zzak zzakVar = new zzak(this, null);
        zzakVar.zzC(i);
        return new zzam(zzakVar);
    }

    public final boolean zzd(zzam zzamVar) {
        if (this.zzo.size() != zzamVar.zzo.size()) {
            return false;
        }
        for (int i = 0; i < this.zzo.size(); i++) {
            if (!Arrays.equals((byte[]) this.zzo.get(i), (byte[]) zzamVar.zzo.get(i))) {
                return false;
            }
        }
        return true;
    }

    private zzam(zzak zzakVar) {
        this.zzb = zzak.zzag(zzakVar);
        this.zzc = zzak.zzah(zzakVar);
        this.zzd = zzfy.zzC(zzak.zzai(zzakVar));
        this.zze = zzak.zzq(zzakVar);
        this.zzf = zzak.zzn(zzakVar);
        int zzd = zzak.zzd(zzakVar);
        this.zzg = zzd;
        int zzm = zzak.zzm(zzakVar);
        this.zzh = zzm;
        this.zzi = zzm != -1 ? zzm : zzd;
        this.zzj = zzak.zzae(zzakVar);
        this.zzk = zzak.zzad(zzakVar);
        this.zzl = zzak.zzaf(zzakVar);
        this.zzm = zzak.zzaj(zzakVar);
        this.zzn = zzak.zzk(zzakVar);
        this.zzo = zzak.zzak(zzakVar) == null ? Collections.emptyList() : zzak.zzak(zzakVar);
        zzae zzv = zzak.zzv(zzakVar);
        this.zzp = zzv;
        this.zzq = zzak.zzt(zzakVar);
        this.zzr = zzak.zzs(zzakVar);
        this.zzs = zzak.zzj(zzakVar);
        this.zzt = zzak.zza(zzakVar);
        this.zzu = zzak.zzo(zzakVar) == -1 ? 0 : zzak.zzo(zzakVar);
        this.zzv = zzak.zzb(zzakVar) == -1.0f ? 1.0f : zzak.zzb(zzakVar);
        this.zzw = zzak.zzal(zzakVar);
        this.zzx = zzak.zzr(zzakVar);
        this.zzy = zzak.zzu(zzakVar);
        this.zzz = zzak.zze(zzakVar);
        this.zzA = zzak.zzp(zzakVar);
        this.zzB = zzak.zzl(zzakVar);
        this.zzC = zzak.zzh(zzakVar) == -1 ? 0 : zzak.zzh(zzakVar);
        this.zzD = zzak.zzi(zzakVar) != -1 ? zzak.zzi(zzakVar) : 0;
        this.zzE = zzak.zzc(zzakVar);
        this.zzF = zzak.zzg(zzakVar);
        this.zzG = (zzak.zzf(zzakVar) != 0 || zzv == null) ? zzak.zzf(zzakVar) : 1;
    }
}
