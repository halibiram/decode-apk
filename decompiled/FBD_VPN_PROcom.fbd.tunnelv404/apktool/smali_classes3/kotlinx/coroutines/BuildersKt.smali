.class public final Lkotlinx/coroutines/BuildersKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {}
    d2 = {}
    k = 0x4
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final async(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Deferred;
    .locals 1
    .param p0    # Lkotlinx/coroutines/CoroutineScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlinx/coroutines/CoroutineStart;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkotlinx/coroutines/CoroutineStart;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/CoroutineScope;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlinx/coroutines/Deferred<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lkotlinx/coroutines/CoroutineContextKt;->newCoroutineContext(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p2}, Lkotlinx/coroutines/CoroutineStart;->isLazy()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    new-instance p1, L딄돴뒻됐뒈든뒀뒨뒾땦딅딟딜돳뎹뒀땨딠드듐딄뒐땵뒙뎨둣돸땣딐뒐뎡딨땀둥땨디돝딀듟땔땰땤땟디땫땜드돶듸둑딐뒨돨땧듬딜뒼될듟땯딌땡돛든땨뒤듟딎둑듨뎨됫듐된디듼됨땫둥땯땧듽땥둬둔듼듻됩뎹땮뒤딤땦돤돝돷땭듽딟딽땄듬둔둘딜땍둠땭돴뒷뒵뒾딃딝뒛딃뎠땰뒀땭땸뒀땃땸땡됐땦뒬땸뎽;

    .line 12
    .line 13
    invoke-direct {p1, p0, p3}, L딄돴뒻됐뒈든뒀뒨뒾땦딅딟딜돳뎹뒀땨딠드듐딄뒐땵뒙뎨둣돸땣딐뒐뎡딨땀둥땨디돝딀듟땔땰땤땟디땫땜드돶듸둑딐뒨돨땧듬딜뒼될듟땯딌땡돛든땨뒤듟딎둑듨뎨됫듐된디듼됨땫둥땯땧듽땥둬둔듼듻됩뎹땮뒤딤땦돤돝돷땭듽딟딽땄듬둔둘딜땍둠땭돴뒷뒵뒾딃딝뒛딃뎠땰뒀땭땸뒀땃땸땡됐땦뒬땸뎽;-><init>(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance p1, L뒉땍둘뒨되뒝땜될돝뒛둣딐땫디둬돴땣돼되땥땳땤둠땁도딁딞듽딄뎸뎽딝듼됩드땣뎹땯땧땄됩딝뒵뎹딤땦돝돼땐땔듟든딨듬뒤딌땲딤돝딄딽듸딟뒼됩땔딨돵될뒾딌딎뒷뒀듻된땥둡듬땦둠뒛뒋뎸듽땐둬땀돵땝뒈딸딌뒀땡딞디듻돳둬디딨땪듟돨됴듻둬땋땮뒀딝됨돵땫뒙둣딝듬땅둥뎠둑땅땮됫땄딹뒘뎡;

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    invoke-direct {p1, p0, v0, v0}, Lkotlinx/coroutines/AbstractCoroutine;-><init>(Lkotlin/coroutines/CoroutineContext;ZZ)V

    .line 21
    .line 22
    .line 23
    :goto_0
    invoke-virtual {p1, p2, p1, p3}, Lkotlinx/coroutines/AbstractCoroutine;->start(Lkotlinx/coroutines/CoroutineStart;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 24
    .line 25
    .line 26
    return-object p1
.end method

.method public static synthetic async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x1

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    sget-object p1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p4, p4, 0x2

    .line 8
    .line 9
    if-eqz p4, :cond_1

    .line 10
    .line 11
    sget-object p2, Lkotlinx/coroutines/CoroutineStart;->DEFAULT:Lkotlinx/coroutines/CoroutineStart;

    .line 12
    .line 13
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/BuildersKt;->async(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Deferred;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public static final invoke(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p0    # Lkotlinx/coroutines/CoroutineDispatcher;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/CoroutineScope;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final launch(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;
    .locals 1
    .param p0    # Lkotlinx/coroutines/CoroutineScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlinx/coroutines/CoroutineStart;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkotlinx/coroutines/CoroutineStart;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/CoroutineScope;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlinx/coroutines/Job;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lkotlinx/coroutines/CoroutineContextKt;->newCoroutineContext(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p2}, Lkotlinx/coroutines/CoroutineStart;->isLazy()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    new-instance p1, L딄뒹될딐돳땅드됴두돶딄땍땦둡땤둘둘뒬땮되듐딜됴땨득듟뒐듬도딎땹뎬땄뎻딞뎻돷땭땱뎬땩둔드땹딸땲뒙땜되뒼딹딌땝뒤돳돼땦땜돵돼뒷딤돰듟땪듽돤듸뒷뒤땅둑땱돨땟뎡돷뒹뒹도땰될딄땯땵돸뎨돰돛뒾뒘돷땵뒹돴디듌돼듨뒬땥들뒨땬딃땠땀땮뒤딅딨땝뒼딻땮땍두땲딝뒈딐딞땰도뒤됴뒐듸땵돼;

    .line 12
    .line 13
    invoke-direct {p1, p0, p3}, L딄뒹될딐돳땅드됴두돶딄땍땦둡땤둘둘뒬땮되듐딜됴땨득듟뒐듬도딎땹뎬땄뎻딞뎻돷땭땱뎬땩둔드땹딸땲뒙땜되뒼딹딌땝뒤돳돼땦땜돵돼뒷딤돰듟땪듽돤듸뒷뒤땅둑땱돨땟뎡돷뒹뒹도땰될딄땯땵돸뎨돰돛뒾뒘돷땵뒹돴디듌돼듨뒬땥들뒨땬딃땠땀땮뒤딅딨땝뒼딻땮땍두땲딝뒈딐딞땰도뒤됴뒐듸땵돼;-><init>(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance p1, L땡땟된돼듐땹땪돶듌딻돝딻뒹듻뒵득딅땃뒤뒼땬됐돴듬뒐돶딄뒀땐돸땃뒈됫뒾듰딸듬땟둑딞땔땻듨딁됩됐땅땲득땐땹땅뎹돰따땭땻땣딹둣듰돠땥둔뒤듰딐돸뎽땁둑든뒬돨뒈돛뎬딎됨돰될땤뒷땧듌땭돝득땬둔돝딅딻딜듽듌듌딨딄드땱딀돰뒾될뒋된두됫땭뎹딀뒤되땐땀됨땩땵뒼득돠땥돰땵듌돶뒹둣도;

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    invoke-direct {p1, p0, v0, v0}, Lkotlinx/coroutines/AbstractCoroutine;-><init>(Lkotlin/coroutines/CoroutineContext;ZZ)V

    .line 21
    .line 22
    .line 23
    :goto_0
    invoke-virtual {p1, p2, p1, p3}, Lkotlinx/coroutines/AbstractCoroutine;->start(Lkotlinx/coroutines/CoroutineStart;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 24
    .line 25
    .line 26
    return-object p1
.end method

.method public static synthetic launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x1

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    sget-object p1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p4, p4, 0x2

    .line 8
    .line 9
    if-eqz p4, :cond_1

    .line 10
    .line 11
    sget-object p2, Lkotlinx/coroutines/CoroutineStart;->DEFAULT:Lkotlinx/coroutines/CoroutineStart;

    .line 12
    .line 13
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/BuildersKt;->launch(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public static final runBlocking(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 6
    .param p0    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/CoroutineScope;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)TT;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lkotlin/coroutines/ContinuationInterceptor;->Key:Lkotlin/coroutines/ContinuationInterceptor$Key;

    .line 6
    .line 7
    invoke-interface {p0, v1}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lkotlin/coroutines/ContinuationInterceptor;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    sget-object v1, Lkotlinx/coroutines/ThreadLocalEventLoop;->INSTANCE:Lkotlinx/coroutines/ThreadLocalEventLoop;

    .line 17
    .line 18
    invoke-virtual {v1}, Lkotlinx/coroutines/ThreadLocalEventLoop;->getEventLoop$kotlinx_coroutines_core()Lkotlinx/coroutines/EventLoop;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    sget-object v3, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    .line 23
    .line 24
    invoke-interface {p0, v1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-static {v3, p0}, Lkotlinx/coroutines/CoroutineContextKt;->newCoroutineContext(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    goto :goto_2

    .line 33
    :cond_0
    instance-of v3, v1, Lkotlinx/coroutines/EventLoop;

    .line 34
    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    check-cast v1, Lkotlinx/coroutines/EventLoop;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move-object v1, v2

    .line 41
    :goto_0
    if-eqz v1, :cond_3

    .line 42
    .line 43
    invoke-virtual {v1}, Lkotlinx/coroutines/EventLoop;->shouldBeProcessedFromContext()Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_2

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    move-object v1, v2

    .line 51
    :goto_1
    if-nez v1, :cond_4

    .line 52
    .line 53
    :cond_3
    sget-object v1, Lkotlinx/coroutines/ThreadLocalEventLoop;->INSTANCE:Lkotlinx/coroutines/ThreadLocalEventLoop;

    .line 54
    .line 55
    invoke-virtual {v1}, Lkotlinx/coroutines/ThreadLocalEventLoop;->currentOrNull$kotlinx_coroutines_core()Lkotlinx/coroutines/EventLoop;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    :cond_4
    sget-object v3, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    .line 60
    .line 61
    invoke-static {v3, p0}, Lkotlinx/coroutines/CoroutineContextKt;->newCoroutineContext(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    :goto_2
    new-instance v3, L돤땍된뎰딌듌땍딠뒐뒙듨땡뒷듼땤뒀돠둬땁뒼땬돰됴땫땦땤듬둣든땱둥둘딸뒀딽딐딃듟뒀돼땋땻둬듬땍뎡됐든듔뎠뒻뒼뒹땫듸땤득돰땍뎡됫돶듬뎡돝땡돷듔딸드됩뒼돴딽딃둡듰뎹딽뒙뎹됫돤딄뎰됐땪땤땱뎠딜둥딃뒨돷땅둬뒈돵둘뒨듽땲딻돷딹땲뒛땹뒙뎬땲돝들땡뒤뒨땍듬뎻딹뎡뒾딸딄땮딐돶땥돶;

    .line 66
    .line 67
    invoke-direct {v3, p0, v0, v1}, L돤땍된뎰딌듌땍딠뒐뒙듨땡뒷듼땤뒀돠둬땁뒼땬돰됴땫땦땤듬둣든땱둥둘딸뒀딽딐딃듟뒀돼땋땻둬듬땍뎡됐든듔뎠뒻뒼뒹땫듸땤득돰땍뎡됫돶듬뎡돝땡돷듔딸드됩뒼돴딽딃둡듰뎹딽뒙뎹됫돤딄뎰됐땪땤땱뎠딜둥딃뒨돷땅둬뒈돵둘뒨듽땲딻돷딹땲뒛땹뒙뎬땲돝들땡뒤뒨땍듬뎻딹뎡뒾딸딄땮딐돶땥돶;-><init>(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Thread;Lkotlinx/coroutines/EventLoop;)V

    .line 68
    .line 69
    .line 70
    sget-object p0, Lkotlinx/coroutines/CoroutineStart;->DEFAULT:Lkotlinx/coroutines/CoroutineStart;

    .line 71
    .line 72
    invoke-virtual {v3, p0, v3, p1}, Lkotlinx/coroutines/AbstractCoroutine;->start(Lkotlinx/coroutines/CoroutineStart;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 73
    .line 74
    .line 75
    invoke-static {}, Lkotlinx/coroutines/AbstractTimeSourceKt;->access$getTimeSource$p()Lkotlinx/coroutines/AbstractTimeSource;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    if-eqz p0, :cond_5

    .line 80
    .line 81
    invoke-virtual {p0}, Lkotlinx/coroutines/AbstractTimeSource;->registerTimeLoopThread()V

    .line 82
    .line 83
    .line 84
    :cond_5
    const/4 p0, 0x1

    .line 85
    const/4 p1, 0x0

    .line 86
    iget-object v0, v3, L돤땍된뎰딌듌땍딠뒐뒙듨땡뒷듼땤뒀돠둬땁뒼땬돰됴땫땦땤듬둣든땱둥둘딸뒀딽딐딃듟뒀돼땋땻둬듬땍뎡됐든듔뎠뒻뒼뒹땫듸땤득돰땍뎡됫돶듬뎡돝땡돷듔딸드됩뒼돴딽딃둡듰뎹딽뒙뎹됫돤딄뎰됐땪땤땱뎠딜둥딃뒨돷땅둬뒈돵둘뒨듽땲딻돷딹땲뒛땹뒙뎬땲돝들땡뒤뒨땍듬뎻딹뎡뒾딸딄땮딐돶땥돶;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨:Lkotlinx/coroutines/EventLoop;

    .line 87
    .line 88
    if-eqz v0, :cond_6

    .line 89
    .line 90
    :try_start_0
    invoke-static {v0, p1, p0, v2}, Lkotlinx/coroutines/EventLoop;->incrementUseCount$default(Lkotlinx/coroutines/EventLoop;ZILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    .line 92
    .line 93
    goto :goto_3

    .line 94
    :catchall_0
    move-exception p0

    .line 95
    goto :goto_7

    .line 96
    :cond_6
    :goto_3
    if-eqz v0, :cond_7

    .line 97
    .line 98
    :try_start_1
    invoke-virtual {v0}, Lkotlinx/coroutines/EventLoop;->processNextEvent()J

    .line 99
    .line 100
    .line 101
    move-result-wide v4

    .line 102
    goto :goto_4

    .line 103
    :catchall_1
    move-exception v1

    .line 104
    goto :goto_6

    .line 105
    :cond_7
    const-wide v4, 0x7fffffffffffffffL

    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    :goto_4
    invoke-virtual {v3}, Lkotlinx/coroutines/JobSupport;->isCompleted()Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-nez v1, :cond_9

    .line 115
    .line 116
    invoke-static {}, Lkotlinx/coroutines/AbstractTimeSourceKt;->access$getTimeSource$p()Lkotlinx/coroutines/AbstractTimeSource;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    if-eqz v1, :cond_8

    .line 121
    .line 122
    invoke-virtual {v1, v3, v4, v5}, Lkotlinx/coroutines/AbstractTimeSource;->parkNanos(Ljava/lang/Object;J)V

    .line 123
    .line 124
    .line 125
    goto :goto_5

    .line 126
    :cond_8
    invoke-static {v3, v4, v5}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 127
    .line 128
    .line 129
    :goto_5
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    if-eqz v1, :cond_6

    .line 134
    .line 135
    new-instance v1, Ljava/lang/InterruptedException;

    .line 136
    .line 137
    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v3, v1}, Lkotlinx/coroutines/JobSupport;->cancelCoroutine(Ljava/lang/Throwable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 141
    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_9
    if-eqz v0, :cond_a

    .line 145
    .line 146
    :try_start_2
    invoke-static {v0, p1, p0, v2}, Lkotlinx/coroutines/EventLoop;->decrementUseCount$default(Lkotlinx/coroutines/EventLoop;ZILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 147
    .line 148
    .line 149
    :cond_a
    invoke-static {}, Lkotlinx/coroutines/AbstractTimeSourceKt;->access$getTimeSource$p()Lkotlinx/coroutines/AbstractTimeSource;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    if-eqz p0, :cond_b

    .line 154
    .line 155
    invoke-virtual {p0}, Lkotlinx/coroutines/AbstractTimeSource;->unregisterTimeLoopThread()V

    .line 156
    .line 157
    .line 158
    :cond_b
    invoke-virtual {v3}, Lkotlinx/coroutines/JobSupport;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    invoke-static {p0}, Lkotlinx/coroutines/JobSupportKt;->unboxState(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    instance-of p1, p0, Lkotlinx/coroutines/CompletedExceptionally;

    .line 167
    .line 168
    if-eqz p1, :cond_c

    .line 169
    .line 170
    move-object v2, p0

    .line 171
    check-cast v2, Lkotlinx/coroutines/CompletedExceptionally;

    .line 172
    .line 173
    :cond_c
    if-nez v2, :cond_d

    .line 174
    .line 175
    return-object p0

    .line 176
    :cond_d
    iget-object p0, v2, Lkotlinx/coroutines/CompletedExceptionally;->cause:Ljava/lang/Throwable;

    .line 177
    .line 178
    throw p0

    .line 179
    :goto_6
    if-eqz v0, :cond_e

    .line 180
    .line 181
    :try_start_3
    invoke-static {v0, p1, p0, v2}, Lkotlinx/coroutines/EventLoop;->decrementUseCount$default(Lkotlinx/coroutines/EventLoop;ZILjava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    :cond_e
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 185
    :goto_7
    invoke-static {}, Lkotlinx/coroutines/AbstractTimeSourceKt;->access$getTimeSource$p()Lkotlinx/coroutines/AbstractTimeSource;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    if-eqz p1, :cond_f

    .line 190
    .line 191
    invoke-virtual {p1}, Lkotlinx/coroutines/AbstractTimeSource;->unregisterTimeLoopThread()V

    .line 192
    .line 193
    .line 194
    :cond_f
    throw p0
.end method

.method public static synthetic runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    sget-object p0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 6
    .line 7
    :cond_0
    invoke-static {p0, p1}, Lkotlinx/coroutines/BuildersKt;->runBlocking(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static final withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p0    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/CoroutineScope;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-interface {p2}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p0}, Lkotlinx/coroutines/CoroutineContextKt;->newCoroutineContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0}, Lkotlinx/coroutines/JobKt;->ensureActive(Lkotlin/coroutines/CoroutineContext;)V

    .line 10
    .line 11
    .line 12
    if-ne p0, v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Lkotlinx/coroutines/internal/ScopeCoroutine;

    .line 15
    .line 16
    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/internal/ScopeCoroutine;-><init>(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)V

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v0, p1}, Lkotlinx/coroutines/intrinsics/UndispatchedKt;->startUndispatchedOrReturn(Lkotlinx/coroutines/internal/ScopeCoroutine;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    sget-object v1, Lkotlin/coroutines/ContinuationInterceptor;->Key:Lkotlin/coroutines/ContinuationInterceptor$Key;

    .line 25
    .line 26
    invoke-interface {p0, v1}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    new-instance v0, Lkotlinx/coroutines/UndispatchedCoroutine;

    .line 41
    .line 42
    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/UndispatchedCoroutine;-><init>(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lkotlinx/coroutines/AbstractCoroutine;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    const/4 v1, 0x0

    .line 50
    invoke-static {p0, v1}, Lkotlinx/coroutines/internal/ThreadContextKt;->updateThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    :try_start_0
    invoke-static {v0, v0, p1}, Lkotlinx/coroutines/intrinsics/UndispatchedKt;->startUndispatchedOrReturn(Lkotlinx/coroutines/internal/ScopeCoroutine;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    invoke-static {p0, v1}, Lkotlinx/coroutines/internal/ThreadContextKt;->restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    move-object p0, p1

    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception p1

    .line 64
    invoke-static {p0, v1}, Lkotlinx/coroutines/internal/ThreadContextKt;->restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    throw p1

    .line 68
    :cond_1
    new-instance v0, Lkotlinx/coroutines/DispatchedCoroutine;

    .line 69
    .line 70
    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/DispatchedCoroutine;-><init>(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)V

    .line 71
    .line 72
    .line 73
    invoke-static {p1, v0, v0}, Lkotlinx/coroutines/intrinsics/CancellableKt;->startCoroutineCancellable(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Lkotlinx/coroutines/DispatchedCoroutine;->getResult$kotlinx_coroutines_core()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    :goto_0
    invoke-static {}, L딀땭딠도듻두뎰땻땩둣땰돨딸딽득땰뒉땡돨돸땭딐딅딄뒷돤뒵뎬뒤듬딞둔둔땠땅딐딽도돼돷될딌땔땩뒝땸듨뎻득듟땃뎻둬땹돰땧됴될돵뎬따딠듌둑됴둣땥둠땭땠됴돤듬돷딅땩딨둠딝듰듻딞땍땸뎻둡듻듟땲땰딹땤딜땋돠땸돷듸땫딠땻뒛딎뒈됩땲뒉딹딹딁땰땹땭땃뒹되딹땔듐땣돼땍돸돼딀땍땪둔땡뒻;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    if-ne p0, p1, :cond_2

    .line 85
    .line 86
    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    .line 87
    .line 88
    .line 89
    :cond_2
    return-object p0
.end method
