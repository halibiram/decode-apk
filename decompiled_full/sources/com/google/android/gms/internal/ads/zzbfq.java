package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.os.Bundle;
import com.panda912.muddy.ObfuscatedString;
import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzbfq extends zzbfu {
    public zzbfq(int i, String str, Long l) {
        super(1, str, l, null);
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final /* bridge */ /* synthetic */ Object zza(JSONObject jSONObject) {
        return Long.valueOf(jSONObject.optLong(zzn(), ((Long) zzm()).longValue()));
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final /* bridge */ /* synthetic */ Object zzb(Bundle bundle) {
        if (bundle.containsKey(new ObfuscatedString(new long[]{567098592541033998L, 3692686521656026932L, -5124794067834697200L, -3749603108496283446L, 8327151699350589284L}).toString().concat(zzn()))) {
            return Long.valueOf(bundle.getLong(new ObfuscatedString(new long[]{-7704676719936170422L, 6982982775316731311L, -1253197883724569911L, -5129374435181526507L, -3255500334618947697L}).toString().concat(zzn())));
        }
        return (Long) zzm();
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final /* bridge */ /* synthetic */ Object zzc(SharedPreferences sharedPreferences) {
        return Long.valueOf(sharedPreferences.getLong(zzn(), ((Long) zzm()).longValue()));
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final /* bridge */ /* synthetic */ void zzd(SharedPreferences.Editor editor, Object obj) {
        editor.putLong(zzn(), ((Long) obj).longValue());
    }
}
