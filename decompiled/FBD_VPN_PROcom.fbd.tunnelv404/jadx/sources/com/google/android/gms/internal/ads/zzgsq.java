package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzgsq extends zzgzu implements zzhbf {
    private static final zzgsq zzb;
    private static volatile zzhbl zzd;
    private int zze;
    private int zzf;
    private zzgsw zzg;
    private zzgui zzh;

    static {
        zzgsq zzgsqVar = new zzgsq();
        zzb = zzgsqVar;
        zzgzu.zzaU(zzgsq.class, zzgsqVar);
    }

    private zzgsq() {
    }

    public static zzgsp zzc() {
        return (zzgsp) zzb.zzaA();
    }

    public static zzgsq zze(zzgyl zzgylVar, zzgzf zzgzfVar) {
        return (zzgsq) zzgzu.zzaG(zzb, zzgylVar, zzgzfVar);
    }

    public static zzhbl zzh() {
        return (zzhbl) zzb.zzb(7, null, null);
    }

    public static /* synthetic */ void zzi(zzgsq zzgsqVar, zzgsw zzgswVar) {
        zzgswVar.getClass();
        zzgsqVar.zzg = zzgswVar;
        zzgsqVar.zze |= 1;
    }

    public static /* synthetic */ void zzj(zzgsq zzgsqVar, zzgui zzguiVar) {
        zzguiVar.getClass();
        zzgsqVar.zzh = zzguiVar;
        zzgsqVar.zze |= 2;
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
                                synchronized (zzgsq.class) {
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
                    return new zzgsp(null);
                }
                return new zzgsq();
            }
            return zzgzu.zzaR(zzb, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000\u0003ဉ\u0001", new Object[]{new ObfuscatedString(new long[]{4920191866509679066L, 6676254220993069386L}).toString(), new ObfuscatedString(new long[]{2579287245117694083L, -1814398113347057167L}).toString(), new ObfuscatedString(new long[]{3201376140515796265L, 1004168156295709327L}).toString(), new ObfuscatedString(new long[]{3039844810700308145L, -3825432763061158732L}).toString()});
        }
        return (byte) 1;
    }

    public final zzgsw zzf() {
        zzgsw zzgswVar = this.zzg;
        if (zzgswVar == null) {
            return zzgsw.zze();
        }
        return zzgswVar;
    }

    public final zzgui zzg() {
        zzgui zzguiVar = this.zzh;
        if (zzguiVar == null) {
            return zzgui.zze();
        }
        return zzguiVar;
    }
}
