package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzhgb extends zzgzu implements zzhbf {
    private static final zzhgb zzb;
    private int zzd;
    private String zze = new ObfuscatedString(new long[]{-40654019562329269L}).toString();
    private String zzf = new ObfuscatedString(new long[]{5236948426330324459L}).toString();

    static {
        zzhgb zzhgbVar = new zzhgb();
        zzb = zzhgbVar;
        zzgzu.zzaU(zzhgb.class, zzhgbVar);
    }

    private zzhgb() {
    }

    @Override // com.google.android.gms.internal.ads.zzgzu
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 != 2) {
                if (i2 != 3) {
                    zzhdp zzhdpVar = null;
                    if (i2 != 4) {
                        if (i2 != 5) {
                            return null;
                        }
                        return zzb;
                    }
                    return new zzhga(zzhdpVar);
                }
                return new zzhgb();
            }
            return zzgzu.zzaR(zzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001", new Object[]{new ObfuscatedString(new long[]{-9111950518284359042L, -8206359202346764377L}).toString(), new ObfuscatedString(new long[]{7037848028988354796L, 7660914183437547756L}).toString(), new ObfuscatedString(new long[]{8224880882278794592L, 4553299353525609508L}).toString()});
        }
        return (byte) 1;
    }
}
