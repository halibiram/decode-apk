package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzbed extends zzgzu implements zzhbf {
    private static final zzbed zzb;
    private int zzd;
    private int zzf;
    private int zzg;
    private long zzh;
    private long zzk;
    private int zzl;
    private zzhad zze = zzgzu.zzaN();
    private String zzi = new ObfuscatedString(new long[]{-4118782996014552781L}).toString();
    private String zzj = new ObfuscatedString(new long[]{2004226098670652305L}).toString();

    static {
        zzbed zzbedVar = new zzbed();
        zzb = zzbedVar;
        zzgzu.zzaU(zzbed.class, zzbedVar);
    }

    private zzbed() {
    }

    public static zzbdz zza() {
        return (zzbdz) zzb.zzaA();
    }

    public static /* synthetic */ void zzd(zzbed zzbedVar, Iterable iterable) {
        zzhad zzhadVar = zzbedVar.zze;
        if (!zzhadVar.zzc()) {
            zzbedVar.zze = zzgzu.zzaO(zzhadVar);
        }
        zzgxt.zzav(iterable, zzbedVar.zze);
    }

    public static /* synthetic */ void zze(zzbed zzbedVar, int i) {
        zzbedVar.zzd |= 1;
        zzbedVar.zzf = i;
    }

    public static /* synthetic */ void zzf(zzbed zzbedVar, int i) {
        zzbedVar.zzd |= 2;
        zzbedVar.zzg = i;
    }

    public static /* synthetic */ void zzg(zzbed zzbedVar, long j) {
        zzbedVar.zzd |= 4;
        zzbedVar.zzh = j;
    }

    public static /* synthetic */ void zzh(zzbed zzbedVar, String str) {
        str.getClass();
        zzbedVar.zzd |= 8;
        zzbedVar.zzi = str;
    }

    public static /* synthetic */ void zzi(zzbed zzbedVar, String str) {
        str.getClass();
        zzbedVar.zzd |= 16;
        zzbedVar.zzj = str;
    }

    public static /* synthetic */ void zzj(zzbed zzbedVar, long j) {
        zzbedVar.zzd |= 32;
        zzbedVar.zzk = j;
    }

    public static /* synthetic */ void zzk(zzbed zzbedVar, int i) {
        zzbedVar.zzd |= 64;
        zzbedVar.zzl = i;
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
                    return new zzbdz(zzbbwVar);
                }
                return new zzbed();
            }
            return zzgzu.zzaR(zzb, "\u0001\b\u0000\u0001\u0001\b\b\u0000\u0001\u0000\u0001\u001b\u0002င\u0000\u0003င\u0001\u0004ဂ\u0002\u0005ဈ\u0003\u0006ဈ\u0004\u0007ဂ\u0005\bင\u0006", new Object[]{new ObfuscatedString(new long[]{5994969001567172208L, 6008554222560621324L}).toString(), new ObfuscatedString(new long[]{9017536033123290069L, -7756048694737519295L}).toString(), zzbdy.class, new ObfuscatedString(new long[]{6485636757730520599L, 4985403668281560934L}).toString(), new ObfuscatedString(new long[]{-7042375587288754591L, -94304037494007075L}).toString(), new ObfuscatedString(new long[]{1900659390262812099L, 6653818092851026351L}).toString(), new ObfuscatedString(new long[]{-4425075203148916300L, -4739048271819363008L}).toString(), new ObfuscatedString(new long[]{7567474673502361836L, 170446842507900135L}).toString(), new ObfuscatedString(new long[]{-9033002075214085586L, 8357444613899126486L}).toString(), new ObfuscatedString(new long[]{5216068398671429264L, -6748129318315198073L}).toString()});
        }
        return (byte) 1;
    }
}
