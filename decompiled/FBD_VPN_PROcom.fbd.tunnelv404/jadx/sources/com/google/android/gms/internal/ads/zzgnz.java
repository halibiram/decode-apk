package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public final class zzgnz {
    private static final zzgnz zza = new zzgnz();
    private static final zzgny zzb = new zzgny(null);
    private final AtomicReference zzc = new AtomicReference();

    public static zzgnz zza() {
        return zza;
    }

    public final zzgry zzb() {
        zzgry zzgryVar = (zzgry) this.zzc.get();
        if (zzgryVar == null) {
            return zzb;
        }
        return zzgryVar;
    }
}
