package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.os.Bundle;
import com.panda912.muddy.ObfuscatedString;
import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzbfs extends zzbfu {
    public zzbfs(int i, String str, String str2) {
        super(1, str, str2, null);
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final /* bridge */ /* synthetic */ Object zza(JSONObject jSONObject) {
        return jSONObject.optString(zzn(), (String) zzm());
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final /* bridge */ /* synthetic */ Object zzb(Bundle bundle) {
        if (bundle.containsKey(new ObfuscatedString(new long[]{-5998099974333333083L, -2587914041704381608L, 6875951741450254892L, -4640162838353726881L, 1472702376836737098L}).toString().concat(zzn()))) {
            return bundle.getString(new ObfuscatedString(new long[]{3769412469492052761L, -7484260650024662034L, 4690379053760222604L, -3580601835162252943L, -5606090213716579115L}).toString().concat(zzn()));
        }
        return (String) zzm();
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final /* bridge */ /* synthetic */ Object zzc(SharedPreferences sharedPreferences) {
        return sharedPreferences.getString(zzn(), (String) zzm());
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final /* bridge */ /* synthetic */ void zzd(SharedPreferences.Editor editor, Object obj) {
        editor.putString(zzn(), (String) obj);
    }
}
