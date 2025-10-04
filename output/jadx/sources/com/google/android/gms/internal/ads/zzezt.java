package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.panda912.muddy.ObfuscatedString;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzezt implements zzexp {
    private final String zza;

    public zzezt(String str) {
        this.zza = str;
    }

    @Override // com.google.android.gms.internal.ads.zzexp
    public final /* bridge */ /* synthetic */ void zzj(Object obj) {
        try {
            JSONObject zzf = com.google.android.gms.ads.internal.util.zzbw.zzf((JSONObject) obj, new ObfuscatedString(new long[]{-196945258050383585L, 6787091214750620730L}).toString());
            if (!TextUtils.isEmpty(this.zza)) {
                zzf.put(new ObfuscatedString(new long[]{3714875198601429978L, -8685581948081247004L}).toString(), this.zza);
            }
        } catch (JSONException e) {
            com.google.android.gms.ads.internal.util.zze.zzb(new ObfuscatedString(new long[]{8357854203194210832L, -68690272053726371L, -6975248283408789373L, -2621060224151632625L, -3529851017603276683L, 2769027072126169654L}).toString(), e);
        }
    }
}
