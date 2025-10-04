package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzgti extends zzgzu implements zzhbf {
    private static final zzgti zzb;
    private int zzd;
    private zzgtl zze;
    private int zzf;

    static {
        zzgti zzgtiVar = new zzgti();
        zzb = zzgtiVar;
        zzgzu.zzaU(zzgti.class, zzgtiVar);
    }

    private zzgti() {
    }

    public static zzgth zzc() {
        return (zzgth) zzb.zzaA();
    }

    public static zzgti zze(zzgyl zzgylVar, zzgzf zzgzfVar) {
        return (zzgti) zzgzu.zzaG(zzb, zzgylVar, zzgzfVar);
    }

    public static /* synthetic */ void zzg(zzgti zzgtiVar, zzgtl zzgtlVar) {
        zzgtlVar.getClass();
        zzgtiVar.zze = zzgtlVar;
        zzgtiVar.zzd |= 1;
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
                            return null;
                        }
                        return zzb;
                    }
                    return new zzgth(null);
                }
                return new zzgti();
            }
            return zzgzu.zzaR(zzb, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဉ\u0000\u0002\u000b", new Object[]{new ObfuscatedString(new long[]{3717115471372790534L, -2479013725503110451L}).toString(), new ObfuscatedString(new long[]{-5672383132428476307L, -1003651256291280892L}).toString(), new ObfuscatedString(new long[]{-683484345480732596L, 3839847697529568101L}).toString()});
        }
        return (byte) 1;
    }

    public final zzgtl zzf() {
        zzgtl zzgtlVar = this.zze;
        if (zzgtlVar == null) {
            return zzgtl.zze();
        }
        return zzgtlVar;
    }
}
