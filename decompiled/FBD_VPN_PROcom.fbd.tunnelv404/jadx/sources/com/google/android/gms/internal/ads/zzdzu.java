package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.LoadAdError;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzdzu extends AdListener {
    final /* synthetic */ String zza;
    final /* synthetic */ zzdzx zzb;

    public zzdzu(zzdzx zzdzxVar, String str) {
        this.zza = str;
        this.zzb = zzdzxVar;
    }

    @Override // com.google.android.gms.ads.AdListener
    public final void onAdFailedToLoad(LoadAdError loadAdError) {
        String zzl;
        zzdzx zzdzxVar = this.zzb;
        zzl = zzdzx.zzl(loadAdError);
        zzdzxVar.zzm(zzl, this.zza);
    }
}
