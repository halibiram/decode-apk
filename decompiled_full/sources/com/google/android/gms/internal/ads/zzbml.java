package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes2.dex */
final class zzbml implements zzbng {
    @Override // com.google.android.gms.internal.ads.zzbng
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        JSONObject zza;
        zzcjk zzcjkVar = (zzcjk) obj;
        zzbja zzK = zzcjkVar.zzK();
        if (zzK != null && (zza = zzK.zza()) != null) {
            zzcjkVar.zze(new ObfuscatedString(new long[]{6098239194733841357L, -3444704048990642258L, -3738897604541468023L, -1965327028617648510L}).toString(), zza);
        } else {
            zzcjkVar.zze(new ObfuscatedString(new long[]{2302693817360013705L, 5007150684611156676L, 8303498586465479720L, -92790367931450094L}).toString(), new JSONObject());
        }
    }
}
