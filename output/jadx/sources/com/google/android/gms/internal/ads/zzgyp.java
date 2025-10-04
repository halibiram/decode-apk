package com.google.android.gms.internal.ads;

import androidx.work.WorkInfo;
import com.google.common.base.Ascii;
import com.panda912.muddy.ObfuscatedString;
import java.nio.ByteBuffer;
import java.util.Iterator;

/* loaded from: classes2.dex */
final class zzgyp extends zzgyt {
    private final Iterable zze;
    private final Iterator zzf;
    private ByteBuffer zzg;
    private int zzh;
    private int zzi;
    private int zzj;
    private int zzk;
    private int zzl;
    private long zzm;
    private long zzn;
    private long zzo;

    public /* synthetic */ zzgyp(Iterable iterable, int i, boolean z, zzgyo zzgyoVar) {
        super(null);
        this.zzj = Integer.MAX_VALUE;
        this.zzh = i;
        this.zze = iterable;
        this.zzf = iterable.iterator();
        this.zzl = 0;
        if (i == 0) {
            this.zzg = zzhae.zze;
            this.zzm = 0L;
            this.zzn = 0L;
            this.zzo = 0L;
            return;
        }
        zzN();
    }

    private final int zzJ() {
        return (int) (((this.zzh - this.zzl) - this.zzm) + this.zzn);
    }

    private final void zzK() {
        if (this.zzf.hasNext()) {
            zzN();
            return;
        }
        throw zzhag.zzj();
    }

    private final void zzL(byte[] bArr, int i, int i2) {
        if (i2 <= zzJ()) {
            int i3 = i2;
            while (i3 > 0) {
                if (this.zzo - this.zzm == 0) {
                    zzK();
                }
                int min = Math.min(i3, (int) (this.zzo - this.zzm));
                long j = min;
                zzhcz.zzo(this.zzm, bArr, i2 - i3, j);
                i3 -= min;
                this.zzm += j;
            }
            return;
        }
        if (i2 <= 0) {
        } else {
            throw zzhag.zzj();
        }
    }

    private final void zzM() {
        int i = this.zzh + this.zzi;
        this.zzh = i;
        int i2 = this.zzj;
        if (i <= i2) {
            this.zzi = 0;
            return;
        }
        int i3 = i - i2;
        this.zzi = i3;
        this.zzh = i - i3;
    }

    private final void zzN() {
        ByteBuffer byteBuffer = (ByteBuffer) this.zzf.next();
        this.zzg = byteBuffer;
        this.zzl += (int) (this.zzm - this.zzn);
        long position = byteBuffer.position();
        this.zzm = position;
        this.zzn = position;
        this.zzo = this.zzg.limit();
        long zze = zzhcz.zze(this.zzg);
        this.zzm += zze;
        this.zzn += zze;
        this.zzo += zze;
    }

    @Override // com.google.android.gms.internal.ads.zzgyt
    public final void zzA(int i) {
        this.zzj = i;
        zzM();
    }

