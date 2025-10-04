package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzduh {
    public static String zza(JSONObject jSONObject, String str, String str2) {
        JSONArray optJSONArray;
        if (jSONObject != null && (optJSONArray = jSONObject.optJSONArray(str2)) != null) {
            for (int i = 0; i < optJSONArray.length(); i++) {
                JSONObject optJSONObject = optJSONArray.optJSONObject(i);
                if (optJSONObject != null) {
                    JSONArray optJSONArray2 = optJSONObject.optJSONArray(new ObfuscatedString(new long[]{2362018201595284984L, 2875166001544213727L, -7417063926544276105L}).toString());
                    JSONArray optJSONArray3 = optJSONObject.optJSONArray(new ObfuscatedString(new long[]{-1194466859262527296L, -5792814984591897528L, 1658847295590642932L}).toString());
                    if (zzb(optJSONArray2, str) && !zzb(optJSONArray3, str)) {
                        return optJSONObject.optString(new ObfuscatedString(new long[]{-2314700746453451781L, -764499346567203372L, -609552608273411455L, 1222664348741755243L}).toString(), new ObfuscatedString(new long[]{-7168679986487351736L}).toString());
                    }
                }
            }
        }
        return new ObfuscatedString(new long[]{6312328343585940741L}).toString();
    }

    private static boolean zzb(JSONArray jSONArray, String str) {
        Pattern compile;
        if (jSONArray != null && str != null) {
            for (int i = 0; i < jSONArray.length(); i++) {
                String optString = jSONArray.optString(i);
                try {
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzks)).booleanValue()) {
                        compile = Pattern.compile(optString, 2);
                    } else {
                        compile = Pattern.compile(optString);
                    }
                } catch (PatternSyntaxException e) {
                    com.google.android.gms.ads.internal.zzt.zzo().zzw(e, new ObfuscatedString(new long[]{5265822516440220609L, 7210952996241551864L, -8867486635857112705L, -4253944772833882341L, 4089039207946606589L, 5981043505175900098L}).toString());
                }
                if (compile.matcher(str).lookingAt()) {
                    return true;
                }
            }
        }
        return false;
    }
}
