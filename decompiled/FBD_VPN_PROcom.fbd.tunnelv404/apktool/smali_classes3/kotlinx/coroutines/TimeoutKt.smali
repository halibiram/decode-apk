.class public final Lkotlinx/coroutines/TimeoutKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001aT\u0010\t\u001a\u00028\u0000\"\u0004\u0008\u0000\u0010\u00002\u0006\u0010\u0002\u001a\u00020\u00012\'\u0010\u0008\u001a#\u0008\u0001\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0003\u00a2\u0006\u0002\u0008\u0007H\u0086@\u0082\u0002\n\n\u0008\u0008\u0001\u0012\u0002\u0010\u0002 \u0001\u00a2\u0006\u0004\u0008\t\u0010\n\u001aT\u0010\t\u001a\u00028\u0000\"\u0004\u0008\u0000\u0010\u00002\u0006\u0010\u000c\u001a\u00020\u000b2\'\u0010\u0008\u001a#\u0008\u0001\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0003\u00a2\u0006\u0002\u0008\u0007H\u0086@\u0082\u0002\n\n\u0008\u0008\u0001\u0012\u0002\u0010\u0002 \u0001\u00a2\u0006\u0004\u0008\r\u0010\n\u001aI\u0010\u000e\u001a\u0004\u0018\u00018\u0000\"\u0004\u0008\u0000\u0010\u00002\u0006\u0010\u0002\u001a\u00020\u00012\'\u0010\u0008\u001a#\u0008\u0001\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0003\u00a2\u0006\u0002\u0008\u0007H\u0086@\u00a2\u0006\u0004\u0008\u000e\u0010\n\u001aI\u0010\u000e\u001a\u0004\u0018\u00018\u0000\"\u0004\u0008\u0000\u0010\u00002\u0006\u0010\u000c\u001a\u00020\u000b2\'\u0010\u0008\u001a#\u0008\u0001\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0003\u00a2\u0006\u0002\u0008\u0007H\u0086@\u00a2\u0006\u0004\u0008\u000f\u0010\n\u001a\'\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0010\u001a\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0013H\u0000\u00a2\u0006\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u0018"
    }
    d2 = {
        "T",
        "",
        "timeMillis",
        "Lkotlin/Function2;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "block",
        "withTimeout",
        "(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lkotlin/time/Duration;",
        "timeout",
        "withTimeout-KLykuaI",
        "withTimeoutOrNull",
        "withTimeoutOrNull-KLykuaI",
        "time",
        "Lkotlinx/coroutines/Delay;",
        "delay",
        "Lkotlinx/coroutines/Job;",
        "coroutine",
        "Lkotlinx/coroutines/TimeoutCancellationException;",
        "TimeoutCancellationException",
        "(JLkotlinx/coroutines/Delay;Lkotlinx/coroutines/Job;)Lkotlinx/coroutines/TimeoutCancellationException;",
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
.method public static final TimeoutCancellationException(JLkotlinx/coroutines/Delay;Lkotlinx/coroutines/Job;)Lkotlinx/coroutines/TimeoutCancellationException;
    .locals 2
    .param p2    # Lkotlinx/coroutines/Delay;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlinx/coroutines/Job;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    instance-of v0, p2, Lkotlinx/coroutines/DelayWithTimeoutDiagnostics;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p2, Lkotlinx/coroutines/DelayWithTimeoutDiagnostics;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p2, 0x0

    .line 9
    :goto_0
    if-eqz p2, :cond_1

    .line 10
    .line 11
    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    .line 12
    .line 13
    sget-object v0, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    .line 14
    .line 15
    invoke-static {p0, p1, v0}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    invoke-interface {p2, v0, v1}, Lkotlinx/coroutines/DelayWithTimeoutDiagnostics;->timeoutMessage-LRDsOJo(J)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    if-nez p2, :cond_2

    .line 24
    .line 25
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v0, "Timed out waiting for "

    .line 28
    .line 29
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string p0, " ms"

    .line 36
    .line 37
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    :cond_2
    new-instance p0, Lkotlinx/coroutines/TimeoutCancellationException;

    .line 45
    .line 46
    invoke-direct {p0, p2, p3}, Lkotlinx/coroutines/TimeoutCancellationException;-><init>(Ljava/lang/String;Lkotlinx/coroutines/Job;)V

    .line 47
    .line 48
    .line 49
    return-object p0
.end method

.method public static final withTimeout(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p2    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
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
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p0, v0

    .line 4
    .line 5
    if-lez v2, :cond_1

    .line 6
    .line 7
    new-instance v0, L땫듸딤듸돰뒤뒙땭뒼땟딝됴뒻듰땬됴뒛땄둑듼뎡땀딄든듰딽땳딄돼둘땃땰듸딻뒤득딃뒵듻딸듰땳땬딌딤될뎡땍땻땻듟뒘땦땬땐뒈된땅딻뒹딸돳땫땝땻땯뎬둬땫땻땜두딅뎻땵돼드뒬땠딹땹땵딌둣둠딞땤돴뒼듟됫됴땻딄득땮듸땡돼딤땟뒉땜듸돶딜돝뒙딐뒛땹둔뒻땻땟딻뎹됫듌돼땪돨딨땻딹득뒾뒷뎰땝;

    .line 8
    .line 9
    invoke-direct {v0, p0, p1, p3}, L땫듸딤듸돰뒤뒙땭뒼땟딝됴뒻듰땬됴뒛땄둑듼뎡땀딄든듰딽땳딄돼둘땃땰듸딻뒤득딃뒵듻딸듰땳땬딌딤될뎡땍땻땻듟뒘땦땬땐뒈된땅딻뒹딸돳땫땝땻땯뎬둬땫땻땜두딅뎻땵돼드뒬땠딹땹땵딌둣둠딞땤돴뒼듟됫됴땻딄득땮듸땡돼딤땟뒉땜듸돶딜돝뒙딐뒛땹둔뒻땻땟딻뎹됫듌돼땪돨딨땻딹득뒾뒷뎰땝;-><init>(JLkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    iget-object p0, v0, Lkotlinx/coroutines/internal/ScopeCoroutine;->uCont:Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    invoke-interface {p0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, Lkotlinx/coroutines/DelayKt;->getDelay(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/Delay;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    iget-wide v1, v0, L땫듸딤듸돰뒤뒙땭뒼땟딝됴뒻듰땬됴뒛땄둑듼뎡땀딄든듰딽땳딄돼둘땃땰듸딻뒤득딃뒵듻딸듰땳땬딌딤될뎡땍땻땻듟뒘땦땬땐뒈된땅딻뒹딸돳땫땝땻땯뎬둬땫땻땜두딅뎻땵돼드뒬땠딹땹땵딌둣둠딞땤돴뒼듟됫됴땻딄득땮듸땡돼딤땟뒉땜듸돶딜돝뒙딐뒛땹둔뒻땻땟딻뎹됫듌돼땪돨딨땻딹득뒾뒷뎰땝;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨:J

    .line 23
    .line 24
    invoke-virtual {v0}, Lkotlinx/coroutines/AbstractCoroutine;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-interface {p0, v1, v2, v0, p1}, Lkotlinx/coroutines/Delay;->invokeOnTimeout(JLjava/lang/Runnable;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/DisposableHandle;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-static {v0, p0}, Lkotlinx/coroutines/JobKt;->disposeOnCompletion(Lkotlinx/coroutines/Job;Lkotlinx/coroutines/DisposableHandle;)Lkotlinx/coroutines/DisposableHandle;

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v0, p2}, Lkotlinx/coroutines/intrinsics/UndispatchedKt;->startUndispatchedOrReturnIgnoreTimeout(Lkotlinx/coroutines/internal/ScopeCoroutine;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-static {}, L딀땭딠도듻두뎰땻땩둣땰돨딸딽득땰뒉땡돨돸땭딐딅딄뒷돤뒵뎬뒤듬딞둔둔땠땅딐딽도돼돷될딌땔땩뒝땸듨뎻득듟땃뎻둬땹돰땧됴될돵뎬따딠듌둑됴둣땥둠땭땠됴돤듬돷딅땩딨둠딝듰듻딞땍땸뎻둡듻듟땲땰딹땤딜땋돠땸돷듸땫딠땻뒛딎뒈됩땲뒉딹딹딁땰땹땭땃뒹되딹땔듐땣돼땍돸돼딀땍땪둔땡뒻;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    if-ne p0, p1, :cond_0

    .line 44
    .line 45
    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    return-object p0

    .line 49
    :cond_1
    new-instance p0, Lkotlinx/coroutines/TimeoutCancellationException;

    .line 50
    .line 51
    const-string p1, "Timed out immediately"

    .line 52
    .line 53
    invoke-direct {p0, p1}, Lkotlinx/coroutines/TimeoutCancellationException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p0
.end method

.method public static final withTimeout-KLykuaI(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p2    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
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
    invoke-static {p0, p1}, Lkotlinx/coroutines/DelayKt;->toDelayMillis-LRDsOJo(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/TimeoutKt;->withTimeout(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static final withTimeoutOrNull(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p2    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
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
    instance-of v0, p3, L땫듻둣됨땍뒷돠딐땸뎰땁듔땻두뒛돶뎸듔뎠딽땅뎠뎽든땥도뒐뒀땅됨땭땱땥디땱뎹둡듌뒾뒤둡뒬땪듔듻돝들뎨듔둑땬땥뒷돶뒝듽뎨딌딝듸뎬돴돶딁땀돵뒻든땐뎨돳뒨됨딨딟되돰뎬든땵둑딻땍됩땣땋땝돵둑땥둬뒐땠뒨딽딐될뒼돵땤뎻되딽된둡딃딞듟땪땹둘딟둔뒵땧돴뎽돼돸뎡땮듟땁뒷돳뎨땁땃들듨;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, L땫듻둣됨땍뒷돠딐땸뎰땁듔땻두뒛돶뎸듔뎠딽땅뎠뎽든땥도뒐뒀땅됨땭땱땥디땱뎹둡듌뒾뒤둡뒬땪듔듻돝들뎨듔둑땬땥뒷돶뒝듽뎨딌딝듸뎬돴돶딁땀돵뒻든땐뎨돳뒨됨딨딟되돰뎬든땵둑딻땍됩땣땋땝돵둑땥둬뒐땠뒨딽딐될뒼돵땤뎻되딽된둡딃딞듟땪땹둘딟둔뒵땧돴뎽돼돸뎡땮듟땁뒷돳뎨땁땃들듨;

    .line 7
    .line 8
    iget v1, v0, L땫듻둣됨땍뒷돠딐땸뎰땁듔땻두뒛돶뎸듔뎠딽땅뎠뎽든땥도뒐뒀땅됨땭땱땥디땱뎹둡듌뒾뒤둡뒬땪듔듻돝들뎨듔둑땬땥뒷돶뒝듽뎨딌딝듸뎬돴돶딁땀돵뒻든땐뎨돳뒨됨딨딟되돰뎬든땵둑딻땍됩땣땋땝돵둑땥둬뒐땠뒨딽딐될뒼돵땤뎻되딽된둡딃딞듟땪땹둘딟둔뒵땧돴뎽돼돸뎡땮듟땁뒷돳뎨땁땃들듨;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨:I

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
    iput v1, v0, L땫듻둣됨땍뒷돠딐땸뎰땁듔땻두뒛돶뎸듔뎠딽땅뎠뎽든땥도뒐뒀땅됨땭땱땥디땱뎹둡듌뒾뒤둡뒬땪듔듻돝들뎨듔둑땬땥뒷돶뒝듽뎨딌딝듸뎬돴돶딁땀돵뒻든땐뎨돳뒨됨딨딟되돰뎬든땵둑딻땍됩땣땋땝돵둑땥둬뒐땠뒨딽딐될뒼돵땤뎻되딽된둡딃딞듟땪땹둘딟둔뒵땧돴뎽돼돸뎡땮듟땁뒷돳뎨땁땃들듨;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, L땫듻둣됨땍뒷돠딐땸뎰땁듔땻두뒛돶뎸듔뎠딽땅뎠뎽든땥도뒐뒀땅됨땭땱땥디땱뎹둡듌뒾뒤둡뒬땪듔듻돝들뎨듔둑땬땥뒷돶뒝듽뎨딌딝듸뎬돴돶딁땀돵뒻든땐뎨돳뒨됨딨딟되돰뎬든땵둑딻땍됩땣땋땝돵둑땥둬뒐땠뒨딽딐될뒼돵땤뎻되딽된둡딃딞듟땪땹둘딟둔뒵땧돴뎽돼돸뎡땮듟땁뒷돳뎨땁땃들듨;

    .line 21
    .line 22
    invoke-direct {v0, p3}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, L땫듻둣됨땍뒷돠딐땸뎰땁듔땻두뒛돶뎸듔뎠딽땅뎠뎽든땥도뒐뒀땅됨땭땱땥디땱뎹둡듌뒾뒤둡뒬땪듔듻돝들뎨듔둑땬땥뒷돶뒝듽뎨딌딝듸뎬돴돶딁땀돵뒻든땐뎨돳뒨됨딨딟되돰뎬든땵둑딻땍됩땣땋땝돵둑땥둬뒐땠뒨딽딐될뒼돵땤뎻되딽된둡딃딞듟땪땹둘딟둔뒵땧돴뎽돼돸뎡땮듟땁뒷돳뎨땁땃들듨;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, L딀땭딠도듻두뎰땻땩둣땰돨딸딽득땰뒉땡돨돸땭딐딅딄뒷돤뒵뎬뒤듬딞둔둔땠땅딐딽도돼돷될딌땔땩뒝땸듨뎻득듟땃뎻둬땹돰땧됴될돵뎬따딠듌둑됴둣땥둠땭땠됴돤듬돷딅땩딨둠딝듰듻딞땍땸뎻둡듻듟땲땰딹땤딜땋돠땸돷듸땫딠땻뒛딎뒈됩땲뒉딹딹딁땰땹땭땃뒹되딹땔듐땣돼땍돸돼딀땍땪둔땡뒻;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, L땫듻둣됨땍뒷돠딐땸뎰땁듔땻두뒛돶뎸듔뎠딽땅뎠뎽든땥도뒐뒀땅됨땭땱땥디땱뎹둡듌뒾뒤둡뒬땪듔듻돝들뎨듔둑땬땥뒷돶뒝듽뎨딌딝듸뎬돴돶딁땀돵뒻든땐뎨돳뒨됨딨딟되돰뎬든땵둑딻땍됩땣땋땝돵둑땥둬뒐땠뒨딽딐될뒼돵땤뎻되딽된둡딃딞듟땪땹둘딟둔뒵땧돴뎽돼돸뎡땮듟땁뒷돳뎨땁땃들듨;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨:I

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-ne v2, v4, :cond_1

    .line 38
    .line 39
    iget-object p0, v0, L땫듻둣됨땍뒷돠딐땸뎰땁듔땻두뒛돶뎸듔뎠딽땅뎠뎽든땥도뒐뒀땅됨땭땱땥디땱뎹둡듌뒾뒤둡뒬땪듔듻돝들뎨듔둑땬땥뒷돶뒝듽뎨딌딝듸뎬돴돶딁땀돵뒻든땐뎨돳뒨됨딨딟되돰뎬든땵둑딻땍됩땣땋땝돵둑땥둬뒐땠뒨딽딐될뒼돵땤뎻되딽된둡딃딞듟땪땹둘딟둔뒵땧돴뎽돼돸뎡땮듟땁뒷돳뎨땁땃들듨;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 40
    .line 41
    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    goto :goto_3

    .line 45
    :catch_0
    move-exception p1

    .line 46
    goto :goto_5

    .line 47
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 48
    .line 49
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 50
    .line 51
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p0

    .line 55
    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    const-wide/16 v5, 0x0

    .line 59
    .line 60
    cmp-long p3, p0, v5

    .line 61
    .line 62
    if-gtz p3, :cond_3

    .line 63
    .line 64
    return-object v3

    .line 65
    :cond_3
    new-instance p3, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 66
    .line 67
    invoke-direct {p3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 68
    .line 69
    .line 70
    :try_start_1
    iput-object p2, v0, L땫듻둣됨땍뒷돠딐땸뎰땁듔땻두뒛돶뎸듔뎠딽땅뎠뎽든땥도뒐뒀땅됨땭땱땥디땱뎹둡듌뒾뒤둡뒬땪듔듻돝들뎨듔둑땬땥뒷돶뒝듽뎨딌딝듸뎬돴돶딁땀돵뒻든땐뎨돳뒨됨딨딟되돰뎬든땵둑딻땍됩땣땋땝돵둑땥둬뒐땠뒨딽딐될뒼돵땤뎻되딽된둡딃딞듟땪땹둘딟둔뒵땧돴뎽돼돸뎡땮듟땁뒷돳뎨땁땃들듨;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lkotlin/jvm/functions/Function2;

    .line 71
    .line 72
    iput-object p3, v0, L땫듻둣됨땍뒷돠딐땸뎰땁듔땻두뒛돶뎸듔뎠딽땅뎠뎽든땥도뒐뒀땅됨땭땱땥디땱뎹둡듌뒾뒤둡뒬땪듔듻돝들뎨듔둑땬땥뒷돶뒝듽뎨딌딝듸뎬돴돶딁땀돵뒻든땐뎨돳뒨됨딨딟되돰뎬든땵둑딻땍됩땣땋땝돵둑땥둬뒐땠뒨딽딐될뒼돵땤뎻되딽된둡딃딞듟땪땹둘딟둔뒵땧돴뎽돼돸뎡땮듟땁뒷돳뎨땁땃들듨;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 73
    .line 74
    iput v4, v0, L땫듻둣됨땍뒷돠딐땸뎰땁듔땻두뒛돶뎸듔뎠딽땅뎠뎽든땥도뒐뒀땅됨땭땱땥디땱뎹둡듌뒾뒤둡뒬땪듔듻돝들뎨듔둑땬땥뒷돶뒝듽뎨딌딝듸뎬돴돶딁땀돵뒻든땐뎨돳뒨됨딨딟되돰뎬든땵둑딻땍됩땣땋땝돵둑땥둬뒐땠뒨딽딐될뒼돵땤뎻되딽된둡딃딞듟땪땹둘딟둔뒵땧돴뎽돼돸뎡땮듟땁뒷돳뎨땁땃들듨;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨:I

    .line 75
    .line 76
    new-instance v2, L땫듸딤듸돰뒤뒙땭뒼땟딝됴뒻듰땬됴뒛땄둑듼뎡땀딄든듰딽땳딄돼둘땃땰듸딻뒤득딃뒵듻딸듰땳땬딌딤될뎡땍땻땻듟뒘땦땬땐뒈된땅딻뒹딸돳땫땝땻땯뎬둬땫땻땜두딅뎻땵돼드뒬땠딹땹땵딌둣둠딞땤돴뒼듟됫됴땻딄득땮듸땡돼딤땟뒉땜듸돶딜돝뒙딐뒛땹둔뒻땻땟딻뎹됫듌돼땪돨딨땻딹득뒾뒷뎰땝;

    .line 77
    .line 78
    invoke-direct {v2, p0, p1, v0}, L땫듸딤듸돰뒤뒙땭뒼땟딝됴뒻듰땬됴뒛땄둑듼뎡땀딄든듰딽땳딄돼둘땃땰듸딻뒤득딃뒵듻딸듰땳땬딌딤될뎡땍땻땻듟뒘땦땬땐뒈된땅딻뒹딸돳땫땝땻땯뎬둬땫땻땜두딅뎻땵돼드뒬땠딹땹땵딌둣둠딞땤돴뒼듟됫됴땻딄득땮듸땡돼딤땟뒉땜듸돶딜돝뒙딐뒛땹둔뒻땻땟딻뎹됫듌돼땪돨딨땻딹득뒾뒷뎰땝;-><init>(JLkotlin/coroutines/Continuation;)V

    .line 79
    .line 80
    .line 81
    iput-object v2, p3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_1
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 82
    .line 83
    :try_start_2
    iget-object p0, v2, Lkotlinx/coroutines/internal/ScopeCoroutine;->uCont:Lkotlin/coroutines/Continuation;

    .line 84
    .line 85
    invoke-interface {p0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-static {p0}, Lkotlinx/coroutines/DelayKt;->getDelay(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/Delay;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    iget-wide v4, v2, L땫듸딤듸돰뒤뒙땭뒼땟딝됴뒻듰땬됴뒛땄둑듼뎡땀딄든듰딽땳딄돼둘땃땰듸딻뒤득딃뒵듻딸듰땳땬딌딤될뎡땍땻땻듟뒘땦땬땐뒈된땅딻뒹딸돳땫땝땻땯뎬둬땫땻땜두딅뎻땵돼드뒬땠딹땹땵딌둣둠딞땤돴뒼듟됫됴땻딄득땮듸땡돼딤땟뒉땜듸돶딜돝뒙딐뒛땹둔뒻땻땟딻뎹됫듌돼땪돨딨땻딹득뒾뒷뎰땝;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨:J

    .line 94
    .line 95
    invoke-virtual {v2}, Lkotlinx/coroutines/AbstractCoroutine;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-interface {p0, v4, v5, v2, p1}, Lkotlinx/coroutines/Delay;->invokeOnTimeout(JLjava/lang/Runnable;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/DisposableHandle;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    invoke-static {v2, p0}, Lkotlinx/coroutines/JobKt;->disposeOnCompletion(Lkotlinx/coroutines/Job;Lkotlinx/coroutines/DisposableHandle;)Lkotlinx/coroutines/DisposableHandle;

    .line 104
    .line 105
    .line 106
    invoke-static {v2, v2, p2}, Lkotlinx/coroutines/intrinsics/UndispatchedKt;->startUndispatchedOrReturnIgnoreTimeout(Lkotlinx/coroutines/internal/ScopeCoroutine;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p0
    :try_end_2
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_2 .. :try_end_2} :catch_2

    .line 110
    :try_start_3
    invoke-static {}, L딀땭딠도듻두뎰땻땩둣땰돨딸딽득땰뒉땡돨돸땭딐딅딄뒷돤뒵뎬뒤듬딞둔둔땠땅딐딽도돼돷될딌땔땩뒝땸듨뎻득듟땃뎻둬땹돰땧됴될돵뎬따딠듌둑됴둣땥둠땭땠됴돤듬돷딅땩딨둠딝듰듻딞땍땸뎻둡듻듟땲땰딹땤딜땋돠땸돷듸땫딠땻뒛딎뒈됩땲뒉딹딹딁땰땹땭땃뒹되딹땔듐땣돼땍돸돼딀땍땪둔땡뒻;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    if-ne p0, p1, :cond_4

    .line 115
    .line 116
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V
    :try_end_3
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_3 .. :try_end_3} :catch_1

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :catch_1
    move-exception p1

    .line 121
    :goto_1
    move-object p0, p3

    .line 122
    goto :goto_5

    .line 123
    :cond_4
    :goto_2
    if-ne p0, v1, :cond_5

    .line 124
    .line 125
    return-object v1

    .line 126
    :cond_5
    move-object p3, p0

    .line 127
    :goto_3
    return-object p3

    .line 128
    :goto_4
    move-object p1, p0

    .line 129
    goto :goto_1

    .line 130
    :catch_2
    move-exception p0

    .line 131
    goto :goto_4

    .line 132
    :goto_5
    iget-object p2, p1, Lkotlinx/coroutines/TimeoutCancellationException;->coroutine:Lkotlinx/coroutines/Job;

    .line 133
    .line 134
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 135
    .line 136
    if-ne p2, p0, :cond_6

    .line 137
    .line 138
    return-object v3

    .line 139
    :cond_6
    throw p1
.end method

.method public static final withTimeoutOrNull-KLykuaI(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p2    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
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
    invoke-static {p0, p1}, Lkotlinx/coroutines/DelayKt;->toDelayMillis-LRDsOJo(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/TimeoutKt;->withTimeoutOrNull(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method
