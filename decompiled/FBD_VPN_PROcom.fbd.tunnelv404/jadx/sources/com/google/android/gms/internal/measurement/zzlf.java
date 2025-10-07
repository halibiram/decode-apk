package com.google.android.gms.internal.measurement;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
final class zzlf {
    private static final zzle zza;
    private static final zzle zzb;

    static {
        zzle zzleVar = null;
        try {
            zzleVar = (zzle) Class.forName(new ObfuscatedString(new long[]{-1916867213853544685L, -5094805401720154557L, -1390316656973277647L, 1997990038612307398L, -1357608308282667540L, 5292582645907870945L}).toString()).getDeclaredConstructor(null).newInstance(null);
        } catch (Exception unused) {
        }
        zza = zzleVar;
        zzb = new zzle();
    }

    public static zzle zza() {
        return zza;
    }

    public static zzle zzb() {
        return zzb;
    }
}
