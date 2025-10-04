package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzfnk extends zzgzu implements zzhbf {
    private static final zzfnk zzb;
    private zzhad zzd = zzgzu.zzaN();

    static {
        zzfnk zzfnkVar = new zzfnk();
        zzb = zzfnkVar;
        zzgzu.zzaU(zzfnk.class, zzfnkVar);
    }

    private zzfnk() {
    }

    public static zzfnh zzc() {
        return (zzfnh) zzb.zzaA();
    }

    public static /* synthetic */ void zzf(zzfnk zzfnkVar, zzfnj zzfnjVar) {
        zzfnjVar.getClass();
        zzhad zzhadVar = zzfnkVar.zzd;
        if (!zzhadVar.zzc()) {
            zzfnkVar.zzd = zzgzu.zzaO(zzhadVar);
        }
        zzfnkVar.zzd.add(zzfnjVar);
    }

    public final int zza() {
        return this.zzd.size();
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
                    return new zzfnh(null);
                }
                return new zzfnk();
            }
            return zzgzu.zzaR(zzb, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{new ObfuscatedString(new long[]{8056929758427888386L, 115484375635135147L}).toString(), zzfnj.class});
        }
        return (byte) 1;
    }
}
