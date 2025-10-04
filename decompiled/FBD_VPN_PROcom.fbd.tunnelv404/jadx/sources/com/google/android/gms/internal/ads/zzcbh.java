package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.ads.OnUserEarnedRewardListener;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.rewarded.OnAdMetadataChangedListener;
import com.google.android.gms.ads.rewarded.RewardItem;
import com.google.android.gms.ads.rewarded.ServerSideVerificationOptions;
import com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAd;
import com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAdLoadCallback;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.panda912.muddy.ObfuscatedString;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
/* loaded from: classes2.dex */
public final class zzcbh extends RewardedInterstitialAd {
    private final String zza;
    private final zzcan zzb;
    private final Context zzc;
    private final zzcbf zzd = new zzcbf();

    @Nullable
    private FullScreenContentCallback zze;

    @Nullable
    private OnAdMetadataChangedListener zzf;

    @Nullable
    private OnPaidEventListener zzg;

    public zzcbh(Context context, String str) {
        this.zza = str;
        this.zzc = context.getApplicationContext();
        this.zzb = com.google.android.gms.ads.internal.client.zzay.zza().zzq(context, str, new zzbsr());
    }

    @Override // com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAd
    public final Bundle getAdMetadata() {
        try {
            zzcan zzcanVar = this.zzb;
            if (zzcanVar != null) {
                return zzcanVar.zzb();
            }
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{-5382207718138739694L, 2062107174555621455L, -7493386547036356099L, 6433339675186863821L, 4402387076235146128L, -5283781710995783392L}).toString(), e);
        }
        return new Bundle();
    }

    @Override // com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAd
    public final String getAdUnitId() {
        return this.zza;
    }

    @Override // com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAd
    @Nullable
    public final FullScreenContentCallback getFullScreenContentCallback() {
        return this.zze;
    }

    @Override // com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAd
    @Nullable
    public final OnAdMetadataChangedListener getOnAdMetadataChangedListener() {
        return this.zzf;
    }

    @Override // com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAd
    @Nullable
    public final OnPaidEventListener getOnPaidEventListener() {
        return this.zzg;
    }

    @Override // com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAd
    @NonNull
    public final ResponseInfo getResponseInfo() {
        com.google.android.gms.ads.internal.client.zzdn zzdnVar = null;
        try {
            zzcan zzcanVar = this.zzb;
            if (zzcanVar != null) {
                zzdnVar = zzcanVar.zzc();
            }
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{-4002633664919053328L, -564802429065064138L, 6838668451349067508L, -7104114976186922783L, 1373627679641932186L, -8439403287904984770L}).toString(), e);
        }
        return ResponseInfo.zzb(zzdnVar);
    }

    @Override // com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAd
    @NonNull
    public final RewardItem getRewardItem() {
        zzcak zzcakVar;
        try {
            zzcan zzcanVar = this.zzb;
            if (zzcanVar != null) {
                zzcakVar = zzcanVar.zzd();
            } else {
                zzcakVar = null;
            }
            if (zzcakVar != null) {
                return new zzcax(zzcakVar);
            }
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{6994250113857860519L, 8462027697585176890L, 3628533440697132915L, 5200769433921821578L, 6308874185913549603L, 6214660981625172126L}).toString(), e);
        }
        return RewardItem.DEFAULT_REWARD;
    }

    @Override // com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAd
    public final void setFullScreenContentCallback(@Nullable FullScreenContentCallback fullScreenContentCallback) {
        this.zze = fullScreenContentCallback;
        this.zzd.zzb(fullScreenContentCallback);
    }

    @Override // com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAd
    public final void setImmersiveMode(boolean z) {
        try {
            zzcan zzcanVar = this.zzb;
            if (zzcanVar != null) {
                zzcanVar.zzh(z);
            }
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{-1745182751575362532L, -6116326687285113179L, -3130283337705170244L, -4737632877029984034L, 7327538480207461805L, 6848722587038591195L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAd
    public final void setOnAdMetadataChangedListener(@Nullable OnAdMetadataChangedListener onAdMetadataChangedListener) {
        this.zzf = onAdMetadataChangedListener;
        try {
            zzcan zzcanVar = this.zzb;
            if (zzcanVar != null) {
                zzcanVar.zzi(new com.google.android.gms.ads.internal.client.zzfd(onAdMetadataChangedListener));
            }
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{4931881651333111231L, 6925071398145086738L, 8080505430534373818L, -530327219829735030L, 3939417358355935526L, 622868959551660462L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAd
    public final void setOnPaidEventListener(@Nullable OnPaidEventListener onPaidEventListener) {
        this.zzg = onPaidEventListener;
        try {
            zzcan zzcanVar = this.zzb;
            if (zzcanVar != null) {
                zzcanVar.zzj(new com.google.android.gms.ads.internal.client.zzfe(onPaidEventListener));
            }
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{-4191535867296303320L, -1509418583435545314L, -7863588669970255636L, 6153975276544286219L, 3404608776174105758L, -5080300754117769717L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAd
    public final void setServerSideVerificationOptions(ServerSideVerificationOptions serverSideVerificationOptions) {
        try {
            zzcan zzcanVar = this.zzb;
            if (zzcanVar != null) {
                zzcanVar.zzl(new zzcbb(serverSideVerificationOptions));
            }
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{-266337211619161085L, -9053340004458815624L, -2634063479495376466L, -8273383850367640464L, -8969580978531013632L, -885416918263364022L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAd
    public final void show(@NonNull Activity activity, @NonNull OnUserEarnedRewardListener onUserEarnedRewardListener) {
        this.zzd.zzc(onUserEarnedRewardListener);
        try {
            zzcan zzcanVar = this.zzb;
            if (zzcanVar != null) {
                zzcanVar.zzk(this.zzd);
                this.zzb.zzm(ObjectWrapper.wrap(activity));
            }
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{-6213292058803746583L, 5864331830399679602L, 3608592574053783850L, 6783450257880755369L, 5783143435342099496L, -26531426867096262L}).toString(), e);
        }
    }

    public final void zza(com.google.android.gms.ads.internal.client.zzdx zzdxVar, RewardedInterstitialAdLoadCallback rewardedInterstitialAdLoadCallback) {
        try {
            zzcan zzcanVar = this.zzb;
            if (zzcanVar != null) {
                zzcanVar.zzg(com.google.android.gms.ads.internal.client.zzp.zza.zza(this.zzc, zzdxVar), new zzcbg(rewardedInterstitialAdLoadCallback, this));
            }
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{-6034822094082016272L, -4606208623000939522L, 7307115962465345855L, -3701164739605343353L, 8080888721950181635L, 381844941155467610L}).toString(), e);
        }
    }
}
