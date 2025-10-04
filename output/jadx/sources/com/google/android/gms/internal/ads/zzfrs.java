package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzfrs extends zzgzu implements zzhbf {
    private static final zzfrs zzb;
    private int zzd;
    private int zze;
    private String zzf = new ObfuscatedString(new long[]{-4313328869630505789L}).toString();
    private String zzg = new ObfuscatedString(new long[]{6978822398465307280L}).toString();
    private zzfro zzh;

    static {
        zzfrs zzfrsVar = new zzfrs();
        zzb = zzfrsVar;
        zzgzu.zzaU(zzfrs.class, zzfrsVar);
    }

    private zzfrs() {
    }

    public static zzfrq zza() {
        return (zzfrq) zzb.zzaA();
    }

    public static /* synthetic */ void zzd(zzfrs zzfrsVar, String str) {
        str.getClass();
        zzfrsVar.zzd |= 2;
        zzfrsVar.zzf = str;
    }

    public static /* synthetic */ void zze(zzfrs zzfrsVar, zzfro zzfroVar) {
        zzfroVar.getClass();
        zzfrsVar.zzh = zzfroVar;
        zzfrsVar.zzd |= 8;
    }

    public static /* synthetic */ void zzf(zzfrs zzfrsVar, int i) {
        zzfrsVar.zze = 1;
        zzfrsVar.zzd = 1 | zzfrsVar.zzd;
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
                    return new zzfrq(null);
                }
                return new zzfrs();
            }
            return zzgzu.zzaR(zzb, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001᠌\u0000\u0002ဈ\u0001\u0003ဈ\u0002\u0004ဉ\u0003", new Object[]{new ObfuscatedString(new long[]{-5386096568384954498L, -7000896794140562512L}).toString(), new ObfuscatedString(new long[]{3462203929932908810L, 4711033826263686609L}).toString(), zzfrr.zza, new ObfuscatedString(new long[]{5324585090180877950L, 7176183464561489741L}).toString(), new ObfuscatedString(new long[]{-6487532983134329842L, -2526517750320694227L}).toString(), new ObfuscatedString(new long[]{4269365253275175696L, 4276200405619864045L}).toString()});
        }
        return (byte) 1;
    }
}
