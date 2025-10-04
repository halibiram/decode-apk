package com.google.android.gms.internal.ads;

import android.content.Context;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.gms.ads.h5.H5AdsRequestHandler;
import com.google.android.gms.ads.h5.OnH5AdsEventListener;
import com.panda912.muddy.ObfuscatedString;

@RequiresApi(api = 21)
/* loaded from: classes2.dex */
public final class zzbon extends zzboa {
    public static final /* synthetic */ int zza = 0;

    @Nullable
    private WebViewClient zzb;
    private final H5AdsRequestHandler zzc;
    private final WebView zzd;

    public zzbon(Context context, final WebView webView) {
        context.getClass();
        webView.getClass();
        zzfxe.zzf(webView.getSettings().getJavaScriptEnabled(), new ObfuscatedString(new long[]{1770750364028984745L, 1763058659005354953L, -5447493498155784342L, -6609240049586514560L, -3272902359531626459L, 4498558428963971010L, 1530863101893972406L}).toString());
        this.zzd = webView;
        this.zzc = new H5AdsRequestHandler(context, new OnH5AdsEventListener() { // from class: com.google.android.gms.internal.ads.zzbom
            @Override // com.google.android.gms.ads.h5.OnH5AdsEventListener
            public final void onH5AdsEvent(String str) {
                int i = zzbon.zza;
                webView.evaluateJavascript(str, null);
            }
        });
    }

    private final boolean zzc(WebView webView) {
        if (this.zzd.equals(webView)) {
            return true;
        }
        zzcec.zzg(new ObfuscatedString(new long[]{458559143010742336L, 9092950297862054548L, -5637865360546883008L, 5754353392912125579L, 1323594050266497011L, 3282553230589148182L, -686907156027137684L, 7144428457937568618L, 8704662038299387588L, 5034597455099900427L, -9221964225571387934L, -7244379845964593452L, 6860258823016697873L}).toString());
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzboa
    @Nullable
    public final WebViewClient getDelegate() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzboa, android.webkit.WebViewClient
    public final void onLoadResource(WebView webView, String str) {
        if (zzc(webView) && !this.zzc.handleH5AdsRequest(str)) {
            super.onLoadResource(webView, str);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzboa, android.webkit.WebViewClient
    @RequiresApi(api = 24)
    public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        if (!zzc(this.zzd)) {
            return false;
        }
        if (this.zzc.handleH5AdsRequest(webResourceRequest.getUrl().toString())) {
            return true;
        }
        return super.shouldOverrideUrlLoading(webView, webResourceRequest);
    }

    public final void zza() {
        this.zzc.clearAdObjects();
    }

    public final void zzb(@Nullable WebViewClient webViewClient) {
        boolean z;
        if (webViewClient != this) {
            z = true;
        } else {
            z = false;
        }
        zzfxe.zzf(z, new ObfuscatedString(new long[]{-8829730315745872051L, -4072506571687145690L, 8694971555403861729L, 2505073889560682705L, 7624688640926693930L}).toString());
        this.zzb = webViewClient;
    }

    @Override // com.google.android.gms.internal.ads.zzboa, android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        if (!zzc(webView)) {
            return false;
        }
        if (this.zzc.handleH5AdsRequest(str)) {
            return true;
        }
        return super.shouldOverrideUrlLoading(webView, str);
    }
}
