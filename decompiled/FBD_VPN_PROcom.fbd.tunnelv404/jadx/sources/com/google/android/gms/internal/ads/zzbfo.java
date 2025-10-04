package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.os.Bundle;
import com.panda912.muddy.ObfuscatedString;
import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzbfo extends zzbfu {
    public zzbfo(int i, String str, Boolean bool) {
        super(i, str, bool, null);
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final /* bridge */ /* synthetic */ Object zza(JSONObject jSONObject) {
        return Boolean.valueOf(jSONObject.optBoolean(zzn(), ((Boolean) zzm()).booleanValue()));
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final /* bridge */ /* synthetic */ Object zzb(Bundle bundle) {
        if (bundle.containsKey(new ObfuscatedString(new long[]{3863802115844881299L, -2837158575423641379L, 2409504007098165338L, 2723212869319033857L, 3869747470968396844L}).toString().concat(zzn()))) {
            return Boolean.valueOf(bundle.getBoolean(new ObfuscatedString(new long[]{965464416457676284L, -6825949406099845385L, -4690509074643495380L, -6437288509358111563L, -3832913393998360965L}).toString().concat(zzn())));
        }
        return (Boolean) zzm();
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final /* bridge */ /* synthetic */ Object zzc(SharedPreferences sharedPreferences) {
        return Boolean.valueOf(sharedPreferences.getBoolean(zzn(), ((Boolean) zzm()).booleanValue()));
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final /* bridge */ /* synthetic */ void zzd(SharedPreferences.Editor editor, Object obj) {
        editor.putBoolean(zzn(), ((Boolean) obj).booleanValue());
    }
}
