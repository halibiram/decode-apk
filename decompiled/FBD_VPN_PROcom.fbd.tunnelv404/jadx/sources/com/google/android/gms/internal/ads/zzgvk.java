package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzgvk extends zzgzu implements zzhbf {
    private static final zzgvk zzb;
    private String zzd = new ObfuscatedString(new long[]{-5184119796696140192L}).toString();
    private int zze;
    private int zzf;
    private int zzg;

    static {
        zzgvk zzgvkVar = new zzgvk();
        zzb = zzgvkVar;
        zzgzu.zzaU(zzgvk.class, zzgvkVar);
    }

    private zzgvk() {
    }

    public static zzgvj zza() {
        return (zzgvj) zzb.zzaA();
    }

    public static /* synthetic */ void zzd(zzgvk zzgvkVar, String str) {
        str.getClass();
        zzgvkVar.zzd = str;
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
                    return new zzgvj(null);
                }
                return new zzgvk();
            }
            return zzgzu.zzaR(zzb, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001Ȉ\u0002\f\u0003\u000b\u0004\f", new Object[]{new ObfuscatedString(new long[]{-7222374112475740617L, -7521589052288181557L}).toString(), new ObfuscatedString(new long[]{6441527330626084620L, -8420009676642160041L}).toString(), new ObfuscatedString(new long[]{7776085639969670087L, 8443681324138305358L}).toString(), new ObfuscatedString(new long[]{9066704316856262285L, 5780991825048819370L}).toString()});
        }
        return (byte) 1;
    }
}
