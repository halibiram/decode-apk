package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import androidx.core.view.MotionEventCompat;
import com.google.android.material.internal.ViewUtils;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.util.Arrays;
import java.util.Collections;

/* loaded from: classes2.dex */
public final class zzamu implements zzamy {
    private static final byte[] zza = {73, 68, 51};
    private final boolean zzb;
    private final zzfo zzc = new zzfo(new byte[7], 7);
    private final zzfp zzd = new zzfp(Arrays.copyOf(zza, 10));

    @Nullable
    private final String zze;
    private String zzf;
    private zzaea zzg;
    private zzaea zzh;
    private int zzi;
    private int zzj;
    private int zzk;
    private boolean zzl;
    private boolean zzm;
    private int zzn;
    private int zzo;
    private int zzp;
    private boolean zzq;
    private long zzr;
    private int zzs;
    private long zzt;
    private zzaea zzu;
    private long zzv;

    public zzamu(boolean z, @Nullable String str) {
        zzh();
        this.zzn = -1;
        this.zzo = -1;
        this.zzr = -9223372036854775807L;
        this.zzt = -9223372036854775807L;
        this.zzb = z;
        this.zze = str;
    }

    public static boolean zzf(int i) {
        return (i & 65526) == 65520;
    }

    private final void zzg() {
        this.zzm = false;
        zzh();
    }

    private final void zzh() {
        this.zzi = 0;
        this.zzj = 0;
        this.zzk = 256;
    }

    private final void zzi() {
        this.zzi = 3;
        this.zzj = 0;
    }

    private final void zzj(zzaea zzaeaVar, long j, int i, int i2) {
        this.zzi = 4;
        this.zzj = i;
        this.zzu = zzaeaVar;
        this.zzv = j;
        this.zzs = i2;
    }

    private final boolean zzk(zzfp zzfpVar, byte[] bArr, int i) {
        int min = Math.min(zzfpVar.zzb(), i - this.zzj);
        zzfpVar.zzG(bArr, this.zzj, min);
        int i2 = this.zzj + min;
        this.zzj = i2;
        if (i2 == i) {
            return true;
        }
        return false;
    }

    private static final boolean zzl(byte b, byte b2) {
        return zzf((b2 & 255) | MotionEventCompat.ACTION_POINTER_INDEX_MASK);
    }

