package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public final class zzbis {
    private static final AtomicReference zzb = new AtomicReference();
    private static final AtomicReference zzc = new AtomicReference();
    static final AtomicBoolean zza = new AtomicBoolean();

    public static zzbiq zza() {
        return (zzbiq) zzb.get();
    }

    public static zzbir zzb() {
        return (zzbir) zzc.get();
    }

    public static void zzc(zzbiq zzbiqVar) {
        zzb.set(zzbiqVar);
    }
}
