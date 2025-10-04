package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzhev extends zzgzu implements zzhbf {
    private static final zzhev zzb;
    private int zzd;
    private zzheu zze;
    private zzgyl zzg;
    private zzgyl zzh;
    private int zzi;
    private zzgyl zzj;
    private byte zzk = 2;
    private zzhad zzf = zzgzu.zzaN();

    static {
        zzhev zzhevVar = new zzhev();
        zzb = zzhevVar;
        zzgzu.zzaU(zzhev.class, zzhevVar);
    }

    private zzhev() {
        zzgyl zzgylVar = zzgyl.zzb;
        this.zzg = zzgylVar;
        this.zzh = zzgylVar;
        this.zzj = zzgylVar;
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
                            this.zzk = b;
                            return null;
                        }
                        return zzb;
                    }
                    return new zzhes(null);
                }
                return new zzhev();
            }
            return zzgzu.zzaR(zzb, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0001\u0001ဉ\u0000\u0002Л\u0003ည\u0001\u0004ည\u0002\u0005င\u0003\u0006ည\u0004", new Object[]{new ObfuscatedString(new long[]{5539727641349761075L, -4171281595910502269L}).toString(), new ObfuscatedString(new long[]{7570176480756820485L, 2513778440972159315L}).toString(), new ObfuscatedString(new long[]{-5143461777906316656L, 5728029882447769168L}).toString(), zzhen.class, new ObfuscatedString(new long[]{-4950792451262485214L, 9140628030160677230L}).toString(), new ObfuscatedString(new long[]{-2717163348048041390L, -8339058287603420449L}).toString(), new ObfuscatedString(new long[]{3858493439523551634L, -9049643902951394867L}).toString(), new ObfuscatedString(new long[]{3166561125504801605L, 8787647140978499043L}).toString()});
        }
        return Byte.valueOf(this.zzk);
    }
}
