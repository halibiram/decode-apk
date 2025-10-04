package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import org.json.JSONObject;

/* loaded from: classes2.dex */
final class zzeek implements zzbrq {
    @Override // com.google.android.gms.internal.ads.zzbrq
    public final /* bridge */ /* synthetic */ JSONObject zzb(Object obj) {
        zzeel zzeelVar = (zzeel) obj;
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        JSONObject jSONObject3 = new JSONObject();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjg)).booleanValue()) {
            jSONObject2.put(new ObfuscatedString(new long[]{-8596102984979888977L, -6792326251486094616L, 1052160988708460321L}).toString(), zzeelVar.zzd.zze());
            jSONObject2.put(new ObfuscatedString(new long[]{-4558127660294780541L, 7946421207182765633L, 6470711252295636087L, 3559194517436486546L}).toString(), zzeelVar.zzd.zzd());
        }
        jSONObject2.put(new ObfuscatedString(new long[]{-3915918897178249524L, 1739349415707222724L}).toString(), zzeelVar.zzd.zzb());
        jSONObject2.put(new ObfuscatedString(new long[]{3593297237674581988L, -7988137265576285222L}).toString(), zzeelVar.zzc);
        jSONObject3.put(new ObfuscatedString(new long[]{3831659536058340154L, 3491773913223011641L}).toString(), zzeelVar.zzb.zzc);
        jSONObject3.put(new ObfuscatedString(new long[]{6576659857622577076L, -3411368541874082927L}).toString(), com.google.android.gms.ads.internal.client.zzay.zzb().zzi(zzeelVar.zzb.zzb));
        jSONObject3.put(new ObfuscatedString(new long[]{6759192577376694049L, 6518399562495220344L, 1239574252226267233L}).toString(), zzeelVar.zzb.zza);
        jSONObject3.put(new ObfuscatedString(new long[]{5328133038436022367L, -7809732574278906556L}).toString(), zzeelVar.zzb.zzd);
        jSONObject.put(new ObfuscatedString(new long[]{-2822127395902568184L, 4199160490843888597L}).toString(), jSONObject2);
        jSONObject.put(new ObfuscatedString(new long[]{6157834514930383015L, -6817831110836257706L}).toString(), jSONObject3);
        jSONObject.put(new ObfuscatedString(new long[]{9037555992017158657L, -941835893757475199L}).toString(), zzeelVar.zzd.zzg());
        return jSONObject;
    }
}
