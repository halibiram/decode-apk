package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzbcb extends zzgzu implements zzhbf {
    private static final zzbcb zzb;
    private int zzd;
    private int zze;
    private zzbcr zzg;
    private zzbct zzh;
    private zzbcv zzj;
    private zzbef zzk;
    private zzbdv zzl;
    private zzbdj zzm;
    private zzbdl zzn;
    private int zzf = 1000;
    private zzhad zzi = zzgzu.zzaN();
    private zzhad zzo = zzgzu.zzaN();

    static {
        zzbcb zzbcbVar = new zzbcb();
        zzb = zzbcbVar;
        zzgzu.zzaU(zzbcb.class, zzbcbVar);
    }

    private zzbcb() {
    }

    public static zzbcb zzc() {
        return zzb;
    }

    public static /* synthetic */ void zze(zzbcb zzbcbVar, zzbbz zzbbzVar) {
        zzbcbVar.zze = zzbbzVar.zza();
        zzbcbVar.zzd |= 1;
    }

    public static /* synthetic */ void zzf(zzbcb zzbcbVar, zzbct zzbctVar) {
        zzbctVar.getClass();
        zzbcbVar.zzh = zzbctVar;
        zzbcbVar.zzd |= 8;
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
                    return new zzbca(null);
                }
                return new zzbcb();
            }
            return zzgzu.zzaR(zzb, "\u0001\u000b\u0000\u0001\u0007\u0011\u000b\u0000\u0002\u0000\u0007᠌\u0000\b᠌\u0001\tဉ\u0002\nဉ\u0003\u000b\u001b\fဉ\u0004\rဉ\u0005\u000eဉ\u0006\u000fဉ\u0007\u0010ဉ\b\u0011\u001b", new Object[]{new ObfuscatedString(new long[]{-8050093398755651252L, 300298332454909048L}).toString(), new ObfuscatedString(new long[]{-8479330386184848642L, 2776778378376887985L}).toString(), zzbby.zza, new ObfuscatedString(new long[]{-3053832939465430923L, -4299680575331459858L}).toString(), zzbdc.zza, new ObfuscatedString(new long[]{-2782690741029469803L, 3898248039548732029L}).toString(), new ObfuscatedString(new long[]{-3416408340361925630L, 4682469109723881L}).toString(), new ObfuscatedString(new long[]{3969233009541864409L, -53269932015668779L}).toString(), zzbcp.class, new ObfuscatedString(new long[]{7754589711905364354L, -2174509355763614893L}).toString(), new ObfuscatedString(new long[]{5590133817437617098L, -3761219944803125915L}).toString(), new ObfuscatedString(new long[]{2018009785477091205L, 4186307574681080439L}).toString(), new ObfuscatedString(new long[]{2757991713705965903L, 6585969909832695820L}).toString(), new ObfuscatedString(new long[]{-8594186548449772766L, 1999127205932738682L}).toString(), new ObfuscatedString(new long[]{-6339338858816593659L, 758489918759389719L}).toString(), zzber.class});
        }
        return (byte) 1;
    }

    public final zzbct zzd() {
        zzbct zzbctVar = this.zzh;
        if (zzbctVar == null) {
            return zzbct.zzc();
        }
        return zzbctVar;
    }
}
