package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzatc extends zzgzu implements zzhbf {
    private static final zzatc zzb;
    private int zzd;
    private long zze = -1;
    private long zzf = -1;
    private long zzg = -1;
    private long zzh = -1;
    private long zzi = -1;
    private long zzj = -1;
    private long zzk = -1;
    private long zzl = -1;

    static {
        zzatc zzatcVar = new zzatc();
        zzb = zzatcVar;
        zzgzu.zzaU(zzatc.class, zzatcVar);
    }

    private zzatc() {
    }

    public static zzatb zza() {
        return (zzatb) zzb.zzaA();
    }

    public static /* synthetic */ void zzd(zzatc zzatcVar, long j) {
        zzatcVar.zzd |= 1;
        zzatcVar.zze = j;
    }

    public static /* synthetic */ void zze(zzatc zzatcVar, long j) {
        zzatcVar.zzd |= 4;
        zzatcVar.zzg = j;
    }

    public static /* synthetic */ void zzf(zzatc zzatcVar, long j) {
        zzatcVar.zzd |= 8;
        zzatcVar.zzh = j;
    }

    public static /* synthetic */ void zzg(zzatc zzatcVar, long j) {
        zzatcVar.zzd |= 16;
        zzatcVar.zzi = j;
    }

    public static /* synthetic */ void zzh(zzatc zzatcVar, long j) {
        zzatcVar.zzd |= 32;
        zzatcVar.zzj = j;
    }

    @Override // com.google.android.gms.internal.ads.zzgzu
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 != 2) {
                if (i2 != 3) {
                    zzasf zzasfVar = null;
                    if (i2 != 4) {
                        if (i2 != 5) {
                            return null;
                        }
                        return zzb;
                    }
                    return new zzatb(zzasfVar);
                }
                return new zzatc();
            }
            return zzgzu.zzaR(zzb, "\u0001\b\u0000\u0001\u0001\b\b\u0000\u0000\u0000\u0001ဂ\u0000\u0002ဂ\u0001\u0003ဂ\u0002\u0004ဂ\u0003\u0005ဂ\u0004\u0006ဂ\u0005\u0007ဂ\u0006\bဂ\u0007", new Object[]{new ObfuscatedString(new long[]{-7440195952445023605L, 2729986116258216947L}).toString(), new ObfuscatedString(new long[]{6299894362363450451L, -4315289752172866394L}).toString(), new ObfuscatedString(new long[]{-3847212016914929467L, 7321340943864045343L}).toString(), new ObfuscatedString(new long[]{8726911371731213521L, -2785956950814030955L}).toString(), new ObfuscatedString(new long[]{-2811963141157669559L, 5286839714711171407L}).toString(), new ObfuscatedString(new long[]{3728859690509143390L, -8330840326443682954L}).toString(), new ObfuscatedString(new long[]{2778321662038131167L, -3712167020250989941L}).toString(), new ObfuscatedString(new long[]{1705808633023962307L, -2077787018623461471L}).toString(), new ObfuscatedString(new long[]{6933021682887238989L, -1672432830670289330L}).toString()});
        }
        return (byte) 1;
    }
}
