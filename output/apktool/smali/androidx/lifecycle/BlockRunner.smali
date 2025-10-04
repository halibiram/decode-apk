.class public final Landroidx/lifecycle/BlockRunner;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002Bl\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u00127\u0010\u0005\u001a3\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u0008\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0006j\u0008\u0012\u0004\u0012\u00028\u0000`\u000b\u00a2\u0006\u0002\u0008\n\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0011\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0008\u0010\u0018\u001a\u00020\tH\u0007J\u0008\u0010\u0019\u001a\u00020\tH\u0007R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000RA\u0010\u0005\u001a3\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u0008\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0006j\u0008\u0012\u0004\u0012\u00028\u0000`\u000b\u00a2\u0006\u0002\u0008\nX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0014R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Landroidx/lifecycle/BlockRunner;",
        "T",
        "",
        "liveData",
        "Landroidx/lifecycle/CoroutineLiveData;",
        "block",
        "Lkotlin/Function2;",
        "Landroidx/lifecycle/LiveDataScope;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "Landroidx/lifecycle/Block;",
        "timeoutInMs",
        "",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "onDone",
        "Lkotlin/Function0;",
        "<init>",
        "(Landroidx/lifecycle/CoroutineLiveData;Lkotlin/jvm/functions/Function2;JLkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function0;)V",
        "Lkotlin/jvm/functions/Function2;",
        "runningJob",
        "Lkotlinx/coroutines/Job;",
        "cancellationJob",
        "maybeRun",
        "cancel",
        "lifecycle-livedata_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final block:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/lifecycle/LiveDataScope<",
            "TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private cancellationJob:Lkotlinx/coroutines/Job;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final liveData:Landroidx/lifecycle/CoroutineLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/CoroutineLiveData<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final onDone:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private runningJob:Lkotlinx/coroutines/Job;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final scope:Lkotlinx/coroutines/CoroutineScope;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final timeoutInMs:J


# direct methods
.method public constructor <init>(Landroidx/lifecycle/CoroutineLiveData;Lkotlin/jvm/functions/Function2;JLkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/CoroutineLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lkotlinx/coroutines/CoroutineScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/CoroutineLiveData<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/lifecycle/LiveDataScope<",
            "TT;>;-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;J",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "liveData"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "block"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "scope"

    .line 12
    .line 13
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "onDone"

    .line 17
    .line 18
    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Landroidx/lifecycle/BlockRunner;->liveData:Landroidx/lifecycle/CoroutineLiveData;

    .line 25
    .line 26
    iput-object p2, p0, Landroidx/lifecycle/BlockRunner;->block:Lkotlin/jvm/functions/Function2;

    .line 27
    .line 28
    iput-wide p3, p0, Landroidx/lifecycle/BlockRunner;->timeoutInMs:J

    .line 29
    .line 30
    iput-object p5, p0, Landroidx/lifecycle/BlockRunner;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 31
    .line 32
    iput-object p6, p0, Landroidx/lifecycle/BlockRunner;->onDone:Lkotlin/jvm/functions/Function0;

    .line 33
    .line 34
    return-void
.end method

.method public static final synthetic access$getBlock$p(Landroidx/lifecycle/BlockRunner;)Lkotlin/jvm/functions/Function2;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/lifecycle/BlockRunner;->block:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getLiveData$p(Landroidx/lifecycle/BlockRunner;)Landroidx/lifecycle/CoroutineLiveData;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/lifecycle/BlockRunner;->liveData:Landroidx/lifecycle/CoroutineLiveData;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getOnDone$p(Landroidx/lifecycle/BlockRunner;)Lkotlin/jvm/functions/Function0;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/lifecycle/BlockRunner;->onDone:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getRunningJob$p(Landroidx/lifecycle/BlockRunner;)Lkotlinx/coroutines/Job;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/lifecycle/BlockRunner;->runningJob:Lkotlinx/coroutines/Job;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getTimeoutInMs$p(Landroidx/lifecycle/BlockRunner;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/lifecycle/BlockRunner;->timeoutInMs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic access$setRunningJob$p(Landroidx/lifecycle/BlockRunner;Lkotlinx/coroutines/Job;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/lifecycle/BlockRunner;->runningJob:Lkotlinx/coroutines/Job;

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 7
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/BlockRunner;->cancellationJob:Lkotlinx/coroutines/Job;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/lifecycle/BlockRunner;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 6
    .line 7
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lkotlinx/coroutines/MainCoroutineDispatcher;->getImmediate()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    new-instance v4, Landroidx/lifecycle/BlockRunner$cancel$1;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-direct {v4, p0, v0}, Landroidx/lifecycle/BlockRunner$cancel$1;-><init>(Landroidx/lifecycle/BlockRunner;Lkotlin/coroutines/Continuation;)V

    .line 19
    .line 20
    .line 21
    const/4 v5, 0x2

    .line 22
    const/4 v6, 0x0

    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Landroidx/lifecycle/BlockRunner;->cancellationJob:Lkotlinx/coroutines/Job;

    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 32
    .line 33
    const-string v1, "Cancel call cannot happen without a maybeRun"

    .line 34
    .line 35
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw v0
.end method

.method public final maybeRun()V
    .locals 8
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/BlockRunner;->cancellationJob:Lkotlinx/coroutines/Job;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iput-object v1, p0, Landroidx/lifecycle/BlockRunner;->cancellationJob:Lkotlinx/coroutines/Job;

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/lifecycle/BlockRunner;->runningJob:Lkotlinx/coroutines/Job;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    iget-object v2, p0, Landroidx/lifecycle/BlockRunner;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 18
    .line 19
    new-instance v5, Landroidx/lifecycle/BlockRunner$maybeRun$1;

    .line 20
    .line 21
    invoke-direct {v5, p0, v1}, Landroidx/lifecycle/BlockRunner$maybeRun$1;-><init>(Landroidx/lifecycle/BlockRunner;Lkotlin/coroutines/Continuation;)V

    .line 22
    .line 23
    .line 24
    const/4 v6, 0x3

    .line 25
    const/4 v7, 0x0

    .line 26
    const/4 v3, 0x0

    .line 27
    const/4 v4, 0x0

    .line 28
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Landroidx/lifecycle/BlockRunner;->runningJob:Lkotlinx/coroutines/Job;

    .line 33
    .line 34
    return-void
.end method
