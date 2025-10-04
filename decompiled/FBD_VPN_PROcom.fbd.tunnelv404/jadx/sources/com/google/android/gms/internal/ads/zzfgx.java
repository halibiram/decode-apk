package com.google.android.gms.internal.ads;

import android.util.JsonReader;
import com.google.android.gms.common.util.IOUtils;
import com.panda912.muddy.ObfuscatedString;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzfgx {
    public final List zza;
    public final zzfgp zzb;
    public final List zzc;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6 */
    public zzfgx(JsonReader jsonReader) {
        ?? emptyList = Collections.emptyList();
        ArrayList arrayList = new ArrayList();
        jsonReader.beginObject();
        zzfgp zzfgpVar = null;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (new ObfuscatedString(new long[]{3689806263446414415L, -5245934578086474544L, 4494180508606379383L}).toString().equals(nextName)) {
                jsonReader.beginArray();
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    String nextName2 = jsonReader.nextName();
                    if (new ObfuscatedString(new long[]{-9188839285912019028L, 1387045650475200087L, 7257789472176956569L}).toString().equals(nextName2)) {
                        emptyList = new ArrayList();
                        jsonReader.beginArray();
                        while (jsonReader.hasNext()) {
                            emptyList.add(new zzfgm(jsonReader));
                        }
                        jsonReader.endArray();
                    } else if (nextName2.equals(new ObfuscatedString(new long[]{5539415930192757807L, -2743437122663087508L}).toString())) {
                        zzfgpVar = new zzfgp(jsonReader);
                    } else {
                        jsonReader.skipValue();
                    }
                }
                jsonReader.endObject();
                jsonReader.endArray();
            } else if (nextName.equals(new ObfuscatedString(new long[]{-7839790499264037456L, 2871062992933759299L}).toString())) {
                jsonReader.beginArray();
                while (jsonReader.hasNext()) {
                    jsonReader.beginObject();
                    String str = null;
                    JSONObject jSONObject = null;
                    while (jsonReader.hasNext()) {
                        String nextName3 = jsonReader.nextName();
                        if (new ObfuscatedString(new long[]{1676741147723376685L, -4609639370024915169L}).toString().equals(nextName3)) {
                            str = jsonReader.nextString();
                        } else if (new ObfuscatedString(new long[]{-7672049191957795833L, -755378362030980741L}).toString().equals(nextName3)) {
                            jSONObject = com.google.android.gms.ads.internal.util.zzbw.zzh(jsonReader);
                        } else {
                            jsonReader.skipValue();
                        }
                    }
                    if (str != null) {
                        arrayList.add(new zzfgw(str, jSONObject));
                    }
                    jsonReader.endObject();
                }
                jsonReader.endArray();
            }
        }
        this.zzc = arrayList;
        this.zza = emptyList;
        this.zzb = zzfgpVar == null ? new zzfgp(new JsonReader(new StringReader(new ObfuscatedString(new long[]{3642001232199136904L, -6820488405248456220L}).toString()))) : zzfgpVar;
    }

    public static zzfgx zza(Reader reader) {
        try {
            try {
                return new zzfgx(new JsonReader(reader));
            } finally {
                IOUtils.closeQuietly(reader);
            }
        } catch (IOException | AssertionError | IllegalStateException | NumberFormatException | JSONException e) {
            throw new zzfgq(new ObfuscatedString(new long[]{2647416424513156603L, 3395446999706530277L, 4472461271128294280L, 8907120580714740313L, -2518193068676377243L}).toString(), e);
        }
    }
}
