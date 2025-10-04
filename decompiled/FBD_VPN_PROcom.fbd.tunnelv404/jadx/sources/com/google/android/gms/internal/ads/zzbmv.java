package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.panda912.muddy.ObfuscatedString;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
final class zzbmv implements zzbng {
    @Override // com.google.android.gms.internal.ads.zzbng
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        zzcjk zzcjkVar = (zzcjk) obj;
        try {
            JSONObject jSONObject = new JSONObject((String) map.get(new ObfuscatedString(new long[]{5072596810607750203L, -7218824478689374141L}).toString()));
            Iterator<String> keys = jSONObject.keys();
            SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(zzcjkVar.getContext()).edit();
            while (keys.hasNext()) {
                String next = keys.next();
                Object obj2 = jSONObject.get(next);
                if (obj2 instanceof Integer) {
                    edit.putInt(next, ((Integer) obj2).intValue());
                } else if (obj2 instanceof Long) {
                    edit.putLong(next, ((Long) obj2).longValue());
                } else if (obj2 instanceof Double) {
                    edit.putFloat(next, ((Double) obj2).floatValue());
                } else if (obj2 instanceof Float) {
                    edit.putFloat(next, ((Float) obj2).floatValue());
                } else if (obj2 instanceof Boolean) {
                    edit.putBoolean(next, ((Boolean) obj2).booleanValue());
                } else if (obj2 instanceof String) {
                    edit.putString(next, (String) obj2);
                }
            }
            edit.apply();
        } catch (JSONException e) {
            com.google.android.gms.ads.internal.zzt.zzo().zzw(e, new ObfuscatedString(new long[]{-8098291222668959820L, -5989548367413512514L, 6301715814751573799L, -3156952105066799221L, -151446368147432880L, -4103643271600713534L, 235218394808801815L}).toString());
        }
    }
}
