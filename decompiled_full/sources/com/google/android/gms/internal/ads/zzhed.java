package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzhed extends zzgzu implements zzhbf {
    private static final zzhed zzb;
    private int zzd;
    private String zze = new ObfuscatedString(new long[]{6472259664692705377L}).toString();

    static {
        zzhed zzhedVar = new zzhed();
        zzb = zzhedVar;
        zzgzu.zzaU(zzhed.class, zzhedVar);
    }

    private zzhed() {
    }

    public static zzhec zza() {
        return (zzhec) zzb.zzaA();
    }

    public static /* synthetic */ void zzd(zzhed zzhedVar, String str) {
        zzhedVar.zzd |= 1;
        zzhedVar.zze = str;
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
                    return new zzhec(null);
                }
                return new zzhed();
            }
            return zzgzu.zzaR(zzb, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဈ\u0000", new Object[]{new ObfuscatedString(new long[]{3053067089809419174L, -3586649489986262645L}).toString(), new ObfuscatedString(new long[]{3131225229127185780L, 3806443393885395223L}).toString()});
        }
        return (byte) 1;
    }
}