    public final void zzB(int i) {
        if (i >= 0) {
            if (i <= ((this.zzh - this.zzl) - this.zzm) + this.zzn) {
                while (i > 0) {
                    if (this.zzo - this.zzm == 0) {
                        zzK();
                    }
                    int min = Math.min(i, (int) (this.zzo - this.zzm));
                    i -= min;
                    this.zzm += min;
                }
                return;
            }
        }
        if (i < 0) {
            throw zzhag.zzf();
        }
        throw zzhag.zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzgyt
    public final boolean zzC() {
        return (((long) this.zzl) + this.zzm) - this.zzn == ((long) this.zzh);
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
        for (int i3 = 0; i3 < 10; i3++) {
            if (zza() >= 0) {
                return true;
            }
        }
        throw zzhag.zze();
    }

    public final byte zza() {
        if (this.zzo - this.zzm == 0) {
            zzK();
        }
        long j = this.zzm;
        this.zzm = 1 + j;
        return zzhcz.zza(j);
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
        return (int) ((this.zzl + this.zzm) - this.zzn);
    }

    @Override // com.google.android.gms.internal.ads.zzgyt
    public final int zze(int i) {
        if (i >= 0) {
            int zzd = i + zzd();
            int i2 = this.zzj;
            if (zzd <= i2) {
                this.zzj = zzd;
                zzM();
                return i2;
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
        long j = this.zzo;
        long j2 = this.zzm;
        if (j - j2 >= 4) {
            this.zzm = 4 + j2;
            int zza = zzhcz.zza(j2) & 255;
            int zza2 = (zzhcz.zza(1 + j2) & 255) << 8;
            return zza | zza2 | ((zzhcz.zza(2 + j2) & 255) << 16) | ((zzhcz.zza(j2 + 3) & 255) << 24);
        }
        int zza3 = zza() & 255;
        int zza4 = (zza() & 255) << 8;
        return zza3 | zza4 | ((zza() & 255) << 16) | ((zza() & 255) << 24);
    }

    public final int zzj() {
        int i;
        long j = this.zzm;
        if (this.zzo != j) {
            long j2 = j + 1;
            byte zza = zzhcz.zza(j);
            if (zza >= 0) {
                this.zzm++;
                return zza;
            }
            if (this.zzo - this.zzm >= 10) {
                long j3 = 2 + j;
                int zza2 = (zzhcz.zza(j2) << 7) ^ zza;
                if (zza2 < 0) {
                    i = zza2 ^ WorkInfo.STOP_REASON_FOREGROUND_SERVICE_TIMEOUT;
                } else {
                    long j4 = 3 + j;
                    int zza3 = (zzhcz.zza(j3) << Ascii.SO) ^ zza2;
                    if (zza3 >= 0) {
                        i = zza3 ^ 16256;
                    } else {
                        long j5 = 4 + j;
                        int zza4 = zza3 ^ (zzhcz.zza(j4) << Ascii.NAK);
                        if (zza4 < 0) {
                            i = (-2080896) ^ zza4;
                        } else {
                            j4 = 5 + j;
                            byte zza5 = zzhcz.zza(j5);
                            int i2 = (zza4 ^ (zza5 << Ascii.FS)) ^ 266354560;
                            if (zza5 < 0) {
                                j5 = 6 + j;
                                if (zzhcz.zza(j4) < 0) {
                                    j4 = 7 + j;
                                    if (zzhcz.zza(j5) < 0) {
                                        j5 = 8 + j;
                                        if (zzhcz.zza(j4) < 0) {
                                            j4 = 9 + j;
                                            if (zzhcz.zza(j5) < 0) {
                                                long j6 = j + 10;
                                                if (zzhcz.zza(j4) >= 0) {
                                                    i = i2;
                                                    j3 = j6;
                                                }
                                            }
                                        }
                                    }
                                }
                                i = i2;
                            }
                            i = i2;
                        }
                        j3 = j5;
                    }
                    j3 = j4;
                }
                this.zzm = j3;
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
            this.zzk = 0;
            return 0;
        }
        int zzj = zzj();
        this.zzk = zzj;
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
        long j = this.zzo;
        long j2 = this.zzm;
        if (j - j2 >= 8) {
            this.zzm = 8 + j2;
            return (zzhcz.zza(j2) & 255) | ((zzhcz.zza(1 + j2) & 255) << 8) | ((zzhcz.zza(j2 + 2) & 255) << 16) | ((zzhcz.zza(3 + j2) & 255) << 24) | ((zzhcz.zza(j2 + 4) & 255) << 32) | ((zzhcz.zza(5 + j2) & 255) << 40) | ((zzhcz.zza(j2 + 6) & 255) << 48) | ((zzhcz.zza(j2 + 7) & 255) << 56);
        }
        return (zza() & 255) | ((zza() & 255) << 8) | ((zza() & 255) << 16) | ((zza() & 255) << 24) | ((zza() & 255) << 32) | ((zza() & 255) << 40) | ((zza() & 255) << 48) | ((zza() & 255) << 56);
    }

    public final long zzr() {
        long j;
        long j2;
        long j3 = this.zzm;
        if (this.zzo != j3) {
            long j4 = j3 + 1;
            byte zza = zzhcz.zza(j3);
            if (zza >= 0) {
                this.zzm++;
                return zza;
            }
            if (this.zzo - this.zzm >= 10) {
                long j5 = 2 + j3;
                int zza2 = (zzhcz.zza(j4) << 7) ^ zza;
                if (zza2 < 0) {
                    j = zza2 ^ WorkInfo.STOP_REASON_FOREGROUND_SERVICE_TIMEOUT;
                } else {
                    long j6 = 3 + j3;
                    int zza3 = (zzhcz.zza(j5) << Ascii.SO) ^ zza2;
                    if (zza3 >= 0) {
                        j = zza3 ^ 16256;
                    } else {
                        long j7 = 4 + j3;
                        int zza4 = zza3 ^ (zzhcz.zza(j6) << Ascii.NAK);
                        if (zza4 < 0) {
                            j = (-2080896) ^ zza4;
                            j5 = j7;
                        } else {
                            j6 = 5 + j3;
                            long zza5 = (zzhcz.zza(j7) << 28) ^ zza4;
                            if (zza5 >= 0) {
                                j = 266354560 ^ zza5;
                            } else {
                                long j8 = 6 + j3;
                                long zza6 = zza5 ^ (zzhcz.zza(j6) << 35);
                                if (zza6 < 0) {
                                    j2 = -34093383808L;
                                } else {
                                    long j9 = 7 + j3;
                                    long zza7 = zza6 ^ (zzhcz.zza(j8) << 42);
                                    if (zza7 >= 0) {
                                        j = 4363953127296L ^ zza7;
                                    } else {
                                        j8 = 8 + j3;
                                        zza6 = zza7 ^ (zzhcz.zza(j9) << 49);
                                        if (zza6 < 0) {
                                            j2 = -558586000294016L;
                                        } else {
                                            j9 = 9 + j3;
                                            long zza8 = (zza6 ^ (zzhcz.zza(j8) << 56)) ^ 71499008037633920L;
                                            if (zza8 < 0) {
                                                long j10 = j3 + 10;
                                                if (zzhcz.zza(j9) >= 0) {
                                                    j = zza8;
                                                    j5 = j10;
                                                }
                                            } else {
                                                j = zza8;
                                            }
                                        }
                                    }
                                    j5 = j9;
                                }
                                j = j2 ^ zza6;
                                j5 = j8;
                            }
                        }
                    }
                    j5 = j6;
                }
                this.zzm = j5;
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
        if (zzj > 0) {
            long j = this.zzo;
            long j2 = this.zzm;
            long j3 = zzj;
            if (j3 <= j - j2) {
                byte[] bArr = new byte[zzj];
                zzhcz.zzo(j2, bArr, 0L, j3);
                this.zzm += j3;
                return new zzgyh(bArr);
            }
        }
        if (zzj > 0 && zzj <= zzJ()) {
            byte[] bArr2 = new byte[zzj];
            zzL(bArr2, 0, zzj);
            return new zzgyh(bArr2);
        }
        if (zzj == 0) {
            return zzgyl.zzb;
        }
        if (zzj < 0) {
            throw zzhag.zzf();
        }
        throw zzhag.zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzgyt
    public final String zzx() {
        int zzj = zzj();
        if (zzj > 0) {
            long j = this.zzo;
            long j2 = this.zzm;
            long j3 = zzj;
            if (j3 <= j - j2) {
                byte[] bArr = new byte[zzj];
                zzhcz.zzo(j2, bArr, 0L, j3);
                String str = new String(bArr, zzhae.zzb);
                this.zzm += j3;
                return str;
            }
        }
        if (zzj > 0 && zzj <= zzJ()) {
            byte[] bArr2 = new byte[zzj];
            zzL(bArr2, 0, zzj);
            return new String(bArr2, zzhae.zzb);
        }
        if (zzj == 0) {
            return new ObfuscatedString(new long[]{5131503873657987975L}).toString();
        }
        if (zzj < 0) {
            throw zzhag.zzf();
        }
        throw zzhag.zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzgyt
    public final String zzy() {
        int zzj = zzj();
        if (zzj > 0) {
            long j = this.zzo;
            long j2 = this.zzm;
            long j3 = zzj;
            if (j3 <= j - j2) {
                String zzg = zzhde.zzg(this.zzg, (int) (j2 - this.zzn), zzj);
                this.zzm += j3;
                return zzg;
            }
        }
        if (zzj >= 0 && zzj <= zzJ()) {
            byte[] bArr = new byte[zzj];
            zzL(bArr, 0, zzj);
            return zzhde.zzh(bArr, 0, zzj);
        }
        if (zzj == 0) {
            return new ObfuscatedString(new long[]{-3768446824719664879L}).toString();
        }
        if (zzj <= 0) {
            throw zzhag.zzf();
        }
        throw zzhag.zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzgyt
    public final void zzz(int i) {
        if (this.zzk == i) {
        } else {
            throw zzhag.zzb();
        }
    }
}
