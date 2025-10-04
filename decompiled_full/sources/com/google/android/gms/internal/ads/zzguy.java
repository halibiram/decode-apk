package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzguy extends zzgzu implements zzhbf {
    private static final zzguy zzb;
    private String zzd = new ObfuscatedString(new long[]{-5840119049446302174L}).toString();
    private zzgyl zze = zzgyl.zzb;
    private int zzf;

    static {
        zzguy zzguyVar = new zzguy();
        zzb = zzguyVar;
        zzgzu.zzaU(zzguy.class, zzguyVar);
    }

    private zzguy() {
    }

    public static zzgux zza() {
        return (zzgux) zzb.zzaA();
    }

    public static zzguy zzd() {
        return zzb;
    }

    public static zzguy zze(byte[] bArr, zzgzf zzgzfVar) {
        return (zzguy) zzgzu.zzaI(zzb, bArr, zzgzfVar);
    }

    public static /* synthetic */ void zzi(zzguy zzguyVar, String str) {
        str.getClass();
        zzguyVar.zzd = str;
    }

    public static /* synthetic */ void zzj(zzguy zzguyVar, zzgyl zzgylVar) {
        zzgylVar.getClass();
        zzguyVar.zze = zzgylVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgzu
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 != 2) {
                if (i2 != 3) {
                    zzguw zzguwVar = null;
                    if (i2 != 4) {
                        if (i2 != 5) {
                            return null;
                        }
                        return zzb;
                    }
                    return new zzgux(zzguwVar);
                }
                return new zzguy();
            }
            return zzgzu.zzaR(zzb, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002\n\u0003\f", new Object[]{new ObfuscatedString(new long[]{-2738480585128973969L, 4191219120315061669L}).toString(), new ObfuscatedString(new long[]{8228360224395780950L, 8036990862164216430L}).toString(), new ObfuscatedString(new long[]{3581588774787914222L, 4462428548204522785L}).toString()});
        }
        return (byte) 1;
    }

    public final zzgvz zzf() {
        zzgvz zzb2 = zzgvz.zzb(this.zzf);
        if (zzb2 == null) {
            return zzgvz.zzf;
        }
        return zzb2;
    }

    public final zzgyl zzg() {
        return this.zze;
    }

    public final String zzh() {
        return this.zzd;
    }
}
