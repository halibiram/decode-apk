package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class zzade {
    @Nullable
    public static zzby zza(zzacv zzacvVar, boolean z) {
        zzago zzagoVar;
        if (z) {
            zzagoVar = null;
        } else {
            zzagoVar = zzagq.zza;
        }
        zzby zza = new zzadm().zza(zzacvVar, zzagoVar);
        if (zza == null || zza.zza() == 0) {
            return null;
        }
        return zza;
    }

    public static zzadg zzb(zzfp zzfpVar) {
        zzfpVar.zzL(1);
        int zzo = zzfpVar.zzo();
        long zzd = zzfpVar.zzd();
        long j = zzo;
        int i = zzo / 18;
        long[] jArr = new long[i];
        long[] jArr2 = new long[i];
        int i2 = 0;
        while (true) {
            if (i2 >= i) {
                break;
            }
            long zzt = zzfpVar.zzt();
            if (zzt == -1) {
                jArr = Arrays.copyOf(jArr, i2);
                jArr2 = Arrays.copyOf(jArr2, i2);
                break;
            }
            jArr[i2] = zzt;
            jArr2[i2] = zzfpVar.zzt();
            zzfpVar.zzL(2);
            i2++;
        }
        zzfpVar.zzL((int) ((zzd + j) - zzfpVar.zzd()));
        return new zzadg(jArr, jArr2);
    }
}
