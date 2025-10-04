package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.google.android.gms.ads.appopen.AppOpenAd;

/* loaded from: classes2.dex */
public final class zzbae extends zzbal {

    @Nullable
    private final AppOpenAd.AppOpenAdLoadCallback zza;
    private final String zzb;

    public zzbae(AppOpenAd.AppOpenAdLoadCallback appOpenAdLoadCallback, String str) {
        this.zza = appOpenAdLoadCallback;
        this.zzb = str;
    }

    @Override // com.google.android.gms.internal.ads.zzbam
    public final void zzb(int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzbam
    public final void zzc(com.google.android.gms.ads.internal.client.zze zzeVar) {
        if (this.zza != null) {
            this.zza.onAdFailedToLoad(zzeVar.zzb());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbam
    public final void zzd(zzbaj zzbajVar) {
        if (this.zza != null) {
            this.zza.onAdLoaded(new zzbaf(zzbajVar, this.zzb));
        }
    }
}
