package com.airbnb.lottie;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import com.airbnb.lottie.configurations.reducemotion.ReducedMotionOption;
import com.airbnb.lottie.configurations.reducemotion.SystemReducedMotionOption;
import com.airbnb.lottie.network.DefaultLottieNetworkFetcher;
import com.airbnb.lottie.network.LottieNetworkCacheProvider;
import com.airbnb.lottie.network.LottieNetworkFetcher;
import com.airbnb.lottie.network.NetworkCache;
import com.airbnb.lottie.network.NetworkFetcher;
import com.airbnb.lottie.utils.LottieTrace;
import com.panda912.muddy.ObfuscatedString;
import defpackage.C0914xf9eefc47;
import java.io.File;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public class L {
    private static LottieNetworkCacheProvider cacheProvider;
    private static LottieNetworkFetcher fetcher;
    private static ThreadLocal<LottieTrace> lottieTrace;
    private static volatile NetworkCache networkCache;
    private static volatile NetworkFetcher networkFetcher;
    public static final String TAG = new ObfuscatedString(new long[]{2331074447360806224L, 2448743785883154586L}).toString();
    public static boolean DBG = false;
    private static boolean traceEnabled = false;
    private static boolean networkCacheEnabled = true;
    private static boolean disablePathInterpolatorCache = true;
    private static AsyncUpdates defaultAsyncUpdates = AsyncUpdates.AUTOMATIC;
    private static ReducedMotionOption reducedMotionOption = new SystemReducedMotionOption();

    private L() {
    }

    public static void beginSection(String str) {
        if (!traceEnabled) {
            return;
        }
        getTrace().beginSection(str);
    }

    public static float endSection(String str) {
        if (!traceEnabled) {
            return 0.0f;
        }
        return getTrace().endSection(str);
    }

    public static AsyncUpdates getDefaultAsyncUpdates() {
        return defaultAsyncUpdates;
    }

    public static boolean getDisablePathInterpolatorCache() {
        return disablePathInterpolatorCache;
    }

    public static ReducedMotionOption getReducedMotionOption() {
        return reducedMotionOption;
    }

    private static LottieTrace getTrace() {
        LottieTrace lottieTrace2 = lottieTrace.get();
        if (lottieTrace2 == null) {
            LottieTrace lottieTrace3 = new LottieTrace();
            lottieTrace.set(lottieTrace3);
            return lottieTrace3;
        }
        return lottieTrace2;
    }

    public static boolean isTraceEnabled() {
        return traceEnabled;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ File lambda$networkCache$0(Context context) {
        return new File(context.getCacheDir(), new ObfuscatedString(new long[]{-8049826559601036320L, 35028273585609673L, -2504881453345247025L, 8943534855047455181L}).toString());
    }

    @Nullable
    public static NetworkCache networkCache(@NonNull Context context) {
        if (!networkCacheEnabled) {
            return null;
        }
        Context applicationContext = context.getApplicationContext();
        NetworkCache networkCache2 = networkCache;
        if (networkCache2 == null) {
            synchronized (NetworkCache.class) {
                try {
                    networkCache2 = networkCache;
                    if (networkCache2 == null) {
                        LottieNetworkCacheProvider lottieNetworkCacheProvider = cacheProvider;
                        if (lottieNetworkCacheProvider == null) {
                            lottieNetworkCacheProvider = new C0914xf9eefc47(applicationContext);
                        }
                        networkCache2 = new NetworkCache(lottieNetworkCacheProvider);
                        networkCache = networkCache2;
                    }
                } finally {
                }
            }
        }
        return networkCache2;
    }

    @NonNull
    public static NetworkFetcher networkFetcher(@NonNull Context context) {
        NetworkFetcher networkFetcher2 = networkFetcher;
        if (networkFetcher2 == null) {
            synchronized (NetworkFetcher.class) {
                try {
                    networkFetcher2 = networkFetcher;
                    if (networkFetcher2 == null) {
                        NetworkCache networkCache2 = networkCache(context);
                        LottieNetworkFetcher lottieNetworkFetcher = fetcher;
                        if (lottieNetworkFetcher == null) {
                            lottieNetworkFetcher = new DefaultLottieNetworkFetcher();
                        }
                        networkFetcher2 = new NetworkFetcher(networkCache2, lottieNetworkFetcher);
                        networkFetcher = networkFetcher2;
                    }
                } finally {
                }
            }
        }
        return networkFetcher2;
    }

    public static void setCacheProvider(LottieNetworkCacheProvider lottieNetworkCacheProvider) {
        LottieNetworkCacheProvider lottieNetworkCacheProvider2 = cacheProvider;
        if (lottieNetworkCacheProvider2 != null || lottieNetworkCacheProvider != null) {
            if (lottieNetworkCacheProvider2 != null && lottieNetworkCacheProvider2.equals(lottieNetworkCacheProvider)) {
                return;
            }
            cacheProvider = lottieNetworkCacheProvider;
            networkCache = null;
        }
    }

    public static void setDefaultAsyncUpdates(AsyncUpdates asyncUpdates) {
        defaultAsyncUpdates = asyncUpdates;
    }

    public static void setDisablePathInterpolatorCache(boolean z) {
        disablePathInterpolatorCache = z;
    }

    public static void setFetcher(LottieNetworkFetcher lottieNetworkFetcher) {
        LottieNetworkFetcher lottieNetworkFetcher2 = fetcher;
        if (lottieNetworkFetcher2 != null || lottieNetworkFetcher != null) {
            if (lottieNetworkFetcher2 != null && lottieNetworkFetcher2.equals(lottieNetworkFetcher)) {
                return;
            }
            fetcher = lottieNetworkFetcher;
            networkFetcher = null;
        }
    }

    public static void setNetworkCacheEnabled(boolean z) {
        networkCacheEnabled = z;
    }

    public static void setReducedMotionOption(ReducedMotionOption reducedMotionOption2) {
        reducedMotionOption = reducedMotionOption2;
    }

    public static void setTraceEnabled(boolean z) {
        if (traceEnabled == z) {
            return;
        }
        traceEnabled = z;
        if (z && lottieTrace == null) {
            lottieTrace = new ThreadLocal<>();
        }
    }
}
