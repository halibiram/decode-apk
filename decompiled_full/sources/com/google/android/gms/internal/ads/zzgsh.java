package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzgsh extends zzgzu implements zzhbf {
    private static final zzgsh zzb;
    private static volatile zzhbl zzd;
    private int zze;
    private int zzf;
    private zzgyl zzg = zzgyl.zzb;
    private zzgsn zzh;

    static {
        zzgsh zzgshVar = new zzgsh();
        zzb = zzgshVar;
        zzgzu.zzaU(zzgsh.class, zzgshVar);
    }

    private zzgsh() {
    }

    public static zzgsg zzc() {
        return (zzgsg) zzb.zzaA();
    }

    public static zzgsh zze(zzgyl zzgylVar, zzgzf zzgzfVar) {
        return (zzgsh) zzgzu.zzaG(zzb, zzgylVar, zzgzfVar);
    }

    public static zzhbl zzh() {
        return (zzhbl) zzb.zzb(7, null, null);
    }

    public static /* synthetic */ void zzj(zzgsh zzgshVar, zzgsn zzgsnVar) {
        zzgsnVar.getClass();
        zzgshVar.zzh = zzgsnVar;
        zzgshVar.zze |= 1;
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
                                synchronized (zzgsh.class) {
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
                    return new zzgsg(null);
                }
                return new zzgsh();
            }
            return zzgzu.zzaR(zzb, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\n\u0003ဉ\u0000", new Object[]{new ObfuscatedString(new long[]{7166185206912636116L, 3420834360599767394L}).toString(), new ObfuscatedString(new long[]{7838071730673812048L, 1837321102812381139L}).toString(), new ObfuscatedString(new long[]{-7602331252234043417L, -4085360235433464699L}).toString(), new ObfuscatedString(new long[]{2991669622660029727L, -7638117963787673879L}).toString()});
        }
        return (byte) 1;
    }

    public final zzgsn zzf() {
        zzgsn zzgsnVar = this.zzh;
        if (zzgsnVar == null) {
            return zzgsn.zze();
        }
        return zzgsnVar;
    }

    public final zzgyl zzg() {
        return this.zzg;
    }
}
