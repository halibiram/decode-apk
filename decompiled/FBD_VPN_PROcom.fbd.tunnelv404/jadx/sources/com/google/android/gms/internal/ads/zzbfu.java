package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.os.Bundle;
import com.panda912.muddy.ObfuscatedString;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public abstract class zzbfu {
    private final int zza;
    private final String zzb;
    private final Object zzc;

    public /* synthetic */ zzbfu(int i, String str, Object obj, zzbft zzbftVar) {
        this.zza = i;
        this.zzb = str;
        this.zzc = obj;
        com.google.android.gms.ads.internal.client.zzba.zza().zzd(this);
    }

    public static zzbfu zzf(int i, String str, float f) {
        return new zzbfr(1, str, Float.valueOf(f));
    }

    public static zzbfu zzg(int i, String str, int i2) {
        return new zzbfp(1, str, Integer.valueOf(i2));
    }

    public static zzbfu zzh(int i, String str, long j) {
        return new zzbfq(1, str, Long.valueOf(j));
    }

    public static zzbfu zzi(int i, String str, Boolean bool) {
        return new zzbfo(i, str, bool);
    }

    public static zzbfu zzj(int i, String str, String str2) {
        return new zzbfs(1, str, str2);
    }

    public static zzbfu zzk(int i, String str) {
        zzbfu zzj = zzj(1, new ObfuscatedString(new long[]{-6198088870162734054L, 1979464827297946815L, 7326610108476353955L, -5402093284167961192L, 3887268780591629274L, 4781446383024267286L}).toString(), null);
        com.google.android.gms.ads.internal.client.zzba.zza().zzc(zzj);
        return zzj;
    }

    public abstract Object zza(JSONObject jSONObject);

    public abstract Object zzb(Bundle bundle);

    public abstract Object zzc(SharedPreferences sharedPreferences);

    public abstract void zzd(SharedPreferences.Editor editor, Object obj);

    public final int zze() {
        return this.zza;
    }

    public final Object zzl() {
        return com.google.android.gms.ads.internal.client.zzba.zzc().zza(this);
    }

    public final Object zzm() {
        return this.zzc;
    }

    public final String zzn() {
        return this.zzb;
    }
}
