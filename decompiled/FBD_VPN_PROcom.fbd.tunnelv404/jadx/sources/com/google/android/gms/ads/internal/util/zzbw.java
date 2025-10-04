package com.google.android.gms.ads.internal.util;

import android.os.Bundle;
import android.util.JsonReader;
import android.util.JsonToken;
import android.util.JsonWriter;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.internal.ads.zzcec;
import com.google.android.gms.internal.ads.zzfgr;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.io.IOException;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzbw {
    public static final zzbv zza = new zzbu();

    @Nullable
    public static Bundle zza(JSONObject jSONObject) {
        Bundle bundle;
        String str;
        if (jSONObject == null) {
            return null;
        }
        Iterator<String> keys = jSONObject.keys();
        Bundle bundle2 = new Bundle();
        while (keys.hasNext()) {
            String next = keys.next();
            Object opt = jSONObject.opt(next);
            if (opt != null) {
                if (opt instanceof Boolean) {
                    bundle2.putBoolean(next, ((Boolean) opt).booleanValue());
                } else if (opt instanceof Double) {
                    bundle2.putDouble(next, ((Double) opt).doubleValue());
                } else if (opt instanceof Integer) {
                    bundle2.putInt(next, ((Integer) opt).intValue());
                } else if (opt instanceof Long) {
                    bundle2.putLong(next, ((Long) opt).longValue());
                } else if (opt instanceof String) {
                    bundle2.putString(next, (String) opt);
                } else if (opt instanceof JSONArray) {
                    JSONArray jSONArray = (JSONArray) opt;
                    if (jSONArray.length() != 0) {
                        int length = jSONArray.length();
                        Object obj = null;
                        for (int i = 0; obj == null && i < length; i++) {
                            if (!jSONArray.isNull(i)) {
                                obj = jSONArray.opt(i);
                            } else {
                                obj = null;
                            }
                        }
                        if (obj == null) {
                            AbstractC0749x8313616e.m3347xe1f61061(new ObfuscatedString(new long[]{-3847048844039220128L, 5844993618653031229L, -3218093330936868082L, -7368232668585035053L, -181097862270960243L, 2027041639841435277L, 5378108441579909707L, -6557284357851566027L, 530484145345577738L}), String.valueOf(next));
                        } else if (obj instanceof JSONObject) {
                            Bundle[] bundleArr = new Bundle[length];
                            for (int i2 = 0; i2 < length; i2++) {
                                if (!jSONArray.isNull(i2)) {
                                    bundle = zza(jSONArray.optJSONObject(i2));
                                } else {
                                    bundle = null;
                                }
                                bundleArr[i2] = bundle;
                            }
                            bundle2.putParcelableArray(next, bundleArr);
                        } else if (obj instanceof Number) {
                            double[] dArr = new double[jSONArray.length()];
                            for (int i3 = 0; i3 < length; i3++) {
                                dArr[i3] = jSONArray.optDouble(i3);
                            }
                            bundle2.putDoubleArray(next, dArr);
                        } else if (obj instanceof CharSequence) {
                            String[] strArr = new String[length];
                            for (int i4 = 0; i4 < length; i4++) {
                                if (!jSONArray.isNull(i4)) {
                                    str = jSONArray.optString(i4);
                                } else {
                                    str = null;
                                }
                                strArr[i4] = str;
                            }
                            bundle2.putStringArray(next, strArr);
                        } else if (obj instanceof Boolean) {
                            boolean[] zArr = new boolean[length];
                            for (int i5 = 0; i5 < length; i5++) {
                                zArr[i5] = jSONArray.optBoolean(i5);
                            }
                            bundle2.putBooleanArray(next, zArr);
                        } else {
                            zzcec.zzj(String.format(new ObfuscatedString(new long[]{5444439409728151884L, 5378661218969931789L, -2188409526390626076L, -4803971999848118093L, 2194214828930606752L, 7783120409473302660L, -8798796033135191256L}).toString(), obj.getClass().getCanonicalName(), next));
                        }
                    }
                } else if (opt instanceof JSONObject) {
                    bundle2.putBundle(next, zza((JSONObject) opt));
                } else {
                    AbstractC0749x8313616e.m3347xe1f61061(new ObfuscatedString(new long[]{732665163583206684L, 1998508511528166508L, 3123217401013995107L, 3958537863251983023L, -4710613147692577574L}), String.valueOf(next));
                }
            }
        }
        return bundle2;
    }

    public static String zzb(String str, JSONObject jSONObject, String... strArr) {
        String obfuscatedString = new ObfuscatedString(new long[]{6130651233513374144L}).toString();
        JSONObject zzm = zzm(jSONObject, strArr);
        if (zzm == null) {
            return obfuscatedString;
        }
        return zzm.optString(strArr[0], obfuscatedString);
    }

    @NonNull
    public static List zzc(@Nullable JSONArray jSONArray, @Nullable List list) {
        if (list == null) {
            list = new ArrayList();
        }
        if (jSONArray != null) {
            for (int i = 0; i < jSONArray.length(); i++) {
                list.add(jSONArray.getString(i));
            }
        }
        return list;
    }

    public static List zzd(JsonReader jsonReader) {
        ArrayList arrayList = new ArrayList();
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            arrayList.add(jsonReader.nextString());
        }
        jsonReader.endArray();
        return arrayList;
    }

    public static JSONArray zze(JsonReader jsonReader) {
        JSONArray jSONArray = new JSONArray();
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            JsonToken peek = jsonReader.peek();
            if (JsonToken.BEGIN_ARRAY.equals(peek)) {
                jSONArray.put(zze(jsonReader));
            } else if (JsonToken.BEGIN_OBJECT.equals(peek)) {
                jSONArray.put(zzh(jsonReader));
            } else if (JsonToken.BOOLEAN.equals(peek)) {
                jSONArray.put(jsonReader.nextBoolean());
            } else if (JsonToken.NUMBER.equals(peek)) {
                jSONArray.put(jsonReader.nextDouble());
            } else if (JsonToken.STRING.equals(peek)) {
                jSONArray.put(jsonReader.nextString());
            } else {
                throw new IllegalStateException(new ObfuscatedString(new long[]{3805607440507670423L, -2454927865789487547L, -8894237223154377838L, 3796921491563832722L}).toString().concat(String.valueOf(peek)));
            }
        }
        jsonReader.endArray();
        return jSONArray;
    }

    public static JSONObject zzf(JSONObject jSONObject, String str) {
        try {
            return jSONObject.getJSONObject(str);
        } catch (JSONException unused) {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject.put(str, jSONObject2);
            return jSONObject2;
        }
    }

    @Nullable
    public static JSONObject zzg(JSONObject jSONObject, String... strArr) {
        JSONObject zzm = zzm(jSONObject, strArr);
        if (zzm == null) {
            return null;
        }
        return zzm.optJSONObject(strArr[1]);
    }

    public static JSONObject zzh(JsonReader jsonReader) {
        JSONObject jSONObject = new JSONObject();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            JsonToken peek = jsonReader.peek();
            if (JsonToken.BEGIN_ARRAY.equals(peek)) {
                jSONObject.put(nextName, zze(jsonReader));
            } else if (JsonToken.BEGIN_OBJECT.equals(peek)) {
                jSONObject.put(nextName, zzh(jsonReader));
            } else if (JsonToken.BOOLEAN.equals(peek)) {
                jSONObject.put(nextName, jsonReader.nextBoolean());
            } else if (JsonToken.NUMBER.equals(peek)) {
                jSONObject.put(nextName, jsonReader.nextDouble());
            } else if (JsonToken.STRING.equals(peek)) {
                jSONObject.put(nextName, jsonReader.nextString());
            } else {
                throw new IllegalStateException(new ObfuscatedString(new long[]{-2660048948731756806L, 2189446166422661812L, 3053492304179875633L, -3718307294342509699L}).toString().concat(String.valueOf(peek)));
            }
        }
        jsonReader.endObject();
        return jSONObject;
    }

    public static void zzi(JsonWriter jsonWriter, JSONArray jSONArray) {
        try {
            jsonWriter.beginArray();
            for (int i = 0; i < jSONArray.length(); i++) {
                Object obj = jSONArray.get(i);
                if (obj instanceof String) {
                    jsonWriter.value((String) obj);
                } else if (obj instanceof Number) {
                    jsonWriter.value((Number) obj);
                } else if (obj instanceof Boolean) {
                    jsonWriter.value(((Boolean) obj).booleanValue());
                } else if (obj instanceof JSONObject) {
                    zzj(jsonWriter, (JSONObject) obj);
                } else if (obj instanceof JSONArray) {
                    zzi(jsonWriter, (JSONArray) obj);
                } else {
                    throw new JSONException(new ObfuscatedString(new long[]{-8604775842683854768L, 8551970524000772579L, 7505899152890735498L, 5534325096121977922L}).toString() + String.valueOf(obj));
                }
            }
            jsonWriter.endArray();
        } catch (JSONException e) {
            throw new IOException(e);
        }
    }

    public static void zzj(JsonWriter jsonWriter, JSONObject jSONObject) {
        try {
            jsonWriter.beginObject();
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                Object obj = jSONObject.get(next);
                if (obj instanceof String) {
                    jsonWriter.name(next).value((String) obj);
                } else if (obj instanceof Number) {
                    jsonWriter.name(next).value((Number) obj);
                } else if (obj instanceof Boolean) {
                    jsonWriter.name(next).value(((Boolean) obj).booleanValue());
                } else if (obj instanceof JSONObject) {
                    zzj(jsonWriter.name(next), (JSONObject) obj);
                } else if (obj instanceof JSONArray) {
                    zzi(jsonWriter.name(next), (JSONArray) obj);
                } else {
                    throw new JSONException(new ObfuscatedString(new long[]{4914108584758426631L, 1464407018204684377L, 8037831007587690066L, 1380231167673188472L}).toString() + String.valueOf(obj));
                }
            }
            jsonWriter.endObject();
        } catch (JSONException e) {
            throw new IOException(e);
        }
    }

    public static boolean zzk(boolean z, JSONObject jSONObject, String... strArr) {
        JSONObject zzm = zzm(jSONObject, strArr);
        if (zzm == null) {
            return false;
        }
        return zzm.optBoolean(strArr[strArr.length - 1], false);
    }

    public static String zzl(zzfgr zzfgrVar) {
        if (zzfgrVar == null) {
            return null;
        }
        StringWriter stringWriter = new StringWriter();
        try {
            JsonWriter jsonWriter = new JsonWriter(stringWriter);
            zzn(jsonWriter, zzfgrVar);
            jsonWriter.close();
            return stringWriter.toString();
        } catch (IOException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{-2727350538355898619L, 5736596006415576639L, 3004380556874052122L, 6798776478829604014L}).toString(), e);
            return null;
        }
    }

    @Nullable
    private static JSONObject zzm(JSONObject jSONObject, String[] strArr) {
        for (int i = 0; i < strArr.length - 1; i++) {
            if (jSONObject == null) {
                return null;
            }
            jSONObject = jSONObject.optJSONObject(strArr[i]);
        }
        return jSONObject;
    }

    private static void zzn(JsonWriter jsonWriter, Object obj) {
        if (obj == null) {
            jsonWriter.nullValue();
            return;
        }
        if (obj instanceof Number) {
            jsonWriter.value((Number) obj);
            return;
        }
        if (obj instanceof Boolean) {
            jsonWriter.value(((Boolean) obj).booleanValue());
            return;
        }
        if (obj instanceof String) {
            jsonWriter.value((String) obj);
            return;
        }
        if (obj instanceof zzfgr) {
            zzj(jsonWriter, ((zzfgr) obj).zzd);
            return;
        }
        if (obj instanceof Map) {
            jsonWriter.beginObject();
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                Object key = entry.getKey();
                if (key instanceof String) {
                    zzn(jsonWriter.name((String) key), entry.getValue());
                }
            }
            jsonWriter.endObject();
            return;
        }
        if (obj instanceof List) {
            jsonWriter.beginArray();
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                zzn(jsonWriter, it.next());
            }
            jsonWriter.endArray();
            return;
        }
        jsonWriter.nullValue();
    }
}
