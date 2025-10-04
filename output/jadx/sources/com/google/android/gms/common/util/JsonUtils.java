package com.google.android.gms.common.util;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.panda912.muddy.ObfuscatedString;
import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@KeepForSdk
/* loaded from: classes2.dex */
public final class JsonUtils {
    private static final Pattern zza = Pattern.compile(new ObfuscatedString(new long[]{-8840568123821032553L, -993531274646599469L}).toString());
    private static final Pattern zzb = Pattern.compile(new ObfuscatedString(new long[]{-891515737657743758L, -5416665092663692313L, 4917866723892874368L}).toString());

    private JsonUtils() {
    }

    @KeepForSdk
    public static boolean areJsonValuesEquivalent(@Nullable Object obj, @Nullable Object obj2) {
        if (obj == null && obj2 == null) {
            return true;
        }
        if (obj == null || obj2 == null) {
            return false;
        }
        if ((obj instanceof JSONObject) && (obj2 instanceof JSONObject)) {
            JSONObject jSONObject = (JSONObject) obj;
            JSONObject jSONObject2 = (JSONObject) obj2;
            if (jSONObject.length() != jSONObject2.length()) {
                return false;
            }
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                if (!jSONObject2.has(next)) {
                    return false;
                }
                try {
                    Preconditions.checkNotNull(next);
                } catch (JSONException unused) {
                }
                if (!areJsonValuesEquivalent(jSONObject.get(next), jSONObject2.get(next))) {
                    return false;
                }
            }
            return true;
        }
        if ((obj instanceof JSONArray) && (obj2 instanceof JSONArray)) {
            JSONArray jSONArray = (JSONArray) obj;
            JSONArray jSONArray2 = (JSONArray) obj2;
            if (jSONArray.length() != jSONArray2.length()) {
                return false;
            }
            for (int i = 0; i < jSONArray.length(); i++) {
                if (!areJsonValuesEquivalent(jSONArray.get(i), jSONArray2.get(i))) {
                    return false;
                }
            }
            return true;
        }
        return obj.equals(obj2);
    }

    @Nullable
    @KeepForSdk
    public static String escapeString(@Nullable String str) {
        if (!TextUtils.isEmpty(str)) {
            Matcher matcher = zzb.matcher(str);
            StringBuffer stringBuffer = null;
            while (matcher.find()) {
                if (stringBuffer == null) {
                    stringBuffer = new StringBuffer();
                }
                char charAt = matcher.group().charAt(0);
                if (charAt != '\f') {
                    if (charAt != '\r') {
                        if (charAt != '\"') {
                            if (charAt != '/') {
                                if (charAt != '\\') {
                                    switch (charAt) {
                                        case '\b':
                                            matcher.appendReplacement(stringBuffer, new ObfuscatedString(new long[]{-8580412393456017839L, 6192535825380637760L}).toString());
                                            break;
                                        case '\t':
                                            matcher.appendReplacement(stringBuffer, new ObfuscatedString(new long[]{-4513769582698203885L, -2830886953185409772L}).toString());
                                            break;
                                        case '\n':
                                            matcher.appendReplacement(stringBuffer, new ObfuscatedString(new long[]{6882394165606023902L, -4858879765008077979L}).toString());
                                            break;
                                    }
                                } else {
                                    matcher.appendReplacement(stringBuffer, new ObfuscatedString(new long[]{-6763663201587037719L, 7049327772992080858L}).toString());
                                }
                            } else {
                                matcher.appendReplacement(stringBuffer, new ObfuscatedString(new long[]{-4581913606418971266L, -6296491229322323667L}).toString());
                            }
                        } else {
                            matcher.appendReplacement(stringBuffer, new ObfuscatedString(new long[]{7945050796106459275L, -4897168498906122917L}).toString());
                        }
                    } else {
                        matcher.appendReplacement(stringBuffer, new ObfuscatedString(new long[]{-8913803642897023204L, -4859922405371370905L}).toString());
                    }
                } else {
                    matcher.appendReplacement(stringBuffer, new ObfuscatedString(new long[]{4083172723272538102L, -3639125717601218625L}).toString());
                }
            }
            if (stringBuffer != null) {
                matcher.appendTail(stringBuffer);
                return stringBuffer.toString();
            }
            return str;
        }
        return str;
    }

    @NonNull
    @KeepForSdk
    public static String unescapeString(@NonNull String str) {
        if (!TextUtils.isEmpty(str)) {
            String zza2 = zzc.zza(str);
            Matcher matcher = zza.matcher(zza2);
            StringBuffer stringBuffer = null;
            while (matcher.find()) {
                if (stringBuffer == null) {
                    stringBuffer = new StringBuffer();
                }
                char charAt = matcher.group().charAt(1);
                if (charAt != '\"') {
                    if (charAt != '/') {
                        if (charAt != '\\') {
                            if (charAt != 'b') {
                                if (charAt != 'f') {
                                    if (charAt != 'n') {
                                        if (charAt != 'r') {
                                            if (charAt == 't') {
                                                matcher.appendReplacement(stringBuffer, new ObfuscatedString(new long[]{-8873181843715683647L, 5483289677581170535L}).toString());
                                            } else {
                                                throw new IllegalStateException(new ObfuscatedString(new long[]{8301427116071873631L, 5249417010944604332L, -6235936163252546020L, 8928271881411522229L, -6848753818052376500L, -3297314892989925683L, 6764984537140584678L}).toString());
                                            }
                                        } else {
                                            matcher.appendReplacement(stringBuffer, new ObfuscatedString(new long[]{-5164163595975759246L, -7763684439845467587L}).toString());
                                        }
                                    } else {
                                        matcher.appendReplacement(stringBuffer, new ObfuscatedString(new long[]{-197185940343637558L, 5753163433772753024L}).toString());
                                    }
                                } else {
                                    matcher.appendReplacement(stringBuffer, new ObfuscatedString(new long[]{8973762891008557537L, 7770494128496481718L}).toString());
                                }
                            } else {
                                matcher.appendReplacement(stringBuffer, new ObfuscatedString(new long[]{-5748945676602180794L, 1439856723251641284L}).toString());
                            }
                        } else {
                            matcher.appendReplacement(stringBuffer, new ObfuscatedString(new long[]{3992057763686837741L, -812130893978908367L}).toString());
                        }
                    } else {
                        matcher.appendReplacement(stringBuffer, new ObfuscatedString(new long[]{-936202758221003068L, 8336880452112011988L}).toString());
                    }
                } else {
                    matcher.appendReplacement(stringBuffer, new ObfuscatedString(new long[]{-7208911102663465569L, 6144575497292873891L}).toString());
                }
            }
            if (stringBuffer == null) {
                return zza2;
            }
            matcher.appendTail(stringBuffer);
            return stringBuffer.toString();
        }
        return str;
    }
}
