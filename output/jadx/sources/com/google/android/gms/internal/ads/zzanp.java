package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;

/* loaded from: classes2.dex */
public final class zzanp implements zzaol {
    private final zzamy zza;
    private final zzfo zzb = new zzfo(new byte[10], 10);
    private int zzc = 0;
    private int zzd;
    private zzfw zze;
    private boolean zzf;
    private boolean zzg;
    private boolean zzh;
    private int zzi;
    private int zzj;
    private boolean zzk;

    public zzanp(zzamy zzamyVar) {
        this.zza = zzamyVar;
    }

    private final void zzd(int i) {
        this.zzc = i;
        this.zzd = 0;
    }

    private final boolean zze(zzfp zzfpVar, @Nullable byte[] bArr, int i) {
        int min = Math.min(zzfpVar.zzb(), i - this.zzd);
        if (min <= 0) {
            return true;
        }
        if (bArr == null) {
            zzfpVar.zzL(min);
        } else {
            zzfpVar.zzG(bArr, this.zzd, min);
        }
        int i2 = this.zzd + min;
        this.zzd = i2;
        if (i2 == i) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r10v3 */
    @Override // com.google.android.gms.internal.ads.zzaol
    public final void zza(zzfp zzfpVar, int i) {
        int i2;
        long j;
        int i3;
        int i4;
        int i5;
        boolean z;
        int i6 = 3;
        zzek.zzb(this.zze);
        int i7 = 1;
        int i8 = -1;
        int i9 = 2;
        ?? r10 = 0;
        if ((i & 1) != 0) {
            int i10 = this.zzc;
            if (i10 != 0 && i10 != 1) {
                if (i10 != 2) {
                    int i11 = this.zzj;
                    if (i11 != -1) {
                        StringBuilder sb = new StringBuilder();
                        sb.append(new ObfuscatedString(new long[]{9217102813462411154L, 8958762752124201276L, -9041202486463942509L, 2557154498456948026L, 2652433360946891503L, -2681294814661498226L}).toString());
                        sb.append(i11);
                        zzff.zzf(new ObfuscatedString(new long[]{4474529122699612056L, -5837691126369839386L, -8630748893054848943L}).toString(), AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{6494235062528669592L, -3998528423477421183L, 4848796642635624236L}), sb));
                    }
                    if (zzfpVar.zze() == 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    this.zza.zzc(z);
                } else {
                    zzff.zzf(new ObfuscatedString(new long[]{-2297162591250504890L, 2084273886935740539L, -6830693895410310684L}).toString(), new ObfuscatedString(new long[]{-3690725565853381748L, 8214518615359150970L, -7945558234408487988L, -3309349292134317561L, -5990482215915750365L, 2545981922164710967L, 8403379126190200173L, -1119355319984918455L}).toString());
                }
            }
            zzd(1);
        }
        int i12 = i;
        while (zzfpVar.zzb() > 0) {
            int i13 = this.zzc;
            if (i13 != 0) {
                if (i13 != i7) {
                    if (i13 != i9) {
                        int zzb = zzfpVar.zzb();
                        int i14 = this.zzj;
                        if (i14 == i8) {
                            i5 = 0;
                        } else {
                            i5 = zzb - i14;
                        }
                        if (i5 > 0) {
                            zzb -= i5;
                            zzfpVar.zzJ(zzfpVar.zzd() + zzb);
                        }
                        this.zza.zza(zzfpVar);
                        int i15 = this.zzj;
                        if (i15 != i8) {
                            int i16 = i15 - zzb;
                            this.zzj = i16;
                            if (i16 == 0) {
                                this.zza.zzc(r10);
                                zzd(i7);
                            }
                        }
                    } else {
                        if (zze(zzfpVar, this.zzb.zza, Math.min(10, this.zzi)) && zze(zzfpVar, null, this.zzi)) {
                            this.zzb.zzk(r10);
                            if (this.zzf) {
                                this.zzb.zzm(4);
                                long zzd = this.zzb.zzd(i6);
                                this.zzb.zzm(i7);
                                int zzd2 = this.zzb.zzd(15) << 15;
                                this.zzb.zzm(i7);
                                long zzd3 = this.zzb.zzd(15);
                                this.zzb.zzm(i7);
                                if (!this.zzh && this.zzg) {
                                    this.zzb.zzm(4);
                                    this.zzb.zzm(i7);
                                    int zzd4 = this.zzb.zzd(15) << 15;
                                    this.zzb.zzm(i7);
                                    i4 = zzd2;
                                    long zzd5 = this.zzb.zzd(15);
                                    this.zzb.zzm(i7);
                                    this.zze.zzb(zzd4 | (this.zzb.zzd(i6) << 30) | zzd5);
                                    this.zzh = true;
                                } else {
                                    i4 = zzd2;
                                }
                                j = this.zze.zzb((zzd << 30) | i4 | zzd3);
                            } else {
                                j = -9223372036854775807L;
                            }
                            if (true != this.zzk) {
                                i3 = 0;
                            } else {
                                i3 = 4;
                            }
                            i12 |= i3;
                            this.zza.zzd(j, i12);
                            zzd(3);
                        }
                    }
                } else if (zze(zzfpVar, this.zzb.zza, 9)) {
                    this.zzb.zzk(0);
                    int zzd6 = this.zzb.zzd(24);
                    if (zzd6 != 1) {
                        zzff.zzf(new ObfuscatedString(new long[]{5854663279810422053L, 7642127533537736773L, 6522782500960483249L}).toString(), AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{2024983466385802339L, -804018224729366297L, -4620856121855886961L, -3537928128566428452L, 1979474462158634234L}), new StringBuilder(), zzd6));
                        this.zzj = -1;
                        i2 = 0;
                    } else {
                        this.zzb.zzm(8);
                        zzfo zzfoVar = this.zzb;
                        int zzd7 = zzfoVar.zzd(16);
                        zzfoVar.zzm(5);
                        this.zzk = this.zzb.zzo();
                        this.zzb.zzm(2);
                        this.zzf = this.zzb.zzo();
                        this.zzg = this.zzb.zzo();
                        this.zzb.zzm(6);
                        int zzd8 = this.zzb.zzd(8);
                        this.zzi = zzd8;
                        if (zzd7 == 0) {
                            this.zzj = -1;
                            i2 = 2;
                        } else {
                            int i17 = (zzd7 - 3) - zzd8;
                            this.zzj = i17;
                            if (i17 < 0) {
                                zzff.zzf(new ObfuscatedString(new long[]{998212908924359134L, -7919452311708483609L, -972296963334020117L}).toString(), AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{5387870813235785630L, 143254833992901787L, 7853407674135642479L, 289082425930679679L, 6804359387698098347L, 2505993672393694244L}), new StringBuilder(), i17));
                                this.zzj = -1;
                            }
                            i2 = 2;
                            zzd(i2);
                        }
                    }
                    zzd(i2);
                }
            } else {
                zzfpVar.zzL(zzfpVar.zzb());
            }
            i6 = 3;
            i7 = 1;
            i8 = -1;
            i9 = 2;
            r10 = 0;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaol
    public final void zzb(zzfw zzfwVar, zzacx zzacxVar, zzaok zzaokVar) {
        this.zze = zzfwVar;
        this.zza.zzb(zzacxVar, zzaokVar);
    }

    @Override // com.google.android.gms.internal.ads.zzaol
    public final void zzc() {
        this.zzc = 0;
        this.zzd = 0;
        this.zzh = false;
        this.zza.zze();
    }
}
