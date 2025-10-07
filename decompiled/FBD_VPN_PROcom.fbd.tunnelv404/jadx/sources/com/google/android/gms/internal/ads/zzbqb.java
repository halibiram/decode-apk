package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final /* synthetic */ class zzbqb {
    public static void zza(zzbqc zzbqcVar, String str, Map map) {
        try {
            zzbqcVar.zze(str, com.google.android.gms.ads.internal.client.zzay.zzb().zzi(map));
        } catch (JSONException unused) {
            zzcec.zzj(new ObfuscatedString(new long[]{525883237288277369L, 6829990824262667648L, -4876384352103078648L, -4100844643720038621L, -1222039878599212223L, 1767075857530151964L}).toString());
        }
    }

    public static void zzb(zzbqc zzbqcVar, String str, JSONObject jSONObject) {
        String jSONObject2 = jSONObject.toString();
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{1478213631973420716L, -9194197641678541125L, 3762086196630904926L, 1015815469180284775L, 7779490020514083622L, -7751349632795050847L, -6199486702827599522L}).toString());
        sb.append(str);
        sb.append(new ObfuscatedString(new long[]{-1232219127349284611L, 7098936298308522231L}).toString());
        sb.append(jSONObject2);
        zzcec.zze(new ObfuscatedString(new long[]{8664318375277501547L, 6359198044895616334L, 2606709455014127374L, -3057062672773452131L}).toString().concat(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-3312064605118598922L, 5119080751750628670L}), sb)));
        zzbqcVar.zza(sb.toString());
    }

    public static void zzc(zzbqc zzbqcVar, String str, String str2) {
        StringBuilder m3341xc20437a5 = AbstractC0749x8313616e.m3341xc20437a5(str);
        m3341xc20437a5.append(new ObfuscatedString(new long[]{8211175191503600291L, 3524347293703386068L}).toString());
        m3341xc20437a5.append(str2);
        m3341xc20437a5.append(new ObfuscatedString(new long[]{3326497626030605226L, 5546052468658434268L}).toString());
        zzbqcVar.zza(m3341xc20437a5.toString());
    }

    public static void zzd(zzbqc zzbqcVar, String str, JSONObject jSONObject) {
        zzbqcVar.zzb(str, jSONObject.toString());
    }
}
