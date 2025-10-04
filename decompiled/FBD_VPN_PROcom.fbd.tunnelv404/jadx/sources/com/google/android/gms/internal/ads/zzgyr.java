package com.google.android.gms.internal.ads;

import androidx.work.WorkInfo;
import com.google.common.base.Ascii;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzgyr extends zzgyt {
    private final InputStream zze;
    private final byte[] zzf;
    private int zzg;
    private int zzh;
    private int zzi;
    private int zzj;
    private int zzk;
    private int zzl;

    public /* synthetic */ zzgyr(InputStream inputStream, int i, zzgyq zzgyqVar) {
        super(null);
        this.zzl = Integer.MAX_VALUE;
        byte[] bArr = zzhae.zzd;
        this.zze = inputStream;
        this.zzf = new byte[4096];
        this.zzg = 0;
        this.zzi = 0;
        this.zzk = 0;
    }

    private final List zzJ(int i) {
        ArrayList arrayList = new ArrayList();
        while (i > 0) {
            int min = Math.min(i, 4096);
            byte[] bArr = new byte[min];
            int i2 = 0;
            while (i2 < min) {
                int read = this.zze.read(bArr, i2, min - i2);
                if (read != -1) {
                    this.zzk += read;
                    i2 += read;
                } else {
                    throw zzhag.zzj();
                }
            }
            i -= min;
            arrayList.add(bArr);
        }
        return arrayList;
    }

    private final void zzK() {
        int i = this.zzg + this.zzh;
        this.zzg = i;
        int i2 = this.zzk + i;
        int i3 = this.zzl;
        if (i2 <= i3) {
            this.zzh = 0;
            return;
        }
        int i4 = i2 - i3;
        this.zzh = i4;
        this.zzg = i - i4;
    }

    private final void zzL(int i) {
        if (!zzM(i)) {
            if (i > (Integer.MAX_VALUE - this.zzk) - this.zzi) {
                throw zzhag.zzi();
            }
            throw zzhag.zzj();
        }
    }

    private final boolean zzM(int i) {
        int i2 = this.zzi;
        int i3 = i2 + i;
        int i4 = this.zzg;
        if (i3 > i4) {
            int i5 = this.zzk;
            if (i > (Integer.MAX_VALUE - i5) - i2 || i5 + i2 + i > this.zzl) {
                return false;
            }
            if (i2 > 0) {
                if (i4 > i2) {
                    byte[] bArr = this.zzf;
                    System.arraycopy(bArr, i2, bArr, 0, i4 - i2);
                }
                i5 = this.zzk + i2;
                this.zzk = i5;
                i4 = this.zzg - i2;
                this.zzg = i4;
                this.zzi = 0;
            }
            try {
                int read = this.zze.read(this.zzf, i4, Math.min(4096 - i4, (Integer.MAX_VALUE - i5) - i4));
                if (read != 0 && read >= -1 && read <= 4096) {
                    if (read <= 0) {
                        return false;
                    }
                    this.zzg += read;
                    zzK();
                    if (this.zzg >= i) {
                        return true;
                    }
                    return zzM(i);
                }
                StringBuilder m3341xc20437a5 = AbstractC0749x8313616e.m3341xc20437a5(String.valueOf(this.zze.getClass()));
                m3341xc20437a5.append(new ObfuscatedString(new long[]{-7185386651587657284L, -1917328163078787757L, 1695321780072440106L, 8448433538870874577L, -866915385634960163L, 6023091776331187420L}).toString());
                m3341xc20437a5.append(read);
                throw new IllegalStateException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{6079417942088163605L, -4236386867456832935L, -1107394688924959395L, -8644119732786187462L, -2348173880781863457L, 2381022142350039596L, 4359491242779004421L}), m3341xc20437a5));
            } catch (zzhag e) {
                e.zzk();
                throw e;
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{8327778707490519275L, -7138764219660292933L, 3189162574320712556L, -51454718498536186L, 6944040164690010235L}).toString());
        sb.append(i);
        throw new IllegalStateException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-1368871381206970024L, -8258338014089175635L, -6751025486157753233L, 3451313957152276334L, 4577445198460959393L, 7161802406478493692L}), sb));
    }

    private final byte[] zzN(int i, boolean z) {
        byte[] zzO = zzO(i);
        if (zzO != null) {
            return zzO;
        }
        int i2 = this.zzi;
        int i3 = this.zzg;
        int i4 = i3 - i2;
        this.zzk += i3;
        this.zzi = 0;
        this.zzg = 0;
        List<byte[]> zzJ = zzJ(i - i4);
        byte[] bArr = new byte[i];
        System.arraycopy(this.zzf, i2, bArr, 0, i4);
        for (byte[] bArr2 : zzJ) {
            int length = bArr2.length;
            System.arraycopy(bArr2, 0, bArr, i4, length);
            i4 += length;
        }
        return bArr;
    }

    private final byte[] zzO(int i) {
        if (i == 0) {
            return zzhae.zzd;
        }
        if (i >= 0) {
            int i2 = this.zzk;
            int i3 = this.zzi;
            int i4 = i2 + i3 + i;
            if ((-2147483647) + i4 <= 0) {
                int i5 = this.zzl;
                if (i4 <= i5) {
                    int i6 = this.zzg - i3;
                    int i7 = i - i6;
                    if (i7 >= 4096) {
                        try {
                            if (i7 > this.zze.available()) {
                                return null;
                            }
                        } catch (zzhag e) {
                            e.zzk();
                            throw e;
                        }
                    }
                    byte[] bArr = new byte[i];
                    System.arraycopy(this.zzf, this.zzi, bArr, 0, i6);
                    this.zzk += this.zzg;
                    this.zzi = 0;
                    this.zzg = 0;
                    while (i6 < i) {
                        try {
                            int read = this.zze.read(bArr, i6, i - i6);
                            if (read != -1) {
                                this.zzk += read;
                                i6 += read;
                            } else {
                                throw zzhag.zzj();
                            }
                        } catch (zzhag e2) {
                            e2.zzk();
                            throw e2;
                        }
                    }
                    return bArr;
                }
                zzB((i5 - i2) - i3);
                throw zzhag.zzj();
            }
            throw zzhag.zzi();
        }
        throw zzhag.zzf();
    }

    @Override // com.google.android.gms.internal.ads.zzgyt
    public final void zzA(int i) {
        this.zzl = i;
        zzK();
    }

    public final void zzB(int i) {
        int i2 = this.zzg;
        int i3 = this.zzi;
        int i4 = i2 - i3;
        if (i <= i4 && i >= 0) {
            this.zzi = i3 + i;
            return;
        }
        if (i >= 0) {
            int i5 = this.zzk;
            int i6 = i5 + i3;
            int i7 = this.zzl;
            if (i6 + i <= i7) {
                this.zzk = i6;
                this.zzg = 0;
                this.zzi = 0;
                while (i4 < i) {
                    try {
                        long j = i - i4;
                        try {
                            long skip = this.zze.skip(j);
                            if (skip >= 0 && skip <= j) {
                                if (skip == 0) {
                                    break;
                                } else {
                                    i4 += (int) skip;
                                }
                            } else {
                                throw new IllegalStateException(String.valueOf(this.zze.getClass()) + new ObfuscatedString(new long[]{-2753987120147622017L, 2676641619546860960L, 8918732521451352042L, -6832371169196746775L, 8299035545774204151L}).toString() + skip + new ObfuscatedString(new long[]{7238548277343413282L, 5188022799947533600L, -6285899211876155148L, -4870196132833339865L, 3158561762375172604L, -7801715725278572793L, 6957197231392715478L}).toString());
                            }
                        } catch (zzhag e) {
                            e.zzk();
                            throw e;
                        }
                    } catch (Throwable th) {
                        this.zzk += i4;
                        zzK();
                        throw th;
                    }
                }
                this.zzk += i4;
                zzK();
                if (i4 < i) {
                    int i8 = this.zzg;
                    int i9 = i8 - this.zzi;
                    this.zzi = i8;
                    zzL(1);
                    while (true) {
                        int i10 = i - i9;
                        int i11 = this.zzg;
                        if (i10 > i11) {
                            i9 += i11;
                            this.zzi = i11;
                            zzL(1);
                        } else {
                            this.zzi = i10;
                            return;
                        }
                    }
                }
            } else {
                zzB((i7 - i5) - i3);
                throw zzhag.zzj();
            }
        } else {
            throw zzhag.zzf();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgyt
    public final boolean zzC() {
        if (this.zzi == this.zzg && !zzM(1)) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzgyt
    public final boolean zzD() {
        if (zzr() != 0) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzgyt
    public final boolean zzE(int i) {
        int zzm;
        int i2 = i & 7;
        int i3 = 0;
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3) {
                        if (i2 == 4) {
                            return false;
                        }
                        if (i2 == 5) {
                            zzB(4);
                            return true;
                        }
                        throw zzhag.zza();
                    }
                    do {
                        zzm = zzm();
                        if (zzm == 0) {
                            break;
                        }
                    } while (zzE(zzm));
                    zzz(((i >>> 3) << 3) | 4);
                    return true;
                }
                zzB(zzj());
                return true;
            }
            zzB(8);
            return true;
        }
        if (this.zzg - this.zzi >= 10) {
            while (i3 < 10) {
                byte[] bArr = this.zzf;
                int i4 = this.zzi;
                this.zzi = i4 + 1;
                if (bArr[i4] < 0) {
                    i3++;
                }
            }
            throw zzhag.zze();
        }
        while (i3 < 10) {
            if (zza() < 0) {
                i3++;
            }
        }
        throw zzhag.zze();
        return true;
    }

    public final byte zza() {
        if (this.zzi == this.zzg) {
            zzL(1);
        }
        byte[] bArr = this.zzf;
        int i = this.zzi;
        this.zzi = i + 1;
        return bArr[i];
    }

    @Override // com.google.android.gms.internal.ads.zzgyt
    public final double zzb() {
        return Double.longBitsToDouble(zzq());
    }

    @Override // com.google.android.gms.internal.ads.zzgyt
    public final float zzc() {
        return Float.intBitsToFloat(zzi());
    }

    @Override // com.google.android.gms.internal.ads.zzgyt
    public final int zzd() {
        return this.zzk + this.zzi;
    }

    @Override // com.google.android.gms.internal.ads.zzgyt
    public final int zze(int i) {
        if (i >= 0) {
            int i2 = this.zzk + this.zzi;
            int i3 = this.zzl;
            int i4 = i + i2;
            if (i4 <= i3) {
                this.zzl = i4;
                zzK();
                return i3;
            }
            throw zzhag.zzj();
        }
        throw zzhag.zzf();
    }

    @Override // com.google.android.gms.internal.ads.zzgyt
    public final int zzf() {
        return zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzgyt
    public final int zzg() {
        return zzi();
    }

    @Override // com.google.android.gms.internal.ads.zzgyt
    public final int zzh() {
        return zzj();
    }

    public final int zzi() {
        int i = this.zzi;
        if (this.zzg - i < 4) {
            zzL(4);
            i = this.zzi;
        }
        byte[] bArr = this.zzf;
        this.zzi = i + 4;
        int i2 = bArr[i] & 255;
        int i3 = bArr[i + 1] & 255;
        int i4 = bArr[i + 2] & 255;
        return ((bArr[i + 3] & 255) << 24) | (i3 << 8) | i2 | (i4 << 16);
    }

    public final int zzj() {
        int i;
        int i2 = this.zzi;
        int i3 = this.zzg;
        if (i3 != i2) {
            byte[] bArr = this.zzf;
            int i4 = i2 + 1;
            byte b = bArr[i2];
            if (b >= 0) {
                this.zzi = i4;
                return b;
            }
            if (i3 - i4 >= 9) {
                int i5 = i2 + 2;
                int i6 = (bArr[i4] << 7) ^ b;
                if (i6 < 0) {
                    i = i6 ^ WorkInfo.STOP_REASON_FOREGROUND_SERVICE_TIMEOUT;
                } else {
                    int i7 = i2 + 3;
                    int i8 = (bArr[i5] << Ascii.SO) ^ i6;
                    if (i8 >= 0) {
                        i = i8 ^ 16256;
                    } else {
                        int i9 = i2 + 4;
                        int i10 = i8 ^ (bArr[i7] << Ascii.NAK);
                        if (i10 < 0) {
                            i = (-2080896) ^ i10;
                        } else {
                            i7 = i2 + 5;
                            byte b2 = bArr[i9];
                            int i11 = (i10 ^ (b2 << Ascii.FS)) ^ 266354560;
                            if (b2 < 0) {
                                i9 = i2 + 6;
                                if (bArr[i7] < 0) {
                                    i7 = i2 + 7;
                                    if (bArr[i9] < 0) {
                                        i9 = i2 + 8;
                                        if (bArr[i7] < 0) {
                                            i7 = i2 + 9;
                                            if (bArr[i9] < 0) {
                                                int i12 = i2 + 10;
                                                if (bArr[i7] >= 0) {
                                                    i5 = i12;
                                                    i = i11;
                                                }
                                            }
                                        }
                                    }
                                }
                                i = i11;
                            }
                            i = i11;
                        }
                        i5 = i9;
                    }
                    i5 = i7;
                }
                this.zzi = i5;
                return i;
            }
        }
        return (int) zzs();
    }

    @Override // com.google.android.gms.internal.ads.zzgyt
    public final int zzk() {
        return zzi();
    }

    @Override // com.google.android.gms.internal.ads.zzgyt
    public final int zzl() {
        return zzgyt.zzF(zzj());
    }

    @Override // com.google.android.gms.internal.ads.zzgyt
    public final int zzm() {
        if (zzC()) {
            this.zzj = 0;
            return 0;
        }
        int zzj = zzj();
        this.zzj = zzj;
        if ((zzj >>> 3) != 0) {
            return zzj;
        }
        throw zzhag.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzgyt
    public final int zzn() {
        return zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzgyt
    public final long zzo() {
        return zzq();
    }

    @Override // com.google.android.gms.internal.ads.zzgyt
    public final long zzp() {
        return zzr();
    }

    public final long zzq() {
        int i = this.zzi;
        if (this.zzg - i < 8) {
            zzL(8);
            i = this.zzi;
        }
        byte[] bArr = this.zzf;
        this.zzi = i + 8;
        long j = bArr[i];
        long j2 = bArr[i + 2];
        long j3 = bArr[i + 3];
        return ((bArr[i + 7] & 255) << 56) | (j & 255) | ((bArr[i + 1] & 255) << 8) | ((j2 & 255) << 16) | ((j3 & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
    }

    public final long zzr() {
        long j;
        long j2;
        int i = this.zzi;
        int i2 = this.zzg;
        if (i2 != i) {
            byte[] bArr = this.zzf;
            int i3 = i + 1;
            byte b = bArr[i];
            if (b >= 0) {
                this.zzi = i3;
                return b;
            }
            if (i2 - i3 >= 9) {
                int i4 = i + 2;
                int i5 = (bArr[i3] << 7) ^ b;
                if (i5 < 0) {
                    j = i5 ^ WorkInfo.STOP_REASON_FOREGROUND_SERVICE_TIMEOUT;
                } else {
                    int i6 = i + 3;
                    int i7 = (bArr[i4] << Ascii.SO) ^ i5;
                    if (i7 >= 0) {
                        j = i7 ^ 16256;
                    } else {
                        int i8 = i + 4;
                        int i9 = i7 ^ (bArr[i6] << Ascii.NAK);
                        if (i9 < 0) {
                            long j3 = (-2080896) ^ i9;
                            i4 = i8;
                            j = j3;
                        } else {
                            i6 = i + 5;
                            long j4 = (bArr[i8] << 28) ^ i9;
                            if (j4 >= 0) {
                                j = j4 ^ 266354560;
                            } else {
                                i4 = i + 6;
                                long j5 = (bArr[i6] << 35) ^ j4;
                                if (j5 < 0) {
                                    j2 = -34093383808L;
                                } else {
                                    int i10 = i + 7;
                                    long j6 = j5 ^ (bArr[i4] << 42);
                                    if (j6 >= 0) {
                                        j = j6 ^ 4363953127296L;
                                    } else {
                                        i4 = i + 8;
                                        j5 = j6 ^ (bArr[i10] << 49);
                                        if (j5 < 0) {
                                            j2 = -558586000294016L;
                                        } else {
                                            i10 = i + 9;
                                            long j7 = (j5 ^ (bArr[i4] << 56)) ^ 71499008037633920L;
                                            if (j7 < 0) {
                                                i4 = i + 10;
                                                if (bArr[i10] >= 0) {
                                                    j = j7;
                                                }
                                            } else {
                                                j = j7;
                                            }
                                        }
                                    }
                                    i4 = i10;
                                }
                                j = j5 ^ j2;
                            }
                        }
                    }
                    i4 = i6;
                }
                this.zzi = i4;
                return j;
            }
        }
        return zzs();
    }

    public final long zzs() {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            j |= (r3 & Byte.MAX_VALUE) << i;
            if ((zza() & 128) == 0) {
                return j;
            }
        }
        throw zzhag.zze();
    }

    @Override // com.google.android.gms.internal.ads.zzgyt
    public final long zzt() {
        return zzq();
    }

    @Override // com.google.android.gms.internal.ads.zzgyt
    public final long zzu() {
        return zzgyt.zzG(zzr());
    }

    @Override // com.google.android.gms.internal.ads.zzgyt
    public final long zzv() {
        return zzr();
    }

    @Override // com.google.android.gms.internal.ads.zzgyt
    public final zzgyl zzw() {
        int zzj = zzj();
        int i = this.zzg;
        int i2 = this.zzi;
        if (zzj <= i - i2 && zzj > 0) {
            zzgyl zzv = zzgyl.zzv(this.zzf, i2, zzj);
            this.zzi += zzj;
            return zzv;
        }
        if (zzj != 0) {
            byte[] zzO = zzO(zzj);
            if (zzO != null) {
                return zzgyl.zzv(zzO, 0, zzO.length);
            }
            int i3 = this.zzi;
            int i4 = this.zzg;
            int i5 = i4 - i3;
            this.zzk += i4;
            this.zzi = 0;
            this.zzg = 0;
            List<byte[]> zzJ = zzJ(zzj - i5);
            byte[] bArr = new byte[zzj];
            System.arraycopy(this.zzf, i3, bArr, 0, i5);
            for (byte[] bArr2 : zzJ) {
                int length = bArr2.length;
                System.arraycopy(bArr2, 0, bArr, i5, length);
                i5 += length;
            }
            return new zzgyh(bArr);
        }
        return zzgyl.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzgyt
    public final String zzx() {
        int zzj = zzj();
        if (zzj > 0) {
            int i = this.zzg;
            int i2 = this.zzi;
            if (zzj <= i - i2) {
                String str = new String(this.zzf, i2, zzj, zzhae.zzb);
                this.zzi += zzj;
                return str;
            }
        }
        if (zzj == 0) {
            return new ObfuscatedString(new long[]{-4435498461566685746L}).toString();
        }
        if (zzj <= this.zzg) {
            zzL(zzj);
            String str2 = new String(this.zzf, this.zzi, zzj, zzhae.zzb);
            this.zzi += zzj;
            return str2;
        }
        return new String(zzN(zzj, false), zzhae.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzgyt
    public final String zzy() {
        byte[] zzN;
        byte[] bArr;
        int zzj = zzj();
        int i = this.zzi;
        int i2 = this.zzg;
        if (zzj <= i2 - i && zzj > 0) {
            bArr = this.zzf;
            this.zzi = i + zzj;
        } else {
            if (zzj == 0) {
                return new ObfuscatedString(new long[]{1630487763639540819L}).toString();
            }
            if (zzj <= i2) {
                zzL(zzj);
                zzN = this.zzf;
                this.zzi = zzj;
            } else {
                zzN = zzN(zzj, false);
            }
            bArr = zzN;
            i = 0;
        }
        return zzhde.zzh(bArr, i, zzj);
    }

    @Override // com.google.android.gms.internal.ads.zzgyt
    public final void zzz(int i) {
        if (this.zzj == i) {
        } else {
            throw zzhag.zzb();
        }
    }
}
