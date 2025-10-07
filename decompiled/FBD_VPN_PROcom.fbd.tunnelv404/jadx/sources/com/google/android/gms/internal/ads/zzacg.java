package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;

/* loaded from: classes2.dex */
public class zzacg {
    protected final zzaca zza;
    protected final zzacf zzb;

    @Nullable
    protected zzacc zzc;
    private final int zzd;

    public zzacg(zzacd zzacdVar, zzacf zzacfVar, long j, long j2, long j3, long j4, long j5, long j6, int i) {
        this.zzb = zzacfVar;
        this.zzd = i;
        this.zza = new zzaca(zzacdVar, j, 0L, j3, j4, j5, j6);
    }

    public static final int zzf(zzacv zzacvVar, long j, zzadr zzadrVar) {
        if (j == zzacvVar.zzf()) {
            return 0;
        }
        zzadrVar.zza = j;
        return 1;
    }

    public static final boolean zzg(zzacv zzacvVar, long j) {
        long zzf = j - zzacvVar.zzf();
        if (zzf < 0 || zzf > 262144) {
            return false;
        }
        ((zzack) zzacvVar).zzo((int) zzf, false);
        return true;
    }

    public final int zza(zzacv zzacvVar, zzadr zzadrVar) {
        long j;
        long j2;
        long j3;
        long j4;
        int i;
        long j5;
        long j6;
        long j7;
        long j8;
        long j9;
        long j10;
        long j11;
        while (true) {
            zzacc zzaccVar = this.zzc;
            zzek.zzb(zzaccVar);
            j = zzaccVar.zzf;
            j2 = zzaccVar.zzg;
            long j12 = j2 - j;
            int i2 = this.zzd;
            j3 = zzaccVar.zzh;
            if (j12 <= i2) {
                zzc(false, j);
                return zzf(zzacvVar, j, zzadrVar);
            }
            if (!zzg(zzacvVar, j3)) {
                return zzf(zzacvVar, j3, zzadrVar);
            }
            zzacvVar.zzj();
            zzacf zzacfVar = this.zzb;
            j4 = zzaccVar.zzb;
            zzace zza = zzacfVar.zza(zzacvVar, j4);
            i = zza.zzb;
            if (i != -3) {
                if (i != -2) {
                    if (i != -1) {
                        j5 = zza.zzd;
                        zzg(zzacvVar, j5);
                        j6 = zza.zzd;
                        zzc(true, j6);
                        j7 = zza.zzd;
                        return zzf(zzacvVar, j7, zzadrVar);
                    }
                    j8 = zza.zzc;
                    j9 = zza.zzd;
                    zzacc.zzg(zzaccVar, j8, j9);
                } else {
                    j10 = zza.zzc;
                    j11 = zza.zzd;
                    zzacc.zzh(zzaccVar, j10, j11);
                }
            } else {
                zzc(false, j3);
                return zzf(zzacvVar, j3, zzadrVar);
            }
        }
    }

    public final zzadu zzb() {
        return this.zza;
    }

    public final void zzc(boolean z, long j) {
        this.zzc = null;
        this.zzb.zzb();
    }

    public final void zzd(long j) {
        long j2;
        long j3;
        long j4;
        long j5;
        long j6;
        zzacc zzaccVar = this.zzc;
        if (zzaccVar != null) {
            j6 = zzaccVar.zza;
            if (j6 == j) {
                return;
            }
        }
        zzaca zzacaVar = this.zza;
        long zzf = zzacaVar.zzf(j);
        j2 = zzacaVar.zzc;
        j3 = zzacaVar.zzd;
        j4 = zzacaVar.zze;
        j5 = zzacaVar.zzf;
        this.zzc = new zzacc(j, zzf, 0L, j2, j3, j4, j5);
    }

    public final boolean zze() {
        return this.zzc != null;
    }
}
