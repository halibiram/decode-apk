package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzbch extends zzgzu implements zzhbf {
    private static final zzbch zzb;
    private int zzd;
    private boolean zze;
    private int zzf;

    static {
        zzbch zzbchVar = new zzbch();
        zzb = zzbchVar;
        zzgzu.zzaU(zzbch.class, zzbchVar);
    }

    private zzbch() {
    }

    public static zzbcg zza() {
        return (zzbcg) zzb.zzaA();
    }

    public static zzbch zzd() {
        return zzb;
    }

    public static /* synthetic */ void zze(zzbch zzbchVar, boolean z) {
        zzbchVar.zzd |= 1;
        zzbchVar.zze = z;
    }

    public static /* synthetic */ void zzf(zzbch zzbchVar, int i) {
        zzbchVar.zzd |= 2;
        zzbchVar.zzf = i;
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
                    return new zzbcg(null);
                }
                return new zzbch();
            }
            return zzgzu.zzaR(zzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဇ\u0000\u0002ဋ\u0001", new Object[]{new ObfuscatedString(new long[]{8203404347658213398L, -8051859172178231431L}).toString(), new ObfuscatedString(new long[]{5326592301444547367L, 739560805003115582L}).toString(), new ObfuscatedString(new long[]{7126624157427422040L, -9197071800740400614L}).toString()});
        }
        return (byte) 1;
    }
}
