package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;

/* loaded from: classes2.dex */
public final class zzamw implements zzamy {

    @Nullable
    private final String zzb;
    private String zzc;
    private zzaea zzd;
    private int zzf;
    private int zzg;
    private long zzh;
    private zzam zzi;
    private int zzj;
    private final zzfp zza = new zzfp(new byte[18]);
    private int zze = 0;
    private long zzk = -9223372036854775807L;

    public zzamw(@Nullable String str) {
        this.zzb = str;
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x00f2  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x011a  */
    @Override // com.google.android.gms.internal.ads.zzamy
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zza(zzfp zzfpVar) {
        int i;
        int i2;
        byte b;
        boolean z;
        int i3;
        int i4;
        byte b2;
        int i5;
        byte b3;
        int i6;
        zzek.zzb(this.zzd);
        while (zzfpVar.zzb() > 0) {
            int i7 = this.zze;
            boolean z2 = true;
            if (i7 != 0) {
                if (i7 != 1) {
                    int min = Math.min(zzfpVar.zzb(), this.zzj - this.zzf);
                    this.zzd.zzr(zzfpVar, min);
                    int i8 = this.zzf + min;
                    this.zzf = i8;
                    if (i8 == this.zzj) {
                        if (this.zzk == -9223372036854775807L) {
                            z2 = false;
                        }
                        zzek.zzf(z2);
                        this.zzd.zzt(this.zzk, 1, this.zzj, 0, null);
                        this.zzk += this.zzh;
                        this.zze = 0;
                    }
                } else {
                    byte[] zzM = this.zza.zzM();
                    int min2 = Math.min(zzfpVar.zzb(), 18 - this.zzf);
                    zzfpVar.zzG(zzM, this.zzf, min2);
                    int i9 = this.zzf + min2;
                    this.zzf = i9;
                    if (i9 == 18) {
                        byte[] zzM2 = this.zza.zzM();
                        if (this.zzi == null) {
                            zzam zza = zzacr.zza(zzM2, this.zzc, this.zzb, null);
                            this.zzi = zza;
                            this.zzd.zzl(zza);
                        }
                        byte b4 = zzM2[0];
                        if (b4 != -2) {
                            if (b4 != -1) {
                                if (b4 != 31) {
                                    i = (zzM2[5] & 3) << 12;
                                    i2 = (zzM2[6] & 255) << 4;
                                    b = zzM2[7];
                                } else {
                                    i6 = ((zzM2[8] & 60) >> 2) | ((3 & zzM2[6]) << 12) | ((zzM2[7] & 255) << 4);
                                }
                            } else {
                                i6 = ((zzM2[7] & 3) << 12) | ((zzM2[6] & 255) << 4) | ((zzM2[9] & 60) >> 2);
                            }
                            i3 = i6 + 1;
                            z = true;
                            if (z) {
                                i3 = (i3 * 16) / 14;
                            }
                            this.zzj = i3;
                            if (b4 == -2) {
                                if (b4 != -1) {
                                    if (b4 != 31) {
                                        i4 = (zzM2[4] & 1) << 6;
                                        b2 = zzM2[5];
                                    } else {
                                        i4 = (zzM2[5] & 7) << 4;
                                        b3 = zzM2[6];
                                    }
                                } else {
                                    i4 = (zzM2[4] & 7) << 4;
                                    b3 = zzM2[7];
                                }
                                i5 = b3 & 60;
                                this.zzh = (int) ((((((i5 >> 2) | i4) + 1) * 32) * 1000000) / this.zzi.zzA);
                                this.zza.zzK(0);
                                this.zzd.zzr(this.zza, 18);
                                this.zze = 2;
                            } else {
                                i4 = (zzM2[5] & 1) << 6;
                                b2 = zzM2[4];
                            }
                            i5 = b2 & 252;
                            this.zzh = (int) ((((((i5 >> 2) | i4) + 1) * 32) * 1000000) / this.zzi.zzA);
                            this.zza.zzK(0);
                            this.zzd.zzr(this.zza, 18);
                            this.zze = 2;
                        } else {
                            i = (zzM2[4] & 3) << 12;
                            i2 = (zzM2[7] & 255) << 4;
                            b = zzM2[6];
                        }
                        i3 = (i | i2 | ((b & 240) >> 4)) + 1;
                        z = false;
                        if (z) {
                        }
                        this.zzj = i3;
                        if (b4 == -2) {
                        }
                        i5 = b2 & 252;
                        this.zzh = (int) ((((((i5 >> 2) | i4) + 1) * 32) * 1000000) / this.zzi.zzA);
                        this.zza.zzK(0);
                        this.zzd.zzr(this.zza, 18);
                        this.zze = 2;
                    }
                }
            } else {
                while (zzfpVar.zzb() > 0) {
                    int i10 = this.zzg << 8;
                    this.zzg = i10;
                    int zzm = i10 | zzfpVar.zzm();
                    this.zzg = zzm;
                    if (zzm == 2147385345 || zzm == -25230976 || zzm == 536864768 || zzm == -14745368) {
                        byte[] zzM3 = this.zza.zzM();
                        int i11 = this.zzg;
                        zzM3[0] = (byte) ((i11 >> 24) & 255);
                        zzM3[1] = (byte) ((i11 >> 16) & 255);
                        zzM3[2] = (byte) ((i11 >> 8) & 255);
                        zzM3[3] = (byte) (i11 & 255);
                        this.zzf = 4;
                        this.zzg = 0;
                        this.zze = 1;
                        break;
                    }
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamy
    public final void zzb(zzacx zzacxVar, zzaok zzaokVar) {
        zzaokVar.zzc();
        this.zzc = zzaokVar.zzb();
        this.zzd = zzacxVar.zzw(zzaokVar.zza(), 1);
    }

    @Override // com.google.android.gms.internal.ads.zzamy
    public final void zzc(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzamy
    public final void zzd(long j, int i) {
        this.zzk = j;
    }

    @Override // com.google.android.gms.internal.ads.zzamy
    public final void zze() {
        this.zze = 0;
        this.zzf = 0;
        this.zzg = 0;
        this.zzk = -9223372036854775807L;
    }
}
