package com.google.android.gms.internal.ads;

import android.util.JsonReader;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzfgn {
    public final int zza;
    public final int zzb;
    public final boolean zzc;

    public zzfgn(int i, int i2, boolean z) {
        this.zza = i;
        this.zzb = i2;
        this.zzc = z;
    }

    public static List zza(JsonReader jsonReader) {
        ArrayList arrayList = new ArrayList();
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            jsonReader.beginObject();
            int i = 0;
            int i2 = 0;
            boolean z = false;
            while (jsonReader.hasNext()) {
                String nextName = jsonReader.nextName();
                if (new ObfuscatedString(new long[]{-2318757880194719934L, -8467449677433612023L}).toString().equals(nextName)) {
                    i = jsonReader.nextInt();
                } else if (new ObfuscatedString(new long[]{-7969282685856279614L, -919512269485138472L}).toString().equals(nextName)) {
                    i2 = jsonReader.nextInt();
                } else if (new ObfuscatedString(new long[]{8890955251596957573L, -6494022636498082514L, 5242963595995294070L}).toString().equals(nextName)) {
                    z = jsonReader.nextBoolean();
                } else {
                    jsonReader.skipValue();
                }
            }
            jsonReader.endObject();
            arrayList.add(new zzfgn(i, i2, z));
        }
        jsonReader.endArray();
        return arrayList;
    }
}
