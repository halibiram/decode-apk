package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzher extends zzgzu implements zzhbf {
    private static final zzher zzb;
    private int zzd;
    private zzheq zze;
    private zzgyl zzg;
    private zzgyl zzh;
    private int zzi;
    private byte zzj = 2;
    private zzhad zzf = zzgzu.zzaN();

    static {
        zzher zzherVar = new zzher();
        zzb = zzherVar;
        zzgzu.zzaU(zzher.class, zzherVar);
    }

    private zzher() {
        zzgyl zzgylVar = zzgyl.zzb;
        this.zzg = zzgylVar;
        this.zzh = zzgylVar;
    }

    public static zzheo zza() {
        return (zzheo) zzb.zzaA();
    }

    public static /* synthetic */ void zzd(zzher zzherVar, zzhen zzhenVar) {
        zzhenVar.getClass();
        zzhad zzhadVar = zzherVar.zzf;
        if (!zzhadVar.zzc()) {
            zzherVar.zzf = zzgzu.zzaO(zzhadVar);
        }
        zzherVar.zzf.add(zzhenVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgzu
    public final Object zzb(int i, Object obj, Object obj2) {
        byte b = 1;
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 != 4) {
                        if (i2 != 5) {
                            if (obj == null) {
                                b = 0;
                            }
                            this.zzj = b;
                            return null;
                        }
                        return zzb;
                    }
                    return new zzheo(null);
                }
                return new zzher();
            }
            return zzgzu.zzaR(zzb, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0001\u0001ဉ\u0000\u0002Л\u0003ည\u0001\u0004ည\u0002\u0005င\u0003", new Object[]{new ObfuscatedString(new long[]{-7371827051845095426L, 3588730962389531184L}).toString(), new ObfuscatedString(new long[]{5682986244137357194L, -2464419550354496141L}).toString(), new ObfuscatedString(new long[]{-7906734367662509572L, -7204702953968741401L}).toString(), zzhen.class, new ObfuscatedString(new long[]{-4054968777532749282L, 6810965099992444283L}).toString(), new ObfuscatedString(new long[]{-7994251960759721374L, 1728461375144120320L}).toString(), new ObfuscatedString(new long[]{-3584559332135155326L, 4897600746660727275L}).toString()});
        }
        return Byte.valueOf(this.zzj);
    }
}
