package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.nativead.NativeAd;

/* loaded from: classes2.dex */
public final class zzbwi extends zzbkz {
    private final NativeAd.OnNativeAdLoadedListener zza;

    public zzbwi(NativeAd.OnNativeAdLoadedListener onNativeAdLoadedListener) {
        this.zza = onNativeAdLoadedListener;
    }

    @Override // com.google.android.gms.internal.ads.zzbla
    public final void zze(zzblj zzbljVar) {
        this.zza.onNativeAdLoaded(new zzbwb(zzbljVar));
    }
}
