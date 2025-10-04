package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import androidx.annotation.Nullable;

@TargetApi(21)
/* loaded from: classes2.dex */
public final class zzckp extends zzcko {
    public zzckp(zzcjk zzcjkVar, zzbbp zzbbpVar, boolean z, @Nullable zzehs zzehsVar) {
        super(zzcjkVar, zzbbpVar, z, zzehsVar);
    }

    @Override // android.webkit.WebViewClient
    @Nullable
    public final WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
        if (webResourceRequest != null && webResourceRequest.getUrl() != null) {
            return zzO(webView, webResourceRequest.getUrl().toString(), webResourceRequest.getRequestHeaders());
        }
        return null;
    }
}
