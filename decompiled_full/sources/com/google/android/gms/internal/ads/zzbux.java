package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationBannerAd;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
final class zzbux implements MediationAdLoadCallback {
    final /* synthetic */ zzbug zza;
    final /* synthetic */ zzbtb zzb;

    public zzbux(zzbve zzbveVar, zzbug zzbugVar, zzbtb zzbtbVar) {
        this.zza = zzbugVar;
        this.zzb = zzbtbVar;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(AdError adError) {
        try {
            this.zza.zzf(adError.zza());
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{-6716947930146300907L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    @Nullable
    public final /* bridge */ /* synthetic */ Object onSuccess(Object obj) {
        MediationBannerAd mediationBannerAd = (MediationBannerAd) obj;
        if (mediationBannerAd == null) {
            zzcec.zzj(new ObfuscatedString(new long[]{3273270657358445241L, 4009087878718922242L, 2649714381524547232L, -567374144741437576L, 17963212387828532L, 5548913189411930290L, 6351883255387288984L, 5181782971501215777L, -8718296540287532219L, 2538923467408676016L, 8425276818430931803L, -3864798029368627489L, -8790554234367323155L, 7262833731815407226L, -6014555869653050581L, -2104930694664161914L}).toString());
            try {
                this.zza.zze(new ObfuscatedString(new long[]{7458913305131918220L, 1909948193837341842L, -4094537399006141197L, 8825264891005725592L}).toString());
                return null;
            } catch (RemoteException e) {
                zzcec.zzh(new ObfuscatedString(new long[]{2831651128973138241L}).toString(), e);
                return null;
            }
        }
        try {
            this.zza.zzg(ObjectWrapper.wrap(mediationBannerAd.getView()));
        } catch (RemoteException e2) {
            zzcec.zzh(new ObfuscatedString(new long[]{-7059149857993291803L}).toString(), e2);
        }
        return new zzbvf(this.zzb);
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(String str) {
        onFailure(new AdError(0, str, new ObfuscatedString(new long[]{4381424010169673324L, -8467113521667561979L, -551982323814449816L}).toString()));
    }
}
