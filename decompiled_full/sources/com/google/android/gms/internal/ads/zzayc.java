package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzayc extends zzgzu implements zzhbf {
    private static final zzayc zzb;
    private int zzd;
    private zzayf zze;
    private zzgyl zzf;
    private zzgyl zzg;

    static {
        zzayc zzaycVar = new zzayc();
        zzb = zzaycVar;
        zzgzu.zzaU(zzayc.class, zzaycVar);
    }

    private zzayc() {
        zzgyl zzgylVar = zzgyl.zzb;
        this.zzf = zzgylVar;
        this.zzg = zzgylVar;
    }

    public static zzayc zzc(zzgyl zzgylVar, zzgzf zzgzfVar) {
        return (zzayc) zzgzu.zzaG(zzb, zzgylVar, zzgzfVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgzu
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 != 2) {
                if (i2 != 3) {
                    zzaya zzayaVar = null;
                    if (i2 != 4) {
                        if (i2 != 5) {
                            return null;
                        }
                        return zzb;
                    }
                    return new zzayb(zzayaVar);
                }
                return new zzayc();
            }
            return zzgzu.zzaR(zzb, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဉ\u0000\u0002ည\u0001\u0003ည\u0002", new Object[]{new ObfuscatedString(new long[]{9001301320907789647L, -3747557792785851332L}).toString(), new ObfuscatedString(new long[]{-5055827791103166965L, -4420691674959665886L}).toString(), new ObfuscatedString(new long[]{2435306617214260155L, -3432923178515892622L}).toString(), new ObfuscatedString(new long[]{5607672614026939674L, 4295750869149799122L}).toString()});
        }
        return (byte) 1;
    }

    public final zzayf zzd() {
        zzayf zzayfVar = this.zze;
        if (zzayfVar == null) {
            return zzayf.zzg();
        }
        return zzayfVar;
    }

    public final zzgyl zze() {
        return this.zzg;
    }

    public final zzgyl zzf() {
        return this.zzf;
    }
}
