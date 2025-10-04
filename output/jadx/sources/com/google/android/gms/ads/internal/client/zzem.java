package com.google.android.gms.ads.internal.client;

import android.os.Bundle;
import android.text.TextUtils;
import com.panda912.muddy.ObfuscatedString;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzem {
    private final String zza;
    private final Bundle zzb;
    private final String zzc;

    public zzem(String str, Bundle bundle, String str2) {
        this.zza = str;
        this.zzb = bundle;
        this.zzc = str2;
    }

    public final Bundle zza() {
        return this.zzb;
    }

    public final String zzb() {
        return this.zza;
    }

    public final String zzc() {
        if (!TextUtils.isEmpty(this.zzc)) {
            try {
                return new JSONObject(this.zzc).optString(new ObfuscatedString(new long[]{-383687809940737765L, -1008474673473875153L, 2844024723027654201L}).toString(), new ObfuscatedString(new long[]{-5257786582980458765L}).toString());
            } catch (JSONException unused) {
                return new ObfuscatedString(new long[]{3399800839163252791L}).toString();
            }
        }
        return new ObfuscatedString(new long[]{3399800839163252791L}).toString();
    }
}
