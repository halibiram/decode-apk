package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzfaf implements zzexp {
    private final String zza;
    private final String zzb;

    public zzfaf(String str, String str2) {
        this.zza = str;
        this.zzb = str2;
    }

    @Override // com.google.android.gms.internal.ads.zzexp
    public final /* bridge */ /* synthetic */ void zzj(Object obj) {
        try {
            JSONObject zzf = com.google.android.gms.ads.internal.util.zzbw.zzf((JSONObject) obj, new ObfuscatedString(new long[]{4227840518886231074L, 6513936527923921795L}).toString());
            zzf.put(new ObfuscatedString(new long[]{-1721923126824634459L, 8342413071412275137L}).toString(), this.zza);
            zzf.put(new ObfuscatedString(new long[]{-6745974766533261963L, -2314278349463859752L, -6525186476321733668L}).toString(), this.zzb);
        } catch (JSONException unused) {
            com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{-926309909387383741L, -2488812942549789916L, -7160966901087257802L, -6823574026476940919L, -8303414223214445633L}).toString());
        }
    }
}
