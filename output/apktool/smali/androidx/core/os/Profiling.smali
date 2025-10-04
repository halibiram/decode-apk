.class public final Landroidx/core/os/Profiling;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u0016\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\u0006\u0010\r\u001a\u00020\u000eH\u0007\u001a&\u0010\n\u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u00112\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0013H\u0007\u001a2\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u000e\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u0013H\u0007\u001a\u001e\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\u000e2\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0013H\u0007\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0005\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0006\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0007\u001a\u00020\u0008X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\t\u001a\u00020\u0008X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "KEY_BUFFER_FILL_POLICY",
        "",
        "KEY_DURATION_MS",
        "KEY_FREQUENCY_HZ",
        "KEY_SAMPLING_INTERVAL_BYTES",
        "KEY_SIZE_KB",
        "KEY_TRACK_JAVA_ALLOCATIONS",
        "VALUE_BUFFER_FILL_POLICY_DISCARD",
        "",
        "VALUE_BUFFER_FILL_POLICY_RING_BUFFER",
        "registerForAllProfilingResults",
        "Lkotlinx/coroutines/flow/Flow;",
        "Landroid/os/ProfilingResult;",
        "context",
        "Landroid/content/Context;",
        "",
        "executor",
        "Ljava/util/concurrent/Executor;",
        "listener",
        "Ljava/util/function/Consumer;",
        "requestProfiling",
        "profilingRequest",
        "Landroidx/core/os/ProfilingRequest;",
        "unregisterForAllProfilingResults",
        "core_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/JvmName;
    name = "Profiling"
.end annotation


# static fields
.field private static final KEY_BUFFER_FILL_POLICY:Ljava/lang/String; = "KEY_BUFFER_FILL_POLICY"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final KEY_DURATION_MS:Ljava/lang/String; = "KEY_DURATION_MS"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final KEY_FREQUENCY_HZ:Ljava/lang/String; = "KEY_FREQUENCY_HZ"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final KEY_SAMPLING_INTERVAL_BYTES:Ljava/lang/String; = "KEY_SAMPLING_INTERVAL_BYTES"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final KEY_SIZE_KB:Ljava/lang/String; = "KEY_SIZE_KB"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final KEY_TRACK_JAVA_ALLOCATIONS:Ljava/lang/String; = "KEY_TRACK_JAVA_ALLOCATIONS"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final VALUE_BUFFER_FILL_POLICY_DISCARD:I = 0x1

.field private static final VALUE_BUFFER_FILL_POLICY_RING_BUFFER:I = 0x2


