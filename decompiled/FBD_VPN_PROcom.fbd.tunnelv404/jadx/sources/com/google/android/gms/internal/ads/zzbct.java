package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzbct extends zzgzu implements zzhbf {
    private static final zzbct zzb;
    private int zzd;
    private String zze = new ObfuscatedString(new long[]{-5595638328537695782L}).toString();
    private zzhad zzf = zzgzu.zzaN();
    private int zzg = 1000;
    private int zzh = 1000;
    private int zzi = 1000;

    static {
        zzbct zzbctVar = new zzbct();
        zzb = zzbctVar;
        zzgzu.zzaU(zzbct.class, zzbctVar);
    }

    private zzbct() {
    }

    public static zzbct zzc() {
        return zzb;
    }

    public static /* synthetic */ void zzd(zzbct zzbctVar, String str) {
        str.getClass();
        zzbctVar.zzd |= 1;
        zzbctVar.zze = str;
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
                    return new zzbcs(null);
                }
                return new zzbct();
            }
            String obfuscatedString = new ObfuscatedString(new long[]{-1865653526371090833L, 1070867471075533374L}).toString();
            String obfuscatedString2 = new ObfuscatedString(new long[]{-93113542659373467L, -844856876902980919L}).toString();
            String obfuscatedString3 = new ObfuscatedString(new long[]{3309051385810216116L, 3377654489120753397L}).toString();
            String obfuscatedString4 = new ObfuscatedString(new long[]{-1708146724385696647L, -3498149420969215753L}).toString();
            String obfuscatedString5 = new ObfuscatedString(new long[]{-6567145144361870835L, -6747902757792757060L}).toString();
            String obfuscatedString6 = new ObfuscatedString(new long[]{-3220719060226098185L, 6476691523569681022L}).toString();
            zzgzy zzgzyVar = zzbdc.zza;
            return zzgzu.zzaR(zzb, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0000\u0001ဈ\u0000\u0002\u001b\u0003᠌\u0001\u0004᠌\u0002\u0005᠌\u0003", new Object[]{obfuscatedString, obfuscatedString2, obfuscatedString3, zzbcp.class, obfuscatedString4, zzgzyVar, obfuscatedString5, zzgzyVar, obfuscatedString6, zzgzyVar});
        }
        return (byte) 1;
    }
}
