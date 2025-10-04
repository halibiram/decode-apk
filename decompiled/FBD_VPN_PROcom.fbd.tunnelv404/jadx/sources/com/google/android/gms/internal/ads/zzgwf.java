package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzgwf extends zzgzu implements zzhbf {
    private static final zzgwf zzb;
    private static volatile zzhbl zzd;
    private int zze;
    private zzgyl zzf = zzgyl.zzb;

    static {
        zzgwf zzgwfVar = new zzgwf();
        zzb = zzgwfVar;
        zzgzu.zzaU(zzgwf.class, zzgwfVar);
    }

    private zzgwf() {
    }

    public static zzgwe zzc() {
        return (zzgwe) zzb.zzaA();
    }

    public static zzgwf zze(zzgyl zzgylVar, zzgzf zzgzfVar) {
        return (zzgwf) zzgzu.zzaG(zzb, zzgylVar, zzgzfVar);
    }

    public static zzhbl zzg() {
        return (zzhbl) zzb.zzb(7, null, null);
    }

    public final int zza() {
        return this.zze;
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
                                synchronized (zzgwf.class) {
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
                    return new zzgwe(null);
                }
                return new zzgwf();
            }
            return zzgzu.zzaR(zzb, "\u0000\u0002\u0000\u0000\u0001\u0003\u0002\u0000\u0000\u0000\u0001\u000b\u0003\n", new Object[]{new ObfuscatedString(new long[]{-4696118861127885447L, -695045546429615697L}).toString(), new ObfuscatedString(new long[]{8740987961772685990L, -5911196831969007797L}).toString()});
        }
        return (byte) 1;
    }

    public final zzgyl zzf() {
        return this.zzf;
    }
}
