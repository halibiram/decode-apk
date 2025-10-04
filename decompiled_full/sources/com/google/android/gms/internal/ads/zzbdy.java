package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzbdy extends zzgzu implements zzhbf {
    private static final zzhaa zzb = new zzbdw();
    private static final zzbdy zzd;
    private int zze;
    private long zzf;
    private int zzg;
    private long zzh;
    private long zzi;
    private zzgzz zzj = zzgzu.zzaJ();
    private zzbdt zzk;
    private int zzl;
    private int zzm;
    private int zzn;
    private int zzo;
    private int zzp;
    private int zzq;
    private long zzr;

    static {
        zzbdy zzbdyVar = new zzbdy();
        zzd = zzbdyVar;
        zzgzu.zzaU(zzbdy.class, zzbdyVar);
    }

    private zzbdy() {
    }

    public static /* synthetic */ void zzA(zzbdy zzbdyVar, int i) {
        zzbdyVar.zzm = i - 1;
        zzbdyVar.zze |= 64;
    }

    public static /* synthetic */ void zzB(zzbdy zzbdyVar, int i) {
        zzbdyVar.zzn = i - 1;
        zzbdyVar.zze |= 128;
    }

    public static /* synthetic */ void zzC(zzbdy zzbdyVar, int i) {
        zzbdyVar.zzp = i - 1;
        zzbdyVar.zze |= 512;
    }

    public static zzbdx zzg() {
        return (zzbdx) zzd.zzaA();
    }

    public static zzbdy zzi(byte[] bArr) {
        return (zzbdy) zzgzu.zzaF(zzd, bArr);
    }

    public static /* synthetic */ void zzl(zzbdy zzbdyVar, long j) {
        zzbdyVar.zze |= 1;
        zzbdyVar.zzf = j;
    }

    public static /* synthetic */ void zzm(zzbdy zzbdyVar, long j) {
        zzbdyVar.zze |= 4;
        zzbdyVar.zzh = j;
    }

    public static /* synthetic */ void zzn(zzbdy zzbdyVar, long j) {
        zzbdyVar.zze |= 8;
        zzbdyVar.zzi = j;
    }

    public static /* synthetic */ void zzo(zzbdy zzbdyVar, Iterable iterable) {
        zzgzz zzgzzVar = zzbdyVar.zzj;
        if (!zzgzzVar.zzc()) {
            zzbdyVar.zzj = zzgzu.zzaK(zzgzzVar);
        }
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            zzbdyVar.zzj.zzh(((zzbcn) it.next()).zza());
        }
    }

    public static /* synthetic */ void zzp(zzbdy zzbdyVar, zzbdt zzbdtVar) {
        zzbdtVar.getClass();
        zzbdyVar.zzk = zzbdtVar;
        zzbdyVar.zze |= 16;
    }

    public static /* synthetic */ void zzq(zzbdy zzbdyVar, int i) {
        zzbdyVar.zze |= 256;
        zzbdyVar.zzo = i;
    }

    public static /* synthetic */ void zzr(zzbdy zzbdyVar, zzbec zzbecVar) {
        zzbdyVar.zzq = zzbecVar.zza();
        zzbdyVar.zze |= 1024;
    }

    public static /* synthetic */ void zzs(zzbdy zzbdyVar, long j) {
        zzbdyVar.zze |= 2048;
        zzbdyVar.zzr = j;
    }

    public static /* synthetic */ void zzy(zzbdy zzbdyVar, int i) {
        zzbdyVar.zzg = i - 1;
        zzbdyVar.zze |= 2;
    }

    public static /* synthetic */ void zzz(zzbdy zzbdyVar, int i) {
        zzbdyVar.zzl = i - 1;
        zzbdyVar.zze |= 32;
    }

    public final int zza() {
        return this.zzo;
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
                        return zzd;
                    }
                    return new zzbdx(zzbbwVar);
                }
                return new zzbdy();
            }
            String obfuscatedString = new ObfuscatedString(new long[]{-3643188079866543069L, -8111942649080414695L}).toString();
            String obfuscatedString2 = new ObfuscatedString(new long[]{5709719207481097332L, -9104689815988412721L}).toString();
            String obfuscatedString3 = new ObfuscatedString(new long[]{-3329689428795008210L, -8782594281512361711L}).toString();
            String obfuscatedString4 = new ObfuscatedString(new long[]{4001983504188169483L, -4696470834801174435L}).toString();
            String obfuscatedString5 = new ObfuscatedString(new long[]{-1462672644289184434L, -6975520483337307365L}).toString();
            String obfuscatedString6 = new ObfuscatedString(new long[]{-4260451861882335641L, -4320878314155406087L}).toString();
            String obfuscatedString7 = new ObfuscatedString(new long[]{8032276473240667745L, -3782100681123403727L}).toString();
            String obfuscatedString8 = new ObfuscatedString(new long[]{882873432705974814L, 3909443931649159412L}).toString();
            String obfuscatedString9 = new ObfuscatedString(new long[]{-6318519111485830382L, 5658670477119278035L}).toString();
            String obfuscatedString10 = new ObfuscatedString(new long[]{1480395743271230515L, -5066766298382887165L}).toString();
            String obfuscatedString11 = new ObfuscatedString(new long[]{2929292107065773119L, 5779708236316942142L}).toString();
            String obfuscatedString12 = new ObfuscatedString(new long[]{1552437687181292209L, 2521203232087035737L}).toString();
            String obfuscatedString13 = new ObfuscatedString(new long[]{7416803551407594148L, 7943137671191091082L}).toString();
            String obfuscatedString14 = new ObfuscatedString(new long[]{674033070115024992L, -6479485583434323409L}).toString();
            zzgzy zzgzyVar = zzbdc.zza;
            return zzgzu.zzaR(zzd, "\u0001\r\u0000\u0001\u0001\r\r\u0000\u0001\u0000\u0001ဂ\u0000\u0002᠌\u0001\u0003ဂ\u0002\u0004ဂ\u0003\u0005ࠞ\u0006ဉ\u0004\u0007᠌\u0005\b᠌\u0006\t᠌\u0007\nင\b\u000b᠌\t\f᠌\n\rဂ\u000b", new Object[]{obfuscatedString, obfuscatedString2, obfuscatedString3, zzgzyVar, obfuscatedString4, obfuscatedString5, obfuscatedString6, zzbcm.zza, obfuscatedString7, obfuscatedString8, zzgzyVar, obfuscatedString9, zzgzyVar, obfuscatedString10, zzgzyVar, obfuscatedString11, obfuscatedString12, zzgzyVar, obfuscatedString13, zzbeb.zza, obfuscatedString14});
        }
        return (byte) 1;
    }

    public final long zzc() {
        return this.zzi;
    }

    public final long zzd() {
        return this.zzh;
    }

    public final long zze() {
        return this.zzf;
    }

    public final zzbdt zzf() {
        zzbdt zzbdtVar = this.zzk;
        if (zzbdtVar == null) {
            return zzbdt.zzd();
        }
        return zzbdtVar;
    }

    public final zzbec zzj() {
        zzbec zzb2 = zzbec.zzb(this.zzq);
        if (zzb2 == null) {
            return zzbec.zza;
        }
        return zzb2;
    }

    public final List zzk() {
        return new zzhab(this.zzj, zzb);
    }

    public final int zzt() {
        int zza = zzbdd.zza(this.zzm);
        if (zza == 0) {
            return 1;
        }
        return zza;
    }

    public final int zzu() {
        int zza = zzbdd.zza(this.zzn);
        if (zza == 0) {
            return 1;
        }
        return zza;
    }

    public final int zzv() {
        int zza = zzbdd.zza(this.zzp);
        if (zza == 0) {
            return 1;
        }
        return zza;
    }

    public final int zzw() {
        int zza = zzbdd.zza(this.zzg);
        if (zza == 0) {
            return 1;
        }
        return zza;
    }

    public final int zzx() {
        int zza = zzbdd.zza(this.zzl);
        if (zza == 0) {
            return 1;
        }
        return zza;
    }
}
