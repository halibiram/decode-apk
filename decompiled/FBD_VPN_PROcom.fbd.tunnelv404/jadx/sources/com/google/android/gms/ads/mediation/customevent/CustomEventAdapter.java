package com.google.android.gms.ads.mediation.customevent;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.mediation.MediationAdRequest;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationBannerListener;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.gms.ads.mediation.MediationNativeListener;
import com.google.android.gms.ads.mediation.NativeMediationAdRequest;
import com.google.android.gms.common.annotation.KeepForSdkWithMembers;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.internal.ads.zzcec;
import com.panda912.muddy.ObfuscatedString;

@KeepForSdkWithMembers
@KeepName
/* loaded from: classes2.dex */
public final class CustomEventAdapter implements MediationBannerAdapter, MediationInterstitialAdapter, MediationNativeAdapter {

    @VisibleForTesting
    static final AdError zza = new AdError(0, new ObfuscatedString(new long[]{7693001013475505082L, -8163074373539997683L, 2740418355147325978L, 1985511190439335029L, 533443869921117057L, -3021024153472992848L, -8915226321533109614L}).toString(), new ObfuscatedString(new long[]{-2025765056986884611L, -1909026405592473196L, -962153469871530705L, 8625124423968690279L, -6954598229896737084L}).toString());

    @Nullable
    @VisibleForTesting
    CustomEventBanner zzb;

    @Nullable
    @VisibleForTesting
    CustomEventInterstitial zzc;

    @Nullable
    @VisibleForTesting
    CustomEventNative zzd;
    private View zze;

