package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzgtr extends zzgzu implements zzhbf {
    private static final zzgtr zzb;
    private int zzd;
    private int zze;

    static {
        zzgtr zzgtrVar = new zzgtr();
        zzb = zzgtrVar;
        zzgzu.zzaU(zzgtr.class, zzgtrVar);
    }

    private zzgtr() {
    }

    public static zzgtq zzd() {
        return (zzgtq) zzb.zzaA();
    }

    public static zzgtr zzf(zzgyl zzgylVar, zzgzf zzgzfVar) {
        return (zzgtr) zzgzu.zzaG(zzb, zzgylVar, zzgzfVar);
    }

    public final int zza() {
        return this.zzd;
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
                    return new zzgtq(null);
                }
                return new zzgtr();
            }
            return zzgzu.zzaR(zzb, "\u0000\u0002\u0000\u0000\u0002\u0003\u0002\u0000\u0000\u0000\u0002\u000b\u0003\u000b", new Object[]{new ObfuscatedString(new long[]{2744891947015364369L, -8025146949640882896L}).toString(), new ObfuscatedString(new long[]{-617456078129491207L, -298820988215923812L}).toString()});
        }
        return (byte) 1;
    }

    public final int zzc() {
        return this.zze;
    }
}
