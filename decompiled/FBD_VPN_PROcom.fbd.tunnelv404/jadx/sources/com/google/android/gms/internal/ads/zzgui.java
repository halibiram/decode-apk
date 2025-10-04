package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzgui extends zzgzu implements zzhbf {
    private static final zzgui zzb;
    private static volatile zzhbl zzd;
    private int zze;
    private int zzf;
    private zzguo zzg;
    private zzgyl zzh = zzgyl.zzb;

    static {
        zzgui zzguiVar = new zzgui();
        zzb = zzguiVar;
        zzgzu.zzaU(zzgui.class, zzguiVar);
    }

    private zzgui() {
    }

    public static zzguh zzc() {
        return (zzguh) zzb.zzaA();
    }

    public static zzgui zze() {
        return zzb;
    }

    public static zzgui zzf(zzgyl zzgylVar, zzgzf zzgzfVar) {
        return (zzgui) zzgzu.zzaG(zzb, zzgylVar, zzgzfVar);
    }

    public static zzhbl zzi() {
        return (zzhbl) zzb.zzb(7, null, null);
    }

    public static /* synthetic */ void zzj(zzgui zzguiVar, zzguo zzguoVar) {
        zzguoVar.getClass();
        zzguiVar.zzg = zzguoVar;
        zzguiVar.zze |= 1;
    }

    public final int zza() {
        return this.zzf;
    }

    @Override // com.google.android.gms.internal.ads.zzgzu
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 != 2) {
                if (i2 != 3) {
                    zzgug zzgugVar = null;
                    if (i2 != 4) {
                        if (i2 != 5) {
                            if (i2 != 6) {
                                return null;
                            }
                            zzhbl zzhblVar = zzd;
                            if (zzhblVar == null) {
                                synchronized (zzgui.class) {
                                    try {
                                        zzhblVar = zzd;
                                        if (zzhblVar == null) {
                                            zzhblVar = new zzgzq(zzb);
                                            zzd = zzhblVar;
                                        }
                                    } finally {
                                    }
                                }
                            }
                            return zzhblVar;
                        }
                        return zzb;
                    }
                    return new zzguh(zzgugVar);
                }
                return new zzgui();
            }
            return zzgzu.zzaR(zzb, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000\u0003\n", new Object[]{new ObfuscatedString(new long[]{-3537337518957555758L, -3012171508338942337L}).toString(), new ObfuscatedString(new long[]{106363512198507526L, 7020298789427234157L}).toString(), new ObfuscatedString(new long[]{3658281473069992517L, 8116112407626367557L}).toString(), new ObfuscatedString(new long[]{-6619907382760830780L, 6726425484012883214L}).toString()});
        }
        return (byte) 1;
    }

    public final zzguo zzg() {
        zzguo zzguoVar = this.zzg;
        if (zzguoVar == null) {
            return zzguo.zzf();
        }
        return zzguoVar;
    }

    public final zzgyl zzh() {
        return this.zzh;
    }
}
