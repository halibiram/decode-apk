package com.google.android.gms.internal.ads;

import android.util.JsonWriter;
import com.google.android.gms.common.util.Clock;
import com.panda912.muddy.ObfuscatedString;
import java.io.IOException;
import java.io.StringWriter;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzdwr {
    private final Clock zza;

    public zzdwr(Clock clock) {
        this.zza = clock;
    }

    public final void zza(List list, String str, String str2, Object... objArr) {
        String str3;
        if (!((Boolean) zzbid.zza.zze()).booleanValue()) {
            return;
        }
        long currentTimeMillis = this.zza.currentTimeMillis();
        StringWriter stringWriter = new StringWriter();
        JsonWriter jsonWriter = new JsonWriter(stringWriter);
        try {
            jsonWriter.beginObject();
            jsonWriter.name(new ObfuscatedString(new long[]{1018995543223121444L, 1383706831580880227L, 2965850635104294354L}).toString()).value(currentTimeMillis);
            jsonWriter.name(new ObfuscatedString(new long[]{3981014857922193002L, -1411509776839952222L}).toString()).value(str);
            jsonWriter.name(new ObfuscatedString(new long[]{-6789719538439746946L, -4978831632811265571L}).toString()).value(str2);
            jsonWriter.name(new ObfuscatedString(new long[]{-3823069931418921222L, 1041389427695923967L, -3089933320103127656L}).toString()).beginArray();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                jsonWriter.value(it.next().toString());
            }
            jsonWriter.endArray();
            jsonWriter.name(new ObfuscatedString(new long[]{629758887625721855L, 809524857573619468L}).toString()).beginArray();
            for (Object obj : objArr) {
                if (obj != null) {
                    str3 = obj.toString();
                } else {
                    str3 = null;
                }
                jsonWriter.value(str3);
            }
            jsonWriter.endArray();
            jsonWriter.endObject();
            jsonWriter.flush();
            jsonWriter.close();
        } catch (IOException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{-2921778539405039838L, 18427186313425624L, 1331560615425031219L}).toString(), e);
        }
        zzcec.zzi(new ObfuscatedString(new long[]{6115128322259426995L, 1619925749995794533L}).toString().concat(String.valueOf(stringWriter.toString())));
    }
}
