package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.view.WindowManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzfpo {
    private static WindowManager zzb;
    private static final String[] zzc = {new ObfuscatedString(new long[]{-4503050496783637259L, -1341435126481164857L}).toString(), new ObfuscatedString(new long[]{-4260867352678513399L, 9009212505843471602L}).toString(), new ObfuscatedString(new long[]{802052409214685462L, 8578036554003825384L}).toString(), new ObfuscatedString(new long[]{6273571203433253839L, -7277996911146390349L}).toString()};
    static float zza = Resources.getSystem().getDisplayMetrics().density;

    public static JSONObject zza(int i, int i2, int i3, int i4) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(new ObfuscatedString(new long[]{-3122526606413006597L, -3120410519544935661L}).toString(), i / zza);
            jSONObject.put(new ObfuscatedString(new long[]{-3854137207406182139L, -6113108202688295167L}).toString(), i2 / zza);
            jSONObject.put(new ObfuscatedString(new long[]{-3258036406025592550L, -5490885406170823533L}).toString(), i3 / zza);
            jSONObject.put(new ObfuscatedString(new long[]{-6577691034521412012L, -3783467214033297237L}).toString(), i4 / zza);
        } catch (JSONException e) {
            zzfpp.zza(new ObfuscatedString(new long[]{6931342827333126605L, 2363941011644234106L, 9120153495763063540L, -6844294746039039961L, 8346460458014317110L, 4734595814461360358L}).toString(), e);
        }
        return jSONObject;
    }

    public static void zzb(JSONObject jSONObject, String str) {
        try {
            jSONObject.put(new ObfuscatedString(new long[]{6044685815792790685L, 1822734780002227551L, 5710196851306838821L}).toString(), str);
        } catch (JSONException e) {
            zzfpp.zza(new ObfuscatedString(new long[]{8662498415611130717L, -8970781705830408153L, 8620297520577028577L, 4198468446236835317L, 3439654667595169599L}).toString(), e);
        }
    }

    public static void zzc(JSONObject jSONObject, JSONObject jSONObject2) {
        try {
            JSONArray optJSONArray = jSONObject.optJSONArray(new ObfuscatedString(new long[]{1468671412917300588L, 858243792454840699L, 3341690733556830121L}).toString());
            if (optJSONArray == null) {
                optJSONArray = new JSONArray();
                jSONObject.put(new ObfuscatedString(new long[]{4618149174897678862L, -6573746128887958524L, 2965607399239136319L}).toString(), optJSONArray);
            }
            optJSONArray.put(jSONObject2);
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    public static void zzd(Context context) {
        if (context != null) {
            zza = context.getResources().getDisplayMetrics().density;
            zzb = (WindowManager) context.getSystemService(new ObfuscatedString(new long[]{-3826546030355325285L, -4196483011060791141L}).toString());
        }
    }

    public static void zze(JSONObject jSONObject, String str, Object obj) {
        try {
            jSONObject.put(str, obj);
        } catch (NullPointerException | JSONException e) {
            zzfpp.zza(new ObfuscatedString(new long[]{6711921899489813642L, -32020893832341153L, 8054318860367103202L, 6932578874234199298L, 3760600228744286183L, 2550750346632090335L, -4388561070325596782L}).toString() + str + new ObfuscatedString(new long[]{-3668841257469438063L, -4845107423792253443L}).toString(), e);
        }
    }

    public static void zzf(JSONObject jSONObject) {
        float f;
        float f2;
        if (zzb != null) {
            Point point = new Point(0, 0);
            zzb.getDefaultDisplay().getRealSize(point);
            float f3 = point.x;
            float f4 = zza;
            f = f3 / f4;
            f2 = point.y / f4;
        } else {
            f = 0.0f;
            f2 = 0.0f;
        }
        try {
            jSONObject.put(new ObfuscatedString(new long[]{-2471182301512609141L, -4367436487263569516L}).toString(), f);
            jSONObject.put(new ObfuscatedString(new long[]{-642492829532538377L, 6221532604281830243L}).toString(), f2);
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    public static boolean zzg(@NonNull JSONObject jSONObject, @Nullable JSONObject jSONObject2) {
        if (jSONObject == null && jSONObject2 == null) {
            return true;
        }
        if (jSONObject != null && jSONObject2 != null) {
            String[] strArr = zzc;
            int i = 0;
            while (true) {
                if (i < 4) {
                    String str = strArr[i];
                    if (jSONObject.optDouble(str) != jSONObject2.optDouble(str)) {
                        break;
                    }
                    i++;
                } else if (jSONObject.optString(new ObfuscatedString(new long[]{-4555565347301871869L, 8192647148204562785L, 6886087504000113605L}).toString(), new ObfuscatedString(new long[]{8740885860054800455L}).toString()).equals(jSONObject2.optString(new ObfuscatedString(new long[]{7378469638656417240L, 1279535562106907100L, 3880628825889378160L}).toString(), new ObfuscatedString(new long[]{8613440626932154348L}).toString())) && Boolean.valueOf(jSONObject.optBoolean(new ObfuscatedString(new long[]{7310764224650920745L, 6419075432471746182L, -65083521126759138L}).toString())).equals(Boolean.valueOf(jSONObject2.optBoolean(new ObfuscatedString(new long[]{-4875636740260839694L, 3356644620794679906L, 2923272747844217857L}).toString()))) && Boolean.valueOf(jSONObject.optBoolean(new ObfuscatedString(new long[]{-2159512408883605066L, -6602651523621332592L, 6691534020634155236L}).toString())).equals(Boolean.valueOf(jSONObject2.optBoolean(new ObfuscatedString(new long[]{-5683553794142583904L, -8136879095201915807L, 255805301304931003L}).toString())))) {
                    JSONArray optJSONArray = jSONObject.optJSONArray(new ObfuscatedString(new long[]{3705412980120812767L, 7367223836357820830L, 3769569901550614838L, 9096825067131551617L}).toString());
                    JSONArray optJSONArray2 = jSONObject2.optJSONArray(new ObfuscatedString(new long[]{6247676753720813456L, -2555004285129430921L, -7145362212086695272L, -7715466643129603528L}).toString());
                    if (optJSONArray != null || optJSONArray2 != null) {
                        if (zzh(optJSONArray, optJSONArray2)) {
                            for (int i2 = 0; i2 < optJSONArray.length(); i2++) {
                                if (!optJSONArray.optString(i2, new ObfuscatedString(new long[]{530721555079300735L}).toString()).equals(optJSONArray2.optString(i2, new ObfuscatedString(new long[]{8786890278892323295L}).toString()))) {
                                    break;
                                }
                            }
                        }
                    }
                    JSONArray optJSONArray3 = jSONObject.optJSONArray(new ObfuscatedString(new long[]{-5831305002925600636L, 1957275507413697064L, -8111756172598083547L}).toString());
                    JSONArray optJSONArray4 = jSONObject2.optJSONArray(new ObfuscatedString(new long[]{7886095375438703268L, 4906909156687485342L, 1593502453404687876L}).toString());
                    if (optJSONArray3 != null || optJSONArray4 != null) {
                        if (zzh(optJSONArray3, optJSONArray4)) {
                            for (int i3 = 0; i3 < optJSONArray3.length(); i3++) {
                                if (zzg(optJSONArray3.optJSONObject(i3), optJSONArray4.optJSONObject(i3))) {
                                }
                            }
                        }
                    }
                    return true;
                }
            }
        }
        return false;
    }

    private static boolean zzh(JSONArray jSONArray, JSONArray jSONArray2) {
        if (jSONArray == null && jSONArray2 == null) {
            return true;
        }
        if (jSONArray != null && jSONArray2 != null && jSONArray.length() == jSONArray2.length()) {
            return true;
        }
        return false;
    }
}
