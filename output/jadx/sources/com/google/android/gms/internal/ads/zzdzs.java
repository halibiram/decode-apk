package com.google.android.gms.internal.ads;

import androidx.annotation.NonNull;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.rewarded.RewardedAd;
import com.google.android.gms.ads.rewarded.RewardedAdLoadCallback;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzdzs extends RewardedAdLoadCallback {
    final /* synthetic */ String zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ zzdzx zzc;

    public zzdzs(zzdzx zzdzxVar, String str, String str2) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = zzdzxVar;
    }

    @Override // com.google.android.gms.ads.AdLoadCallback
    public final void onAdFailedToLoad(@NonNull LoadAdError loadAdError) {
        String zzl;
        zzdzx zzdzxVar = this.zzc;
        zzl = zzdzx.zzl(loadAdError);
        zzdzxVar.zzm(zzl, this.zzb);
    }

    @Override // com.google.android.gms.ads.AdLoadCallback
    public final /* bridge */ /* synthetic */ void onAdLoaded(@NonNull RewardedAd rewardedAd) {
        String str = this.zzb;
        this.zzc.zzg(this.zza, rewardedAd, str);
    }
}
