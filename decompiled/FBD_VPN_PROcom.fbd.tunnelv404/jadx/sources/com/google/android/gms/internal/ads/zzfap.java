package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.panda912.muddy.ObfuscatedString;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzfap implements zzexp {
    private final Bundle zza;

    public zzfap(Bundle bundle) {
        this.zza = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzexp
    public final /* bridge */ /* synthetic */ void zzj(Object obj) {
        JSONObject jSONObject = (JSONObject) obj;
        if (this.zza != null) {
            try {
                com.google.android.gms.ads.internal.util.zzbw.zzf(com.google.android.gms.ads.internal.util.zzbw.zzf(jSONObject, new ObfuscatedString(new long[]{-6947881124094959535L, 8694888821959974230L}).toString()), new ObfuscatedString(new long[]{-6436330879707405874L, -1457950492617890956L, 6092272981107573258L}).toString()).put(new ObfuscatedString(new long[]{3436095953194562910L, 9189058690989544773L, 9129017098354700964L, 4511292679109711660L}).toString(), com.google.android.gms.ads.internal.client.zzay.zzb().zzh(this.zza));
            } catch (JSONException unused) {
                com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{547588408325117772L, -7990843201757830839L, -1417219388998471150L, 7023624285165322378L, -396083035580272578L, 9219140378223558030L}).toString());
            }
        }
    }
}
