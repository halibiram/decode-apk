.class public final Landroidx/work/multiprocess/RemoteExecuteKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a.\u0010\u0000\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u00032\u0006\u0010\u0004\u001a\u0002H\u00022\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0006H\u0080@\u00a2\u0006\u0002\u0010\u0007\u001a<\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0008\"\u0008\u0008\u0000\u0010\u0002*\u00020\u00032\u0006\u0010\t\u001a\u00020\n2\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u00082\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0006H\u0000\u001a\u0014\u0010\u000b\u001a\u00020\u000c*\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002\u00a8\u0006\u0010"
    }
    d2 = {
        "execute",
        "",
        "T",
        "Landroid/os/IInterface;",
        "iInterface",
        "dispatcher",
        "Landroidx/work/multiprocess/RemoteDispatcher;",
        "(Landroid/os/IInterface;Landroidx/work/multiprocess/RemoteDispatcher;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/ListenableFuture;",
        "executor",
        "Ljava/util/concurrent/Executor;",
        "unlinkToDeathSafely",
        "",
        "Landroid/os/IBinder;",
        "recipient",
        "Landroid/os/IBinder$DeathRecipient;",
        "work-multiprocess_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRemoteExecute.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RemoteExecute.kt\nandroidx/work/multiprocess/RemoteExecuteKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,98:1\n1#2:99\n*E\n"
    }
.end annotation