    private static final boolean zzm(zzfp zzfpVar, byte[] bArr, int i) {
        if (zzfpVar.zzb() < i) {
            return false;
        }
        zzfpVar.zzG(bArr, 0, i);
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:72:0x02b9  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x02f8  */
    @Override // com.google.android.gms.internal.ads.zzamy
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zza(zzfp zzfpVar) {
        boolean z;
        int i;
        int i2;
        int i3;
        byte b;
        int i4;
        int i5;
        boolean z2;
        int i6 = 5;
        int i7 = 0;
        int i8 = 2;
        int i9 = 3;
        this.zzg.getClass();
        int i10 = zzfy.zza;
        while (zzfpVar.zzb() > 0) {
            int i11 = this.zzi;
            int i12 = 13;
            if (i11 != 0) {
                if (i11 != 1) {
                    if (i11 != i8) {
                        if (i11 != i9) {
                            int min = Math.min(zzfpVar.zzb(), this.zzs - this.zzj);
                            this.zzu.zzr(zzfpVar, min);
                            int i13 = this.zzj + min;
                            this.zzj = i13;
                            if (i13 == this.zzs) {
                                if (this.zzt != -9223372036854775807L) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                zzek.zzf(z);
                                this.zzu.zzt(this.zzt, 1, this.zzs, 0, null);
                                this.zzt += this.zzv;
                                zzh();
                            }
                        } else {
                            if (true != this.zzl) {
                                i = 5;
                            } else {
                                i = 7;
                            }
                            if (zzk(zzfpVar, this.zzc.zza, i)) {
                                this.zzc.zzk(i7);
                                if (!this.zzq) {
                                    int zzd = this.zzc.zzd(i8) + 1;
                                    if (zzd != i8) {
                                        StringBuilder sb = new StringBuilder();
                                        long[] jArr = new long[i6];
                                        // fill-array-data instruction
                                        jArr[0] = 2947087882845649126L;
                                        jArr[1] = 4717512827910755567L;
                                        jArr[2] = 6053891186846486219L;
                                        jArr[3] = -4119628831596782385L;
                                        jArr[4] = 1947934538622232737L;
                                        sb.append(new ObfuscatedString(jArr).toString());
                                        sb.append(zzd);
                                        long[] jArr2 = new long[i9];
                                        // fill-array-data instruction
                                        jArr2[0] = 1702294296178718312L;
                                        jArr2[1] = 6363892917169243510L;
                                        jArr2[2] = 5972381779430024491L;
                                        zzff.zzf(new ObfuscatedString(jArr2).toString(), AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-6885601203133281206L, 2182328026380904480L, 3474500645932859966L, 2498625329624465458L}), sb));
                                    }
                                    this.zzc.zzm(i6);
                                    int zzd2 = this.zzc.zzd(i9);
                                    int i14 = this.zzo;
                                    byte[] bArr = new byte[i8];
                                    bArr[i7] = (byte) (((i14 >> 1) & 7) | 16);
                                    bArr[1] = (byte) (((zzd2 << i9) & 120) | ((i14 << 7) & 128));
                                    zzabr zza2 = zzabs.zza(bArr);
                                    zzak zzakVar = new zzak();
                                    zzakVar.zzK(this.zzf);
                                    long[] jArr3 = new long[i9];
                                    // fill-array-data instruction
                                    jArr3[0] = 6133023713178295482L;
                                    jArr3[1] = -7704362054529123530L;
                                    jArr3[2] = -4710122609804007407L;
                                    zzakVar.zzW(new ObfuscatedString(jArr3).toString());
                                    zzakVar.zzz(zza2.zzc);
                                    zzakVar.zzy(zza2.zzb);
                                    zzakVar.zzX(zza2.zza);
                                    zzakVar.zzL(Collections.singletonList(bArr));
                                    zzakVar.zzN(this.zze);
                                    zzam zzac = zzakVar.zzac();
                                    this.zzr = 1024000000 / zzac.zzA;
                                    this.zzg.zzl(zzac);
                                    this.zzq = true;
                                } else {
                                    this.zzc.zzm(10);
                                }
                                this.zzc.zzm(4);
                                int zzd3 = this.zzc.zzd(13);
                                int i15 = zzd3 - 7;
                                if (this.zzl) {
                                    i2 = zzd3 - 9;
                                } else {
                                    i2 = i15;
                                }
                                zzj(this.zzg, this.zzr, 0, i2);
                            }
                        }
                    } else if (zzk(zzfpVar, this.zzd.zzM(), 10)) {
                        this.zzh.zzr(this.zzd, 10);
                        this.zzd.zzK(6);
                        zzj(this.zzh, 0L, 10, this.zzd.zzl() + 10);
                    }
                } else if (zzfpVar.zzb() != 0) {
                    zzfo zzfoVar = this.zzc;
                    zzfoVar.zza[i7] = zzfpVar.zzM()[zzfpVar.zzd()];
                    zzfoVar.zzk(i8);
                    int zzd4 = this.zzc.zzd(4);
                    int i16 = this.zzo;
                    if (i16 != -1 && zzd4 != i16) {
                        zzg();
                    } else {
                        if (!this.zzm) {
                            this.zzm = true;
                            this.zzn = this.zzp;
                            this.zzo = zzd4;
                        }
                        zzi();
                    }
                }
            } else {
                byte[] zzM = zzfpVar.zzM();
                int zzd5 = zzfpVar.zzd();
                int zze = zzfpVar.zze();
                while (true) {
                    if (zzd5 < zze) {
                        i3 = zzd5 + 1;
                        b = zzM[zzd5];
                        int i17 = b & 255;
                        if (this.zzk == 512 && zzl((byte) -1, (byte) i17)) {
                            if (!this.zzm) {
                                int i18 = zzd5 - 1;
                                zzfpVar.zzK(zzd5);
                                if (zzm(zzfpVar, this.zzc.zza, 1)) {
                                    this.zzc.zzk(4);
                                    int zzd6 = this.zzc.zzd(1);
                                    int i19 = this.zzn;
                                    if (i19 == -1 || zzd6 == i19) {
                                        if (this.zzo != -1) {
                                            if (!zzm(zzfpVar, this.zzc.zza, 1)) {
                                                break;
                                            }
                                            this.zzc.zzk(i8);
                                            if (this.zzc.zzd(4) == this.zzo) {
                                                zzfpVar.zzK(zzd5 + 1);
                                            }
                                        }
                                        if (!zzm(zzfpVar, this.zzc.zza, 4)) {
                                            break;
                                        }
                                        this.zzc.zzk(14);
                                        int zzd7 = this.zzc.zzd(i12);
                                        if (zzd7 >= 7) {
                                            byte[] zzM2 = zzfpVar.zzM();
                                            int zze2 = zzfpVar.zze();
                                            int i20 = i18 + zzd7;
                                            if (i20 < zze2) {
                                                byte b2 = zzM2[i20];
                                                if (b2 == -1) {
                                                    int i21 = i20 + 1;
                                                    if (i21 == zze2) {
                                                        break;
                                                    }
                                                    byte b3 = zzM2[i21];
                                                    if (zzl((byte) -1, b3) && ((b3 & 8) >> 3) == zzd6) {
                                                        break;
                                                    }
                                                } else if (b2 == 73) {
                                                    int i22 = i20 + 1;
                                                    if (i22 == zze2) {
                                                        break;
                                                    }
                                                    if (zzM2[i22] == 68) {
                                                        int i23 = i20 + 2;
                                                        if (i23 == zze2) {
                                                            break;
                                                        } else if (zzM2[i23] == 51) {
                                                            break;
                                                        }
                                                    }
                                                }
                                            } else {
                                                break;
                                            }
                                        }
                                        int i24 = this.zzk;
                                        i4 = i24 | i17;
                                        if (i4 == 329) {
                                            if (i4 != 511) {
                                                if (i4 != 836) {
                                                    if (i4 != 1075) {
                                                        if (i24 != 256) {
                                                            this.zzk = 256;
                                                            i12 = 13;
                                                            i8 = 2;
                                                        } else {
                                                            zzd5 = i3;
                                                            i12 = 13;
                                                            i8 = 2;
                                                        }
                                                    } else {
                                                        this.zzi = 2;
                                                        this.zzj = 3;
                                                        this.zzs = 0;
                                                        this.zzd.zzK(0);
                                                        zzfpVar.zzK(i3);
                                                        break;
                                                    }
                                                } else {
                                                    i5 = 1024;
                                                }
                                            } else {
                                                i5 = 512;
                                            }
                                        } else {
                                            i5 = ViewUtils.EDGE_TO_EDGE_FLAGS;
                                        }
                                        this.zzk = i5;
                                        zzd5 = i3;
                                        i12 = 13;
                                        i8 = 2;
                                    }
                                }
                            } else {
                                break;
                            }
                        }
                        int i242 = this.zzk;
                        i4 = i242 | i17;
                        if (i4 == 329) {
                        }
                        this.zzk = i5;
                        zzd5 = i3;
                        i12 = 13;
                        i8 = 2;
                    } else {
                        zzfpVar.zzK(zzd5);
                        break;
                    }
                }
                this.zzp = (b & 8) >> 3;
                if (1 != ((b & 1) ^ 1)) {
                    z2 = false;
                } else {
                    z2 = true;
                }
                this.zzl = z2;
                if (!this.zzm) {
                    this.zzi = 1;
                    this.zzj = 0;
                } else {
                    zzi();
                }
                zzfpVar.zzK(i3);
                i6 = 5;
                i7 = 0;
                i8 = 2;
                i9 = 3;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamy
    public final void zzb(zzacx zzacxVar, zzaok zzaokVar) {
        zzaokVar.zzc();
        this.zzf = zzaokVar.zzb();
        zzaea zzw = zzacxVar.zzw(zzaokVar.zza(), 1);
        this.zzg = zzw;
        this.zzu = zzw;
        if (this.zzb) {
            zzaokVar.zzc();
            zzaea zzw2 = zzacxVar.zzw(zzaokVar.zza(), 5);
            this.zzh = zzw2;
            zzak zzakVar = new zzak();
            zzakVar.zzK(zzaokVar.zzb());
            zzakVar.zzW(new ObfuscatedString(new long[]{-6319470464862185556L, 4138625085454013574L, 6927505262172003117L}).toString());
            zzw2.zzl(zzakVar.zzac());
            return;
        }
        this.zzh = new zzact();
    }

    @Override // com.google.android.gms.internal.ads.zzamy
    public final void zzc(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzamy
    public final void zzd(long j, int i) {
        this.zzt = j;
    }

    @Override // com.google.android.gms.internal.ads.zzamy
    public final void zze() {
        this.zzt = -9223372036854775807L;
        zzg();
    }
}
