package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzatq extends zzgzu implements zzhbf {
    private static final zzatq zzb;
    private int zzd;
    private zzhad zze = zzgzu.zzaN();
    private zzgyl zzf = zzgyl.zzb;
    private int zzg = 1;
    private int zzh = 1;

    static {
        zzatq zzatqVar = new zzatq();
        zzb = zzatqVar;
        zzgzu.zzaU(zzatq.class, zzatqVar);
    }

    private zzatq() {
    }

    public static zzatp zza() {
        return (zzatp) zzb.zzaA();
    }

    public static /* synthetic */ void zzd(zzatq zzatqVar, zzgyl zzgylVar) {
        zzhad zzhadVar = zzatqVar.zze;
        if (!zzhadVar.zzc()) {
            zzatqVar.zze = zzgzu.zzaO(zzhadVar);
        }
        zzatqVar.zze.add(zzgylVar);
    }

    public static /* synthetic */ void zze(zzatq zzatqVar, zzgyl zzgylVar) {
        zzatqVar.zzd |= 1;
        zzatqVar.zzf = zzgylVar;
    }

    public static /* synthetic */ void zzf(zzatq zzatqVar, int i) {
        zzatqVar.zzh = 4;
        zzatqVar.zzd = 4 | zzatqVar.zzd;
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
                    return new zzatp(null);
                }
                return new zzatq();
            }
            return zzgzu.zzaR(zzb, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u001c\u0002ည\u0000\u0003᠌\u0001\u0004᠌\u0002", new Object[]{new ObfuscatedString(new long[]{611216453636430208L, -4144001771060873130L}).toString(), new ObfuscatedString(new long[]{186733898275348760L, -1657982982755570750L}).toString(), new ObfuscatedString(new long[]{8588730335129335555L, -4684018252987447306L}).toString(), new ObfuscatedString(new long[]{160710255399518740L, 2777600504048452284L}).toString(), zzatk.zza, new ObfuscatedString(new long[]{2397969410220318340L, -7838667969064435529L}).toString(), zzati.zza});
        }
        return (byte) 1;
    }
}
