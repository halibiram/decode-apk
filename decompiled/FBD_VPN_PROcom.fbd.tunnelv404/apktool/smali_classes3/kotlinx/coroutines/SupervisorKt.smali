.class public final Lkotlinx/coroutines/SupervisorKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u0012\u0010\u0000\u001a\u00020\u00012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u001a\u0019\u0010\u0004\u001a\u00020\u00032\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u0007\u00a2\u0006\u0002\u0008\u0000\u001aJ\u0010\u0005\u001a\u0002H\u0006\"\u0004\u0008\u0000\u0010\u00062\'\u0010\u0007\u001a#\u0008\u0001\u0012\u0004\u0012\u00020\t\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00060\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0008\u00a2\u0006\u0002\u0008\u000cH\u0086@\u0082\u0002\n\n\u0008\u0008\u0001\u0012\u0002\u0010\u0001 \u0001\u00a2\u0006\u0002\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "SupervisorJob",
        "Lkotlinx/coroutines/CompletableJob;",
        "parent",
        "Lkotlinx/coroutines/Job;",
        "SupervisorJob0",
        "supervisorScope",
        "R",
        "block",
        "Lkotlin/Function2;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.method public static final SupervisorJob(Lkotlinx/coroutines/Job;)Lkotlinx/coroutines/CompletableJob;
    .locals 1
    .param p0    # Lkotlinx/coroutines/Job;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, L땧딀돷땦돰드되뒛돤땍딽뎬듸땫뒾딜든돛뒷땍땋땳뒻됨땯뎬땧뎨득돸땵듔땣뒛뒀딐된뎡둡땱뒻땲땦땝두땻듐딞듟땻딤땯땣든둬딨듼두돨듽드듨뒬뒀돠땥들둘뒨뒉땣딝될땔딻뒻돤둑딅딁뒹뒙돛땵돴뎰땰딹땡뒝된땁되땸두둬듼땬딐땩두딟땋듨뒋뒨둣땔디돠뒨뒼듽뒝들됩딨돴듽딅돷땤뒘돳땫딐됫땲땟뒘;

    .line 2
    invoke-direct {v0, p0}, Lkotlinx/coroutines/JobImpl;-><init>(Lkotlinx/coroutines/Job;)V

    return-object v0
.end method

.method public static final synthetic SupervisorJob(Lkotlinx/coroutines/Job;)Lkotlinx/coroutines/Job;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Since 1.2.0, binary compatibility with versions <= 1.1.x"
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "SupervisorJob"
    .end annotation

    .line 3
    invoke-static {p0}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob(Lkotlinx/coroutines/Job;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;
    .locals 0

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    .line 1
    :cond_0
    invoke-static {p0}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob(Lkotlinx/coroutines/Job;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/Job;
    .locals 0

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    .line 2
    :cond_0
    invoke-static {p0}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob(Lkotlinx/coroutines/Job;)Lkotlinx/coroutines/Job;

    move-result-object p0

    return-object p0
.end method

.method public static final supervisorScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p0    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/CoroutineScope;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    new-instance v0, L뒵뒷뎹뎹딻딄듻되땩돵딽뒛뒝될딀뎰돳돰뒻땋뒉땭땧땜뒝땰드땦도뒼뒙뒨땰듔둠딐뒀뎽들뒋뒋땳땪땰듽뎨땋땳땁됩뒷뒨딐돸딁땰둠딟뎨뒐들땀돤뎨뎡뎬땮듽땐땫둡뒛뎨뒨돷땩됴땥돳땮딹듬뎠듸뎽뒹뒋땬땟뒋뒬딐땠땜뎰둘땁딟돤됨땡됫드뎰땫뒙듻땥땳땜됩뒈땭뒼뒨든딀둡돛드땅뒼따돸땮뎹돳뎹든듬;

    .line 2
    .line 3
    invoke-interface {p1}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v0, v1, p1, v2}, L뒵뒷뎹뎹딻딄듻되땩돵딽뒛뒝될딀뎰돳돰뒻땋뒉땭땧땜뒝땰드땦도뒼뒙뒨땰듔둠딐뒀뎽들뒋뒋땳땪땰듽뎨땋땳땁됩뒷뒨딐돸딁땰둠딟뎨뒐들땀돤뎨뎡뎬땮듽땐땫둡뒛뎨뒨돷땩됴땥돳땮딹듬뎠듸뎽뒹뒋땬땟뒋뒬딐땠땜뎰둘땁딟돤됨땡됫드뎰땫뒙듻땥땳땜됩뒈땭뒼뒨든딀둡돛드땅뒼따돸땮뎹돳뎹든듬;-><init>(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;I)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v0, p0}, Lkotlinx/coroutines/intrinsics/UndispatchedKt;->startUndispatchedOrReturn(Lkotlinx/coroutines/internal/ScopeCoroutine;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {}, L딀땭딠도듻두뎰땻땩둣땰돨딸딽득땰뒉땡돨돸땭딐딅딄뒷돤뒵뎬뒤듬딞둔둔땠땅딐딽도돼돷될딌땔땩뒝땸듨뎻득듟땃뎻둬땹돰땧됴될돵뎬따딠듌둑됴둣땥둠땭땠됴돤듬돷딅땩딨둠딝듰듻딞땍땸뎻둡듻듟땲땰딹땤딜땋돠땸돷듸땫딠땻뒛딎뒈됩땲뒉딹딹딁땰땹땭땃뒹되딹땔듐땣돼땍돸돼딀땍땪둔땡뒻;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-ne p0, v0, :cond_0

    .line 20
    .line 21
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-object p0
.end method
