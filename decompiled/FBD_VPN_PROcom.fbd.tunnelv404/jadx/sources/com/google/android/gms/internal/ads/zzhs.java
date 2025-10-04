package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import j$.util.DesugarCollections;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zzhs {
    private final Map zza = new HashMap();

    @Nullable
    private Map zzb;

    public final synchronized Map zza() {
        try {
            if (this.zzb == null) {
                this.zzb = DesugarCollections.unmodifiableMap(new HashMap(this.zza));
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.zzb;
    }
}
