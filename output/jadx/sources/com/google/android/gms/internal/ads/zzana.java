package com.google.android.gms.internal.ads;

import android.util.Pair;
import androidx.annotation.Nullable;
import com.google.common.base.Ascii;
import com.panda912.muddy.ObfuscatedString;
import java.util.Arrays;
import java.util.Collections;

/* loaded from: classes2.dex */
public final class zzana implements zzamy {
    private static final double[] zza = {23.976023976023978d, 24.0d, 25.0d, 29.97002997002997d, 30.0d, 50.0d, 59.94005994005994d, 60.0d};
    private String zzb;
    private zzaea zzc;

    @Nullable
    private final zzaon zzd;

    @Nullable
    private final zzfp zze;

    @Nullable
    private final zzann zzf;
    private final boolean[] zzg;
    private final zzamz zzh;
    private long zzi;
    private boolean zzj;
    private boolean zzk;
    private long zzl;
    private long zzm;
    private long zzn;
    private long zzo;
    private boolean zzp;
    private boolean zzq;

    public zzana() {
        this(null);
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x018f  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x01a8  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x01b2  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x01cf  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01fb  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01fd  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x01e4  */
    @Override // com.google.android.gms.internal.ads.zzamy
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zza(zzfp zzfpVar) {
        int i;
        int i2;
        zzann zzannVar;
        int i3;
        long j;
        boolean z;
        long j2;
        int i4;
        int i5;
        int i6;
        float f;
        int i7;
        int i8;
        char c = 4;
        zzek.zzb(this.zzc);
        int zzd = zzfpVar.zzd();
        int zze = zzfpVar.zze();
        byte[] zzM = zzfpVar.zzM();
        this.zzi += zzfpVar.zzb();
        this.zzc.zzr(zzfpVar, zzfpVar.zzb());
        while (true) {
            int zza2 = zzgm.zza(zzM, zzd, zze, this.zzg);
            if (zza2 == zze) {
                break;
            }
            int i9 = zza2 + 3;
            int i10 = zzfpVar.zzM()[i9] & 255;
            int i11 = zza2 - zzd;
            if (!this.zzk) {
                if (i11 > 0) {
                    this.zzh.zza(zzM, zzd, zza2);
                }
                if (i11 < 0) {
                    i5 = -i11;
                } else {
                    i5 = 0;
                }
                if (this.zzh.zzc(i10, i5)) {
                    zzamz zzamzVar = this.zzh;
                    String str = this.zzb;
                    str.getClass();
                    byte[] copyOf = Arrays.copyOf(zzamzVar.zzc, zzamzVar.zza);
                    int i12 = copyOf[c] & 255;
                    byte b = copyOf[5];
                    int i13 = copyOf[6] & 255;
                    i = i9;
                    int i14 = ((b & 255) >> 4) | (i12 << 4);
                    int i15 = (copyOf[7] & 240) >> 4;
                    int i16 = i13 | ((b & Ascii.SI) << 8);
                    if (i15 != 2) {
                        if (i15 != 3) {
                            if (i15 != 4) {
                                f = 1.0f;
                                i6 = 3;
                            } else {
                                i7 = i16 * 121;
                                i8 = i14 * 100;
                            }
                        } else {
                            i7 = i16 * 16;
                            i8 = i14 * 9;
                        }
                        f = i7 / i8;
                        i6 = 3;
                    } else {
                        i6 = 3;
                        f = (i16 * 4) / (i14 * 3);
                    }
                    zzak zzakVar = new zzak();
                    zzakVar.zzK(str);
                    long[] jArr = new long[i6];
                    // fill-array-data instruction
                    jArr[0] = 6172264194928130031L;
                    jArr[1] = 4204646740530953073L;
                    jArr[2] = 5085431047188639927L;
                    zzakVar.zzW(new ObfuscatedString(jArr).toString());
                    zzakVar.zzab(i14);
                    zzakVar.zzI(i16);
                    zzakVar.zzS(f);
                    zzakVar.zzL(Collections.singletonList(copyOf));
                    zzam zzac = zzakVar.zzac();
                    int i17 = (copyOf[7] & Ascii.SI) - 1;
                    long j3 = 0;
                    if (i17 >= 0 && i17 < 8) {
                        double d = zza[i17];
                        byte b2 = copyOf[zzamzVar.zzb + 9];
                        int i18 = (b2 & 96) >> 5;
                        if (i18 != (b2 & Ascii.US)) {
                            i2 = i11;
                            d *= (i18 + 1.0d) / (r2 + 1);
                        } else {
                            i2 = i11;
                        }
                        j3 = (long) (1000000.0d / d);
                    } else {
                        i2 = i11;
                    }
                    Pair create = Pair.create(zzac, Long.valueOf(j3));
                    this.zzc.zzl((zzam) create.first);
                    this.zzl = ((Long) create.second).longValue();
                    this.zzk = true;
                    zzannVar = this.zzf;
                    if (zzannVar != null) {
                        if (i2 > 0) {
                            zzannVar.zza(zzM, zzd, zza2);
                            i4 = 0;
                        } else {
                            i4 = -i2;
                        }
                        if (this.zzf.zzd(i4)) {
                            zzann zzannVar2 = this.zzf;
                            int zzb = zzgm.zzb(zzannVar2.zza, zzannVar2.zzb);
                            zzfp zzfpVar2 = this.zze;
                            int i19 = zzfy.zza;
                            zzfpVar2.zzI(this.zzf.zza, zzb);
                            this.zzd.zza(this.zzo, this.zze);
                        }
                        if (i10 == 178) {
                            if (zzfpVar.zzM()[zza2 + 2] == 1) {
                                this.zzf.zzc(178);
                            }
                            i10 = 178;
                            if (i10 == 0 && i10 != 179) {
                                if (i10 == 184) {
                                    this.zzp = true;
                                }
                            } else {
                                i3 = zze - zza2;
                                if (this.zzq && this.zzk) {
                                    j2 = this.zzo;
                                    if (j2 != -9223372036854775807L) {
                                        this.zzc.zzt(j2, this.zzp ? 1 : 0, ((int) (this.zzi - this.zzn)) - i3, i3, null);
                                    }
                                }
                                if (this.zzj || this.zzq) {
                                    this.zzn = this.zzi - i3;
                                    j = this.zzm;
                                    if (j == -9223372036854775807L) {
                                        long j4 = this.zzo;
                                        if (j4 != -9223372036854775807L) {
                                            j = j4 + this.zzl;
                                        } else {
                                            j = -9223372036854775807L;
                                        }
                                    }
                                    this.zzo = j;
                                    this.zzp = false;
                                    this.zzm = -9223372036854775807L;
                                    this.zzj = true;
                                }
                                if (i10 == 0) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                this.zzq = z;
                            }
                            zzd = i;
                            c = 4;
                        }
                    }
                    if (i10 == 0) {
                    }
                    i3 = zze - zza2;
                    if (this.zzq) {
                        j2 = this.zzo;
                        if (j2 != -9223372036854775807L) {
                        }
                    }
                    if (this.zzj) {
                    }
                    this.zzn = this.zzi - i3;
                    j = this.zzm;
                    if (j == -9223372036854775807L) {
                    }
                    this.zzo = j;
                    this.zzp = false;
                    this.zzm = -9223372036854775807L;
                    this.zzj = true;
                    if (i10 == 0) {
                    }
                    this.zzq = z;
                    zzd = i;
                    c = 4;
                }
            }
            i = i9;
            i2 = i11;
            zzannVar = this.zzf;
            if (zzannVar != null) {
            }
            if (i10 == 0) {
            }
            i3 = zze - zza2;
            if (this.zzq) {
            }
            if (this.zzj) {
            }
            this.zzn = this.zzi - i3;
            j = this.zzm;
            if (j == -9223372036854775807L) {
            }
            this.zzo = j;
            this.zzp = false;
            this.zzm = -9223372036854775807L;
            this.zzj = true;
            if (i10 == 0) {
            }
            this.zzq = z;
            zzd = i;
            c = 4;
        }
        if (!this.zzk) {
            this.zzh.zza(zzM, zzd, zze);
        }
        zzann zzannVar3 = this.zzf;
        if (zzannVar3 != null) {
            zzannVar3.zza(zzM, zzd, zze);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamy
    public final void zzb(zzacx zzacxVar, zzaok zzaokVar) {
        zzaokVar.zzc();
        this.zzb = zzaokVar.zzb();
        this.zzc = zzacxVar.zzw(zzaokVar.zza(), 2);
        zzaon zzaonVar = this.zzd;
        if (zzaonVar != null) {
            zzaonVar.zzb(zzacxVar, zzaokVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamy
    public final void zzc(boolean z) {
        zzek.zzb(this.zzc);
        if (z) {
            boolean z2 = this.zzp;
            long j = this.zzi - this.zzn;
            this.zzc.zzt(this.zzo, z2 ? 1 : 0, (int) j, 0, null);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamy
    public final void zzd(long j, int i) {
        this.zzm = j;
    }

    @Override // com.google.android.gms.internal.ads.zzamy
    public final void zze() {
        zzgm.zzf(this.zzg);
        this.zzh.zzb();
        zzann zzannVar = this.zzf;
        if (zzannVar != null) {
            zzannVar.zzb();
        }
        this.zzi = 0L;
        this.zzj = false;
        this.zzm = -9223372036854775807L;
        this.zzo = -9223372036854775807L;
    }

    public zzana(@Nullable zzaon zzaonVar) {
        zzfp zzfpVar;
        this.zzd = zzaonVar;
        this.zzg = new boolean[4];
        this.zzh = new zzamz(128);
        if (zzaonVar != null) {
            this.zzf = new zzann(178, 128);
            zzfpVar = new zzfp();
        } else {
            zzfpVar = null;
            this.zzf = null;
        }
        this.zze = zzfpVar;
        this.zzm = -9223372036854775807L;
        this.zzo = -9223372036854775807L;
    }
}
