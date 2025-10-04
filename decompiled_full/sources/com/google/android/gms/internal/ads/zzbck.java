package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzbck extends zzgzu implements zzhbf {
    private static final zzbck zzb;
    private zzhad zzd = zzgzu.zzaN();

    static {
        zzbck zzbckVar = new zzbck();
        zzb = zzbckVar;
        zzgzu.zzaU(zzbck.class, zzbckVar);
    }

    private zzbck() {
    }

    public static zzbce zza() {
        return (zzbce) zzb.zzaA();
    }

    public static /* synthetic */ void zzd(zzbck zzbckVar, zzbcd zzbcdVar) {
        zzbcdVar.getClass();
        zzhad zzhadVar = zzbckVar.zzd;
        if (!zzhadVar.zzc()) {
            zzbckVar.zzd = zzgzu.zzaO(zzhadVar);
        }
        zzbckVar.zzd.add(zzbcdVar);
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
                    return new zzbce(zzbbwVar);
                }
                return new zzbck();
            }
            return zzgzu.zzaR(zzb, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{new ObfuscatedString(new long[]{-8409083045087751983L, 1084226112214341073L}).toString(), zzbcd.class});
        }
        return (byte) 1;
    }
}
