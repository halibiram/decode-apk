package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzezx implements zzexp {
    private final JSONObject zza;

    public zzezx(JSONObject jSONObject) {
        this.zza = jSONObject;
    }

    @Override // com.google.android.gms.internal.ads.zzexp
    public final /* bridge */ /* synthetic */ void zzj(Object obj) {
        try {
            ((JSONObject) obj).put(new ObfuscatedString(new long[]{-5663809958026361920L, 7129843383956673117L, -975290404244265209L}).toString(), this.zza);
        } catch (JSONException unused) {
            com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{4247322484557126806L, -1097087603177904683L, 4864917364408644217L, 2413068415108972957L, -524918136302542192L}).toString());
        }
    }
}
