package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.nativead.NativeCustomFormatAd;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzbwf extends zzbks {
    final /* synthetic */ zzbwg zza;

    public /* synthetic */ zzbwf(zzbwg zzbwgVar, zzbwe zzbweVar) {
        this.zza = zzbwgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbkt
    public final void zze(zzbkg zzbkgVar) {
        NativeCustomFormatAd.OnCustomFormatAdLoadedListener onCustomFormatAdLoadedListener;
        NativeCustomFormatAd zzf;
        zzbwg zzbwgVar = this.zza;
        onCustomFormatAdLoadedListener = zzbwgVar.zza;
        zzf = zzbwgVar.zzf(zzbkgVar);
        onCustomFormatAdLoadedListener.onCustomFormatAdLoaded(zzf);
    }
}
