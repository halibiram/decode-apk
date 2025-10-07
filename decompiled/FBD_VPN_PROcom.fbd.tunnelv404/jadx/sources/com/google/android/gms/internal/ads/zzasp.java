package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzasp extends zzgzu implements zzhbf {
    private static final zzasp zzb;
    private int zzd;
    private long zze = -1;
    private int zzf = 1000;
    private int zzg = 1000;

    static {
        zzasp zzaspVar = new zzasp();
        zzb = zzaspVar;
        zzgzu.zzaU(zzasp.class, zzaspVar);
    }

    private zzasp() {
    }

    @Override // com.google.android.gms.internal.ads.zzgzu
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 != 2) {
                if (i2 != 3) {
                    zzasf zzasfVar = null;
                    if (i2 != 4) {
                        if (i2 != 5) {
                            return null;
                        }
                        return zzb;
                    }
                    return new zzaso(zzasfVar);
                }
                return new zzasp();
            }
            String obfuscatedString = new ObfuscatedString(new long[]{-3002562325669281824L, -8501844119128223409L}).toString();
            String obfuscatedString2 = new ObfuscatedString(new long[]{-797113173228385311L, -3246906439740144472L}).toString();
            String obfuscatedString3 = new ObfuscatedString(new long[]{9182153288829237360L, -5986269724238848642L}).toString();
            String obfuscatedString4 = new ObfuscatedString(new long[]{-6986078359909848819L, 2020024415729013041L}).toString();
            zzgzy zzgzyVar = zzatj.zza;
            return zzgzu.zzaR(zzb, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဂ\u0000\u0002᠌\u0001\u0003᠌\u0002", new Object[]{obfuscatedString, obfuscatedString2, obfuscatedString3, zzgzyVar, obfuscatedString4, zzgzyVar});
        }
        return (byte) 1;
    }
}
