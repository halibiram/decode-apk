package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzhhe implements zzhhd, zzhgx {
    private static final zzhhe zza = new zzhhe(null);
    private final Object zzb;

    private zzhhe(Object obj) {
        this.zzb = obj;
    }

    public static zzhhd zza(Object obj) {
        zzhhl.zza(obj, new ObfuscatedString(new long[]{-6677069283569231593L, 9092304831506184741L, -5551414067734020433L, -4671889969246156772L}).toString());
        return new zzhhe(obj);
    }

    public static zzhhd zzc(Object obj) {
        if (obj == null) {
            return zza;
        }
        return new zzhhe(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzhhu
    public final Object zzb() {
        return this.zzb;
    }
}
