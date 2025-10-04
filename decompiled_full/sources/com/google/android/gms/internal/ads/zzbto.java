package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import androidx.annotation.NonNull;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.Adapter;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationInterscrollerAd;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
final class zzbto implements MediationAdLoadCallback {
    final /* synthetic */ zzbtb zza;
    final /* synthetic */ Adapter zzb;
    final /* synthetic */ zzbtv zzc;

    public zzbto(zzbtv zzbtvVar, zzbtb zzbtbVar, Adapter adapter) {
        this.zza = zzbtbVar;
        this.zzb = adapter;
        this.zzc = zzbtvVar;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(@NonNull AdError adError) {
        try {
            zzcec.zze(this.zzb.getClass().getCanonicalName() + new ObfuscatedString(new long[]{4708181174901280901L, 4904925461077363870L, -4545419864673182086L, 6813728569706699828L, -3198136628560684676L, -248280753575242214L, 4201195149450597390L}).toString() + adError.getCode() + new ObfuscatedString(new long[]{6907955743281931416L, 908103511745717619L, -3951595669686421317L, -5658163269966999090L}).toString() + adError.getMessage() + new ObfuscatedString(new long[]{8153116985709276718L, -3817689574305826193L, -4307025815855328970L}).toString() + adError.getDomain());
            this.zza.zzh(adError.zza());
            this.zza.zzi(adError.getCode(), adError.getMessage());
            this.zza.zzg(adError.getCode());
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{-4283249706289305681L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final /* bridge */ /* synthetic */ Object onSuccess(Object obj) {
        try {
            this.zzc.zzi = (MediationInterscrollerAd) obj;
            this.zza.zzo();
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{-4437495137226244423L}).toString(), e);
        }
        return new zzbtm(this.zza);
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(String str) {
        onFailure(new AdError(0, str, new ObfuscatedString(new long[]{3297245721797584884L, -4791229596522232312L, -2576761070255357573L}).toString()));
    }
}
