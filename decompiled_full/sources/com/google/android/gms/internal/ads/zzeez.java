package com.google.android.gms.internal.ads;

import android.util.JsonReader;
import com.google.android.gms.common.util.IOUtils;
import com.panda912.muddy.ObfuscatedString;
import java.io.IOException;
import java.io.Reader;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zzeez {
    public int zza = 0;
    public Map zzb = new HashMap();
    public String zzc = new ObfuscatedString(new long[]{-3012810536330436954L}).toString();
    public long zzd = -1;

    public static zzeez zza(Reader reader) {
        int i = 0;
        try {
            try {
                JsonReader jsonReader = new JsonReader(reader);
                HashMap hashMap = new HashMap();
                String obfuscatedString = new ObfuscatedString(new long[]{5451254587623020407L}).toString();
                jsonReader.beginObject();
                long j = -1;
                while (jsonReader.hasNext()) {
                    String nextName = jsonReader.nextName();
                    if (new ObfuscatedString(new long[]{-7368106889277240462L, -7119556662859801284L}).toString().equals(nextName)) {
                        i = jsonReader.nextInt();
                    } else if (new ObfuscatedString(new long[]{-7428809659107931403L, -2545383267961191025L}).toString().equals(nextName)) {
                        obfuscatedString = jsonReader.nextString();
                    } else if (new ObfuscatedString(new long[]{351058498984548030L, -899363830073648565L}).toString().equals(nextName)) {
                        j = jsonReader.nextLong();
                    } else if (new ObfuscatedString(new long[]{-1863810469186039897L, -171461626317395810L}).toString().equals(nextName)) {
                        hashMap = new HashMap();
                        jsonReader.beginObject();
                        while (jsonReader.hasNext()) {
                            hashMap.put(jsonReader.nextName(), com.google.android.gms.ads.internal.util.zzbw.zzd(jsonReader));
                        }
                        jsonReader.endObject();
                    } else {
                        jsonReader.skipValue();
                    }
                }
                jsonReader.endObject();
                zzeez zzeezVar = new zzeez();
                zzeezVar.zza = i;
                if (obfuscatedString != null) {
                    zzeezVar.zzc = obfuscatedString;
                }
                zzeezVar.zzd = j;
                zzeezVar.zzb = hashMap;
                IOUtils.closeQuietly(reader);
                return zzeezVar;
            } catch (Throwable th) {
                IOUtils.closeQuietly(reader);
                throw th;
            }
        } catch (IOException e) {
            e = e;
            throw new zzfgq(new ObfuscatedString(new long[]{-4008970652571118497L, -1691167097378456219L, -6605306673948269758L, -2090030191230150520L}).toString(), e);
        } catch (AssertionError e2) {
            e = e2;
            throw new zzfgq(new ObfuscatedString(new long[]{-4008970652571118497L, -1691167097378456219L, -6605306673948269758L, -2090030191230150520L}).toString(), e);
        } catch (IllegalStateException e3) {
            e = e3;
            throw new zzfgq(new ObfuscatedString(new long[]{-4008970652571118497L, -1691167097378456219L, -6605306673948269758L, -2090030191230150520L}).toString(), e);
        } catch (NumberFormatException e4) {
            e = e4;
            throw new zzfgq(new ObfuscatedString(new long[]{-4008970652571118497L, -1691167097378456219L, -6605306673948269758L, -2090030191230150520L}).toString(), e);
        }
    }
}
