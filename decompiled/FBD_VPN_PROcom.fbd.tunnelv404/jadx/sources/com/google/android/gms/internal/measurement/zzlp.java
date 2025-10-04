package com.google.android.gms.internal.measurement;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
final class zzlp {
    private static final zzlo zza;
    private static final zzlo zzb;

    static {
        zzlo zzloVar = null;
        try {
            zzloVar = (zzlo) Class.forName(new ObfuscatedString(new long[]{8219085188711659076L, 4766797467893190918L, -3878725912800390262L, 2128940648469216637L, 1760464504659490091L, 2575413499881843850L, 3108473975475758176L}).toString()).getDeclaredConstructor(null).newInstance(null);
        } catch (Exception unused) {
        }
        zza = zzloVar;
        zzb = new zzlo();
    }

    public static zzlo zza() {
        return zza;
    }

    public static zzlo zzb() {
        return zzb;
    }
}
