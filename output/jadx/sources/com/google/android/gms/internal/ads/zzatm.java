package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzatm extends zzgzu implements zzhbf {
    private static final zzatm zzb;
    private int zzd;
    private long zze;
    private String zzf = new ObfuscatedString(new long[]{2435982028286441894L}).toString();
    private zzgyl zzg = zzgyl.zzb;

    static {
        zzatm zzatmVar = new zzatm();
        zzb = zzatmVar;
        zzgzu.zzaU(zzatm.class, zzatmVar);
    }

    private zzatm() {
    }

    public static zzatm zzd() {
        return zzb;
    }

    public final long zza() {
        return this.zze;
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
                    return new zzatl(zzasfVar);
                }
                return new zzatm();
            }
            return zzgzu.zzaR(zzb, "\u0001\u0003\u0000\u0001\u0001\u0004\u0003\u0000\u0000\u0000\u0001ဂ\u0000\u0003ဈ\u0001\u0004ည\u0002", new Object[]{new ObfuscatedString(new long[]{-2003367943247273627L, -8255836399154683100L}).toString(), new ObfuscatedString(new long[]{-3982271437449319240L, 6630175437488418269L}).toString(), new ObfuscatedString(new long[]{-5359566638728079177L, 2957333833606480376L}).toString(), new ObfuscatedString(new long[]{8831392971046444958L, -7611079068172198411L}).toString()});
        }
        return (byte) 1;
    }

    public final boolean zze() {
        return (this.zzd & 1) != 0;
    }
}
