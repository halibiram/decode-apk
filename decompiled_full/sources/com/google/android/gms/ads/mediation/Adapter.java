package com.google.android.gms.ads.mediation;

import android.content.Context;
import androidx.annotation.NonNull;
import com.google.android.gms.ads.AdError;
import com.panda912.muddy.ObfuscatedString;
import java.util.List;

/* loaded from: classes2.dex */
public abstract class Adapter implements MediationExtrasReceiver {
    @NonNull
    public abstract com.google.android.gms.ads.VersionInfo getSDKVersionInfo();

    @NonNull
    public abstract com.google.android.gms.ads.VersionInfo getVersionInfo();

    public abstract void initialize(@NonNull Context context, @NonNull InitializationCompleteCallback initializationCompleteCallback, @NonNull List<MediationConfiguration> list);

    public void loadAppOpenAd(@NonNull MediationAppOpenAdConfiguration mediationAppOpenAdConfiguration, @NonNull MediationAdLoadCallback<MediationAppOpenAd, MediationAppOpenAdCallback> mediationAdLoadCallback) {
        mediationAdLoadCallback.onFailure(new AdError(7, getClass().getSimpleName().concat(new ObfuscatedString(new long[]{-8854014489062716611L, 7296022801209997071L, 7545580630088607017L, -1578628584122408128L, 8139877972894232919L}).toString()), new ObfuscatedString(new long[]{6879883684473447322L, -6680822388432218106L, -854818170450649625L, -2541879648950166521L, -198474131231263498L}).toString()));
    }

    public void loadBannerAd(@NonNull MediationBannerAdConfiguration mediationBannerAdConfiguration, @NonNull MediationAdLoadCallback<MediationBannerAd, MediationBannerAdCallback> mediationAdLoadCallback) {
        mediationAdLoadCallback.onFailure(new AdError(7, getClass().getSimpleName().concat(new ObfuscatedString(new long[]{8699896258865115798L, -5736788353811071259L, -2421266582696809530L, -5365344266728388732L, -7123451150147461441L}).toString()), new ObfuscatedString(new long[]{2774112254319422586L, 4818162071763527344L, 9123094346736788676L, 8802281260370281235L, 1547463719688407951L}).toString()));
    }

    public void loadInterscrollerAd(@NonNull MediationBannerAdConfiguration mediationBannerAdConfiguration, @NonNull MediationAdLoadCallback<MediationInterscrollerAd, MediationBannerAdCallback> mediationAdLoadCallback) {
        mediationAdLoadCallback.onFailure(new AdError(7, getClass().getSimpleName().concat(new ObfuscatedString(new long[]{-5630305280509396690L, -328280950088124239L, 6874866930537074188L, -8348969136924577452L, -7764675937165945941L, 8847374497342747136L}).toString()), new ObfuscatedString(new long[]{-7122409075280997052L, -7059106847298823256L, 5547031943721862231L, 3424515068117414222L, -4043762061366417584L}).toString()));
    }

    public void loadInterstitialAd(@NonNull MediationInterstitialAdConfiguration mediationInterstitialAdConfiguration, @NonNull MediationAdLoadCallback<MediationInterstitialAd, MediationInterstitialAdCallback> mediationAdLoadCallback) {
        mediationAdLoadCallback.onFailure(new AdError(7, getClass().getSimpleName().concat(new ObfuscatedString(new long[]{-5266828358267056126L, 4621656528911246673L, -6942634520446761040L, -4374456623966170249L, -550478986692874508L, 8129868531496748639L}).toString()), new ObfuscatedString(new long[]{-7636178448304347318L, -5856467450544397818L, 2843150657886529393L, 3451743533691148133L, 8429151981950446656L}).toString()));
    }

    public void loadNativeAd(@NonNull MediationNativeAdConfiguration mediationNativeAdConfiguration, @NonNull MediationAdLoadCallback<UnifiedNativeAdMapper, MediationNativeAdCallback> mediationAdLoadCallback) {
        mediationAdLoadCallback.onFailure(new AdError(7, getClass().getSimpleName().concat(new ObfuscatedString(new long[]{303577644859108893L, 2437293975795188758L, 3202489598337521710L, 3445390265577951762L, 8526464795589269776L}).toString()), new ObfuscatedString(new long[]{-853365839617221832L, 8042136370232065168L, 7491802133484783980L, 7816494179119832599L, 2852154095898095700L}).toString()));
    }

    public void loadRewardedAd(@NonNull MediationRewardedAdConfiguration mediationRewardedAdConfiguration, @NonNull MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> mediationAdLoadCallback) {
        mediationAdLoadCallback.onFailure(new AdError(7, getClass().getSimpleName().concat(new ObfuscatedString(new long[]{2360297201217864761L, -2646914066446109943L, 4448371844729658592L, 1421786825024156520L, 8239804826123203356L}).toString()), new ObfuscatedString(new long[]{-6286574590456922710L, 4112652620720161867L, 8366028432284325810L, 4442162020661681627L, 6936040315438008171L}).toString()));
    }

    public void loadRewardedInterstitialAd(@NonNull MediationRewardedAdConfiguration mediationRewardedAdConfiguration, @NonNull MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> mediationAdLoadCallback) {
        mediationAdLoadCallback.onFailure(new AdError(7, getClass().getSimpleName().concat(new ObfuscatedString(new long[]{-927298408197387117L, -2952860346425722164L, -4952860584254204844L, -3102483612664498046L, -3080081554410263113L, 7412594967299589890L, -3546174865686276705L}).toString()), new ObfuscatedString(new long[]{949521626857826454L, -4502598170393209144L, -668337677942483782L, -2942478168639858879L, -2082605829336547709L}).toString()));
    }
}
