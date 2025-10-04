.class public final Landroidx/work/multiprocess/RemoteListenableDelegatingWorker;
.super Landroidx/work/ListenableWorker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/multiprocess/RemoteListenableDelegatingWorker$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\r\u001a\u00020\u000eH\u0017J\u000e\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010H\u0016R\u0014\u0010\u0007\u001a\u00020\u0008X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Landroidx/work/multiprocess/RemoteListenableDelegatingWorker;",
        "Landroidx/work/ListenableWorker;",
        "context",
        "Landroid/content/Context;",
        "workerParameters",
        "Landroidx/work/WorkerParameters;",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V",
        "client",
        "Landroidx/work/multiprocess/ListenableWorkerImplClient;",
        "getClient$work_multiprocess_release",
        "()Landroidx/work/multiprocess/ListenableWorkerImplClient;",
        "componentName",
        "Landroid/content/ComponentName;",
        "onStopped",
        "",
        "startWork",
        "Lcom/google/common/util/concurrent/ListenableFuture;",
        "Landroidx/work/ListenableWorker$Result;",
        "Companion",
        "work-multiprocess_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final ARGUMENT_REMOTE_LISTENABLE_WORKER_NAME:Ljava/lang/String; = "androidx.work.multiprocess.RemoteListenableDelegatingWorker.ARGUMENT_REMOTE_LISTENABLE_WORKER_NAME"
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Landroidx/work/multiprocess/RemoteListenableDelegatingWorker$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "RemoteListenableDelegatingWorker"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final client:Landroidx/work/multiprocess/ListenableWorkerImplClient;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private componentName:Landroid/content/ComponentName;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final workerParameters:Landroidx/work/WorkerParameters;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/work/multiprocess/RemoteListenableDelegatingWorker$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/work/multiprocess/RemoteListenableDelegatingWorker$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/work/multiprocess/RemoteListenableDelegatingWorker;->Companion:Landroidx/work/multiprocess/RemoteListenableDelegatingWorker$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/work/WorkerParameters;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "workerParameters"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1, p2}, Landroidx/work/ListenableWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Landroidx/work/multiprocess/RemoteListenableDelegatingWorker;->context:Landroid/content/Context;

    .line 15
    .line 16
    iput-object p2, p0, Landroidx/work/multiprocess/RemoteListenableDelegatingWorker;->workerParameters:Landroidx/work/WorkerParameters;

    .line 17
    .line 18
    new-instance v0, Landroidx/work/multiprocess/ListenableWorkerImplClient;

    .line 19
    .line 20
    invoke-virtual {p2}, Landroidx/work/WorkerParameters;->getBackgroundExecutor()Ljava/util/concurrent/Executor;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-direct {v0, p1, p2}, Landroidx/work/multiprocess/ListenableWorkerImplClient;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Landroidx/work/multiprocess/RemoteListenableDelegatingWorker;->client:Landroidx/work/multiprocess/ListenableWorkerImplClient;

    .line 28
    .line 29
    return-void
.end method

