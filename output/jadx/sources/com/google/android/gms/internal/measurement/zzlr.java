package com.google.android.gms.internal.measurement;

import com.panda912.muddy.ObfuscatedString;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzlr {
    private static final zzlr zza = new zzlr();
    private final ConcurrentMap zzc = new ConcurrentHashMap();
    private final zzlv zzb = new zzlb();

    private zzlr() {
    }

    public static zzlr zza() {
        return zza;
    }

    public final zzlu zzb(Class cls) {
        zzkk.zzf(cls, new ObfuscatedString(new long[]{-5699608537156033317L, 3887219069737603456L, -5489466119894671152L}).toString());
        zzlu zzluVar = (zzlu) this.zzc.get(cls);
        if (zzluVar == null) {
            zzluVar = this.zzb.zza(cls);
            zzkk.zzf(cls, new ObfuscatedString(new long[]{2914072392374692389L, 8670088610358876681L, 1229836592676663888L}).toString());
            zzkk.zzf(zzluVar, new ObfuscatedString(new long[]{-8773460680636826643L, -4086636728528282026L}).toString());
            zzlu zzluVar2 = (zzlu) this.zzc.putIfAbsent(cls, zzluVar);
            if (zzluVar2 != null) {
                return zzluVar2;
            }
        }
        return zzluVar;
    }
}
