package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzbdt extends zzgzu implements zzhbf {
    private static final zzbdt zzb;
    private int zzd;
    private int zze;
    private int zzf;

    static {
        zzbdt zzbdtVar = new zzbdt();
        zzb = zzbdtVar;
        zzgzu.zzaU(zzbdt.class, zzbdtVar);
    }

    private zzbdt() {
    }

    public static zzbdm zza() {
        return (zzbdm) zzb.zzaA();
    }

    public static zzbdt zzd() {
        return zzb;
    }

    public static /* synthetic */ void zzi(zzbdt zzbdtVar, int i) {
        zzbdtVar.zze = i - 1;
        zzbdtVar.zzd |= 1;
    }

    public static /* synthetic */ void zzj(zzbdt zzbdtVar, int i) {
        zzbdtVar.zzf = i - 1;
        zzbdtVar.zzd |= 2;
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
                    return new zzbdm(null);
                }
                return new zzbdt();
            }
            return zzgzu.zzaR(zzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001᠌\u0000\u0002᠌\u0001", new Object[]{new ObfuscatedString(new long[]{7683520451591072766L, 7839653483428958629L}).toString(), new ObfuscatedString(new long[]{-2735767050539777335L, -8030038991823487936L}).toString(), zzbdr.zza, new ObfuscatedString(new long[]{-7593567148538369241L, -6396602961308128943L}).toString(), zzbdo.zza});
        }
        return (byte) 1;
    }

    public final boolean zze() {
        return (this.zzd & 2) != 0;
    }

    public final boolean zzf() {
        return (this.zzd & 1) != 0;
    }

    public final int zzg() {
        int zza = zzbdp.zza(this.zzf);
        if (zza == 0) {
            return 1;
        }
        return zza;
    }

    public final int zzh() {
        int zza = zzbds.zza(this.zze);
        if (zza == 0) {
            return 1;
        }
        return zza;
    }
}
