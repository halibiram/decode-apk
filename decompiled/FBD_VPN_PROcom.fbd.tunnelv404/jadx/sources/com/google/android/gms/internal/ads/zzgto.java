package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzgto extends zzgzu implements zzhbf {
    private static final zzgto zzb;
    private static volatile zzhbl zzd;
    private int zze;
    private zzgyl zzf = zzgyl.zzb;

    static {
        zzgto zzgtoVar = new zzgto();
        zzb = zzgtoVar;
        zzgzu.zzaU(zzgto.class, zzgtoVar);
    }

    private zzgto() {
    }

    public static zzgtn zzc() {
        return (zzgtn) zzb.zzaA();
    }

    public static zzgto zze(zzgyl zzgylVar, zzgzf zzgzfVar) {
        return (zzgto) zzgzu.zzaG(zzb, zzgylVar, zzgzfVar);
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
                                synchronized (zzgto.class) {
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
                    return new zzgtn(null);
                }
                return new zzgto();
            }
            return zzgzu.zzaR(zzb, "\u0000\u0002\u0000\u0000\u0001\u0003\u0002\u0000\u0000\u0000\u0001\u000b\u0003\n", new Object[]{new ObfuscatedString(new long[]{4174494569418906960L, 2649477654138100334L}).toString(), new ObfuscatedString(new long[]{7820243885622441450L, 5731702571504500559L}).toString()});
        }
        return (byte) 1;
    }

    public final zzgyl zzf() {
        return this.zzf;
    }
}