.method public static final synthetic access$getComponentName$p(Landroidx/work/multiprocess/RemoteListenableDelegatingWorker;)Landroid/content/ComponentName;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/work/multiprocess/RemoteListenableDelegatingWorker;->componentName:Landroid/content/ComponentName;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getWorkerParameters$p(Landroidx/work/multiprocess/RemoteListenableDelegatingWorker;)Landroidx/work/WorkerParameters;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/work/multiprocess/RemoteListenableDelegatingWorker;->workerParameters:Landroidx/work/WorkerParameters;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$setComponentName$p(Landroidx/work/multiprocess/RemoteListenableDelegatingWorker;Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/work/multiprocess/RemoteListenableDelegatingWorker;->componentName:Landroid/content/ComponentName;

    .line 2
    .line 3
    return-void
.end method

.method private static final onStopped$lambda$0(Landroidx/work/multiprocess/RemoteListenableDelegatingWorker;Landroidx/work/multiprocess/IListenableWorkerImpl;Landroidx/work/multiprocess/IWorkManagerImplCallback;)V
    .locals 3

    .line 1
    const-string v0, "iListenableWorkerImpl"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "callback"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Landroidx/work/multiprocess/parcelable/ParcelableInterruptRequest;

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/work/multiprocess/RemoteListenableDelegatingWorker;->workerParameters:Landroidx/work/WorkerParameters;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroidx/work/WorkerParameters;->getId()Ljava/util/UUID;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, "workerParameters.id.toString()"

    .line 24
    .line 25
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getStopReason()I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    invoke-direct {v0, v1, p0}, Landroidx/work/multiprocess/parcelable/ParcelableInterruptRequest;-><init>(Ljava/lang/String;I)V

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Landroidx/work/multiprocess/parcelable/ParcelConverters;->marshall(Landroid/os/Parcelable;)[B

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    const-string v0, "marshall(interruptRequest)"

    .line 40
    .line 41
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-interface {p1, p0, p2}, Landroidx/work/multiprocess/IListenableWorkerImpl;->interrupt([BLandroidx/work/multiprocess/IWorkManagerImplCallback;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public static synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Landroidx/work/multiprocess/RemoteListenableDelegatingWorker;Landroidx/work/multiprocess/IListenableWorkerImpl;Landroidx/work/multiprocess/IWorkManagerImplCallback;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/work/multiprocess/RemoteListenableDelegatingWorker;->onStopped$lambda$0(Landroidx/work/multiprocess/RemoteListenableDelegatingWorker;Landroidx/work/multiprocess/IListenableWorkerImpl;Landroidx/work/multiprocess/IWorkManagerImplCallback;)V

    return-void
.end method


# virtual methods
.method public final getClient$work_multiprocess_release()Landroidx/work/multiprocess/ListenableWorkerImplClient;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteListenableDelegatingWorker;->client:Landroidx/work/multiprocess/ListenableWorkerImplClient;

    .line 2
    .line 3
    return-object v0
.end method

.method public onStopped()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Landroidx/work/ListenableWorker;->onStopped()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteListenableDelegatingWorker;->componentName:Landroid/content/ComponentName;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/work/multiprocess/RemoteListenableDelegatingWorker;->client:Landroidx/work/multiprocess/ListenableWorkerImplClient;

    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    new-instance v2, L땄땤딀딻땦뒾딤뒘땫드돨돴땝딸뒙뎽땮뎹뒹두둡딎뎹땸땰돠땱뒙됨땵땥뒹딌땋뒘둠땵딄된땱뒼땭뎻땲땝둥뒈돛돤땮둬돤뒈둣뒾뎡뒋됐딄딜돸땁뒷땮뒀뒨뒻됴뒉땯뒙딤된땹땡땬뎰따뎡듰땄둥뒋돳땣뒛듰되뒝땋땤뒝되뎸듻뒋땹둠듰돝듰뒼듬됫돨듬땥돰땐됫뎸뒬뎬땔땐땨땪뒙둠들따딝땋뎡돸듟둘돼듼뒨;

    .line 14
    .line 15
    invoke-direct {v2, p0}, L땄땤딀딻땦뒾딤뒘땫드돨돴땝딸뒙뎽땮뎹뒹두둡딎뎹땸땰돠땱뒙됨땵땥뒹딌땋뒘둠땵딄된땱뒼땭뎻땲땝둥뒈돛돤땮둬돤뒈둣뒾뎡뒋됐딄딜돸땁뒷땮뒀뒨뒻됴뒉땯뒙딤된땹땡땬뎰따뎡듰땄둥뒋돳땣뒛듰되뒝땋땤뒝되뎸듻뒋땹둠듰돝듰뒼듬됫돨듬땥돰땐됫뎸뒬뎬땔땐땨땪뒙둠들따딝땋뎡돸듟둘돼듼뒨;-><init>(Landroidx/work/multiprocess/RemoteListenableDelegatingWorker;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v0, v2}, Landroidx/work/multiprocess/ListenableWorkerImplClient;->execute(Landroid/content/ComponentName;Landroidx/work/multiprocess/RemoteDispatcher;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public startWork()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/work/ListenableWorker$Result;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteListenableDelegatingWorker;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroidx/work/impl/WorkManagerImpl;->getInstance(Landroid/content/Context;)Landroidx/work/impl/WorkManagerImpl;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "getInstance(context.applicationContext)"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/work/impl/WorkManagerImpl;->getWorkTaskExecutor()Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0}, Landroidx/work/impl/utils/taskexecutor/TaskExecutor;->getTaskCoroutineDispatcher()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const-string v0, "workManager.workTaskExec\u2026r.taskCoroutineDispatcher"

    .line 25
    .line 26
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sget-object v1, Landroidx/concurrent/futures/SuspendToFutureAdapter;->INSTANCE:Landroidx/concurrent/futures/SuspendToFutureAdapter;

    .line 30
    .line 31
    new-instance v4, Landroidx/work/multiprocess/RemoteListenableDelegatingWorker$startWork$1;

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    invoke-direct {v4, p0, v0}, Landroidx/work/multiprocess/RemoteListenableDelegatingWorker$startWork$1;-><init>(Landroidx/work/multiprocess/RemoteListenableDelegatingWorker;Lkotlin/coroutines/Continuation;)V

    .line 35
    .line 36
    .line 37
    const/4 v5, 0x2

    .line 38
    const/4 v6, 0x0

    .line 39
    const/4 v3, 0x0

    .line 40
    invoke-static/range {v1 .. v6}, Landroidx/concurrent/futures/SuspendToFutureAdapter;->launchFuture$default(Landroidx/concurrent/futures/SuspendToFutureAdapter;Lkotlin/coroutines/CoroutineContext;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    return-object v0
.end method
