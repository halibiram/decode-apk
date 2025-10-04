package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzhgv {
    public static zzhgv zzb(Class cls) {
        if (System.getProperty(new ObfuscatedString(new long[]{4959164580398303975L, -2888216313653662123L, -3572945865368109872L}).toString()).equalsIgnoreCase(new ObfuscatedString(new long[]{-5817219994682525591L, -3599178051807637101L}).toString())) {
            return new zzhgq(cls.getSimpleName());
        }
        return new zzhgs(cls.getSimpleName());
    }

    public abstract void zza(String str);
}
