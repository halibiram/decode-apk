package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzhen extends zzgzu implements zzhbf {
    private static final zzhen zzb;
    private int zzd;
    private zzgyl zze;
    private zzgyl zzf;
    private byte zzg = 2;

    static {
        zzhen zzhenVar = new zzhen();
        zzb = zzhenVar;
        zzgzu.zzaU(zzhen.class, zzhenVar);
    }

    private zzhen() {
        zzgyl zzgylVar = zzgyl.zzb;
        this.zze = zzgylVar;
        this.zzf = zzgylVar;
    }

    public static zzhem zza() {
        return (zzhem) zzb.zzaA();
    }

    public static /* synthetic */ zzhen zzc() {
        return zzb;
    }

    public static /* synthetic */ void zzd(zzhen zzhenVar, zzgyl zzgylVar) {
        zzhenVar.zzd |= 1;
        zzhenVar.zze = zzgylVar;
    }

    public static /* synthetic */ void zze(zzhen zzhenVar, zzgyl zzgylVar) {
        zzhenVar.zzd |= 2;
        zzhenVar.zzf = zzgylVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgzu
    public final Object zzb(int i, Object obj, Object obj2) {
        byte b = 1;
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 != 2) {
                if (i2 != 3) {
                    zzhdp zzhdpVar = null;
                    if (i2 != 4) {
                        if (i2 != 5) {
                            if (obj == null) {
                                b = 0;
                            }
                            this.zzg = b;
                            return null;
                        }
                        return zzb;
                    }
                    return new zzhem(zzhdpVar);
                }
                return new zzhen();
            }
            return zzgzu.zzaR(zzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0001\u0001ᔊ\u0000\u0002ည\u0001", new Object[]{new ObfuscatedString(new long[]{2790895801264860297L, -6848454512475242722L}).toString(), new ObfuscatedString(new long[]{-8060973061500054710L, -2390045918746293236L}).toString(), new ObfuscatedString(new long[]{9002075382512215498L, 3130563220355387430L}).toString()});
        }
        return Byte.valueOf(this.zzg);
    }
}
