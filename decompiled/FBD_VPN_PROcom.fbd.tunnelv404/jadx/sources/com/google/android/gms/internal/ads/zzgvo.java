package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzgvo extends zzgzu implements zzhbf {
    private static final zzgvo zzb;
    private static volatile zzhbl zzd;
    private int zze;
    private int zzf;
    private zzgvr zzg;

    static {
        zzgvo zzgvoVar = new zzgvo();
        zzb = zzgvoVar;
        zzgzu.zzaU(zzgvo.class, zzgvoVar);
    }

    private zzgvo() {
    }

    public static zzgvn zzc() {
        return (zzgvn) zzb.zzaA();
    }

    public static zzgvo zze(zzgyl zzgylVar, zzgzf zzgzfVar) {
        return (zzgvo) zzgzu.zzaG(zzb, zzgylVar, zzgzfVar);
    }

    public static zzhbl zzg() {
        return (zzhbl) zzb.zzb(7, null, null);
    }

    public static /* synthetic */ void zzh(zzgvo zzgvoVar, zzgvr zzgvrVar) {
        zzgvrVar.getClass();
        zzgvoVar.zzg = zzgvrVar;
        zzgvoVar.zze |= 1;
    }

    public final int zza() {
        return this.zzf;
    }

    @Override // com.google.android.gms.internal.ads.zzgzu
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 != 4) {
                        if (i2 != 5) {
                            if (i2 != 6) {
                                return null;
                            }
                            zzhbl zzhblVar = zzd;
                            if (zzhblVar == null) {
                                synchronized (zzgvo.class) {
                                    try {
                                        zzhblVar = zzd;
                                        if (zzhblVar == null) {
                                            zzhblVar = new zzgzq(zzb);
                                            zzd = zzhblVar;
                                        }
                                    } finally {
                                    }
                                }
                            }
                            return zzhblVar;
                        }
                        return zzb;
                    }
                    return new zzgvn(null);
                }
                return new zzgvo();
            }
            return zzgzu.zzaR(zzb, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000", new Object[]{new ObfuscatedString(new long[]{-2656304709117478657L, 3866674642653090600L}).toString(), new ObfuscatedString(new long[]{3269224192815041655L, -8516778077060927714L}).toString(), new ObfuscatedString(new long[]{-6672025308485565123L, -6718926113870879839L}).toString()});
        }
        return (byte) 1;
    }

    public final zzgvr zzf() {
        zzgvr zzgvrVar = this.zzg;
        if (zzgvrVar == null) {
            return zzgvr.zzd();
        }
        return zzgvrVar;
    }
}
