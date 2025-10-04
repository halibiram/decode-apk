package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzhdm extends zzgzu implements zzhbf {
    private static final zzhdm zzb;
    private int zzd;
    private long zze;
    private long zzf;

    static {
        zzhdm zzhdmVar = new zzhdm();
        zzb = zzhdmVar;
        zzgzu.zzaU(zzhdm.class, zzhdmVar);
    }

    private zzhdm() {
    }

    public static zzhdl zza() {
        return (zzhdl) zzb.zzaA();
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
                    return new zzhdl(null);
                }
                return new zzhdm();
            }
            return zzgzu.zzaR(zzb, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0004\u0002\u0002\u0003\u0002", new Object[]{new ObfuscatedString(new long[]{-1196781291111378459L, 7858241066594742561L}).toString(), new ObfuscatedString(new long[]{7438708450347757234L, 8074857834655754110L}).toString(), new ObfuscatedString(new long[]{-5166554722761791739L, 6505491500275256438L}).toString()});
        }
        return (byte) 1;
    }
}
