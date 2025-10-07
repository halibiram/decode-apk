package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
final class zzhba {
    private static final zzhaz zza;
    private static final zzhaz zzb;

    static {
        zzhaz zzhazVar = null;
        try {
            zzhazVar = (zzhaz) Class.forName(new ObfuscatedString(new long[]{6675821391275856698L, 3975346283929598761L, 606723391571906358L, 1352085421039615294L, -8791903010534287244L, -6406616543409814983L}).toString()).getDeclaredConstructor(null).newInstance(null);
        } catch (Exception unused) {
        }
        zza = zzhazVar;
        zzb = new zzhaz();
    }

    public static zzhaz zza() {
        return zza;
    }

    public static zzhaz zzb() {
        return zzb;
    }
}
