.class public Lcom/airbnb/lottie/Lottie;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static initialize(Lcom/airbnb/lottie/LottieConfig;)V
    .locals 1
    .param p0    # Lcom/airbnb/lottie/LottieConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieConfig;->networkFetcher:Lcom/airbnb/lottie/network/LottieNetworkFetcher;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/airbnb/lottie/L;->setFetcher(Lcom/airbnb/lottie/network/LottieNetworkFetcher;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/airbnb/lottie/LottieConfig;->cacheProvider:Lcom/airbnb/lottie/network/LottieNetworkCacheProvider;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/airbnb/lottie/L;->setCacheProvider(Lcom/airbnb/lottie/network/LottieNetworkCacheProvider;)V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieConfig;->enableSystraceMarkers:Z

    .line 12
    .line 13
    invoke-static {v0}, Lcom/airbnb/lottie/L;->setTraceEnabled(Z)V

    .line 14
    .line 15
    .line 16
    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieConfig;->enableNetworkCache:Z

    .line 17
    .line 18
    invoke-static {v0}, Lcom/airbnb/lottie/L;->setNetworkCacheEnabled(Z)V

    .line 19
    .line 20
    .line 21
    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieConfig;->disablePathInterpolatorCache:Z

    .line 22
    .line 23
    invoke-static {v0}, Lcom/airbnb/lottie/L;->setDisablePathInterpolatorCache(Z)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/airbnb/lottie/LottieConfig;->defaultAsyncUpdates:Lcom/airbnb/lottie/AsyncUpdates;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/airbnb/lottie/L;->setDefaultAsyncUpdates(Lcom/airbnb/lottie/AsyncUpdates;)V

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lcom/airbnb/lottie/LottieConfig;->reducedMotionOption:Lcom/airbnb/lottie/configurations/reducemotion/ReducedMotionOption;

    .line 32
    .line 33
    invoke-static {p0}, Lcom/airbnb/lottie/L;->setReducedMotionOption(Lcom/airbnb/lottie/configurations/reducemotion/ReducedMotionOption;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
