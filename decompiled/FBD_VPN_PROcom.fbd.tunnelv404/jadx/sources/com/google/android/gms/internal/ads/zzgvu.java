package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzgvu extends zzgzu implements zzhbf {
    private static final zzgvu zzb;
    private static volatile zzhbl zzd;
    private int zze;
    private int zzf;
    private zzgvx zzg;

    static {
        zzgvu zzgvuVar = new zzgvu();
        zzb = zzgvuVar;
        zzgzu.zzaU(zzgvu.class, zzgvuVar);
    }

    private zzgvu() {
    }

    public static zzgvt zzc() {
        return (zzgvt) zzb.zzaA();
    }

    public static zzgvu zze(zzgyl zzgylVar, zzgzf zzgzfVar) {
        return (zzgvu) zzgzu.zzaG(zzb, zzgylVar, zzgzfVar);
    }

    public static zzhbl zzg() {
        return (zzhbl) zzb.zzb(7, null, null);
    }

    public static /* synthetic */ void zzh(zzgvu zzgvuVar, zzgvx zzgvxVar) {
        zzgvxVar.getClass();
        zzgvuVar.zzg = zzgvxVar;
        zzgvuVar.zze |= 1;
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
                                synchronized (zzgvu.class) {
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
                    return new zzgvt(null);
                }
                return new zzgvu();
            }
            return zzgzu.zzaR(zzb, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000", new Object[]{new ObfuscatedString(new long[]{5612051705426021523L, 6693922475934952641L}).toString(), new ObfuscatedString(new long[]{-2737980552071052793L, -3814282576053307499L}).toString(), new ObfuscatedString(new long[]{-4810731117728003576L, -3324018974163027581L}).toString()});
        }
        return (byte) 1;
    }

    public final zzgvx zzf() {
        zzgvx zzgvxVar = this.zzg;
        if (zzgvxVar == null) {
            return zzgvx.zze();
        }
        return zzgvxVar;
    }
}
