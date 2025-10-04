package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzdxj {

    @Nullable
    private Long zza;
    private final String zzb;

    @Nullable
    private String zzc;

    @Nullable
    private Integer zzd;

    @Nullable
    private String zze;

    @Nullable
    private Integer zzf;

    public /* synthetic */ zzdxj(String str, zzdxi zzdxiVar) {
        this.zzb = str;
    }

    public static /* bridge */ /* synthetic */ String zza(zzdxj zzdxjVar) {
        String str = (String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjI);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt(new ObfuscatedString(new long[]{865020801015301230L, -1694907247874923144L}).toString(), zzdxjVar.zza);
            jSONObject.put(new ObfuscatedString(new long[]{8758990424939975098L, -8381241355671546690L, -6019584804341504044L}).toString(), zzdxjVar.zzb);
            jSONObject.putOpt(new ObfuscatedString(new long[]{-1365607193083739087L, -8068505436705667262L}).toString(), zzdxjVar.zzc);
            jSONObject.putOpt(new ObfuscatedString(new long[]{3278879543317219493L, -4908639595199281150L, -7881389064541959958L}).toString(), zzdxjVar.zzd);
            jSONObject.putOpt(new ObfuscatedString(new long[]{-1496735203206658883L, 4344932924502582147L, -6902936660552053251L}).toString(), zzdxjVar.zze);
            jSONObject.putOpt(new ObfuscatedString(new long[]{-6785064878008513271L, -2542081507355369939L, 8200940448637598912L}).toString(), zzdxjVar.zzf);
        } catch (JSONException unused) {
            zzcec.zzj(new ObfuscatedString(new long[]{-5772638838132438472L, 5757479776683314383L, -446690771399899486L, -3484472294692621876L, 8088247785176254697L, -796965173347009697L}).toString());
        }
        String jSONObject2 = jSONObject.toString();
        StringBuilder m3341xc20437a5 = AbstractC0749x8313616e.m3341xc20437a5(str);
        m3341xc20437a5.append(new ObfuscatedString(new long[]{-4736065743685771476L, 2124473072783853646L, 2585543954826810247L}).toString());
        m3341xc20437a5.append(jSONObject2);
        return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{2576719051347354529L, -3111091327596802595L}), m3341xc20437a5);
    }
}
