package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zzgnw {
    private static final zzgnw zza = new zzgnw();
    private final Map zzb = new HashMap();

    public static zzgnw zza() {
        return zza;
    }

    public final synchronized void zzb(zzgnv zzgnvVar, Class cls) {
        try {
            zzgnv zzgnvVar2 = (zzgnv) this.zzb.get(cls);
            if (zzgnvVar2 != null && !zzgnvVar2.equals(zzgnvVar)) {
                throw new GeneralSecurityException(new ObfuscatedString(new long[]{-4105689326877054590L, 832253947017747257L, 2719637152983788253L, 5716904814675893824L, 2223233275098890424L, 6632958144463203724L, -4779520556318290362L, 6319242262254096293L, -8407526491962897110L}).toString());
            }
            this.zzb.put(cls, zzgnvVar);
        } catch (Throwable th) {
            throw th;
        }
    }
}
