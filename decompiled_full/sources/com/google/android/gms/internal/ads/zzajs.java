package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import java.io.EOFException;
import java.io.IOException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzajs implements zzajz {
    private final zzajy zza;
    private final long zzb;
    private final long zzc;
    private final zzake zzd;
    private int zze;
    private long zzf;
    private long zzg;
    private long zzh;
    private long zzi;
    private long zzj;
    private long zzk;
    private long zzl;

    public zzajs(zzake zzakeVar, long j, long j2, long j3, long j4, boolean z) {
        boolean z2;
        if (j >= 0 && j2 > j) {
            z2 = true;
        } else {
            z2 = false;
        }
        zzek.zzd(z2);
        this.zzd = zzakeVar;
        this.zzb = j;
        this.zzc = j2;
        if (j3 != j2 - j && !z) {
            this.zze = 0;
        } else {
            this.zzf = j4;
            this.zze = 4;
        }
        this.zza = new zzajy();
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x00b5 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00b6  */
    @Override // com.google.android.gms.internal.ads.zzajz
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final long zzd(zzacv zzacvVar) {
        long j;
        long max;
        int i = this.zze;
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        return -1L;
                    }
                } else {
                    long j2 = this.zzi;
                    long j3 = this.zzj;
                    if (j2 != j3) {
                        long zzf = zzacvVar.zzf();
                        if (!this.zza.zzc(zzacvVar, j3)) {
                            max = this.zzi;
                            if (max == zzf) {
                                throw new IOException(new ObfuscatedString(new long[]{-3186156618189760879L, 7639574191470442910L, 7226285694882591417L, 3480216963118465146L, -6073642486191670698L}).toString());
                            }
                        } else {
                            this.zza.zzb(zzacvVar, false);
                            zzacvVar.zzj();
                            long j4 = this.zzh;
                            zzajy zzajyVar = this.zza;
                            long j5 = zzajyVar.zzb;
                            long j6 = j4 - j5;
                            int i2 = zzajyVar.zzd + zzajyVar.zze;
                            if (j6 < 0 || j6 >= 72000) {
                                if (j6 < 0) {
                                    this.zzj = zzf;
                                    this.zzl = j5;
                                } else {
                                    this.zzi = zzacvVar.zzf() + i2;
                                    this.zzk = j5;
                                }
                                long j7 = this.zzj;
                                long j8 = this.zzi;
                                long j9 = j7 - j8;
                                if (j9 < 100000) {
                                    this.zzj = j8;
                                    max = j8;
                                } else {
                                    long j10 = i2;
                                    if (j6 <= 0) {
                                        j = 2;
                                    } else {
                                        j = 1;
                                    }
                                    max = Math.max(j8, Math.min(((j6 * j9) / (this.zzl - this.zzk)) + (zzacvVar.zzf() - (j10 * j)), j7 - 1));
                                }
                            }
                        }
                        if (max == -1) {
                            return max;
                        }
                        this.zze = 3;
                    }
                    max = -1;
                    if (max == -1) {
                    }
                }
                while (true) {
                    this.zza.zzc(zzacvVar, -1L);
                    this.zza.zzb(zzacvVar, false);
                    zzajy zzajyVar2 = this.zza;
                    if (zzajyVar2.zzb > this.zzh) {
                        zzacvVar.zzj();
                        this.zze = 4;
                        return -(this.zzk + 2);
                    }
                    ((zzack) zzacvVar).zzo(zzajyVar2.zzd + zzajyVar2.zze, false);
                    this.zzi = zzacvVar.zzf();
                    this.zzk = this.zza.zzb;
                }
            }
        } else {
            long zzf2 = zzacvVar.zzf();
            this.zzg = zzf2;
            this.zze = 1;
            long j11 = this.zzc - 65307;
            if (j11 > zzf2) {
                return j11;
            }
        }
        this.zza.zza();
        if (this.zza.zzc(zzacvVar, -1L)) {
            this.zza.zzb(zzacvVar, false);
            zzajy zzajyVar3 = this.zza;
            ((zzack) zzacvVar).zzo(zzajyVar3.zzd + zzajyVar3.zze, false);
            long j12 = this.zza.zzb;
            while (true) {
                zzajy zzajyVar4 = this.zza;
                if ((zzajyVar4.zza & 4) == 4 || !zzajyVar4.zzc(zzacvVar, -1L) || zzacvVar.zzf() >= this.zzc || !this.zza.zzb(zzacvVar, true)) {
                    break;
                }
                zzajy zzajyVar5 = this.zza;
                if (!zzacy.zze(zzacvVar, zzajyVar5.zzd + zzajyVar5.zze)) {
                    break;
                }
                j12 = this.zza.zzb;
            }
            this.zzf = j12;
            this.zze = 4;
            return this.zzg;
        }
        throw new EOFException();
    }

    @Override // com.google.android.gms.internal.ads.zzajz
    @Nullable
    public final /* bridge */ /* synthetic */ zzadu zze() {
        zzajq zzajqVar = null;
        if (this.zzf != 0) {
            return new zzajr(this, zzajqVar);
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzajz
    public final void zzg(long j) {
        this.zzh = Math.max(0L, Math.min(j, this.zzf - 1));
        this.zze = 2;
        this.zzi = this.zzb;
        this.zzj = this.zzc;
        this.zzk = 0L;
        this.zzl = this.zzf;
    }
}
