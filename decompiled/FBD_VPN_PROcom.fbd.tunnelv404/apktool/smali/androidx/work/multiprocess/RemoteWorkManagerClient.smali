.class public Landroidx/work/multiprocess/RemoteWorkManagerClient;
.super Landroidx/work/multiprocess/RemoteWorkManager;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/multiprocess/RemoteWorkManagerClient$Session;,
        Landroidx/work/multiprocess/RemoteWorkManagerClient$SessionTracker;
    }
.end annotation


# static fields
.field private static final SESSION_TIMEOUT_MILLIS:J = 0x5b8d80L

.field static final TAG:Ljava/lang/String;

.field public static final sVoidMapper:Landroidx/arch/core/util/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/arch/core/util/Function<",
            "[B",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mContext:Landroid/content/Context;

.field final mExecutor:Ljava/util/concurrent/Executor;

.field final mLock:Ljava/lang/Object;

.field private final mRunnableScheduler:Landroidx/work/RunnableScheduler;

.field mSession:Landroidx/work/multiprocess/RemoteWorkManagerClient$Session;

.field private volatile mSessionIndex:J

.field private final mSessionTimeout:J

.field private final mSessionTracker:Landroidx/work/multiprocess/RemoteWorkManagerClient$SessionTracker;

.field final mWorkManager:Landroidx/work/impl/WorkManagerImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "RemoteWorkManagerClient"

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    new-instance v0, L뒉뒤됨뒬땹딝돵땹들딅돠땧된딀땋돷뒀뎨뒵듬딐딞뎰뒼둑듸딅뎰땡땰될뒹뒝돠된듐뒝땧뒐뎨뒨딜둡땰됫듌땭듸뒈뎻뒵딝뎡땜딞듰땥됫딀돛땵둔뒉돤뒀땐될땅돝뒘된땔돴땹땯돠뒈돝땮땱땀돨딐뒈됴드땀듐땬딸듌땥땔됐듬뒈딐딄땹둑땩돰뎨뒙된돨돝땅땦뎹딠뎠듸듬땁땳듌돳되뎹뎬땋땋뒛땤뒋듽뎠땰땤;

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    invoke-direct {v0, v1}, L뒉뒤됨뒬땹딝돵땹들딅돠땧된딀땋돷뒀뎨뒵듬딐딞뎰뒼둑듸딅뎰땡땰될뒹뒝돠된듐뒝땧뒐뎨뒨딜둡땰됫듌땭듸뒈뎻뒵딝뎡땜딞듰땥됫딀돛땵둔뒉돤뒀땐될땅돝뒘된땔돴땹땯돠뒈돝땮땱땀돨딐뒈됴드땀듐땬딸듌땥땔됐듬뒈딐딄땹둑땩돰뎨뒙된돨돝땅땦뎹딠뎠듸듬땁땳듌돳되뎹뎬땋땋뒛땤뒋듽뎠땰땤;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->sVoidMapper:Landroidx/arch/core/util/Function;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/impl/WorkManagerImpl;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/work/impl/WorkManagerImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-wide/32 v0, 0x5b8d80

    .line 1
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/work/multiprocess/RemoteWorkManagerClient;-><init>(Landroid/content/Context;Landroidx/work/impl/WorkManagerImpl;J)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/impl/WorkManagerImpl;J)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/work/impl/WorkManagerImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Landroidx/work/multiprocess/RemoteWorkManager;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->mContext:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    .line 5
    invoke-virtual {p2}, Landroidx/work/impl/WorkManagerImpl;->getWorkTaskExecutor()Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    move-result-object p1

    invoke-interface {p1}, Landroidx/work/impl/utils/taskexecutor/TaskExecutor;->getSerialTaskExecutor()Landroidx/work/impl/utils/taskexecutor/SerialExecutor;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->mExecutor:Ljava/util/concurrent/Executor;

    .line 6
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->mLock:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->mSession:Landroidx/work/multiprocess/RemoteWorkManagerClient$Session;

    .line 8
    new-instance p1, Landroidx/work/multiprocess/RemoteWorkManagerClient$SessionTracker;

    invoke-direct {p1, p0}, Landroidx/work/multiprocess/RemoteWorkManagerClient$SessionTracker;-><init>(Landroidx/work/multiprocess/RemoteWorkManagerClient;)V

    iput-object p1, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->mSessionTracker:Landroidx/work/multiprocess/RemoteWorkManagerClient$SessionTracker;

    .line 9
    iput-wide p3, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->mSessionTimeout:J

    .line 10
    invoke-virtual {p2}, Landroidx/work/impl/WorkManagerImpl;->getConfiguration()Landroidx/work/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/work/Configuration;->getRunnableScheduler()Landroidx/work/RunnableScheduler;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->mRunnableScheduler:Landroidx/work/RunnableScheduler;

    return-void
