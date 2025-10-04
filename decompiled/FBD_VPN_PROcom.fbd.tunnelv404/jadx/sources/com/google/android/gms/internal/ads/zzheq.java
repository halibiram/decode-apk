package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzheq extends zzgzu implements zzhbf {
    private static final zzheq zzb;
    private int zzd;
    private zzgyl zze;
    private zzgyl zzf;
    private zzgyl zzg;

    static {
        zzheq zzheqVar = new zzheq();
        zzb = zzheqVar;
        zzgzu.zzaU(zzheq.class, zzheqVar);
    }

    private zzheq() {
        zzgyl zzgylVar = zzgyl.zzb;
        this.zze = zzgylVar;
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
                    return new zzhep(null);
                }
                return new zzheq();
            }
            return zzgzu.zzaR(zzb, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ည\u0000\u0002ည\u0001\u0003ည\u0002", new Object[]{new ObfuscatedString(new long[]{4159700018337937387L, 1859284661419117453L}).toString(), new ObfuscatedString(new long[]{-6574573646172972036L, 1824603430824297162L}).toString(), new ObfuscatedString(new long[]{-8385357268199040707L, 6954749697704336938L}).toString(), new ObfuscatedString(new long[]{-7751778773240745676L, -8952312818341343719L}).toString()});
        }
        return (byte) 1;
    }
}
