package com.google.android.gms.internal.ads;

import android.webkit.WebView;

/* loaded from: classes2.dex */
final class zzfpa implements Runnable {
    final /* synthetic */ WebView zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ zzfpb zzc;

    public zzfpa(zzfpb zzfpbVar, WebView webView, String str) {
        this.zza = webView;
        this.zzb = str;
        this.zzc = zzfpbVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzfpb.zzi(this.zza, this.zzb);
    }
}
