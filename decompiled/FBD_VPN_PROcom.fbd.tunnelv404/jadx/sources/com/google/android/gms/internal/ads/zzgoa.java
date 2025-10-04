package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zzgoa {
    private static final zzgoa zza = new zzgoa();
    private final Map zzb = new HashMap();

    public static zzgoa zzb() {
        return zza;
    }

    public final synchronized zzggq zza(String str) {
        String obfuscatedString;
        Map map = this.zzb;
        obfuscatedString = new ObfuscatedString(new long[]{-8090848082674811954L, -1967439320911065825L, 8287089868059965817L}).toString();
        if (map.containsKey(obfuscatedString)) {
        } else {
            throw new GeneralSecurityException(new ObfuscatedString(new long[]{6293666884048536594L, -6229001697594938303L, 2678540656561209143L, 2477744740929558816L, 837175509117967693L}).toString());
        }
        return (zzggq) this.zzb.get(obfuscatedString);
    }

    public final synchronized void zzc(String str, zzggq zzggqVar) {
        try {
            if (this.zzb.containsKey(str)) {
                if (((zzggq) this.zzb.get(str)).equals(zzggqVar)) {
                    return;
                }
                throw new GeneralSecurityException(new ObfuscatedString(new long[]{7584820848243016877L, 6457036735525247789L, 2074290709460247022L, 804272122281635211L, -1523292056159468855L}).toString() + str + new ObfuscatedString(new long[]{-8533405774180180022L, -4866556387706458639L, -6630135714681694989L, 4496444921839881130L}).toString() + String.valueOf(this.zzb.get(str)) + new ObfuscatedString(new long[]{-4617276991569293233L, -360693172936037107L, -4939105810129433608L, 5732527833334816182L}).toString() + String.valueOf(zzggqVar));
            }
            this.zzb.put(str, zzggqVar);
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void zzd(Map map) {
        for (Map.Entry entry : map.entrySet()) {
            zzc((String) entry.getKey(), (zzggq) entry.getValue());
        }
    }
}
