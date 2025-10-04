package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0749x8313616e;
import java.nio.charset.Charset;
import java.util.Arrays;
import okio.Utf8;

/* loaded from: classes2.dex */
public final class zzfp {
    private static final char[] zza = {'\r', '\n'};
    private static final char[] zzb = {'\n'};
    private static final zzgaf zzc = zzgaf.zzr(zzfwq.zza, zzfwq.zzc, zzfwq.zzf, zzfwq.zzd, zzfwq.zze);
    private byte[] zzd;
    private int zze;
    private int zzf;

    public zzfp(byte[] bArr, int i) {
        this.zzd = bArr;
        this.zzf = i;
    }

    private final char zzN(Charset charset, char[] cArr) {
        int zzO = zzO(charset);
        if (zzO != 0) {
            int i = zzO >> 16;
            for (char c : cArr) {
                char c2 = (char) i;
                if (c == c2) {
                    this.zze += (char) zzO;
                    return c2;
                }
            }
        }
        return (char) 0;
    }

    private final int zzO(Charset charset) {
        byte zza2;
        char zzb2;
        int i = 1;
        if (charset.equals(zzfwq.zzc) || charset.equals(zzfwq.zza)) {
            if (this.zzf - this.zze > 0) {
                zza2 = (byte) zzgct.zza(this.zzd[r2] & 255);
                return (zzgct.zza(zza2) << 16) + i;
            }
        }
        if (charset.equals(zzfwq.zzf) || charset.equals(zzfwq.zzd)) {
            int i2 = this.zzf;
            int i3 = this.zze;
            if (i2 - i3 >= 2) {
                byte[] bArr = this.zzd;
                zzb2 = zzgct.zzb(bArr[i3], bArr[i3 + 1]);
                zza2 = (byte) zzb2;
                i = 2;
                return (zzgct.zza(zza2) << 16) + i;
            }
        }
        if (charset.equals(zzfwq.zze)) {
            int i4 = this.zzf;
            int i5 = this.zze;
            if (i4 - i5 >= 2) {
                byte[] bArr2 = this.zzd;
                zzb2 = zzgct.zzb(bArr2[i5 + 1], bArr2[i5]);
                zza2 = (byte) zzb2;
                i = 2;
                return (zzgct.zza(zza2) << 16) + i;
            }
            return 0;
        }
        return 0;
    }

    public final String zzA(int i, Charset charset) {
        byte[] bArr = this.zzd;
        int i2 = this.zze;
        String str = new String(bArr, i2, i, charset);
        this.zze = i2 + i;
        return str;
    }

    @Nullable
    public final Charset zzB() {
        int i = this.zzf;
        int i2 = this.zze;
        int i3 = i - i2;
        if (i3 >= 3) {
            byte[] bArr = this.zzd;
            if (bArr[i2] == -17 && bArr[i2 + 1] == -69 && bArr[i2 + 2] == -65) {
                this.zze = i2 + 3;
                return zzfwq.zzc;
            }
        }
        if (i3 >= 2) {
            byte[] bArr2 = this.zzd;
            byte b = bArr2[i2];
            if (b == -2) {
                if (bArr2[i2 + 1] == -1) {
                    this.zze = i2 + 2;
                    return zzfwq.zzd;
                }
                return null;
            }
            if (b == -1 && bArr2[i2 + 1] == -2) {
                this.zze = i2 + 2;
                return zzfwq.zze;
            }
            return null;
        }
        return null;
    }

    public final short zzC() {
        byte[] bArr = this.zzd;
        int i = this.zze;
        int i2 = i + 1;
        this.zze = i2;
        int i3 = bArr[i] & 255;
        this.zze = i + 2;
        return (short) (((bArr[i2] & 255) << 8) | i3);
    }

    public final short zzD() {
        byte[] bArr = this.zzd;
        int i = this.zze;
        int i2 = i + 1;
        this.zze = i2;
        int i3 = bArr[i] & 255;
        this.zze = i + 2;
        return (short) ((bArr[i2] & 255) | (i3 << 8));
    }

    public final void zzE(int i) {
        byte[] bArr = this.zzd;
        if (i > bArr.length) {
            this.zzd = Arrays.copyOf(bArr, i);
        }
    }

    public final void zzF(zzfo zzfoVar, int i) {
        zzG(zzfoVar.zza, 0, i);
        zzfoVar.zzk(0);
    }

    public final void zzG(byte[] bArr, int i, int i2) {
        System.arraycopy(this.zzd, this.zze, bArr, i, i2);
        this.zze += i2;
    }

