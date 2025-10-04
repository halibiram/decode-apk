package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public enum zzgvz implements zzgzw {
    zza(0),
    zzb(1),
    zzc(2),
    zzd(3),
    zze(4),
    zzf(-1);

    private static final zzgzx zzg = new zzgzx() { // from class: com.google.android.gms.internal.ads.zzgvy
    };
    private final int zzi;

    zzgvz(int i) {
        this.zzi = i;
    }

    public static zzgvz zzb(int i) {
        if (i == 0) {
            return zza;
        }
        if (i == 1) {
            return zzb;
        }
        if (i == 2) {
            return zzc;
        }
        if (i == 3) {
            return zzd;
        }
        if (i != 4) {
            return null;
        }
        return zze;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return Integer.toString(zza());
    }

    public final int zza() {
        if (this != zzf) {
            return this.zzi;
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{-489839255551695844L, -1761684891648880094L, -9151138519530874487L, 3327494069645538356L, -7096856782925256131L, 7062241325540076671L, 8907669432841658037L}).toString());
    }
}
