.class public Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/work/impl/utils/taskexecutor/TaskExecutor;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private final mBackgroundExecutor:Landroidx/work/impl/utils/SerialExecutorImpl;

.field private final mMainThreadExecutor:Ljava/util/concurrent/Executor;

.field final mMainThreadHandler:Landroid/os/Handler;

.field private final mTaskDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->mMainThreadHandler:Landroid/os/Handler;

    .line 14
    .line 15
    new-instance v0, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor$1;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor$1;-><init>(Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->mMainThreadExecutor:Ljava/util/concurrent/Executor;

    .line 21
    .line 22
    new-instance v0, Landroidx/work/impl/utils/SerialExecutorImpl;

    .line 23
    .line 24
    invoke-direct {v0, p1}, Landroidx/work/impl/utils/SerialExecutorImpl;-><init>(Ljava/util/concurrent/Executor;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->mBackgroundExecutor:Landroidx/work/impl/utils/SerialExecutorImpl;

    .line 28
    .line 29
    invoke-static {v0}, Lkotlinx/coroutines/ExecutorsKt;->from(Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/CoroutineDispatcher;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->mTaskDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final synthetic executeOnTaskThread(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, L땩땩되땳딎뒻됫땩뒤듐돶뒷딹돼뒀땹땃땧돤돶돤딻땣둣땰듬될딞땀둔딃뎸듔득뒬돴든딀뒐둡둣돨땅돳뒉듽땝뎹돠뒙딞땻듌딹딄됨땥뎡돳뒤돸돨딐듨땐땮뎡뎡딃땲딐들돸땹땜돰딹딐둑뒈땁땔듐땄땜둑돳뎨딐돶돸뎸땻듬땱땀뒵땅땮땫듔딁뒼땁듔땋딸들돵딐딅돝뎸듔땔땄뒋뒈따될딅땹땁딞도둑땨딽뒘딟;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroidx/work/impl/utils/taskexecutor/TaskExecutor;Ljava/lang/Runnable;)V

    return-void
.end method

.method public getMainThreadExecutor()Ljava/util/concurrent/Executor;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->mMainThreadExecutor:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSerialTaskExecutor()Landroidx/work/impl/utils/SerialExecutorImpl;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object v0, p0, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->mBackgroundExecutor:Landroidx/work/impl/utils/SerialExecutorImpl;

    return-object v0
.end method

.method public bridge synthetic getSerialTaskExecutor()Landroidx/work/impl/utils/taskexecutor/SerialExecutor;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->getSerialTaskExecutor()Landroidx/work/impl/utils/SerialExecutorImpl;

    move-result-object v0

    return-object v0
.end method

.method public getTaskCoroutineDispatcher()Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->mTaskDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 2
    .line 3
    return-object v0
.end method
