.class public final Lkotlinx/coroutines/selects/OnTimeoutKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001aC\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u001c\u0010\u0006\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\u0008\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0007H\u0007\u00a2\u0006\u0002\u0010\n\u001aE\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u000c2\u001c\u0010\u0006\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\u0008\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0007H\u0007\u00a2\u0006\u0004\u0008\r\u0010\n\u00a8\u0006\u000e"
    }
    d2 = {
        "onTimeout",
        "",
        "R",
        "Lkotlinx/coroutines/selects/SelectBuilder;",
        "timeMillis",
        "",
        "block",
        "Lkotlin/Function1;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "(Lkotlinx/coroutines/selects/SelectBuilder;JLkotlin/jvm/functions/Function1;)V",
        "timeout",
        "Lkotlin/time/Duration;",
        "onTimeout-8Mi8wO0",
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
.method public static final onTimeout(Lkotlinx/coroutines/selects/SelectBuilder;JLkotlin/jvm/functions/Function1;)V
    .locals 6
    .param p0    # Lkotlinx/coroutines/selects/SelectBuilder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/selects/SelectBuilder<",
            "-TR;>;J",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation build Lkotlinx/coroutines/ExperimentalCoroutinesApi;
    .end annotation

    .line 1
    new-instance v1, L딤땀돶땤뎽땸땤뒨됨땻딀뒙뒨딃땍딸뒀땡됴뒈둬딄돤딜뒬땲땡딄딁땐땵땯될뒈땫됫딁뒼돳땥뎠뒻뒋땭돝돳땀뒻뒀땲딟뎨드뎬돠뒻땰땭땲땜땪땔뒋뒤든땪땣땟됴땋뒨됩돝땮땬든돳딤땄뒛둔딌딠됨딅땃듟둑둡될땮돛된뒾땪드돠뒵둔땪둠둣딁땥땟둔땥딄땳돸듟딟뒈땍둑둑뎨땭땡된딞듽뒈됫땲뒬땤뒘득둔;

    .line 2
    .line 3
    invoke-direct {v1, p1, p2}, L딤땀돶땤뎽땸땤뒨됨땻딀뒙뒨딃땍딸뒀땡됴뒈둬딄돤딜뒬땲땡딄딁땐땵땯될뒈땫됫딁뒼돳땥뎠뒻뒋땭돝돳땀뒻뒀땲딟뎨드뎬돠뒻땰땭땲땜땪땔뒋뒤든땪땣땟됴땋뒨됩돝땮땬든돳딤땄뒛둔딌딠됨딅땃듟둑둡될땮돛된뒾땪드돠뒵둔땪둠둣딁땥땟둔땥딄땳돸듟딟뒈땍둑둑뎨땭땡된딞듽뒈됫땲뒬땤뒘득둔;-><init>(J)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lkotlinx/coroutines/selects/SelectClause0Impl;

    .line 7
    .line 8
    sget-object p2, L딤따돷딻뎬땔땩뒬듐땔듨둬딎땰딀들뒉딃돳땣딎뒻딨뎹둠땭돳땄뒈돰뒷딠딄돛듨뒷뒷땝땮땬듽땣뒹듐땍된득땠땪됴뒬돼땮뎽땲뎨됐됴땯뎻땝들따딌뒬뒀땩돛땨따돼듰땯둬뒘땬됩둡따됐듼땸땝뒷듰땭땰땧듸득되돵돠땜드딞됫듽뒹둘땩둥뒛땻딁듔돵됫딻뒛돨딐딻둑땩돷땬딤돶돤땠뎬둥뎨둣딻뒨딁듼땩;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:L딤따돷딻뎬땔땩뒬듐땔듨둬딎땰딀들뒉딃돳땣딎뒻딨뎹둠땭돳땄뒈돰뒷딠딄돛듨뒷뒷땝땮땬듽땣뒹듐땍된득땠땪됴뒬돼땮뎽땲뎨됐됴땯뎻땝들따딌뒬뒀땩돛땨따돼듰땯둬뒘땬됩둡따됐듼땸땝뒷듰땭땰땧듸득되돵돠땜드딞됫듽뒹둘땩둥뒛땻딁듔돵됫딻뒛돨딐딻둑땩돷땬딤돶돤땠뎬둥뎨둣딻뒨딁듼땩;

    .line 9
    .line 10
    const-string v0, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \"clauseObject\")] kotlin.Any, @[ParameterName(name = \"select\")] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = \"param\")] kotlin.Any?, kotlin.Unit>"

    .line 11
    .line 12
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x3

    .line 16
    invoke-static {p2, v0}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    move-object v2, p2

    .line 21
    check-cast v2, Lkotlin/jvm/functions/Function3;

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    const/4 v4, 0x4

    .line 25
    const/4 v5, 0x0

    .line 26
    move-object v0, p1

    .line 27
    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/selects/SelectClause0Impl;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 28
    .line 29
    .line 30
    invoke-interface {p0, p1, p3}, Lkotlinx/coroutines/selects/SelectBuilder;->invoke(Lkotlinx/coroutines/selects/SelectClause0;Lkotlin/jvm/functions/Function1;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public static final onTimeout-8Mi8wO0(Lkotlinx/coroutines/selects/SelectBuilder;JLkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p0    # Lkotlinx/coroutines/selects/SelectBuilder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/selects/SelectBuilder<",
            "-TR;>;J",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation build Lkotlinx/coroutines/ExperimentalCoroutinesApi;
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lkotlinx/coroutines/DelayKt;->toDelayMillis-LRDsOJo(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/selects/OnTimeoutKt;->onTimeout(Lkotlinx/coroutines/selects/SelectBuilder;JLkotlin/jvm/functions/Function1;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
