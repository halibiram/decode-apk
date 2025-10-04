package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.admanager.AdManagerAdView;
import com.google.android.gms.ads.formats.OnAdManagerAdViewLoadedListener;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
final class zzbls implements Runnable {
    final /* synthetic */ AdManagerAdView zza;
    final /* synthetic */ com.google.android.gms.ads.internal.client.zzbu zzb;
    final /* synthetic */ zzblt zzc;

    public zzbls(zzblt zzbltVar, AdManagerAdView adManagerAdView, com.google.android.gms.ads.internal.client.zzbu zzbuVar) {
        this.zza = adManagerAdView;
        this.zzb = zzbuVar;
        this.zzc = zzbltVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        OnAdManagerAdViewLoadedListener onAdManagerAdViewLoadedListener;
        if (this.zza.zzb(this.zzb)) {
            zzblt zzbltVar = this.zzc;
            AdManagerAdView adManagerAdView = this.zza;
            onAdManagerAdViewLoadedListener = zzbltVar.zza;
            onAdManagerAdViewLoadedListener.onAdManagerAdViewLoaded(adManagerAdView);
            return;
        }
        zzcec.zzj(new ObfuscatedString(new long[]{-3187118555837704062L, -487734641793171730L, -5379615310839172237L}).toString());
    }
}
