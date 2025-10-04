package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.google.android.gms.common.util.Clock;

/* loaded from: classes2.dex */
public final class zzemq {

    @Nullable
    private zzemh zza;

    public zzemq() {
    }

    public static zzemq zzb(zzemh zzemhVar) {
        return new zzemq(zzemhVar);
    }

    public final zzemh zza(Clock clock, zzemj zzemjVar, zzeis zzeisVar, zzfny zzfnyVar) {
        zzemh zzemhVar = this.zza;
        if (zzemhVar != null) {
            return zzemhVar;
        }
        return new zzemh(clock, zzemjVar, zzeisVar, zzfnyVar);
    }

    private zzemq(zzemh zzemhVar) {
        this.zza = zzemhVar;
    }
}
