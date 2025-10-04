package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzhbn {
    private static final zzhbn zza = new zzhbn();
    private final ConcurrentMap zzc = new ConcurrentHashMap();
    private final zzhbz zzb = new zzhaw();

    private zzhbn() {
    }

    public static zzhbn zza() {
        return zza;
    }

    public final zzhby zzb(Class cls) {
        zzhae.zzc(cls, new ObfuscatedString(new long[]{5208715079796209071L, -168919604860836662L, 6484432431399339997L}).toString());
        zzhby zzhbyVar = (zzhby) this.zzc.get(cls);
        if (zzhbyVar == null) {
            zzhbyVar = this.zzb.zza(cls);
            zzhae.zzc(cls, new ObfuscatedString(new long[]{7998639070285357762L, -6296145677774824065L, -758323228677579284L}).toString());
            zzhby zzhbyVar2 = (zzhby) this.zzc.putIfAbsent(cls, zzhbyVar);
            if (zzhbyVar2 != null) {
                return zzhbyVar2;
            }
        }
        return zzhbyVar;
    }
}