# direct methods
.method public static final execute(Ljava/util/concurrent/Executor;Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/work/multiprocess/RemoteDispatcher;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .param p0    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/common/util/concurrent/ListenableFuture;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/work/multiprocess/RemoteDispatcher;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/IInterface;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TT;>;",
            "Landroidx/work/multiprocess/RemoteDispatcher<",
            "TT;>;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "[B>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "executor"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iInterface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dispatcher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Landroidx/concurrent/futures/SuspendToFutureAdapter;->INSTANCE:Landroidx/concurrent/futures/SuspendToFutureAdapter;

    invoke-static {p0}, Lkotlinx/coroutines/ExecutorsKt;->from(Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v1, v2}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v1

    invoke-virtual {p0, v1}, Lkotlin/coroutines/AbstractCoroutineContextElement;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    new-instance v1, Landroidx/work/multiprocess/RemoteExecuteKt$execute$1;

    invoke-direct {v1, p1, p2, v2}, Landroidx/work/multiprocess/RemoteExecuteKt$execute$1;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/work/multiprocess/RemoteDispatcher;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Landroidx/concurrent/futures/SuspendToFutureAdapter;->launchFuture(Lkotlin/coroutines/CoroutineContext;ZLkotlin/jvm/functions/Function2;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static final execute(Landroid/os/IInterface;Landroidx/work/multiprocess/RemoteDispatcher;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p0    # Landroid/os/IInterface;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/work/multiprocess/RemoteDispatcher;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/IInterface;",
            ">(TT;",
            "Landroidx/work/multiprocess/RemoteDispatcher<",
            "TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-[B>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p2, Landroidx/work/multiprocess/RemoteExecuteKt$execute$2;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/work/multiprocess/RemoteExecuteKt$execute$2;

    iget v1, v0, Landroidx/work/multiprocess/RemoteExecuteKt$execute$2;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/work/multiprocess/RemoteExecuteKt$execute$2;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/work/multiprocess/RemoteExecuteKt$execute$2;

    invoke-direct {v0, p2}, Landroidx/work/multiprocess/RemoteExecuteKt$execute$2;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Landroidx/work/multiprocess/RemoteExecuteKt$execute$2;->result:Ljava/lang/Object;

    invoke-static {}, L딀땭딠도듻두뎰땻땩둣땰돨딸딽득땰뒉땡돨돸땭딐딅딄뒷돤뒵뎬뒤듬딞둔둔땠땅딐딽도돼돷될딌땔땩뒝땸듨뎻득듟땃뎻둬땹돰땧됴될돵뎬따딠듌둑됴둣땥둠땭땠됴돤듬돷딅땩딨둠딝듰듻딞땍땸뎻둡듻듟땲땰딹땤딜땋돠땸돷듸땫딠땻뒛딎뒈됩땲뒉딹딹딁땰땹땭땃뒹되딹땔듐땣돼땍돸돼딀땍땪둔땡뒻;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 2
    iget v2, v0, Landroidx/work/multiprocess/RemoteExecuteKt$execute$2;->label:I

    const-string v3, "binder"

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, Landroidx/work/multiprocess/RemoteExecuteKt$execute$2;->L$3:Ljava/lang/Object;

    check-cast p0, Landroid/os/IBinder;

    iget-object p1, v0, Landroidx/work/multiprocess/RemoteExecuteKt$execute$2;->L$2:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v0, Landroidx/work/multiprocess/RemoteExecuteKt$execute$2;->L$1:Ljava/lang/Object;

    check-cast v1, Landroidx/work/multiprocess/RemoteDispatcher;

    iget-object v0, v0, Landroidx/work/multiprocess/RemoteExecuteKt$execute$2;->L$0:Ljava/lang/Object;

    check-cast v0, Landroid/os/IInterface;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 3
    new-instance p2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 4
    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 5
    :try_start_1
    iput-object p0, v0, Landroidx/work/multiprocess/RemoteExecuteKt$execute$2;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Landroidx/work/multiprocess/RemoteExecuteKt$execute$2;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Landroidx/work/multiprocess/RemoteExecuteKt$execute$2;->L$2:Ljava/lang/Object;

    iput-object v2, v0, Landroidx/work/multiprocess/RemoteExecuteKt$execute$2;->L$3:Ljava/lang/Object;

    iput v4, v0, Landroidx/work/multiprocess/RemoteExecuteKt$execute$2;->label:I

    new-instance v4, Lkotlin/coroutines/SafeContinuation;

    invoke-static {v0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v5

    invoke-direct {v4, v5}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 6
    new-instance v5, Landroidx/work/multiprocess/RemoteExecuteKt$execute$3$localRecipient$1;

    invoke-direct {v5, v4}, Landroidx/work/multiprocess/RemoteExecuteKt$execute$3$localRecipient$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 7
    iput-object v5, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const/4 v6, 0x0

    .line 8
    invoke-interface {v2, v5, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 9
    new-instance v5, Landroidx/work/multiprocess/RemoteExecuteKt$execute$3$1;

    invoke-direct {v5, v4}, Landroidx/work/multiprocess/RemoteExecuteKt$execute$3$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 10
    invoke-interface {p1, p0, v5}, Landroidx/work/multiprocess/RemoteDispatcher;->execute(Ljava/lang/Object;Landroidx/work/multiprocess/IWorkManagerImplCallback;)V

    .line 11
    invoke-virtual {v4}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, L딀땭딠도듻두뎰땻땩둣땰돨딸딽득땰뒉땡돨돸땭딐딅딄뒷돤뒵뎬뒤듬딞둔둔땠땅딐딽도돼돷될딌땔땩뒝땸듨뎻득듟땃뎻둬땹돰땧됴될돵뎬따딠듌둑됴둣땥둠땭땠됴돤듬돷딅땩딨둠딝듰듻딞땍땸뎻둡듻듟땲땰딹땤딜땋돠땸돷듸땫딠땻뒛딎뒈됩땲뒉딹딹딁땰땹땭땃뒹되딹땔듐땣돼땍돸돼딀땍땪둔땡뒻;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_3

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object p1, p2

    move-object p2, p0

    move-object p0, v2

    goto :goto_3

    :cond_3
    :goto_1
    if-ne p0, v1, :cond_4

    return-object v1

    :cond_4
    move-object p1, p2

    move-object p2, p0

    move-object p0, v2

    :goto_2
    :try_start_2
    check-cast p2, [B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 12
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Landroid/os/IBinder$DeathRecipient;

    if-eqz p1, :cond_5

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Landroidx/work/multiprocess/RemoteExecuteKt;->unlinkToDeathSafely(Landroid/os/IBinder;Landroid/os/IBinder$DeathRecipient;)V

    :cond_5
    return-object p2

    .line 13
    :goto_3
    :try_start_3
    instance-of v0, p2, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_6

    .line 14
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v0

    sget-object v1, Landroidx/work/multiprocess/ListenableWorkerImplClient;->TAG:Ljava/lang/String;

    const-string v2, "Unable to execute"

    invoke-virtual {v0, v1, v2, p2}, Landroidx/work/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :catchall_2
    move-exception p2

    goto :goto_5

    .line 15
    :cond_6
    :goto_4
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 16
    :goto_5
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Landroid/os/IBinder$DeathRecipient;

    if-eqz p1, :cond_7

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Landroidx/work/multiprocess/RemoteExecuteKt;->unlinkToDeathSafely(Landroid/os/IBinder;Landroid/os/IBinder$DeathRecipient;)V

    :cond_7
    throw p2
.end method

.method private static final unlinkToDeathSafely(Landroid/os/IBinder;Landroid/os/IBinder$DeathRecipient;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-interface {p0, p1, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    .line 4
    .line 5
    :catch_0
    return-void
.end method
