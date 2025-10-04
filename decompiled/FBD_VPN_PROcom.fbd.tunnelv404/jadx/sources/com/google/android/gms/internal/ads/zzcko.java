package com.google.android.gms.internal.ads;

import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import java.io.File;
import java.util.Collections;
import java.util.Map;

/* loaded from: classes2.dex */
public class zzcko extends zzcjs {
    public zzcko(zzcjk zzcjkVar, zzbbp zzbbpVar, boolean z, @Nullable zzehs zzehsVar) {
        super(zzcjkVar, zzbbpVar, z, new zzbvv(zzcjkVar, zzcjkVar.zzE(), new zzbfm(zzcjkVar.getContext())), null, zzehsVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    public final WebResourceResponse zzO(WebView webView, String str, @Nullable Map map) {
        String str2;
        if (!(webView instanceof zzcjk)) {
            zzcec.zzj(new ObfuscatedString(new long[]{-5088167217253910931L, 3452833712520625470L, 2054490337550513179L, 7855759734971182509L, -990996918462562303L, 5033422346888064914L, -1085859449051789988L, -837503799291325173L, -2363352106536730645L, -19963395638728101L}).toString());
            return null;
        }
        zzcjk zzcjkVar = (zzcjk) webView;
        zzcbs zzcbsVar = this.zza;
        if (zzcbsVar != null) {
            zzcbsVar.zzd(str, map, 1);
        }
        if (!new ObfuscatedString(new long[]{3087870009790235447L, 4105181510686230331L}).toString().equalsIgnoreCase(new File(str).getName())) {
            if (map == null) {
                map = Collections.emptyMap();
            }
            return zzc(str, map);
        }
        if (zzcjkVar.zzN() != null) {
            zzcjkVar.zzN().zzF();
        }
        if (zzcjkVar.zzO().zzi()) {
            str2 = (String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzO);
        } else if (zzcjkVar.zzaC()) {
            str2 = (String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzN);
        } else {
            str2 = (String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzM);
        }
        com.google.android.gms.ads.internal.zzt.zzp();
        return com.google.android.gms.ads.internal.util.zzt.zzw(zzcjkVar.getContext(), zzcjkVar.zzn().zza, str2);
    }
}
