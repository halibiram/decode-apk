package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzgtl extends zzgzu implements zzhbf {
    private static final zzgtl zzb;
    private int zzd;

    static {
        zzgtl zzgtlVar = new zzgtl();
        zzb = zzgtlVar;
        zzgzu.zzaU(zzgtl.class, zzgtlVar);
    }

    private zzgtl() {
    }

    public static zzgtk zzc() {
        return (zzgtk) zzb.zzaA();
    }

    public static zzgtl zze() {
        return zzb;
    }

    public final int zza() {
        return this.zzd;
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
                    return new zzgtk(null);
                }
                return new zzgtl();
            }
            return zzgzu.zzaR(zzb, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u000b", new Object[]{new ObfuscatedString(new long[]{-797999862291321692L, 6311497631172164814L}).toString()});
        }
        return (byte) 1;
    }
}
