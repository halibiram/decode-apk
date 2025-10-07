package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzgsw extends zzgzu implements zzhbf {
    private static final zzgsw zzb;
    private int zzd;
    private int zze;
    private zzgtc zzf;
    private zzgyl zzg = zzgyl.zzb;

    static {
        zzgsw zzgswVar = new zzgsw();
        zzb = zzgswVar;
        zzgzu.zzaU(zzgsw.class, zzgswVar);
    }

    private zzgsw() {
    }

    public static zzgsv zzc() {
        return (zzgsv) zzb.zzaA();
    }

    public static zzgsw zze() {
        return zzb;
    }

    public static /* synthetic */ void zzh(zzgsw zzgswVar, zzgtc zzgtcVar) {
        zzgtcVar.getClass();
        zzgswVar.zzf = zzgtcVar;
        zzgswVar.zzd |= 1;
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
                    zzgsu zzgsuVar = null;
                    if (i2 != 4) {
                        if (i2 != 5) {
                            return null;
                        }
                        return zzb;
                    }
                    return new zzgsv(zzgsuVar);
                }
                return new zzgsw();
            }
            return zzgzu.zzaR(zzb, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000\u0003\n", new Object[]{new ObfuscatedString(new long[]{831387789760017878L, -4667889334226198410L}).toString(), new ObfuscatedString(new long[]{-6844472246033329463L, -5576236500185554204L}).toString(), new ObfuscatedString(new long[]{-5131838524065383307L, 29845872905852233L}).toString(), new ObfuscatedString(new long[]{-8573571208170869421L, 6287495261910156706L}).toString()});
        }
        return (byte) 1;
    }

    public final zzgtc zzf() {
        zzgtc zzgtcVar = this.zzf;
        if (zzgtcVar == null) {
            return zzgtc.zze();
        }
        return zzgtcVar;
    }

    public final zzgyl zzg() {
        return this.zzg;
    }
}