.end method

.method private static synthetic lambda$enqueueUniquePeriodicWork$1(Landroidx/work/PeriodicWorkRequest;Ljava/lang/String;Landroidx/work/multiprocess/IWorkManagerImpl;Landroidx/work/multiprocess/IWorkManagerImplCallback;)V
    .locals 1

    .line 1
    new-instance v0, Landroidx/work/multiprocess/parcelable/ParcelableWorkRequest;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/work/multiprocess/parcelable/ParcelableWorkRequest;-><init>(Landroidx/work/WorkRequest;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Landroidx/work/multiprocess/parcelable/ParcelConverters;->marshall(Landroid/os/Parcelable;)[B

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-interface {p2, p1, p0, p3}, Landroidx/work/multiprocess/IWorkManagerImpl;->updateUniquePeriodicWorkRequest(Ljava/lang/String;[BLandroidx/work/multiprocess/IWorkManagerImplCallback;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private synthetic lambda$execute$2(Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :catch_0
    invoke-virtual {p0}, Landroidx/work/multiprocess/RemoteWorkManagerClient;->cleanUp()V

    .line 6
    .line 7
    .line 8
    :goto_0
    return-void
.end method

.method private synthetic lambda$execute$3()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/work/multiprocess/RemoteWorkManagerClient;->getSessionTracker()Landroidx/work/multiprocess/RemoteWorkManagerClient$SessionTracker;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->mRunnableScheduler:Landroidx/work/RunnableScheduler;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/work/multiprocess/RemoteWorkManagerClient;->getSessionTimeout()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    invoke-interface {v1, v2, v3, v0}, Landroidx/work/RunnableScheduler;->scheduleWithDelay(JLjava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private static synthetic lambda$static$0([B)Ljava/lang/Void;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method private static newIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Landroidx/work/multiprocess/RemoteWorkManagerService;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method private unableToBind(Landroidx/work/multiprocess/RemoteWorkManagerClient$Session;Ljava/lang/Throwable;)V
    .locals 3
    .param p1    # Landroidx/work/multiprocess/RemoteWorkManagerClient$Session;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Landroidx/work/multiprocess/RemoteWorkManagerClient;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    const-string v2, "Unable to bind to service"

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2, p2}, Landroidx/work/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p1, Landroidx/work/multiprocess/RemoteWorkManagerClient$Session;->mFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    .line 13
    .line 14
    invoke-virtual {p1, p2}, Landroidx/work/impl/utils/futures/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸([B)Ljava/lang/Void;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/work/multiprocess/RemoteWorkManagerClient;->lambda$static$0([B)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Landroidx/work/multiprocess/RemoteWorkManagerClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/work/multiprocess/RemoteWorkManagerClient;->lambda$execute$3()V

    return-void
.end method

.method public static synthetic 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Landroidx/work/multiprocess/RemoteWorkManagerClient;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/work/multiprocess/RemoteWorkManagerClient;->lambda$execute$2(Lcom/google/common/util/concurrent/ListenableFuture;)V

    return-void
.end method

.method public static synthetic 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(Landroidx/work/PeriodicWorkRequest;Ljava/lang/String;Landroidx/work/multiprocess/IWorkManagerImpl;Landroidx/work/multiprocess/IWorkManagerImplCallback;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/work/multiprocess/RemoteWorkManagerClient;->lambda$enqueueUniquePeriodicWork$1(Landroidx/work/PeriodicWorkRequest;Ljava/lang/String;Landroidx/work/multiprocess/IWorkManagerImpl;Landroidx/work/multiprocess/IWorkManagerImplCallback;)V

    return-void
.end method


# virtual methods
.method public beginUniqueWork(Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;Ljava/util/List;)Landroidx/work/multiprocess/RemoteWorkContinuation;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/work/ExistingWorkPolicy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/work/ExistingWorkPolicy;",
            "Ljava/util/List<",
            "Landroidx/work/OneTimeWorkRequest;",
            ">;)",
            "Landroidx/work/multiprocess/RemoteWorkContinuation;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/work/multiprocess/RemoteWorkContinuationImpl;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    .line 4
    .line 5
    invoke-virtual {v1, p1, p2, p3}, Landroidx/work/impl/WorkManagerImpl;->beginUniqueWork(Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;Ljava/util/List;)Landroidx/work/WorkContinuation;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-direct {v0, p0, p1}, Landroidx/work/multiprocess/RemoteWorkContinuationImpl;-><init>(Landroidx/work/multiprocess/RemoteWorkManagerClient;Landroidx/work/WorkContinuation;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public beginWith(Ljava/util/List;)Landroidx/work/multiprocess/RemoteWorkContinuation;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/work/OneTimeWorkRequest;",
            ">;)",
            "Landroidx/work/multiprocess/RemoteWorkContinuation;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/work/multiprocess/RemoteWorkContinuationImpl;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    .line 4
    .line 5
    invoke-virtual {v1, p1}, Landroidx/work/impl/WorkManagerImpl;->beginWith(Ljava/util/List;)Landroidx/work/WorkContinuation;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-direct {v0, p0, p1}, Landroidx/work/multiprocess/RemoteWorkContinuationImpl;-><init>(Landroidx/work/multiprocess/RemoteWorkManagerClient;Landroidx/work/WorkContinuation;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public cancelAllWork()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/work/multiprocess/RemoteWorkManagerClient$6;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/work/multiprocess/RemoteWorkManagerClient$6;-><init>(Landroidx/work/multiprocess/RemoteWorkManagerClient;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroidx/work/multiprocess/RemoteWorkManagerClient;->execute(Landroidx/work/multiprocess/RemoteDispatcher;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Landroidx/work/multiprocess/RemoteWorkManagerClient;->sVoidMapper:Landroidx/arch/core/util/Function;

    .line 11
    .line 12
    iget-object v2, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->mExecutor:Ljava/util/concurrent/Executor;

    .line 13
    .line 14
    invoke-static {v0, v1, v2}, Landroidx/work/multiprocess/RemoteClientUtilsKt;->map(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/arch/core/util/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method public cancelAllWorkByTag(Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/work/multiprocess/RemoteWorkManagerClient$4;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Landroidx/work/multiprocess/RemoteWorkManagerClient$4;-><init>(Landroidx/work/multiprocess/RemoteWorkManagerClient;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroidx/work/multiprocess/RemoteWorkManagerClient;->execute(Landroidx/work/multiprocess/RemoteDispatcher;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    sget-object v0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->sVoidMapper:Landroidx/arch/core/util/Function;

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->mExecutor:Ljava/util/concurrent/Executor;

    .line 13
    .line 14
    invoke-static {p1, v0, v1}, Landroidx/work/multiprocess/RemoteClientUtilsKt;->map(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/arch/core/util/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public cancelUniqueWork(Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/work/multiprocess/RemoteWorkManagerClient$5;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Landroidx/work/multiprocess/RemoteWorkManagerClient$5;-><init>(Landroidx/work/multiprocess/RemoteWorkManagerClient;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroidx/work/multiprocess/RemoteWorkManagerClient;->execute(Landroidx/work/multiprocess/RemoteDispatcher;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    sget-object v0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->sVoidMapper:Landroidx/arch/core/util/Function;

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->mExecutor:Ljava/util/concurrent/Executor;

    .line 13
    .line 14
    invoke-static {p1, v0, v1}, Landroidx/work/multiprocess/RemoteClientUtilsKt;->map(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/arch/core/util/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public cancelWorkById(Ljava/util/UUID;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1    # Ljava/util/UUID;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/work/multiprocess/RemoteWorkManagerClient$3;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Landroidx/work/multiprocess/RemoteWorkManagerClient$3;-><init>(Landroidx/work/multiprocess/RemoteWorkManagerClient;Ljava/util/UUID;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroidx/work/multiprocess/RemoteWorkManagerClient;->execute(Landroidx/work/multiprocess/RemoteDispatcher;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    sget-object v0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->sVoidMapper:Landroidx/arch/core/util/Function;

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->mExecutor:Ljava/util/concurrent/Executor;

    .line 13
    .line 14
    invoke-static {p1, v0, v1}, Landroidx/work/multiprocess/RemoteClientUtilsKt;->map(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/arch/core/util/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public cleanUp()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    sget-object v2, Landroidx/work/multiprocess/RemoteWorkManagerClient;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    const-string v3, "Cleaning up."

    .line 11
    .line 12
    invoke-virtual {v1, v2, v3}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    iput-object v1, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->mSession:Landroidx/work/multiprocess/RemoteWorkManagerClient$Session;

    .line 17
    .line 18
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw v1
.end method

.method public enqueue(Landroidx/work/WorkContinuation;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1    # Landroidx/work/WorkContinuation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/WorkContinuation;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 4
    new-instance v0, Landroidx/work/multiprocess/RemoteWorkManagerClient$2;

    invoke-direct {v0, p0, p1}, Landroidx/work/multiprocess/RemoteWorkManagerClient$2;-><init>(Landroidx/work/multiprocess/RemoteWorkManagerClient;Landroidx/work/WorkContinuation;)V

    invoke-virtual {p0, v0}, Landroidx/work/multiprocess/RemoteWorkManagerClient;->execute(Landroidx/work/multiprocess/RemoteDispatcher;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    .line 5
    sget-object v0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->sVoidMapper:Landroidx/arch/core/util/Function;

    iget-object v1, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-static {p1, v0, v1}, Landroidx/work/multiprocess/RemoteClientUtilsKt;->map(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/arch/core/util/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public enqueue(Landroidx/work/WorkRequest;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0
    .param p1    # Landroidx/work/WorkRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/WorkRequest;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/work/multiprocess/RemoteWorkManagerClient;->enqueue(Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public enqueue(Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/work/WorkRequest;",
            ">;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Landroidx/work/multiprocess/RemoteWorkManagerClient$1;

    invoke-direct {v0, p0, p1}, Landroidx/work/multiprocess/RemoteWorkManagerClient$1;-><init>(Landroidx/work/multiprocess/RemoteWorkManagerClient;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Landroidx/work/multiprocess/RemoteWorkManagerClient;->execute(Landroidx/work/multiprocess/RemoteDispatcher;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    .line 3
    sget-object v0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->sVoidMapper:Landroidx/arch/core/util/Function;

    iget-object v1, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-static {p1, v0, v1}, Landroidx/work/multiprocess/RemoteClientUtilsKt;->map(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/arch/core/util/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public enqueueUniquePeriodicWork(Ljava/lang/String;Landroidx/work/ExistingPeriodicWorkPolicy;Landroidx/work/PeriodicWorkRequest;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/work/ExistingPeriodicWorkPolicy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/work/PeriodicWorkRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/work/ExistingPeriodicWorkPolicy;",
            "Landroidx/work/PeriodicWorkRequest;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Landroidx/work/ExistingPeriodicWorkPolicy;->UPDATE:Landroidx/work/ExistingPeriodicWorkPolicy;

    .line 2
    .line 3
    if-ne p2, v0, :cond_0

    .line 4
    .line 5
    new-instance p2, L땅뒻땃뒝땮든땭뒙든뒉뒛뒹딜돷땬딎땐딎돶딟둥땱딤뎽땜땡뒨돷듼딃뒤땮땔돷딸딻딠땲된뎨둔뎰뒈뎠뒝땱땮둘뎸돰둬딨땰돰둬돨땱뒝돠듻땡듸둔땐땤돸디뎨두땍돷땠돤뒻딠딸딄뎠둡듰득딜됴땵뒋딹땱땅도땵뒼딞둣뎻듰딸뒀딽둠땡딃딃딟땅땬딄땐듼뒻땔딟드둑돵도땝땁땔땬땅뎽땀땨뒘딨듼둔둣돼디;

    .line 6
    .line 7
    invoke-direct {p2, p3, p1}, L땅뒻땃뒝땮든땭뒙든뒉뒛뒹딜돷땬딎땐딎돶딟둥땱딤뎽땜땡뒨돷듼딃뒤땮땔돷딸딻딠땲된뎨둔뎰뒈뎠뒝땱땮둘뎸돰둬딨땰돰둬돨땱뒝돠듻땡듸둔땐땤돸디뎨두땍돷땠돤뒻딠딸딄뎠둡듰득딜됴땵뒋딹땱땅도땵뒼딞둣뎻듰딸뒀딽둠땡딃딃딟땅땬딄땐듼뒻땔딟드둑돵도땝땁땔땬땅뎽땀땨뒘딨듼둔둣돼디;-><init>(Landroidx/work/PeriodicWorkRequest;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p2}, Landroidx/work/multiprocess/RemoteWorkManagerClient;->execute(Landroidx/work/multiprocess/RemoteDispatcher;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    sget-object p2, Landroidx/work/multiprocess/RemoteWorkManagerClient;->sVoidMapper:Landroidx/arch/core/util/Function;

    .line 15
    .line 16
    iget-object p3, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->mExecutor:Ljava/util/concurrent/Executor;

    .line 17
    .line 18
    invoke-static {p1, p2, p3}, Landroidx/work/multiprocess/RemoteClientUtilsKt;->map(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/arch/core/util/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :cond_0
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    .line 24
    .line 25
    invoke-virtual {v0, p1, p2, p3}, Landroidx/work/impl/WorkManagerImpl;->createWorkContinuationForUniquePeriodicWork(Ljava/lang/String;Landroidx/work/ExistingPeriodicWorkPolicy;Landroidx/work/PeriodicWorkRequest;)Landroidx/work/impl/WorkContinuationImpl;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p0, p1}, Landroidx/work/multiprocess/RemoteWorkManagerClient;->enqueue(Landroidx/work/WorkContinuation;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    return-object p1
.end method

.method public enqueueUniqueWork(Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/work/ExistingWorkPolicy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/work/ExistingWorkPolicy;",
            "Ljava/util/List<",
            "Landroidx/work/OneTimeWorkRequest;",
            ">;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Landroidx/work/multiprocess/RemoteWorkManagerClient;->beginUniqueWork(Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;Ljava/util/List;)Landroidx/work/multiprocess/RemoteWorkContinuation;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroidx/work/multiprocess/RemoteWorkContinuation;->enqueue()Lcom/google/common/util/concurrent/ListenableFuture;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public execute(Landroidx/work/multiprocess/RemoteDispatcher;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p1    # Landroidx/work/multiprocess/RemoteDispatcher;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/multiprocess/RemoteDispatcher<",
            "Landroidx/work/multiprocess/IWorkManagerImpl;",
            ">;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "[B>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/work/multiprocess/RemoteWorkManagerClient;->getSession()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroidx/work/multiprocess/RemoteWorkManagerClient;->execute(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/work/multiprocess/RemoteDispatcher;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public execute(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/work/multiprocess/RemoteDispatcher;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1    # Lcom/google/common/util/concurrent/ListenableFuture;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/work/multiprocess/RemoteDispatcher;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/work/multiprocess/IWorkManagerImpl;",
            ">;",
            "Landroidx/work/multiprocess/RemoteDispatcher<",
            "Landroidx/work/multiprocess/IWorkManagerImpl;",
            ">;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "[B>;"
        }
    .end annotation

    .line 2
    new-instance v0, L딌뎰뎡두땜디뒘딝딌땔듻땀돼따땨될되둬뒻땭돠뒋딄뒨돵땧땋듔뒉듐땐딸뒨드뎡됐듼땪땭듻두돴둔된뒐땍뒐땨딜뒉땠듟땍된디뎬두땍딁돝딤딌듐둑땦뎡뒷땠뒐됩디둬뒀될땵딤듌득딀뎡땹들돛돠땥땥딐뎨딟땤돰돝뒻둠땲돶땜둘듻득됩듼딀딜뒉딁듸듬땬둠듐듌돼땨듰디뒼땄땨뎡땠돵딨돴딽됴듬돠땮땵;

    const/16 v1, 0xa

    invoke-direct {v0, p0, p1, v1}, L딌뎰뎡두땜디뒘딝딌땔듻땀돼따땨될되둬뒻땭돠뒋딄뒨돵땧땋듔뒉듐땐딸뒨드뎡됐듼땪땭듻두돴둔된뒐땍뒐땨딜뒉땠듟땍된디뎬두땍딁돝딤딌듐둑땦뎡뒷땠뒐됩디둬뒀될땵딤듌득딀뎡땹들돛돠땥땥딐뎨딟땤돰돝뒻둠땲돶땜둘듻득됩듼딀딜뒉딁듸듬땬둠듐듌돼땨듰디뒼땄땨뎡땠돵딨돴딽됴듬돠땮땵;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object v1, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v0, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 3
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-static {v0, p1, p2}, Landroidx/work/multiprocess/RemoteExecuteKt;->execute(Ljava/util/concurrent/Executor;Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/work/multiprocess/RemoteDispatcher;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    .line 4
    new-instance p2, L딹땲땍땜뎻뎡뎸땦딟뒷된될둥뒷돨돵뒉뎠땮땨땔뒹두땧땐돨땣됫돸딁됨뒬둬딃땤땃돛땯든땱땭듌뎹뒝땔딃땫따땬땨됐됨뒼뎡땦됫땩돰뒈득둡뎠뒋땧뒈돰득땧땝땧땣뒵뎡딤듟땤듰돤땋딹땃듼됫디득땃둑뒤둠땬드땲뎽돰땄딨뎬땦땃디땰땭딟땨딅드딽뒵듨땍땄디딻딃듻돶듰듐땨딄돠뒉딅돼땩돰딄될될됫;

    const/4 v0, 0x3

    invoke-direct {p2, p0, v0}, L딹땲땍땜뎻뎡뎸땦딟뒷된될둥뒷돨돵뒉뎠땮땨땔뒹두땧땐돨땣됫돸딁됨뒬둬딃땤땃돛땯든땱땭듌뎹뒝땔딃땫따땬땨됐됨뒼뎡땦됫땩돰뒈득둡뎠뒋땧뒈돰득땧땝땧땣뒵뎡딤듟땤듰돤땋딹땃듼됫디득땃둑뒤둠땬드땲뎽돰땄딨뎬땦땃디땰땭딟땨딅드딽뒵듨땍땄디딻딃듻돶듰듐땨딄돠뒉딅돼땩돰딄될될됫;-><init>(Ljava/lang/Object;I)V

    iget-object v0, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {p1, p2, v0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object p1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCurrentSession()Landroidx/work/multiprocess/RemoteWorkManagerClient$Session;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->mSession:Landroidx/work/multiprocess/RemoteWorkManagerClient$Session;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExecutor()Ljava/util/concurrent/Executor;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->mExecutor:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSession()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/work/multiprocess/IWorkManagerImpl;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/work/multiprocess/RemoteWorkManagerClient;->newIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/work/multiprocess/RemoteWorkManagerClient;->getSession(Landroid/content/Intent;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public getSession(Landroid/content/Intent;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 5
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/work/multiprocess/IWorkManagerImpl;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-wide v1, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->mSessionIndex:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->mSessionIndex:J

    .line 4
    iget-object v1, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->mSession:Landroidx/work/multiprocess/RemoteWorkManagerClient$Session;

    if-nez v1, :cond_0

    .line 5
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v1

    sget-object v2, Landroidx/work/multiprocess/RemoteWorkManagerClient;->TAG:Ljava/lang/String;

    const-string v3, "Creating a new session"

    invoke-virtual {v1, v2, v3}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance v1, Landroidx/work/multiprocess/RemoteWorkManagerClient$Session;

    invoke-direct {v1, p0}, Landroidx/work/multiprocess/RemoteWorkManagerClient$Session;-><init>(Landroidx/work/multiprocess/RemoteWorkManagerClient;)V

    iput-object v1, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->mSession:Landroidx/work/multiprocess/RemoteWorkManagerClient$Session;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    iget-object v2, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 8
    iget-object p1, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->mSession:Landroidx/work/multiprocess/RemoteWorkManagerClient$Session;

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to bind to service"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v1}, Landroidx/work/multiprocess/RemoteWorkManagerClient;->unableToBind(Landroidx/work/multiprocess/RemoteWorkManagerClient$Session;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 9
    :try_start_2
    iget-object v1, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->mSession:Landroidx/work/multiprocess/RemoteWorkManagerClient$Session;

    invoke-direct {p0, v1, p1}, Landroidx/work/multiprocess/RemoteWorkManagerClient;->unableToBind(Landroidx/work/multiprocess/RemoteWorkManagerClient$Session;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    .line 10
    :cond_0
    :goto_0
    iget-object p1, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->mRunnableScheduler:Landroidx/work/RunnableScheduler;

    iget-object v1, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->mSessionTracker:Landroidx/work/multiprocess/RemoteWorkManagerClient$SessionTracker;

    invoke-interface {p1, v1}, Landroidx/work/RunnableScheduler;->cancel(Ljava/lang/Runnable;)V

    .line 11
    iget-object p1, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->mSession:Landroidx/work/multiprocess/RemoteWorkManagerClient$Session;

    iget-object p1, p1, Landroidx/work/multiprocess/RemoteWorkManagerClient$Session;->mFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    monitor-exit v0

    return-object p1

    .line 12
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public getSessionIndex()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->mSessionIndex:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getSessionLock()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSessionTimeout()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->mSessionTimeout:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getSessionTracker()Landroidx/work/multiprocess/RemoteWorkManagerClient$SessionTracker;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->mSessionTracker:Landroidx/work/multiprocess/RemoteWorkManagerClient$SessionTracker;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWorkInfos(Landroidx/work/WorkQuery;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1    # Landroidx/work/WorkQuery;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/WorkQuery;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/util/List<",
            "Landroidx/work/WorkInfo;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/work/multiprocess/RemoteWorkManagerClient$7;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Landroidx/work/multiprocess/RemoteWorkManagerClient$7;-><init>(Landroidx/work/multiprocess/RemoteWorkManagerClient;Landroidx/work/WorkQuery;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroidx/work/multiprocess/RemoteWorkManagerClient;->execute(Landroidx/work/multiprocess/RemoteDispatcher;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    new-instance v0, Landroidx/work/multiprocess/RemoteWorkManagerClient$8;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Landroidx/work/multiprocess/RemoteWorkManagerClient$8;-><init>(Landroidx/work/multiprocess/RemoteWorkManagerClient;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->mExecutor:Ljava/util/concurrent/Executor;

    .line 16
    .line 17
    invoke-static {p1, v0, v1}, Landroidx/work/multiprocess/RemoteClientUtilsKt;->map(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/arch/core/util/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method public setForegroundAsync(Ljava/lang/String;Landroidx/work/ForegroundInfo;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/work/ForegroundInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/work/ForegroundInfo;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/work/multiprocess/RemoteWorkManagerClient$10;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Landroidx/work/multiprocess/RemoteWorkManagerClient$10;-><init>(Landroidx/work/multiprocess/RemoteWorkManagerClient;Ljava/lang/String;Landroidx/work/ForegroundInfo;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroidx/work/multiprocess/RemoteWorkManagerClient;->execute(Landroidx/work/multiprocess/RemoteDispatcher;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    sget-object p2, Landroidx/work/multiprocess/RemoteWorkManagerClient;->sVoidMapper:Landroidx/arch/core/util/Function;

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->mExecutor:Ljava/util/concurrent/Executor;

    .line 13
    .line 14
    invoke-static {p1, p2, v0}, Landroidx/work/multiprocess/RemoteClientUtilsKt;->map(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/arch/core/util/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public setProgress(Ljava/util/UUID;Landroidx/work/Data;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p1    # Ljava/util/UUID;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/work/Data;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Landroidx/work/Data;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/work/multiprocess/RemoteWorkManagerClient$9;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Landroidx/work/multiprocess/RemoteWorkManagerClient$9;-><init>(Landroidx/work/multiprocess/RemoteWorkManagerClient;Ljava/util/UUID;Landroidx/work/Data;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroidx/work/multiprocess/RemoteWorkManagerClient;->execute(Landroidx/work/multiprocess/RemoteDispatcher;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    sget-object p2, Landroidx/work/multiprocess/RemoteWorkManagerClient;->sVoidMapper:Landroidx/arch/core/util/Function;

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient;->mExecutor:Ljava/util/concurrent/Executor;

    .line 13
    .line 14
    invoke-static {p1, p2, v0}, Landroidx/work/multiprocess/RemoteClientUtilsKt;->map(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/arch/core/util/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method
