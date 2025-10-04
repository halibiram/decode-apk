package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;

/* loaded from: classes2.dex */
public final class zzcvz {
    private final zzddm zza;

    @Nullable
    private final zzdft zzb;

    public zzcvz(zzddm zzddmVar, @Nullable zzdft zzdftVar) {
        this.zza = zzddmVar;
        this.zzb = zzdftVar;
    }

    public final zzddm zza() {
        return this.zza;
    }

    @Nullable
    public final zzdft zzb() {
        return this.zzb;
    }

    public final zzdim zzc() {
        zzdft zzdftVar = this.zzb;
        if (zzdftVar != null) {
            return new zzdim(zzdftVar, zzcep.zzf);
        }
        return new zzdim(new zzcvy(this), zzcep.zzf);
    }
}
