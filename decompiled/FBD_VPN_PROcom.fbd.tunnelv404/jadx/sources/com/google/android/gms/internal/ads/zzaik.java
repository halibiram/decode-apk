package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;

/* loaded from: classes2.dex */
final class zzaik {
    public final zzado zza;
    public final long zzb;
    public final long zzc;
    public final int zzd;
    public final int zze;

    @Nullable
    public final long[] zzf;

    private zzaik(zzado zzadoVar, long j, long j2, @Nullable long[] jArr, int i, int i2) {
        this.zza = zzadoVar;
        this.zzb = j;
        this.zzc = j2;
        this.zzf = jArr;
        this.zzd = i;
        this.zze = i2;
    }

    public static zzaik zza(zzado zzadoVar, zzfp zzfpVar) {
        int i;
        long j;
        long[] jArr;
        int i2;
        int i3;
        int zzg = zzfpVar.zzg();
        if ((zzg & 1) != 0) {
            i = zzfpVar.zzp();
        } else {
            i = -1;
        }
        if ((zzg & 2) != 0) {
            j = zzfpVar.zzu();
        } else {
            j = -1;
        }
        long j2 = j;
        if ((zzg & 4) == 4) {
            long[] jArr2 = new long[100];
            for (int i4 = 0; i4 < 100; i4++) {
                jArr2[i4] = zzfpVar.zzm();
            }
            jArr = jArr2;
        } else {
            jArr = null;
        }
        if ((zzg & 8) != 0) {
            zzfpVar.zzL(4);
        }
        if (zzfpVar.zzb() >= 24) {
            zzfpVar.zzL(21);
            int zzo = zzfpVar.zzo();
            i3 = zzo & 4095;
            i2 = zzo >> 12;
        } else {
            i2 = -1;
            i3 = -1;
        }
        return new zzaik(zzadoVar, i, j2, jArr, i2, i3);
    }
}
