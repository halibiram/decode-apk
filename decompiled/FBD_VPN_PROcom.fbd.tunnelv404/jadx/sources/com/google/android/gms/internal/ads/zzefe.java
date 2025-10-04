package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.panda912.muddy.ObfuscatedString;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzefe {
    private final zzbzp zza;

    public zzefe(zzbzp zzbzpVar) {
        this.zza = zzbzpVar;
    }

    public static void zza(Map map, JSONObject jSONObject) {
        if (jSONObject != null) {
            JSONObject optJSONObject = jSONObject.optJSONObject(new ObfuscatedString(new long[]{3157674038954778423L, 911211484569920402L}).toString());
            if (optJSONObject != null) {
                if (!TextUtils.isEmpty(optJSONObject.optString(new ObfuscatedString(new long[]{6548748497893130814L, -7421887836125707663L}).toString(), new ObfuscatedString(new long[]{4677824857960950140L}).toString()))) {
                    map.put(new ObfuscatedString(new long[]{6405947132465925768L, -3717912249470529360L, -2571833710255631514L, 7974177056706328391L}).toString(), optJSONObject.optString(new ObfuscatedString(new long[]{489398175256993105L, 5936713368014504424L}).toString(), new ObfuscatedString(new long[]{-1103436726950357270L}).toString()));
                }
                if (!TextUtils.isEmpty(optJSONObject.optString(new ObfuscatedString(new long[]{4426359201692167865L, 7991270649422510280L, 8667503987103713790L}).toString(), new ObfuscatedString(new long[]{-7171566412282605533L}).toString()))) {
                    map.put(new ObfuscatedString(new long[]{4765389037335688468L, -3857035911458577382L, -1412875090110630087L, 7803923287948953594L}).toString(), optJSONObject.optString(new ObfuscatedString(new long[]{8681545837713784201L, 820055356064263711L, -2616203624385419567L}).toString(), new ObfuscatedString(new long[]{-8298034449021468120L}).toString()));
                    return;
                }
                return;
            }
            com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{983960298785332241L, -1737733205275919283L, -5686383243738631727L, 142072890188728814L, 8357257681870157687L}).toString());
        }
    }

    public final void zzb() {
        zzces.zza(this.zza.zza(), new ObfuscatedString(new long[]{8573122358491888102L, -2043771342337314409L, -8238287848773929326L}).toString());
    }
}
