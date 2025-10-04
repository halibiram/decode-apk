.class public final Landroidx/camera/core/impl/utils/futures/Futures;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/impl/utils/futures/Futures$CallbackListener;
    }
.end annotation


# static fields
.field private static final IDENTITY_FUNCTION:Landroidx/arch/core/util/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/arch/core/util/Function<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/camera/core/impl/utils/futures/Futures$2;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/camera/core/impl/utils/futures/Futures$2;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/camera/core/impl/utils/futures/Futures;->IDENTITY_FUNCTION:Landroidx/arch/core/util/Function;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/camera/core/impl/utils/futures/FutureCallback;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p0    # Lcom/google/common/util/concurrent/ListenableFuture;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/camera/core/impl/utils/futures/FutureCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TV;>;",
            "Landroidx/camera/core/impl/utils/futures/FutureCallback<",
            "-TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/camera/core/impl/utils/futures/Futures$CallbackListener;

    .line 5
    .line 6
    invoke-direct {v0, p0, p1}, Landroidx/camera/core/impl/utils/futures/Futures$CallbackListener;-><init>(Ljava/util/concurrent/Future;Landroidx/camera/core/impl/utils/futures/FutureCallback;)V

    .line 7
    .line 8
    .line 9
    invoke-interface {p0, v0, p2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static allAsList(Ljava/util/Collection;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .param p0    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;>;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/util/List<",
            "TV;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/camera/core/impl/utils/futures/ListFuture;

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-direct {v0, v1, p0, v2}, Landroidx/camera/core/impl/utils/futures/ListFuture;-><init>(Ljava/util/List;ZLjava/util/concurrent/Executor;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public static getDone(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 3
    .param p0    # Ljava/util/concurrent/Future;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "Future was expected to be done, "

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {p0}, Landroidx/camera/core/impl/utils/futures/Futures;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method public static getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 1
    .param p0    # Ljava/util/concurrent/Future;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-object p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 24
    .line 25
    .line 26
    :cond_1
    throw p0

    .line 27
    :catch_0
    const/4 v0, 0x1

    .line 28
    goto :goto_0
.end method

.method public static immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p0    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/camera/core/impl/utils/futures/ImmediateFuture$ImmediateFailedFuture;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/camera/core/impl/utils/futures/ImmediateFuture$ImmediateFailedFuture;-><init>(Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static immediateFailedScheduledFuture(Ljava/lang/Throwable;)Ljava/util/concurrent/ScheduledFuture;
    .locals 1
    .param p0    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture<",
            "TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/camera/core/impl/utils/futures/ImmediateFuture$ImmediateFailedScheduledFuture;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/camera/core/impl/utils/futures/ImmediateFuture$ImmediateFailedScheduledFuture;-><init>(Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(TV;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    invoke-static {}, Landroidx/camera/core/impl/utils/futures/ImmediateFuture;->nullFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0

    .line 8
    :cond_0
    new-instance v0, Landroidx/camera/core/impl/utils/futures/ImmediateFuture$ImmediateSuccessfulFuture;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Landroidx/camera/core/impl/utils/futures/ImmediateFuture$ImmediateSuccessfulFuture;-><init>(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method private static synthetic lambda$makeTimeoutFuture$1(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Lcom/google/common/util/concurrent/ListenableFuture;J)Ljava/lang/Boolean;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "Future["

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string p1, "] is not done within "

    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string p1, " ms."

    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-direct {v0, p1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method

.method private static synthetic lambda$makeTimeoutFuture$2(Ljava/util/concurrent/ScheduledFuture;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-interface {p0, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private static synthetic lambda$makeTimeoutFuture$3(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/util/concurrent/ScheduledExecutorService;JLandroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p0, p4}, Landroidx/camera/core/impl/utils/futures/Futures;->propagate(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    .line 2
    .line 3
    .line 4
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-instance v0, L듨뒐딨딹딁뎹땁땸돤뒾듼둬됨뒀뎽땣돷딄도돰뎬뒈땄딌땮되땭돴땜디뒬뒻딁땯돤딽땨땥뒻뎨돳뒐뎨됫뒻뒤뎬딠딞뒼땩되둠땥둡땋딄땧둥듌듌땁디도땩둡땨딨땦드둠딨땭땀될땫돠뒉뎹뒤땄딹듔뎬도따땁돴듻뒵돶딽뒋돨딄땧땔땬돼땹됴될딞됐딞딠딐딃뒈따딁딟뒹뎻돼뒀듐딤땜땬땤뒷딅됫땬듔딝땍듌땋;

    .line 11
    .line 12
    invoke-direct {v0, p4, p0, p2, p3}, L듨뒐딨딹딁뎹땁땸돤뒾듼둬됨뒀뎽땣돷딄도돰뎬뒈땄딌땮되땭돴땜디뒬뒻딁땯돤딽땨땥뒻뎨돳뒐뎨됫뒻뒤뎬딠딞뒼땩되둠땥둡땋딄땧둥듌듌땁디도땩둡땨딨땦드둠딨땭땀될땫돠뒉뎹뒤땄딹듔뎬도따땁돴듻뒵돶딽뒋돨딄땧땔땬돼땹됴될딞됐딞딠딐딃뒈따딁딟뒹뎻돼뒀듐딤땜땬땤뒷딅됫땬듔딝땍듌땋;-><init>(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Lcom/google/common/util/concurrent/ListenableFuture;J)V

    .line 13
    .line 14
    .line 15
    sget-object p4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 16
    .line 17
    invoke-interface {p1, v0, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    new-instance p2, L듨두땀땄딤둥둣돛돼딁땄땯딸들땬뒛듻뒙땲됨땹땵뒝딨듸땁딄됐뒵뎡땁둣들돤돼뒛땡딎뒵뒀뎰뒉뒹듔땍돨뎻뒘돤두됴땵땲돼뎻듟뒤딁돨땍둑듌땅뒀둣뒀땄딞뒼땠땩돴땜듐땱뒐딠뒈땬뒐득돴뒋듸듌땮뎠돼돶뒷딸땳듌땥둔땀딻뒝뒀드둬돼둡돤땃둬됨땟둑땥땅든돼뎹돳땠딹땨뒷따돸돵돴돷됨뒀땲땮됨두;

    .line 22
    .line 23
    const/4 p3, 0x1

    .line 24
    invoke-direct {p2, p1, p3}, L듨두땀땄딤둥둣돛돼딁땄땯딸들땬뒛듻뒙땲됨땹땵뒝딨듸땁딄됐뒵뎡땁둣들돤돼뒛땡딎뒵뒀뎰뒉뒹듔땍돨뎻뒘돤두됴땵땲돼뎻듟뒤딁돨땍둑듌땅뒀둣뒀땄딞뒼땠땩돴땜듐땱뒐딠뒈땬뒐득돴뒋듸듌땮뎠돼돶뒷딸땳듌땥둔땀딻뒝뒀드둬돼둡돤땃둬됨땟둑땥땅든돼뎹돳땠딹땨뒷따돸돵돴돷됨뒀땲땮됨두;-><init>(Ljava/util/concurrent/ScheduledFuture;I)V

    .line 25
    .line 26
    .line 27
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-interface {p0, p2, p1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string p2, "TimeoutFuture["

    .line 37
    .line 38
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string p0, "]"

    .line 45
    .line 46
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0
.end method

.method private static synthetic lambda$makeTimeoutFuture$4(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Ljava/lang/Object;ZLcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    invoke-interface {p3, p0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private static synthetic lambda$makeTimeoutFuture$5(Ljava/util/concurrent/ScheduledFuture;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-interface {p0, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private static synthetic lambda$makeTimeoutFuture$6(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Object;ZJLandroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p0, p6}, Landroidx/camera/core/impl/utils/futures/Futures;->propagate(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    .line 2
    .line 3
    .line 4
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-instance v0, L듨두듼딄뒼땦뎨듨뒷둣돵듸돛땜뎻돝땔둔뒝뎽땹뒋뎰딨땔듔둥뒹땠돸뒼드땦딟뎨땱딀될뎻뎰돼뎹땵딽땠득땀뎠돝뒵듼땭됐듟듨됴땨뒨딠뎹딜딐땸땵땻딌땍땳딝둬땋듟듌딀뒹둘돤둣땄땝든땲땟딄돸딝땯됫딅땭돨딌뒋땀듰됫듔딹뎠돷돷딎뒹뒘뒹듼딽땵뒈딐땄듔땠땅땩뎨듔땻뒤디될뎡뎸땡땬돸듟딝듽득;

    .line 11
    .line 12
    invoke-direct {v0, p6, p2, p3, p0}, L듨두듼딄뒼땦뎨듨뒷둣돵듸돛땜뎻돝땔둔뒝뎽땹뒋뎰딨땔듔둥뒹땠돸뒼드땦딟뎨땱딀될뎻뎰돼뎹땵딽땠득땀뎠돝뒵듼땭됐듟듨됴땨뒨딠뎹딜딐땸땵땻딌땍땳딝둬땋듟듌딀뒹둘돤둣땄땝든땲땟딄돸딝땯됫딅땭돨딌뒋땀듰됫듔딹뎠돷돷딎뒹뒘뒹듼딽땵뒈딐땄듔땠땅땩뎨듔땻뒤디될뎡뎸땡땬돸듟딝듽득;-><init>(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Ljava/lang/Object;ZLcom/google/common/util/concurrent/ListenableFuture;)V

    .line 13
    .line 14
    .line 15
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 16
    .line 17
    invoke-interface {p1, v0, p4, p5, p2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    new-instance p2, L듨두땀땄딤둥둣돛돼딁땄땯딸들땬뒛듻뒙땲됨땹땵뒝딨듸땁딄됐뒵뎡땁둣들돤돼뒛땡딎뒵뒀뎰뒉뒹듔땍돨뎻뒘돤두됴땵땲돼뎻듟뒤딁돨땍둑듌땅뒀둣뒀땄딞뒼땠땩돴땜듐땱뒐딠뒈땬뒐득돴뒋듸듌땮뎠돼돶뒷딸땳듌땥둔땀딻뒝뒀드둬돼둡돤땃둬됨땟둑땥땅든돼뎹돳땠딹땨뒷따돸돵돴돷됨뒀땲땮됨두;

    .line 22
    .line 23
    const/4 p3, 0x0

    .line 24
    invoke-direct {p2, p1, p3}, L듨두땀땄딤둥둣돛돼딁땄땯딸들땬뒛듻뒙땲됨땹땵뒝딨듸땁딄됐뒵뎡땁둣들돤돼뒛땡딎뒵뒀뎰뒉뒹듔땍돨뎻뒘돤두됴땵땲돼뎻듟뒤딁돨땍둑듌땅뒀둣뒀땄딞뒼땠땩돴땜듐땱뒐딠뒈땬뒐득돴뒋듸듌땮뎠돼돶뒷딸땳듌땥둔땀딻뒝뒀드둬돼둡돤땃둬됨땟둑땥땅든돼뎹돳땠딹땨뒷따돸돵돴돷됨뒀땲땮됨두;-><init>(Ljava/util/concurrent/ScheduledFuture;I)V

    .line 25
    .line 26
    .line 27
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-interface {p0, p2, p1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string p2, "TimeoutFuture["

    .line 37
    .line 38
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string p0, "]"

    .line 45
    .line 46
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0
.end method

.method private static synthetic lambda$nonCancellationPropagating$0(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 3

    .line 1
    sget-object v0, Landroidx/camera/core/impl/utils/futures/Futures;->IDENTITY_FUNCTION:Landroidx/arch/core/util/Function;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    invoke-static {v1, p0, v0, p1, v2}, Landroidx/camera/core/impl/utils/futures/Futures;->propagateTransform(ZLcom/google/common/util/concurrent/ListenableFuture;Landroidx/arch/core/util/Function;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Ljava/util/concurrent/Executor;)V

    .line 9
    .line 10
    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v0, "nonCancellationPropagating["

    .line 14
    .line 15
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string p0, "]"

    .line 22
    .line 23
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method

.method private static synthetic lambda$transformAsyncOnCompletion$7(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private static synthetic lambda$transformAsyncOnCompletion$8(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, L뒈딜돴땜됩돝딽듰둣땪땍둑득딠든땩듨듰둬땸땪든땫뒐뒋돼뒋땨든뒈뎰돤땬드땧땤딄따땔땤딌뎸뒵딤둣뒾땜듼땹둣뒨딠딄뒋땝땅둡땵딌땐듌땧뒨땀뒤땦둡땃뒝딠된돠땀뒛뒾뒷땪도돷됐딄돠드땫뒤두땩돶듟땄됨됫득땬됨딞돼뎻따둬뎨듰땔돨딹땥땋딝땔듬딽디땰돴듌되딹듟뒹돝돤땪뒻땬뒼듔뒵땨둥둬;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1, p1}, L뒈딜돴땜됩돝딽듰둣땪땍둑득딠든땩듨듰둬땸땪든땫뒐뒋돼뒋땨든뒈뎰돤땬드땧땤딄따땔땤딌뎸뒵딤둣뒾땜듼땹둣뒨딠딄뒋땝땅둡땵딌땐듌땧뒨땀뒤땦둡땃뒝딠된돠땀뒛뒾뒷땪도돷됐딄돠드땫뒤두땩돶듟땄됨됫득땬됨딞돼뎻따둬뎨듰땔돨딹땥땋딝땔듬딽디땰돴듌되딹듟뒹돝돤땪뒻땬뒼듔뒵땨둥둬;-><init>(ILandroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {p0, v0, p1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 12
    .line 13
    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v0, "transformVoidFuture ["

    .line 17
    .line 18
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string p0, "]"

    .line 25
    .line 26
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method

.method public static makeTimeoutFuture(JLjava/util/concurrent/ScheduledExecutorService;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p2    # Ljava/util/concurrent/ScheduledExecutorService;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/common/util/concurrent/ListenableFuture;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TV;>;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, L들땦따따듼딁뒻듬딨땻뒋뒾딨뒙돼돼땠듐듟됫뒛땬딟둘딝돰딹땜뒵뒵듻뎻돷듟뒨뎡뎠딎땧땻딎됩땸뒘딁땭뒘딅듽됨돝둔됐딄뎸돛됨딟뒝디돷땪땧땐듌둣돰땠돷둡됩돴뒹둘딝딹딠딟뒋딎듰땨든됩뎨땬딝땵딝땍듟딄땰딸땡땪땸땠뒼딟땀뎹땯딸땣따뎸돳땲땰뒹뒤딌듨됩듨딽딞뒉땥듰돝듟둘듟딟들돠뒾됩;

    invoke-direct {v0, p0, p1, p2, p3}, L들땦따따듼딁뒻듬딨땻뒋뒾딨뒙돼돼땠듐듟됫뒛땬딟둘딝돰딹땜뒵뒵듻뎻돷듟뒨뎡뎠딎땧땻딎됩땸뒘딁땭뒘딅듽됨돝둔됐딄뎸돛됨딟뒝디돷땪땧땐듌둣돰땠돷둡됩돴뒹둘딝딹딠딟뒋딎듰땨든됩뎨땬딝땵딝땍듟딄땰딸땡땪땸땠뒼딟땀뎹땯딸땣따뎸돳땲땰뒹뒤딌듨됩듨딽딞뒉땥듰돝듟둘듟딟들돠뒾됩;-><init>(JLjava/util/concurrent/ScheduledExecutorService;Lcom/google/common/util/concurrent/ListenableFuture;)V

    invoke-static {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static makeTimeoutFuture(JLjava/util/concurrent/ScheduledExecutorService;Ljava/lang/Object;ZLcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 8
    .param p2    # Ljava/util/concurrent/ScheduledExecutorService;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/google/common/util/concurrent/ListenableFuture;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "TV;Z",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TV;>;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 2
    new-instance v7, L듨돶땭뒼돵들뒤둘될뒀들뒙돠듼딤땠딃든딹땮돼땀땪땤딐돶돤디딄딀듨됨디돴땡들땣땐딜둔듻듻땀딐뎻딹땐뒈땨뒷땳딠땝따땜듔돶땡뒙땤땃딐둬뒈땟딞딃돵땋둣듐됨듬돶돝듽뒀둣딸두땰들딸땄딤됫뒤딀뒾땣딻땔땳딠됐딃돨뎬듟땡둘딐땲딎뎹돛듬뎹뒉뎬된돝뒬땨둥돷땠둔땤딁딞땔땃뒉딝뎡돶딻뎬땯;

    move-object v0, v7

    move-wide v1, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, L듨돶땭뒼돵들뒤둘될뒀들뒙돠듼딤땠딃든딹땮돼땀땪땤딐돶돤디딄딀듨됨디돴땡들땣땐딜둔듻듻땀딐뎻딹땐뒈땨뒷땳딠땝따땜듔돶땡뒙땤땃딐둬뒈땟딞딃돵땋둣듐됨듬돶돝듽뒀둣딸두땰들딸땄딤됫뒤딀뒾땣딻땔땳딠됐딃돨뎬듟땡둘딐땲딎뎹돛듬뎹뒉뎬된돝뒬땨둥돷땠둔땤딁딞땔땃뒉딝뎡돶딻뎬땯;-><init>(JLjava/util/concurrent/ScheduledExecutorService;Ljava/lang/Object;ZLcom/google/common/util/concurrent/ListenableFuture;)V

    invoke-static {v7}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static nonCancellationPropagating(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p0    # Lcom/google/common/util/concurrent/ListenableFuture;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TV;>;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_0
    new-instance v0, L들땯땤됐뒛뎹딟땫뒝뒋됴딸딄득딄땯뒬뒻됫딃둘도돤뒋된듽땐됴뒹듌듐뒾뎽뒙뒹듟뒋땫땃듻딟듟땭득뒷뒾땅딅된딤땪땭든땪딸뎨돳둑듨뒤뒨딌뎡됩땐돵딜뒼듸땯돷딹됩뎰땨딹뒬득둑땳둘땄딄뒤뒾딠득딀딀뒼둘땬뒹듨뒻돳듰딀돴돵둔땫땝뒘땥땁뒀뒾돸땀땥땠둬돵뒵땭듐뒛땋뎽돰땡뎨둠돤땝둘딝땣뒨;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-direct {v0, p0, v1}, L들땯땤됐뒛뎹딟땫뒝뒋됴딸딄득딄땯뒬뒻됫딃둘도돤뒋된듽땐됴뒹듌듐뒾뎽뒙뒹듟뒋땫땃듻딟듟땭득뒷뒾땅딅된딤땪땭든땪딸뎨돳둑듨뒤뒨딌뎡됩땐돵딜뒼듸땯돷딹됩뎰땨딹뒬득둑땳둘땄딄뒤뒾딠득딀딀뒼둘땬뒹듨뒻돳듰딀돴돵둔땫땝뒘땥땁뒀뒾돸땀땥땠둬돵뒵땭듐뒛땋뎽돰땡뎨둠돤땝둘딝땣뒨;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method public static propagate(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 2
    .param p0    # Lcom/google/common/util/concurrent/ListenableFuture;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TV;>;",
            "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<",
            "TV;>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Landroidx/camera/core/impl/utils/futures/Futures;->IDENTITY_FUNCTION:Landroidx/arch/core/util/Function;

    .line 2
    .line 3
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {p0, v0, p1, v1}, Landroidx/camera/core/impl/utils/futures/Futures;->propagateTransform(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/arch/core/util/Function;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Ljava/util/concurrent/Executor;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static propagateTransform(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/arch/core/util/Function;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p0    # Lcom/google/common/util/concurrent/ListenableFuture;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/arch/core/util/Function;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TI;>;",
            "Landroidx/arch/core/util/Function<",
            "-TI;+TO;>;",
            "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<",
            "TO;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-static {v0, p0, p1, p2, p3}, Landroidx/camera/core/impl/utils/futures/Futures;->propagateTransform(ZLcom/google/common/util/concurrent/ListenableFuture;Landroidx/arch/core/util/Function;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private static propagateTransform(ZLcom/google/common/util/concurrent/ListenableFuture;Landroidx/arch/core/util/Function;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1    # Lcom/google/common/util/concurrent/ListenableFuture;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/arch/core/util/Function;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(Z",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TI;>;",
            "Landroidx/arch/core/util/Function<",
            "-TI;+TO;>;",
            "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<",
            "TO;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p2}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p3}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {p4}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v0, Landroidx/camera/core/impl/utils/futures/Futures$3;

    invoke-direct {v0, p3, p2}, Landroidx/camera/core/impl/utils/futures/Futures$3;-><init>(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroidx/arch/core/util/Function;)V

    invoke-static {p1, v0, p4}, Landroidx/camera/core/impl/utils/futures/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/camera/core/impl/utils/futures/FutureCallback;Ljava/util/concurrent/Executor;)V

    if-eqz p0, :cond_0

    .line 7
    new-instance p0, Landroidx/camera/core/impl/utils/futures/Futures$4;

    invoke-direct {p0, p1}, Landroidx/camera/core/impl/utils/futures/Futures$4;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 8
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 9
    invoke-virtual {p3, p0, p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->addCancellationListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_0
    return-void
.end method

.method public static successfulAsList(Ljava/util/Collection;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .param p0    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;>;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/util/List<",
            "TV;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/camera/core/impl/utils/futures/ListFuture;

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-direct {v0, v1, p0, v2}, Landroidx/camera/core/impl/utils/futures/ListFuture;-><init>(Ljava/util/List;ZLjava/util/concurrent/Executor;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public static transform(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/arch/core/util/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p0    # Lcom/google/common/util/concurrent/ListenableFuture;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/arch/core/util/Function;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TI;>;",
            "Landroidx/arch/core/util/Function<",
            "-TI;+TO;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TO;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/camera/core/impl/utils/futures/Futures$1;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Landroidx/camera/core/impl/utils/futures/Futures$1;-><init>(Landroidx/arch/core/util/Function;)V

    .line 7
    .line 8
    .line 9
    invoke-static {p0, v0, p2}, Landroidx/camera/core/impl/utils/futures/Futures;->transformAsync(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/camera/core/impl/utils/futures/AsyncFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public static transformAsync(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/camera/core/impl/utils/futures/AsyncFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p0    # Lcom/google/common/util/concurrent/ListenableFuture;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/camera/core/impl/utils/futures/AsyncFunction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TI;>;",
            "Landroidx/camera/core/impl/utils/futures/AsyncFunction<",
            "-TI;+TO;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TO;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/camera/core/impl/utils/futures/ChainingListenableFuture;

    .line 2
    .line 3
    invoke-direct {v0, p1, p0}, Landroidx/camera/core/impl/utils/futures/ChainingListenableFuture;-><init>(Landroidx/camera/core/impl/utils/futures/AsyncFunction;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, v0, p2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public static transformAsyncOnCompletion(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p0    # Lcom/google/common/util/concurrent/ListenableFuture;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TV;>;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, L들땯땤됐뒛뎹딟땫뒝뒋됴딸딄득딄땯뒬뒻됫딃둘도돤뒋된듽땐됴뒹듌듐뒾뎽뒙뒹듟뒋땫땃듻딟듟땭득뒷뒾땅딅된딤땪땭든땪딸뎨돳둑듨뒤뒨딌뎡됩땐돵딜뒼듸땯돷딹됩뎰땨딹뒬득둑땳둘땄딄뒤뒾딠득딀딀뒼둘땬뒹듨뒻돳듰딀돴돵둔땫땝뒘땥땁뒀뒾돸땀땥땠둬돵뒵땭듐뒛땋뎽돰땡뎨둠돤땝둘딝땣뒨;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, L들땯땤됐뒛뎹딟땫뒝뒋됴딸딄득딄땯뒬뒻됫딃둘도돤뒋된듽땐됴뒹듌듐뒾뎽뒙뒹듟뒋땫땃듻딟듟땭득뒷뒾땅딅된딤땪땭든땪딸뎨돳둑듨뒤뒨딌뎡됩땐돵딜뒼듸땯돷딹됩뎰땨딹뒬득둑땳둘땄딄뒤뒾딠득딀딀뒼둘땬뒹듨뒻돳듰딀돴돵둔땫땝뒘땥땁뒀뒾돸땀땥땠둬돵뒵땭듐뒛땋뎽돰땡뎨둠돤땝둘딝땣뒨;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;I)V

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Object;ZJLandroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Landroidx/camera/core/impl/utils/futures/Futures;->lambda$makeTimeoutFuture$6(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Object;ZJLandroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Ljava/util/concurrent/ScheduledFuture;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/camera/core/impl/utils/futures/Futures;->lambda$makeTimeoutFuture$2(Ljava/util/concurrent/ScheduledFuture;)V

    return-void
.end method

.method public static synthetic 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/camera/core/impl/utils/futures/Futures;->lambda$nonCancellationPropagating$0(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/util/concurrent/ScheduledExecutorService;JLandroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/camera/core/impl/utils/futures/Futures;->lambda$makeTimeoutFuture$3(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/util/concurrent/ScheduledExecutorService;JLandroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Lcom/google/common/util/concurrent/ListenableFuture;J)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/camera/core/impl/utils/futures/Futures;->lambda$makeTimeoutFuture$1(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Lcom/google/common/util/concurrent/ListenableFuture;J)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/camera/core/impl/utils/futures/Futures;->lambda$transformAsyncOnCompletion$8(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/camera/core/impl/utils/futures/Futures;->lambda$transformAsyncOnCompletion$7(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    return-void
.end method

.method public static synthetic 뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Ljava/lang/Object;ZLcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/camera/core/impl/utils/futures/Futures;->lambda$makeTimeoutFuture$4(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Ljava/lang/Object;ZLcom/google/common/util/concurrent/ListenableFuture;)V

    return-void
.end method

.method public static synthetic 뎨돶땰딎땵딃됨드땭두뒹듟땭땧될땤돝땡땟땡득땫땟듌둑듔뒐둔뒨딽땪돵둥뒬돝뒼뒹땻딹둡듔든땐땰땜땠돳땔될땪두땃딄되돸든돵뎬둘땨딀둡땲뎽땬듬딝딃땜뒼됨땤딝돴듽돰듻땲됫듸든둬듰듰듸뒈땳땠뎰딽둬딽뒼딎땃돸돳딠뒷뒛땯듬뎬땅땀되될딅땩땵됨땐땧뎰뎨땥됩뒋됐딟따됐땮뎡돛듰딸뎬뒙돷(Ljava/util/concurrent/ScheduledFuture;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/camera/core/impl/utils/futures/Futures;->lambda$makeTimeoutFuture$5(Ljava/util/concurrent/ScheduledFuture;)V

    return-void
.end method
