package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public final class zzhu {
    private static final Pattern zza = Pattern.compile(new ObfuscatedString(new long[]{4505277454370172664L, -5854901891699453164L, -8724902422668159608L, -6478510273286420697L, 5249940939423110257L}).toString());
    private static final Pattern zzb = Pattern.compile(new ObfuscatedString(new long[]{6123841012120602147L, -4954522015050754346L, 3926754829526957099L, -7477307134339409550L, -2449145979993552108L}).toString());

    public static long zza(@Nullable String str, @Nullable String str2) {
        long j = -1;
        if (!TextUtils.isEmpty(str)) {
            try {
                j = Long.parseLong(str);
            } catch (NumberFormatException unused) {
                StringBuilder sb = new StringBuilder();
                sb.append(new ObfuscatedString(new long[]{5781243002820029562L, -6549038598824184445L, 6483569905647611005L, 343425703414190683L, -8046915609936042309L}).toString());
                sb.append(str);
                zzff.zzc(new ObfuscatedString(new long[]{-2439004177058498531L, 4830233631588276049L}).toString(), AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{5037539573033375101L, -3043113192059802534L}), sb));
            }
        }
        if (!TextUtils.isEmpty(str2)) {
            Matcher matcher = zza.matcher(str2);
            if (matcher.matches()) {
                try {
                    String group = matcher.group(2);
                    if (group != null) {
                        long parseLong = Long.parseLong(group);
                        String group2 = matcher.group(1);
                        if (group2 != null) {
                            long parseLong2 = (parseLong - Long.parseLong(group2)) + 1;
                            if (j < 0) {
                                return parseLong2;
                            }
                            if (j != parseLong2) {
                                zzff.zzf(new ObfuscatedString(new long[]{-8663173523117329994L, 7086310077480367161L}).toString(), new ObfuscatedString(new long[]{2576706483570996107L, 6912397864218594879L, -2641610778112349457L, 9081048902510639029L}).toString() + str + new ObfuscatedString(new long[]{-4417415189550238375L, -7158977073908844718L}).toString() + str2 + new ObfuscatedString(new long[]{-26015407066826483L, 5567287460308569610L}).toString());
                                return Math.max(j, parseLong2);
                            }
                            return j;
                        }
                        throw null;
                    }
                    throw null;
                } catch (NumberFormatException unused2) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(new ObfuscatedString(new long[]{-1015697977798016534L, -6483695044534553392L, 859677882684361010L, -6767849548025087659L, 1528002542360669896L}).toString());
                    sb2.append(str2);
                    zzff.zzc(new ObfuscatedString(new long[]{-4985792057969387586L, 8028852008983580434L}).toString(), AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-1115786438685536897L, 3029792000174624452L}), sb2));
                    return j;
                }
            }
            return j;
        }
        return j;
    }

    public static long zzb(@Nullable String str) {
        if (!TextUtils.isEmpty(str)) {
            Matcher matcher = zzb.matcher(str);
            if (matcher.matches()) {
                String group = matcher.group(1);
                group.getClass();
                return Long.parseLong(group);
            }
            return -1L;
        }
        return -1L;
    }
}
