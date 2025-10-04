package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes2.dex */
final class zzbmm implements zzbng {
    @Override // com.google.android.gms.internal.ads.zzbng
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        JSONObject zzb;
        zzcjk zzcjkVar = (zzcjk) obj;
        zzbja zzK = zzcjkVar.zzK();
        if (zzK != null && (zzb = zzK.zzb()) != null) {
            zzcjkVar.zze(new ObfuscatedString(new long[]{7333689825448183937L, 5989022690299107828L, -3000844202183212560L, -2379166539166815697L}).toString(), zzb);
        } else {
            zzcjkVar.zze(new ObfuscatedString(new long[]{-5275862434902356486L, -770632407487156573L, 56368975376868631L, -6983212825826956025L}).toString(), new JSONObject());
        }
    }
}
