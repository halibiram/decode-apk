package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzayf extends zzgzu implements zzhbf {
    private static final zzayf zzb;
    private int zzd;
    private String zze = new ObfuscatedString(new long[]{7252221306612198046L}).toString();
    private String zzf = new ObfuscatedString(new long[]{-1651210214985015401L}).toString();
    private long zzg;
    private long zzh;
    private long zzi;

    static {
        zzayf zzayfVar = new zzayf();
        zzb = zzayfVar;
        zzgzu.zzaU(zzayf.class, zzayfVar);
    }

    private zzayf() {
    }

    public static zzaye zze() {
        return (zzaye) zzb.zzaA();
    }

    public static zzayf zzg() {
        return zzb;
    }

    public static zzayf zzh(zzgyl zzgylVar) {
        return (zzayf) zzgzu.zzaE(zzb, zzgylVar);
    }

    public static zzayf zzi(zzgyl zzgylVar, zzgzf zzgzfVar) {
        return (zzayf) zzgzu.zzaG(zzb, zzgylVar, zzgzfVar);
    }

    public static /* synthetic */ void zzl(zzayf zzayfVar, String str) {
        str.getClass();
        zzayfVar.zzd |= 1;
        zzayfVar.zze = str;
    }

    public static /* synthetic */ void zzm(zzayf zzayfVar, long j) {
        zzayfVar.zzd |= 16;
        zzayfVar.zzi = j;
    }

    public static /* synthetic */ void zzn(zzayf zzayfVar, String str) {
        str.getClass();
        zzayfVar.zzd |= 2;
        zzayfVar.zzf = str;
    }

    public static /* synthetic */ void zzo(zzayf zzayfVar, long j) {
        zzayfVar.zzd |= 4;
        zzayfVar.zzg = j;
    }

    public static /* synthetic */ void zzp(zzayf zzayfVar, long j) {
        zzayfVar.zzd |= 8;
        zzayfVar.zzh = j;
    }

    public final long zza() {
        return this.zzh;
    }

    @Override // com.google.android.gms.internal.ads.zzgzu
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 != 2) {
                if (i2 != 3) {
                    zzayd zzaydVar = null;
                    if (i2 != 4) {
                        if (i2 != 5) {
                            return null;
                        }
                        return zzb;
                    }
                    return new zzaye(zzaydVar);
                }
                return new zzayf();
            }
            return zzgzu.zzaR(zzb, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဃ\u0002\u0004ဃ\u0003\u0005ဃ\u0004", new Object[]{new ObfuscatedString(new long[]{3699183827958331309L, 7227021223697061384L}).toString(), new ObfuscatedString(new long[]{-3352590627572436953L, 1685996488729798995L}).toString(), new ObfuscatedString(new long[]{4116449488655469150L, -3780167838207005455L}).toString(), new ObfuscatedString(new long[]{-8822798702119093235L, 1963569292847781047L}).toString(), new ObfuscatedString(new long[]{-6252625880423570731L, 8857056548533187957L}).toString(), new ObfuscatedString(new long[]{-8094288112350671168L, -7039577762020438354L}).toString()});
        }
        return (byte) 1;
    }

    public final long zzc() {
        return this.zzg;
    }

    public final long zzd() {
        return this.zzi;
    }

    public final String zzj() {
        return this.zzf;
    }

    public final String zzk() {
        return this.zze;
    }
}
