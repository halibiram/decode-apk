package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzgsk extends zzgzu implements zzhbf {
    private static final zzgsk zzb;
    private int zzd;
    private int zze;
    private zzgsn zzf;

    static {
        zzgsk zzgskVar = new zzgsk();
        zzb = zzgskVar;
        zzgzu.zzaU(zzgsk.class, zzgskVar);
    }

    private zzgsk() {
    }

    public static zzgsj zzc() {
        return (zzgsj) zzb.zzaA();
    }

    public static zzgsk zze(zzgyl zzgylVar, zzgzf zzgzfVar) {
        return (zzgsk) zzgzu.zzaG(zzb, zzgylVar, zzgzfVar);
    }

    public static /* synthetic */ void zzh(zzgsk zzgskVar, zzgsn zzgsnVar) {
        zzgsnVar.getClass();
        zzgskVar.zzf = zzgsnVar;
        zzgskVar.zzd |= 1;
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
                    return new zzgsj(null);
                }
                return new zzgsk();
            }
            return zzgzu.zzaR(zzb, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000", new Object[]{new ObfuscatedString(new long[]{-5581415096879712857L, -1421174267209012315L}).toString(), new ObfuscatedString(new long[]{-8650509528078708338L, -6633873460198371705L}).toString(), new ObfuscatedString(new long[]{-355277865495096741L, -5081812712725445807L}).toString()});
        }
        return (byte) 1;
    }

    public final zzgsn zzf() {
        zzgsn zzgsnVar = this.zzf;
        if (zzgsnVar == null) {
            return zzgsn.zze();
        }
        return zzgsnVar;
    }
}
