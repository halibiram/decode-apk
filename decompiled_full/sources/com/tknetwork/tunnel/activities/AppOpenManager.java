package com.tknetwork.tunnel.activities;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.OnLifecycleEvent;
import androidx.lifecycle.ProcessLifecycleOwner;
/*import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.appopen.AppOpenAd;*/
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes3.dex */
public class AppOpenManager /*implements LifecycleObserver, Application.ActivityLifecycleCallbacks*/ {
    /*private static String AD_UNIT_ID;
    private static final String LOG_TAG = new ObfuscatedString(new long[]{7825163482951535420L, 2761192844274173780L, -372350265589180191L}).toString();
    private static boolean isShowingAds = false;
    private AppOpenAd appOpenAd = null;
    private Activity currentActivity;
    private AppOpenAd.AppOpenAdLoadCallback loadCallback;
    private Application myApplication;

    public AppOpenManager(Application application, String str) {
        AD_UNIT_ID = str;
        this.myApplication = application;
        application.registerActivityLifecycleCallbacks(this);
        ProcessLifecycleOwner.get().getLifecycle().addObserver(this);
    }

    private AdRequest getAdRequest() {
        return new AdRequest.Builder().build();
    }

    public void fetchAd() {
        if (isAdAvailable()) {
            return;
        }
        this.loadCallback = new AppOpenAd.AppOpenAdLoadCallback() { // from class: com.tknetwork.tunnel.activities.AppOpenManager.1
            @Override // com.google.android.gms.ads.AdLoadCallback
            public void onAdFailedToLoad(@NonNull LoadAdError loadAdError) {
                super.onAdFailedToLoad(loadAdError);
                new ObfuscatedString(new long[]{-8516073894501937229L, 6777929506690053648L}).toString();
                new ObfuscatedString(new long[]{3760698896759453308L, -8063675033649667334L, -5491823652694657939L, -4935839473184158959L}).toString();
                loadAdError.getMessage();
            }

            @Override // com.google.android.gms.ads.AdLoadCallback
            public void onAdLoaded(@NonNull AppOpenAd appOpenAd) {
                super.onAdLoaded((AnonymousClass1) appOpenAd);
                AppOpenManager.this.appOpenAd = appOpenAd;
            }
        };
        AppOpenAd.load(this.myApplication, AD_UNIT_ID, getAdRequest(), this.loadCallback);
    }

    public boolean isAdAvailable() {
        if (this.appOpenAd != null) {
            return true;
        }
        return false;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(@NonNull Activity activity, @Nullable Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(@NonNull Activity activity) {
        this.currentActivity = null;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(@NonNull Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(@NonNull Activity activity) {
        this.currentActivity = activity;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(@NonNull Activity activity, @NonNull Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(@NonNull Activity activity) {
        this.currentActivity = activity;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(@NonNull Activity activity) {
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_START)
    public void onStart() {
        showAdIfAvailable();
    }

    public void showAdIfAvailable() {
        if (!isShowingAds && isAdAvailable()) {
            this.appOpenAd.setFullScreenContentCallback(new FullScreenContentCallback() { // from class: com.tknetwork.tunnel.activities.AppOpenManager.2
                @Override // com.google.android.gms.ads.FullScreenContentCallback
                public void onAdDismissedFullScreenContent() {
                    super.onAdDismissedFullScreenContent();
                    AppOpenManager.this.appOpenAd = null;
                    AppOpenManager.isShowingAds = false;
                    AppOpenManager.this.fetchAd();
                }

                @Override // com.google.android.gms.ads.FullScreenContentCallback
                public void onAdFailedToShowFullScreenContent(@NonNull AdError adError) {
                    super.onAdFailedToShowFullScreenContent(adError);
                }

                @Override // com.google.android.gms.ads.FullScreenContentCallback
                public void onAdImpression() {
                    super.onAdImpression();
                }

                @Override // com.google.android.gms.ads.FullScreenContentCallback
                public void onAdShowedFullScreenContent() {
                    super.onAdShowedFullScreenContent();
                    AppOpenManager.isShowingAds = true;
                }
            });
            this.appOpenAd.show(this.currentActivity);
            return;
        }
        fetchAd();
    }*/
}
