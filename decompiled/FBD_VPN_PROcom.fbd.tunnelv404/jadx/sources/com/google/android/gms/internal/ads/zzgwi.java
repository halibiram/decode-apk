package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzgwi extends zzgzu implements zzhbf {
    private static final zzgwi zzb;
    private int zzd;

    static {
        zzgwi zzgwiVar = new zzgwi();
        zzb = zzgwiVar;
        zzgzu.zzaU(zzgwi.class, zzgwiVar);
    }

    private zzgwi() {
    }

    public static zzgwi zzd() {
        return zzb;
    }

    public static zzgwi zze(zzgyl zzgylVar, zzgzf zzgzfVar) {
        return (zzgwi) zzgzu.zzaG(zzb, zzgylVar, zzgzfVar);
    }

    public final int zza() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzgzu
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 != 4) {
                        if (i2 != 5) {
                            return null;
                        }
                        return zzb;
                    }
                    return new zzgwh(null);
                }
                return new zzgwi();
            }
            return zzgzu.zzaR(zzb, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u000b", new Object[]{new ObfuscatedString(new long[]{-8616999418670702973L, -4411954547411093268L}).toString()});
        }
        return (byte) 1;
    }
}
