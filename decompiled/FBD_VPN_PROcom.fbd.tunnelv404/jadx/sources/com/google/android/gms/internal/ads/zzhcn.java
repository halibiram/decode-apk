package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
final class zzhcn {
    public static String zza(zzgyl zzgylVar) {
        StringBuilder sb = new StringBuilder(zzgylVar.zzd());
        for (int i = 0; i < zzgylVar.zzd(); i++) {
            byte zza = zzgylVar.zza(i);
            if (zza != 34) {
                if (zza != 39) {
                    if (zza != 92) {
                        switch (zza) {
                            case 7:
                                sb.append(new ObfuscatedString(new long[]{-9176477326383545767L, -8819339534377555476L}).toString());
                                break;
                            case 8:
                                sb.append(new ObfuscatedString(new long[]{-1575121930587039938L, 768706917862196839L}).toString());
                                break;
                            case 9:
                                sb.append(new ObfuscatedString(new long[]{-63380502958447890L, 5163461925241901509L}).toString());
                                break;
                            case 10:
                                sb.append(new ObfuscatedString(new long[]{-7154490498715158939L, -8654255412222366264L}).toString());
                                break;
                            case 11:
                                sb.append(new ObfuscatedString(new long[]{3675288075436526746L, -4853220196305737458L}).toString());
                                break;
                            case 12:
                                sb.append(new ObfuscatedString(new long[]{-8864096246411018009L, -6274743819501341553L}).toString());
                                break;
                            case 13:
                                sb.append(new ObfuscatedString(new long[]{5656188270661335135L, 4886892524380819759L}).toString());
                                break;
                            default:
                                if (zza >= 32 && zza <= 126) {
                                    sb.append((char) zza);
                                    break;
                                } else {
                                    sb.append('\\');
                                    sb.append((char) (((zza >>> 6) & 3) + 48));
                                    sb.append((char) (((zza >>> 3) & 7) + 48));
                                    sb.append((char) ((zza & 7) + 48));
                                    break;
                                }
                                break;
                        }
                    } else {
                        sb.append(new ObfuscatedString(new long[]{-767887798029535253L, 2594797722985783277L}).toString());
                    }
                } else {
                    sb.append(new ObfuscatedString(new long[]{-6192574654272392482L, -4365435919683885656L}).toString());
                }
            } else {
                sb.append(new ObfuscatedString(new long[]{-115374569354090898L, -2778046310835639851L}).toString());
            }
        }
        return sb.toString();
    }
}
