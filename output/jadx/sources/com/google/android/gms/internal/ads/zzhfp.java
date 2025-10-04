package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzhfp extends zzgzu implements zzhbf {
    private static final zzhfp zzb;
    private int zzd;
    private int zze;
    private zzher zzg;
    private zzhev zzh;
    private int zzi;
    private int zzl;
    private byte zzn = 2;
    private String zzf = new ObfuscatedString(new long[]{8557533322638957377L}).toString();
    private zzgzz zzj = zzgzu.zzaJ();
    private String zzk = new ObfuscatedString(new long[]{2327857783653402053L}).toString();
    private zzhad zzm = zzgzu.zzaN();

    static {
        zzhfp zzhfpVar = new zzhfp();
        zzb = zzhfpVar;
        zzgzu.zzaU(zzhfp.class, zzhfpVar);
    }

    private zzhfp() {
    }

    public static zzhfo zzc() {
        return (zzhfo) zzb.zzaA();
    }

    public static /* synthetic */ void zzf(zzhfp zzhfpVar, int i) {
        zzhfpVar.zzd |= 1;
        zzhfpVar.zze = i;
    }

    public static /* synthetic */ void zzg(zzhfp zzhfpVar, String str) {
        str.getClass();
        zzhfpVar.zzd |= 2;
        zzhfpVar.zzf = str;
    }

    public static /* synthetic */ void zzh(zzhfp zzhfpVar, zzher zzherVar) {
        zzherVar.getClass();
        zzhfpVar.zzg = zzherVar;
        zzhfpVar.zzd |= 4;
    }

    public static /* synthetic */ void zzi(zzhfp zzhfpVar, String str) {
        str.getClass();
        zzhad zzhadVar = zzhfpVar.zzm;
        if (!zzhadVar.zzc()) {
            zzhfpVar.zzm = zzgzu.zzaO(zzhadVar);
        }
        zzhfpVar.zzm.add(str);
    }

    public static /* synthetic */ void zzj(zzhfp zzhfpVar, int i) {
        zzhfpVar.zzl = i - 1;
        zzhfpVar.zzd |= 64;
    }

    public final int zza() {
        return this.zzm.size();
    }

    @Override // com.google.android.gms.internal.ads.zzgzu
    public final Object zzb(int i, Object obj, Object obj2) {
        byte b = 1;
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 != 4) {
                        if (i2 != 5) {
                            if (obj == null) {
                                b = 0;
                            }
                            this.zzn = b;
                            return null;
                        }
                        return zzb;
                    }
                    return new zzhfo(null);
                }
                return new zzhfp();
            }
            return zzgzu.zzaR(zzb, "\u0001\t\u0000\u0001\u0001\t\t\u0000\u0002\u0003\u0001ᔄ\u0000\u0002ဈ\u0001\u0003ᐉ\u0002\u0004ᐉ\u0003\u0005င\u0004\u0006\u0016\u0007ဈ\u0005\b᠌\u0006\t\u001a", new Object[]{new ObfuscatedString(new long[]{-3621185846897916902L, -2152031993586651883L}).toString(), new ObfuscatedString(new long[]{-2863545828099727939L, 4126220951722871639L}).toString(), new ObfuscatedString(new long[]{389799644622798101L, 5858886247465906552L}).toString(), new ObfuscatedString(new long[]{-7353877829011441656L, -8823688046334937506L}).toString(), new ObfuscatedString(new long[]{-6068163206358283956L, 759492092069643766L}).toString(), new ObfuscatedString(new long[]{8077563541592152111L, -5290143473903621451L}).toString(), new ObfuscatedString(new long[]{4564031145719309618L, 673893876653497700L}).toString(), new ObfuscatedString(new long[]{4945435401184004916L, -2717994193321316427L}).toString(), new ObfuscatedString(new long[]{284337182544730880L, -1839215617302333356L}).toString(), zzhfm.zza, new ObfuscatedString(new long[]{252986818301653205L, -8017745154332429427L}).toString()});
        }
        return Byte.valueOf(this.zzn);
    }

    public final String zze() {
        return this.zzf;
    }
}
