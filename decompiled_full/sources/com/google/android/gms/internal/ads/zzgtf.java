package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzgtf extends zzgzu implements zzhbf {
    private static final zzgtf zzb;
    private static volatile zzhbl zzd;
    private int zze;
    private int zzf;
    private zzgtl zzg;
    private zzgyl zzh = zzgyl.zzb;

    static {
        zzgtf zzgtfVar = new zzgtf();
        zzb = zzgtfVar;
        zzgzu.zzaU(zzgtf.class, zzgtfVar);
    }

    private zzgtf() {
    }

    public static zzgte zzc() {
        return (zzgte) zzb.zzaA();
    }

    public static zzgtf zze(zzgyl zzgylVar, zzgzf zzgzfVar) {
        return (zzgtf) zzgzu.zzaG(zzb, zzgylVar, zzgzfVar);
    }

    public static zzhbl zzh() {
        return (zzhbl) zzb.zzb(7, null, null);
    }

    public static /* synthetic */ void zzi(zzgtf zzgtfVar, zzgtl zzgtlVar) {
        zzgtlVar.getClass();
        zzgtfVar.zzg = zzgtlVar;
        zzgtfVar.zze |= 1;
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
                                synchronized (zzgtf.class) {
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
                    return new zzgte(null);
                }
                return new zzgtf();
            }
            return zzgzu.zzaR(zzb, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000\u0003\n", new Object[]{new ObfuscatedString(new long[]{5312513007431802866L, -6393154598463011895L}).toString(), new ObfuscatedString(new long[]{5722351826390041377L, -8381667742686476311L}).toString(), new ObfuscatedString(new long[]{-4711266758803930655L, -9194945133005065219L}).toString(), new ObfuscatedString(new long[]{-7685401887983176271L, -7572520221451362600L}).toString()});
        }
        return (byte) 1;
    }

    public final zzgtl zzf() {
        zzgtl zzgtlVar = this.zzg;
        if (zzgtlVar == null) {
            return zzgtl.zze();
        }
        return zzgtlVar;
    }

    public final zzgyl zzg() {
        return this.zzh;
    }
}
