package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzasb extends zzgzu implements zzhbf {
    private static final zzasb zzb;
    private int zzd;
    private int zze = 2;

    static {
        zzasb zzasbVar = new zzasb();
        zzb = zzasbVar;
        zzgzu.zzaU(zzasb.class, zzasbVar);
    }

    private zzasb() {
    }

    @Override // com.google.android.gms.internal.ads.zzgzu
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 != 2) {
                if (i2 != 3) {
                    zzarx zzarxVar = null;
                    if (i2 != 4) {
                        if (i2 != 5) {
                            return null;
                        }
                        return zzb;
                    }
                    return new zzasa(zzarxVar);
                }
                return new zzasb();
            }
            return zzgzu.zzaR(zzb, "\u0001\u0001\u0000\u0001\u001b\u001b\u0001\u0000\u0000\u0000\u001b᠌\u0000", new Object[]{new ObfuscatedString(new long[]{2337173466598636643L, -7696816507723645933L}).toString(), new ObfuscatedString(new long[]{2952578658664012236L, -7092404560096075929L}).toString(), zzasc.zza});
        }
        return (byte) 1;
    }
}
