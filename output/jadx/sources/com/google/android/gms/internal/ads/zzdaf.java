package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Nullable;

/* loaded from: classes2.dex */
public final class zzdaf {
    private Context zza;
    private zzfhh zzb;
    private Bundle zzc;

    @Nullable
    private zzfgz zzd;

    @Nullable
    private zzczz zze;

    @Nullable
    private zzeis zzf;

    public final zzdaf zzd(@Nullable zzeis zzeisVar) {
        this.zzf = zzeisVar;
        return this;
    }

    public final zzdaf zze(Context context) {
        this.zza = context;
        return this;
    }

    public final zzdaf zzf(Bundle bundle) {
        this.zzc = bundle;
        return this;
    }

    public final zzdaf zzg(@Nullable zzczz zzczzVar) {
        this.zze = zzczzVar;
        return this;
    }

    public final zzdaf zzh(zzfgz zzfgzVar) {
        this.zzd = zzfgzVar;
        return this;
    }

    public final zzdaf zzi(zzfhh zzfhhVar) {
        this.zzb = zzfhhVar;
        return this;
    }

    public final zzdah zzj() {
        return new zzdah(this, null);
    }
}