    public final void zzH(int i) {
        byte[] bArr = this.zzd;
        if (bArr.length < i) {
            bArr = new byte[i];
        }
        zzI(bArr, i);
    }

    public final void zzI(byte[] bArr, int i) {
        this.zzd = bArr;
        this.zzf = i;
        this.zze = 0;
    }

    public final void zzJ(int i) {
        boolean z = false;
        if (i >= 0 && i <= this.zzd.length) {
            z = true;
        }
        zzek.zzd(z);
        this.zzf = i;
    }

    public final void zzK(int i) {
        boolean z = false;
        if (i >= 0 && i <= this.zzf) {
            z = true;
        }
        zzek.zzd(z);
        this.zze = i;
    }

    public final void zzL(int i) {
        zzK(this.zze + i);
    }

    public final byte[] zzM() {
        return this.zzd;
    }

    public final char zza(Charset charset) {
        zzek.zze(zzc.contains(charset), new ObfuscatedString(new long[]{6485386726937809189L, -6430646274048273605L, 6920464032501225789L, -2799615646283362628L}).toString().concat(String.valueOf(charset)));
        return (char) (zzO(charset) >> 16);
    }

    public final int zzb() {
        return this.zzf - this.zze;
    }

    public final int zzc() {
        return this.zzd.length;
    }

    public final int zzd() {
        return this.zze;
    }

    public final int zze() {
        return this.zzf;
    }

    public final int zzf() {
        return this.zzd[this.zze] & 255;
    }

    public final int zzg() {
        byte[] bArr = this.zzd;
        int i = this.zze;
        int i2 = i + 1;
        this.zze = i2;
        int i3 = bArr[i] & 255;
        int i4 = i + 2;
        this.zze = i4;
        int i5 = bArr[i2] & 255;
        int i6 = i + 3;
        this.zze = i6;
        int i7 = bArr[i4] & 255;
        this.zze = i + 4;
        return (bArr[i6] & 255) | (i3 << 24) | (i5 << 16) | (i7 << 8);
    }

    public final int zzh() {
        byte[] bArr = this.zzd;
        int i = this.zze;
        int i2 = i + 1;
        this.zze = i2;
        int i3 = bArr[i] & 255;
        int i4 = i + 2;
        this.zze = i4;
        int i5 = bArr[i2] & 255;
        this.zze = i + 3;
        return (bArr[i4] & 255) | ((i3 << 24) >> 8) | (i5 << 8);
    }

    public final int zzi() {
        byte[] bArr = this.zzd;
        int i = this.zze;
        int i2 = i + 1;
        this.zze = i2;
        int i3 = bArr[i] & 255;
        int i4 = i + 2;
        this.zze = i4;
        int i5 = bArr[i2] & 255;
        int i6 = i + 3;
        this.zze = i6;
        int i7 = bArr[i4] & 255;
        this.zze = i + 4;
        return ((bArr[i6] & 255) << 24) | (i5 << 8) | i3 | (i7 << 16);
    }

