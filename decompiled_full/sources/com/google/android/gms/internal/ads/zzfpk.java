package com.google.android.gms.internal.ads;

import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
final class zzfpk extends WebViewClient {
    final String zza = new ObfuscatedString(new long[]{-452097693550683803L, 8277498834445467286L, -8038330842316745027L, -3751390356142891974L, -1847052730375055801L}).toString();
    final /* synthetic */ zzfpm zzb;

    public zzfpk(zzfpm zzfpmVar) {
        this.zzb = zzfpmVar;
    }

    @Override // android.webkit.WebViewClient
    public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        new ObfuscatedString(new long[]{3581396097418560711L, -6816524957178329856L, -4634065112747828220L, -4368502222701650875L}).toString().concat(String.valueOf(renderProcessGoneDetail.toString()));
        if (this.zzb.zza() == webView) {
            new ObfuscatedString(new long[]{-4848952320870678519L, -1269192440136595935L, 3148944647422311244L, -4778976365044380248L, -765709322032941136L, 6307832195673828746L, 1835375434934460016L, 5065356954321221943L, -8391962963733774494L, -3456093392110903072L, 1810272347740033490L, -8815915439820615085L, -2346568282130011959L, -448457213645832820L}).toString();
            this.zzb.zzj(null);
            webView.destroy();
            return true;
        }
        return super.onRenderProcessGone(webView, renderProcessGoneDetail);
    }
}
