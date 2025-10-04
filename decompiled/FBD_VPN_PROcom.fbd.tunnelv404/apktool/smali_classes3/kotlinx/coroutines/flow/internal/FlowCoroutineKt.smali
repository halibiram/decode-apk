.class public final Lkotlinx/coroutines/flow/internal/FlowCoroutineKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u001a?\u0010\u0000\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u00012)\u0008\u0001\u0010\u0002\u001a#\u0008\u0001\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00010\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0003\u00a2\u0006\u0002\u0008\u0007H\u0080@\u00a2\u0006\u0002\u0010\u0008\u001aP\u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\n\"\u0004\u0008\u0000\u0010\u000125\u0008\u0001\u0010\u0002\u001a/\u0008\u0001\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00010\u000c\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\r0\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u000b\u00a2\u0006\u0002\u0008\u0007H\u0000\u00a2\u0006\u0002\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "flowScope",
        "R",
        "block",
        "Lkotlin/Function2;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "scopedFlow",
        "Lkotlinx/coroutines/flow/Flow;",
        "Lkotlin/Function3;",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "",
        "(Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;",
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
        "SMAP\nFlowCoroutine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FlowCoroutine.kt\nkotlinx/coroutines/flow/internal/FlowCoroutineKt\n+ 2 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,59:1\n105#2:60\n*S KotlinDebug\n*F\n+ 1 FlowCoroutine.kt\nkotlinx/coroutines/flow/internal/FlowCoroutineKt\n*L\n46#1:60\n*E\n"
    }
.end annotation


# direct methods
.method public static final flowScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p0    # Lkotlin/jvm/functions/Function2;
        .annotation build Lkotlin/BuilderInference;
        .end annotation

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
    const/4 v2, 0x0

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

.method public static final scopedFlow(Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .param p0    # Lkotlin/jvm/functions/Function3;
        .annotation build Lkotlin/BuilderInference;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lkotlinx/coroutines/CoroutineScope;",
            "-",
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "-TR;>;-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlinx/coroutines/flow/Flow<",
            "TR;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/flow/internal/FlowCoroutineKt$scopedFlow$$inlined$unsafeFlow$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lkotlinx/coroutines/flow/internal/FlowCoroutineKt$scopedFlow$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function3;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