# direct methods
.method public static final registerForAllProfilingResults(Landroid/content/Context;)Lkotlinx/coroutines/flow/Flow;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x23
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lkotlinx/coroutines/flow/Flow<",
            "Landroid/os/ProfilingResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroidx/core/os/Profiling$registerForAllProfilingResults$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/core/os/Profiling$registerForAllProfilingResults$1;-><init>(Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public static final registerForAllProfilingResults(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/function/Consumer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x23
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/os/ProfilingResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {}, L딻듌딎땧듼돼딟뒻딞딐듔딅땣돨듼땁땪딠뒈돤딟듟땧땡돛딠돶딌땠땋땄땳딨딜땣땣됩드딀둠뎬둔땻딅따듨뒐땰땯돝디뎡듰뒵뎬돷땡땥디따땅땟따뎻땣뒋딽됨뒘됐땅딁딟땤땁뒹뎡딞땧뒝딁되땝뎹딀땣딻돤뎨뎨둑돝뒐땥딅돼뒵뒋딎돤돠땟돵땨땧뒈뒝뒷뎹딐뒐딁듨듼땨돰듼뎹뒘딟도딟듸땰둔딅뒈돛딀돸;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0}, L딹뒋둔둔듌들됐두뒛둣땥뒤땃딌돸딻듸땫돛듨도땱뎽땦땧딸딸땀땥듻됴뎹뒹뒛돤듟돠돷딝땱뒉돳됴뒨득뒷듐땥땹땭득됩땃뒤땩뒾뒝디뒀땦딹돼돵됴듔딞될돨땦둘둔둣딽뎸땁딽딃뒾땭돠땐딹땯뒉뎽땅든뎨땜뒹땪될디딀뎽돸땄딐딅땟돴땹돸뎽듐땤땝딻땲딁땻돸땅딟땄딝딤땩땅뒻둘딀둡뎠두땫돴뒷뒉둑;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, L딻듌딎땧듼돼딟뒻딞딐듔딅땣돨듼땁땪딠뒈돤딟듟땧땡돛딠돶딌땠땋땄땳딨딜땣땣됩드딀둠뎬둔땻딅따듨뒐땰땯돝디뎡듰뒵뎬돷땡땥디따땅땟따뎻땣뒋딽됨뒘됐땅딁딟땤땁뒹뎡딞땧뒝딁되땝뎹딀땣딻돤뎨뎨둑돝뒐땥딅돼뒵뒋딎돤돠땟돵땨땧뒈뒝뒷뎹딐뒐딁듨듼땨돰듼뎹뒘딟도딟듸땰둔딅뒈돛딀돸;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Ljava/lang/Object;)Landroid/os/ProfilingManager;

    move-result-object p0

    .line 3
    invoke-static {p0, p1, p2}, L딻듌딎땧듼돼딟뒻딞딐듔딅땣돨듼땁땪딠뒈돤딟듟땧땡돛딠돶딌땠땋땄땳딨딜땣땣됩드딀둠뎬둔땻딅따듨뒐땰땯돝디뎡듰뒵뎬돷땡땥디따땅땟따뎻땣뒋딽됨뒘됐땅딁딟땤땁뒹뎡딞땧뒝딁되땝뎹딀땣딻돤뎨뎨둑돝뒐땥딅돼뒵뒋딎돤돠땟돵땨땧뒈뒝뒷뎹딐뒐딁듨듼땨돰듼뎹뒘딟도딟듸땰둔딅뒈돛딀돸;->뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤(Landroid/os/ProfilingManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static final requestProfiling(Landroid/content/Context;Landroidx/core/os/ProfilingRequest;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 7
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/core/os/ProfilingRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/function/Consumer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x23
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/core/os/ProfilingRequest;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/os/ProfilingResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "profilingRequest"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, L딻듌딎땧듼돼딟뒻딞딐듔딅땣돨듼땁땪딠뒈돤딟듟땧땡돛딠돶딌땠땋땄땳딨딜땣땣됩드딀둠뎬둔땻딅따듨뒐땰땯돝디뎡듰뒵뎬돷땡땥디따땅땟따뎻땣뒋딽됨뒘됐땅딁딟땤땁뒹뎡딞땧뒝딁되땝뎹딀땣딻돤뎨뎨둑돝뒐땥딅돼뒵뒋딎돤돠땟돵땨땧뒈뒝뒷뎹딐뒐딁듨듼땨돰듼뎹뒘딟도딟듸땰둔딅뒈돛딀돸;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {p0, v0}, L딹뒋둔둔듌들됐두뒛둣땥뒤땃딌돸딻듸땫돛듨도땱뎽땦땧딸딸땀땥듻됴뎹뒹뒛돤듟돠돷딝땱뒉돳됴뒨득뒷듐땥땹땭득됩땃뒤땩뒾뒝디뒀땦딹돼돵됴듔딞될돨땦둘둔둣딽뎸땁딽딃뒾땭돠땐딹땯뒉뎽땅든뎨땜뒹땪될디딀뎽돸땄딐딅땟돴땹돸뎽듐땤땝딻땲딁땻돸땅딟땄딝딤땩땅뒻둘딀둡뎠두땫돴뒷뒉둑;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-static {p0}, L딻듌딎땧듼돼딟뒻딞딐듔딅땣돨듼땁땪딠뒈돤딟듟땧땡돛딠돶딌땠땋땄땳딨딜땣땣됩드딀둠뎬둔땻딅따듨뒐땰땯돝디뎡듰뒵뎬돷땡땥디따땅땟따뎻땣뒋딽됨뒘됐땅딁딟땤땁뒹뎡딞땧뒝딁되땝뎹딀땣딻돤뎨뎨둑돝뒐땥딅돼뒵뒋딎돤돠땟돵땨땧뒈뒝뒷뎹딐뒐딁듨듼땨돰듼뎹뒘딟도딟듸땰둔딅뒈돛딀돸;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Ljava/lang/Object;)Landroid/os/ProfilingManager;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p1}, Landroidx/core/os/ProfilingRequest;->getProfilingType()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {p1}, Landroidx/core/os/ProfilingRequest;->getParams()Landroid/os/Bundle;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {p1}, Landroidx/core/os/ProfilingRequest;->getTag()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {p1}, Landroidx/core/os/ProfilingRequest;->getCancellationSignal()Landroid/os/CancellationSignal;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    move-object v5, p2

    .line 40
    move-object v6, p3

    .line 41
    invoke-static/range {v0 .. v6}, L딻듌딎땧듼돼딟뒻딞딐듔딅땣돨듼땁땪딠뒈돤딟듟땧땡돛딠돶딌땠땋땄땳딨딜땣땣됩드딀둠뎬둔땻딅따듨뒐땰땯돝디뎡듰뒵뎬돷땡땥디따땅땟따뎻땣뒋딽됨뒘됐땅딁딟땤땁뒹뎡딞땧뒝딁되땝뎹딀땣딻돤뎨뎨둑돝뒐땥딅돼뒵뒋딎돤돠땟돵땨땧뒈뒝뒷뎹딐뒐딁듨듼땨돰듼뎹뒘딟도딟듸땰둔딅뒈돛딀돸;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(Landroid/os/ProfilingManager;ILandroid/os/Bundle;Ljava/lang/String;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public static final unregisterForAllProfilingResults(Landroid/content/Context;Ljava/util/function/Consumer;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/function/Consumer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x23
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Consumer<",
            "Landroid/os/ProfilingResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "listener"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, L딻듌딎땧듼돼딟뒻딞딐듔딅땣돨듼땁땪딠뒈돤딟듟땧땡돛딠돶딌땠땋땄땳딨딜땣땣됩드딀둠뎬둔땻딅따듨뒐땰땯돝디뎡듰뒵뎬돷땡땥디따땅땟따뎻땣뒋딽됨뒘됐땅딁딟땤땁뒹뎡딞땧뒝딁되땝뎹딀땣딻돤뎨뎨둑돝뒐땥딅돼뒵뒋딎돤돠땟돵땨땧뒈뒝뒷뎹딐뒐딁듨듼땨돰듼뎹뒘딟도딟듸땰둔딅뒈돛딀돸;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {p0, v0}, L딹뒋둔둔듌들됐두뒛둣땥뒤땃딌돸딻듸땫돛듨도땱뎽땦땧딸딸땀땥듻됴뎹뒹뒛돤듟돠돷딝땱뒉돳됴뒨득뒷듐땥땹땭득됩땃뒤땩뒾뒝디뒀땦딹돼돵됴듔딞될돨땦둘둔둣딽뎸땁딽딃뒾땭돠땐딹땯뒉뎽땅든뎨땜뒹땪될디딀뎽돸땄딐딅땟돴땹돸뎽듐땤땝딻땲딁땻돸땅딟땄딝딤땩땅뒻둘딀둡뎠두땫돴뒷뒉둑;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-static {p0}, L딻듌딎땧듼돼딟뒻딞딐듔딅땣돨듼땁땪딠뒈돤딟듟땧땡돛딠돶딌땠땋땄땳딨딜땣땣됩드딀둠뎬둔땻딅따듨뒐땰땯돝디뎡듰뒵뎬돷땡땥디따땅땟따뎻땣뒋딽됨뒘됐땅딁딟땤땁뒹뎡딞땧뒝딁되땝뎹딀땣딻돤뎨뎨둑돝뒐땥딅돼뒵뒋딎돤돠땟돵땨땧뒈뒝뒷뎹딐뒐딁듨듼땨돰듼뎹뒘딟도딟듸땰둔딅뒈돛딀돸;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Ljava/lang/Object;)Landroid/os/ProfilingManager;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {p0, p1}, L딻듌딎땧듼돼딟뒻딞딐듔딅땣돨듼땁땪딠뒈돤딟듟땧땡돛딠돶딌땠땋땄땳딨딜땣땣됩드딀둠뎬둔땻딅따듨뒐땰땯돝디뎡듰뒵뎬돷땡땥디따땅땟따뎻땣뒋딽됨뒘됐땅딁딟땤땁뒹뎡딞땧뒝딁되땝뎹딀땣딻돤뎨뎨둑돝뒐땥딅돼뒵뒋딎돤돠땟돵땨땧뒈뒝뒷뎹딐뒐딁듨듼땨돰듼뎹뒘딟도딟듸땰둔딅뒈돛딀돸;->뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋(Landroid/os/ProfilingManager;Ljava/util/function/Consumer;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
