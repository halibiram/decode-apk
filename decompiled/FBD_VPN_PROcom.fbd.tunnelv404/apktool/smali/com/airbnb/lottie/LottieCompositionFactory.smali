.class public Lcom/airbnb/lottie/LottieCompositionFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final GZIP_MAGIC:[B

.field private static final ZIP_MAGIC:[B

.field private static final taskCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/LottieTask<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final taskIdleListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/airbnb/lottie/LottieTaskIdleListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/airbnb/lottie/LottieCompositionFactory;->taskCache:Ljava/util/Map;

    .line 7
    .line 8
    new-instance v0, Ljava/util/HashSet;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/airbnb/lottie/LottieCompositionFactory;->taskIdleListeners:Ljava/util/Set;

    .line 14
    .line 15
    const/4 v0, 0x3

    .line 16
    const/4 v1, 0x4

    .line 17
    new-array v1, v1, [B

    .line 18
    .line 19
    fill-array-data v1, :array_0

    .line 20
    .line 21
    .line 22
    sput-object v1, Lcom/airbnb/lottie/LottieCompositionFactory;->ZIP_MAGIC:[B

    .line 23
    .line 24
    new-array v0, v0, [B

    .line 25
    .line 26
    fill-array-data v0, :array_1

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/airbnb/lottie/LottieCompositionFactory;->GZIP_MAGIC:[B

    .line 30
    .line 31
    return-void

    .line 32
    nop

    .line 33
    :array_0
    .array-data 1
        0x50t
        0x4bt
        0x3t
        0x4t
    .end array-data

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    :array_1
    .array-data 1
        0x1ft
        -0x75t
        0x8t
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

.method private static cache(Ljava/lang/String;Ljava/util/concurrent/Callable;Ljava/lang/Runnable;)Lcom/airbnb/lottie/LottieTask;
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Callable<",
            "Lcom/airbnb/lottie/LottieResult<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;>;",
            "Ljava/lang/Runnable;",
            ")",
            "Lcom/airbnb/lottie/LottieTask<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    move-object v1, v0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lcom/airbnb/lottie/model/LottieCompositionCache;->getInstance()Lcom/airbnb/lottie/model/LottieCompositionCache;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1, p0}, Lcom/airbnb/lottie/model/LottieCompositionCache;->get(Ljava/lang/String;)Lcom/airbnb/lottie/LottieComposition;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :goto_0
    if-eqz v1, :cond_1

    .line 15
    .line 16
    new-instance v0, Lcom/airbnb/lottie/LottieTask;

    .line 17
    .line 18
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/LottieTask;-><init>(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    if-eqz p0, :cond_2

    .line 22
    .line 23
    sget-object v1, Lcom/airbnb/lottie/LottieCompositionFactory;->taskCache:Ljava/util/Map;

    .line 24
    .line 25
    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lcom/airbnb/lottie/LottieTask;

    .line 36
    .line 37
    :cond_2
    if-eqz v0, :cond_4

    .line 38
    .line 39
    if-eqz p2, :cond_3

    .line 40
    .line 41
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 42
    .line 43
    .line 44
    :cond_3
    return-object v0

    .line 45
    :cond_4
    new-instance p2, Lcom/airbnb/lottie/LottieTask;

    .line 46
    .line 47
    invoke-direct {p2, p1}, Lcom/airbnb/lottie/LottieTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 48
    .line 49
    .line 50
    if-eqz p0, :cond_5

    .line 51
    .line 52
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 53
    .line 54
    const/4 v0, 0x0

    .line 55
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 56
    .line 57
    .line 58
    new-instance v1, L딎됐돶듐뎨딃뒼뒈땪뒐땄돨땨두뒛땡땡돷땍땤둠돷뒷듟된듨딝땨딞돸땰딃딜땯돶땹땪뒛돰듼딤땣뒋뒬돝딐뎰딄땯둣딅됨뒷뒛뎨돰딌딀땩땫둬땁둥둬땮땨딞딠듸땜땭뎸땻뒉뒉뒬딎땪땰땮딞돵땡딄뒬됫돠딅땤땭딸됩뒘두둬둠둔뎹땫땡둠땻됴뒐뎻딽땅뎨됨디듌돶땭딤돵땋둔딜듬둣땔됩뒤땃땣딹땨땹뒋땤;

    .line 59
    .line 60
    const/4 v2, 0x0

    .line 61
    invoke-direct {v1, p0, p1, v2}, L딎됐돶듐뎨딃뒼뒈땪뒐땄돨땨두뒛땡땡돷땍땤둠돷뒷듟된듨딝땨딞돸땰딃딜땯돶땹땪뒛돰듼딤땣뒋뒬돝딐뎰딄땯둣딅됨뒷뒛뎨돰딌딀땩땫둬땁둥둬땮땨딞딠듸땜땭뎸땻뒉뒉뒬딎땪땰땮딞돵땡딄뒬됫돠딅땤땭딸됩뒘두둬둠둔뎹땫땡둠땻됴뒐뎻딽땅뎨됨디듌돶땭딤돵땋둔딜듬둣땔됩뒤땃땣딹땨땹뒋땤;-><init>(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, v1}, Lcom/airbnb/lottie/LottieTask;->addListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;

    .line 65
    .line 66
    .line 67
    new-instance v1, L딎됐돶듐뎨딃뒼뒈땪뒐땄돨땨두뒛땡땡돷땍땤둠돷뒷듟된듨딝땨딞돸땰딃딜땯돶땹땪뒛돰듼딤땣뒋뒬돝딐뎰딄땯둣딅됨뒷뒛뎨돰딌딀땩땫둬땁둥둬땮땨딞딠듸땜땭뎸땻뒉뒉뒬딎땪땰땮딞돵땡딄뒬됫돠딅땤땭딸됩뒘두둬둠둔뎹땫땡둠땻됴뒐뎻딽땅뎨됨디듌돶땭딤돵땋둔딜듬둣땔됩뒤땃땣딹땨땹뒋땤;

    .line 68
    .line 69
    const/4 v2, 0x1

    .line 70
    invoke-direct {v1, p0, p1, v2}, L딎됐돶듐뎨딃뒼뒈땪뒐땄돨땨두뒛땡땡돷땍땤둠돷뒷듟된듨딝땨딞돸땰딃딜땯돶땹땪뒛돰듼딤땣뒋뒬돝딐뎰딄땯둣딅됨뒷뒛뎨돰딌딀땩땫둬땁둥둬땮땨딞딠듸땜땭뎸땻뒉뒉뒬딎땪땰땮딞돵땡딄뒬됫돠딅땤땭딸됩뒘두둬둠둔뎹땫땡둠땻됴뒐뎻딽땅뎨됨디듌돶땭딤돵땋둔딜듬둣땔됩뒤땃땣딹땨땹뒋땤;-><init>(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2, v1}, Lcom/airbnb/lottie/LottieTask;->addFailureListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-nez p1, :cond_5

    .line 81
    .line 82
    sget-object p1, Lcom/airbnb/lottie/LottieCompositionFactory;->taskCache:Ljava/util/Map;

    .line 83
    .line 84
    invoke-interface {p1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    invoke-interface {p1}, Ljava/util/Map;->size()I

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    const/4 p1, 0x1

    .line 92
    if-ne p0, p1, :cond_5

    .line 93
    .line 94
    invoke-static {v0}, Lcom/airbnb/lottie/LottieCompositionFactory;->notifyTaskCacheIdleListeners(Z)V

    .line 95
    .line 96
    .line 97
    :cond_5
    return-object p2
.end method

.method public static clearCache(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Lcom/airbnb/lottie/LottieCompositionFactory;->clearCache(Landroid/content/Context;Z)V

    return-void
.end method

.method public static clearCache(Landroid/content/Context;Z)V
    .locals 1

    .line 2
    sget-object v0, Lcom/airbnb/lottie/LottieCompositionFactory;->taskCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 3
    invoke-static {}, Lcom/airbnb/lottie/model/LottieCompositionCache;->getInstance()Lcom/airbnb/lottie/model/LottieCompositionCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/LottieCompositionCache;->clear()V

    if-eqz p1, :cond_0

    .line 4
    invoke-static {p0}, Lcom/airbnb/lottie/L;->networkCache(Landroid/content/Context;)Lcom/airbnb/lottie/network/NetworkCache;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/airbnb/lottie/network/NetworkCache;->clear()V

    :cond_0
    return-void
.end method

.method private static findImageAssetForFileName(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/String;)Lcom/airbnb/lottie/LottieImageAsset;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieComposition;->getImages()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/airbnb/lottie/LottieImageAsset;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieImageAsset;->getFileName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    return-object v0

    .line 36
    :cond_1
    const/4 p0, 0x0

    .line 37
    return-object p0
.end method

.method public static fromAsset(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieTask<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x2

    new-array v2, v2, [J

    fill-array-data v2, :array_0

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {p0, p1, v0}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromAsset(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 8
        -0xbe06e44d7683cdaL
        0x5e165e67d6884724L
    .end array-data
.end method

.method public static fromAsset(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieTask<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 4
    new-instance v0, L딌땰듻땤듟뎬뒹됩뒉듻땣땳됐듸듌땲딃땪뎬뒤돛듌땐둥든땦뒻땐딅땩돨뎽뒼돰드듰땍땹도듟딝딀뎡뒨듟들딅딄땫딐딁두땫딟땀듟땵둠드땯딨땧뒝돤땀뒘둠들뎡듌듽둘땄땣딎딁둡됨돴딸뒝땰땸뒈딤땳들될땫들딝땦땦뒙땅뎻뎬둡뒬돛듐땻둘듨땁딄땐됴뒋땫땻땀둠듸뒻든돛딐돰땥듰둣뒻딟딎뒤듬돨돛따;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, p2}, L딌땰듻땤듟뎬뒹됩뒉듻땣땳됐듸듌땲딃땪뎬뒤돛듌땐둥든땦뒻땐딅땩돨뎽뒼돰드듰땍땹도듟딝딀뎡뒨듟들딅딄땫딐딁두땫딟땀듟땵둠드땯딨땧뒝돤땀뒘둠들뎡듌듽둘땄땣딎딁둡됨돴딸뒝땰땸뒈딤땳들될땫들딝땦땦뒙땅뎻뎬둡뒬돛듐땻둘듨땁딄땐됴뒋땫땻땀둠듸뒻든돛딐돰땥듰둣뒻딟딎뒤듬돨돛따;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-static {p2, v0, p0}, Lcom/airbnb/lottie/LottieCompositionFactory;->cache(Ljava/lang/String;Ljava/util/concurrent/Callable;Ljava/lang/Runnable;)Lcom/airbnb/lottie/LottieTask;

    move-result-object p0

    return-object p0
.end method

.method public static fromAssetSync(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieResult<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x2

    new-array v2, v2, [J

    fill-array-data v2, :array_0

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {p0, p1, v0}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromAssetSync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 8
        0xe0651520b5efcbcL
        -0x7a155712b4e9bd3aL
    .end array-data
.end method

.method public static fromAssetSync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieResult<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/airbnb/lottie/model/LottieCompositionCache;->getInstance()Lcom/airbnb/lottie/model/LottieCompositionCache;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/model/LottieCompositionCache;->get(Ljava/lang/String;)Lcom/airbnb/lottie/LottieComposition;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    new-instance p0, Lcom/airbnb/lottie/LottieResult;

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Object;)V

    return-object p0

    .line 5
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromInputStreamSync(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 6
    new-instance p1, Lcom/airbnb/lottie/LottieResult;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Throwable;)V

    return-object p1
.end method

.method public static fromInputStream(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieTask<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    move-object p0, v0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :goto_0
    new-instance v1, L딎땀땨딻땧딄뎡두뒛딻땍땀뎰뒹땣두돷뒈됫돵됫딌뒋땄듰뎸듔땪땁땰뒘딨땫둥돵딸듔둘뒻됩두뒤됴돰돵땍둠땠땦딐뎸딐뒐딻뎡땍둬뎸둔돷땡둥땭땻돼딨돠땜딅됨돸둘땋돳뎬뒹듰뒨돳땭딻드땀뒷뎻딤땃듐득돷딟딄돨뎸땐둣돸딠둣땄듸뒤딤듌듼땻돛듬딠땥된될땯되뎽득땹뒉뒋뒻딄듐뒤땲땭땔뒛듽따돵;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-direct {v1, v2, p2, p0, p1}, L딎땀땨딻땧딄뎡두뒛딻땍땀뎰뒹땣두돷뒈됫돵됫딌뒋땄듰뎸듔땪땁땰뒘딨땫둥돵딸듔둘뒻됩두뒤됴돰돵땍둠땠땦딐뎸딐뒐딻뎡땍둬뎸둔돷땡둥땭땻돼딨돠땜딅됨돸둘땋돳뎬뒹듰뒨돳땭딻드땀뒷뎻딤땃듐득돷딟딄돨뎸땐둣돸딠둣땄듸뒤딤듌듼땻돛듬딠땥된될땯되뎽득땹뒉뒋뒻딄듐뒤땲땭땔뒛듽따돵;-><init>(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p2, v1, v0}, Lcom/airbnb/lottie/LottieCompositionFactory;->cache(Ljava/lang/String;Ljava/util/concurrent/Callable;Ljava/lang/Runnable;)Lcom/airbnb/lottie/LottieTask;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public static fromInputStreamSync(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieResult<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/airbnb/lottie/model/LottieCompositionCache;->getInstance()Lcom/airbnb/lottie/model/LottieCompositionCache;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/model/LottieCompositionCache;->get(Ljava/lang/String;)Lcom/airbnb/lottie/LottieComposition;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :goto_0
    if-eqz v0, :cond_1

    .line 14
    .line 15
    new-instance p0, Lcom/airbnb/lottie/LottieResult;

    .line 16
    .line 17
    invoke-direct {p0, v0}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_1
    :try_start_0
    invoke-static {p1}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {p1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->isZipCompressed(Lokio/BufferedSource;)Ljava/lang/Boolean;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    new-instance v0, Ljava/util/zip/ZipInputStream;

    .line 40
    .line 41
    invoke-interface {p1}, Lokio/BufferedSource;->inputStream()Ljava/io/InputStream;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-direct {v0, p1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 46
    .line 47
    .line 48
    invoke-static {p0, v0, p2}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromZipStreamSync(Landroid/content/Context;Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0

    .line 53
    :catch_0
    move-exception p0

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    invoke-static {p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->isGzipCompressed(Lokio/BufferedSource;)Ljava/lang/Boolean;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    if-eqz p0, :cond_3

    .line 64
    .line 65
    new-instance p0, Ljava/util/zip/GZIPInputStream;

    .line 66
    .line 67
    invoke-interface {p1}, Lokio/BufferedSource;->inputStream()Ljava/io/InputStream;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-direct {p0, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 72
    .line 73
    .line 74
    invoke-static {p0, p2}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    return-object p0

    .line 79
    :cond_3
    invoke-static {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->of(Lokio/BufferedSource;)Lcom/airbnb/lottie/parser/moshi/JsonReader;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-static {p0, p2}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonReaderSync(Lcom/airbnb/lottie/parser/moshi/JsonReader;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    .line 84
    .line 85
    .line 86
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    return-object p0

    .line 88
    :goto_1
    new-instance p1, Lcom/airbnb/lottie/LottieResult;

    .line 89
    .line 90
    invoke-direct {p1, p0}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Throwable;)V

    .line 91
    .line 92
    .line 93
    return-object p1
.end method

.method public static fromJson(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieTask<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, L돴뎬땐땰딽딞드딨뎸땸뎸도땀듬땩뒝땅뒹돴땀땵돷됩뎻땵땡땸땜딄딅뒘된땤드둣딄드딠뎡돸땀뒤돸됫땦듻듬딠딽땩딄듌둘땸듐돴딹땬딄땐돵들딻땵돰돶땰땥듼둡뎠땄들땬땫뒵딤뎡뒀뒹땭뒉딜두뎬뒻뒋돼둘돼딝땥돶듬땪듟뎡딀따땬뎸딅둥땐됩땅도딌땱둘딽딀뒈땤뎹땰돛돷듽둑딄드뒐딝땅땱됩딃뎰둬;

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    invoke-direct {v0, p0, p1, v1}, L돴뎬땐땰딽딞드딨뎸땸뎸도땀듬땩뒝땅뒹돴땀땵돷됩뎻땵땡땸땜딄딅뒘된땤드둣딄드딠뎡돸땀뒤돸됫땦듻듬딠딽땩딄듌둘땸듐돴딹땬딄땐돵들딻땵돰돶땰땥듼둡뎠땄들땬땫뒵딤뎡뒀뒹땭뒉딜두뎬뒻뒋돼둘돼딝땥돶듬땪듟뎡딀따땬뎸딅둥땐됩땅도딌땱둘딽딀뒈땤뎹땰돛돷듽둑딄드뒐딝땅땱됩딃뎰둬;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 5
    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    invoke-static {p1, v0, p0}, Lcom/airbnb/lottie/LottieCompositionFactory;->cache(Ljava/lang/String;Ljava/util/concurrent/Callable;Ljava/lang/Runnable;)Lcom/airbnb/lottie/LottieTask;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public static fromJsonInputStream(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieTask<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, L돴뎬땐땰딽딞드딨뎸땸뎸도땀듬땩뒝땅뒹돴땀땵돷됩뎻땵땡땸땜딄딅뒘된땤드둣딄드딠뎡돸땀뒤돸됫땦듻듬딠딽땩딄듌둘땸듐돴딹땬딄땐돵들딻땵돰돶땰땥듼둡뎠땄들땬땫뒵딤뎡뒀뒹땭뒉딜두뎬뒻뒋돼둘돼딝땥돶듬땪듟뎡딀따땬뎸딅둥땐됩땅도딌땱둘딽딀뒈땤뎹땰돛돷듽둑딄드뒐딝땅땱됩딃뎰둬;

    const/4 v1, 0x5

    invoke-direct {v0, p0, p1, v1}, L돴뎬땐땰딽딞드딨뎸땸뎸도땀듬땩뒝땅뒹돴땀땵돷됩뎻땵땡땸땜딄딅뒘된땤드둣딄드딠뎡돸땀뒤돸됫땦듻듬딠딽땩딄듌둘땸듐돴딹땬딄땐돵들딻땵돰돶땰땥듼둡뎠땄들땬땫뒵딤뎡뒀뒹땭뒉딜두뎬뒻뒋돼둘돼딝땥돶듬땪듟뎡딀따땬뎸딅둥땐됩땅도딌땱둘딽딀뒈땤뎹땰돛돷듽둑딄드뒐딝땅땱됩딃뎰둬;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v1, L돨뎠뒤땹땃땅땍딐땯딁딨뎬뒨땣땹땧딸되땠듌뎹듸둡땦땫뒙뎻땱돝디딀뒵땩딀돨땅든뒻됐둥딝땅땱뎽돴둔드뎨땵둬땡둥딐땵땻뒨듌땳땵됨딠뎠땜뒉땦듻딅땁땤듌땁듌땳돳땧뒤따땪땲딅돷땯뒵땄듨둔돤뎬땤따돨땠땜듼땍둬뎸땅딎듐딄돠땍땭됐뎸딞듬뒐둡땄땠둡뒈땤뒨돤땤듸됨디둘땣땩땳땀뒨땳땟뒋;

    const/16 v2, 0x18

    invoke-direct {v1, p0, v2}, L돨뎠뒤땹땃땅땍딐땯딁딨뎬뒨땣땹땧딸되땠듌뎹듸둡땦땫뒙뎻땱돝디딀뒵땩딀돨땅든뒻됐둥딝땅땱뎽돴둔드뎨땵둬땡둥딐땵땻뒨듌땳땵됨딠뎠땜뒉땦듻딅땁땤듌땁듌땳돳땧뒤따땪땲딅돷땯뒵땄듨둔돤뎬땤따돨땠땜듼땍둬뎸땅딎듐딄돠땍땭됐뎸딞듬뒐둡땄땠둡뒈땤뒨돤땤듸됨디둘땣땩땳땀뒨땳땟뒋;-><init>(Ljava/lang/Object;I)V

    invoke-static {p1, v0, v1}, Lcom/airbnb/lottie/LottieCompositionFactory;->cache(Ljava/lang/String;Ljava/util/concurrent/Callable;Ljava/lang/Runnable;)Lcom/airbnb/lottie/LottieTask;

    move-result-object p0

    return-object p0
.end method

.method public static fromJsonInputStream(Ljava/io/InputStream;Ljava/lang/String;Z)Lcom/airbnb/lottie/LottieTask;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/airbnb/lottie/LottieTask<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, L딎땤땀둡땜돤뎬땣땯딎됐됴돠돛됴땟땲돷뒤뎠땣듻땸뎨둠땤땤땵뒘뎽뎻땵돼돨돵땭딄듽딞딄됩땲딌뎹땮뒾뒙땄돨둘딠딨딅땝듐둡뒀땭돨됴돠땧도듐됨뒨땱듸뒼땟딝돶땤돰뒀뎸땁뒷뎹됩땍땋땸땀뎰땟딀돝뒷뒐딸듸땳둥뒹땫땅땠뎡딀듬뒨땃뎰돵땣딤뒻뒐돸듰뒝뒹땱됫두땔뒛돶돷돴땋됴뒀딐둠듟딤땸됐;

    invoke-direct {v0, p0, p1, p2}, L딎땤땀둡땜돤뎬땣땯딎됐됴돠돛됴땟땲돷뒤뎠땣듻땸뎨둠땤땤땵뒘뎽뎻땵돼돨돵땭딄듽딞딄됩땲딌뎹땮뒾뒙땄돨둘딠딨딅땝듐둡뒀땭돨됴돠땧도듐됨뒨땱듸뒼땟딝돶땤돰뒀뎸땁뒷뎹됩땍땋땸땀뎰땟딀돝뒷뒐딸듸땳둥뒹땫땅땠뎡딀듬뒨땃뎰돵땣딤뒻뒐돸듰뒝뒹땱됫두땔뒛돶돷돴땋됴뒀딐둠듟딤땸됐;-><init>(Ljava/io/InputStream;Ljava/lang/String;Z)V

    new-instance v1, L뎻땐듨따뎠돝땯뒙듻땲딄딨듸득돤듰땪뒝딸둥듐뒵될땮뒝딹뎠뎰딎돛뒐돼땍돸돳땹듸된될둔땦딄듻딄돸뎻땩땣딄땝딐땍딐딟땁됴땡딎됫됐뒉돸뒀뒻뒐땬돷둥디돨둔딐땹뒵땃딟딄딞둣뒘딻뒀뎠듐둑뒹딁뒉된딜딸땐땃땳돤돤뎽뒾딐둔듌뎽딨된뒷뎻됨도도딟뎨뎬뎹딞땥드됴됐딹될땫땱땜뎸듸뒘땩둡돷땮;

    invoke-direct {v1, p2, p0}, L뎻땐듨따뎠돝땯뒙듻땲딄딨듸득돤듰땪뒝딸둥듐뒵될땮뒝딹뎠뎰딎돛뒐돼땍돸돳땹듸된될둔땦딄듻딄돸뎻땩땣딄땝딐땍딐딟땁됴땡딎됫됐뒉돸뒀뒻뒐땬돷둥디돨둔딐땹뒵땃딟딄딞둣뒘딻뒀뎠듐둑뒹딁뒉된딜딸땐땃땳돤돤뎽뒾딐둔듌뎽딨된뒷뎻됨도도딟뎨뎬뎹딞땥드됴됐딹될땫땱땜뎸듸뒘땩둡돷땮;-><init>(ZLjava/io/InputStream;)V

    invoke-static {p1, v0, v1}, Lcom/airbnb/lottie/LottieCompositionFactory;->cache(Ljava/lang/String;Ljava/util/concurrent/Callable;Ljava/lang/Runnable;)Lcom/airbnb/lottie/LottieTask;

    move-result-object p0

    return-object p0
.end method

.method public static fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieResult<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, p1, v0}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;Z)Lcom/airbnb/lottie/LottieResult;

    move-result-object p0

    return-object p0
.end method

.method public static fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;Z)Lcom/airbnb/lottie/LottieResult;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/airbnb/lottie/LottieResult<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-static {p0}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonSourceSync(Lokio/Source;Ljava/lang/String;Z)Lcom/airbnb/lottie/LottieResult;

    move-result-object p0

    return-object p0
.end method

.method public static fromJsonReader(Lcom/airbnb/lottie/parser/moshi/JsonReader;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/parser/moshi/JsonReader;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieTask<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, L돴뎬땐땰딽딞드딨뎸땸뎸도땀듬땩뒝땅뒹돴땀땵돷됩뎻땵땡땸땜딄딅뒘된땤드둣딄드딠뎡돸땀뒤돸됫땦듻듬딠딽땩딄듌둘땸듐돴딹땬딄땐돵들딻땵돰돶땰땥듼둡뎠땄들땬땫뒵딤뎡뒀뒹땭뒉딜두뎬뒻뒋돼둘돼딝땥돶듬땪듟뎡딀따땬뎸딅둥땐됩땅도딌땱둘딽딀뒈땤뎹땰돛돷듽둑딄드뒐딝땅땱됩딃뎰둬;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-direct {v0, p0, p1, v1}, L돴뎬땐땰딽딞드딨뎸땸뎸도땀듬땩뒝땅뒹돴땀땵돷됩뎻땵땡땸땜딄딅뒘된땤드둣딄드딠뎡돸땀뒤돸됫땦듻듬딠딽땩딄듌둘땸듐돴딹땬딄땐돵들딻땵돰돶땰땥듼둡뎠땄들땬땫뒵딤뎡뒀뒹땭뒉딜두뎬뒻뒋돼둘돼딝땥돶듬땪듟뎡딀따땬뎸딅둥땐됩땅도딌땱둘딽딀뒈땤뎹땰돛돷듽둑딄드뒐딝땅땱됩딃뎰둬;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, L돨뎠뒤땹땃땅땍딐땯딁딨뎬뒨땣땹땧딸되땠듌뎹듸둡땦땫뒙뎻땱돝디딀뒵땩딀돨땅든뒻됐둥딝땅땱뎽돴둔드뎨땵둬땡둥딐땵땻뒨듌땳땵됨딠뎠땜뒉땦듻딅땁땤듌땁듌땳돳땧뒤따땪땲딅돷땯뒵땄듨둔돤뎬땤따돨땠땜듼땍둬뎸땅딎듐딄돠땍땭됐뎸딞듬뒐둡땄땠둡뒈땤뒨돤땤듸됨디둘땣땩땳땀뒨땳땟뒋;

    .line 8
    .line 9
    const/16 v2, 0x16

    .line 10
    .line 11
    invoke-direct {v1, p0, v2}, L돨뎠뒤땹땃땅땍딐땯딁딨뎬뒨땣땹땧딸되땠듌뎹듸둡땦땫뒙뎻땱돝디딀뒵땩딀돨땅든뒻됐둥딝땅땱뎽돴둔드뎨땵둬땡둥딐땵땻뒨듌땳땵됨딠뎠땜뒉땦듻딅땁땤듌땁듌땳돳땧뒤따땪땲딅돷땯뒵땄듨둔돤뎬땤따돨땠땜듼땍둬뎸땅딎듐딄돠땍땭됐뎸딞듬뒐둡땄땠둡뒈땤뒨돤땤듸됨디둘땣땩땳땀뒨땳땟뒋;-><init>(Ljava/lang/Object;I)V

    .line 12
    .line 13
    .line 14
    invoke-static {p1, v0, v1}, Lcom/airbnb/lottie/LottieCompositionFactory;->cache(Ljava/lang/String;Ljava/util/concurrent/Callable;Ljava/lang/Runnable;)Lcom/airbnb/lottie/LottieTask;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public static fromJsonReaderSync(Lcom/airbnb/lottie/parser/moshi/JsonReader;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/parser/moshi/JsonReader;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieResult<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, p1, v0}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonReaderSync(Lcom/airbnb/lottie/parser/moshi/JsonReader;Ljava/lang/String;Z)Lcom/airbnb/lottie/LottieResult;

    move-result-object p0

    return-object p0
.end method

.method public static fromJsonReaderSync(Lcom/airbnb/lottie/parser/moshi/JsonReader;Ljava/lang/String;Z)Lcom/airbnb/lottie/LottieResult;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/parser/moshi/JsonReader;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/airbnb/lottie/LottieResult<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-static {p0, p1, p2}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonReaderSyncInternal(Lcom/airbnb/lottie/parser/moshi/JsonReader;Ljava/lang/String;Z)Lcom/airbnb/lottie/LottieResult;

    move-result-object p0

    return-object p0
.end method

.method private static fromJsonReaderSyncInternal(Lcom/airbnb/lottie/parser/moshi/JsonReader;Ljava/lang/String;Z)Lcom/airbnb/lottie/LottieResult;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/parser/moshi/JsonReader;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/airbnb/lottie/LottieResult<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/airbnb/lottie/model/LottieCompositionCache;->getInstance()Lcom/airbnb/lottie/model/LottieCompositionCache;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/model/LottieCompositionCache;->get(Ljava/lang/String;)Lcom/airbnb/lottie/LottieComposition;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :goto_0
    if-eqz v0, :cond_2

    .line 14
    .line 15
    new-instance p1, Lcom/airbnb/lottie/LottieResult;

    .line 16
    .line 17
    invoke-direct {p1, v0}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    if-eqz p2, :cond_1

    .line 21
    .line 22
    invoke-static {p0}, Lcom/airbnb/lottie/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-object p1

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    goto :goto_2

    .line 28
    :catch_0
    move-exception p1

    .line 29
    goto :goto_1

    .line 30
    :cond_2
    :try_start_1
    invoke-static {p0}, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;)Lcom/airbnb/lottie/LottieComposition;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz p1, :cond_3

    .line 35
    .line 36
    invoke-static {}, Lcom/airbnb/lottie/model/LottieCompositionCache;->getInstance()Lcom/airbnb/lottie/model/LottieCompositionCache;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1, p1, v0}, Lcom/airbnb/lottie/model/LottieCompositionCache;->put(Ljava/lang/String;Lcom/airbnb/lottie/LottieComposition;)V

    .line 41
    .line 42
    .line 43
    :cond_3
    new-instance p1, Lcom/airbnb/lottie/LottieResult;

    .line 44
    .line 45
    invoke-direct {p1, v0}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    .line 47
    .line 48
    if-eqz p2, :cond_4

    .line 49
    .line 50
    invoke-static {p0}, Lcom/airbnb/lottie/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 51
    .line 52
    .line 53
    :cond_4
    return-object p1

    .line 54
    :goto_1
    :try_start_2
    new-instance v0, Lcom/airbnb/lottie/LottieResult;

    .line 55
    .line 56
    invoke-direct {v0, p1}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    .line 58
    .line 59
    if-eqz p2, :cond_5

    .line 60
    .line 61
    invoke-static {p0}, Lcom/airbnb/lottie/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 62
    .line 63
    .line 64
    :cond_5
    return-object v0

    .line 65
    :goto_2
    if-eqz p2, :cond_6

    .line 66
    .line 67
    invoke-static {p0}, Lcom/airbnb/lottie/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 68
    .line 69
    .line 70
    :cond_6
    throw p1
.end method

.method public static fromJsonSource(Lokio/Source;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/Source;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieTask<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, L돴뎬땐땰딽딞드딨뎸땸뎸도땀듬땩뒝땅뒹돴땀땵돷됩뎻땵땡땸땜딄딅뒘된땤드둣딄드딠뎡돸땀뒤돸됫땦듻듬딠딽땩딄듌둘땸듐돴딹땬딄땐돵들딻땵돰돶땰땥듼둡뎠땄들땬땫뒵딤뎡뒀뒹땭뒉딜두뎬뒻뒋돼둘돼딝땥돶듬땪듟뎡딀따땬뎸딅둥땐됩땅도딌땱둘딽딀뒈땤뎹땰돛돷듽둑딄드뒐딝땅땱됩딃뎰둬;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, p0, p1, v1}, L돴뎬땐땰딽딞드딨뎸땸뎸도땀듬땩뒝땅뒹돴땀땵돷됩뎻땵땡땸땜딄딅뒘된땤드둣딄드딠뎡돸땀뒤돸됫땦듻듬딠딽땩딄듌둘땸듐돴딹땬딄땐돵들딻땵돰돶땰땥듼둡뎠땄들땬땫뒵딤뎡뒀뒹땭뒉딜두뎬뒻뒋돼둘돼딝땥돶듬땪듟뎡딀따땬뎸딅둥땐됩땅도딌땱둘딽딀뒈땤뎹땰돛돷듽둑딄드뒐딝땅땱됩딃뎰둬;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, L돨뎠뒤땹땃땅땍딐땯딁딨뎬뒨땣땹땧딸되땠듌뎹듸둡땦땫뒙뎻땱돝디딀뒵땩딀돨땅든뒻됐둥딝땅땱뎽돴둔드뎨땵둬땡둥딐땵땻뒨듌땳땵됨딠뎠땜뒉땦듻딅땁땤듌땁듌땳돳땧뒤따땪땲딅돷땯뒵땄듨둔돤뎬땤따돨땠땜듼땍둬뎸땅딎듐딄돠땍땭됐뎸딞듬뒐둡땄땠둡뒈땤뒨돤땤듸됨디둘땣땩땳땀뒨땳땟뒋;

    .line 8
    .line 9
    const/16 v2, 0x17

    .line 10
    .line 11
    invoke-direct {v1, p0, v2}, L돨뎠뒤땹땃땅땍딐땯딁딨뎬뒨땣땹땧딸되땠듌뎹듸둡땦땫뒙뎻땱돝디딀뒵땩딀돨땅든뒻됐둥딝땅땱뎽돴둔드뎨땵둬땡둥딐땵땻뒨듌땳땵됨딠뎠땜뒉땦듻딅땁땤듌땁듌땳돳땧뒤따땪땲딅돷땯뒵땄듨둔돤뎬땤따돨땠땜듼땍둬뎸땅딎듐딄돠땍땭됐뎸딞듬뒐둡땄땠둡뒈땤뒨돤땤듸됨디둘땣땩땳땀뒨땳땟뒋;-><init>(Ljava/lang/Object;I)V

    .line 12
    .line 13
    .line 14
    invoke-static {p1, v0, v1}, Lcom/airbnb/lottie/LottieCompositionFactory;->cache(Ljava/lang/String;Ljava/util/concurrent/Callable;Ljava/lang/Runnable;)Lcom/airbnb/lottie/LottieTask;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public static fromJsonSourceSync(Lokio/Source;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/Source;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieResult<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, p1, v0}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonSourceSync(Lokio/Source;Ljava/lang/String;Z)Lcom/airbnb/lottie/LottieResult;

    move-result-object p0

    return-object p0
.end method

.method public static fromJsonSourceSync(Lokio/Source;Ljava/lang/String;Z)Lcom/airbnb/lottie/LottieResult;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/Source;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/airbnb/lottie/LottieResult<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-static {p0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object p0

    invoke-static {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->of(Lokio/BufferedSource;)Lcom/airbnb/lottie/parser/moshi/JsonReader;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonReaderSyncInternal(Lcom/airbnb/lottie/parser/moshi/JsonReader;Ljava/lang/String;Z)Lcom/airbnb/lottie/LottieResult;

    move-result-object p0

    return-object p0
.end method

.method public static fromJsonString(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieTask<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, L돴뎬땐땰딽딞드딨뎸땸뎸도땀듬땩뒝땅뒹돴땀땵돷됩뎻땵땡땸땜딄딅뒘된땤드둣딄드딠뎡돸땀뒤돸됫땦듻듬딠딽땩딄듌둘땸듐돴딹땬딄땐돵들딻땵돰돶땰땥듼둡뎠땄들땬땫뒵딤뎡뒀뒹땭뒉딜두뎬뒻뒋돼둘돼딝땥돶듬땪듟뎡딀따땬뎸딅둥땐됩땅도딌땱둘딽딀뒈땤뎹땰돛돷듽둑딄드뒐딝땅땱됩딃뎰둬;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, p0, p1, v1}, L돴뎬땐땰딽딞드딨뎸땸뎸도땀듬땩뒝땅뒹돴땀땵돷됩뎻땵땡땸땜딄딅뒘된땤드둣딄드딠뎡돸땀뒤돸됫땦듻듬딠딽땩딄듌둘땸듐돴딹땬딄땐돵들딻땵돰돶땰땥듼둡뎠땄들땬땫뒵딤뎡뒀뒹땭뒉딜두뎬뒻뒋돼둘돼딝땥돶듬땪듟뎡딀따땬뎸딅둥땐됩땅도딌땱둘딽딀뒈땤뎹땰돛돷듽둑딄드뒐딝땅땱됩딃뎰둬;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 5
    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    invoke-static {p1, v0, p0}, Lcom/airbnb/lottie/LottieCompositionFactory;->cache(Ljava/lang/String;Ljava/util/concurrent/Callable;Ljava/lang/Runnable;)Lcom/airbnb/lottie/LottieTask;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public static fromJsonStringSync(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieResult<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {p0, p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonSourceSync(Lokio/Source;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public static fromJsonSync(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieResult<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0, p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonStringSync(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static fromRawRes(Landroid/content/Context;I)Lcom/airbnb/lottie/LottieTask;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Lcom/airbnb/lottie/LottieTask<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->rawResCacheKey(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromRawRes(Landroid/content/Context;ILjava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    move-result-object p0

    return-object p0
.end method

.method public static fromRawRes(Landroid/content/Context;ILjava/lang/String;)Lcom/airbnb/lottie/LottieTask;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieTask<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 4
    new-instance v1, L딎든뎸딠뒉땬돴둡딹됐뒷듻둠뎨딤두땅땔됐돰될땥땍돶드딻뒬땸땃땻듨둑뒷돨든둑돤땅두땠따딝뎸딁딠땨둠딄딐뒋둡둑땬뒉둥득뎹땬딻땸딽뒬땡딻됫듰도돵둑든땔뒨뒀뒝딹돷돼땁두뒉땜듸돼돼뎡땡둘뒬된뎨땝듸뎹뒻땵뒈땐돝뒋딀뒤돤됫뒛땻땵뎰듼뒝땃딝땸딹돰딽땠땹둬땜됨땬딽둬땳뎸둬돨딅땮뒹;

    invoke-direct {v1, v0, p0, p1, p2}, L딎든뎸딠뒉땬돴둡딹됐뒷듻둠뎨딤두땅땔됐돰될땥땍돶드딻뒬땸땃땻듨둑뒷돨든둑돤땅두땠따딝뎸딁딠땨둠딄딐뒋둡둑땬뒉둥득뎹땬딻땸딽뒬땡딻됫듰도돵둑든땔뒨뒀뒝딹돷돼땁두뒉땜듸돼돼뎡땡둘뒬된뎨땝듸뎹뒻땵뒈땐돝뒋딀뒤돤됫뒛땻땵뎰듼뒝땃딝땸딹돰딽땠땹둬땜됨땬딽둬땳뎸둬돨딅땮뒹;-><init>(Ljava/lang/ref/WeakReference;Landroid/content/Context;ILjava/lang/String;)V

    const/4 p0, 0x0

    invoke-static {p2, v1, p0}, Lcom/airbnb/lottie/LottieCompositionFactory;->cache(Ljava/lang/String;Ljava/util/concurrent/Callable;Ljava/lang/Runnable;)Lcom/airbnb/lottie/LottieTask;

    move-result-object p0

    return-object p0
.end method

.method public static fromRawResSync(Landroid/content/Context;I)Lcom/airbnb/lottie/LottieResult;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Lcom/airbnb/lottie/LottieResult<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->rawResCacheKey(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromRawResSync(Landroid/content/Context;ILjava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object p0

    return-object p0
.end method

.method public static fromRawResSync(Landroid/content/Context;ILjava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieResult<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/airbnb/lottie/model/LottieCompositionCache;->getInstance()Lcom/airbnb/lottie/model/LottieCompositionCache;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/model/LottieCompositionCache;->get(Ljava/lang/String;)Lcom/airbnb/lottie/LottieComposition;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    new-instance p0, Lcom/airbnb/lottie/LottieResult;

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Object;)V

    return-object p0

    .line 4
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object p1

    invoke-static {p1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->isZipCompressed(Lokio/BufferedSource;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    new-instance v0, Ljava/util/zip/ZipInputStream;

    invoke-interface {p1}, Lokio/BufferedSource;->inputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {p0, v0, p2}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromZipStreamSync(Landroid/content/Context;Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 7
    :cond_2
    invoke-static {p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->isGzipCompressed(Lokio/BufferedSource;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_3

    .line 8
    :try_start_1
    new-instance p0, Ljava/util/zip/GZIPInputStream;

    invoke-interface {p1}, Lokio/BufferedSource;->inputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {p0, p2}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_1
    move-exception p0

    .line 9
    :try_start_2
    new-instance p1, Lcom/airbnb/lottie/LottieResult;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Throwable;)V

    return-object p1

    .line 10
    :cond_3
    invoke-static {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->of(Lokio/BufferedSource;)Lcom/airbnb/lottie/parser/moshi/JsonReader;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonReaderSync(Lcom/airbnb/lottie/parser/moshi/JsonReader;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object p0
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    .line 11
    :goto_1
    new-instance p1, Lcom/airbnb/lottie/LottieResult;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Throwable;)V

    return-object p1
.end method

.method public static fromUrl(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieTask<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x2

    new-array v2, v2, [J

    fill-array-data v2, :array_0

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 8
        -0x1ccedf58abd2e92L    # -7.982099599146843E299
        0x3048ef5da9a9fb9dL    # 4.3068612189975437E-76
    .end array-data
.end method

.method public static fromUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieTask<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, L딌땰듻땤듟뎬뒹됩뒉듻땣땳됐듸듌땲딃땪뎬뒤돛듌땐둥든땦뒻땐딅땩돨뎽뒼돰드듰땍땹도듟딝딀뎡뒨듟들딅딄땫딐딁두땫딟땀듟땵둠드땯딨땧뒝돤땀뒘둠들뎡듌듽둘땄땣딎딁둡됨돴딸뒝땰땸뒈딤땳들될땫들딝땦땦뒙땅뎻뎬둡뒬돛듐땻둘듨땁딄땐됴뒋땫땻땀둠듸뒻든돛딐돰땥듰둣뒻딟딎뒤듬돨돛따;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1, p2}, L딌땰듻땤듟뎬뒹됩뒉듻땣땳됐듸듌땲딃땪뎬뒤돛듌땐둥든땦뒻땐딅땩돨뎽뒼돰드듰땍땹도듟딝딀뎡뒨듟들딅딄땫딐딁두땫딟땀듟땵둠드땯딨땧뒝돤땀뒘둠들뎡듌듽둘땄땣딎딁둡됨돴딸뒝땰땸뒈딤땳들될땫들딝땦땦뒙땅뎻뎬둡뒬돛듐땻둘듨땁딄땐됴뒋땫땻땀둠듸뒻든돛딐돰땥듰둣뒻딟딎뒤듬돨돛따;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-static {p2, v0, p0}, Lcom/airbnb/lottie/LottieCompositionFactory;->cache(Ljava/lang/String;Ljava/util/concurrent/Callable;Ljava/lang/Runnable;)Lcom/airbnb/lottie/LottieTask;

    move-result-object p0

    return-object p0
.end method

.method public static fromUrlSync(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieResult<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromUrlSync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object p0

    return-object p0
.end method

.method public static fromUrlSync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieResult<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/airbnb/lottie/model/LottieCompositionCache;->getInstance()Lcom/airbnb/lottie/model/LottieCompositionCache;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/model/LottieCompositionCache;->get(Ljava/lang/String;)Lcom/airbnb/lottie/LottieComposition;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    new-instance p0, Lcom/airbnb/lottie/LottieResult;

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Object;)V

    return-object p0

    .line 4
    :cond_1
    invoke-static {p0}, Lcom/airbnb/lottie/L;->networkFetcher(Landroid/content/Context;)Lcom/airbnb/lottie/network/NetworkFetcher;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/airbnb/lottie/network/NetworkFetcher;->fetchSync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object p0

    if-eqz p2, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieResult;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 6
    invoke-static {}, Lcom/airbnb/lottie/model/LottieCompositionCache;->getInstance()Lcom/airbnb/lottie/model/LottieCompositionCache;

    move-result-object p1

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieResult;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {p1, p2, v0}, Lcom/airbnb/lottie/model/LottieCompositionCache;->put(Ljava/lang/String;Lcom/airbnb/lottie/LottieComposition;)V

    :cond_2
    return-object p0
.end method

.method public static fromZipStream(Landroid/content/Context;Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/zip/ZipInputStream;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieTask<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 3
    new-instance v0, L딎돵들듐돶땍뎸뒼득땪되됫땨돛땻딁두뎡딅듟돤땄듌될딌딟둬도땣둘땯땸땪땪땻땵돸뎰둠뎻듌딝땱든뒘뎹땱딁돸되땬뎽땥둥뒈딁땸땫땝땨땬땮든도듰땬딸된도땤됴땁돴둡땄땱땪뎻돝딐뒷됫듽땠뎽돶딞뒷뎨돷딝땋돶듨땹땵됴돝돼땥땱땩뎻땔땰뒋돷딐드도땝돸뎰뎰딜땥듐딄듼둡땥되뒨됫땳땡뒉될돵딁;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, L딎돵들듐돶땍뎸뒼득땪되됫땨돛땻딁두뎡딅듟돤땄듌될딌딟둬도땣둘땯땸땪땪땻땵돸뎰둠뎻듌딝땱든뒘뎹땱딁돸되땬뎽땥둥뒈딁땸땫땝땨땬땮든도듰땬딸된도땤됴땁돴둡땄땱땪뎻돝딐뒷됫듽땠뎽돶딞뒷뎨돷딝땋돶듨땹땵됴돝돼땥땱땩뎻땔땰뒋돷딐드도땝돸뎰뎰딜땥듐딄듼둡땥되뒨됫땳땡뒉될돵딁;-><init>(Landroid/content/Context;Ljava/util/zip/ZipInputStream;Ljava/lang/String;I)V

    new-instance p0, L딎돶둠듔둥땩뎹딤뒻땍돰됨뒘뒹땭뒀듨뎽뒬뒬듰뎻돠두됐뒬땹뒛땤땟되뒙듽따뎬딁뒝듐든뎨딄땰뒙뎽뒬땮딝둘돨뎽딐둥뎸돴땍둡듰둣딄도뒀들됩땍땩듐땨뎡뎸딄뒹뒨둘땤돨뒀땋뎨뎽뒤딠돰뒉뒙땦듻땰둔땯둬땩뒵둘될듟돠될뒻땦땐땻딠뎡딠땱뎰땍든딟듸땩둠뒵들땋땡든딽뎡듟땯딸뒐듟땐돶땝둑듔뒝;

    invoke-direct {p0, p1, v1}, L딎돶둠듔둥땩뎹딤뒻땍돰됨뒘뒹땭뒀듨뎽뒬뒬듰뎻돠두됐뒬땹뒛땤땟되뒙듽따뎬딁뒝듐든뎨딄땰뒙뎽뒬땮딝둘돨뎽딐둥뎸돴땍둡듰둣딄도뒀들됩땍땩듐땨뎡뎸딄뒹뒨둘땤돨뒀땋뎨뎽뒤딠돰뒉뒙땦듻땰둔땯둬땩뒵둘될듟돠될뒻땦땐땻딠뎡딠땱뎰땍든딟듸땩둠뒵들땋땡든딽뎡듟땯딸뒐듟땐돶땝둑듔뒝;-><init>(Ljava/util/zip/ZipInputStream;I)V

    invoke-static {p2, v0, p0}, Lcom/airbnb/lottie/LottieCompositionFactory;->cache(Ljava/lang/String;Ljava/util/concurrent/Callable;Ljava/lang/Runnable;)Lcom/airbnb/lottie/LottieTask;

    move-result-object p0

    return-object p0
.end method

.method public static fromZipStream(Landroid/content/Context;Ljava/util/zip/ZipInputStream;Ljava/lang/String;Z)Lcom/airbnb/lottie/LottieTask;
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/zip/ZipInputStream;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/airbnb/lottie/LottieTask<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 4
    new-instance v0, L딎돵들듐돶땍뎸뒼득땪되됫땨돛땻딁두뎡딅듟돤땄듌될딌딟둬도땣둘땯땸땪땪땻땵돸뎰둠뎻듌딝땱든뒘뎹땱딁돸되땬뎽땥둥뒈딁땸땫땝땨땬땮든도듰땬딸된도땤됴땁돴둡땄땱땪뎻돝딐뒷됫듽땠뎽돶딞뒷뎨돷딝땋돶듨땹땵됴돝돼땥땱땩뎻땔땰뒋돷딐드도땝돸뎰뎰딜땥듐딄듼둡땥되뒨됫땳땡뒉될돵딁;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, L딎돵들듐돶땍뎸뒼득땪되됫땨돛땻딁두뎡딅듟돤땄듌될딌딟둬도땣둘땯땸땪땪땻땵돸뎰둠뎻듌딝땱든뒘뎹땱딁돸되땬뎽땥둥뒈딁땸땫땝땨땬땮든도듰땬딸된도땤됴땁돴둡땄땱땪뎻돝딐뒷됫듽땠뎽돶딞뒷뎨돷딝땋돶듨땹땵됴돝돼땥땱땩뎻땔땰뒋돷딐드도땝돸뎰뎰딜땥듐딄듼둡땥되뒨됫땳땡뒉될돵딁;-><init>(Landroid/content/Context;Ljava/util/zip/ZipInputStream;Ljava/lang/String;I)V

    if-eqz p3, :cond_0

    new-instance p0, L딎돶둠듔둥땩뎹딤뒻땍돰됨뒘뒹땭뒀듨뎽뒬뒬듰뎻돠두됐뒬땹뒛땤땟되뒙듽따뎬딁뒝듐든뎨딄땰뒙뎽뒬땮딝둘돨뎽딐둥뎸돴땍둡듰둣딄도뒀들됩땍땩듐땨뎡뎸딄뒹뒨둘땤돨뒀땋뎨뎽뒤딠돰뒉뒙땦듻땰둔땯둬땩뒵둘될듟돠될뒻땦땐땻딠뎡딠땱뎰땍든딟듸땩둠뒵들땋땡든딽뎡듟땯딸뒐듟땐돶땝둑듔뒝;

    const/4 p3, 0x1

    invoke-direct {p0, p1, p3}, L딎돶둠듔둥땩뎹딤뒻땍돰됨뒘뒹땭뒀듨뎽뒬뒬듰뎻돠두됐뒬땹뒛땤땟되뒙듽따뎬딁뒝듐든뎨딄땰뒙뎽뒬땮딝둘돨뎽딐둥뎸돴땍둡듰둣딄도뒀들됩땍땩듐땨뎡뎸딄뒹뒨둘땤돨뒀땋뎨뎽뒤딠돰뒉뒙땦듻땰둔땯둬땩뒵둘될듟돠될뒻땦땐땻딠뎡딠땱뎰땍든딟듸땩둠뒵들땋땡든딽뎡듟땯딸뒐듟땐돶땝둑듔뒝;-><init>(Ljava/util/zip/ZipInputStream;I)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p2, v0, p0}, Lcom/airbnb/lottie/LottieCompositionFactory;->cache(Ljava/lang/String;Ljava/util/concurrent/Callable;Ljava/lang/Runnable;)Lcom/airbnb/lottie/LottieTask;

    move-result-object p0

    return-object p0
.end method

.method public static fromZipStream(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipInputStream;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieTask<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p0, p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromZipStream(Landroid/content/Context;Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    move-result-object p0

    return-object p0
.end method

.method public static fromZipStream(Ljava/util/zip/ZipInputStream;Ljava/lang/String;Z)Lcom/airbnb/lottie/LottieTask;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipInputStream;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/airbnb/lottie/LottieTask<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p0, p1, p2}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromZipStream(Landroid/content/Context;Ljava/util/zip/ZipInputStream;Ljava/lang/String;Z)Lcom/airbnb/lottie/LottieTask;

    move-result-object p0

    return-object p0
.end method

.method public static fromZipStreamSync(Landroid/content/Context;Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/zip/ZipInputStream;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieResult<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 3
    invoke-static {p0, p1, p2, v0}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromZipStreamSync(Landroid/content/Context;Ljava/util/zip/ZipInputStream;Ljava/lang/String;Z)Lcom/airbnb/lottie/LottieResult;

    move-result-object p0

    return-object p0
.end method

.method public static fromZipStreamSync(Landroid/content/Context;Ljava/util/zip/ZipInputStream;Ljava/lang/String;Z)Lcom/airbnb/lottie/LottieResult;
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/zip/ZipInputStream;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/airbnb/lottie/LottieResult<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 4
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromZipStreamSyncInternal(Landroid/content/Context;Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_0

    .line 5
    invoke-static {p1}, Lcom/airbnb/lottie/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    :cond_0
    return-object p0

    :catchall_0
    move-exception p0

    if-eqz p3, :cond_1

    invoke-static {p1}, Lcom/airbnb/lottie/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 6
    :cond_1
    throw p0
.end method

.method public static fromZipStreamSync(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipInputStream;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieResult<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, p1, v0}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromZipStreamSync(Ljava/util/zip/ZipInputStream;Ljava/lang/String;Z)Lcom/airbnb/lottie/LottieResult;

    move-result-object p0

    return-object p0
.end method

.method public static fromZipStreamSync(Ljava/util/zip/ZipInputStream;Ljava/lang/String;Z)Lcom/airbnb/lottie/LottieResult;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipInputStream;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/airbnb/lottie/LottieResult<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p0, p1, p2}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromZipStreamSync(Landroid/content/Context;Ljava/util/zip/ZipInputStream;Ljava/lang/String;Z)Lcom/airbnb/lottie/LottieResult;

    move-result-object p0

    return-object p0
.end method

.method private static fromZipStreamSyncInternal(Landroid/content/Context;Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 16
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/zip/ZipInputStream;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieResult<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p2

    .line 2
    .line 3
    const/4 v3, 0x3

    .line 4
    const/4 v4, 0x7

    .line 5
    const/4 v5, 0x4

    .line 6
    const/4 v6, 0x2

    .line 7
    new-instance v7, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v8, Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 15
    .line 16
    .line 17
    const/4 v9, 0x0

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    move-object v0, v9

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/airbnb/lottie/model/LottieCompositionCache;->getInstance()Lcom/airbnb/lottie/model/LottieCompositionCache;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/model/LottieCompositionCache;->get(Ljava/lang/String;)Lcom/airbnb/lottie/LottieComposition;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :goto_0
    if-eqz v0, :cond_1

    .line 31
    .line 32
    new-instance v1, Lcom/airbnb/lottie/LottieResult;

    .line 33
    .line 34
    invoke-direct {v1, v0}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    return-object v1

    .line 38
    :catch_0
    move-exception v0

    .line 39
    goto/16 :goto_13

    .line 40
    .line 41
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    move-object v10, v9

    .line 46
    :goto_1
    const/4 v11, 0x1

    .line 47
    const/4 v12, 0x0

    .line 48
    if-eqz v0, :cond_c

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v13

    .line 54
    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    .line 55
    .line 56
    new-array v15, v6, [J

    .line 57
    .line 58
    fill-array-data v15, :array_0

    .line 59
    .line 60
    .line 61
    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v14

    .line 68
    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 69
    .line 70
    .line 71
    move-result v14

    .line 72
    if-eqz v14, :cond_2

    .line 73
    .line 74
    invoke-virtual/range {p1 .. p1}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 75
    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_2
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v14

    .line 82
    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    .line 83
    .line 84
    new-array v2, v3, [J

    .line 85
    .line 86
    fill-array-data v2, :array_1

    .line 87
    .line 88
    .line 89
    invoke-direct {v15, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {v14, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    if-eqz v2, :cond_3

    .line 101
    .line 102
    invoke-virtual/range {p1 .. p1}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 103
    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_3
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 111
    .line 112
    new-array v14, v6, [J

    .line 113
    .line 114
    fill-array-data v14, :array_2

    .line 115
    .line 116
    .line 117
    invoke-direct {v2, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-eqz v0, :cond_4

    .line 129
    .line 130
    invoke-static/range {p1 .. p1}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->of(Lokio/BufferedSource;)Lcom/airbnb/lottie/parser/moshi/JsonReader;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-static {v0, v9, v12}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonReaderSyncInternal(Lcom/airbnb/lottie/parser/moshi/JsonReader;Ljava/lang/String;Z)Lcom/airbnb/lottie/LottieResult;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieResult;->getValue()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    move-object v10, v0

    .line 151
    check-cast v10, Lcom/airbnb/lottie/LottieComposition;

    .line 152
    .line 153
    :goto_2
    move-object/from16 v9, p1

    .line 154
    .line 155
    goto/16 :goto_e

    .line 156
    .line 157
    :cond_4
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 158
    .line 159
    new-array v2, v6, [J

    .line 160
    .line 161
    fill-array-data v2, :array_3

    .line 162
    .line 163
    .line 164
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    if-nez v0, :cond_5

    .line 176
    .line 177
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 178
    .line 179
    new-array v2, v6, [J

    .line 180
    .line 181
    fill-array-data v2, :array_4

    .line 182
    .line 183
    .line 184
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    if-nez v0, :cond_5

    .line 196
    .line 197
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 198
    .line 199
    new-array v2, v6, [J

    .line 200
    .line 201
    fill-array-data v2, :array_5

    .line 202
    .line 203
    .line 204
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    if-nez v0, :cond_5

    .line 216
    .line 217
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 218
    .line 219
    new-array v2, v6, [J

    .line 220
    .line 221
    fill-array-data v2, :array_6

    .line 222
    .line 223
    .line 224
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    if-eqz v0, :cond_6

    .line 236
    .line 237
    :cond_5
    move-object/from16 v9, p1

    .line 238
    .line 239
    goto/16 :goto_d

    .line 240
    .line 241
    :cond_6
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 242
    .line 243
    new-array v2, v6, [J

    .line 244
    .line 245
    fill-array-data v2, :array_7

    .line 246
    .line 247
    .line 248
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 256
    .line 257
    .line 258
    move-result v0

    .line 259
    if-nez v0, :cond_8

    .line 260
    .line 261
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 262
    .line 263
    new-array v2, v6, [J

    .line 264
    .line 265
    fill-array-data v2, :array_8

    .line 266
    .line 267
    .line 268
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 276
    .line 277
    .line 278
    move-result v0

    .line 279
    if-eqz v0, :cond_7

    .line 280
    .line 281
    goto :goto_3

    .line 282
    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 283
    .line 284
    .line 285
    goto/16 :goto_2

    .line 286
    .line 287
    :cond_8
    :goto_3
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 288
    .line 289
    new-array v2, v6, [J

    .line 290
    .line 291
    fill-array-data v2, :array_9

    .line 292
    .line 293
    .line 294
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    array-length v2, v0

    .line 306
    sub-int/2addr v2, v11

    .line 307
    aget-object v2, v0, v2

    .line 308
    .line 309
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 310
    .line 311
    new-array v11, v6, [J

    .line 312
    .line 313
    fill-array-data v11, :array_a

    .line 314
    .line 315
    .line 316
    invoke-direct {v0, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    aget-object v11, v0, v12

    .line 328
    .line 329
    if-nez p0, :cond_9

    .line 330
    .line 331
    new-instance v0, Lcom/airbnb/lottie/LottieResult;

    .line 332
    .line 333
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 334
    .line 335
    new-instance v2, Ljava/lang/StringBuilder;

    .line 336
    .line 337
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 338
    .line 339
    .line 340
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 341
    .line 342
    new-array v5, v5, [J

    .line 343
    .line 344
    fill-array-data v5, :array_b

    .line 345
    .line 346
    .line 347
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v3

    .line 354
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 361
    .line 362
    new-array v4, v4, [J

    .line 363
    .line 364
    fill-array-data v4, :array_c

    .line 365
    .line 366
    .line 367
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v3

    .line 374
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v2

    .line 381
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Throwable;)V

    .line 385
    .line 386
    .line 387
    return-object v0

    .line 388
    :cond_9
    new-instance v13, Ljava/io/File;

    .line 389
    .line 390
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    invoke-direct {v13, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    .line 396
    .line 397
    :try_start_1
    new-instance v14, Ljava/io/FileOutputStream;

    .line 398
    .line 399
    invoke-direct {v14, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    .line 400
    .line 401
    .line 402
    :try_start_2
    new-instance v15, Ljava/io/FileOutputStream;

    .line 403
    .line 404
    invoke-direct {v15, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 405
    .line 406
    .line 407
    const/16 v0, 0x1000

    .line 408
    .line 409
    :try_start_3
    new-array v0, v0, [B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 410
    .line 411
    move-object/from16 v9, p1

    .line 412
    .line 413
    :goto_4
    :try_start_4
    invoke-virtual {v9, v0}, Ljava/io/InputStream;->read([B)I

    .line 414
    .line 415
    .line 416
    move-result v4

    .line 417
    const/4 v3, -0x1

    .line 418
    if-eq v4, v3, :cond_a

    .line 419
    .line 420
    invoke-virtual {v15, v0, v12, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 421
    .line 422
    .line 423
    const/4 v3, 0x3

    .line 424
    goto :goto_4

    .line 425
    :catchall_0
    move-exception v0

    .line 426
    :goto_5
    move-object v3, v0

    .line 427
    goto :goto_7

    .line 428
    :cond_a
    invoke-virtual {v15}, Ljava/io/OutputStream;->flush()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 429
    .line 430
    .line 431
    :try_start_5
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 432
    .line 433
    .line 434
    :try_start_6
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 435
    .line 436
    .line 437
    goto/16 :goto_c

    .line 438
    .line 439
    :catchall_1
    move-exception v0

    .line 440
    goto :goto_b

    .line 441
    :catchall_2
    move-exception v0

    .line 442
    :goto_6
    move-object v3, v0

    .line 443
    goto :goto_9

    .line 444
    :catchall_3
    move-exception v0

    .line 445
    move-object/from16 v9, p1

    .line 446
    .line 447
    goto :goto_5

    .line 448
    :goto_7
    :try_start_7
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 449
    .line 450
    .line 451
    goto :goto_8

    .line 452
    :catchall_4
    move-exception v0

    .line 453
    move-object v4, v0

    .line 454
    :try_start_8
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 455
    .line 456
    .line 457
    :goto_8
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 458
    :catchall_5
    move-exception v0

    .line 459
    move-object/from16 v9, p1

    .line 460
    .line 461
    goto :goto_6

    .line 462
    :goto_9
    :try_start_9
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 463
    .line 464
    .line 465
    goto :goto_a

    .line 466
    :catchall_6
    move-exception v0

    .line 467
    move-object v4, v0

    .line 468
    :try_start_a
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 469
    .line 470
    .line 471
    :goto_a
    throw v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 472
    :catchall_7
    move-exception v0

    .line 473
    move-object/from16 v9, p1

    .line 474
    .line 475
    :goto_b
    :try_start_b
    new-instance v3, Ljava/lang/StringBuilder;

    .line 476
    .line 477
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 478
    .line 479
    .line 480
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 481
    .line 482
    new-array v12, v5, [J

    .line 483
    .line 484
    fill-array-data v12, :array_d

    .line 485
    .line 486
    .line 487
    invoke-direct {v4, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 488
    .line 489
    .line 490
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v4

    .line 494
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    .line 496
    .line 497
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    .line 499
    .line 500
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 501
    .line 502
    new-array v12, v5, [J

    .line 503
    .line 504
    fill-array-data v12, :array_e

    .line 505
    .line 506
    .line 507
    invoke-direct {v4, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 508
    .line 509
    .line 510
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object v4

    .line 514
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    .line 516
    .line 517
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    .line 519
    .line 520
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 521
    .line 522
    new-array v4, v6, [J

    .line 523
    .line 524
    fill-array-data v4, :array_f

    .line 525
    .line 526
    .line 527
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 528
    .line 529
    .line 530
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object v2

    .line 534
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    .line 536
    .line 537
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 538
    .line 539
    .line 540
    move-result-object v2

    .line 541
    invoke-static {v2, v0}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 542
    .line 543
    .line 544
    :goto_c
    invoke-static {v13}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    .line 545
    .line 546
    .line 547
    move-result-object v0

    .line 548
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    .line 549
    .line 550
    .line 551
    move-result v2

    .line 552
    if-nez v2, :cond_b

    .line 553
    .line 554
    new-instance v2, Ljava/lang/StringBuilder;

    .line 555
    .line 556
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 557
    .line 558
    .line 559
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 560
    .line 561
    const/4 v4, 0x5

    .line 562
    new-array v12, v4, [J

    .line 563
    .line 564
    fill-array-data v12, :array_10

    .line 565
    .line 566
    .line 567
    invoke-direct {v3, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 568
    .line 569
    .line 570
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 571
    .line 572
    .line 573
    move-result-object v3

    .line 574
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    .line 576
    .line 577
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 578
    .line 579
    .line 580
    move-result-object v3

    .line 581
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    .line 583
    .line 584
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 585
    .line 586
    new-array v4, v6, [J

    .line 587
    .line 588
    fill-array-data v4, :array_11

    .line 589
    .line 590
    .line 591
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 592
    .line 593
    .line 594
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 595
    .line 596
    .line 597
    move-result-object v3

    .line 598
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    .line 600
    .line 601
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 602
    .line 603
    .line 604
    move-result-object v2

    .line 605
    invoke-static {v2}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    .line 606
    .line 607
    .line 608
    :cond_b
    invoke-virtual {v8, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    .line 610
    .line 611
    goto :goto_e

    .line 612
    :goto_d
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 613
    .line 614
    new-array v2, v6, [J

    .line 615
    .line 616
    fill-array-data v2, :array_12

    .line 617
    .line 618
    .line 619
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 620
    .line 621
    .line 622
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 623
    .line 624
    .line 625
    move-result-object v0

    .line 626
    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 627
    .line 628
    .line 629
    move-result-object v0

    .line 630
    array-length v2, v0

    .line 631
    sub-int/2addr v2, v11

    .line 632
    aget-object v0, v0, v2

    .line 633
    .line 634
    invoke-static/range {p1 .. p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    .line 635
    .line 636
    .line 637
    move-result-object v2

    .line 638
    invoke-virtual {v7, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    .line 640
    .line 641
    :goto_e
    invoke-virtual/range {p1 .. p1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    .line 642
    .line 643
    .line 644
    move-result-object v0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0

    .line 645
    const/4 v3, 0x3

    .line 646
    const/4 v4, 0x7

    .line 647
    const/4 v9, 0x0

    .line 648
    goto/16 :goto_1

    .line 649
    .line 650
    :cond_c
    if-nez v10, :cond_d

    .line 651
    .line 652
    new-instance v0, Lcom/airbnb/lottie/LottieResult;

    .line 653
    .line 654
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 655
    .line 656
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 657
    .line 658
    const/4 v3, 0x5

    .line 659
    new-array v3, v3, [J

    .line 660
    .line 661
    fill-array-data v3, :array_13

    .line 662
    .line 663
    .line 664
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 665
    .line 666
    .line 667
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 668
    .line 669
    .line 670
    move-result-object v2

    .line 671
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 672
    .line 673
    .line 674
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Throwable;)V

    .line 675
    .line 676
    .line 677
    return-object v0

    .line 678
    :cond_d
    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 679
    .line 680
    .line 681
    move-result-object v0

    .line 682
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 683
    .line 684
    .line 685
    move-result-object v0

    .line 686
    :cond_e
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 687
    .line 688
    .line 689
    move-result v2

    .line 690
    if-eqz v2, :cond_f

    .line 691
    .line 692
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 693
    .line 694
    .line 695
    move-result-object v2

    .line 696
    check-cast v2, Ljava/util/Map$Entry;

    .line 697
    .line 698
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 699
    .line 700
    .line 701
    move-result-object v3

    .line 702
    check-cast v3, Ljava/lang/String;

    .line 703
    .line 704
    invoke-static {v10, v3}, Lcom/airbnb/lottie/LottieCompositionFactory;->findImageAssetForFileName(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/String;)Lcom/airbnb/lottie/LottieImageAsset;

    .line 705
    .line 706
    .line 707
    move-result-object v3

    .line 708
    if-eqz v3, :cond_e

    .line 709
    .line 710
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 711
    .line 712
    .line 713
    move-result-object v2

    .line 714
    check-cast v2, Landroid/graphics/Bitmap;

    .line 715
    .line 716
    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieImageAsset;->getWidth()I

    .line 717
    .line 718
    .line 719
    move-result v4

    .line 720
    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieImageAsset;->getHeight()I

    .line 721
    .line 722
    .line 723
    move-result v5

    .line 724
    invoke-static {v2, v4, v5}, Lcom/airbnb/lottie/utils/Utils;->resizeBitmapIfNeeded(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    .line 725
    .line 726
    .line 727
    move-result-object v2

    .line 728
    invoke-virtual {v3, v2}, Lcom/airbnb/lottie/LottieImageAsset;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 729
    .line 730
    .line 731
    goto :goto_f

    .line 732
    :cond_f
    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 733
    .line 734
    .line 735
    move-result-object v0

    .line 736
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 737
    .line 738
    .line 739
    move-result-object v0

    .line 740
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 741
    .line 742
    .line 743
    move-result v2

    .line 744
    if-eqz v2, :cond_13

    .line 745
    .line 746
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 747
    .line 748
    .line 749
    move-result-object v2

    .line 750
    check-cast v2, Ljava/util/Map$Entry;

    .line 751
    .line 752
    invoke-virtual {v10}, Lcom/airbnb/lottie/LottieComposition;->getFonts()Ljava/util/Map;

    .line 753
    .line 754
    .line 755
    move-result-object v3

    .line 756
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 757
    .line 758
    .line 759
    move-result-object v3

    .line 760
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 761
    .line 762
    .line 763
    move-result-object v3

    .line 764
    const/4 v4, 0x0

    .line 765
    :cond_10
    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 766
    .line 767
    .line 768
    move-result v5

    .line 769
    if-eqz v5, :cond_11

    .line 770
    .line 771
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 772
    .line 773
    .line 774
    move-result-object v5

    .line 775
    check-cast v5, Lcom/airbnb/lottie/model/Font;

    .line 776
    .line 777
    invoke-virtual {v5}, Lcom/airbnb/lottie/model/Font;->getFamily()Ljava/lang/String;

    .line 778
    .line 779
    .line 780
    move-result-object v8

    .line 781
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 782
    .line 783
    .line 784
    move-result-object v9

    .line 785
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 786
    .line 787
    .line 788
    move-result v8

    .line 789
    if-eqz v8, :cond_10

    .line 790
    .line 791
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 792
    .line 793
    .line 794
    move-result-object v4

    .line 795
    check-cast v4, Landroid/graphics/Typeface;

    .line 796
    .line 797
    invoke-virtual {v5, v4}, Lcom/airbnb/lottie/model/Font;->setTypeface(Landroid/graphics/Typeface;)V

    .line 798
    .line 799
    .line 800
    const/4 v4, 0x1

    .line 801
    goto :goto_11

    .line 802
    :cond_11
    if-nez v4, :cond_12

    .line 803
    .line 804
    new-instance v3, Ljava/lang/StringBuilder;

    .line 805
    .line 806
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 807
    .line 808
    .line 809
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 810
    .line 811
    const/4 v5, 0x3

    .line 812
    new-array v8, v5, [J

    .line 813
    .line 814
    fill-array-data v8, :array_14

    .line 815
    .line 816
    .line 817
    invoke-direct {v4, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 818
    .line 819
    .line 820
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 821
    .line 822
    .line 823
    move-result-object v4

    .line 824
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 825
    .line 826
    .line 827
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 828
    .line 829
    .line 830
    move-result-object v2

    .line 831
    check-cast v2, Ljava/lang/String;

    .line 832
    .line 833
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    .line 835
    .line 836
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 837
    .line 838
    const/4 v4, 0x7

    .line 839
    new-array v8, v4, [J

    .line 840
    .line 841
    fill-array-data v8, :array_15

    .line 842
    .line 843
    .line 844
    invoke-direct {v2, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 845
    .line 846
    .line 847
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 848
    .line 849
    .line 850
    move-result-object v2

    .line 851
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 852
    .line 853
    .line 854
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 855
    .line 856
    .line 857
    move-result-object v2

    .line 858
    invoke-static {v2}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    .line 859
    .line 860
    .line 861
    goto :goto_10

    .line 862
    :cond_12
    const/4 v5, 0x3

    .line 863
    goto :goto_10

    .line 864
    :cond_13
    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    .line 865
    .line 866
    .line 867
    move-result v0

    .line 868
    if-eqz v0, :cond_16

    .line 869
    .line 870
    invoke-virtual {v10}, Lcom/airbnb/lottie/LottieComposition;->getImages()Ljava/util/Map;

    .line 871
    .line 872
    .line 873
    move-result-object v0

    .line 874
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 875
    .line 876
    .line 877
    move-result-object v0

    .line 878
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 879
    .line 880
    .line 881
    move-result-object v0

    .line 882
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 883
    .line 884
    .line 885
    move-result v2

    .line 886
    if-eqz v2, :cond_16

    .line 887
    .line 888
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 889
    .line 890
    .line 891
    move-result-object v2

    .line 892
    check-cast v2, Ljava/util/Map$Entry;

    .line 893
    .line 894
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 895
    .line 896
    .line 897
    move-result-object v2

    .line 898
    check-cast v2, Lcom/airbnb/lottie/LottieImageAsset;

    .line 899
    .line 900
    if-nez v2, :cond_14

    .line 901
    .line 902
    const/4 v3, 0x0

    .line 903
    return-object v3

    .line 904
    :cond_14
    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieImageAsset;->getFileName()Ljava/lang/String;

    .line 905
    .line 906
    .line 907
    move-result-object v3

    .line 908
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    .line 909
    .line 910
    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 911
    .line 912
    .line 913
    iput-boolean v11, v4, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 914
    .line 915
    const/16 v5, 0xa0

    .line 916
    .line 917
    iput v5, v4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 918
    .line 919
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 920
    .line 921
    new-array v7, v6, [J

    .line 922
    .line 923
    fill-array-data v7, :array_16

    .line 924
    .line 925
    .line 926
    invoke-direct {v5, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 927
    .line 928
    .line 929
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 930
    .line 931
    .line 932
    move-result-object v5

    .line 933
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 934
    .line 935
    .line 936
    move-result v5

    .line 937
    if-eqz v5, :cond_15

    .line 938
    .line 939
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 940
    .line 941
    new-array v7, v6, [J

    .line 942
    .line 943
    fill-array-data v7, :array_17

    .line 944
    .line 945
    .line 946
    invoke-direct {v5, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 947
    .line 948
    .line 949
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 950
    .line 951
    .line 952
    move-result-object v5

    .line 953
    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 954
    .line 955
    .line 956
    move-result v5

    .line 957
    if-lez v5, :cond_15

    .line 958
    .line 959
    const/16 v5, 0x2c

    .line 960
    .line 961
    :try_start_c
    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    .line 962
    .line 963
    .line 964
    move-result v5

    .line 965
    add-int/2addr v5, v11

    .line 966
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 967
    .line 968
    .line 969
    move-result-object v3

    .line 970
    invoke-static {v3, v12}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 971
    .line 972
    .line 973
    move-result-object v3
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_1

    .line 974
    array-length v5, v3

    .line 975
    invoke-static {v3, v12, v5, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 976
    .line 977
    .line 978
    move-result-object v3

    .line 979
    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieImageAsset;->getWidth()I

    .line 980
    .line 981
    .line 982
    move-result v4

    .line 983
    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieImageAsset;->getHeight()I

    .line 984
    .line 985
    .line 986
    move-result v5

    .line 987
    invoke-static {v3, v4, v5}, Lcom/airbnb/lottie/utils/Utils;->resizeBitmapIfNeeded(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    .line 988
    .line 989
    .line 990
    move-result-object v3

    .line 991
    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieImageAsset;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 992
    .line 993
    .line 994
    :cond_15
    const/4 v2, 0x7

    .line 995
    const/4 v3, 0x0

    .line 996
    goto :goto_12

    .line 997
    :catch_1
    move-exception v0

    .line 998
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 999
    .line 1000
    const/4 v2, 0x7

    .line 1001
    new-array v2, v2, [J

    .line 1002
    .line 1003
    fill-array-data v2, :array_18

    .line 1004
    .line 1005
    .line 1006
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 1007
    .line 1008
    .line 1009
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 1010
    .line 1011
    .line 1012
    move-result-object v1

    .line 1013
    invoke-static {v1, v0}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1014
    .line 1015
    .line 1016
    const/4 v3, 0x0

    .line 1017
    return-object v3

    .line 1018
    :cond_16
    if-eqz v1, :cond_17

    .line 1019
    .line 1020
    invoke-static {}, Lcom/airbnb/lottie/model/LottieCompositionCache;->getInstance()Lcom/airbnb/lottie/model/LottieCompositionCache;

    .line 1021
    .line 1022
    .line 1023
    move-result-object v0

    .line 1024
    invoke-virtual {v0, v1, v10}, Lcom/airbnb/lottie/model/LottieCompositionCache;->put(Ljava/lang/String;Lcom/airbnb/lottie/LottieComposition;)V

    .line 1025
    .line 1026
    .line 1027
    :cond_17
    new-instance v0, Lcom/airbnb/lottie/LottieResult;

    .line 1028
    .line 1029
    invoke-direct {v0, v10}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Object;)V

    .line 1030
    .line 1031
    .line 1032
    return-object v0

    .line 1033
    :goto_13
    new-instance v1, Lcom/airbnb/lottie/LottieResult;

    .line 1034
    .line 1035
    invoke-direct {v1, v0}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Throwable;)V

    .line 1036
    .line 1037
    .line 1038
    return-object v1

    :array_0
    .array-data 8
        0x7912b843fd04ae95L    # 1.620305726336618E275
        0x28311f56229b4112L    # 4.345567579280273E-115
    .end array-data

    :array_1
    .array-data 8
        0x6f0f6e565f43bc0eL    # 9.307328147048496E226
        0x167a9544672f7eacL
        0x2859e534f69fdad6L
    .end array-data

    :array_2
    .array-data 8
        -0x6e873b7607da2d3L
        0x2664770f72de9fc7L    # 9.674426431344216E-124
    .end array-data

    :array_3
    .array-data 8
        0x47f5362ecc2c7dd5L    # 4.5112193774400795E38
        0x1e6125895c30e06cL    # 2.382050976936127E-162
    .end array-data

    :array_4
    .array-data 8
        0x3c873cfd85a60790L    # 4.031192643532434E-17
        -0x65491ea93ad31d4aL
    .end array-data

    :array_5
    .array-data 8
        0x6c3c4a9ba46136b7L    # 2.3810688900364764E213
        0x31b12cfcb621966fL    # 2.4886065363292224E-69
    .end array-data

    :array_6
    .array-data 8
        -0x16a27b279530a97eL    # -3.5305122101088526E199
        0x3b3f221be5932b74L    # 2.575281102107518E-23
    .end array-data

    :array_7
    .array-data 8
        -0x3f0a50435c11b21aL    # -88827.79002218656
        0x613a4e6568417137L    # 2.3115133370571286E160
    .end array-data

    :array_8
    .array-data 8
        0x328b8cc01a81e5a9L    # 3.270013147440873E-65
        0x4f46047c0d65cfa4L    # 7.780317370968158E73
    .end array-data

    :array_9
    .array-data 8
        0x6f22aefacd0bb3c7L    # 2.2130198793921903E227
        0x505bb52dbfe26f07L    # 1.2833343469828865E79
    .end array-data

    :array_a
    .array-data 8
        -0x51ca0edd3f026757L    # -4.4120071103786316E-86
        0x308e5a0708a9df92L    # 8.3879083699976035E-75
    .end array-data

    :array_b
    .array-data 8
        -0x1e674dec790c8b4dL    # -1.3887927820787758E162
        0x175da967cdd64e48L
        -0x40f8fc34cc7eaa16L    # -4.389728422952626E-5
        -0x41d629d76a038bb2L    # -3.0077710737746293E-9
    .end array-data

    :array_c
    .array-data 8
        -0x5d044a3737ebe604L
        -0x1c6c59d3b8e50b76L    # -4.74592093533011E171
        0x48e05f8f8a63d460L    # 1.1410513583446412E43
        0x625f77c217a451c6L    # 7.2484323142244205E165
        0x400d2221f808f20L
        -0x91abd0a2171ab03L
        0x1b9e5280a776de9bL    # 1.1972485830999348E-175
    .end array-data

    :array_d
    .array-data 8
        0x44fe712fce111662L    # 2.3001427404155416E24
        -0x1612b0c6f8e9900L
        0x3d57524fee202c24L    # 3.3141890494522557E-13
        -0x2d97aa2f777cdcd8L    # -9.681973595800835E88
    .end array-data

    :array_e
    .array-data 8
        -0x580715ae31b04efcL
        -0x21b6ef6bc3a8e82aL    # -1.564917682340601E146
        0x5f7667be087f646dL    # 7.334111339966955E151
        0x76fe09240fec8a47L    # 1.5132617464981826E265
    .end array-data

    :array_f
    .array-data 8
        -0x40bafc3e4d0dbc14L    # -6.413169666236152E-4
        -0x70eefd55c4f93c48L
    .end array-data

    :array_10
    .array-data 8
        0x515657e856dac7a2L    # 6.782157295492024E83
        0x70e72a5a8698a815L    # 7.365585026408503E235
        -0x4355a31fa90f41edL    # -1.829286593785345E-16
        0x4061673554b72f04L    # 139.22526012208994
        0x1bddfe51a3dc9211L
    .end array-data

    :array_11
    .array-data 8
        0x1e577f0c1c9bed37L
        -0x69c8bc25b94678e3L
    .end array-data

    :array_12
    .array-data 8
        -0x3b3c3d045463c252L    # -1.8664353256987235E23
        0x11481842396cad02L
    .end array-data

    :array_13
    .array-data 8
        0x549ebadd763ebe33L    # 4.200880459006065E99
        -0x71924d0f99e7d48eL    # -3.563157337900302E-239
        0x1a38e52820b6bac0L    # 2.343566444892272E-182
        0x7d4079ef7c452d10L    # 2.1045814184713365E295
        -0x3828a6d900aa44a7L    # -1.2414059713896704E38
    .end array-data

    :array_14
    .array-data 8
        -0x22d45d254b9c68b0L    # -6.5821159486784525E140
        -0x70a212969c9ba0e1L
        0x30d29cabe197fda3L    # 1.6459402166141723E-73
    .end array-data

    :array_15
    .array-data 8
        0x17462bc49a1e6564L
        -0x3c015edc5afa5bfdL    # -3.531335174495143E19
        -0x2f2a1df9b2f52dd5L    # -2.5946805356257776E81
        0xa8d5d1ad7416e3bL
        -0x8c3723d29f89117L
        -0x1b1ed77b1da9ce87L    # -8.691228057554457E177
        -0x39a7a7b7e6d4f92eL    # -7.715190970873993E30
    .end array-data

    :array_16
    .array-data 8
        -0x69539bb3e65b6748L
        0xb6f9e174b3d18daL
    .end array-data

    :array_17
    .array-data 8
        -0x2d1c3fa25fc9cb59L    # -2.011718533815778E91
        0x3a322ef2ca755a88L    # 2.29506675623597E-28
    .end array-data

    :array_18
    .array-data 8
        0x1a7f6a3f19ff6c78L
        0x785e879bbd59eb12L    # 6.451473676625813E271
        -0x315e6176a944f136L    # -6.08019114658731E70
        -0x36087bcbd3d422a6L    # -2.1480804954360492E48
        -0x138c0e8b9beb9d67L    # -2.6855385309206577E214
        0xc32ea6d14d0b859L
        -0x1ac102ad219dcffcL    # -5.023109471161609E179
    .end array-data
.end method

.method private static isGzipCompressed(Lokio/BufferedSource;)Ljava/lang/Boolean;
    .locals 1

    .line 1
    sget-object v0, Lcom/airbnb/lottie/LottieCompositionFactory;->GZIP_MAGIC:[B

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/airbnb/lottie/LottieCompositionFactory;->matchesMagicBytes(Lokio/BufferedSource;[B)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private static isNightMode(Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 10
    .line 11
    and-int/lit8 p0, p0, 0x30

    .line 12
    .line 13
    const/16 v0, 0x20

    .line 14
    .line 15
    if-ne p0, v0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    :goto_0
    return p0
.end method

.method private static isZipCompressed(Lokio/BufferedSource;)Ljava/lang/Boolean;
    .locals 1

    .line 1
    sget-object v0, Lcom/airbnb/lottie/LottieCompositionFactory;->ZIP_MAGIC:[B

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/airbnb/lottie/LottieCompositionFactory;->matchesMagicBytes(Lokio/BufferedSource;[B)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private static synthetic lambda$cache$18(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/airbnb/lottie/LottieComposition;)V
    .locals 0

    .line 1
    sget-object p2, Lcom/airbnb/lottie/LottieCompositionFactory;->taskCache:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {p2, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p2}, Ljava/util/Map;->size()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    invoke-static {p0}, Lcom/airbnb/lottie/LottieCompositionFactory;->notifyTaskCacheIdleListeners(Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method private static synthetic lambda$cache$19(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    sget-object p2, Lcom/airbnb/lottie/LottieCompositionFactory;->taskCache:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {p2, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p2}, Ljava/util/Map;->size()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    invoke-static {p0}, Lcom/airbnb/lottie/LottieCompositionFactory;->notifyTaskCacheIdleListeners(Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method private static synthetic lambda$fromAsset$1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromAssetSync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic lambda$fromInputStream$2(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromInputStreamSync(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic lambda$fromJson$8(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonSync(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic lambda$fromJsonInputStream$4(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic lambda$fromJsonInputStream$5(Ljava/io/InputStream;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/airbnb/lottie/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic lambda$fromJsonInputStream$6(Ljava/io/InputStream;Ljava/lang/String;Z)Lcom/airbnb/lottie/LottieResult;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;Z)Lcom/airbnb/lottie/LottieResult;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic lambda$fromJsonInputStream$7(ZLjava/io/InputStream;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-static {p1}, Lcom/airbnb/lottie/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method private static synthetic lambda$fromJsonReader$12(Lcom/airbnb/lottie/parser/moshi/JsonReader;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonReaderSync(Lcom/airbnb/lottie/parser/moshi/JsonReader;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic lambda$fromJsonReader$13(Lcom/airbnb/lottie/parser/moshi/JsonReader;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/airbnb/lottie/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic lambda$fromJsonSource$10(Lokio/Source;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonSourceSync(Lokio/Source;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic lambda$fromJsonSource$11(Lokio/Source;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/airbnb/lottie/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic lambda$fromJsonString$9(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonStringSync(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic lambda$fromRawRes$3(Ljava/lang/ref/WeakReference;Landroid/content/Context;ILjava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Landroid/content/Context;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    move-object p1, p0

    .line 10
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromRawResSync(Landroid/content/Context;ILjava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method private static synthetic lambda$fromUrl$0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/airbnb/lottie/L;->networkFetcher(Landroid/content/Context;)Lcom/airbnb/lottie/network/NetworkFetcher;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0, p1, p2}, Lcom/airbnb/lottie/network/NetworkFetcher;->fetchSync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieResult;->getValue()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-static {}, Lcom/airbnb/lottie/model/LottieCompositionCache;->getInstance()Lcom/airbnb/lottie/model/LottieCompositionCache;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieResult;->getValue()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/airbnb/lottie/LottieComposition;

    .line 26
    .line 27
    invoke-virtual {p1, p2, v0}, Lcom/airbnb/lottie/model/LottieCompositionCache;->put(Ljava/lang/String;Lcom/airbnb/lottie/LottieComposition;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-object p0
.end method

.method private static synthetic lambda$fromZipStream$14(Landroid/content/Context;Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromZipStreamSync(Landroid/content/Context;Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic lambda$fromZipStream$15(Ljava/util/zip/ZipInputStream;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/airbnb/lottie/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic lambda$fromZipStream$16(Landroid/content/Context;Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromZipStreamSync(Landroid/content/Context;Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic lambda$fromZipStream$17(Ljava/util/zip/ZipInputStream;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/airbnb/lottie/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static matchesMagicBytes(Lokio/BufferedSource;[B)Ljava/lang/Boolean;
    .locals 4

    .line 1
    :try_start_0
    invoke-interface {p0}, Lokio/BufferedSource;->peek()Lokio/BufferedSource;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    array-length v0, p1

    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    if-ge v1, v0, :cond_1

    .line 8
    .line 9
    aget-byte v2, p1, v1

    .line 10
    .line 11
    invoke-interface {p0}, Lokio/BufferedSource;->readByte()B

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-eq v3, v2, :cond_0

    .line 16
    .line 17
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 18
    .line 19
    return-object p0

    .line 20
    :catch_0
    move-exception p0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-interface {p0}, Lokio/Source;->close()V

    .line 26
    .line 27
    .line 28
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    return-object p0

    .line 31
    :goto_1
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 32
    .line 33
    const/4 v0, 0x5

    .line 34
    new-array v0, v0, [J

    .line 35
    .line 36
    fill-array-data v0, :array_0

    .line 37
    .line 38
    .line 39
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-static {p1, p0}, Lcom/airbnb/lottie/utils/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 50
    .line 51
    return-object p0

    .line 52
    :catch_1
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 53
    .line 54
    return-object p0

    .line 55
    :array_0
    .array-data 8
        0x4a22defde0ceca9L
        0x633fe9a53530e8bbL    # 1.2043724432871603E170
        -0x114d0601121843c5L    # -1.7560381440482625E225
        0xe2851a3872dc946L
        -0x13e65faf3e3a4560L    # -5.39189857178718E212
    .end array-data
.end method

.method private static notifyTaskCacheIdleListeners(Z)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    sget-object v1, Lcom/airbnb/lottie/LottieCompositionFactory;->taskIdleListeners:Ljava/util/Set;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-ge v1, v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lcom/airbnb/lottie/LottieTaskIdleListener;

    .line 20
    .line 21
    invoke-interface {v2, p0}, Lcom/airbnb/lottie/LottieTaskIdleListener;->onIdleChanged(Z)V

    .line 22
    .line 23
    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method private static rawResCacheKey(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    new-array v3, v2, [J

    .line 10
    .line 11
    fill-array-data v3, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-static {p0}, Lcom/airbnb/lottie/LottieCompositionFactory;->isNightMode(Landroid/content/Context;)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-eqz p0, :cond_0

    .line 29
    .line 30
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 31
    .line 32
    new-array v1, v2, [J

    .line 33
    .line 34
    fill-array-data v1, :array_1

    .line 35
    .line 36
    .line 37
    invoke-direct {p0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 38
    .line 39
    .line 40
    :goto_0
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 46
    .line 47
    new-array v1, v2, [J

    .line 48
    .line 49
    fill-array-data v1, :array_2

    .line 50
    .line 51
    .line 52
    invoke-direct {p0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0

    .line 67
    :array_0
    .array-data 8
        0x69dc543d184b3b14L    # 8.673796605692789E201
        -0x192c0c9af1902184L
    .end array-data

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    :array_1
    .array-data 8
        0x27050814a932d713L    # 1.018083369820161E-120
        0x4807fa520291fd20L    # 1.0199034073251818E39
    .end array-data

    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    :array_2
    .array-data 8
        0x246ad409cac8cc21L    # 2.952872324406367E-133
        -0x1b4208d6bc55168bL    # -1.897311376584869E177
    .end array-data
.end method

.method public static registerLottieTaskIdleListener(Lcom/airbnb/lottie/LottieTaskIdleListener;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/airbnb/lottie/LottieCompositionFactory;->taskIdleListeners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/airbnb/lottie/LottieCompositionFactory;->taskCache:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    invoke-interface {p0, v0}, Lcom/airbnb/lottie/LottieTaskIdleListener;->onIdleChanged(Z)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public static setMaxCacheSize(I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/airbnb/lottie/model/LottieCompositionCache;->getInstance()Lcom/airbnb/lottie/model/LottieCompositionCache;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/model/LottieCompositionCache;->resize(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static unregisterLottieTaskIdleListener(Lcom/airbnb/lottie/LottieTaskIdleListener;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/airbnb/lottie/LottieCompositionFactory;->taskIdleListeners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lokio/Source;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/airbnb/lottie/LottieCompositionFactory;->lambda$fromJsonSource$11(Lokio/Source;)V

    return-void
.end method

.method public static synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Ljava/util/zip/ZipInputStream;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/airbnb/lottie/LottieCompositionFactory;->lambda$fromZipStream$15(Ljava/util/zip/ZipInputStream;)V

    return-void
.end method

.method public static synthetic 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/airbnb/lottie/LottieCompositionFactory;->lambda$cache$19(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/airbnb/lottie/LottieCompositionFactory;->lambda$fromUrl$0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(Ljava/lang/ref/WeakReference;Landroid/content/Context;ILjava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/airbnb/lottie/LottieCompositionFactory;->lambda$fromRawRes$3(Ljava/lang/ref/WeakReference;Landroid/content/Context;ILjava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->lambda$fromJsonString$9(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋(Ljava/util/zip/ZipInputStream;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/airbnb/lottie/LottieCompositionFactory;->lambda$fromZipStream$17(Ljava/util/zip/ZipInputStream;)V

    return-void
.end method

.method public static synthetic 뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두(Lcom/airbnb/lottie/parser/moshi/JsonReader;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->lambda$fromJsonReader$12(Lcom/airbnb/lottie/parser/moshi/JsonReader;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎨돶땰딎땵딃됨드땭두뒹듟땭땧될땤돝땡땟땡득땫땟듌둑듔뒐둔뒨딽땪돵둥뒬돝뒼뒹땻딹둡듔든땐땰땜땠돳땔될땪두땃딄되돸든돵뎬둘땨딀둡땲뎽땬듬딝딃땜뒼됨땤딝돴듽돰듻땲됫듸든둬듰듰듸뒈땳땠뎰딽둬딽뒼딎땃돸돳딠뒷뒛땯듬뎬땅땀되될딅땩땵됨땐땧뎰뎨땥됩뒋됐딟따됐땮뎡돛듰딸뎬뒙돷(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/airbnb/lottie/LottieCompositionFactory;->lambda$fromInputStream$2(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Landroid/content/Context;Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/airbnb/lottie/LottieCompositionFactory;->lambda$fromZipStream$14(Landroid/content/Context;Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(ZLjava/io/InputStream;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->lambda$fromJsonInputStream$7(ZLjava/io/InputStream;)V

    return-void
.end method

.method public static synthetic 뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->lambda$fromJsonInputStream$4(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎨뒋딝뒘땻땭땳뒨돵뒋땡돛딟따뒷땮돴딤딃들땡돸땀뒘돳뎹됩둑딠뒬딤뎸땁뒙뒾딽딄뒷뒘땯도두뎠돸돤뒝돼뒵땳땰딅든뒻뒘땰땯땅뒼돤딃두딁땔듌뒵뎸돷뒘됴딻듔땬돵돼둔땸돨땧돝땲땧땥돛뒼뒋땨돶땮도땁돳듔돳뒈돨딟땨뎹딽둡뒤땐뒘뎡땃땯딐딄뒐땧뒤딹뒬딃땋뎽땮딅뎽뎻딞땡땮뎽뒙듟뎡뎹뒐딁(Lcom/airbnb/lottie/parser/moshi/JsonReader;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/airbnb/lottie/LottieCompositionFactory;->lambda$fromJsonReader$13(Lcom/airbnb/lottie/parser/moshi/JsonReader;)V

    return-void
.end method

.method public static synthetic 뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Lokio/Source;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->lambda$fromJsonSource$10(Lokio/Source;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎨딐딁들땠듟땣땝딄둬돨땁땸뒷돵뒝듨뒬딀듨듔딁뒐땯되들돶듰땋듽듸땡둥딹됨돨듼땀땝딀땳땍됨땱뒀땵될됫땪뒼돨땲뎹딨딅딄땜딜땨듌땫둑딜땠뒨땮땸뎡둔됫듐뒾따됐돶둡땦땲땵뒤땄든땃든뒵둑따돶듻드뒋뎸뎸돨뒘듽땧딻땋딸땯뒹딤땤디뒀둡되땯뒾뎹뒷됴뒨딁땰들됨된딜둬땣땀땔딸됩땩돴땡뎨(Ljava/io/InputStream;Ljava/lang/String;Z)Lcom/airbnb/lottie/LottieResult;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/airbnb/lottie/LottieCompositionFactory;->lambda$fromJsonInputStream$6(Ljava/io/InputStream;Ljava/lang/String;Z)Lcom/airbnb/lottie/LottieResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎨딠땱땯딃땯땪됨땧돛돳뒹됴뎹될디든땣뒐돳돤든둔뒻땰됨뒻땤듰딄됨뒘땀딃둬둥둔딻돴땡땡될딠딨뎰땭됩딀두뒘딠득뒝딞딹땁됩땨땫된둣땳둑땁뒈땳땠도든딹뎡돼되뎸땨뎬딤딐돴땧돝딄땫듬뒉딟땋딐돼뎻딅땀돶둡디돶득되둔딝땪뎬뒛땟뒋돰돤됨돳땭돳됐뎰듻땃듬듻돷듸뒤딟땃도뎸돸딁딹땯뒙듐(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/airbnb/lottie/LottieCompositionFactory;->lambda$fromAsset$1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎨땋된땫딜딜땮듔든득됫뒻뒬땃돰땔땠땫뒉딜돛둑땅뒙든듨땁딁땧땦뒼딎듨딽되땩뒤됐땫돳뎻뎨듰딞됐뎸땯뎻땸뎨땋딞뎰딠딅뒐됩뒐뎡뒹딅딞뎽땅둑땟땧땣듸됨뒷땤딀뒉돨딎둠됫딁땳뎰됨땁땧되땔들뒻뎠땨뎠딜뒘땻땤뎰돤딜땦땩딃돸둣땣됐듐땃뒛뒷둔두땃딽땤됐딻땝둔딞뎽돝된땫뒻뎬돛땨딹든듌(Landroid/content/Context;Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/airbnb/lottie/LottieCompositionFactory;->lambda$fromZipStream$16(Landroid/content/Context;Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎨땱듼딃든둔뒬뒨땣된둬딻땵딎딽디땋따땃뒷딐땁된땀땔듨땤둠돠뎽땤돷듽둡돛딨듻뒋딐둣듌뒵듐둑뒾됫듟딌딤될뒨둥듟땬땁뒼땄돴뒙디딐딜들둣땧듬땐딌됨딹땸뒘땪뒝뒻딀땬땡딤듟딁따들돤땝뒼뒙딌딜딨뎹땀딌뎠득땝땔땅돠돛둬뒬뒻돨둡돠땋땯돝돵땔둘됴뒹땲땻땤듬뎬뎡돶땸돳듰땭뒐땪둔듔땬(Ljava/io/InputStream;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/airbnb/lottie/LottieCompositionFactory;->lambda$fromJsonInputStream$5(Ljava/io/InputStream;)V

    return-void
.end method

.method public static synthetic 뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/airbnb/lottie/LottieComposition;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/airbnb/lottie/LottieCompositionFactory;->lambda$cache$18(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/airbnb/lottie/LottieComposition;)V

    return-void
.end method

.method public static synthetic 뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->lambda$fromJson$8(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object p0

    return-object p0
.end method
