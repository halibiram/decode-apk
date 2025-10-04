package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzgsz extends zzgzu implements zzhbf {
    private static final zzgsz zzb;
    private int zzd;
    private zzgtc zze;
    private int zzf;

    static {
        zzgsz zzgszVar = new zzgsz();
        zzb = zzgszVar;
        zzgzu.zzaU(zzgsz.class, zzgszVar);
    }

    private zzgsz() {
    }

    public static zzgsy zzc() {
        return (zzgsy) zzb.zzaA();
    }

    public static zzgsz zze() {
        return zzb;
    }

    public static /* synthetic */ void zzg(zzgsz zzgszVar, zzgtc zzgtcVar) {
        zzgtcVar.getClass();
        zzgszVar.zze = zzgtcVar;
        zzgszVar.zzd |= 1;
    }

    public final int zza() {
        return this.zzf;
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
                    return new zzgsy(null);
                }
                return new zzgsz();
            }
            return zzgzu.zzaR(zzb, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဉ\u0000\u0002\u000b", new Object[]{new ObfuscatedString(new long[]{5705943962152417922L, -7154819884031481116L}).toString(), new ObfuscatedString(new long[]{-5207943923572224423L, -6555697322646751164L}).toString(), new ObfuscatedString(new long[]{7016979316693450763L, 3464402230038632525L}).toString()});
        }
        return (byte) 1;
    }

    public final zzgtc zzf() {
        zzgtc zzgtcVar = this.zze;
        if (zzgtcVar == null) {
            return zzgtc.zze();
        }
        return zzgtcVar;
    }
}
