package com.google.android.gms.ads.internal.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.google.android.gms.internal.ads.zzbgc;
import com.google.android.gms.internal.ads.zzcec;
import com.google.android.gms.internal.ads.zzfue;
import com.google.android.gms.internal.ads.zzfuf;
import com.google.android.gms.internal.ads.zzfwp;
import com.google.android.gms.internal.ads.zzfxr;
import com.panda912.muddy.ObfuscatedString;
import java.io.IOException;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzad {
    public static Bundle zza(Context context, String str, SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        if (TextUtils.isEmpty(str)) {
            return Bundle.EMPTY;
        }
        PreferenceManager.getDefaultSharedPreferences(context).registerOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener);
        return zzb(context, str);
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x0028  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002b  */
    @NonNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Bundle zzb(Context context, String str) {
        JSONArray jSONArray;
        int i;
        Object obj;
        SharedPreferences sharedPreferences;
        String str2;
        if (!TextUtils.isEmpty(str)) {
            try {
                jSONArray = new JSONArray(str);
            } catch (JSONException e) {
                zzcec.zzf(new ObfuscatedString(new long[]{-7505938195431617440L, 2963106914737340947L, -6121866057040811783L, 3095432845053579657L}).toString(), e);
            }
            if (jSONArray != null) {
                return Bundle.EMPTY;
            }
            Bundle bundle = new Bundle();
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                JSONObject optJSONObject = jSONArray.optJSONObject(i2);
                String optString = optJSONObject.optString(new ObfuscatedString(new long[]{8771388390298731290L, 1267725811406060270L}).toString());
                String optString2 = optJSONObject.optString(new ObfuscatedString(new long[]{-2548993825709664798L, 769733538039913819L}).toString());
                int optInt = optJSONObject.optInt(new ObfuscatedString(new long[]{1125718886702025579L, 6652922820991244606L}).toString(), -1);
                if (optInt != 0) {
                    if (optInt != 1) {
                        if (optInt != 2) {
                            i = 0;
                        } else {
                            i = 3;
                        }
                    } else {
                        i = 2;
                    }
                } else {
                    i = 1;
                }
                if (!TextUtils.isEmpty(optString) && !TextUtils.isEmpty(optString2) && i != 0) {
                    List zzf = zzfxr.zzc(zzfwp.zzc('/')).zzf(optString2);
                    if (zzf.size() > 2 || zzf.isEmpty()) {
                        obj = null;
                    } else {
                        if (zzf.size() == 1) {
                            sharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
                            str2 = (String) zzf.get(0);
                        } else {
                            sharedPreferences = context.getSharedPreferences((String) zzf.get(0), 0);
                            str2 = (String) zzf.get(1);
                        }
                        obj = sharedPreferences.getAll().get(str2);
                    }
                    if (obj != null) {
                        int i3 = i - 1;
                        if (i3 != 0) {
                            if (i3 != 1) {
                                if (obj instanceof Boolean) {
                                    bundle.putBoolean(optString, ((Boolean) obj).booleanValue());
                                }
                            } else if (obj instanceof Integer) {
                                bundle.putInt(optString, ((Integer) obj).intValue());
                            } else if (obj instanceof Long) {
                                bundle.putLong(optString, ((Long) obj).longValue());
                            } else if (obj instanceof Float) {
                                bundle.putFloat(optString, ((Float) obj).floatValue());
                            }
                        } else if (obj instanceof String) {
                            bundle.putString(optString, (String) obj);
                        }
                    }
                }
            }
            return bundle;
        }
        jSONArray = null;
        if (jSONArray != null) {
        }
    }

    public static void zzc(Context context) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzgj)).booleanValue() && context != null) {
            context.deleteDatabase(new ObfuscatedString(new long[]{5170176394302981798L, -3504686160724455673L, -2729216075930101351L}).toString());
        }
        try {
            zzfue zzj = zzfue.zzj(context);
            zzfuf zzi = zzfuf.zzi(context);
            zzj.zzk();
            zzj.zzl();
            zzi.zzj();
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzcP)).booleanValue()) {
                zzi.zzk();
            }
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzcQ)).booleanValue()) {
                zzi.zzl();
            }
        } catch (IOException e) {
            com.google.android.gms.ads.internal.zzt.zzo().zzw(e, new ObfuscatedString(new long[]{-6225007330219523818L, 3146767616086154096L, -2233085668063656472L, 4730653605188322325L}).toString());
        }
    }
}
