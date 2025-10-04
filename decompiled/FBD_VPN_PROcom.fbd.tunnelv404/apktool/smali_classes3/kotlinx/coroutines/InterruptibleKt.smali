.class public final Lkotlinx/coroutines/InterruptibleKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a.\u0010\u0005\u001a\u00028\u0000\"\u0004\u0008\u0000\u0010\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0003H\u0086@\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "T",
        "Lkotlin/coroutines/CoroutineContext;",
        "context",
        "Lkotlin/Function0;",
        "block",
        "runInterruptible",
        "(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.method public static final access$runInterruptibleInExpectedContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, L땫돼듌듟땪두뎹됩돨뒉딁듬듰되뎹땀돠뒻돷딻땋따땔듌딄둣딎땪듬됫딄땅땩됩딤된둣뒙된도딃된뒛딐땍뒐뒼둬땲둡뎽뒨땱듟돰땨딤딄뎸돝된땡뒝딌뒾둥돷땦됴땲듬땍뒀딌땱땸돳돶따뎹듟뒉들뒬뎻돵딜땤땝땮땹땍딹뒾돛뎨뒷듌둬둬땔듐딌뎹둣둣땠땍뒷땵도돳뒹딸땻뒋둬뎡됨땤뎠땍뒘듬둥뒉뒼뒹따땬;

    .line 2
    .line 3
    invoke-direct {v0}, L땫돼듌듟땪두뎹됩돨뒉딁듬듰되뎹땀돠뒻돷딻땋따땔듌딄둣딎땪듬됫딄땅땩됩딤된둣뒙된도딃된뒛딐땍뒐뒼둬땲둡뎽뒨땱듟돰땨딤딄뎸돝된땡뒝딌뒾둥돷땦됴땲듬땍뒀딌땱땸돳돶따뎹듟뒉들뒬뎻돵딜땤땝땮땹땍딹뒾돛뎨뒷듌둬둬땔듐딌뎹둣둣땠땍뒷땵도돳뒹딸땻뒋둬뎡됨땤뎠땍뒘듬둥뒉뒼뒹따땬;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lkotlinx/coroutines/JobKt;->getJob(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/Job;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x1

    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-static {p0, v3, v0, v2, v1}, Lkotlinx/coroutines/JobKt;->invokeOnCompletion$default(Lkotlinx/coroutines/Job;ZLkotlinx/coroutines/JobNode;ILjava/lang/Object;)Lkotlinx/coroutines/DisposableHandle;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    iput-object p0, v0, L땫돼듌듟땪두뎹됩돨뒉딁듬듰되뎹땀돠뒻돷딻땋따땔듌딄둣딎땪듬됫딄땅땩됩딤된둣뒙된도딃된뒛딐땍뒐뒼둬땲둡뎽뒨땱듟돰땨딤딄뎸돝된땡뒝딌뒾둥돷땦됴땲듬땍뒀딌땱땸돳돶따뎹듟뒉들뒬뎻돵딜땤땝땮땹땍딹뒾돛뎨뒷듌둬둬땔듐딌뎹둣둣땠땍뒷땵도돳뒹딸땻뒋둬뎡됨땤뎠땍뒘듬둥뒉뒼뒹따땬;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨:Lkotlinx/coroutines/DisposableHandle;

    .line 18
    .line 19
    :cond_0
    sget-object p0, L땫돼듌듟땪두뎹됩돨뒉딁듬듰되뎹땀돠뒻돷딻땋따땔듌딄둣딎땪듬됫딄땅땩됩딤된둣뒙된도딃된뒛딐땍뒐뒼둬땲둡뎽뒨땱듟돰땨딤딄뎸돝된땡뒝딌뒾둥돷땦됴땲듬땍뒀딌땱땸돳돶따뎹듟뒉들뒬뎻돵딜땤땝땮땹땍딹뒾돛뎨뒷듌둬둬땔듐딌뎹둣둣땠땍뒷땵도돳뒹딸땻뒋둬뎡됨땤뎠땍뒘듬둥뒉뒼뒹따땬;->뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_2

    .line 26
    .line 27
    const/4 p0, 0x2

    .line 28
    if-eq v2, p0, :cond_3

    .line 29
    .line 30
    const/4 p0, 0x3

    .line 31
    if-ne v2, p0, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-static {v2}, L땫돼듌듟땪두뎹됩돨뒉딁듬듰되뎹땀돠뒻돷딻땋따땔듌딄둣딎땪듬됫딄땅땩됩딤된둣뒙된도딃된뒛딐땍뒐뒼둬땲둡뎽뒨땱듟돰땨딤딄뎸돝된땡뒝딌뒾둥돷땦됴땲듬땍뒀딌땱땸돳돶따뎹듟뒉들뒬뎻돵딜땤땝땮땹땍딹뒾돛뎨뒷듌둬둬땔듐딌뎹둣둣땠땍뒷땵도돳뒹딸땻뒋둬뎡됨땤뎠땍뒘듬둥뒉뒼뒹따땬;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(I)V

    .line 35
    .line 36
    .line 37
    throw v1

    .line 38
    :cond_2
    invoke-virtual {p0, v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 39
    .line 40
    .line 41
    move-result p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    if-eqz p0, :cond_0

    .line 43
    .line 44
    :cond_3
    :goto_0
    :try_start_1
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    :try_start_2
    invoke-virtual {v0}, L땫돼듌듟땪두뎹됩돨뒉딁듬듰되뎹땀돠뒻돷딻땋따땔듌딄둣딎땪듬됫딄땅땩됩딤된둣뒙된도딃된뒛딐땍뒐뒼둬땲둡뎽뒨땱듟돰땨딤딄뎸돝된땡뒝딌뒾둥돷땦됴땲듬땍뒀딌땱땸돳돶따뎹듟뒉들뒬뎻돵딜땤땝땮땹땍딹뒾돛뎨뒷듌둬둬땔듐딌뎹둣둣땠땍뒷땵도돳뒹딸땻뒋둬뎡됨땤뎠땍뒘듬둥뒉뒼뒹따땬;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉()V

    .line 49
    .line 50
    .line 51
    return-object p0

    .line 52
    :catch_0
    move-exception p0

    .line 53
    goto :goto_1

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    invoke-virtual {v0}, L땫돼듌듟땪두뎹됩돨뒉딁듬듰되뎹땀돠뒻돷딻땋따땔듌딄둣딎땪듬됫딄땅땩됩딤된둣뒙된도딃된뒛딐땍뒐뒼둬땲둡뎽뒨땱듟돰땨딤딄뎸돝된땡뒝딌뒾둥돷땦됴땲듬땍뒀딌땱땸돳돶따뎹듟뒉들뒬뎻돵딜땤땝땮땹땍딹뒾돛뎨뒷듌둬둬땔듐딌뎹둣둣땠땍뒷땵도돳뒹딸땻뒋둬뎡됨땤뎠땍뒘듬둥뒉뒼뒹따땬;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉()V

    .line 56
    .line 57
    .line 58
    throw p0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 59
    :goto_1
    new-instance p1, Ljava/util/concurrent/CancellationException;

    .line 60
    .line 61
    const-string v0, "Blocking call was interrupted due to parent cancellation"

    .line 62
    .line 63
    invoke-direct {p1, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    throw p0
.end method

.method public static final runInterruptible(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p0    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function0;
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
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    new-instance v0, L딀땭둡딨둠딌된돳딹뒋뒻뎹딎돼땻돠뒐딀딸디둘둬듨뒬듔뒻땱들둔딎됴따땔뒬딠땭뎠딻뎸딠뒘땟됴땠딹딸뒛땩땧땤땄땸뒤뒹듔딽돶땹딀땲땵뎸듼뒼딁듰됫땣디둔뒻돷돷뒹돠땡든두돼뒐뒨땧뒈땳땫땡뒾땹땬땁둑됫딤땄뎡땁돵뒵뒐돶딤둔땮돛돵딻되뎡딎듔딁두돴될뎠땋땔되뒐땋돼땩뎸돵뎹뒨듼딐돷뒻;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, v1}, L딀땭둡딨둠딌된돳딹뒋뒻뎹딎돼땻돠뒐딀딸디둘둬듨뒬듔뒻땱들둔딎됴따땔뒬딠땭뎠딻뎸딠뒘땟됴땠딹딸뒛땩땧땤땄땸뒤뒹듔딽돶땹딀땲땵뎸듼뒼딁듰됫땣디둔뒻돷돷뒹돠땡든두돼뒐뒨땧뒈땳땫땡뒾땹땬땁둑됫딤땄뎡땁돵뒵뒐돶딤둔땮돛돵딻되뎡딎듔딁두돴될뎠땋땔되뒐땋돼땩뎸돵뎹뒨듼딐돷뒻;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    invoke-static {p0, v0, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static synthetic runInterruptible$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x1

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    sget-object p0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 6
    .line 7
    :cond_0
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/InterruptibleKt;->runInterruptible(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method
