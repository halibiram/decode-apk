package com.google.android.gms.internal.measurement;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
final class zzmj {
    public static String zza(zzjb zzjbVar) {
        StringBuilder sb = new StringBuilder(zzjbVar.zzd());
        for (int i = 0; i < zzjbVar.zzd(); i++) {
            byte zza = zzjbVar.zza(i);
            if (zza != 34) {
                if (zza != 39) {
                    if (zza != 92) {
                        switch (zza) {
                            case 7:
                                sb.append(new ObfuscatedString(new long[]{-2292271560017403444L, 1496655498212466581L}).toString());
                                break;
                            case 8:
                                sb.append(new ObfuscatedString(new long[]{-1933314575433334559L, 1306549000340351787L}).toString());
                                break;
                            case 9:
                                sb.append(new ObfuscatedString(new long[]{7433353454813166458L, 2472084376574313965L}).toString());
                                break;
                            case 10:
                                sb.append(new ObfuscatedString(new long[]{8316470730485138980L, -4574828013998091356L}).toString());
                                break;
                            case 11:
                                sb.append(new ObfuscatedString(new long[]{-7312729277885098136L, -4844958850763652857L}).toString());
                                break;
                            case 12:
                                sb.append(new ObfuscatedString(new long[]{3451390326684400089L, -7835988799949923916L}).toString());
                                break;
                            case 13:
                                sb.append(new ObfuscatedString(new long[]{159843190807202858L, -651663863395039728L}).toString());
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
                        sb.append(new ObfuscatedString(new long[]{2190178063932653074L, 8820677938658566562L}).toString());
                    }
                } else {
                    sb.append(new ObfuscatedString(new long[]{-4747672571341699932L, -3902645634204628546L}).toString());
                }
            } else {
                sb.append(new ObfuscatedString(new long[]{5435616096401086541L, -1908828655080482859L}).toString());
            }
        }
        return sb.toString();
    }
}
