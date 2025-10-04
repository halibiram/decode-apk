package com.airbnb.lottie;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.airbnb.lottie.configurations.reducemotion.ReducedMotionOption;
import com.airbnb.lottie.configurations.reducemotion.SystemReducedMotionOption;
import com.airbnb.lottie.network.LottieNetworkCacheProvider;
import com.airbnb.lottie.network.LottieNetworkFetcher;
import com.panda912.muddy.ObfuscatedString;
import java.io.File;

/* loaded from: classes.dex */
public class LottieConfig {

    @Nullable
    final LottieNetworkCacheProvider cacheProvider;
    final AsyncUpdates defaultAsyncUpdates;
    final boolean disablePathInterpolatorCache;
    final boolean enableNetworkCache;
    final boolean enableSystraceMarkers;

    @Nullable
    final LottieNetworkFetcher networkFetcher;
    final ReducedMotionOption reducedMotionOption;

    /* loaded from: classes.dex */
    public static final class Builder {

        @Nullable
        private LottieNetworkCacheProvider cacheProvider;

        @Nullable
        private LottieNetworkFetcher networkFetcher;
        private boolean enableSystraceMarkers = false;
        private boolean enableNetworkCache = true;
        private boolean disablePathInterpolatorCache = true;
        private AsyncUpdates defaultAsyncUpdates = AsyncUpdates.AUTOMATIC;
        private ReducedMotionOption reducedMotionOption = new SystemReducedMotionOption();

        @NonNull
        public LottieConfig build() {
            return new LottieConfig(this.networkFetcher, this.cacheProvider, this.enableSystraceMarkers, this.enableNetworkCache, this.disablePathInterpolatorCache, this.defaultAsyncUpdates, this.reducedMotionOption);
        }

        @NonNull
        public Builder setDefaultAsyncUpdates(AsyncUpdates asyncUpdates) {
            this.defaultAsyncUpdates = asyncUpdates;
            return this;
        }

        @NonNull
        public Builder setDisablePathInterpolatorCache(boolean z) {
            this.disablePathInterpolatorCache = z;
            return this;
        }

        @NonNull
        public Builder setEnableNetworkCache(boolean z) {
            this.enableNetworkCache = z;
            return this;
        }

        @NonNull
        public Builder setEnableSystraceMarkers(boolean z) {
            this.enableSystraceMarkers = z;
            return this;
        }

        @NonNull
        public Builder setNetworkCacheDir(@NonNull final File file) {
            if (this.cacheProvider == null) {
                this.cacheProvider = new LottieNetworkCacheProvider() { // from class: com.airbnb.lottie.LottieConfig.Builder.1
                    @Override // com.airbnb.lottie.network.LottieNetworkCacheProvider
                    @NonNull
                    public File getCacheDir() {
                        if (file.isDirectory()) {
                            return file;
                        }
                        throw new IllegalArgumentException(new ObfuscatedString(new long[]{-4166288083203459067L, 9156605200646718007L, -5880467288627286139L, 6013515223887524335L, 6397054135032174406L}).toString());
                    }
                };
                return this;
            }
            throw new IllegalStateException(new ObfuscatedString(new long[]{4515380424229217034L, 332194523148138529L, 5676905602922110741L, 5728832575314788378L, 383364148872200941L, -2302305975680094229L}).toString());
        }

        @NonNull
        public Builder setNetworkCacheProvider(@NonNull final LottieNetworkCacheProvider lottieNetworkCacheProvider) {
            if (this.cacheProvider == null) {
                this.cacheProvider = new LottieNetworkCacheProvider() { // from class: com.airbnb.lottie.LottieConfig.Builder.2
                    @Override // com.airbnb.lottie.network.LottieNetworkCacheProvider
                    @NonNull
                    public File getCacheDir() {
                        File cacheDir = lottieNetworkCacheProvider.getCacheDir();
                        if (cacheDir.isDirectory()) {
                            return cacheDir;
                        }
                        throw new IllegalArgumentException(new ObfuscatedString(new long[]{-7379109615507240890L, -3009203453360745414L, 2168758281520618471L, -8389925046129087241L, 3086900580484201776L}).toString());
                    }
                };
                return this;
            }
            throw new IllegalStateException(new ObfuscatedString(new long[]{3661092353185365769L, -8908453789127494305L, -5300292704238570450L, 69989152408388774L, 4704951632421810527L, 2211677524929349995L}).toString());
        }

        @NonNull
        public Builder setNetworkFetcher(@NonNull LottieNetworkFetcher lottieNetworkFetcher) {
            this.networkFetcher = lottieNetworkFetcher;
            return this;
        }

        @NonNull
        public Builder setReducedMotionOption(ReducedMotionOption reducedMotionOption) {
            this.reducedMotionOption = reducedMotionOption;
            return this;
        }
    }

    private LottieConfig(@Nullable LottieNetworkFetcher lottieNetworkFetcher, @Nullable LottieNetworkCacheProvider lottieNetworkCacheProvider, boolean z, boolean z2, boolean z3, AsyncUpdates asyncUpdates, ReducedMotionOption reducedMotionOption) {
        this.networkFetcher = lottieNetworkFetcher;
        this.cacheProvider = lottieNetworkCacheProvider;
        this.enableSystraceMarkers = z;
        this.enableNetworkCache = z2;
        this.disablePathInterpolatorCache = z3;
        this.defaultAsyncUpdates = asyncUpdates;
        this.reducedMotionOption = reducedMotionOption;
    }
}
