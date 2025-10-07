package com.google.android.gms.internal.measurement;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
final class zzjr {
    private static final zzjp zza = new zzjq();
    private static final zzjp zzb;

    static {
        zzjp zzjpVar = null;
        try {
            zzjpVar = (zzjp) Class.forName(new ObfuscatedString(new long[]{-3035299424395784824L, 1271217616034146281L, 5879605930240683211L, 154951085439633619L, 268796718355541884L, 3654115687059935087L}).toString()).getDeclaredConstructor(null).newInstance(null);
        } catch (Exception unused) {
        }
        zzb = zzjpVar;
    }

    public static zzjp zza() {
        zzjp zzjpVar = zzb;
        if (zzjpVar != null) {
            return zzjpVar;
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{9121781115566507761L, 2239655345493478502L, 6967565912331586434L, 5665893191972813431L, 614865230937683094L, -1549283201596098505L, 964845150593195527L}).toString());
    }

    public static zzjp zzb() {
        return zza;
    }
}
