package com.google.android.gms.common.util;

import android.text.TextUtils;
import com.panda912.muddy.ObfuscatedString;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
final class zzc {
    private static final Pattern zza = Pattern.compile(new ObfuscatedString(new long[]{8751642950059942461L, 8969831147585107609L, -663604696539966676L, -5365239197890063526L}).toString());

    public static String zza(String str) {
        if (!TextUtils.isEmpty(str)) {
            Matcher matcher = zza.matcher(str);
            StringBuilder sb = null;
            int i = 0;
            while (matcher.find()) {
                if (sb == null) {
                    sb = new StringBuilder();
                }
                int start = matcher.start();
                int i2 = start;
                while (i2 >= 0 && str.charAt(i2) == '\\') {
                    i2--;
                }
                if ((start - i2) % 2 != 0) {
                    int parseInt = Integer.parseInt(matcher.group().substring(2), 16);
                    sb.append((CharSequence) str, i, matcher.start());
                    if (parseInt == 92) {
                        sb.append(new ObfuscatedString(new long[]{2122378469795978453L, -3992756027881169619L}).toString());
                    } else {
                        sb.append(Character.toChars(parseInt));
                    }
                    i = matcher.end();
                }
            }
            if (sb != null) {
                if (i < matcher.regionEnd()) {
                    sb.append((CharSequence) str, i, matcher.regionEnd());
                }
                return sb.toString();
            }
            return str;
        }
        return str;
    }
}
