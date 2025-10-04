.class public abstract Landroidx/work/multiprocess/RemoteListenableWorker;
.super Landroidx/work/ListenableWorker;
.source "SourceFile"


# static fields
.field public static final ARGUMENT_CLASS_NAME:Ljava/lang/String; = "androidx.work.impl.workers.RemoteListenableWorker.ARGUMENT_CLASS_NAME"

.field public static final ARGUMENT_PACKAGE_NAME:Ljava/lang/String; = "androidx.work.impl.workers.RemoteListenableWorker.ARGUMENT_PACKAGE_NAME"

.field static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "RemoteListenableWorker"

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Landroidx/work/multiprocess/RemoteListenableWorker;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/work/WorkerParameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/work/ListenableWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static getFailedFuture(Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/work/ListenableWorker$Result;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, L둥듟돶땮딅땃뒝뒈듸둑뒙뎰딹뒾되뒉땃땨돠뒉땝딄땯땟듨딟땰딁뎠땬듻뎰땔돛돸땪둣딸땫땡땃땱땄돤땣듌땱따듸땥돰드됩뒘둑돨뎰땄든땣뎬뎨뎸딅뎨뒤뒋뒈둬땔뒹뎰뒀뎸됨디땦땋뎹된돨들들땅뒈딀뒈땤뒘뒘뎠돼됫땳디뒹딄땋디드듌딠딸땮땲돠땸따땀돶둠땰땨둥듨땰됨땄딻딨뒛뎻뎡땀돸땫딜뒋둣땋;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-direct {v0, p0, v1}, L둥듟돶땮딅땃뒝뒈듸둑뒙뎰딹뒾되뒉땃땨돠뒉땝딄땯땟듨딟땰딁뎠땬듻뎰땔돛돸땪둣딸땫땡땃땱땄돤땣듌땱따듸땥돰드됩뒘둑돨뎰땄든땣뎬뎨뎸딅뎨뒤뒋뒈둬땔뒹뎰뒀뎸됨디땦땋뎹된돨들들땅뒈딀뒈땤뒘뒘뎠돼됫땳디뒹딄땋디드듌딠딸땮땲돠땸따땀돶둠땰땨둥듨땰됨땄딻딨뒛뎻뎡땀돸땫딜뒋둣땋;-><init>(Ljava/lang/String;I)V

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

.method private static synthetic lambda$getFailedFuture$0(Ljava/lang/String;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Landroidx/work/multiprocess/RemoteListenableWorker;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1, p0}, Landroidx/work/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    .line 16
    .line 17
    .line 18
    const-string p0, "RemoteListenableWorker Failed Future"

    .line 19
    .line 20
    return-object p0
.end method

.method public static synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Ljava/lang/String;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/work/multiprocess/RemoteListenableWorker;->lambda$getFailedFuture$0(Ljava/lang/String;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract startRemoteWork()Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/work/ListenableWorker$Result;",
            ">;"
        }
    .end annotation
.end method

.method public final startWork()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/work/ListenableWorker$Result;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "startWork() shouldn\'t never be called on RemoteListenableWorker"

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/work/multiprocess/RemoteListenableWorker;->getFailedFuture(Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
