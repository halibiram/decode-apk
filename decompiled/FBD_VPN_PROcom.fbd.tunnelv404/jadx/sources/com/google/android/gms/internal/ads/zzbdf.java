package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzbdf extends zzgzu implements zzhbf {
    private static final zzbdf zzb;
    private int zzd;
    private int zze;
    private int zzg;
    private zzbep zzi;
    private zzbcx zzk;
    private zzbda zzl;
    private zzbdt zzm;
    private zzbcb zzn;
    private zzbed zzo;
    private zzbfk zzp;
    private zzbck zzq;
    private String zzf = new ObfuscatedString(new long[]{-5412759071364298923L}).toString();
    private int zzh = 1000;
    private zzhac zzj = zzgzu.zzaL();

    static {
        zzbdf zzbdfVar = new zzbdf();
        zzb = zzbdfVar;
        zzgzu.zzaU(zzbdf.class, zzbdfVar);
    }

    private zzbdf() {
    }

    public static zzbde zzd() {
        return (zzbde) zzb.zzaA();
    }

    public static /* synthetic */ void zzg(zzbdf zzbdfVar, String str) {
        str.getClass();
        zzbdfVar.zzd |= 2;
        zzbdfVar.zzf = str;
    }

    public static /* synthetic */ void zzh(zzbdf zzbdfVar, Iterable iterable) {
        zzhac zzhacVar = zzbdfVar.zzj;
        if (!zzhacVar.zzc()) {
            zzbdfVar.zzj = zzgzu.zzaM(zzhacVar);
        }
        zzgxt.zzav(iterable, zzbdfVar.zzj);
    }

    public static /* synthetic */ void zzj(zzbdf zzbdfVar, zzbcx zzbcxVar) {
        zzbcxVar.getClass();
        zzbdfVar.zzk = zzbcxVar;
        zzbdfVar.zzd |= 32;
    }

    public static /* synthetic */ void zzk(zzbdf zzbdfVar, zzbcb zzbcbVar) {
        zzbcbVar.getClass();
        zzbdfVar.zzn = zzbcbVar;
        zzbdfVar.zzd |= 256;
    }

    public static /* synthetic */ void zzl(zzbdf zzbdfVar, zzbed zzbedVar) {
        zzbedVar.getClass();
        zzbdfVar.zzo = zzbedVar;
        zzbdfVar.zzd |= 512;
    }

    public static /* synthetic */ void zzm(zzbdf zzbdfVar, zzbfk zzbfkVar) {
        zzbfkVar.getClass();
        zzbdfVar.zzp = zzbfkVar;
        zzbdfVar.zzd |= 1024;
    }

    public static /* synthetic */ void zzn(zzbdf zzbdfVar, zzbck zzbckVar) {
        zzbckVar.getClass();
        zzbdfVar.zzq = zzbckVar;
        zzbdfVar.zzd |= 2048;
    }

    public final zzbcb zza() {
        zzbcb zzbcbVar = this.zzn;
        if (zzbcbVar == null) {
            return zzbcb.zzc();
        }
        return zzbcbVar;
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
                    return new zzbde(null);
                }
                return new zzbdf();
            }
            return zzgzu.zzaR(zzb, "\u0001\r\u0000\u0001\t\u0015\r\u0000\u0001\u0000\tင\u0000\nဈ\u0001\u000bဋ\u0002\f᠌\u0003\rဉ\u0004\u000e\u0015\u000fဉ\u0005\u0010ဉ\u0006\u0011ဉ\u0007\u0012ဉ\b\u0013ဉ\t\u0014ဉ\n\u0015ဉ\u000b", new Object[]{new ObfuscatedString(new long[]{-2414149238579848221L, 2468804221499782566L}).toString(), new ObfuscatedString(new long[]{4326236253148206821L, 2201453287018410297L}).toString(), new ObfuscatedString(new long[]{2747381574439274823L, 8806859101222649137L}).toString(), new ObfuscatedString(new long[]{-5736815760488824641L, 7759987031669420777L}).toString(), new ObfuscatedString(new long[]{4329228844408403097L, -2595058106069274741L}).toString(), zzbdc.zza, new ObfuscatedString(new long[]{1749575580613964155L, -8575732890480214707L}).toString(), new ObfuscatedString(new long[]{-7425063110529086026L, -4283498077066511080L}).toString(), new ObfuscatedString(new long[]{1755468659284643753L, -3527951545450689301L}).toString(), new ObfuscatedString(new long[]{6096364202154532977L, 1988708641875706830L}).toString(), new ObfuscatedString(new long[]{91466757996517894L, 702552486509860670L}).toString(), new ObfuscatedString(new long[]{2915891406453224126L, -6466763162892678103L}).toString(), new ObfuscatedString(new long[]{-2308697397786153548L, 7453188405692876989L}).toString(), new ObfuscatedString(new long[]{4362976054913787793L, 8664609383667895707L}).toString(), new ObfuscatedString(new long[]{-4927232130848323374L, 6428728824466258254L}).toString()});
        }
        return (byte) 1;
    }

    public final zzbcx zzc() {
        zzbcx zzbcxVar = this.zzk;
        if (zzbcxVar == null) {
            return zzbcx.zzc();
        }
        return zzbcxVar;
    }

    public final String zzf() {
        return this.zzf;
    }
}
