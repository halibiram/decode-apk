package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzbcd extends zzgzu implements zzhbf {
    private static final zzbcd zzb;
    private int zzd;
    private int zze;
    private zzbch zzf;
    private zzbcj zzg;

    static {
        zzbcd zzbcdVar = new zzbcd();
        zzb = zzbcdVar;
        zzgzu.zzaU(zzbcd.class, zzbcdVar);
    }

    private zzbcd() {
    }

    public static zzbcc zza() {
        return (zzbcc) zzb.zzaA();
    }

    public static /* synthetic */ void zzd(zzbcd zzbcdVar, zzbch zzbchVar) {
        zzbchVar.getClass();
        zzbcdVar.zzf = zzbchVar;
        zzbcdVar.zzd |= 2;
    }

    public static /* synthetic */ void zze(zzbcd zzbcdVar, zzbcj zzbcjVar) {
        zzbcjVar.getClass();
        zzbcdVar.zzg = zzbcjVar;
        zzbcdVar.zzd |= 4;
    }

    public static /* synthetic */ void zzf(zzbcd zzbcdVar, int i) {
        zzbcdVar.zze = 1;
        zzbcdVar.zzd = 1 | zzbcdVar.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzgzu
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 != 2) {
                if (i2 != 3) {
                    zzbbw zzbbwVar = null;
                    if (i2 != 4) {
                        if (i2 != 5) {
                            return null;
                        }
                        return zzb;
                    }
                    return new zzbcc(zzbbwVar);
                }
                return new zzbcd();
            }
            return zzgzu.zzaR(zzb, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001᠌\u0000\u0002ဉ\u0001\u0003ဉ\u0002", new Object[]{new ObfuscatedString(new long[]{-1629838623134156317L, 8376189121847577260L}).toString(), new ObfuscatedString(new long[]{600463493723466377L, 6168841849448918642L}).toString(), zzbcf.zza, new ObfuscatedString(new long[]{-4490792344558402305L, -6389206412757083453L}).toString(), new ObfuscatedString(new long[]{-1718373699310385705L, 3325597148040326693L}).toString()});
        }
        return (byte) 1;
    }
}
