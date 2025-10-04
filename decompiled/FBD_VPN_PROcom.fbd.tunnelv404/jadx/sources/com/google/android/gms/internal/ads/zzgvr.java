package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzgvr extends zzgzu implements zzhbf {
    private static final zzgvr zzb;
    private String zzd = new ObfuscatedString(new long[]{-4068736763325947774L}).toString();

    static {
        zzgvr zzgvrVar = new zzgvr();
        zzb = zzgvrVar;
        zzgzu.zzaU(zzgvr.class, zzgvrVar);
    }

    private zzgvr() {
    }

    public static zzgvq zza() {
        return (zzgvq) zzb.zzaA();
    }

    public static zzgvr zzd() {
        return zzb;
    }

    public static zzgvr zze(zzgyl zzgylVar, zzgzf zzgzfVar) {
        return (zzgvr) zzgzu.zzaG(zzb, zzgylVar, zzgzfVar);
    }

    public static /* synthetic */ void zzg(zzgvr zzgvrVar, String str) {
        str.getClass();
        zzgvrVar.zzd = str;
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
                    return new zzgvq(null);
                }
                return new zzgvr();
            }
            return zzgzu.zzaR(zzb, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001Ȉ", new Object[]{new ObfuscatedString(new long[]{-4060412108054255874L, -973814472890485333L}).toString()});
        }
        return (byte) 1;
    }

    public final String zzf() {
        return this.zzd;
    }
}
