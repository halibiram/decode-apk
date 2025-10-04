package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public enum zzgus implements zzgzw {
    zza(0),
    zzb(1),
    zzc(2),
    zzd(3),
    zze(4),
    zzf(-1);

    private static final zzgzx zzg = new zzgzx() { // from class: com.google.android.gms.internal.ads.zzgur
    };
    private final int zzi;

    zzgus(int i) {
        this.zzi = i;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return Integer.toString(zza());
    }

    public final int zza() {
        if (this != zzf) {
            return this.zzi;
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{3301089184016947215L, 7582700733055393442L, -2258903381918876363L, -205746211379246785L, 4244263266070837444L, -8817769511266232717L, 1908769170351879102L}).toString());
    }
}
