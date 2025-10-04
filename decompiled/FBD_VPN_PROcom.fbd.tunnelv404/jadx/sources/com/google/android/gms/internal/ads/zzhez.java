package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzhez extends zzgzu implements zzhbf {
    private static final zzhez zzb;
    private int zzd;
    private int zze;
    private boolean zzf;
    private int zzg;

    static {
        zzhez zzhezVar = new zzhez();
        zzb = zzhezVar;
        zzgzu.zzaU(zzhez.class, zzhezVar);
    }

    private zzhez() {
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
                    return new zzhey(zzhdpVar);
                }
                return new zzhez();
            }
            String obfuscatedString = new ObfuscatedString(new long[]{5869218237220115121L, 5755191008613742245L}).toString();
            String obfuscatedString2 = new ObfuscatedString(new long[]{-6134249555148650302L, -1512487545975726550L}).toString();
            String obfuscatedString3 = new ObfuscatedString(new long[]{-4063876828071932103L, 5386577263681964846L}).toString();
            String obfuscatedString4 = new ObfuscatedString(new long[]{1230495361551756624L, -5303998380453443762L}).toString();
            zzgzy zzgzyVar = zzhex.zza;
            return zzgzu.zzaR(zzb, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001᠌\u0000\u0002ဇ\u0001\u0003᠌\u0002", new Object[]{obfuscatedString, obfuscatedString2, zzgzyVar, obfuscatedString3, obfuscatedString4, zzgzyVar});
        }
        return (byte) 1;
    }
}
