package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzasr extends zzgzu implements zzhbf {
    private static final zzasr zzb;
    private int zzd;
    private long zze = -1;

    static {
        zzasr zzasrVar = new zzasr();
        zzb = zzasrVar;
        zzgzu.zzaU(zzasr.class, zzasrVar);
    }

    private zzasr() {
    }

    @Override // com.google.android.gms.internal.ads.zzgzu
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 != 2) {
                if (i2 != 3) {
                    zzasf zzasfVar = null;
                    if (i2 != 4) {
                        if (i2 != 5) {
                            return null;
                        }
                        return zzb;
                    }
                    return new zzasq(zzasfVar);
                }
                return new zzasr();
            }
            return zzgzu.zzaR(zzb, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဂ\u0000", new Object[]{new ObfuscatedString(new long[]{-8860696458420298239L, 7899021772836654594L}).toString(), new ObfuscatedString(new long[]{1402154460155026929L, 5650281120202427584L}).toString()});
        }
        return (byte) 1;
    }
}
