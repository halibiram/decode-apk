package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.panda912.muddy.ObfuscatedString;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzfbg implements zzexp {
    private final String zza;

    public zzfbg(String str) {
        this.zza = str;
    }

    @Override // com.google.android.gms.internal.ads.zzexp
    public final /* bridge */ /* synthetic */ void zzj(Object obj) {
        JSONObject jSONObject = (JSONObject) obj;
        try {
            if (!TextUtils.isEmpty(this.zza)) {
                com.google.android.gms.ads.internal.util.zzbw.zzf(jSONObject, new ObfuscatedString(new long[]{8097939482130168353L, 1933117918443485700L}).toString()).put(new ObfuscatedString(new long[]{-7878053847486971206L, 8188956009318520405L}).toString(), this.zza);
            }
        } catch (JSONException e) {
            zzcec.zzk(new ObfuscatedString(new long[]{-4015268805562107276L, -2521703617076653973L, -829119599564123822L, -1771684848326732322L, -2679681802446948498L}).toString(), e);
        }
    }
}
