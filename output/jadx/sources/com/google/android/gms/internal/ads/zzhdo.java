package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzhdo extends zzgzu implements zzhbf {
    private static final zzhdo zzb;
    private zzhad zzd = zzgzu.zzaN();

    static {
        zzhdo zzhdoVar = new zzhdo();
        zzb = zzhdoVar;
        zzgzu.zzaU(zzhdo.class, zzhdoVar);
    }

    private zzhdo() {
    }

    public static zzhdn zza() {
        return (zzhdn) zzb.zzaA();
    }

    public static /* synthetic */ void zzd(zzhdo zzhdoVar, zzhdm zzhdmVar) {
        zzhdmVar.getClass();
        zzhad zzhadVar = zzhdoVar.zzd;
        if (!zzhadVar.zzc()) {
            zzhdoVar.zzd = zzgzu.zzaO(zzhadVar);
        }
        zzhdoVar.zzd.add(zzhdmVar);
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
                    return new zzhdn(null);
                }
                return new zzhdo();
            }
            return zzgzu.zzaR(zzb, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{new ObfuscatedString(new long[]{-1178003040448801131L, 2587582181441042964L}).toString(), zzhdm.class});
        }
        return (byte) 1;
    }
}
