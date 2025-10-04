package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.AdLoadCallback;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.admanager.AdManagerInterstitialAd;
import com.google.android.gms.ads.admanager.AppEventListener;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzbpz extends AdManagerInterstitialAd {
    private final Context zza;
    private final com.google.android.gms.ads.internal.client.zzp zzb;
    private final com.google.android.gms.ads.internal.client.zzbu zzc;
    private final String zzd;
    private final zzbsr zze;

    @Nullable
    private AppEventListener zzf;

    @Nullable
    private FullScreenContentCallback zzg;

    @Nullable
    private OnPaidEventListener zzh;

    public zzbpz(Context context, String str) {
        zzbsr zzbsrVar = new zzbsr();
        this.zze = zzbsrVar;
        this.zza = context;
        this.zzd = str;
        this.zzb = com.google.android.gms.ads.internal.client.zzp.zza;
        this.zzc = com.google.android.gms.ads.internal.client.zzay.zza().zze(context, new com.google.android.gms.ads.internal.client.zzq(), str, zzbsrVar);
    }

    @Override // com.google.android.gms.ads.interstitial.InterstitialAd
    public final String getAdUnitId() {
        return this.zzd;
    }

    @Override // com.google.android.gms.ads.admanager.AdManagerInterstitialAd
    @Nullable
    public final AppEventListener getAppEventListener() {
        return this.zzf;
    }

    @Override // com.google.android.gms.ads.interstitial.InterstitialAd
    @Nullable
    public final FullScreenContentCallback getFullScreenContentCallback() {
        return this.zzg;
    }

    @Override // com.google.android.gms.ads.interstitial.InterstitialAd
    @Nullable
    public final OnPaidEventListener getOnPaidEventListener() {
        return this.zzh;
    }

    @Override // com.google.android.gms.ads.interstitial.InterstitialAd
    @NonNull
    public final ResponseInfo getResponseInfo() {
        com.google.android.gms.ads.internal.client.zzdn zzdnVar = null;
        try {
            com.google.android.gms.ads.internal.client.zzbu zzbuVar = this.zzc;
            if (zzbuVar != null) {
                zzdnVar = zzbuVar.zzk();
            }
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{7771293965198391008L, -4483141046103678408L, 1591743623489829967L, -127993749134494701L, 7741738530813077231L, -2868325045382970406L}).toString(), e);
        }
        return ResponseInfo.zzb(zzdnVar);
    }

    @Override // com.google.android.gms.ads.admanager.AdManagerInterstitialAd
    public final void setAppEventListener(@Nullable AppEventListener appEventListener) {
        zzaze zzazeVar;
        try {
            this.zzf = appEventListener;
            com.google.android.gms.ads.internal.client.zzbu zzbuVar = this.zzc;
            if (zzbuVar != null) {
                if (appEventListener != null) {
                    zzazeVar = new zzaze(appEventListener);
                } else {
                    zzazeVar = null;
                }
                zzbuVar.zzG(zzazeVar);
            }
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{2520396629336149260L, 7581455716021957606L, 6764624798028688697L, 8066431288583219109L, 136022247959135251L, -8670255165407887071L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.interstitial.InterstitialAd
    public final void setFullScreenContentCallback(@Nullable FullScreenContentCallback fullScreenContentCallback) {
        try {
            this.zzg = fullScreenContentCallback;
            com.google.android.gms.ads.internal.client.zzbu zzbuVar = this.zzc;
            if (zzbuVar != null) {
                zzbuVar.zzJ(new com.google.android.gms.ads.internal.client.zzbb(fullScreenContentCallback));
            }
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{-1983031324274228001L, 5886571873599279517L, -3599145699872696972L, 3645008239199674344L, 8037207164138709351L, 3571623075842528235L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.interstitial.InterstitialAd
    public final void setImmersiveMode(boolean z) {
        try {
            com.google.android.gms.ads.internal.client.zzbu zzbuVar = this.zzc;
            if (zzbuVar != null) {
                zzbuVar.zzL(z);
            }
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{-3830339227782154228L, 4271236827362679497L, 4739488168804664500L, -4060967001388803714L, 6062661624782171094L, -5581806591032768832L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.interstitial.InterstitialAd
    public final void setOnPaidEventListener(@Nullable OnPaidEventListener onPaidEventListener) {
        try {
            this.zzh = onPaidEventListener;
            com.google.android.gms.ads.internal.client.zzbu zzbuVar = this.zzc;
            if (zzbuVar != null) {
                zzbuVar.zzP(new com.google.android.gms.ads.internal.client.zzfe(onPaidEventListener));
            }
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{-2604146238922017413L, 7955327389738832354L, 6574261692304025009L, -4517745286509660755L, -201241503383582792L, 6204890286122455884L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.interstitial.InterstitialAd
    public final void show(@NonNull Activity activity) {
        if (activity == null) {
            zzcec.zzj(new ObfuscatedString(new long[]{-866152591404512447L, 418524674640835632L, -1676903414246380147L, 3104980930543090519L, -4720700293255373621L, -3428340103388693250L, 4037906452528484474L, -5110204804511033298L, 5341511295363928926L, 6605230448245162513L, -5509696699851076938L, 271160017181390885L, -1634098782620676040L, 4053794321698868539L}).toString());
        }
        try {
            com.google.android.gms.ads.internal.client.zzbu zzbuVar = this.zzc;
            if (zzbuVar != null) {
                zzbuVar.zzW(ObjectWrapper.wrap(activity));
            }
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{-3276797743230281242L, 5091078497834428880L, 3192057818722879323L, 9011395851212111721L, 692939279182349751L, -2999039105283768975L}).toString(), e);
        }
    }

    public final void zza(com.google.android.gms.ads.internal.client.zzdx zzdxVar, AdLoadCallback adLoadCallback) {
        try {
            com.google.android.gms.ads.internal.client.zzbu zzbuVar = this.zzc;
            if (zzbuVar != null) {
                zzbuVar.zzy(this.zzb.zza(this.zza, zzdxVar), new com.google.android.gms.ads.internal.client.zzh(adLoadCallback, this));
            }
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{-2736913667876939129L, 5493217108529239909L, -5830026198698416593L, -6423492776160142595L, 2251004733430658882L, -2554631819658424077L}).toString(), e);
            adLoadCallback.onAdFailedToLoad(new LoadAdError(0, new ObfuscatedString(new long[]{1413353016924890474L, -6579367411381789640L, 6145550323951879452L}).toString(), new ObfuscatedString(new long[]{-5419240814444466491L, 4772611220914305516L, 2875124221350728421L, -4533599372687581528L, -3682530273915948950L}).toString(), null, null));
        }
    }
}
