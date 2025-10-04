package com.google.android.gms.internal.ads;

import android.webkit.ValueCallback;
import android.webkit.WebView;
import com.panda912.muddy.ObfuscatedString;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzazn implements Runnable {
    final ValueCallback zza;
    final /* synthetic */ zzazf zzb;
    final /* synthetic */ WebView zzc;
    final /* synthetic */ boolean zzd;
    final /* synthetic */ zzazp zze;

    public zzazn(zzazp zzazpVar, final zzazf zzazfVar, final WebView webView, final boolean z) {
        this.zzb = zzazfVar;
        this.zzc = webView;
        this.zzd = z;
        this.zze = zzazpVar;
        this.zza = new ValueCallback() { // from class: com.google.android.gms.internal.ads.zzazm
            @Override // android.webkit.ValueCallback
            public final void onReceiveValue(Object obj) {
                zzazn.this.zze.zzd(zzazfVar, webView, (String) obj, z);
            }
        };
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.zzc.getSettings().getJavaScriptEnabled()) {
            try {
                this.zzc.evaluateJavascript(new ObfuscatedString(new long[]{7598681905165726514L, 9105818877716792443L, 2579149415181176277L, -1403252071526796208L, 3496444995375701615L, 1800563669169477600L, -7590423926099273258L, 2018309409087953245L, 899690617841315747L}).toString(), this.zza);
            } catch (Throwable unused) {
                this.zza.onReceiveValue(new ObfuscatedString(new long[]{-1411337940641716634L}).toString());
            }
        }
    }
}
