package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

@Deprecated
/* loaded from: classes2.dex */
public final class zzgwc extends zzgzu implements zzhbf {
    private static final zzgwc zzb;
    private String zzd = new ObfuscatedString(new long[]{-3617991943915985588L}).toString();
    private zzhad zze = zzgzu.zzaN();

    static {
        zzgwc zzgwcVar = new zzgwc();
        zzb = zzgwcVar;
        zzgzu.zzaU(zzgwc.class, zzgwcVar);
    }

    private zzgwc() {
    }

    public static zzgwc zzc() {
        return zzb;
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
                    return new zzgwb(null);
                }
                return new zzgwc();
            }
            return zzgzu.zzaR(zzb, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001Ȉ\u0002\u001b", new Object[]{new ObfuscatedString(new long[]{-7658755395820665183L, -8924045865962250187L}).toString(), new ObfuscatedString(new long[]{-2283201295724093797L, -6131410984399912500L}).toString(), zzgvb.class});
        }
        return (byte) 1;
    }
}
