package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;

/* loaded from: classes2.dex */
public final class zzyp {
    public final int zza;
    public final zzmi[] zzb;
    public final zzyi[] zzc;
    public final zzdk zzd;

    @Nullable
    public final Object zze;

    public zzyp(zzmi[] zzmiVarArr, zzyi[] zzyiVarArr, zzdk zzdkVar, @Nullable Object obj) {
        this.zzb = zzmiVarArr;
        this.zzc = (zzyi[]) zzyiVarArr.clone();
        this.zzd = zzdkVar;
        this.zze = obj;
        this.zza = zzmiVarArr.length;
    }

    public final boolean zza(@Nullable zzyp zzypVar, int i) {
        if (zzypVar == null || !zzfy.zzF(this.zzb[i], zzypVar.zzb[i]) || !zzfy.zzF(this.zzc[i], zzypVar.zzc[i])) {
            return false;
        }
        return true;
    }

    public final boolean zzb(int i) {
        if (this.zzb[i] != null) {
            return true;
        }
        return false;
    }
}
