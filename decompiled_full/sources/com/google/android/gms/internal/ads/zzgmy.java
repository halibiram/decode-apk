package com.google.android.gms.internal.ads;

import j$.util.DesugarCollections;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zzgmy {
    final Map zza = new HashMap();
    final Map zzb = new HashMap();

    private zzgmy() {
    }

    public final zzgmy zza(Enum r2, Object obj) {
        this.zza.put(r2, obj);
        this.zzb.put(obj, r2);
        return this;
    }

    public final zzgna zzb() {
        return new zzgna(DesugarCollections.unmodifiableMap(this.zza), DesugarCollections.unmodifiableMap(this.zzb), null);
    }

    public /* synthetic */ zzgmy(zzgmx zzgmxVar) {
    }
}
