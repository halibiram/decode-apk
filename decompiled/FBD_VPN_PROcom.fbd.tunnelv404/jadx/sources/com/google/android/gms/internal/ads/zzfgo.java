package com.google.android.gms.internal.ads;

import android.util.JsonReader;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzfgo {
    private String zza;

    public zzfgo(JsonReader jsonReader) {
        char c;
        jsonReader.beginObject();
        String obfuscatedString = new ObfuscatedString(new long[]{670333081503343840L}).toString();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            int hashCode = nextName.hashCode();
            if (hashCode != -1724546052) {
                if (hashCode == 3059181 && nextName.equals(new ObfuscatedString(new long[]{-5208766239848405435L, 7462222436098629183L}).toString())) {
                    c = 0;
                }
                c = 65535;
            } else {
                if (nextName.equals(new ObfuscatedString(new long[]{-8932915218097194092L, 8641464463461250618L, -2544619127684051251L}).toString())) {
                    c = 1;
                }
                c = 65535;
            }
            if (c != 0) {
                if (c != 1) {
                    jsonReader.skipValue();
                } else {
                    obfuscatedString = jsonReader.nextString();
                }
            } else {
                jsonReader.nextInt();
            }
        }
        jsonReader.endObject();
        this.zza = obfuscatedString;
    }

    public final String zza() {
        return this.zza;
    }
}
