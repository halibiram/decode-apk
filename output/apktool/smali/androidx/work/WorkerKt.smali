.class public final Landroidx/work/WorkerKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a&\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0005H\u0002\u00a8\u0006\u0006"
    }
    d2 = {
        "future",
        "Lcom/google/common/util/concurrent/ListenableFuture;",
        "T",
        "Ljava/util/concurrent/Executor;",
        "block",
        "Lkotlin/Function0;",
        "work-runtime_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final synthetic access$future(Ljava/util/concurrent/Executor;Lkotlin/jvm/functions/Function0;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/work/WorkerKt;->future(Ljava/util/concurrent/Executor;Lkotlin/jvm/functions/Function0;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final future(Ljava/util/concurrent/Executor;Lkotlin/jvm/functions/Function0;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, L뎸땝딀둡뒷땅땯뎡듻땲땭돨듔뒈땩땤든둘득딝뒝땬듼땵뎻둡땲땨딝돨땍뎻딃땠땸땹듌듬뎽둣땪뒻딎뒤땃땵땃땫땬딻땄땲따듔딹뒛딠땩땨땃돛땤딹듟땻땫뒨듽딌딜딄땔땲땋둑됐딝땫땔돨땸땹든두땩딌됐득따땐돸듐됩듰뒻뒷돵뒤뎡땹됩둔땥땧들딨둣둣돴딨돰뒹됐돤됐뒬뒋땋딽딄딝될딁돶땬될딀땬딄땬;

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    invoke-direct {v0, p0, p1, v1}, L뎸땝딀둡뒷땅땯뎡듻땲땭돨듔뒈땩땤든둘득딝뒝땬듼땵뎻둡땲땨딝돨땍뎻딃땠땸땹듌듬뎽둣땪뒻딎뒤땃땵땃땫땬딻땄땲따듔딹뒛딠땩땨땃돛땤딹듟땻땫뒨듽딌딜딄땔땲땋둑됐딝땫땔돨땸땹든두땩딌됐득따땐돸듐됩듰뒻뒷돵뒤뎡땹됩둔땥땧들딨둣둣돴딨돰뒹됐돤됐뒬뒋땋딽딄딝될딁돶땬될딀땬딄땬;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const-string p1, "getFuture {\n        val \u2026        }\n        }\n    }"

    .line 13
    .line 14
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-object p0
.end method

.method private static final future$lambda$2(Ljava/util/concurrent/Executor;Lkotlin/jvm/functions/Function0;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Lkotlin/Unit;
    .locals 3

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 10
    .line 11
    .line 12
    new-instance v1, L딅뒀득땣뎽된딌땨딨듐땦땄땸될돠딨뎹땣듽뒹뒹땐든땟딁둡됐땳땱뎰둡땦땍돴뒉뎬딝듸두돴땫딟득됨뒛든둘딝딁돸돸듨땜뒾뒾돼뒈됴뒻뒻뒙듨땣땋뒬뒈될둡듼땐돷뒉뒤딃뒻돠뒹둬딁딸딎딃듔뒐돷뒬딀듨듰뒼돳돷득땹땜땃듬됫됴땪딅땪땧딅들들듟땃됩둣뒻딅땩땲딅땦둘듌됐돵땠돨뎰땱뒨딝듻땮듸땁;

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-direct {v1, v0, v2}, L딅뒀득땣뎽된딌땨딨듐땦땄땸될돠딨뎹땣듽뒹뒹땐든땟딁둡됐땳땱뎰둡땦땍돴뒉뎬딝듸두돴땫딟득됨뒛든둘딝딁돸돸듨땜뒾뒾돼뒈됴뒻뒻뒙듨땣땋뒬뒈될둡듼땐돷뒉뒤딃뒻돠뒹둬딁딸딎딃듔뒐돷뒬딀듨듰뒼돳돷득땹땜땃듬됫됴땪딅땪땧딅들들듟땃됩둣뒻딅땩땲딅땦둘듌됐돵땠돨뎰땱뒨딝듻땮듸땁;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;I)V

    .line 16
    .line 17
    .line 18
    sget-object v2, Landroidx/work/DirectExecutor;->INSTANCE:Landroidx/work/DirectExecutor;

    .line 19
    .line 20
    invoke-virtual {p2, v1, v2}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->addCancellationListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 21
    .line 22
    .line 23
    new-instance v1, L딅듰들들뒘됨됨땪따뎽딝땩듰됴땝딝됩돝따땔땥됨땩됐땪뎡딁딠땻둠땀듟듟뒋뎸딄땃땡땣땭되돳듟돸듨뒻돛땬땤땨돵뒛딄뎻도뎠땥둑뒼땵돵둡돴뒝땻따둘둬뒹듽든땋뒵드되땨도땦듼듐땻땻딠딐듸땩돼땫득딁땦됩뒵돠둥디든둬둡둔땃듌땥듸땨땝뒙됴뒙땮됐딃드딽둣딎둣땠뒵돵땪뎬디땭뒀뎽돠듽됴땬;

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    invoke-direct {v1, v0, p2, p1, v2}, L딅듰들들뒘됨됨땪따뎽딝땩듰됴땝딝됩돝따땔땥됨땩됐땪뎡딁딠땻둠땀듟듟뒋뎸딄땃땡땣땭되돳듟돸듨뒻돛땬땤땨돵뒛딄뎻도뎠땥둑뒼땵돵둡돴뒝땻따둘둬뒹듽든땋뒵드되땨도땦듼듐땻땻딠딐듸땩돼땫득딁땦됩뒵돠둥디든둬둡둔땃듌땥듸땨땝뒙됴뒙땮됐딃드딽둣딎둣땠뒵돵땪뎬디땭뒀뎽돠듽됴땬;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Lkotlin/jvm/functions/Function0;I)V

    .line 27
    .line 28
    .line 29
    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 30
    .line 31
    .line 32
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 33
    .line 34
    return-object p0
.end method

.method private static final future$lambda$2$lambda$0(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private static final future$lambda$2$lambda$1(Ljava/util/concurrent/atomic/AtomicBoolean;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p1, p0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    invoke-virtual {p1, p0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Ljava/util/concurrent/atomic/AtomicBoolean;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/work/WorkerKt;->future$lambda$2$lambda$1(Ljava/util/concurrent/atomic/AtomicBoolean;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/work/WorkerKt;->future$lambda$2$lambda$0(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    return-void
.end method

.method public static synthetic 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Ljava/util/concurrent/Executor;Lkotlin/jvm/functions/Function0;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/work/WorkerKt;->future$lambda$2(Ljava/util/concurrent/Executor;Lkotlin/jvm/functions/Function0;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method
