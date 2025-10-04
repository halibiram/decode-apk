package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzguo extends zzgzu implements zzhbf {
    private static final zzguo zzb;
    private int zzd;
    private int zze;

    static {
        zzguo zzguoVar = new zzguo();
        zzb = zzguoVar;
        zzgzu.zzaU(zzguo.class, zzguoVar);
    }

    private zzguo() {
    }

    public static zzgun zzd() {
        return (zzgun) zzb.zzaA();
    }

    public static zzguo zzf() {
        return zzb;
    }

    public final int zza() {
        return this.zze;
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
                    return new zzgun(null);
                }
                return new zzguo();
            }
            return zzgzu.zzaR(zzb, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\f\u0002\u000b", new Object[]{new ObfuscatedString(new long[]{7137478010623384269L, 8426984845233991585L}).toString(), new ObfuscatedString(new long[]{-546811416403656530L, 630932689941267084L}).toString()});
        }
        return (byte) 1;
    }

    public final zzguf zzc() {
        zzguf zzgufVar;
        int i = this.zzd;
        zzguf zzgufVar2 = zzguf.zza;
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i != 4) {
                            if (i != 5) {
                                zzgufVar = null;
                            } else {
                                zzgufVar = zzguf.zzf;
                            }
                        } else {
                            zzgufVar = zzguf.zze;
                        }
                    } else {
                        zzgufVar = zzguf.zzd;
                    }
                } else {
                    zzgufVar = zzguf.zzc;
                }
            } else {
                zzgufVar = zzguf.zzb;
            }
        } else {
            zzgufVar = zzguf.zza;
        }
        if (zzgufVar == null) {
            return zzguf.zzg;
        }
        return zzgufVar;
    }
}
