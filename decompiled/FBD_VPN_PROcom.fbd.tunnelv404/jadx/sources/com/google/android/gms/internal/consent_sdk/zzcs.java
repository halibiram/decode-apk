package com.google.android.gms.internal.consent_sdk;

import android.annotation.TargetApi;
import android.webkit.WebView;
import androidx.annotation.GuardedBy;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzcs {

    @GuardedBy("WebViewUtil.class")
    private static Boolean zza;

    private zzcs() {
    }

    @TargetApi(19)
    public static void zza(WebView webView, String str) {
        boolean booleanValue;
        synchronized (zzcs.class) {
            if (zza == null) {
                try {
                    webView.evaluateJavascript(new ObfuscatedString(new long[]{7100170659622566406L, 5340108770741615284L, -2459558929693301643L}).toString(), null);
                    zza = Boolean.TRUE;
                } catch (IllegalStateException unused) {
                    zza = Boolean.FALSE;
                }
            }
            booleanValue = zza.booleanValue();
        }
        if (booleanValue) {
            webView.evaluateJavascript(str, null);
        } else {
            webView.loadUrl(new ObfuscatedString(new long[]{-7282727719227677344L, -4200689584582505647L, -6857654561057219018L}).toString().concat(str));
        }
    }
}
