package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzhfr extends zzgzu implements zzhbf {
    private static final zzhfr zzb;
    private int zzd;
    private long zzf;
    private boolean zzg;
    private int zzh;
    private String zze = new ObfuscatedString(new long[]{8489497245635610958L}).toString();
    private String zzi = new ObfuscatedString(new long[]{-8827018241890087922L}).toString();
    private String zzj = new ObfuscatedString(new long[]{2518944969870674723L}).toString();

    static {
        zzhfr zzhfrVar = new zzhfr();
        zzb = zzhfrVar;
        zzgzu.zzaU(zzhfr.class, zzhfrVar);
    }

    private zzhfr() {
    }

    public static zzhfq zza() {
        return (zzhfq) zzb.zzaA();
    }

    public static /* synthetic */ void zzd(zzhfr zzhfrVar, String str) {
        zzhfrVar.zzd |= 1;
        zzhfrVar.zze = str;
    }

    public static /* synthetic */ void zze(zzhfr zzhfrVar, long j) {
        zzhfrVar.zzd |= 2;
        zzhfrVar.zzf = j;
    }

    public static /* synthetic */ void zzf(zzhfr zzhfrVar, boolean z) {
        zzhfrVar.zzd |= 4;
        zzhfrVar.zzg = z;
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
                    return new zzhfq(null);
                }
                return new zzhfr();
            }
            return zzgzu.zzaR(zzb, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဂ\u0001\u0003ဇ\u0002\u0004᠌\u0003\u0005ဈ\u0004\u0006ဈ\u0005", new Object[]{new ObfuscatedString(new long[]{-4431525735274337131L, 3450757447969359636L}).toString(), new ObfuscatedString(new long[]{-5798672609734968996L, -1063708782936546857L}).toString(), new ObfuscatedString(new long[]{6587826167898694657L, 5477381779344585864L}).toString(), new ObfuscatedString(new long[]{-1491793876847664308L, -4628684296438054459L}).toString(), new ObfuscatedString(new long[]{8552109464172460915L, 1745024714800646844L}).toString(), zzhfs.zza, new ObfuscatedString(new long[]{-2116083115504525480L, -3269132880215542609L}).toString(), new ObfuscatedString(new long[]{465325607975904484L, -6450441444512948643L}).toString()});
        }
        return (byte) 1;
    }
}
