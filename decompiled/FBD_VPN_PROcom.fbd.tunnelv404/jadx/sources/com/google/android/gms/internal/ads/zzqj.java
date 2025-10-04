package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.AudioFormat;
import androidx.annotation.Nullable;

/* loaded from: classes2.dex */
public final class zzqj {
    private Boolean zza;

    public zzqj() {
    }

    public final zzpg zza(zzam zzamVar, zzk zzkVar) {
        zzamVar.getClass();
        zzkVar.getClass();
        int i = zzfy.zza;
        if (i >= 29 && zzamVar.zzA != -1) {
            if (this.zza == null) {
                this.zza = Boolean.FALSE;
            }
            String str = zzamVar.zzm;
            str.getClass();
            int zza = zzcb.zza(str, zzamVar.zzj);
            if (zza != 0 && i >= zzfy.zzf(zza)) {
                int zzg = zzfy.zzg(zzamVar.zzz);
                if (zzg == 0) {
                    return zzpg.zza;
                }
                try {
                    AudioFormat zzv = zzfy.zzv(zzamVar.zzA, zzg, zza);
                    if (i >= 31) {
                        return zzqi.zza(zzv, zzkVar.zza().zza, false);
                    }
                    return zzqh.zza(zzv, zzkVar.zza().zza, false);
                } catch (IllegalArgumentException unused) {
                    return zzpg.zza;
                }
            }
            return zzpg.zza;
        }
        return zzpg.zza;
    }

    public zzqj(@Nullable Context context) {
    }
}
