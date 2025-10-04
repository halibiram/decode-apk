package com.google.android.gms.internal.ads;

import j$.util.DesugarCollections;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class zzhgz implements zzhhd {
    private final Map zza;

    public zzhgz(Map map) {
        this.zza = DesugarCollections.unmodifiableMap(map);
    }

    public final Map zza() {
        return this.zza;
    }
}
