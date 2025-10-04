.class public final Lkotlinx/coroutines/selects/WhileSelectKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a/\u0010\u0000\u001a\u00020\u00012\u001f\u0008\u0004\u0010\u0002\u001a\u0019\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0004\u0012\u00020\u00010\u0003\u00a2\u0006\u0002\u0008\u0006H\u0087H\u00a2\u0006\u0002\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "whileSelect",
        "",
        "builder",
        "Lkotlin/Function1;",
        "Lkotlinx/coroutines/selects/SelectBuilder;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nWhileSelect.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WhileSelect.kt\nkotlinx/coroutines/selects/WhileSelectKt\n+ 2 Select.kt\nkotlinx/coroutines/selects/SelectKt\n*L\n1#1,29:1\n54#2,5:30\n*S KotlinDebug\n*F\n+ 1 WhileSelect.kt\nkotlinx/coroutines/selects/WhileSelectKt\n*L\n27#1:30,5\n*E\n"
    }
.end annotation


# direct methods
.method public static final whileSelect(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .param p0    # Lkotlin/jvm/functions/Function1;
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
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlinx/coroutines/selects/SelectBuilder<",
            "-",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lkotlinx/coroutines/ExperimentalCoroutinesApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p1, L땲뒤돛땮듐뎰뒛뒵듻뎨딞땪둡딝돷듔드딃딠돝뎰땹딜땨듬둘딸듟뒈뒈땧딽돳땬땔뒨딹땣땪딃뒬돛딠딐둠듟돸딃뎻땄둠뒉땡되딻땧땫됩뎹딜땔딞돠뒛땋딸뎰둥돛둘땡땬돴뒉돤뒨뒋딸듰둡드돸돛든땀땪돸둔둥땩땫뒤돰땥둣뒋땧땀두땁돰땩딠돶둥돳뒷뒨딸땨돠땅둠땵딀딨될뒼땮뎰됫됨뎰땭땱둬듨뎠드듼;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, L땲뒤돛땮듐뎰뒛뒵듻뎨딞땪둡딝돷듔드딃딠돝뎰땹딜땨듬둘딸듟뒈뒈땧딽돳땬땔뒨딹땣땪딃뒬돛딠딐둠듟돸딃뎻땄둠뒉땡되딻땧땫됩뎹딜땔딞돠뒛땋딸뎰둥돛둘땡땬돴뒉돤뒨뒋딸듰둡드돸돛든땀땪돸둔둥땩땫뒤돰땥둣뒋땧땀두땁돰땩딠돶둥돳뒷뒨딸땨돠땅둠땵딀딨될뒼땮뎰됫됨뎰땭땱둬듨뎠드듼;

    .line 7
    .line 8
    iget v1, v0, L땲뒤돛땮듐뎰뒛뒵듻뎨딞땪둡딝돷듔드딃딠돝뎰땹딜땨듬둘딸듟뒈뒈땧딽돳땬땔뒨딹땣땪딃뒬돛딠딐둠듟돸딃뎻땄둠뒉땡되딻땧땫됩뎹딜땔딞돠뒛땋딸뎰둥돛둘땡땬돴뒉돤뒨뒋딸듰둡드돸돛든땀땪돸둔둥땩땫뒤돰땥둣뒋땧땀두땁돰땩딠돶둥돳뒷뒨딸땨돠땅둠땵딀딨될뒼땮뎰됫됨뎰땭땱둬듨뎠드듼;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:I

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
    iput v1, v0, L땲뒤돛땮듐뎰뒛뒵듻뎨딞땪둡딝돷듔드딃딠돝뎰땹딜땨듬둘딸듟뒈뒈땧딽돳땬땔뒨딹땣땪딃뒬돛딠딐둠듟돸딃뎻땄둠뒉땡되딻땧땫됩뎹딜땔딞돠뒛땋딸뎰둥돛둘땡땬돴뒉돤뒨뒋딸듰둡드돸돛든땀땪돸둔둥땩땫뒤돰땥둣뒋땧땀두땁돰땩딠돶둥돳뒷뒨딸땨돠땅둠땵딀딨될뒼땮뎰됫됨뎰땭땱둬듨뎠드듼;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, L땲뒤돛땮듐뎰뒛뒵듻뎨딞땪둡딝돷듔드딃딠돝뎰땹딜땨듬둘딸듟뒈뒈땧딽돳땬땔뒨딹땣땪딃뒬돛딠딐둠듟돸딃뎻땄둠뒉땡되딻땧땫됩뎹딜땔딞돠뒛땋딸뎰둥돛둘땡땬돴뒉돤뒨뒋딸듰둡드돸돛든땀땪돸둔둥땩땫뒤돰땥둣뒋땧땀두땁돰땩딠돶둥돳뒷뒨딸땨돠땅둠땵딀딨될뒼땮뎰됫됨뎰땭땱둬듨뎠드듼;

    .line 21
    .line 22
    invoke-direct {v0, p1}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, L땲뒤돛땮듐뎰뒛뒵듻뎨딞땪둡딝돷듔드딃딠돝뎰땹딜땨듬둘딸듟뒈뒈땧딽돳땬땔뒨딹땣땪딃뒬돛딠딐둠듟돸딃뎻땄둠뒉땡되딻땧땫됩뎹딜땔딞돠뒛땋딸뎰둥돛둘땡땬돴뒉돤뒨뒋딸듰둡드돸돛든땀땪돸둔둥땩땫뒤돰땥둣뒋땧땀두땁돰땩딠돶둥돳뒷뒨딸땨돠땅둠땵딀딨될뒼땮뎰됫됨뎰땭땱둬듨뎠드듼;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, L딀땭딠도듻두뎰땻땩둣땰돨딸딽득땰뒉땡돨돸땭딐딅딄뒷돤뒵뎬뒤듬딞둔둔땠땅딐딽도돼돷될딌땔땩뒝땸듨뎻득듟땃뎻둬땹돰땧됴될돵뎬따딠듌둑됴둣땥둠땭땠됴돤듬돷딅땩딨둠딝듰듻딞땍땸뎻둡듻듟땲땰딹땤딜땋돠땸돷듸땫딠땻뒛딎뒈됩땲뒉딹딹딁땰땹땭땃뒹되딹땔듐땣돼땍돸돼딀땍땪둔땡뒻;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, L땲뒤돛땮듐뎰뒛뒵듻뎨딞땪둡딝돷듔드딃딠돝뎰땹딜땨듬둘딸듟뒈뒈땧딽돳땬땔뒨딹땣땪딃뒬돛딠딐둠듟돸딃뎻땄둠뒉땡되딻땧땫됩뎹딜땔딞돠뒛땋딸뎰둥돛둘땡땬돴뒉돤뒨뒋딸듰둡드돸돛든땀땪돸둔둥땩땫뒤돰땥둣뒋땧땀두땁돰땩딠돶둥돳뒷뒨딸땨돠땅둠땵딀딨될뒼땮뎰됫됨뎰땭땱둬듨뎠드듼;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:I

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
    iget-object p0, v0, L땲뒤돛땮듐뎰뒛뒵듻뎨딞땪둡딝돷듔드딃딠돝뎰땹딜땨듬둘딸듟뒈뒈땧딽돳땬땔뒨딹땣땪딃뒬돛딠딐둠듟돸딃뎻땄둠뒉땡되딻땧땫됩뎹딜땔딞돠뒛땋딸뎰둥돛둘땡땬돴뒉돤뒨뒋딸듰둡드돸돛든땀땪돸둔둥땩땫뒤돰땥둣뒋땧땀두땁돰땩딠돶둥돳뒷뒨딸땨돠땅둠땵딀딨될뒼땮뎰됫됨뎰땭땱둬듨뎠드듼;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lkotlin/jvm/functions/Function1;

    .line 39
    .line 40
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 45
    .line 46
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 47
    .line 48
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p0

    .line 52
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :cond_3
    new-instance p1, Lkotlinx/coroutines/selects/SelectImplementation;

    .line 56
    .line 57
    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-direct {p1, v2}, Lkotlinx/coroutines/selects/SelectImplementation;-><init>(Lkotlin/coroutines/CoroutineContext;)V

    .line 62
    .line 63
    .line 64
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    iput-object p0, v0, L땲뒤돛땮듐뎰뒛뒵듻뎨딞땪둡딝돷듔드딃딠돝뎰땹딜땨듬둘딸듟뒈뒈땧딽돳땬땔뒨딹땣땪딃뒬돛딠딐둠듟돸딃뎻땄둠뒉땡되딻땧땫됩뎹딜땔딞돠뒛땋딸뎰둥돛둘땡땬돴뒉돤뒨뒋딸듰둡드돸돛든땀땪돸둔둥땩땫뒤돰땥둣뒋땧땀두땁돰땩딠돶둥돳뒷뒨딸땨돠땅둠땵딀딨될뒼땮뎰됫됨뎰땭땱둬듨뎠드듼;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lkotlin/jvm/functions/Function1;

    .line 68
    .line 69
    iput v3, v0, L땲뒤돛땮듐뎰뒛뒵듻뎨딞땪둡딝돷듔드딃딠돝뎰땹딜땨듬둘딸듟뒈뒈땧딽돳땬땔뒨딹땣땪딃뒬돛딠딐둠듟돸딃뎻땄둠뒉땡되딻땧땫됩뎹딜땔딞돠뒛땋딸뎰둥돛둘땡땬돴뒉돤뒨뒋딸듰둡드돸돛든땀땪돸둔둥땩땫뒤돰땥둣뒋땧땀두땁돰땩딠돶둥돳뒷뒨딸땨돠땅둠땵딀딨될뒼땮뎰됫됨뎰땭땱둬듨뎠드듼;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:I

    .line 70
    .line 71
    invoke-virtual {p1, v0}, Lkotlinx/coroutines/selects/SelectImplementation;->doSelect(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    if-ne p1, v1, :cond_4

    .line 76
    .line 77
    return-object v1

    .line 78
    :cond_4
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    .line 79
    .line 80
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-nez p1, :cond_3

    .line 85
    .line 86
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 87
    .line 88
    return-object p0
.end method
