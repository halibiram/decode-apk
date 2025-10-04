package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
final class zzhbk {
    private static final zzhbj zza;
    private static final zzhbj zzb;

    static {
        zzhbj zzhbjVar = null;
        try {
            zzhbjVar = (zzhbj) Class.forName(new ObfuscatedString(new long[]{-5605153727978540112L, -4111529082930104667L, 3134898003263074896L, 4511705136707303816L, -2922109616018590175L, -4524596361266198588L, -5715755624790611821L}).toString()).getDeclaredConstructor(null).newInstance(null);
        } catch (Exception unused) {
        }
        zza = zzhbjVar;
        zzb = new zzhbj();
    }

    public static zzhbj zza() {
        return zza;
    }

    public static zzhbj zzb() {
        return zzb;
    }
}
