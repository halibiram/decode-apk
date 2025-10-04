package com.google.android.gms.internal.ads;

import android.util.JsonReader;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzfgr {

    @Nullable
    public final String zza;

    @Nullable
    public final String zzb;
    public final JSONObject zzc;
    public final JSONObject zzd;

    public zzfgr(JsonReader jsonReader) {
        JSONObject zzh = com.google.android.gms.ads.internal.util.zzbw.zzh(jsonReader);
        this.zzd = zzh;
        this.zza = zzh.optString(new ObfuscatedString(new long[]{-5648215398423307103L, 5429550972662944433L}).toString(), null);
        this.zzb = zzh.optString(new ObfuscatedString(new long[]{-4938564493343431562L, -1130746743566099363L, 7109092715771617928L}).toString(), null);
        this.zzc = zzh.optJSONObject(new ObfuscatedString(new long[]{-7053465591366127862L, 6196508095500336279L}).toString());
    }
}
