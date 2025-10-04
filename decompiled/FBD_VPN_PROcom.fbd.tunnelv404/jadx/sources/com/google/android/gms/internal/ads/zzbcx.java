package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzbcx extends zzgzu implements zzhbf {
    private static final zzbcx zzb;
    private int zzd;
    private zzben zzf;
    private int zzg;
    private zzbep zzh;
    private int zzi;
    private String zze = new ObfuscatedString(new long[]{-7121717037591903456L}).toString();
    private int zzj = 1000;
    private int zzk = 1000;
    private int zzl = 1000;

    static {
        zzbcx zzbcxVar = new zzbcx();
        zzb = zzbcxVar;
        zzgzu.zzaU(zzbcx.class, zzbcxVar);
    }

    private zzbcx() {
    }

    public static zzbcx zzc() {
        return zzb;
    }

    public static /* synthetic */ void zzd(zzbcx zzbcxVar, String str) {
        zzbcxVar.zzd |= 1;
        zzbcxVar.zze = str;
    }

    public static /* synthetic */ void zze(zzbcx zzbcxVar, zzbep zzbepVar) {
        zzbepVar.getClass();
        zzbcxVar.zzh = zzbepVar;
        zzbcxVar.zzd |= 8;
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
                    return new zzbcw(null);
                }
                return new zzbcx();
            }
            String obfuscatedString = new ObfuscatedString(new long[]{2432328583938012215L, 9179801286681285342L}).toString();
            String obfuscatedString2 = new ObfuscatedString(new long[]{-7514642107061241513L, 3583951670441858795L}).toString();
            String obfuscatedString3 = new ObfuscatedString(new long[]{-7029114899628374703L, -4666683110916747196L}).toString();
            String obfuscatedString4 = new ObfuscatedString(new long[]{-7667780908541755991L, 9093635629960394951L}).toString();
            String obfuscatedString5 = new ObfuscatedString(new long[]{806873499230414463L, -7075941770060867243L}).toString();
            String obfuscatedString6 = new ObfuscatedString(new long[]{-2962834298669266109L, 9180573673717784449L}).toString();
            String obfuscatedString7 = new ObfuscatedString(new long[]{4349837643899189731L, 3926900782811200005L}).toString();
            String obfuscatedString8 = new ObfuscatedString(new long[]{-7094423013361857076L, 2542717489217339183L}).toString();
            String obfuscatedString9 = new ObfuscatedString(new long[]{4503515026799514389L, 7681166825416581112L}).toString();
            zzgzy zzgzyVar = zzbdc.zza;
            return zzgzu.zzaR(zzb, "\u0001\b\u0000\u0001\u0001\b\b\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဉ\u0001\u0003င\u0002\u0004ဉ\u0003\u0005င\u0004\u0006᠌\u0005\u0007᠌\u0006\b᠌\u0007", new Object[]{obfuscatedString, obfuscatedString2, obfuscatedString3, obfuscatedString4, obfuscatedString5, obfuscatedString6, obfuscatedString7, zzgzyVar, obfuscatedString8, zzgzyVar, obfuscatedString9, zzgzyVar});
        }
        return (byte) 1;
    }
}
