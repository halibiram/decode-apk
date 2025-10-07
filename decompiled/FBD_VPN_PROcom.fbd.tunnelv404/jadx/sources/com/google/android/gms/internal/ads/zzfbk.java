package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzfbk implements zzexp {
    private final Map zza;

    public zzfbk(Map map) {
        this.zza = map;
    }

    @Override // com.google.android.gms.internal.ads.zzexp
    public final /* bridge */ /* synthetic */ void zzj(Object obj) {
        try {
            ((JSONObject) obj).put(new ObfuscatedString(new long[]{2927420945956469278L, 1382558335139074353L, -821774067536427343L}).toString(), com.google.android.gms.ads.internal.client.zzay.zzb().zzi(this.zza));
        } catch (JSONException e) {
            com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{-9213246754445355059L, -6160491989615588656L, 7218397169184812385L, 6145982163467185901L, 1379212043224627855L, -2562980663999375667L, 1565637574840862650L}).toString().concat(String.valueOf(e.getMessage())));
        }
    }
}
