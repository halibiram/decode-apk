package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.panda912.muddy.ObfuscatedString;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzezn implements zzexp {

    @Nullable
    @VisibleForTesting
    final String zza;

    @VisibleForTesting
    final int zzb;

    public zzezn(@Nullable String str, int i) {
        this.zza = str;
        this.zzb = i;
    }

    @Override // com.google.android.gms.internal.ads.zzexp
    public final /* bridge */ /* synthetic */ void zzj(Object obj) {
        JSONObject jSONObject = (JSONObject) obj;
        if (!TextUtils.isEmpty(this.zza) && this.zzb != -1) {
            try {
                JSONObject zzf = com.google.android.gms.ads.internal.util.zzbw.zzf(jSONObject, new ObfuscatedString(new long[]{293998947365220939L, -3612107799785667355L}).toString());
                zzf.put(new ObfuscatedString(new long[]{-7205896826542915132L, -9186194576015916364L}).toString(), this.zza);
                zzf.put(new ObfuscatedString(new long[]{3715989914539642155L, -1753743667897648507L}).toString(), this.zzb);
            } catch (JSONException e) {
                com.google.android.gms.ads.internal.util.zze.zzb(new ObfuscatedString(new long[]{7998495456605857908L, -6569029678115262500L, 9020374400531793239L, 3157697433105508919L, -3792460564385226039L, -2297909468831452292L}).toString(), e);
            }
        }
    }
}
