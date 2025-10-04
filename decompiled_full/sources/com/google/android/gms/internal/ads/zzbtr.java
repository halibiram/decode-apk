package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationInterstitialAd;
import com.panda912.muddy.ObfuscatedString;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzbtr implements MediationAdLoadCallback {
    final /* synthetic */ zzbtb zza;
    final /* synthetic */ zzbtv zzb;

    public zzbtr(zzbtv zzbtvVar, zzbtb zzbtbVar) {
        this.zza = zzbtbVar;
        this.zzb = zzbtvVar;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(AdError adError) {
        Object obj;
        try {
            obj = this.zzb.zza;
            zzcec.zze(obj.getClass().getCanonicalName() + new ObfuscatedString(new long[]{6169202651920524096L, 498963098730537187L, 5799652544678750993L, -8703918114231199452L, -1452475739786293526L, -6560432266465370229L, -6419259333179760030L}).toString() + adError.getCode() + new ObfuscatedString(new long[]{-5185636306283034867L, -8953456653982930794L, -422560771300918033L, -192199557322975567L}).toString() + adError.getMessage() + new ObfuscatedString(new long[]{-1774520025803766392L, -5054401279152030532L, -5416389513924008440L}).toString() + adError.getDomain());
            this.zza.zzh(adError.zza());
            this.zza.zzi(adError.getCode(), adError.getMessage());
            this.zza.zzg(adError.getCode());
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{-564645844511783887L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final /* bridge */ /* synthetic */ Object onSuccess(Object obj) {
        try {
            this.zzb.zzf = (MediationInterstitialAd) obj;
            this.zza.zzo();
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{2269113546873277255L}).toString(), e);
        }
        return new zzbtm(this.zza);
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(String str) {
        onFailure(new AdError(0, str, new ObfuscatedString(new long[]{-9203519132712948037L, 1973117204432999523L, -2788748920299931221L}).toString()));
    }
}
