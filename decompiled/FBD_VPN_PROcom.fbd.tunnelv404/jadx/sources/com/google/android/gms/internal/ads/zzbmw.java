package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.panda912.muddy.ObfuscatedString;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;

/* loaded from: classes2.dex */
final class zzbmw implements zzbng {
    @Override // com.google.android.gms.internal.ads.zzbng
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        zzcjk zzcjkVar = (zzcjk) obj;
        try {
            JSONArray jSONArray = new JSONArray((String) map.get(new ObfuscatedString(new long[]{-6282370949446452458L, 6375889661009870552L}).toString()));
            SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(zzcjkVar.getContext()).edit();
            for (int i = 0; i < jSONArray.length(); i++) {
                edit.remove(jSONArray.getString(i));
            }
            edit.apply();
        } catch (JSONException e) {
            com.google.android.gms.ads.internal.zzt.zzo().zzw(e, new ObfuscatedString(new long[]{-7774002778204321414L, -9135295142514981028L, 7266188360714527589L, -4313841843710082088L, 1724045718551347802L, 8109780631034610397L}).toString());
        }
    }
}
