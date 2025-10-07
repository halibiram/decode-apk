package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.panda912.muddy.ObfuscatedString;
import javax.annotation.Nullable;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzetx implements zzexp {

    @Nullable
    private final JSONObject zza;

    @Nullable
    private final JSONObject zzb;

    public zzetx(@Nullable JSONObject jSONObject, @Nullable JSONObject jSONObject2) {
        this.zza = jSONObject;
        this.zzb = jSONObject2;
    }

    @Override // com.google.android.gms.internal.ads.zzexp
    public final /* bridge */ /* synthetic */ void zzj(Object obj) {
        JSONObject jSONObject = this.zza;
        Bundle bundle = (Bundle) obj;
        if (jSONObject != null) {
            bundle.putString(new ObfuscatedString(new long[]{-6002214294175882569L, -4627712049129584787L}).toString(), jSONObject.toString());
        }
        JSONObject jSONObject2 = this.zzb;
        if (jSONObject2 != null) {
            bundle.putString(new ObfuscatedString(new long[]{4720197054678928878L, 8469257903499015034L, 8392673576423375571L}).toString(), jSONObject2.toString());
        }
    }
}
