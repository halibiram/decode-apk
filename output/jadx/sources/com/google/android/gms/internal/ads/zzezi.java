package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzezi implements zzexp {
    private final JSONObject zza;

    public zzezi(JSONObject jSONObject) {
        this.zza = jSONObject;
    }

    @Override // com.google.android.gms.internal.ads.zzexp
    public final /* bridge */ /* synthetic */ void zzj(Object obj) {
        try {
            JSONObject zzf = com.google.android.gms.ads.internal.util.zzbw.zzf((JSONObject) obj, new ObfuscatedString(new long[]{4408624886154395970L, 6881732668184905893L, 8674362725005071613L}).toString());
            JSONObject jSONObject = this.zza;
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                zzf.put(next, jSONObject.get(next));
            }
        } catch (JSONException unused) {
            com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{4994522479734438562L, 830386990849586372L, 719526106438509783L, -2096980626844978470L, 6563198143336640473L, -767230600361863291L}).toString());
        }
    }
}
