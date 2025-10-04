package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzfro extends zzgzu implements zzhbf {
    private static final zzhaa zzb = new zzfrl();
    private static final zzfro zzd;
    private int zze;
    private zzgzz zzf = zzgzu.zzaJ();
    private String zzg = new ObfuscatedString(new long[]{-8983924333148662742L}).toString();
    private String zzh = new ObfuscatedString(new long[]{522178740829116714L}).toString();
    private String zzi = new ObfuscatedString(new long[]{-2304708241229229188L}).toString();

    static {
        zzfro zzfroVar = new zzfro();
        zzd = zzfroVar;
        zzgzu.zzaU(zzfro.class, zzfroVar);
    }

    private zzfro() {
    }

    public static zzfrn zza() {
        return (zzfrn) zzd.zzaA();
    }

    public static /* synthetic */ void zzd(zzfro zzfroVar, String str) {
        str.getClass();
        zzfroVar.zze |= 1;
        zzfroVar.zzg = str;
    }

    public static /* synthetic */ void zze(zzfro zzfroVar, int i) {
        zzgzz zzgzzVar = zzfroVar.zzf;
        if (!zzgzzVar.zzc()) {
            zzfroVar.zzf = zzgzu.zzaK(zzgzzVar);
        }
        zzfroVar.zzf.zzh(2);
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
                        return zzd;
                    }
                    return new zzfrn(null);
                }
                return new zzfro();
            }
            return zzgzu.zzaR(zzd, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001ࠞ\u0002ဈ\u0000\u0003ဈ\u0001\u0004ဈ\u0002", new Object[]{new ObfuscatedString(new long[]{-6403596674851379872L, -4834196795281151448L}).toString(), new ObfuscatedString(new long[]{8480266985517451124L, -2935936367513652925L}).toString(), zzfrm.zza, new ObfuscatedString(new long[]{3159132011394220617L, -7032144912986194173L}).toString(), new ObfuscatedString(new long[]{899305500809300539L, -820104711973090061L}).toString(), new ObfuscatedString(new long[]{-1993403737012116989L, -5738631441105364850L}).toString()});
        }
        return (byte) 1;
    }
}
