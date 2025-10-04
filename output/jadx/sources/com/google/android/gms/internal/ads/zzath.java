package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzath extends zzgzu implements zzhbf {
    private static final zzath zzb;
    private int zzd;
    private zzgyl zze;
    private zzgyl zzf;
    private zzgyl zzg;
    private zzgyl zzh;

    static {
        zzath zzathVar = new zzath();
        zzb = zzathVar;
        zzgzu.zzaU(zzath.class, zzathVar);
    }

    private zzath() {
        zzgyl zzgylVar = zzgyl.zzb;
        this.zze = zzgylVar;
        this.zzf = zzgylVar;
        this.zzg = zzgylVar;
        this.zzh = zzgylVar;
    }

    public static zzatg zza() {
        return (zzatg) zzb.zzaA();
    }

    public static zzath zzd(byte[] bArr, zzgzf zzgzfVar) {
        return (zzath) zzgzu.zzaI(zzb, bArr, zzgzfVar);
    }

    public static /* synthetic */ void zzi(zzath zzathVar, zzgyl zzgylVar) {
        zzathVar.zzd |= 1;
        zzathVar.zze = zzgylVar;
    }

    public static /* synthetic */ void zzj(zzath zzathVar, zzgyl zzgylVar) {
        zzathVar.zzd |= 2;
        zzathVar.zzf = zzgylVar;
    }

    public static /* synthetic */ void zzk(zzath zzathVar, zzgyl zzgylVar) {
        zzathVar.zzd |= 4;
        zzathVar.zzg = zzgylVar;
    }

    public static /* synthetic */ void zzl(zzath zzathVar, zzgyl zzgylVar) {
        zzathVar.zzd |= 8;
        zzathVar.zzh = zzgylVar;
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
                    return new zzatg(null);
                }
                return new zzath();
            }
            return zzgzu.zzaR(zzb, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ည\u0000\u0002ည\u0001\u0003ည\u0002\u0004ည\u0003", new Object[]{new ObfuscatedString(new long[]{7349285467487562182L, 6272856726593568744L}).toString(), new ObfuscatedString(new long[]{2692102260123525292L, -2983683809494536002L}).toString(), new ObfuscatedString(new long[]{-2113915676899648019L, 2216225440767090127L}).toString(), new ObfuscatedString(new long[]{-2218917926872807326L, 3785881961888484146L}).toString(), new ObfuscatedString(new long[]{-4356416484535033605L, 2097236228427740421L}).toString()});
        }
        return (byte) 1;
    }

    public final zzgyl zze() {
        return this.zze;
    }

    public final zzgyl zzf() {
        return this.zzf;
    }

    public final zzgyl zzg() {
        return this.zzh;
    }

    public final zzgyl zzh() {
        return this.zzg;
    }
}
