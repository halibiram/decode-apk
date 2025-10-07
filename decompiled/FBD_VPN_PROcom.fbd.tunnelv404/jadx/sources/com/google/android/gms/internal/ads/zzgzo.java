package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
final class zzgzo implements zzhbc {
    private static final zzgzo zza = new zzgzo();

    private zzgzo() {
    }

    public static zzgzo zza() {
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzhbc
    public final zzhbb zzb(Class cls) {
        if (zzgzu.class.isAssignableFrom(cls)) {
            try {
                return (zzhbb) zzgzu.zzaC(cls.asSubclass(zzgzu.class)).zzb(3, null, null);
            } catch (Exception e) {
                throw new RuntimeException(new ObfuscatedString(new long[]{2739473970516681238L, 7070772745403126301L, -4930711212598504603L, -1620481216613288932L, -4801030092819496196L}).toString().concat(cls.getName()), e);
            }
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{-4978023624191845134L, 2022717343418896467L, 7751158678604535255L, 7443633052259506186L, 1793010452674040854L}).toString().concat(cls.getName()));
    }

    @Override // com.google.android.gms.internal.ads.zzhbc
    public final boolean zzc(Class cls) {
        return zzgzu.class.isAssignableFrom(cls);
    }
}
