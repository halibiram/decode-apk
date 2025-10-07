package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzfhk {
    private final JSONObject zza;

    public zzfhk(JSONObject jSONObject) {
        this.zza = jSONObject;
    }

    @Nullable
    public final String zza() {
        if (zzb() - 1 != 1) {
            return new ObfuscatedString(new long[]{-9026588480301425020L, -8625943459033260269L, 993418127918641819L}).toString();
        }
        return null;
    }

    public final int zzb() {
        int optInt = this.zza.optInt(new ObfuscatedString(new long[]{-4041648179957790941L, 7387078318562270067L, 7763738412655044166L}).toString(), -1);
        if (optInt != 0) {
            if (optInt != 1) {
                return 3;
            }
            return 1;
        }
        return 2;
    }
}
