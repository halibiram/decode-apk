.class public final Lkotlinx/coroutines/ExecutorsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u0011\u0010\u0003\u001a\u00020\u0001*\u00020\u0004H\u0007\u00a2\u0006\u0002\u0008\u0005\u001a\u0011\u0010\u0003\u001a\u00020\u0006*\u00020\u0007H\u0007\u00a2\u0006\u0002\u0008\u0005\u001a\n\u0010\u0008\u001a\u00020\u0007*\u00020\u0006*\u0010\u0008\u0007\u0010\u0000\"\u00020\u00012\u00020\u0001B\u0002\u0008\u0002\u00a8\u0006\t"
    }
    d2 = {
        "CloseableCoroutineDispatcher",
        "Lkotlinx/coroutines/ExecutorCoroutineDispatcher;",
        "Lkotlinx/coroutines/ExperimentalCoroutinesApi;",
        "asCoroutineDispatcher",
        "Ljava/util/concurrent/ExecutorService;",
        "from",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "Ljava/util/concurrent/Executor;",
        "asExecutor",
        "kotlinx-coroutines-core"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic CloseableCoroutineDispatcher$annotations()V
    .locals 0
    .annotation build Lkotlinx/coroutines/ExperimentalCoroutinesApi;
    .end annotation

    return-void
.end method

.method public static final asExecutor(Lkotlinx/coroutines/CoroutineDispatcher;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0    # Lkotlinx/coroutines/CoroutineDispatcher;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    instance-of v0, p0, Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    check-cast v0, Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Lkotlinx/coroutines/ExecutorCoroutineDispatcher;->getExecutor()Ljava/util/concurrent/Executor;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_2

    .line 17
    .line 18
    :cond_1
    new-instance v0, L뒋딟둣딄두되돶땲땯돨듸땸딟둔땟딄돳듸돠땸뒐든땔땩돨땻든뎠듻된뒼될땪뎸돷땟뒋득땀땵딃뎸땵둥뒙땟된딌땹돵뎻땋땯딨딁뎰뒵돶땠뒙뒼땁돴드둘듐든둠돤둬둣뎰돼딅듽듨되땃딨딽땡땋딨뒷둬딅득딝돵뒼됐득도뒨딞둬뎰땨땝뒘든땅뎨돴딜둥뒬땤돵돠뎠딅뒹땣땍뎨뒉땃되들듽뎻듐돠뒼땻돝뎡뎠땁;

    .line 19
    .line 20
    invoke-direct {v0, p0}, L뒋딟둣딄두되돶땲땯돨듸땸딟둔땟딄돳듸돠땸뒐든땔땩돨땻든뎠듻된뒼될땪뎸돷땟뒋득땀땵딃뎸땵둥뒙땟된딌땹돵뎻땋땯딨딁뎰뒵돶땠뒙뒼땁돴드둘듐든둠돤둬둣뎰돼딅듽듨되땃딨딽땡땋딨뒷둬딅득딝돵뒼됐득도뒨딞둬뎰땨땝뒘든땅뎨돴딜둥뒬땤돵돠뎠딅뒹땣땍뎨뒉땃되들듽뎻듐돠뒼땻돝뎡뎠땁;-><init>(Lkotlinx/coroutines/CoroutineDispatcher;)V

    .line 21
    .line 22
    .line 23
    :cond_2
    return-object v0
.end method

.method public static final from(Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 1
    .param p0    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmName;
        name = "from"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    instance-of v0, p0, L뒋딟둣딄두되돶땲땯돨듸땸딟둔땟딄돳듸돠땸뒐든땔땩돨땻든뎠듻된뒼될땪뎸돷땟뒋득땀땵딃뎸땵둥뒙땟된딌땹돵뎻땋땯딨딁뎰뒵돶땠뒙뒼땁돴드둘듐든둠돤둬둣뎰돼딅듽듨되땃딨딽땡땋딨뒷둬딅득딝돵뒼됐득도뒨딞둬뎰땨땝뒘든땅뎨돴딜둥뒬땤돵돠뎠딅뒹땣땍뎨뒉땃되들듽뎻듐돠뒼땻돝뎡뎠땁;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, L뒋딟둣딄두되돶땲땯돨듸땸딟둔땟딄돳듸돠땸뒐든땔땩돨땻든뎠듻된뒼될땪뎸돷땟뒋득땀땵딃뎸땵둥뒙땟된딌땹돵뎻땋땯딨딁뎰뒵돶땠뒙뒼땁돴드둘듐든둠돤둬둣뎰돼딅듽듨되땃딨딽땡땋딨뒷둬딅득딝돵뒼됐득도뒨딞둬뎰땨땝뒘든땅뎨돴딜둥뒬땤돵돠뎠딅뒹땣땍뎨뒉땃되들듽뎻듐돠뒼땻돝뎡뎠땁;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, v0, L뒋딟둣딄두되돶땲땯돨듸땸딟둔땟딄돳듸돠땸뒐든땔땩돨땻든뎠듻된뒼될땪뎸돷땟뒋득땀땵딃뎸땵둥뒙땟된딌땹돵뎻땋땯딨딁뎰뒵돶땠뒙뒼땁돴드둘듐든둠돤둬둣뎰돼딅듽듨되땃딨딽땡땋딨뒷둬딅득딝돵뒼됐득도뒨딞둬뎰땨땝뒘든땅뎨돴딜둥뒬땤돵돠뎠딅뒹땣땍뎨뒉땃되들듽뎻듐돠뒼땻돝뎡뎠땁;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lkotlinx/coroutines/CoroutineDispatcher;

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;-><init>(Ljava/util/concurrent/Executor;)V

    :cond_2
    return-object v0
.end method

.method public static final from(Ljava/util/concurrent/ExecutorService;)Lkotlinx/coroutines/ExecutorCoroutineDispatcher;
    .locals 1
    .param p0    # Ljava/util/concurrent/ExecutorService;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmName;
        name = "from"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method
