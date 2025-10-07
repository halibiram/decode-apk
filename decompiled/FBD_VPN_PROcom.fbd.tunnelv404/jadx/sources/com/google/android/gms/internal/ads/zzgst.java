package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzgst extends zzgzu implements zzhbf {
    private static final zzgst zzb;
    private int zzd;
    private zzgsz zze;
    private zzgul zzf;

    static {
        zzgst zzgstVar = new zzgst();
        zzb = zzgstVar;
        zzgzu.zzaU(zzgst.class, zzgstVar);
    }

    private zzgst() {
    }

    public static zzgss zza() {
        return (zzgss) zzb.zzaA();
    }

    public static zzgst zzd(zzgyl zzgylVar, zzgzf zzgzfVar) {
        return (zzgst) zzgzu.zzaG(zzb, zzgylVar, zzgzfVar);
    }

    public static /* synthetic */ void zzg(zzgst zzgstVar, zzgsz zzgszVar) {
        zzgszVar.getClass();
        zzgstVar.zze = zzgszVar;
        zzgstVar.zzd |= 1;
    }

    public static /* synthetic */ void zzh(zzgst zzgstVar, zzgul zzgulVar) {
        zzgulVar.getClass();
        zzgstVar.zzf = zzgulVar;
        zzgstVar.zzd |= 2;
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
                    return new zzgss(null);
                }
                return new zzgst();
            }
            return zzgzu.zzaR(zzb, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဉ\u0001", new Object[]{new ObfuscatedString(new long[]{9144541329959512247L, 2464702822944695020L}).toString(), new ObfuscatedString(new long[]{-945573896509674981L, -1971413842074603497L}).toString(), new ObfuscatedString(new long[]{3854416677661534843L, -905896109274834091L}).toString()});
        }
        return (byte) 1;
    }

    public final zzgsz zze() {
        zzgsz zzgszVar = this.zze;
        if (zzgszVar == null) {
            return zzgsz.zze();
        }
        return zzgszVar;
    }

    public final zzgul zzf() {
        zzgul zzgulVar = this.zzf;
        if (zzgulVar == null) {
            return zzgul.zzf();
        }
        return zzgulVar;
    }
}
