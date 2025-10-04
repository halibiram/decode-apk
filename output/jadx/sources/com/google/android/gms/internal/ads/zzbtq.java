package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationBannerAd;
import com.panda912.muddy.ObfuscatedString;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzbtq implements MediationAdLoadCallback {
    final /* synthetic */ zzbtb zza;
    final /* synthetic */ zzbtv zzb;

    public zzbtq(zzbtv zzbtvVar, zzbtb zzbtbVar) {
        this.zza = zzbtbVar;
        this.zzb = zzbtvVar;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(AdError adError) {
        Object obj;
        try {
            obj = this.zzb.zza;
            zzcec.zze(obj.getClass().getCanonicalName() + new ObfuscatedString(new long[]{3283700256818939063L, 4322625221646637360L, -7765623131109487800L, -7228913506644634395L, 127220854933211319L, 3299031862815305982L, 5087139040926638004L}).toString() + adError.getCode() + new ObfuscatedString(new long[]{3568169631418419037L, -7806415498975401484L, 8583678434341945517L, 6451814152221354685L}).toString() + adError.getMessage() + new ObfuscatedString(new long[]{-5301886736851315887L, -2501615359308819687L, -3323743004368423062L}).toString() + adError.getDomain());
            this.zza.zzh(adError.zza());
            this.zza.zzi(adError.getCode(), adError.getMessage());
            this.zza.zzg(adError.getCode());
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{-4555907259010916841L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final /* bridge */ /* synthetic */ Object onSuccess(Object obj) {
        try {
            this.zzb.zze = ((MediationBannerAd) obj).getView();
            this.zza.zzo();
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{876123167269732047L}).toString(), e);
        }
        return new zzbtm(this.zza);
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(String str) {
        onFailure(new AdError(0, str, new ObfuscatedString(new long[]{-3816265511478939407L, 6348014209811212080L, -5321108076731281521L}).toString()));
    }
}