    public final int zzj() {
        int zzi = zzi();
        if (zzi >= 0) {
            return zzi;
        }
        throw new IllegalStateException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{2963522288869007096L, -5463931915261526308L, -4461351432003495581L, 7610787884645281968L}), new StringBuilder(), zzi));
    }

    public final int zzk() {
        byte[] bArr = this.zzd;
        int i = this.zze;
        int i2 = i + 1;
        this.zze = i2;
        int i3 = bArr[i] & 255;
        this.zze = i + 2;
        return ((bArr[i2] & 255) << 8) | i3;
    }

    public final int zzl() {
        return (zzm() << 21) | (zzm() << 14) | (zzm() << 7) | zzm();
    }

    public final int zzm() {
        byte[] bArr = this.zzd;
        int i = this.zze;
        this.zze = i + 1;
        return bArr[i] & 255;
    }

    public final int zzn() {
        byte[] bArr = this.zzd;
        int i = this.zze;
        int i2 = i + 1;
        this.zze = i2;
        int i3 = bArr[i] & 255;
        this.zze = i + 2;
        int i4 = bArr[i2] & 255;
        this.zze = i + 4;
        return i4 | (i3 << 8);
    }

    public final int zzo() {
        byte[] bArr = this.zzd;
        int i = this.zze;
        int i2 = i + 1;
        this.zze = i2;
        int i3 = bArr[i] & 255;
        int i4 = i + 2;
        this.zze = i4;
        int i5 = bArr[i2] & 255;
        this.zze = i + 3;
        return (bArr[i4] & 255) | (i3 << 16) | (i5 << 8);
    }

    public final int zzp() {
        int zzg = zzg();
        if (zzg >= 0) {
            return zzg;
        }
        throw new IllegalStateException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{8204611685575516283L, -1503666619899328840L, 958503222244950708L, -1310250030164277927L}), new StringBuilder(), zzg));
    }

    public final int zzq() {
        byte[] bArr = this.zzd;
        int i = this.zze;
        int i2 = i + 1;
        this.zze = i2;
        int i3 = bArr[i] & 255;
        this.zze = i + 2;
        return (bArr[i2] & 255) | (i3 << 8);
    }

    public final long zzr() {
        byte[] bArr = this.zzd;
        int i = this.zze;
        int i2 = i + 1;
        this.zze = i2;
        long j = bArr[i];
        int i3 = i + 2;
        this.zze = i3;
        long j2 = bArr[i2];
        int i4 = i + 3;
        this.zze = i4;
        long j3 = bArr[i3];
        int i5 = i + 4;
        this.zze = i5;
        long j4 = bArr[i4];
        int i6 = i + 5;
        this.zze = i6;
        long j5 = bArr[i5];
        int i7 = i + 6;
        this.zze = i7;
        long j6 = bArr[i6];
        this.zze = i + 7;
        long j7 = bArr[i7];
        this.zze = i + 8;
        return ((bArr[r5] & 255) << 56) | ((j7 & 255) << 48) | ((j2 & 255) << 8) | (j & 255) | ((j3 & 255) << 16) | ((j4 & 255) << 24) | ((j5 & 255) << 32) | ((j6 & 255) << 40);
    }

    public final long zzs() {
        byte[] bArr = this.zzd;
        int i = this.zze;
        int i2 = i + 1;
        this.zze = i2;
        long j = bArr[i];
        int i3 = i + 2;
        this.zze = i3;
        long j2 = bArr[i2];
        this.zze = i + 3;
        long j3 = bArr[i3];
        this.zze = i + 4;
        return ((bArr[r2] & 255) << 24) | (j & 255) | ((j2 & 255) << 8) | ((j3 & 255) << 16);
    }

    public final long zzt() {
        byte[] bArr = this.zzd;
        int i = this.zze;
        int i2 = i + 1;
        this.zze = i2;
        long j = bArr[i];
        int i3 = i + 2;
        this.zze = i3;
        long j2 = bArr[i2];
        int i4 = i + 3;
        this.zze = i4;
        long j3 = bArr[i3];
        int i5 = i + 4;
        this.zze = i5;
        long j4 = bArr[i4];
        int i6 = i + 5;
        this.zze = i6;
        long j5 = bArr[i5];
        int i7 = i + 6;
        this.zze = i7;
        long j6 = bArr[i6];
        this.zze = i + 7;
        long j7 = bArr[i7];
        this.zze = i + 8;
        return (bArr[r3] & 255) | ((j & 255) << 56) | ((j2 & 255) << 48) | ((j3 & 255) << 40) | ((j4 & 255) << 32) | ((j5 & 255) << 24) | ((j6 & 255) << 16) | ((j7 & 255) << 8);
    }

    public final long zzu() {
        byte[] bArr = this.zzd;
        int i = this.zze;
        int i2 = i + 1;
        this.zze = i2;
        long j = bArr[i];
        int i3 = i + 2;
        this.zze = i3;
        long j2 = bArr[i2];
        this.zze = i + 3;
        long j3 = bArr[i3];
        this.zze = i + 4;
        return (bArr[r2] & 255) | ((j & 255) << 24) | ((j2 & 255) << 16) | ((j3 & 255) << 8);
    }

    public final long zzv() {
        long zzt = zzt();
        if (zzt >= 0) {
            return zzt;
        }
        throw new IllegalStateException(AbstractC0362x4440ab85.m2930x9e171bf9(new ObfuscatedString(new long[]{5724330859794565317L, -2055102094990624759L, -4680712605051521150L, 4151490497871342241L}), new StringBuilder(), zzt));
    }

    public final long zzw() {
        int i;
        long j = this.zzd[this.zze];
        int i2 = 7;
        while (true) {
            i = 0;
            if (i2 < 0) {
                break;
            }
            if (((1 << i2) & j) != 0) {
                i2--;
            } else if (i2 < 6) {
                j &= r7 - 1;
                i = 7 - i2;
            } else if (i2 == 7) {
                i = 1;
            }
        }
        if (i != 0) {
            for (int i3 = 1; i3 < i; i3++) {
                if ((this.zzd[this.zze + i3] & 192) == 128) {
                    j = (j << 6) | (r7 & Utf8.REPLACEMENT_BYTE);
                } else {
                    throw new NumberFormatException(AbstractC0362x4440ab85.m2930x9e171bf9(new ObfuscatedString(new long[]{3385095700512588369L, 2480428002901694617L, -3501573377298826661L, -3165474774535431299L, -5367902738142350523L, -946443544636855282L, 1445212652282404373L}), new StringBuilder(), j));
                }
            }
            this.zze += i;
            return j;
        }
        throw new NumberFormatException(AbstractC0362x4440ab85.m2930x9e171bf9(new ObfuscatedString(new long[]{8074553211546061109L, -7205919519455031619L, 4435311718485175802L, 2771784127336432627L, -4434011947275859289L, -6602527987651375049L}), new StringBuilder(), j));
    }

    @Nullable
    public final String zzx(char c) {
        int i = this.zzf;
        int i2 = this.zze;
        if (i - i2 != 0) {
            while (i2 < this.zzf && this.zzd[i2] != 0) {
                i2++;
            }
            byte[] bArr = this.zzd;
            int i3 = this.zze;
            String zzA = zzfy.zzA(bArr, i3, i2 - i3);
            this.zze = i2;
            if (i2 < this.zzf) {
                this.zze = i2 + 1;
            }
            return zzA;
        }
        return null;
    }

    @Nullable
    public final String zzy(Charset charset) {
        int i;
        zzek.zze(zzc.contains(charset), new ObfuscatedString(new long[]{-7937582217356508581L, -2232046246955514L, 1827249135311307757L, 462054810064046714L}).toString().concat(String.valueOf(charset)));
        if (this.zzf - this.zze == 0) {
            return null;
        }
        Charset charset2 = zzfwq.zza;
        if (!charset.equals(charset2)) {
            zzB();
        }
        if (charset.equals(zzfwq.zzc) || charset.equals(charset2)) {
            i = 1;
        } else {
            i = 2;
            if (!charset.equals(zzfwq.zzf) && !charset.equals(zzfwq.zze) && !charset.equals(zzfwq.zzd)) {
                throw new IllegalArgumentException(new ObfuscatedString(new long[]{-2948206724728814117L, 5679026231604686606L, 454586839075847627L, -4545124090845650335L}).toString().concat(String.valueOf(charset)));
            }
        }
        int i2 = this.zze;
        while (true) {
            int i3 = this.zzf;
            if (i2 < i3 - (i - 1)) {
                if ((charset.equals(zzfwq.zzc) || charset.equals(zzfwq.zza)) && zzfy.zzI(this.zzd[i2])) {
                    break;
                }
                if (charset.equals(zzfwq.zzf) || charset.equals(zzfwq.zzd)) {
                    byte[] bArr = this.zzd;
                    if (bArr[i2] == 0 && zzfy.zzI(bArr[i2 + 1])) {
                        break;
                    }
                }
                if (charset.equals(zzfwq.zze)) {
                    byte[] bArr2 = this.zzd;
                    if (bArr2[i2 + 1] == 0 && zzfy.zzI(bArr2[i2])) {
                        break;
                    }
                }
                i2 += i;
            } else {
                i2 = i3;
                break;
            }
        }
        String zzA = zzA(i2 - this.zze, charset);
        if (this.zze != this.zzf && zzN(charset, zza) == '\r') {
            zzN(charset, zzb);
        }
        return zzA;
    }

    public final String zzz(int i) {
        int i2;
        if (i == 0) {
            return new ObfuscatedString(new long[]{4261859218354060372L}).toString();
        }
        int i3 = this.zze;
        int i4 = (i3 + i) - 1;
        if (i4 < this.zzf && this.zzd[i4] == 0) {
            i2 = i - 1;
        } else {
            i2 = i;
        }
        String zzA = zzfy.zzA(this.zzd, i3, i2);
        this.zze += i;
        return zzA;
    }

    public zzfp() {
        this.zzd = zzfy.zzf;
    }

    public zzfp(int i) {
        this.zzd = new byte[i];
        this.zzf = i;
    }

    public zzfp(byte[] bArr) {
        this.zzd = bArr;
        this.zzf = bArr.length;
    }
}
