package com.google.android.gms.ads;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class LoadAdError extends AdError {

    @Nullable
    private final ResponseInfo zza;

    public LoadAdError(int i, @NonNull String str, @NonNull String str2, @Nullable AdError adError, @Nullable ResponseInfo responseInfo) {
        super(i, str, str2, adError);
        this.zza = responseInfo;
    }

    @Nullable
    public ResponseInfo getResponseInfo() {
        return this.zza;
    }

    @Override // com.google.android.gms.ads.AdError
    @NonNull
    public String toString() {
        try {
            return zzb().toString(2);
        } catch (JSONException unused) {
            return new ObfuscatedString(new long[]{6335454995545330406L, -8206058750663553198L, 4434601957303105378L, -6673666868118234492L, -6175885325496371778L}).toString();
        }
    }

    @Override // com.google.android.gms.ads.AdError
    @NonNull
    public final JSONObject zzb() {
        JSONObject zzb = super.zzb();
        ResponseInfo responseInfo = getResponseInfo();
        if (responseInfo == null) {
            zzb.put(new ObfuscatedString(new long[]{-19710526041867036L, 7254371576100694206L, 1177405643935143540L}).toString(), new ObfuscatedString(new long[]{-75631415293219192L, 5111641954068818374L}).toString());
        } else {
            zzb.put(new ObfuscatedString(new long[]{-2040883609643346095L, -1725157359869642484L, 8770771727908670215L}).toString(), responseInfo.zzd());
        }
        return zzb;
    }
}
