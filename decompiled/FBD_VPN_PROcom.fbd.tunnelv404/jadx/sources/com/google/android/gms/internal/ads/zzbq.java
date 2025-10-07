package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.util.HashSet;

/* loaded from: classes2.dex */
public final class zzbq {
    private static final HashSet zza = new HashSet();
    private static String zzb = new ObfuscatedString(new long[]{3981465332784958896L, -7683004886825271974L, -7249042536509426090L}).toString();

    public static synchronized String zza() {
        String str;
        synchronized (zzbq.class) {
            str = zzb;
        }
        return str;
    }

    public static synchronized void zzb(String str) {
        synchronized (zzbq.class) {
            if (zza.add(str)) {
                zzb = zzb + new ObfuscatedString(new long[]{-3643788128091165322L, 704067130251517807L}).toString() + str;
            }
        }
    }
}
