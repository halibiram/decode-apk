package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzgud extends zzgzu implements zzhbf {
    private static final zzgud zzb;

    static {
        zzgud zzgudVar = new zzgud();
        zzb = zzgudVar;
        zzgzu.zzaU(zzgud.class, zzgudVar);
    }

    private zzgud() {
    }

    public static zzgud zzc() {
        return zzb;
    }

    public static zzgud zzd(zzgyl zzgylVar, zzgzf zzgzfVar) {
        return (zzgud) zzgzu.zzaG(zzb, zzgylVar, zzgzfVar);
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
                    return new zzguc(null);
                }
                return new zzgud();
            }
            return zzgzu.zzaR(zzb, "\u0000\u0000", null);
        }
        return (byte) 1;
    }
}
