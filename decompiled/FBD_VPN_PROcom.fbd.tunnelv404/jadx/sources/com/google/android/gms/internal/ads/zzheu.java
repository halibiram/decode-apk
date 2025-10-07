package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzheu extends zzgzu implements zzhbf {
    private static final zzheu zzb;
    private int zzd;
    private int zze;
    private zzgyl zzf;
    private zzgyl zzg;

    static {
        zzheu zzheuVar = new zzheu();
        zzb = zzheuVar;
        zzgzu.zzaU(zzheu.class, zzheuVar);
    }

    private zzheu() {
        zzgyl zzgylVar = zzgyl.zzb;
        this.zzf = zzgylVar;
        this.zzg = zzgylVar;
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
                    return new zzhet(null);
                }
                return new zzheu();
            }
            return zzgzu.zzaR(zzb, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001င\u0000\u0002ည\u0001\u0003ည\u0002", new Object[]{new ObfuscatedString(new long[]{8834623349655630003L, -56541461877251746L}).toString(), new ObfuscatedString(new long[]{747818822959782427L, 3217056348177276643L}).toString(), new ObfuscatedString(new long[]{5365193815321706689L, -8495824982920735425L}).toString(), new ObfuscatedString(new long[]{-7163969939144925190L, 7759261049874147841L}).toString()});
        }
        return (byte) 1;
    }
}
