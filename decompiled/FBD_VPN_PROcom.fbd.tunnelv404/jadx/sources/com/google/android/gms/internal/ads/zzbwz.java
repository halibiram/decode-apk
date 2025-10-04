package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzbwz {
    public final boolean zza;
    public final String zzb;

    public zzbwz(boolean z, String str) {
        this.zza = z;
        this.zzb = str;
    }

    @Nullable
    public static zzbwz zza(JSONObject jSONObject) {
        return new zzbwz(jSONObject.optBoolean(new ObfuscatedString(new long[]{8816747587573143109L, -1545747416455177494L, -7492474228484935563L, 1962733207163162234L}).toString(), false), jSONObject.optString(new ObfuscatedString(new long[]{5960251603658893383L, -4896086801848577925L, 7930462692195514450L}).toString(), new ObfuscatedString(new long[]{-7727293744011267165L}).toString()));
    }
}
