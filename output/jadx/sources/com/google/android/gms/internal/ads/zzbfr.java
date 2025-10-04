package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.os.Bundle;
import com.panda912.muddy.ObfuscatedString;
import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzbfr extends zzbfu {
    public zzbfr(int i, String str, Float f) {
        super(1, str, f, null);
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final /* bridge */ /* synthetic */ Object zza(JSONObject jSONObject) {
        return Float.valueOf((float) jSONObject.optDouble(zzn(), ((Float) zzm()).floatValue()));
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final /* bridge */ /* synthetic */ Object zzb(Bundle bundle) {
        if (bundle.containsKey(new ObfuscatedString(new long[]{-781479724353667842L, 5910276112088640801L, -2498139774030158323L, 6574836836177461006L, 6077530543187959128L}).toString().concat(zzn()))) {
            return Float.valueOf(bundle.getFloat(new ObfuscatedString(new long[]{3241364688670469049L, -9219587630158543611L, -5085582442191623371L, 4488620796390933554L, -751998688157469479L}).toString().concat(zzn())));
        }
        return (Float) zzm();
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final /* bridge */ /* synthetic */ Object zzc(SharedPreferences sharedPreferences) {
        return Float.valueOf(sharedPreferences.getFloat(zzn(), ((Float) zzm()).floatValue()));
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final /* bridge */ /* synthetic */ void zzd(SharedPreferences.Editor editor, Object obj) {
        editor.putFloat(zzn(), ((Float) obj).floatValue());
    }
}
