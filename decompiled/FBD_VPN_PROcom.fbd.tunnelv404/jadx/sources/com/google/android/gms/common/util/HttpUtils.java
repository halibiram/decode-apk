package com.google.android.gms.common.util;

import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.internal.common.zzo;
import com.google.android.gms.internal.common.zzx;
import com.panda912.muddy.ObfuscatedString;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URLDecoder;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import kotlin.text.Typography;

@KeepForSdk
/* loaded from: classes2.dex */
public class HttpUtils {
    private static final Pattern zza = Pattern.compile(new ObfuscatedString(new long[]{6669249759319089096L, -6240757632865781683L, 4369782539909929659L, 7214445861323684489L, -2117493403892588871L, 4535150036645278760L, 2823538517448917452L, -4119310691610358145L, 5345011397517924888L, -7473817045245592942L}).toString());
    private static final Pattern zzb = Pattern.compile(new ObfuscatedString(new long[]{4795906828782480978L, -3271239126571254153L, 2076481729047026149L, -7242023433001200037L, -3190393801295080240L, 4688933331090887364L, -5948560044134743154L}).toString());
    private static final Pattern zzc = Pattern.compile(new ObfuscatedString(new long[]{3770477658360805302L, -6666258281120044006L, -2482459528365639965L, -6193316302180770963L, -1687106063029743735L, -4595700812082362024L, 6111479246263945677L, -2240392279355507769L, -7768396829720200689L, 124187523693762555L, -5392949253502420352L, 409967246835604904L, -7837164939789362087L}).toString());

    private HttpUtils() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.Map<java.lang.String, java.lang.String>] */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.HashMap] */
    @NonNull
    @KeepForSdk
    public static Map<String, String> parse(@NonNull URI uri, @NonNull String str) {
        String str2;
        ?? emptyMap = Collections.emptyMap();
        String rawQuery = uri.getRawQuery();
        if (rawQuery != null && rawQuery.length() > 0) {
            emptyMap = new HashMap();
            zzx zzc2 = zzx.zzc(zzo.zzb('='));
            Iterator it = zzx.zzc(zzo.zzb(Typography.amp)).zzb().zzd(rawQuery).iterator();
            while (it.hasNext()) {
                List zzf = zzc2.zzf((String) it.next());
                if (!zzf.isEmpty() && zzf.size() <= 2) {
                    String zza2 = zza((String) zzf.get(0), str);
                    if (zzf.size() == 2) {
                        str2 = zza((String) zzf.get(1), str);
                    } else {
                        str2 = null;
                    }
                    emptyMap.put(zza2, str2);
                } else {
                    throw new IllegalArgumentException(new ObfuscatedString(new long[]{4885530363559641262L, 9003190834715366120L, 5188740744808878069L}).toString());
                }
            }
        }
        return emptyMap;
    }

    private static String zza(String str, String str2) {
        if (str2 == null) {
            try {
                str2 = new ObfuscatedString(new long[]{4518713042015937093L, -5863375237928913708L, -5279676701906780866L}).toString();
            } catch (UnsupportedEncodingException e) {
                throw new IllegalArgumentException(e);
            }
        }
        return URLDecoder.decode(str, str2);
    }
}
