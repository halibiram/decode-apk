package com.google.android.gms.internal.ads;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public final class zzckr {
    private static final Pattern zza = Pattern.compile(new ObfuscatedString(new long[]{1498474961480932228L, 5344848455539218483L, -8810454104068613367L, 7379204233676283946L, -3450799737678899137L, -371665544312358097L, 1414866690223212888L, -8634679274861892103L, -1358902064694015880L, -2964863824728884516L, -9143062334089811427L}).toString(), 2);
    private static final Pattern zzb = Pattern.compile(new ObfuscatedString(new long[]{-4452138771353958587L, -5205014084760758221L, -2175145967940298939L, -5559030754141307387L, -7176755193481043245L, 3153020759893301208L, -7142896502958979638L, 2008284973130680871L, 5626980720488495710L}).toString(), 2);

    public static String zza(@NonNull String str, @Nullable String... strArr) {
        StringBuilder sb = new StringBuilder();
        Matcher matcher = zza.matcher(str);
        int i = 0;
        if (matcher.find()) {
            int end = matcher.end();
            sb.append(str.substring(0, end));
            while (i <= 0) {
                String str2 = strArr[i];
                if (str2 != null) {
                    sb.append(str2);
                }
                i++;
            }
            sb.append(str.substring(end));
        } else {
            if (!zzb.matcher(str).find()) {
                while (i <= 0) {
                    String str3 = strArr[i];
                    if (str3 != null) {
                        sb.append(str3);
                    }
                    i++;
                }
            }
            sb.append(str);
        }
        return sb.toString();
    }
}
