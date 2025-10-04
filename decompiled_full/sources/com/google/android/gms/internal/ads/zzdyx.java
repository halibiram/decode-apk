package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import org.json.JSONObject;

/* loaded from: classes2.dex */
final class zzdyx {
    private final String zza;
    private final String zzb;
    private final String zzc;
    private final int zzd;
    private final String zze;
    private final int zzf;
    private final boolean zzg;

    public zzdyx(String str, String str2, String str3, int i, String str4, int i2, boolean z) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = str3;
        this.zzd = i;
        this.zze = str4;
        this.zzf = i2;
        this.zzg = z;
    }

    public final JSONObject zza() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(new ObfuscatedString(new long[]{-6269702553828044742L, 1715399092906729421L, 5771110570449412975L}).toString(), this.zza);
        jSONObject.put(new ObfuscatedString(new long[]{-6242020406243489863L, -6835967441420531096L}).toString(), this.zzc);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjj)).booleanValue()) {
            jSONObject.put(new ObfuscatedString(new long[]{-6331397997873198560L, 4863756524901426416L, -7753118607554317244L}).toString(), this.zzb);
        }
        jSONObject.put(new ObfuscatedString(new long[]{6168170017711372297L, -6105762810305098003L}).toString(), this.zzd);
        jSONObject.put(new ObfuscatedString(new long[]{6432999574484392921L, 3563690289113167611L, -2919871196156418090L}).toString(), this.zze);
        jSONObject.put(new ObfuscatedString(new long[]{6854482129830664284L, -5666164433467841677L, -8679314652449798356L, 4966502730453880304L, 4251032234658375257L}).toString(), this.zzf);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjk)).booleanValue()) {
            jSONObject.put(new ObfuscatedString(new long[]{-454531658472053369L, -9059579471872236699L, 5436325681741451842L, 2555292559650123789L}).toString(), this.zzg);
        }
        return jSONObject;
    }
}
