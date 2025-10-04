package com.google.android.gms.internal.consent_sdk;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzdo implements zzdn {
    private static final zzdo zza = new zzdo(null);
    private final Object zzb;

    private zzdo(Object obj) {
        this.zzb = obj;
    }

    public static zzdn zzb(Object obj) {
        if (obj != null) {
            return new zzdo(obj);
        }
        throw new NullPointerException(new ObfuscatedString(new long[]{-8918194939482979753L, -400650204800085116L, 7003679896614772859L, 7023505557631341895L}).toString());
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzdr
    public final Object zza() {
        return this.zzb;
    }
}
