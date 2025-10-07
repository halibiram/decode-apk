package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzgvl extends zzgzu implements zzhbf {
    private static final zzgvl zzb;
    private int zzd;
    private zzhad zze = zzgzu.zzaN();

    static {
        zzgvl zzgvlVar = new zzgvl();
        zzb = zzgvlVar;
        zzgzu.zzaU(zzgvl.class, zzgvlVar);
    }

    private zzgvl() {
    }

    public static zzgvi zza() {
        return (zzgvi) zzb.zzaA();
    }

    public static /* synthetic */ void zze(zzgvl zzgvlVar, zzgvk zzgvkVar) {
        zzgvkVar.getClass();
        zzhad zzhadVar = zzgvlVar.zze;
        if (!zzhadVar.zzc()) {
            zzgvlVar.zze = zzgzu.zzaO(zzhadVar);
        }
        zzgvlVar.zze.add(zzgvkVar);
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
                    return new zzgvi(null);
                }
                return new zzgvl();
            }
            return zzgzu.zzaR(zzb, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u000b\u0002\u001b", new Object[]{new ObfuscatedString(new long[]{-2000542822994274678L, 6096112264878348855L}).toString(), new ObfuscatedString(new long[]{-8174757017839968762L, 6044159360886594575L}).toString(), zzgvk.class});
        }
        return (byte) 1;
    }
}
