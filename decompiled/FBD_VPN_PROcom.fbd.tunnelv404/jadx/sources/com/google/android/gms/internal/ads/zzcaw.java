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
import com.google.android.gms.ads.rewarded.RewardedAd;
import com.google.android.gms.ads.rewarded.RewardedAdLoadCallback;
import com.google.android.gms.ads.rewarded.ServerSideVerificationOptions;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.panda912.muddy.ObfuscatedString;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
/* loaded from: classes2.dex */
public final class zzcaw extends RewardedAd {
    private final String zza;
    private final zzcan zzb;
    private final Context zzc;
    private final zzcbf zzd = new zzcbf();

    @Nullable
    private OnAdMetadataChangedListener zze;

    @Nullable
    private OnPaidEventListener zzf;

    @Nullable
    private FullScreenContentCallback zzg;

    public zzcaw(Context context, String str) {
        this.zzc = context.getApplicationContext();
        this.zza = str;
        this.zzb = com.google.android.gms.ads.internal.client.zzay.zza().zzq(context, str, new zzbsr());
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final Bundle getAdMetadata() {
        try {
            zzcan zzcanVar = this.zzb;
            if (zzcanVar != null) {
                return zzcanVar.zzb();
            }
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{-3912583038784455942L, 2376099323469045558L, 1218006974757041490L, -4295106842833112934L, 6518329724836250155L, 3819868775374300253L}).toString(), e);
        }
        return new Bundle();
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    @NonNull
    public final String getAdUnitId() {
        return this.zza;
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    @Nullable
    public final FullScreenContentCallback getFullScreenContentCallback() {
        return this.zzg;
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    @Nullable
    public final OnAdMetadataChangedListener getOnAdMetadataChangedListener() {
        return this.zze;
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    @Nullable
    public final OnPaidEventListener getOnPaidEventListener() {
        return this.zzf;
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    @NonNull
    public final ResponseInfo getResponseInfo() {
        com.google.android.gms.ads.internal.client.zzdn zzdnVar = null;
        try {
            zzcan zzcanVar = this.zzb;
            if (zzcanVar != null) {
                zzdnVar = zzcanVar.zzc();
            }
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{-4337796971217048976L, 5779819803409618042L, -2135292478562048893L, -8176105466263638688L, -5915338015742525758L, 4852872289673467229L}).toString(), e);
        }
        return ResponseInfo.zzb(zzdnVar);
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
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
            if (zzcakVar == null) {
                return RewardItem.DEFAULT_REWARD;
            }
            return new zzcax(zzcakVar);
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{7160971849882249692L, -7808727376124291721L, 5176925868194762645L, 5463307218798068005L, 1022009997048670606L, 5093962469534517077L}).toString(), e);
            return RewardItem.DEFAULT_REWARD;
        }
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final void setFullScreenContentCallback(@Nullable FullScreenContentCallback fullScreenContentCallback) {
        this.zzg = fullScreenContentCallback;
        this.zzd.zzb(fullScreenContentCallback);
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final void setImmersiveMode(boolean z) {
        try {
            zzcan zzcanVar = this.zzb;
            if (zzcanVar != null) {
                zzcanVar.zzh(z);
            }
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{-8966464838505953473L, -2058646720383577230L, 6952002504256522610L, 1593873198670962834L, 4962530415971276165L, 4931542586503176392L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final void setOnAdMetadataChangedListener(@Nullable OnAdMetadataChangedListener onAdMetadataChangedListener) {
        try {
            this.zze = onAdMetadataChangedListener;
            zzcan zzcanVar = this.zzb;
            if (zzcanVar != null) {
                zzcanVar.zzi(new com.google.android.gms.ads.internal.client.zzfd(onAdMetadataChangedListener));
            }
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{5689305354832800895L, 132464757117368027L, -4723471247758313285L, 4794699314902797630L, -7412638809626495624L, 4342667670249948568L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final void setOnPaidEventListener(@Nullable OnPaidEventListener onPaidEventListener) {
        try {
            this.zzf = onPaidEventListener;
            zzcan zzcanVar = this.zzb;
            if (zzcanVar != null) {
                zzcanVar.zzj(new com.google.android.gms.ads.internal.client.zzfe(onPaidEventListener));
            }
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{-3589501961052414244L, 8742173604835111694L, 1356713207946601257L, -6543315440391727712L, 3460324945428715332L, 8643252979907682016L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final void setServerSideVerificationOptions(@Nullable ServerSideVerificationOptions serverSideVerificationOptions) {
        if (serverSideVerificationOptions != null) {
            try {
                zzcan zzcanVar = this.zzb;
                if (zzcanVar != null) {
                    zzcanVar.zzl(new zzcbb(serverSideVerificationOptions));
                }
            } catch (RemoteException e) {
                zzcec.zzl(new ObfuscatedString(new long[]{-9181122594854021663L, -5641522460142949520L, 3789621878184941218L, 290237313955371746L, 4361836852869461362L, -5888348104277124811L}).toString(), e);
            }
        }
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final void show(@NonNull Activity activity, @NonNull OnUserEarnedRewardListener onUserEarnedRewardListener) {
        this.zzd.zzc(onUserEarnedRewardListener);
        if (activity == null) {
            zzcec.zzj(new ObfuscatedString(new long[]{8060132614643282223L, 6268616075713277422L, -6887074853280212440L, 4724234938060292191L, -8364343052527596416L, 3579007487459841013L, -523672614264506546L, -518928519038916549L, 916083481713513757L, -8362454472686663499L, 8016694276942908842L, -4766073445866718694L, -8555637292510154389L, -7593020247102032600L}).toString());
        }
        try {
            zzcan zzcanVar = this.zzb;
            if (zzcanVar != null) {
                zzcanVar.zzk(this.zzd);
                this.zzb.zzm(ObjectWrapper.wrap(activity));
            }
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{8120063025090594406L, -4871553304989386650L, 8140279753440846786L, -599516403345093002L, 1545678101926475532L, 8717817856418271873L}).toString(), e);
        }
    }

    public final void zza(com.google.android.gms.ads.internal.client.zzdx zzdxVar, RewardedAdLoadCallback rewardedAdLoadCallback) {
        try {
            zzcan zzcanVar = this.zzb;
            if (zzcanVar != null) {
                zzcanVar.zzf(com.google.android.gms.ads.internal.client.zzp.zza.zza(this.zzc, zzdxVar), new zzcba(rewardedAdLoadCallback, this));
            }
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{-627984733265930185L, 373289706872337585L, 2735437356824247180L, -7311255727038198346L, -5154871050318908690L, -926103879546780242L}).toString(), e);
        }
    }
}
