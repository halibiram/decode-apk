package com.google.android.gms.ads.nonagon.signalgeneration;

import android.os.Bundle;
import android.util.JsonReader;
import com.panda912.muddy.ObfuscatedString;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zzam {
    public final String zza;
    public String zzb;
    public Bundle zzc = new Bundle();

    public zzam(JsonReader jsonReader) {
        char c;
        HashMap hashMap = new HashMap();
        jsonReader.beginObject();
        String obfuscatedString = new ObfuscatedString(new long[]{-8895014249293501549L}).toString();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName = nextName == null ? new ObfuscatedString(new long[]{3221270753214644650L}).toString() : nextName;
            int hashCode = nextName.hashCode();
            if (hashCode != -995427962) {
                if (hashCode == -271442291 && nextName.equals(new ObfuscatedString(new long[]{-3635765224870865349L, 8268917894971008086L, -4605561430085169485L, 6768859163931719248L}).toString())) {
                    c = 1;
                }
                c = 65535;
            } else {
                if (nextName.equals(new ObfuscatedString(new long[]{-3017509647442683002L, 4358508197198985327L}).toString())) {
                    c = 0;
                }
                c = 65535;
            }
            if (c != 0) {
                if (c != 1) {
                    jsonReader.skipValue();
                } else {
                    hashMap = new HashMap();
                    jsonReader.beginObject();
                    while (jsonReader.hasNext()) {
                        hashMap.put(jsonReader.nextName(), jsonReader.nextString());
                    }
                    jsonReader.endObject();
                }
            } else {
                obfuscatedString = jsonReader.nextString();
            }
        }
        this.zza = obfuscatedString;
        jsonReader.endObject();
        for (Map.Entry entry : hashMap.entrySet()) {
            if (entry.getKey() != null && entry.getValue() != null) {
                this.zzc.putString((String) entry.getKey(), (String) entry.getValue());
            }
        }
    }
}
