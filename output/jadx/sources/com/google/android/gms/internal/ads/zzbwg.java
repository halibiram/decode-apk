package com.google.android.gms.internal.ads;

import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.nativead.NativeCustomFormatAd;

/* loaded from: classes2.dex */
public final class zzbwg {
    private final NativeCustomFormatAd.OnCustomFormatAdLoadedListener zza;

    @Nullable
    private final NativeCustomFormatAd.OnCustomClickListener zzb;

    @Nullable
    @GuardedBy("this")
    private NativeCustomFormatAd zzc;

    public zzbwg(NativeCustomFormatAd.OnCustomFormatAdLoadedListener onCustomFormatAdLoadedListener, @Nullable NativeCustomFormatAd.OnCustomClickListener onCustomClickListener) {
        this.zza = onCustomFormatAdLoadedListener;
        this.zzb = onCustomClickListener;
    }

    public final synchronized NativeCustomFormatAd zzf(zzbkg zzbkgVar) {
        NativeCustomFormatAd nativeCustomFormatAd = this.zzc;
        if (nativeCustomFormatAd != null) {
            return nativeCustomFormatAd;
        }
        zzbwh zzbwhVar = new zzbwh(zzbkgVar);
        this.zzc = zzbwhVar;
        return zzbwhVar;
    }

    @Nullable
    public final zzbkq zza() {
        if (this.zzb == null) {
            return null;
        }
        return new zzbwd(this, null);
    }

    public final zzbkt zzb() {
        return new zzbwf(this, null);
    }
}
