package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzbfk extends zzgzu implements zzhbf {
    private static final zzbfk zzb;
    private int zzd;
    private boolean zze;
    private int zzf;

    static {
        zzbfk zzbfkVar = new zzbfk();
        zzb = zzbfkVar;
        zzgzu.zzaU(zzbfk.class, zzbfkVar);
    }

    private zzbfk() {
    }

    public static zzbfj zza() {
        return (zzbfj) zzb.zzaA();
    }

    public static /* synthetic */ void zzd(zzbfk zzbfkVar, boolean z) {
        zzbfkVar.zzd |= 1;
        zzbfkVar.zze = z;
    }

    public static /* synthetic */ void zze(zzbfk zzbfkVar, int i) {
        zzbfkVar.zzd |= 2;
        zzbfkVar.zzf = i;
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
                    return new zzbfj(zzbbwVar);
                }
                return new zzbfk();
            }
            return zzgzu.zzaR(zzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဇ\u0000\u0002င\u0001", new Object[]{new ObfuscatedString(new long[]{-1798894044478537086L, -2359604887128587388L}).toString(), new ObfuscatedString(new long[]{1210639083716015840L, -2972792721936976460L}).toString(), new ObfuscatedString(new long[]{3248560093055935057L, -5505955889247797166L}).toString()});
        }
        return (byte) 1;
    }

    public final boolean zzf() {
        return this.zze;
    }
}
