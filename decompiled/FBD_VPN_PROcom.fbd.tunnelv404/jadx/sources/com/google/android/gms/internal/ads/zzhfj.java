package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzhfj extends zzgzu implements zzhbf {
    private static final zzhfj zzb;
    private int zzd;
    private int zze;
    private String zzf = new ObfuscatedString(new long[]{-2959476252954993672L}).toString();
    private zzgyl zzg;
    private zzgyl zzh;

    static {
        zzhfj zzhfjVar = new zzhfj();
        zzb = zzhfjVar;
        zzgzu.zzaU(zzhfj.class, zzhfjVar);
    }

    private zzhfj() {
        zzgyl zzgylVar = zzgyl.zzb;
        this.zzg = zzgylVar;
        this.zzh = zzgylVar;
    }

    public static zzhfh zza() {
        return (zzhfh) zzb.zzaA();
    }

    public static /* synthetic */ void zzd(zzhfj zzhfjVar, String str) {
        zzhfjVar.zzd |= 2;
        zzhfjVar.zzf = new ObfuscatedString(new long[]{3931187833532662351L, 8677709179409985418L, -1955686123791853594L}).toString();
    }

    public static /* synthetic */ void zze(zzhfj zzhfjVar, zzgyl zzgylVar) {
        zzgylVar.getClass();
        zzhfjVar.zzd |= 4;
        zzhfjVar.zzg = zzgylVar;
    }

    public static /* synthetic */ void zzf(zzhfj zzhfjVar, int i) {
        zzhfjVar.zze = 1;
        zzhfjVar.zzd = 1 | zzhfjVar.zzd;
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
                    return new zzhfh(null);
                }
                return new zzhfj();
            }
            return zzgzu.zzaR(zzb, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001᠌\u0000\u0002ဈ\u0001\u0003ည\u0002\u0004ည\u0003", new Object[]{new ObfuscatedString(new long[]{3775478387677924747L, -8008719266153974532L}).toString(), new ObfuscatedString(new long[]{4552997460576506276L, -712957084624325894L}).toString(), zzhfi.zza, new ObfuscatedString(new long[]{2844290746201066736L, 7184105074200630161L}).toString(), new ObfuscatedString(new long[]{370378520224889188L, 1015790265202613371L}).toString(), new ObfuscatedString(new long[]{5716871974800462945L, 2456184419526710269L}).toString()});
        }
        return (byte) 1;
    }
}
