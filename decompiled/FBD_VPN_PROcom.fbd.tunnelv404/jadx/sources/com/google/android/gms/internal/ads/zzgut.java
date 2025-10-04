package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzgut extends zzgzu implements zzhbf {
    private static final zzgut zzb;
    private String zzd = new ObfuscatedString(new long[]{8890689777638533000L}).toString();
    private zzgyl zze = zzgyl.zzb;
    private int zzf;

    static {
        zzgut zzgutVar = new zzgut();
        zzb = zzgutVar;
        zzgzu.zzaU(zzgut.class, zzgutVar);
    }

    private zzgut() {
    }

    public static zzguq zza() {
        return (zzguq) zzb.zzaA();
    }

    public static zzgut zze() {
        return zzb;
    }

    public static /* synthetic */ void zzh(zzgut zzgutVar, String str) {
        str.getClass();
        zzgutVar.zzd = str;
    }

    public static /* synthetic */ void zzi(zzgut zzgutVar, zzgyl zzgylVar) {
        zzgylVar.getClass();
        zzgutVar.zze = zzgylVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgzu
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 != 2) {
                if (i2 != 3) {
                    zzgup zzgupVar = null;
                    if (i2 != 4) {
                        if (i2 != 5) {
                            return null;
                        }
                        return zzb;
                    }
                    return new zzguq(zzgupVar);
                }
                return new zzgut();
            }
            return zzgzu.zzaR(zzb, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002\n\u0003\f", new Object[]{new ObfuscatedString(new long[]{6144966715380977891L, -4986136199021007744L}).toString(), new ObfuscatedString(new long[]{8972698820710085177L, 1161902953302413422L}).toString(), new ObfuscatedString(new long[]{3750448300658940678L, 3083496300578707289L}).toString()});
        }
        return (byte) 1;
    }

    public final zzgus zzc() {
        zzgus zzgusVar;
        int i = this.zzf;
        zzgus zzgusVar2 = zzgus.zza;
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i != 4) {
                            zzgusVar = null;
                        } else {
                            zzgusVar = zzgus.zze;
                        }
                    } else {
                        zzgusVar = zzgus.zzd;
                    }
                } else {
                    zzgusVar = zzgus.zzc;
                }
            } else {
                zzgusVar = zzgus.zzb;
            }
        } else {
            zzgusVar = zzgus.zza;
        }
        if (zzgusVar == null) {
            return zzgus.zzf;
        }
        return zzgusVar;
    }

    public final zzgyl zzf() {
        return this.zze;
    }

    public final String zzg() {
        return this.zzd;
    }
}
