package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzbep extends zzgzu implements zzhbf {
    private static final zzbep zzb;
    private int zzd;
    private int zze;
    private int zzf;
    private int zzg;

    static {
        zzbep zzbepVar = new zzbep();
        zzb = zzbepVar;
        zzgzu.zzaU(zzbep.class, zzbepVar);
    }

    private zzbep() {
    }

    public static zzbeo zza() {
        return (zzbeo) zzb.zzaA();
    }

    public static /* synthetic */ void zzd(zzbep zzbepVar, int i) {
        zzbepVar.zzd |= 1;
        zzbepVar.zze = i;
    }

    public static /* synthetic */ void zze(zzbep zzbepVar, int i) {
        zzbepVar.zzd |= 2;
        zzbepVar.zzf = i;
    }

    public static /* synthetic */ void zzf(zzbep zzbepVar, int i) {
        zzbepVar.zzd |= 4;
        zzbepVar.zzg = i;
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
                    return new zzbeo(null);
                }
                return new zzbep();
            }
            return zzgzu.zzaR(zzb, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001င\u0000\u0002င\u0001\u0003င\u0002", new Object[]{new ObfuscatedString(new long[]{-544399248383376180L, -2798841777009840216L}).toString(), new ObfuscatedString(new long[]{-413504597800577715L, 5977513110574791717L}).toString(), new ObfuscatedString(new long[]{-2449919410626380880L, -7671802771905767304L}).toString(), new ObfuscatedString(new long[]{2649179218102119501L, 7619411634264861695L}).toString()});
        }
        return (byte) 1;
    }
}
