package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzheg extends zzgzu implements zzhbf {
    private static final zzheg zzb;
    private int zzd;
    private zzgyl zze = zzgyl.zzb;

    static {
        zzheg zzhegVar = new zzheg();
        zzb = zzhegVar;
        zzgzu.zzaU(zzheg.class, zzhegVar);
    }

    private zzheg() {
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
                    return new zzhef(null);
                }
                return new zzheg();
            }
            return zzgzu.zzaR(zzb, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ည\u0000", new Object[]{new ObfuscatedString(new long[]{3397813291956374590L, -1826067471226528808L}).toString(), new ObfuscatedString(new long[]{5574665446958281109L, 3737001622160607310L}).toString()});
        }
        return (byte) 1;
    }
}
