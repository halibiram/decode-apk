package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzeys implements zzexp {
    private final String zza;

    public zzeys(String str) {
        this.zza = str;
    }

    @Override // com.google.android.gms.internal.ads.zzexp
    public final /* bridge */ /* synthetic */ void zzj(Object obj) {
        try {
            ((JSONObject) obj).put(new ObfuscatedString(new long[]{475792837983780722L, -3909055407225095530L}).toString(), this.zza);
        } catch (JSONException e) {
            com.google.android.gms.ads.internal.util.zze.zzb(new ObfuscatedString(new long[]{-1186912675164858043L, 243423077404208160L, 6505335235633296354L, 2738458218090033203L}).toString(), e);
        }
    }
}
