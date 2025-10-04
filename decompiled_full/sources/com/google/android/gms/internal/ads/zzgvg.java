package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.io.InputStream;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzgvg extends zzgzu implements zzhbf {
    private static final zzgvg zzb;
    private int zzd;
    private zzhad zze = zzgzu.zzaN();

    static {
        zzgvg zzgvgVar = new zzgvg();
        zzb = zzgvgVar;
        zzgzu.zzaU(zzgvg.class, zzgvgVar);
    }

    private zzgvg() {
    }

    public static zzgvd zzd() {
        return (zzgvd) zzb.zzaA();
    }

    public static zzgvg zzg(InputStream inputStream, zzgzf zzgzfVar) {
        return (zzgvg) zzgzu.zzaH(zzb, inputStream, zzgzfVar);
    }

    public static /* synthetic */ void zzj(zzgvg zzgvgVar, zzgvf zzgvfVar) {
        zzgvfVar.getClass();
        zzhad zzhadVar = zzgvgVar.zze;
        if (!zzhadVar.zzc()) {
            zzgvgVar.zze = zzgzu.zzaO(zzhadVar);
        }
        zzgvgVar.zze.add(zzgvfVar);
    }

    public final int zza() {
        return this.zze.size();
    }

    @Override // com.google.android.gms.internal.ads.zzgzu
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 != 2) {
                if (i2 != 3) {
                    zzgvc zzgvcVar = null;
                    if (i2 != 4) {
                        if (i2 != 5) {
                            return null;
                        }
                        return zzb;
                    }
                    return new zzgvd(zzgvcVar);
                }
                return new zzgvg();
            }
            return zzgzu.zzaR(zzb, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u000b\u0002\u001b", new Object[]{new ObfuscatedString(new long[]{-1273834121707694401L, -6139121120165215189L}).toString(), new ObfuscatedString(new long[]{5494813981334208690L, 629578767186714060L}).toString(), zzgvf.class});
        }
        return (byte) 1;
    }

    public final int zzc() {
        return this.zzd;
    }

    public final zzgvf zze(int i) {
        return (zzgvf) this.zze.get(i);
    }

    public final List zzh() {
        return this.zze;
    }
}
