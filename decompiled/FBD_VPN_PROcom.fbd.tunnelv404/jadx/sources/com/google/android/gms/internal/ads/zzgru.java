package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import j$.util.DesugarCollections;
import java.util.HashMap;

/* loaded from: classes2.dex */
public final class zzgru {
    private HashMap zza = new HashMap();

    public final zzgrw zza() {
        if (this.zza != null) {
            zzgrw zzgrwVar = new zzgrw(DesugarCollections.unmodifiableMap(this.zza), null);
            this.zza = null;
            return zzgrwVar;
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{6588505361281355794L, -595561490857068782L, 2127863793881142746L, 647662777878918965L, 7223441864854704773L}).toString());
    }
}
