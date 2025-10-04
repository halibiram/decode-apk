package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzfnj extends zzgzu implements zzhbf {
    private static final zzfnj zzb;
    private int zzd;
    private zzfnf zze;

    static {
        zzfnj zzfnjVar = new zzfnj();
        zzb = zzfnjVar;
        zzgzu.zzaU(zzfnj.class, zzfnjVar);
    }

    private zzfnj() {
    }

    public static zzfni zza() {
        return (zzfni) zzb.zzaA();
    }

    public static /* synthetic */ void zzd(zzfnj zzfnjVar, zzfnf zzfnfVar) {
        zzfnfVar.getClass();
        zzfnjVar.zze = zzfnfVar;
        zzfnjVar.zzd |= 1;
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
                    return new zzfni(null);
                }
                return new zzfnj();
            }
            return zzgzu.zzaR(zzb, "\u0000\u0001\u0000\u0001\u0006\u0006\u0001\u0000\u0000\u0000\u0006ဉ\u0000", new Object[]{new ObfuscatedString(new long[]{6938264798593956289L, 6067042563759822374L}).toString(), new ObfuscatedString(new long[]{1158765683438780143L, -4646054871576304278L}).toString()});
        }
        return (byte) 1;
    }
}
