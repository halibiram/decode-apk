.class public Lcom/airbnb/lottie/L;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static DBG:Z

.field public static final TAG:Ljava/lang/String;

.field private static cacheProvider:Lcom/airbnb/lottie/network/LottieNetworkCacheProvider;

.field private static defaultAsyncUpdates:Lcom/airbnb/lottie/AsyncUpdates;

.field private static disablePathInterpolatorCache:Z

.field private static fetcher:Lcom/airbnb/lottie/network/LottieNetworkFetcher;

.field private static lottieTrace:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/airbnb/lottie/utils/LottieTrace;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile networkCache:Lcom/airbnb/lottie/network/NetworkCache;

.field private static networkCacheEnabled:Z

.field private static volatile networkFetcher:Lcom/airbnb/lottie/network/NetworkFetcher;

.field private static reducedMotionOption:Lcom/airbnb/lottie/configurations/reducemotion/ReducedMotionOption;

.field private static traceEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lcom/airbnb/lottie/L;->TAG:Ljava/lang/String;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    sput-boolean v0, Lcom/airbnb/lottie/L;->DBG:Z

    .line 20
    .line 21
    sput-boolean v0, Lcom/airbnb/lottie/L;->traceEnabled:Z

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    sput-boolean v0, Lcom/airbnb/lottie/L;->networkCacheEnabled:Z

    .line 25
    .line 26
    sput-boolean v0, Lcom/airbnb/lottie/L;->disablePathInterpolatorCache:Z

    .line 27
    .line 28
    sget-object v0, Lcom/airbnb/lottie/AsyncUpdates;->AUTOMATIC:Lcom/airbnb/lottie/AsyncUpdates;

    .line 29
    .line 30
    sput-object v0, Lcom/airbnb/lottie/L;->defaultAsyncUpdates:Lcom/airbnb/lottie/AsyncUpdates;

    .line 31
    .line 32
    new-instance v0, Lcom/airbnb/lottie/configurations/reducemotion/SystemReducedMotionOption;

    .line 33
    .line 34
    invoke-direct {v0}, Lcom/airbnb/lottie/configurations/reducemotion/SystemReducedMotionOption;-><init>()V

    .line 35
    .line 36
    .line 37
    sput-object v0, Lcom/airbnb/lottie/L;->reducedMotionOption:Lcom/airbnb/lottie/configurations/reducemotion/ReducedMotionOption;

    .line 38
    .line 39
    return-void

    .line 40
    nop

    .line 41
    :array_0
    .array-data 8
        0x2059a3dbfbee4d50L    # 7.649296760522526E-153
        0x21fbaf7fcf82b89aL    # 5.542875959293285E-145
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static beginSection(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/airbnb/lottie/L;->traceEnabled:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Lcom/airbnb/lottie/L;->getTrace()Lcom/airbnb/lottie/utils/LottieTrace;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/utils/LottieTrace;->beginSection(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static endSection(Ljava/lang/String;)F
    .locals 1

    .line 1
    sget-boolean v0, Lcom/airbnb/lottie/L;->traceEnabled:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    invoke-static {}, Lcom/airbnb/lottie/L;->getTrace()Lcom/airbnb/lottie/utils/LottieTrace;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/utils/LottieTrace;->endSection(Ljava/lang/String;)F

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public static getDefaultAsyncUpdates()Lcom/airbnb/lottie/AsyncUpdates;
    .locals 1

    .line 1
    sget-object v0, Lcom/airbnb/lottie/L;->defaultAsyncUpdates:Lcom/airbnb/lottie/AsyncUpdates;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getDisablePathInterpolatorCache()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/airbnb/lottie/L;->disablePathInterpolatorCache:Z

    .line 2
    .line 3
    return v0
.end method

.method public static getReducedMotionOption()Lcom/airbnb/lottie/configurations/reducemotion/ReducedMotionOption;
    .locals 1

    .line 1
    sget-object v0, Lcom/airbnb/lottie/L;->reducedMotionOption:Lcom/airbnb/lottie/configurations/reducemotion/ReducedMotionOption;

    .line 2
    .line 3
    return-object v0
.end method

.method private static getTrace()Lcom/airbnb/lottie/utils/LottieTrace;
    .locals 2

    .line 1
    sget-object v0, Lcom/airbnb/lottie/L;->lottieTrace:Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/airbnb/lottie/utils/LottieTrace;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/airbnb/lottie/utils/LottieTrace;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/airbnb/lottie/utils/LottieTrace;-><init>()V

    .line 14
    .line 15
    .line 16
    sget-object v1, Lcom/airbnb/lottie/L;->lottieTrace:Ljava/lang/ThreadLocal;

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-object v0
.end method

.method public static isTraceEnabled()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/airbnb/lottie/L;->traceEnabled:Z

    .line 2
    .line 3
    return v0
.end method

.method private static synthetic lambda$networkCache$0(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    const/4 v2, 0x4

    .line 10
    new-array v2, v2, [J

    .line 11
    .line 12
    fill-array-data v2, :array_0

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-object v0

    .line 26
    nop

    :array_0
    .array-data 8
        -0x6fb6ba9b2c864c20L
        0x7c72077c2a5bc9L
        -0x22c320690f1b8f31L    # -1.375358352638331E141
        0x7c1dd190d76da1cdL    # 7.26479449440358E289
    .end array-data
.end method

.method public static networkCache(Landroid/content/Context;)Lcom/airbnb/lottie/network/NetworkCache;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    sget-boolean v0, Lcom/airbnb/lottie/L;->networkCacheEnabled:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    sget-object v0, Lcom/airbnb/lottie/L;->networkCache:Lcom/airbnb/lottie/network/NetworkCache;

    .line 12
    .line 13
    if-nez v0, :cond_3

    .line 14
    .line 15
    const-class v1, Lcom/airbnb/lottie/network/NetworkCache;

    .line 16
    .line 17
    monitor-enter v1

    .line 18
    :try_start_0
    sget-object v0, Lcom/airbnb/lottie/L;->networkCache:Lcom/airbnb/lottie/network/NetworkCache;

    .line 19
    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    new-instance v0, Lcom/airbnb/lottie/network/NetworkCache;

    .line 23
    .line 24
    sget-object v2, Lcom/airbnb/lottie/L;->cacheProvider:Lcom/airbnb/lottie/network/LottieNetworkCacheProvider;

    .line 25
    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    new-instance v2, L딃땧땩딽딃돤뎰돶딸땃딤돼땪땧돸돴뒀뒹땋땤땍됐듟땁듬될뎸됫될들디딻됐땔뒷땬됨돶땱땃뎡뎨땔듔땰뒐둔듨돰듼딻땝땰디딎되든딸둠딞됐딎돷돛뒻땍듔뎹돴돤땦땃뎬됩땜된딄땍두돸땯듽돳땝돼듐두땫뒛딤둬땤돶땃뎹땭돵땫땀땳듻됴땪땯돷땲돳땜땅됫땀땝돠돠딀둬땀돠뎹됐딁딝땟둥뒬딠땣땔뒤듌;

    .line 30
    .line 31
    invoke-direct {v2, p0}, L딃땧땩딽딃돤뎰돶딸땃딤돼땪땧돸돴뒀뒹땋땤땍됐듟땁듬될뎸됫될들디딻됐땔뒷땬됨돶땱땃뎡뎨땔듔땰뒐둔듨돰듼딻땝땰디딎되든딸둠딞됐딎돷돛뒻땍듔뎹돴돤땦땃뎬됩땜된딄땍두돸땯듽돳땝돼듐두땫뒛딤둬땤돶땃뎹땭돵땫땀땳듻됴땪땯돷땲돳땜땅됫땀땝돠돠딀둬땀돠뎹됐딁딝땟둥뒬딠땣땔뒤듌;-><init>(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    invoke-direct {v0, v2}, Lcom/airbnb/lottie/network/NetworkCache;-><init>(Lcom/airbnb/lottie/network/LottieNetworkCacheProvider;)V

    .line 35
    .line 36
    .line 37
    sput-object v0, Lcom/airbnb/lottie/L;->networkCache:Lcom/airbnb/lottie/network/NetworkCache;

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_2

    .line 42
    :cond_2
    :goto_1
    monitor-exit v1

    .line 43
    goto :goto_3

    .line 44
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p0

    .line 46
    :cond_3
    :goto_3
    return-object v0
.end method

.method public static networkFetcher(Landroid/content/Context;)Lcom/airbnb/lottie/network/NetworkFetcher;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/airbnb/lottie/L;->networkFetcher:Lcom/airbnb/lottie/network/NetworkFetcher;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    const-class v1, Lcom/airbnb/lottie/network/NetworkFetcher;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    sget-object v0, Lcom/airbnb/lottie/L;->networkFetcher:Lcom/airbnb/lottie/network/NetworkFetcher;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    new-instance v0, Lcom/airbnb/lottie/network/NetworkFetcher;

    .line 13
    .line 14
    invoke-static {p0}, Lcom/airbnb/lottie/L;->networkCache(Landroid/content/Context;)Lcom/airbnb/lottie/network/NetworkCache;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    sget-object v2, Lcom/airbnb/lottie/L;->fetcher:Lcom/airbnb/lottie/network/LottieNetworkFetcher;

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v2, Lcom/airbnb/lottie/network/DefaultLottieNetworkFetcher;

    .line 24
    .line 25
    invoke-direct {v2}, Lcom/airbnb/lottie/network/DefaultLottieNetworkFetcher;-><init>()V

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-direct {v0, p0, v2}, Lcom/airbnb/lottie/network/NetworkFetcher;-><init>(Lcom/airbnb/lottie/network/NetworkCache;Lcom/airbnb/lottie/network/LottieNetworkFetcher;)V

    .line 29
    .line 30
    .line 31
    sput-object v0, Lcom/airbnb/lottie/L;->networkFetcher:Lcom/airbnb/lottie/network/NetworkFetcher;

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_2

    .line 36
    :cond_1
    :goto_1
    monitor-exit v1

    .line 37
    goto :goto_3

    .line 38
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw p0

    .line 40
    :cond_2
    :goto_3
    return-object v0
.end method

.method public static setCacheProvider(Lcom/airbnb/lottie/network/LottieNetworkCacheProvider;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/airbnb/lottie/L;->cacheProvider:Lcom/airbnb/lottie/network/LottieNetworkCacheProvider;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    if-eqz p0, :cond_1

    .line 6
    .line 7
    :cond_0
    if-eqz v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    :cond_1
    return-void

    .line 16
    :cond_2
    sput-object p0, Lcom/airbnb/lottie/L;->cacheProvider:Lcom/airbnb/lottie/network/LottieNetworkCacheProvider;

    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    sput-object p0, Lcom/airbnb/lottie/L;->networkCache:Lcom/airbnb/lottie/network/NetworkCache;

    .line 20
    .line 21
    return-void
.end method

.method public static setDefaultAsyncUpdates(Lcom/airbnb/lottie/AsyncUpdates;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/airbnb/lottie/L;->defaultAsyncUpdates:Lcom/airbnb/lottie/AsyncUpdates;

    .line 2
    .line 3
    return-void
.end method

.method public static setDisablePathInterpolatorCache(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/airbnb/lottie/L;->disablePathInterpolatorCache:Z

    .line 2
    .line 3
    return-void
.end method

.method public static setFetcher(Lcom/airbnb/lottie/network/LottieNetworkFetcher;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/airbnb/lottie/L;->fetcher:Lcom/airbnb/lottie/network/LottieNetworkFetcher;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    if-eqz p0, :cond_1

    .line 6
    .line 7
    :cond_0
    if-eqz v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    :cond_1
    return-void

    .line 16
    :cond_2
    sput-object p0, Lcom/airbnb/lottie/L;->fetcher:Lcom/airbnb/lottie/network/LottieNetworkFetcher;

    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    sput-object p0, Lcom/airbnb/lottie/L;->networkFetcher:Lcom/airbnb/lottie/network/NetworkFetcher;

    .line 20
    .line 21
    return-void
.end method

.method public static setNetworkCacheEnabled(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/airbnb/lottie/L;->networkCacheEnabled:Z

    .line 2
    .line 3
    return-void
.end method

.method public static setReducedMotionOption(Lcom/airbnb/lottie/configurations/reducemotion/ReducedMotionOption;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/airbnb/lottie/L;->reducedMotionOption:Lcom/airbnb/lottie/configurations/reducemotion/ReducedMotionOption;

    .line 2
    .line 3
    return-void
.end method

.method public static setTraceEnabled(Z)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/airbnb/lottie/L;->traceEnabled:Z

    .line 2
    .line 3
    if-ne v0, p0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sput-boolean p0, Lcom/airbnb/lottie/L;->traceEnabled:Z

    .line 7
    .line 8
    if-eqz p0, :cond_1

    .line 9
    .line 10
    sget-object p0, Lcom/airbnb/lottie/L;->lottieTrace:Ljava/lang/ThreadLocal;

    .line 11
    .line 12
    if-nez p0, :cond_1

    .line 13
    .line 14
    new-instance p0, Ljava/lang/ThreadLocal;

    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 17
    .line 18
    .line 19
    sput-object p0, Lcom/airbnb/lottie/L;->lottieTrace:Ljava/lang/ThreadLocal;

    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroid/content/Context;)Ljava/io/File;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/airbnb/lottie/L;->lambda$networkCache$0(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method
