package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzgsn extends zzgzu implements zzhbf {
    private static final zzgsn zzb;
    private int zzd;

    static {
        zzgsn zzgsnVar = new zzgsn();
        zzb = zzgsnVar;
        zzgzu.zzaU(zzgsn.class, zzgsnVar);
    }

    private zzgsn() {
    }

    public static zzgsm zzc() {
        return (zzgsm) zzb.zzaA();
    }

    public static zzgsn zze() {
        return zzb;
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
                    return new zzgsm(null);
                }
                return new zzgsn();
            }
            return zzgzu.zzaR(zzb, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u000b", new Object[]{new ObfuscatedString(new long[]{1956279917488749925L, 3178901301490511400L}).toString()});
        }
        return (byte) 1;
    }
}
