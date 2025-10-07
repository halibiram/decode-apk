package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.webkit.WebView;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import kotlin.text.Typography;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzfpb {
    private static final zzfpb zza = new zzfpb();

    private zzfpb() {
    }

    public static final zzfpb zza() {
        return zza;
    }

    public static final boolean zzi(WebView webView, String str) {
        if (webView != null && !TextUtils.isEmpty(str)) {
            try {
                webView.evaluateJavascript(str, null);
                return true;
            } catch (IllegalStateException unused) {
                webView.loadUrl(new ObfuscatedString(new long[]{-4918314849075185641L, 4941536384162778279L, -9152046402444216770L}).toString().concat(String.valueOf(str)));
                return true;
            }
        }
        return false;
    }

    @VisibleForTesting
    public final void zzb(WebView webView, String str, Object... objArr) {
        if (webView != null) {
            StringBuilder sb = new StringBuilder(128);
            sb.append(new ObfuscatedString(new long[]{6138729428002192996L, 32020990016554493L, 759922781172872628L, 7315203707867748903L, -315634601036085012L, 2308951204538641329L, 7848655149330660381L}).toString());
            sb.append(str);
            sb.append(new ObfuscatedString(new long[]{-5188115713437763232L, -940431950626311092L}).toString());
            if (objArr.length > 0) {
                for (Object obj : objArr) {
                    if (obj == null) {
                        sb.append(new ObfuscatedString(new long[]{-4165675052206374347L, -877150103689527358L}).toString());
                    } else if (obj instanceof String) {
                        String obj2 = obj.toString();
                        if (obj2.startsWith(new ObfuscatedString(new long[]{4678032001148969203L, 1964809156174577921L}).toString())) {
                            sb.append(obj2);
                        } else {
                            sb.append(Typography.quote);
                            sb.append(obj2);
                            sb.append(Typography.quote);
                        }
                    } else {
                        sb.append(obj);
                    }
                    sb.append(new ObfuscatedString(new long[]{-3323842813101520141L, 2569451575358378755L}).toString());
                }
                sb.setLength(sb.length() - 1);
            }
            String m3332x9d12c1f4 = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-448451238364214752L, 3313125085963363425L}), sb);
            Handler handler = webView.getHandler();
            if (handler != null && Looper.myLooper() != handler.getLooper()) {
                handler.post(new zzfpa(this, webView, m3332x9d12c1f4));
                return;
            } else {
                zzi(webView, m3332x9d12c1f4);
                return;
            }
        }
        zzfoa.zza.getClass();
    }

    public final void zzc(WebView webView) {
        zzb(webView, new ObfuscatedString(new long[]{6045834369446652758L, 2710534410881857951L, -2859903638523783591L}).toString(), new Object[0]);
    }

    public final void zzd(WebView webView, JSONObject jSONObject) {
        zzb(webView, new ObfuscatedString(new long[]{6748228343645992795L, -846087109931616589L}).toString(), jSONObject);
    }

    public final void zze(WebView webView, float f) {
        zzb(webView, new ObfuscatedString(new long[]{5040466409827427809L, 4722460859287276323L, 208520843714661114L}).toString(), Float.valueOf(f));
    }

    public final void zzf(WebView webView, @NonNull JSONObject jSONObject) {
        zzb(webView, new ObfuscatedString(new long[]{-8305335158000150871L, 8407285372197725054L, 6021624925453134156L}).toString(), jSONObject);
    }

    public final void zzg(WebView webView, String str) {
        zzb(webView, new ObfuscatedString(new long[]{7873690309802311987L, -1513930294840589811L, 7323544122774905663L, -3422285309575619453L}).toString(), str);
    }

    public final void zzh(WebView webView, String str, JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3) {
        zzb(webView, new ObfuscatedString(new long[]{6454326791342172431L, -7354790307560727285L, 2351028750799378580L}).toString(), str, jSONObject, jSONObject2, jSONObject3);
    }
}
