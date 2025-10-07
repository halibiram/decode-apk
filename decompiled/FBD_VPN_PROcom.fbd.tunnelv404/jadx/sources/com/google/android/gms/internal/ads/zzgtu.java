package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzgtu extends zzgzu implements zzhbf {
    private static final zzgtu zzb;
    private static volatile zzhbl zzd;
    private int zze;
    private zzgyl zzf = zzgyl.zzb;

    static {
        zzgtu zzgtuVar = new zzgtu();
        zzb = zzgtuVar;
        zzgzu.zzaU(zzgtu.class, zzgtuVar);
    }

    private zzgtu() {
    }

    public static zzgtt zzc() {
        return (zzgtt) zzb.zzaA();
    }

    public static zzgtu zze(zzgyl zzgylVar, zzgzf zzgzfVar) {
        return (zzgtu) zzgzu.zzaG(zzb, zzgylVar, zzgzfVar);
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
                                synchronized (zzgtu.class) {
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
                    return new zzgtt(null);
                }
                return new zzgtu();
            }
            return zzgzu.zzaR(zzb, "\u0000\u0002\u0000\u0000\u0001\u0003\u0002\u0000\u0000\u0000\u0001\u000b\u0003\n", new Object[]{new ObfuscatedString(new long[]{-648434587326298370L, 7840043502281832081L}).toString(), new ObfuscatedString(new long[]{5901761420925405798L, 5482942293426085882L}).toString()});
        }
        return (byte) 1;
    }

    public final zzgyl zzf() {
        return this.zzf;
    }
}
