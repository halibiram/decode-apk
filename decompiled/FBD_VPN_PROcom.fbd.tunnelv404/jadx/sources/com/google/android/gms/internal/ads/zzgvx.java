package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzgvx extends zzgzu implements zzhbf {
    private static final zzgvx zzb;
    private int zzd;
    private String zze = new ObfuscatedString(new long[]{3602118250772665963L}).toString();
    private zzguy zzf;

    static {
        zzgvx zzgvxVar = new zzgvx();
        zzb = zzgvxVar;
        zzgzu.zzaU(zzgvx.class, zzgvxVar);
    }

    private zzgvx() {
    }

    public static zzgvw zzc() {
        return (zzgvw) zzb.zzaA();
    }

    public static zzgvx zze() {
        return zzb;
    }

    public static zzgvx zzf(zzgyl zzgylVar, zzgzf zzgzfVar) {
        return (zzgvx) zzgzu.zzaG(zzb, zzgylVar, zzgzfVar);
    }

    public static /* synthetic */ void zzh(zzgvx zzgvxVar, String str) {
        str.getClass();
        zzgvxVar.zze = str;
    }

    public static /* synthetic */ void zzi(zzgvx zzgvxVar, zzguy zzguyVar) {
        zzguyVar.getClass();
        zzgvxVar.zzf = zzguyVar;
        zzgvxVar.zzd |= 1;
    }

    public final zzguy zza() {
        zzguy zzguyVar = this.zzf;
        if (zzguyVar == null) {
            return zzguy.zzd();
        }
        return zzguyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgzu
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 != 2) {
                if (i2 != 3) {
                    zzgvv zzgvvVar = null;
                    if (i2 != 4) {
                        if (i2 != 5) {
                            return null;
                        }
                        return zzb;
                    }
                    return new zzgvw(zzgvvVar);
                }
                return new zzgvx();
            }
            return zzgzu.zzaR(zzb, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001Ȉ\u0002ဉ\u0000", new Object[]{new ObfuscatedString(new long[]{-2138746037829354497L, 6886793532483127406L}).toString(), new ObfuscatedString(new long[]{1690180096139276453L, 6082572729584221844L}).toString(), new ObfuscatedString(new long[]{-7748263832015509363L, -3855055996013315580L}).toString()});
        }
        return (byte) 1;
    }

    public final String zzg() {
        return this.zze;
    }
}
