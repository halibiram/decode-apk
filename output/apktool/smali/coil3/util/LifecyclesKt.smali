.class public final Lcoil3/util/LifecyclesKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0080@\u00a2\u0006\u0002\u0010\u0003\u001a\u0014\u0010\u0004\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "awaitStarted",
        "",
        "Landroidx/lifecycle/Lifecycle;",
        "(Landroidx/lifecycle/Lifecycle;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "removeAndAddObserver",
        "observer",
        "Landroidx/lifecycle/LifecycleObserver;",
        "coil-core_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nlifecycles.kt\nKotlin\n*S Kotlin\n*F\n+ 1 lifecycles.kt\ncoil3/util/LifecyclesKt\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,41:1\n426#2,11:42\n1#3:53\n*S KotlinDebug\n*F\n+ 1 lifecycles.kt\ncoil3/util/LifecyclesKt\n*L\n21#1:42,11\n*E\n"
    }
.end annotation


# direct methods
.method public static final awaitStarted(Landroidx/lifecycle/Lifecycle;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .param p0    # Landroidx/lifecycle/Lifecycle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/Lifecycle;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p1, L딄들땧뎠두땀둔딨딟땦뒬딅뎻됴뒹뒉뎽디딌두땬뒵뎠든됨됴따둔들둘땔됨돴딠뒵땐돳듬딽돴땝땯땣뒻돶뒼땭딅뎨뒉뎹땄땵딌둡뒨딝딹땩땮딹뒝딻뎨딀둬됐딜됫땠땋든뒨둡뎻돛땐둡딞둔돳뒼뎰땹땲땨돤땐돴땡땀땱땹됫땔듰됨딹딁뒘딐뒬딻듟뒵땹뒵됫땵딄딸뒬둔딽딌된땋땀뒝뒋돰됐듌땩득됨뒵됐땃됫;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, L딄들땧뎠두땀둔딨딟땦뒬딅뎻됴뒹뒉뎽디딌두땬뒵뎠든됨됴따둔들둘땔됨돴딠뒵땐돳듬딽돴땝땯땣뒻돶뒼땭딅뎨뒉뎹땄땵딌둡뒨딝딹땩땮딹뒝딻뎨딀둬됐딜됫땠땋든뒨둡뎻돛땐둡딞둔돳뒼뎰땹땲땨돤땐돴땡땀땱땹됫땔듰됨딹딁뒘딐뒬딻듟뒵땹뒵됫땵딄딸뒬둔딽딌된땋땀뒝뒋돰됐듌땩득됨뒵됐땃됫;

    .line 7
    .line 8
    iget v1, v0, L딄들땧뎠두땀둔딨딟땦뒬딅뎻됴뒹뒉뎽디딌두땬뒵뎠든됨됴따둔들둘땔됨돴딠뒵땐돳듬딽돴땝땯땣뒻돶뒼땭딅뎨뒉뎹땄땵딌둡뒨딝딹땩땮딹뒝딻뎨딀둬됐딜됫땠땋든뒨둡뎻돛땐둡딞둔돳뒼뎰땹땲땨돤땐돴땡땀땱땹됫땔듰됨딹딁뒘딐뒬딻듟뒵땹뒵됫땵딄딸뒬둔딽딌된땋땀뒝뒋돰됐듌땩득됨뒵됐땃됫;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, L딄들땧뎠두땀둔딨딟땦뒬딅뎻됴뒹뒉뎽디딌두땬뒵뎠든됨됴따둔들둘땔됨돴딠뒵땐돳듬딽돴땝땯땣뒻돶뒼땭딅뎨뒉뎹땄땵딌둡뒨딝딹땩땮딹뒝딻뎨딀둬됐딜됫땠땋든뒨둡뎻돛땐둡딞둔돳뒼뎰땹땲땨돤땐돴땡땀땱땹됫땔듰됨딹딁뒘딐뒬딻듟뒵땹뒵됫땵딄딸뒬둔딽딌된땋땀뒝뒋돰됐듌땩득됨뒵됐땃됫;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, L딄들땧뎠두땀둔딨딟땦뒬딅뎻됴뒹뒉뎽디딌두땬뒵뎠든됨됴따둔들둘땔됨돴딠뒵땐돳듬딽돴땝땯땣뒻돶뒼땭딅뎨뒉뎹땄땵딌둡뒨딝딹땩땮딹뒝딻뎨딀둬됐딜됫땠땋든뒨둡뎻돛땐둡딞둔돳뒼뎰땹땲땨돤땐돴땡땀땱땹됫땔듰됨딹딁뒘딐뒬딻듟뒵땹뒵됫땵딄딸뒬둔딽딌된땋땀뒝뒋돰됐듌땩득됨뒵됐땃됫;

    .line 21
    .line 22
    invoke-direct {v0, p1}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, L딄들땧뎠두땀둔딨딟땦뒬딅뎻됴뒹뒉뎽디딌두땬뒵뎠든됨됴따둔들둘땔됨돴딠뒵땐돳듬딽돴땝땯땣뒻돶뒼땭딅뎨뒉뎹땄땵딌둡뒨딝딹땩땮딹뒝딻뎨딀둬됐딜됫땠땋든뒨둡뎻돛땐둡딞둔돳뒼뎰땹땲땨돤땐돴땡땀땱땹됫땔듰됨딹딁뒘딐뒬딻듟뒵땹뒵됫땵딄딸뒬둔딽딌된땋땀뒝뒋돰됐듌땩득됨뒵됐땃됫;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, L딀땭딠도듻두뎰땻땩둣땰돨딸딽득땰뒉땡돨돸땭딐딅딄뒷돤뒵뎬뒤듬딞둔둔땠땅딐딽도돼돷될딌땔땩뒝땸듨뎻득듟땃뎻둬땹돰땧됴될돵뎬따딠듌둑됴둣땥둠땭땠됴돤듬돷딅땩딨둠딝듰듻딞땍땸뎻둡듻듟땲땰딹땤딜땋돠땸돷듸땫딠땻뒛딎뒈됩땲뒉딹딹딁땰땹땭땃뒹되딹땔듐땣돼땍돸돼딀땍땪둔땡뒻;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, L딄들땧뎠두땀둔딨딟땦뒬딅뎻됴뒹뒉뎽디딌두땬뒵뎠든됨됴따둔들둘땔됨돴딠뒵땐돳듬딽돴땝땯땣뒻돶뒼땭딅뎨뒉뎹땄땵딌둡뒨딝딹땩땮딹뒝딻뎨딀둬됐딜됫땠땋든뒨둡뎻돛땐둡딞둔돳뒼뎰땹땲땨돤땐돴땡땀땱땹됫땔듰됨딹딁뒘딐뒬딻듟뒵땹뒵됫땵딄딸뒬둔딽딌된땋땀뒝뒋돰됐듌땩득됨뒵됐땃됫;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget-object p0, v0, L딄들땧뎠두땀둔딨딟땦뒬딅뎻됴뒹뒉뎽디딌두땬뒵뎠든됨됴따둔들둘땔됨돴딠뒵땐돳듬딽돴땝땯땣뒻돶뒼땭딅뎨뒉뎹땄땵딌둡뒨딝딹땩땮딹뒝딻뎨딀둬됐딜됫땠땋든뒨둡뎻돛땐둡딞둔돳뒼뎰땹땲땨돤땐돴땡땀땱땹됫땔듰됨딹딁뒘딐뒬딻듟뒵땹뒵됫땵딄딸뒬둔딽딌된땋땀뒝뒋돰됐듌땩득됨뒵됐땃됫;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 39
    .line 40
    iget-object v0, v0, L딄들땧뎠두땀둔딨딟땦뒬딅뎻됴뒹뒉뎽디딌두땬뒵뎠든됨됴따둔들둘땔됨돴딠뒵땐돳듬딽돴땝땯땣뒻돶뒼땭딅뎨뒉뎹땄땵딌둡뒨딝딹땩땮딹뒝딻뎨딀둬됐딜됫땠땋든뒨둡뎻돛땐둡딞둔돳뒼뎰땹땲땨돤땐돴땡땀땱땹됫땔듰됨딹딁뒘딐뒬딻듟뒵땹뒵됫땵딄딸뒬둔딽딌된땋땀뒝뒋돰됐듌땩득됨뒵됐땃됫;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Landroidx/lifecycle/Lifecycle;

    .line 41
    .line 42
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    goto :goto_2

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    goto :goto_3

    .line 48
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p0

    .line 56
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 64
    .line 65
    invoke-virtual {p1, v2}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-eqz p1, :cond_3

    .line 70
    .line 71
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 72
    .line 73
    return-object p0

    .line 74
    :cond_3
    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 75
    .line 76
    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 77
    .line 78
    .line 79
    :try_start_1
    iput-object p0, v0, L딄들땧뎠두땀둔딨딟땦뒬딅뎻됴뒹뒉뎽디딌두땬뒵뎠든됨됴따둔들둘땔됨돴딠뒵땐돳듬딽돴땝땯땣뒻돶뒼땭딅뎨뒉뎹땄땵딌둡뒨딝딹땩땮딹뒝딻뎨딀둬됐딜됫땠땋든뒨둡뎻돛땐둡딞둔돳뒼뎰땹땲땨돤땐돴땡땀땱땹됫땔듰됨딹딁뒘딐뒬딻듟뒵땹뒵됫땵딄딸뒬둔딽딌된땋땀뒝뒋돰됐듌땩득됨뒵됐땃됫;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Landroidx/lifecycle/Lifecycle;

    .line 80
    .line 81
    iput-object p1, v0, L딄들땧뎠두땀둔딨딟땦뒬딅뎻됴뒹뒉뎽디딌두땬뒵뎠든됨됴따둔들둘땔됨돴딠뒵땐돳듬딽돴땝땯땣뒻돶뒼땭딅뎨뒉뎹땄땵딌둡뒨딝딹땩땮딹뒝딻뎨딀둬됐딜됫땠땋든뒨둡뎻돛땐둡딞둔돳뒼뎰땹땲땨돤땐돴땡땀땱땹됫땔듰됨딹딁뒘딐뒬딻듟뒵땹뒵됫땵딄딸뒬둔딽딌된땋땀뒝뒋돰됐듌땩득됨뒵됐땃됫;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 82
    .line 83
    iput v3, v0, L딄들땧뎠두땀둔딨딟땦뒬딅뎻됴뒹뒉뎽디딌두땬뒵뎠든됨됴따둔들둘땔됨돴딠뒵땐돳듬딽돴땝땯땣뒻돶뒼땭딅뎨뒉뎹땄땵딌둡뒨딝딹땩땮딹뒝딻뎨딀둬됐딜됫땠땋든뒨둡뎻돛땐둡딞둔돳뒼뎰땹땲땨돤땐돴땡땀땱땹됫땔듰됨딹딁뒘딐뒬딻듟뒵땹뒵됫땵딄딸뒬둔딽딌된땋땀뒝뒋돰됐듌땩득됨뒵됐땃됫;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨:I

    .line 84
    .line 85
    new-instance v2, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 86
    .line 87
    invoke-static {v0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    invoke-direct {v2, v4, v3}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 95
    .line 96
    .line 97
    new-instance v3, Lcoil3/util/LifecyclesKt$awaitStarted$2$1;

    .line 98
    .line 99
    invoke-direct {v3, v2}, Lcoil3/util/LifecyclesKt$awaitStarted$2$1;-><init>(Lkotlinx/coroutines/CancellableContinuationImpl;)V

    .line 100
    .line 101
    .line 102
    iput-object v3, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 103
    .line 104
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, v3}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-static {}, L딀땭딠도듻두뎰땻땩둣땰돨딸딽득땰뒉땡돨돸땭딐딅딄뒷돤뒵뎬뒤듬딞둔둔땠땅딐딽도돼돷될딌땔땩뒝땸듨뎻득듟땃뎻둬땹돰땧됴될돵뎬따딠듌둑됴둣땥둠땭땠됴돤듬돷딅땩딨둠딝듰듻딞땍땸뎻둡듻듟땲땰딹땤딜땋돠땸돷듸땫딠땻뒛딎뒈됩땲뒉딹딹딁땰땹땭땃뒹되딹땔듐땣돼땍돸돼딀땍땪둔땡뒻;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    if-ne v2, v3, :cond_4

    .line 119
    .line 120
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :catchall_1
    move-exception v0

    .line 125
    move-object v5, v0

    .line 126
    move-object v0, p0

    .line 127
    move-object p0, p1

    .line 128
    move-object p1, v5

    .line 129
    goto :goto_3

    .line 130
    :cond_4
    :goto_1
    if-ne v2, v1, :cond_5

    .line 131
    .line 132
    return-object v1

    .line 133
    :cond_5
    move-object v0, p0

    .line 134
    move-object p0, p1

    .line 135
    :goto_2
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast p0, Landroidx/lifecycle/LifecycleObserver;

    .line 138
    .line 139
    if-eqz p0, :cond_6

    .line 140
    .line 141
    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 142
    .line 143
    .line 144
    :cond_6
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 145
    .line 146
    return-object p0

    .line 147
    :goto_3
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 148
    .line 149
    check-cast p0, Landroidx/lifecycle/LifecycleObserver;

    .line 150
    .line 151
    if-eqz p0, :cond_7

    .line 152
    .line 153
    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 154
    .line 155
    .line 156
    :cond_7
    throw p1
.end method

.method public static final removeAndAddObserver(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/LifecycleObserver;)V
    .locals 0
    .param p0    # Landroidx/lifecycle/Lifecycle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/lifecycle/LifecycleObserver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
