package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzbcj extends zzgzu implements zzhbf {
    private static final zzbcj zzb;
    private int zzd;
    private boolean zze;
    private boolean zzf;
    private int zzg;

    static {
        zzbcj zzbcjVar = new zzbcj();
        zzb = zzbcjVar;
        zzgzu.zzaU(zzbcj.class, zzbcjVar);
    }

    private zzbcj() {
    }

    public static zzbci zza() {
        return (zzbci) zzb.zzaA();
    }

    public static /* synthetic */ void zzd(zzbcj zzbcjVar, boolean z) {
        zzbcjVar.zzd |= 1;
        zzbcjVar.zze = z;
    }

    public static /* synthetic */ void zze(zzbcj zzbcjVar, boolean z) {
        zzbcjVar.zzd |= 2;
        zzbcjVar.zzf = z;
    }

    public static /* synthetic */ void zzf(zzbcj zzbcjVar, int i) {
        zzbcjVar.zzd |= 4;
        zzbcjVar.zzg = i;
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
                    return new zzbci(null);
                }
                return new zzbcj();
            }
            return zzgzu.zzaR(zzb, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဇ\u0000\u0002ဇ\u0001\u0003ဋ\u0002", new Object[]{new ObfuscatedString(new long[]{5573261766160454767L, -2105313476834786156L}).toString(), new ObfuscatedString(new long[]{1734337407603550780L, -3179019180765132665L}).toString(), new ObfuscatedString(new long[]{-6304328692995143262L, -1172537206224051127L}).toString(), new ObfuscatedString(new long[]{8441835499920458150L, 413838024240397222L}).toString()});
        }
        return (byte) 1;
    }
}
