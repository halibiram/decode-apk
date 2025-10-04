package com.google.android.gms.internal.ads;

import androidx.annotation.VisibleForTesting;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class zzyk {
    private final String[] zza;
    private final int[] zzb;
    private final zzws[] zzc;
    private final int[] zzd;
    private final int[][][] zze;
    private final zzws zzf;

    @VisibleForTesting
    public zzyk(String[] strArr, int[] iArr, zzws[] zzwsVarArr, int[] iArr2, int[][][] iArr3, zzws zzwsVar) {
        this.zza = strArr;
        this.zzb = iArr;
        this.zzc = zzwsVarArr;
        this.zze = iArr3;
        this.zzd = iArr2;
        this.zzf = zzwsVar;
    }

    public final int zza(int i, int i2, boolean z) {
        int i3 = this.zzc[i].zzb(i2).zzb;
        int[] iArr = new int[1];
        int i4 = 0;
        int i5 = 0;
        for (char c = 0; c <= 0; c = 1) {
            if ((this.zze[i][i2][0] & 7) == 4) {
                iArr[i5] = 0;
                i5++;
            }
        }
        int[] copyOf = Arrays.copyOf(iArr, i5);
        String str = null;
        boolean z2 = false;
        int i6 = 0;
        int i7 = 16;
        while (i4 < copyOf.length) {
            String str2 = this.zzc[i].zzb(i2).zzb(copyOf[i4]).zzm;
            int i8 = i6 + 1;
            if (i6 == 0) {
                str = str2;
            } else {
                z2 |= !zzfy.zzF(str, str2);
            }
            i7 = Math.min(i7, this.zze[i][i2][i4] & 24);
            i4++;
            i6 = i8;
        }
        if (z2) {
            return Math.min(i7, this.zzd[i]);
        }
        return i7;
    }

    public final int zzb(int i, int i2, int i3) {
        return this.zze[i][i2][i3];
    }

    public final int zzc(int i) {
        return this.zzb[i];
    }

    public final zzws zzd(int i) {
        return this.zzc[i];
    }

    public final zzws zze() {
        return this.zzf;
    }
}
