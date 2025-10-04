package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public enum zzguf implements zzgzw {
    zza(0),
    zzb(1),
    zzc(2),
    zzd(3),
    zze(4),
    zzf(5),
    zzg(-1);

    private static final zzgzx zzh = new zzgzx() { // from class: com.google.android.gms.internal.ads.zzgue
    };
    private final int zzj;

    zzguf(int i) {
        this.zzj = i;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return Integer.toString(zza());
    }

    public final int zza() {
        if (this != zzg) {
            return this.zzj;
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{-5395560268571001498L, -5581433154476190772L, -3586423813985811467L, 8875358914130084928L, 6932720031118086795L, -9064082539735411923L, 26756016685848696L}).toString());
    }
}
