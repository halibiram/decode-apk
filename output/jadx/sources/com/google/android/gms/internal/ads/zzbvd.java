package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationRewardedAd;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
final class zzbvd implements MediationAdLoadCallback {
    final /* synthetic */ zzbup zza;
    final /* synthetic */ zzbtb zzb;
    final /* synthetic */ zzbve zzc;

    public zzbvd(zzbve zzbveVar, zzbup zzbupVar, zzbtb zzbtbVar) {
        this.zza = zzbupVar;
        this.zzb = zzbtbVar;
        this.zzc = zzbveVar;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(AdError adError) {
        try {
            this.zza.zzf(adError.zza());
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{-2301180451727013064L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    @Nullable
    public final /* bridge */ /* synthetic */ Object onSuccess(Object obj) {
        MediationRewardedAd mediationRewardedAd = (MediationRewardedAd) obj;
        if (mediationRewardedAd == null) {
            zzcec.zzj(new ObfuscatedString(new long[]{-5567024664613432060L, -1653300063965828656L, -8873045543328499235L, -4558239644341807692L, -7856177802032822214L, 1942606489745370552L, 5323993996479933345L, 8569985894439536124L, 5410100014801600886L, -8101375096001042143L, 6533033654616084642L, -535696134235669850L, -4931266366299465016L, 2717958478906135130L, -61312548262784250L, 1452494213734385634L}).toString());
            try {
                this.zza.zze(new ObfuscatedString(new long[]{-803934430708828729L, -4721618873743597501L, -8584742938844689504L, 2460568344271224241L}).toString());
                return null;
            } catch (RemoteException e) {
                zzcec.zzh(new ObfuscatedString(new long[]{6500947649051942641L}).toString(), e);
                return null;
            }
        }
        try {
            this.zzc.zzc = mediationRewardedAd;
            this.zza.zzg();
        } catch (RemoteException e2) {
            zzcec.zzh(new ObfuscatedString(new long[]{-1334851626871463389L}).toString(), e2);
        }
        return new zzbvf(this.zzb);
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(String str) {
        onFailure(new AdError(0, str, new ObfuscatedString(new long[]{-6683861740104844196L, -7002346358395483762L, 9144749193376872811L}).toString()));
    }
}