    @Nullable
    private static Object zzb(Class cls, @Nullable String str) {
        try {
            if (str != null) {
                return cls.cast(Class.forName(str).getDeclaredConstructor(null).newInstance(null));
            }
            throw null;
        } catch (Throwable th) {
            zzcec.zzj(new ObfuscatedString(new long[]{3037543092192801395L, 2953882816931798129L, 2905184688938692196L, 1064490672136531256L, -3866758540173032770L, -7357660938087324737L, -5486669200200756033L}).toString() + str + new ObfuscatedString(new long[]{1702391990857775845L, -8704000404203297621L}).toString() + th.getMessage());
            return null;
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter
    @NonNull
    public View getBannerView() {
        return this.zze;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public void onDestroy() {
        CustomEventBanner customEventBanner = this.zzb;
        if (customEventBanner != null) {
            customEventBanner.onDestroy();
        }
        CustomEventInterstitial customEventInterstitial = this.zzc;
        if (customEventInterstitial != null) {
            customEventInterstitial.onDestroy();
        }
        CustomEventNative customEventNative = this.zzd;
        if (customEventNative != null) {
            customEventNative.onDestroy();
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public void onPause() {
        CustomEventBanner customEventBanner = this.zzb;
        if (customEventBanner != null) {
            customEventBanner.onPause();
        }
        CustomEventInterstitial customEventInterstitial = this.zzc;
        if (customEventInterstitial != null) {
            customEventInterstitial.onPause();
        }
        CustomEventNative customEventNative = this.zzd;
        if (customEventNative != null) {
            customEventNative.onPause();
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public void onResume() {
        CustomEventBanner customEventBanner = this.zzb;
        if (customEventBanner != null) {
            customEventBanner.onResume();
        }
        CustomEventInterstitial customEventInterstitial = this.zzc;
        if (customEventInterstitial != null) {
            customEventInterstitial.onResume();
        }
        CustomEventNative customEventNative = this.zzd;
        if (customEventNative != null) {
            customEventNative.onResume();
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter
    public void requestBannerAd(@NonNull Context context, @NonNull MediationBannerListener mediationBannerListener, @NonNull Bundle bundle, @NonNull AdSize adSize, @NonNull MediationAdRequest mediationAdRequest, @Nullable Bundle bundle2) {
        Bundle bundle3;
        CustomEventBanner customEventBanner = (CustomEventBanner) zzb(CustomEventBanner.class, bundle.getString(new ObfuscatedString(new long[]{-6837526299436456924L, 4493518396537907024L, 5849223047928317957L}).toString()));
        this.zzb = customEventBanner;
        if (customEventBanner == null) {
            mediationBannerListener.onAdFailedToLoad(this, zza);
            return;
        }
        if (bundle2 == null) {
            bundle3 = null;
        } else {
            bundle3 = bundle2.getBundle(bundle.getString(new ObfuscatedString(new long[]{385271721804553098L, 7921064281974357628L, 8498775375711262951L}).toString()));
        }
        Bundle bundle4 = bundle3;
        CustomEventBanner customEventBanner2 = this.zzb;
        customEventBanner2.getClass();
        customEventBanner2.requestBannerAd(context, new zza(this, mediationBannerListener), bundle.getString(new ObfuscatedString(new long[]{-8735561008476052670L, -6298701279458831322L, -7959652903843796156L}).toString()), adSize, mediationAdRequest, bundle4);
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public void requestInterstitialAd(@NonNull Context context, @NonNull MediationInterstitialListener mediationInterstitialListener, @NonNull Bundle bundle, @NonNull MediationAdRequest mediationAdRequest, @Nullable Bundle bundle2) {
        Bundle bundle3;
        CustomEventInterstitial customEventInterstitial = (CustomEventInterstitial) zzb(CustomEventInterstitial.class, bundle.getString(new ObfuscatedString(new long[]{1192696954235625232L, -2876503604529774110L, -5226233509803843724L}).toString()));
        this.zzc = customEventInterstitial;
        if (customEventInterstitial == null) {
            mediationInterstitialListener.onAdFailedToLoad(this, zza);
            return;
        }
        if (bundle2 == null) {
            bundle3 = null;
        } else {
            bundle3 = bundle2.getBundle(bundle.getString(new ObfuscatedString(new long[]{-2841512734986180896L, 8650892624573471361L, 2159800555014342794L}).toString()));
        }
        Bundle bundle4 = bundle3;
        CustomEventInterstitial customEventInterstitial2 = this.zzc;
        customEventInterstitial2.getClass();
        customEventInterstitial2.requestInterstitialAd(context, new zzb(this, this, mediationInterstitialListener), bundle.getString(new ObfuscatedString(new long[]{-4957469126896183441L, 7041686722944272913L, -4535557288174545303L}).toString()), mediationAdRequest, bundle4);
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeAdapter
    public void requestNativeAd(@NonNull Context context, @NonNull MediationNativeListener mediationNativeListener, @NonNull Bundle bundle, @NonNull NativeMediationAdRequest nativeMediationAdRequest, @Nullable Bundle bundle2) {
        Bundle bundle3;
        CustomEventNative customEventNative = (CustomEventNative) zzb(CustomEventNative.class, bundle.getString(new ObfuscatedString(new long[]{-6785084634868284764L, 7893822255487806797L, 2556639729286425404L}).toString()));
        this.zzd = customEventNative;
        if (customEventNative == null) {
            mediationNativeListener.onAdFailedToLoad(this, zza);
            return;
        }
        if (bundle2 == null) {
            bundle3 = null;
        } else {
            bundle3 = bundle2.getBundle(bundle.getString(new ObfuscatedString(new long[]{870175163950708065L, -1810527362186201857L, 4891382268623200627L}).toString()));
        }
        Bundle bundle4 = bundle3;
        CustomEventNative customEventNative2 = this.zzd;
        customEventNative2.getClass();
        customEventNative2.requestNativeAd(context, new zzc(this, mediationNativeListener), bundle.getString(new ObfuscatedString(new long[]{-2447588792023814460L, -5110582229685457999L, -2496764221746688689L}).toString()), nativeMediationAdRequest, bundle4);
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public void showInterstitial() {
        CustomEventInterstitial customEventInterstitial = this.zzc;
        if (customEventInterstitial != null) {
            customEventInterstitial.showInterstitial();
        }
    }
}
