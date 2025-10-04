.class public Landroidx/camera/core/processing/DefaultSurfaceProcessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/processing/SurfaceProcessorInternal;
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/processing/DefaultSurfaceProcessor$PendingSnapshot;,
        Landroidx/camera/core/processing/DefaultSurfaceProcessor$Factory;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultSurfaceProcessor"


# instance fields
.field private final mGlExecutor:Ljava/util/concurrent/Executor;

.field final mGlHandler:Landroid/os/Handler;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mGlRenderer:Landroidx/camera/core/processing/OpenGlRenderer;

.field final mGlThread:Landroid/os/HandlerThread;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mInputSurfaceCount:I

.field private final mIsReleaseRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIsReleased:Z

.field final mOutputSurfaces:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/camera/core/SurfaceOutput;",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingSnapshots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/core/processing/DefaultSurfaceProcessor$PendingSnapshot;",
            ">;"
        }
    .end annotation
.end field

.field private final mSurfaceOutputMatrix:[F

.field private final mTextureMatrix:[F


# direct methods
.method public constructor <init>(Landroidx/camera/core/DynamicRange;)V
    .locals 1
    .param p1    # Landroidx/camera/core/DynamicRange;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroidx/camera/core/processing/DefaultSurfaceProcessor;-><init>(Landroidx/camera/core/DynamicRange;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Landroidx/camera/core/DynamicRange;Ljava/util/Map;)V
    .locals 3
    .param p1    # Landroidx/camera/core/DynamicRange;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/DynamicRange;",
            "Ljava/util/Map<",
            "Landroidx/camera/core/processing/util/GLUtils$InputFormat;",
            "Landroidx/camera/core/processing/ShaderProvider;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mIsReleaseRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/16 v0, 0x10

    .line 4
    new-array v2, v0, [F

    iput-object v2, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mTextureMatrix:[F

    .line 5
    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mSurfaceOutputMatrix:[F

    .line 6
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mOutputSurfaces:Ljava/util/Map;

    .line 7
    iput v1, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mInputSurfaceCount:I

    .line 8
    iput-boolean v1, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mIsReleased:Z

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mPendingSnapshots:Ljava/util/List;

    .line 10
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "GL Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mGlThread:Landroid/os/HandlerThread;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 12
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mGlHandler:Landroid/os/Handler;

    .line 13
    invoke-static {v1}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->newHandlerExecutor(Landroid/os/Handler;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mGlExecutor:Ljava/util/concurrent/Executor;

    .line 14
    new-instance v0, Landroidx/camera/core/processing/OpenGlRenderer;

    invoke-direct {v0}, Landroidx/camera/core/processing/OpenGlRenderer;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mGlRenderer:Landroidx/camera/core/processing/OpenGlRenderer;

    .line 15
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->initGlRenderer(Landroidx/camera/core/DynamicRange;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p0}, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->release()V

    .line 17
    throw p1
.end method

.method private checkReadyToRelease()V
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mIsReleased:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget v0, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mInputSurfaceCount:I

    .line 6
    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mOutputSurfaces:Ljava/util/Map;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Landroidx/camera/core/SurfaceOutput;

    .line 30
    .line 31
    invoke-interface {v1}, Landroidx/camera/core/SurfaceOutput;->close()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object v0, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mPendingSnapshots:Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Landroidx/camera/core/processing/DefaultSurfaceProcessor$PendingSnapshot;

    .line 52
    .line 53
    invoke-virtual {v1}, Landroidx/camera/core/processing/DefaultSurfaceProcessor$PendingSnapshot;->getCompleter()Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    new-instance v2, Ljava/lang/Exception;

    .line 58
    .line 59
    const-string v3, "Failed to snapshot: DefaultSurfaceProcessor is released."

    .line 60
    .line 61
    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v2}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    iget-object v0, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mOutputSurfaces:Ljava/util/Map;

    .line 69
    .line 70
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mGlRenderer:Landroidx/camera/core/processing/OpenGlRenderer;

    .line 74
    .line 75
    invoke-virtual {v0}, Landroidx/camera/core/processing/OpenGlRenderer;->release()V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mGlThread:Landroid/os/HandlerThread;

    .line 79
    .line 80
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 81
    .line 82
    .line 83
    :cond_2
    return-void
.end method

.method private executeSafely(Ljava/lang/Runnable;)V
    .locals 2
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, L뎰땄돸뒼땯뒀듰뒛뒀뎠따딠뒼디둡딐듻뎠도뎠둘뒤득땮땩뒻땥딨뎸딄땯딤딌딝뒘딐드돰둡둠딎듸땨딠듰땡딅됴두듽돰딀땪뎸돛듟득땻됫땦될된듽돵뒷땩뒬뒉딐땤돴듟땪돴두돼됫땧땰돴뎽뒤뒙땵딎뒛뒾뎰뒈뒉돛딟돛뒾뒛뒈땨돛딸땜뒐둠딸돠딤돰딞땵듨듐돴딅따됫딁땜듔됨됩땅드딨뒀돤뒵땦딃둬듟땦;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, L뎰땄돸뒼땯뒀듰뒛뒀뎠따딠뒼디둡딐듻뎠도뎠둘뒤득땮땩뒻땥딨뎸딄땯딤딌딝뒘딐드돰둡둠딎듸땨딠듰땡딅됴두듽돰딀땪뎸돛듟득땻됫땦될된듽돵뒷땩뒬뒉딐땤돴듟땪돴두돼됫땧땰돴뎽뒤뒙땵딎뒛뒾뎰뒈뒉돛딟돛뒾뒛뒈땨돛딸땜뒐둠딸돠딤돰딞땵듨듐돴딅따됫딁땜듔됨됩땅드딨뒀돤뒵땦딃둬듟땦;-><init>(I)V

    invoke-direct {p0, p1, v0}, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->executeSafely(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method private executeSafely(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 3
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    :try_start_0
    iget-object v0, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mGlExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, L뎹딜뒾땰땰두둔됨된둥뎽들뒉둣뒈땝돠뒤듐돠돶둘뒀딃듰둑도땁된돤땲둣둘땜됴딌듽듻딨돝둥뒷땫딌딜뒨뒾됴돳땯땠땔둡뒹둔땭땜돼땍뎠둔땜듰돛땄뒾땝듬돨땝딜땫땜둑둡따디뎰듼뒨되들뒼땟둠드뒋둬돶뎰땬됴됩됐딽든딀딄뎹땬득딠뒵땦따둥돨뎹뎨돤뒋둥땻듟뒾돛듟땩땳돵됨뎹딌땲디딨땔돵딌돵;

    const/4 v2, 0x6

    invoke-direct {v1, p0, v2, p2, p1}, L뎹딜뒾땰땰두둔됨된둥뎽들뒉둣뒈땝돠뒤듐돠돶둘뒀딃듰둑도땁된돤땲둣둘땜됴딌듽듻딨돝둥뒷땫딌딜뒨뒾됴돳땯땠땔둡뒹둔땭땜돼땍뎠둔땜듰돛땄뒾땝듬돨땝딜땫땜둑둡따디뎰듼뒨되들뒼땟둠드뒋둬돶뎰땬됴됩됐딽든딀딄뎹땬득딠뒵땦따둥돨뎹뎨돤뒋둥땻듟뒾돛듟땩땳돵됨뎹딌땲디딨땔돵딌돵;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    const-string v0, "DefaultSurfaceProcessor"

    const-string v1, "Unable to executor runnable"

    invoke-static {v0, v1, p1}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method private failAllPendingSnapshots(Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mPendingSnapshots:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroidx/camera/core/processing/DefaultSurfaceProcessor$PendingSnapshot;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroidx/camera/core/processing/DefaultSurfaceProcessor$PendingSnapshot;->getCompleter()Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1, p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object p1, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mPendingSnapshots:Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method private getBitmap(Landroid/util/Size;[FI)Landroid/graphics/Bitmap;
    .locals 2
    .param p1    # Landroid/util/Size;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p2}, [F->clone()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    check-cast p2, [F

    .line 6
    .line 7
    int-to-float v0, p3

    .line 8
    const/high16 v1, 0x3f000000    # 0.5f

    .line 9
    .line 10
    invoke-static {p2, v0, v1, v1}, Landroidx/camera/core/impl/utils/MatrixExt;->preRotate([FFFF)V

    .line 11
    .line 12
    .line 13
    invoke-static {p2, v1}, Landroidx/camera/core/impl/utils/MatrixExt;->preVerticalFlip([FF)V

    .line 14
    .line 15
    .line 16
    invoke-static {p1, p3}, Landroidx/camera/core/impl/utils/TransformUtils;->rotateSize(Landroid/util/Size;I)Landroid/util/Size;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object p3, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mGlRenderer:Landroidx/camera/core/processing/OpenGlRenderer;

    .line 21
    .line 22
    invoke-virtual {p3, p1, p2}, Landroidx/camera/core/processing/OpenGlRenderer;->snapshot(Landroid/util/Size;[F)Landroid/graphics/Bitmap;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1
.end method

.method private initGlRenderer(Landroidx/camera/core/DynamicRange;Ljava/util/Map;)V
    .locals 2
    .param p1    # Landroidx/camera/core/DynamicRange;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/DynamicRange;",
            "Ljava/util/Map<",
            "Landroidx/camera/core/processing/util/GLUtils$InputFormat;",
            "Landroidx/camera/core/processing/ShaderProvider;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, L뒉돝딠땡드드뎨뎰돶듌땮뒛두뒉땠듼딤듽딠둡돵땭돨땦될딠뒝땃둔딠뒷땜땍땐듸딹뎨뎬뒐두딎땋땜뒼땟땀듐될돶돠땳딸땪딝뒵땩뒹땬돰땤딄딽뒤땐뒘뎠뎬뎸된뒤됐땀됩뒀둠듼뒵듟딝둡뒉땁돸땫땋뒝드듨뎨땍땟땲돝뒹딀딻딨땨딠둣듌땐돰땮뒛둠뎽땯뒛땄땦뎬둘딻둥땪뒵듼뒉듟딅됴땋땅뎸뒨뒛땋돝됐;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1, p1, p2}, L뒉돝딠땡드드뎨뎰돶듌땮뒛두뒉땠듼딤듽딠둡돵땭돨땦될딠뒝땃둔딠뒷땜땍땐듸딹뎨뎬뒐두딎땋땜뒼땟땀듐될돶돠땳딸땪딝뒵땩뒹땬돰땤딄딽뒤땐뒘뎠뎬뎸된뒤됐땀됩뒀둠듼뒵듟딝둡뒉땁돸땫땋뒝드듨뎨땍땟땲돝뒹딀딻딨땨딠둣듌땐돰땮뒛둠뎽땯뒛땄땦뎬둘딻둥땪뒵듼뒉듟딅됴땋땅뎸뒨뒛땋돝됐;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catch_0
    move-exception p1

    .line 16
    goto :goto_0

    .line 17
    :catch_1
    move-exception p1

    .line 18
    :goto_0
    instance-of p2, p1, Ljava/util/concurrent/ExecutionException;

    .line 19
    .line 20
    if-eqz p2, :cond_0

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    :cond_0
    instance-of p2, p1, Ljava/lang/RuntimeException;

    .line 27
    .line 28
    if-eqz p2, :cond_1

    .line 29
    .line 30
    check-cast p1, Ljava/lang/RuntimeException;

    .line 31
    .line 32
    throw p1

    .line 33
    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 34
    .line 35
    const-string v0, "Failed to create DefaultSurfaceProcessor"

    .line 36
    .line 37
    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    throw p2
.end method

.method private static synthetic lambda$executeSafely$11()V
    .locals 0

    return-void
.end method

.method private synthetic lambda$executeSafely$12(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mIsReleased:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 10
    .line 11
    .line 12
    :goto_0
    return-void
.end method

.method private synthetic lambda$initGlRenderer$10(Landroidx/camera/core/DynamicRange;Ljava/util/Map;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 7

    .line 1
    new-instance v6, L뒉둣땤돷듸땮딃딻땩뎸땁듼든딸돰따땰돸뒈땃뒛돰딀땐득뒙둠딅득돵딻딌딨됩돶든딤딄땡뎠땹돳듰땅땟뒝땪딜땣뒨땃둘땭딀딝땀딐땍돵돨뒻뎽딹딤뒈따따돸딌뒀도딞뒻뒉딽땥둑땧뒹됨땦뎸됐뒈돴딸뎽돶땲땫된돸땦둘돠뒻둣돨돵돷딎따돴됐딌둡됴뒋뒤땠됩뒐땤뒬뎻땄땟땜땍따땯듻땃돨돵딁뒨땬땠뒝;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    move-object v0, v6

    .line 5
    move-object v2, p0

    .line 6
    move-object v3, p1

    .line 7
    move-object v4, p2

    .line 8
    move-object v5, p3

    .line 9
    invoke-direct/range {v0 .. v5}, L뒉둣땤돷듸땮딃딻땩뎸땁듼든딸돰따땰돸뒈땃뒛돰딀땐득뒙둠딅득돵딻딌딨됩돶든딤딄땡뎠땹돳듰땅땟뒝땪딜땣뒨땃둘땭딀딝땀딐땍돵돨뒻뎽딹딤뒈따따돸딌뒀도딞뒻뒉딽땥둑땧뒹됨땦뎸됐뒈돴딸뎽돶땲땫된돸땦둘돠뒻둣돨돵돷딎따돴됐딌둡됴뒋뒤땠됩뒐땤뒬뎻땄땟땜땍따땯듻땃돨돵딁뒨땬땠뒝;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, v6}, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->executeSafely(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    const-string p1, "Init GlRenderer"

    .line 16
    .line 17
    return-object p1
.end method

.method private synthetic lambda$initGlRenderer$9(Landroidx/camera/core/DynamicRange;Ljava/util/Map;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mGlRenderer:Landroidx/camera/core/processing/OpenGlRenderer;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroidx/camera/core/processing/OpenGlRenderer;->init(Landroidx/camera/core/DynamicRange;Ljava/util/Map;)Landroidx/camera/core/processing/util/GraphicDeviceInfo;

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    invoke-virtual {p3, p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p3, p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method private synthetic lambda$onInputSurface$0(Landroidx/camera/core/SurfaceRequest;Landroidx/camera/core/SurfaceRequest$TransformationInfo;)V
    .locals 1

    .line 1
    sget-object v0, Landroidx/camera/core/processing/util/GLUtils$InputFormat;->DEFAULT:Landroidx/camera/core/processing/util/GLUtils$InputFormat;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/camera/core/SurfaceRequest;->getDynamicRange()Landroidx/camera/core/DynamicRange;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroidx/camera/core/DynamicRange;->is10BitHdr()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p2}, Landroidx/camera/core/SurfaceRequest$TransformationInfo;->hasCameraTransform()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    sget-object v0, Landroidx/camera/core/processing/util/GLUtils$InputFormat;->YUV:Landroidx/camera/core/processing/util/GLUtils$InputFormat;

    .line 20
    .line 21
    :cond_0
    iget-object p1, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mGlRenderer:Landroidx/camera/core/processing/OpenGlRenderer;

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroidx/camera/core/processing/OpenGlRenderer;->setInputFormat(Landroidx/camera/core/processing/util/GLUtils$InputFormat;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private synthetic lambda$onInputSurface$1(Landroidx/camera/core/SurfaceRequest;Landroid/graphics/SurfaceTexture;Landroid/view/Surface;Landroidx/camera/core/SurfaceRequest$Result;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/camera/core/SurfaceRequest;->clearTransformationInfoListener()V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    invoke-virtual {p2, p1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Landroid/graphics/SurfaceTexture;->release()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p3}, Landroid/view/Surface;->release()V

    .line 12
    .line 13
    .line 14
    iget p1, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mInputSurfaceCount:I

    .line 15
    .line 16
    add-int/lit8 p1, p1, -0x1

    .line 17
    .line 18
    iput p1, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mInputSurfaceCount:I

    .line 19
    .line 20
    invoke-direct {p0}, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->checkReadyToRelease()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private synthetic lambda$onInputSurface$2(Landroidx/camera/core/SurfaceRequest;)V
    .locals 5

    .line 1
    iget v0, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mInputSurfaceCount:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mInputSurfaceCount:I

    .line 6
    .line 7
    new-instance v0, Landroid/graphics/SurfaceTexture;

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mGlRenderer:Landroidx/camera/core/processing/OpenGlRenderer;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroidx/camera/core/processing/OpenGlRenderer;->getTextureName()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/camera/core/SurfaceRequest;->getResolution()Landroid/util/Size;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-virtual {p1}, Landroidx/camera/core/SurfaceRequest;->getResolution()Landroid/util/Size;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 35
    .line 36
    .line 37
    new-instance v1, Landroid/view/Surface;

    .line 38
    .line 39
    invoke-direct {v1, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 40
    .line 41
    .line 42
    iget-object v2, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mGlExecutor:Ljava/util/concurrent/Executor;

    .line 43
    .line 44
    new-instance v3, L뎸땝딀둡뒷땅땯뎡듻땲땭돨듔뒈땩땤든둘득딝뒝땬듼땵뎻둡땲땨딝돨땍뎻딃땠땸땹듌듬뎽둣땪뒻딎뒤땃땵땃땫땬딻땄땲따듔딹뒛딠땩땨땃돛땤딹듟땻땫뒨듽딌딜딄땔땲땋둑됐딝땫땔돨땸땹든두땩딌됐득따땐돸듐됩듰뒻뒷돵뒤뎡땹됩둔땥땧들딨둣둣돴딨돰뒹됐돤됐뒬뒋땋딽딄딝될딁돶땬될딀땬딄땬;

    .line 45
    .line 46
    const/4 v4, 0x5

    .line 47
    invoke-direct {v3, p0, p1, v4}, L뎸땝딀둡뒷땅땯뎡듻땲땭돨듔뒈땩땤든둘득딝뒝땬듼땵뎻둡땲땨딝돨땍뎻딃땠땸땹듌듬뎽둣땪뒻딎뒤땃땵땃땫땬딻땄땲따듔딹뒛딠땩땨땃돛땤딹듟땻땫뒨듽딌딜딄땔땲땋둑됐딝땫땔돨땸땹든두땩딌됐득따땐돸듐됩듰뒻뒷돵뒤뎡땹됩둔땥땧들딨둣둣돴딨돰뒹됐돤됐뒬뒋땋딽딄딝될딁돶땬될딀땬딄땬;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v2, v3}, Landroidx/camera/core/SurfaceRequest;->setTransformationInfoListener(Ljava/util/concurrent/Executor;Landroidx/camera/core/SurfaceRequest$TransformationInfoListener;)V

    .line 51
    .line 52
    .line 53
    iget-object v2, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mGlExecutor:Ljava/util/concurrent/Executor;

    .line 54
    .line 55
    new-instance v3, L뒈땃딀뎰된돳땱뒛뎻드땨드딁듨됫땬땮딽뎰뒘둬뒹뎹둣땋땨딻땜땃디딄땅딅뎡돤둥땩뒝땱땬뎽땱둣땜뒛땠딃뒻도뎬듰땮땔딄뒹땐땫따된딎될뎸땀뒋뎡땯땋뒐돼듌뒨둡땵땩듟땱돨뒨됩땵땭땍두딃돤딨뎻땤뎠뒬뒻땭땅딐디땲돳딀뒬땹된된땣듐땋뎻땣두돵딀땄땵돨딤뒙디듽뒨됨둘땥뒉뎸뒻돠듌들딃딟될;

    .line 56
    .line 57
    invoke-direct {v3, p0, p1, v0, v1}, L뒈땃딀뎰된돳땱뒛뎻드땨드딁듨됫땬땮딽뎰뒘둬뒹뎹둣땋땨딻땜땃디딄땅딅뎡돤둥땩뒝땱땬뎽땱둣땜뒛땠딃뒻도뎬듰땮땔딄뒹땐땫따된딎될뎸땀뒋뎡땯땋뒐돼듌뒨둡땵땩듟땱돨뒨됩땵땭땍두딃돤딨뎻땤뎠뒬뒻땭땅딐디땲돳딀뒬땹된된땣듐땋뎻땣두돵딀땄땵돨딤뒙디듽뒨됨둘땥뒉뎸뒻돠듌들딃딟될;-><init>(Landroidx/camera/core/processing/DefaultSurfaceProcessor;Landroidx/camera/core/SurfaceRequest;Landroid/graphics/SurfaceTexture;Landroid/view/Surface;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v1, v2, v3}, Landroidx/camera/core/SurfaceRequest;->provideSurface(Landroid/view/Surface;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mGlHandler:Landroid/os/Handler;

    .line 64
    .line 65
    invoke-virtual {v0, p0, p1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method private synthetic lambda$onOutputSurface$3(Landroidx/camera/core/SurfaceOutput;Landroidx/camera/core/SurfaceOutput$Event;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Landroidx/camera/core/SurfaceOutput;->close()V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mOutputSurfaces:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Landroid/view/Surface;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p2, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mGlRenderer:Landroidx/camera/core/processing/OpenGlRenderer;

    .line 15
    .line 16
    invoke-virtual {p2, p1}, Landroidx/camera/core/processing/OpenGlRenderer;->unregisterOutputSurface(Landroid/view/Surface;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method private synthetic lambda$onOutputSurface$4(Landroidx/camera/core/SurfaceOutput;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mGlExecutor:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    new-instance v1, L돶듻뎻듨딌딄땻될땯듌땃돶딄딽땹돳땹듨땐뒋들땅뒼딞뒾땝땳따듽딟뒈듬뒤땅따땋뎽딹뒵딌됐듰딌돛들딌둑딻둘딹땨딻뒀듔듌돳땅둡땀듬둣땡땳둠돼듌땻딄뎹도뎬디돠돸딠돵딹둬둡딞땧딤득딀뎻둘딐둣듽땔뒷딌뎡뒀뒘듨뒛땰둔돸뎽돶둘딄도딀땵뒬되따도딠뒤두땡뒈됴땥듽땃되땄돰딅뎽땲뎬돶땜땥;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v1, p0, p1, v2}, L돶듻뎻듨딌딄땻될땯듌땃돶딄딽땹돳땹듨땐뒋들땅뒼딞뒾땝땳따듽딟뒈듬뒤땅따땋뎽딹뒵딌됐듰딌돛들딌둑딻둘딹땨딻뒀듔듌돳땅둡땀듬둣땡땳둠돼듌땻딄뎹도뎬디돠돸딠돵딹둬둡딞땧딤득딀뎻둘딐둣듽땔뒷딌뎡뒀뒘듨뒛땰둔돸뎽돶둘딄도딀땵뒬되따도딠뒤두땡뒈됴땥듽땃되땄돰딅뎽땲뎬돶땜땥;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 7
    .line 8
    .line 9
    invoke-interface {p1, v0, v1}, Landroidx/camera/core/SurfaceOutput;->getSurface(Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)Landroid/view/Surface;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mGlRenderer:Landroidx/camera/core/processing/OpenGlRenderer;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Landroidx/camera/core/processing/OpenGlRenderer;->registerOutputSurface(Landroid/view/Surface;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mOutputSurfaces:Ljava/util/Map;

    .line 19
    .line 20
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private synthetic lambda$release$5()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mIsReleased:Z

    .line 3
    .line 4
    invoke-direct {p0}, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->checkReadyToRelease()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private synthetic lambda$snapshot$6(Landroidx/camera/core/processing/DefaultSurfaceProcessor$PendingSnapshot;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mPendingSnapshots:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private static synthetic lambda$snapshot$7(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Exception;

    .line 2
    .line 3
    const-string v1, "Failed to snapshot: OpenGLRenderer not ready."

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private synthetic lambda$snapshot$8(IILandroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p1, p2, p3}, Landroidx/camera/core/processing/DefaultSurfaceProcessor$PendingSnapshot;->of(IILandroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Landroidx/camera/core/processing/AutoValue_DefaultSurfaceProcessor_PendingSnapshot;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance p2, Landroidx/camera/core/processing/뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-direct {p2, p0, p1, v0}, Landroidx/camera/core/processing/뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 9
    .line 10
    .line 11
    new-instance p1, L뒈딜돴땜됩돝딽듰둣땪땍둑득딠든땩듨듰둬땸땪든땫뒐뒋돼뒋땨든뒈뎰돤땬드땧땤딄따땔땤딌뎸뒵딤둣뒾땜듼땹둣뒨딠딄뒋땝땅둡땵딌땐듌땧뒨땀뒤땦둡땃뒝딠된돠땀뒛뒾뒷땪도돷됐딄돠드땫뒤두땩돶듟땄됨됫득땬됨딞돼뎻따둬뎨듰땔돨딹땥땋딝땔듬딽디땰돴듌되딹듟뒹돝돤땪뒻땬뒼듔뒵땨둥둬;

    .line 12
    .line 13
    invoke-direct {p1, v0, p3}, L뒈딜돴땜됩돝딽듰둣땪땍둑득딠든땩듨듰둬땸땪든땫뒐뒋돼뒋땨든뒈뎰돤땬드땧땤딄따땔땤딌뎸뒵딤둣뒾땜듼땹둣뒨딠딄뒋땝땅둡땵딌땐듌땧뒨땀뒤땦둡땃뒝딠된돠땀뒛뒾뒷땪도돷됐딄돠드땫뒤두땩돶듟땄됨됫득땬됨딞돼뎻따둬뎨듰땔돨딹땥땋딝땔듬딽디땰돴듌되딹듟뒹돝돤땪뒻땬뒼듔뒵땨둥둬;-><init>(ILandroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p2, p1}, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->executeSafely(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    const-string p1, "DefaultSurfaceProcessor#snapshot"

    .line 20
    .line 21
    return-object p1
.end method

.method private takeSnapshotAndDrawJpeg(Lkotlin/Triple;)V
    .locals 11
    .param p1    # Lkotlin/Triple;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Triple<",
            "Landroid/view/Surface;",
            "Landroid/util/Size;",
            "[F>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mPendingSnapshots:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    if-nez p1, :cond_1

    .line 11
    .line 12
    new-instance p1, Ljava/lang/Exception;

    .line 13
    .line 14
    const-string v0, "Failed to snapshot: no JPEG Surface."

    .line 15
    .line 16
    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, p1}, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->failAllPendingSnapshots(Ljava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    :try_start_1
    iget-object v1, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mPendingSnapshots:Ljava/util/List;

    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const/4 v2, -0x1

    .line 35
    const/4 v3, 0x0

    .line 36
    move-object v5, v3

    .line 37
    move-object v7, v5

    .line 38
    const/4 v4, -0x1

    .line 39
    const/4 v6, -0x1

    .line 40
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v8

    .line 44
    if-eqz v8, :cond_6

    .line 45
    .line 46
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v8

    .line 50
    check-cast v8, Landroidx/camera/core/processing/DefaultSurfaceProcessor$PendingSnapshot;

    .line 51
    .line 52
    invoke-virtual {v8}, Landroidx/camera/core/processing/DefaultSurfaceProcessor$PendingSnapshot;->getRotationDegrees()I

    .line 53
    .line 54
    .line 55
    move-result v9

    .line 56
    if-ne v4, v9, :cond_2

    .line 57
    .line 58
    if-nez v5, :cond_4

    .line 59
    .line 60
    :cond_2
    invoke-virtual {v8}, Landroidx/camera/core/processing/DefaultSurfaceProcessor$PendingSnapshot;->getRotationDegrees()I

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-eqz v5, :cond_3

    .line 65
    .line 66
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :catchall_0
    move-exception p1

    .line 71
    goto :goto_2

    .line 72
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lkotlin/Triple;->getSecond()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    check-cast v5, Landroid/util/Size;

    .line 77
    .line 78
    invoke-virtual {p1}, Lkotlin/Triple;->getThird()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    check-cast v6, [F

    .line 83
    .line 84
    invoke-direct {p0, v5, v6, v4}, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->getBitmap(Landroid/util/Size;[FI)Landroid/graphics/Bitmap;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    const/4 v6, -0x1

    .line 89
    :cond_4
    invoke-virtual {v8}, Landroidx/camera/core/processing/DefaultSurfaceProcessor$PendingSnapshot;->getJpegQuality()I

    .line 90
    .line 91
    .line 92
    move-result v9

    .line 93
    if-eq v6, v9, :cond_5

    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v8}, Landroidx/camera/core/processing/DefaultSurfaceProcessor$PendingSnapshot;->getJpegQuality()I

    .line 99
    .line 100
    .line 101
    move-result v6

    .line 102
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 103
    .line 104
    invoke-virtual {v5, v7, v6, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 108
    .line 109
    .line 110
    move-result-object v7

    .line 111
    :cond_5
    invoke-virtual {p1}, Lkotlin/Triple;->getFirst()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v9

    .line 115
    check-cast v9, Landroid/view/Surface;

    .line 116
    .line 117
    invoke-static {v7}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-object v10, v7

    .line 121
    check-cast v10, [B

    .line 122
    .line 123
    invoke-static {v9, v10}, Landroidx/camera/core/ImageProcessingUtil;->writeJpegBytesToSurface(Landroid/view/Surface;[B)Z

    .line 124
    .line 125
    .line 126
    invoke-virtual {v8}, Landroidx/camera/core/processing/DefaultSurfaceProcessor$PendingSnapshot;->getCompleter()Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 127
    .line 128
    .line 129
    move-result-object v8

    .line 130
    invoke-virtual {v8, v3}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_6
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 138
    .line 139
    .line 140
    goto :goto_5

    .line 141
    :catch_0
    move-exception p1

    .line 142
    goto :goto_4

    .line 143
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 144
    .line 145
    .line 146
    goto :goto_3

    .line 147
    :catchall_1
    move-exception v0

    .line 148
    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 149
    .line 150
    .line 151
    :goto_3
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 152
    :goto_4
    invoke-direct {p0, p1}, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->failAllPendingSnapshots(Ljava/lang/Throwable;)V

    .line 153
    .line 154
    .line 155
    :goto_5
    return-void
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroidx/camera/core/processing/DefaultSurfaceProcessor;Landroidx/camera/core/processing/AutoValue_DefaultSurfaceProcessor_PendingSnapshot;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->lambda$snapshot$6(Landroidx/camera/core/processing/DefaultSurfaceProcessor$PendingSnapshot;)V

    return-void
.end method

.method public static synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Landroidx/camera/core/processing/DefaultSurfaceProcessor;Landroidx/camera/core/SurfaceRequest;Landroid/graphics/SurfaceTexture;Landroid/view/Surface;Landroidx/camera/core/SurfaceRequest$Result;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->lambda$onInputSurface$1(Landroidx/camera/core/SurfaceRequest;Landroid/graphics/SurfaceTexture;Landroid/view/Surface;Landroidx/camera/core/SurfaceRequest$Result;)V

    return-void
.end method

.method public static synthetic 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Landroidx/camera/core/processing/DefaultSurfaceProcessor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->lambda$release$5()V

    return-void
.end method

.method public static synthetic 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(Landroidx/camera/core/processing/DefaultSurfaceProcessor;Landroidx/camera/core/DynamicRange;Ljava/util/Map;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->lambda$initGlRenderer$9(Landroidx/camera/core/DynamicRange;Ljava/util/Map;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    return-void
.end method

.method public static synthetic 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(Landroidx/camera/core/processing/DefaultSurfaceProcessor;IILandroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->lambda$snapshot$8(IILandroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤(Landroidx/camera/core/processing/DefaultSurfaceProcessor;Landroidx/camera/core/SurfaceRequest;Landroidx/camera/core/SurfaceRequest$TransformationInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->lambda$onInputSurface$0(Landroidx/camera/core/SurfaceRequest;Landroidx/camera/core/SurfaceRequest$TransformationInfo;)V

    return-void
.end method

.method public static synthetic 뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋(Landroidx/camera/core/processing/DefaultSurfaceProcessor;Landroidx/camera/core/SurfaceOutput;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->lambda$onOutputSurface$4(Landroidx/camera/core/SurfaceOutput;)V

    return-void
.end method

.method public static synthetic 뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두(Landroidx/camera/core/processing/DefaultSurfaceProcessor;Landroidx/camera/core/SurfaceOutput;Landroidx/camera/core/SurfaceOutput$Event;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->lambda$onOutputSurface$3(Landroidx/camera/core/SurfaceOutput;Landroidx/camera/core/SurfaceOutput$Event;)V

    return-void
.end method

.method public static synthetic 뎨돶땰딎땵딃됨드땭두뒹듟땭땧될땤돝땡땟땡득땫땟듌둑듔뒐둔뒨딽땪돵둥뒬돝뒼뒹땻딹둡듔든땐땰땜땠돳땔될땪두땃딄되돸든돵뎬둘땨딀둡땲뎽땬듬딝딃땜뒼됨땤딝돴듽돰듻땲됫듸든둬듰듰듸뒈땳땠뎰딽둬딽뒼딎땃돸돳딠뒷뒛땯듬뎬땅땀되될딅땩땵됨땐땧뎰뎨땥됩뒋됐딟따됐땮뎡돛듰딸뎬뒙돷(Landroidx/camera/core/processing/DefaultSurfaceProcessor;Landroidx/camera/core/DynamicRange;Ljava/util/Map;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->lambda$initGlRenderer$10(Landroidx/camera/core/DynamicRange;Ljava/util/Map;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎()V
    .locals 0

    .line 1
    invoke-static {}, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->lambda$executeSafely$11()V

    return-void
.end method

.method public static synthetic 뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->lambda$snapshot$7(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    return-void
.end method

.method public static synthetic 뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻(Landroidx/camera/core/processing/DefaultSurfaceProcessor;Landroidx/camera/core/SurfaceRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->lambda$onInputSurface$2(Landroidx/camera/core/SurfaceRequest;)V

    return-void
.end method

.method public static synthetic 뎨뒋딝뒘땻땭땳뒨돵뒋땡돛딟따뒷땮돴딤딃들땡돸땀뒘돳뎹됩둑딠뒬딤뎸땁뒙뒾딽딄뒷뒘땯도두뎠돸돤뒝돼뒵땳땰딅든뒻뒘땰땯땅뒼돤딃두딁땔듌뒵뎸돷뒘됴딻듔땬돵돼둔땸돨땧돝땲땧땥돛뒼뒋땨돶땮도땁돳듔돳뒈돨딟땨뎹딽둡뒤땐뒘뎡땃땯딐딄뒐땧뒤딹뒬딃땋뎽땮딅뎽뎻딞땡땮뎽뒙듟뎡뎹뒐딁(Landroidx/camera/core/processing/DefaultSurfaceProcessor;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->lambda$executeSafely$12(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 9
    .param p1    # Landroid/graphics/SurfaceTexture;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mIsReleaseRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mTextureMatrix:[F

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mOutputSurfaces:Ljava/util/Map;

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const/4 v1, 0x0

    .line 29
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_4

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Ljava/util/Map$Entry;

    .line 40
    .line 41
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    check-cast v3, Landroid/view/Surface;

    .line 46
    .line 47
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Landroidx/camera/core/SurfaceOutput;

    .line 52
    .line 53
    iget-object v4, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mSurfaceOutputMatrix:[F

    .line 54
    .line 55
    iget-object v5, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mTextureMatrix:[F

    .line 56
    .line 57
    invoke-interface {v2, v4, v5}, Landroidx/camera/core/SurfaceOutput;->updateTransformMatrix([F[F)V

    .line 58
    .line 59
    .line 60
    invoke-interface {v2}, Landroidx/camera/core/SurfaceOutput;->getFormat()I

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    const/16 v5, 0x22

    .line 65
    .line 66
    if-ne v4, v5, :cond_1

    .line 67
    .line 68
    :try_start_0
    iget-object v2, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mGlRenderer:Landroidx/camera/core/processing/OpenGlRenderer;

    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    .line 71
    .line 72
    .line 73
    move-result-wide v4

    .line 74
    iget-object v6, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mSurfaceOutputMatrix:[F

    .line 75
    .line 76
    invoke-virtual {v2, v4, v5, v6, v3}, Landroidx/camera/core/processing/OpenGlRenderer;->render(J[FLandroid/view/Surface;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :catch_0
    move-exception v2

    .line 81
    const-string v3, "DefaultSurfaceProcessor"

    .line 82
    .line 83
    const-string v4, "Failed to render with OpenGL."

    .line 84
    .line 85
    invoke-static {v3, v4, v2}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_1
    invoke-interface {v2}, Landroidx/camera/core/SurfaceOutput;->getFormat()I

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    const/16 v5, 0x100

    .line 94
    .line 95
    const/4 v6, 0x0

    .line 96
    const/4 v7, 0x1

    .line 97
    if-ne v4, v5, :cond_2

    .line 98
    .line 99
    const/4 v4, 0x1

    .line 100
    goto :goto_1

    .line 101
    :cond_2
    const/4 v4, 0x0

    .line 102
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    const-string v8, "Unsupported format: "

    .line 105
    .line 106
    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-interface {v2}, Landroidx/camera/core/SurfaceOutput;->getFormat()I

    .line 110
    .line 111
    .line 112
    move-result v8

    .line 113
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    invoke-static {v4, v5}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 121
    .line 122
    .line 123
    if-nez v1, :cond_3

    .line 124
    .line 125
    const/4 v6, 0x1

    .line 126
    :cond_3
    const-string v1, "Only one JPEG output is supported."

    .line 127
    .line 128
    invoke-static {v6, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 129
    .line 130
    .line 131
    new-instance v1, Lkotlin/Triple;

    .line 132
    .line 133
    invoke-interface {v2}, Landroidx/camera/core/SurfaceOutput;->getSize()Landroid/util/Size;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    iget-object v4, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mSurfaceOutputMatrix:[F

    .line 138
    .line 139
    invoke-virtual {v4}, [F->clone()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    check-cast v4, [F

    .line 144
    .line 145
    invoke-direct {v1, v3, v2, v4}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    goto :goto_0

    .line 149
    :cond_4
    :try_start_1
    invoke-direct {p0, v1}, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->takeSnapshotAndDrawJpeg(Lkotlin/Triple;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 150
    .line 151
    .line 152
    goto :goto_2

    .line 153
    :catch_1
    move-exception p1

    .line 154
    invoke-direct {p0, p1}, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->failAllPendingSnapshots(Ljava/lang/Throwable;)V

    .line 155
    .line 156
    .line 157
    :goto_2
    return-void
.end method

.method public onInputSurface(Landroidx/camera/core/SurfaceRequest;)V
    .locals 3
    .param p1    # Landroidx/camera/core/SurfaceRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mIsReleaseRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/camera/core/SurfaceRequest;->willNotProvideSurface()Z

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance v0, L뎰둣땀땀땪돶돛땥딀뎽돝뎡땔딤뒬돠딝땠뒀됨딅딻땜뒉딟딠든듌돤뒛뒨돼도딠뎽땭뒻딃땝딠뒾드땫땜땥됨땩둡딎돸딽듽땠땄뎻됴둔딄땤뒷돴딻둥뎨듼둥돴듰땮뎰땦듌땜뎡돸땅땫땣득뒵드둘딹땡딄듽땬땐뎹둘딹돼뒛땻둑따돤뎡딄듻뒷돨땐뎻두땲득듬뒬땩둘땮뒻도도땥뒬딻두땔따들딅둑땔뒈딤땮뎻뎬;

    .line 14
    .line 15
    const/16 v1, 0x11

    .line 16
    .line 17
    invoke-direct {v0, p0, p1, v1}, L뎰둣땀땀땪돶돛땥딀뎽돝뎡땔딤뒬돠딝땠뒀됨딅딻땜뒉딟딠든듌돤뒛뒨돼도딠뎽땭뒻딃땝딠뒾드땫땜땥됨땩둡딎돸딽듽땠땄뎻됴둔딄땤뒷돴딻둥뎨듼둥돴듰땮뎰땦듌땜뎡돸땅땫땣득뒵드둘딹땡딄듽땬땐뎹둘딹돼뒛땻둑따돤뎡딄듻뒷돨땐뎻두땲득듬뒬땩둘땮뒻도도땥뒬딻두땔따들딅둑땔뒈딤땮뎻뎬;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    new-instance v1, L뒈뒹뒉돶땩돴뒻될땥뒬뒙둬뎬돵뒹딄땱땦둬땱돤땦딅땬돷딽될땃땍딟딃돷돶뒻땋됐뒀돴딄듌땳땟뎬득딜땸딟디땳들됫뒻뎨딐땨땫뒬땭둡돳땻땩딝딜뒼땱뎻돸땩딸든둘땩돝두도듰든뒉듟뎡딤땬돠딄둣뒹딞딸뒋땥땀뎹뎻딄땧뒛됨돰땻듟땝딀땧듽따듼땳뒝돰뎠딁둘됨뎻땋뒛땭뒐디뒉도듽됫든듐땡둣땹땔;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-direct {v1, p1, v2}, L뒈뒹뒉돶땩돴뒻될땥뒬뒙둬뎬돵뒹딄땱땦둬땱돤땦딅땬돷딽될땃땍딟딃돷돶뒻땋됐뒀돴딄듌땳땟뎬득딜땸딟디땳들됫뒻뎨딐땨땫뒬땭둡돳땻땩딝딜뒼땱뎻돸땩딸든둘땩돝두도듰든뒉듟뎡딤땬돠딄둣뒹딞딸뒋땥땀뎹뎻딄땧뒛됨돰땻듟땝딀땧듽따듼땳뒝돰뎠딁둘됨뎻땋뒛땭뒐디뒉도듽됫든듐땡둣땹땔;-><init>(Landroidx/camera/core/SurfaceRequest;I)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, v0, v1}, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->executeSafely(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public onOutputSurface(Landroidx/camera/core/SurfaceOutput;)V
    .locals 3
    .param p1    # Landroidx/camera/core/SurfaceOutput;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mIsReleaseRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {p1}, Landroidx/camera/core/SurfaceOutput;->close()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance v0, L뎰둣땀땀땪돶돛땥딀뎽돝뎡땔딤뒬돠딝땠뒀됨딅딻땜뒉딟딠든듌돤뒛뒨돼도딠뎽땭뒻딃땝딠뒾드땫땜땥됨땩둡딎돸딽듽땠땄뎻됴둔딄땤뒷돴딻둥뎨듼둥돴듰땮뎰땦듌땜뎡돸땅땫땣득뒵드둘딹땡딄듽땬땐뎹둘딹돼뒛땻둑따돤뎡딄듻뒷돨땐뎻두땲득듬뒬땩둘땮뒻도도땥뒬딻두땔따들딅둑땔뒈딤땮뎻뎬;

    .line 14
    .line 15
    const/16 v1, 0x12

    .line 16
    .line 17
    invoke-direct {v0, p0, p1, v1}, L뎰둣땀땀땪돶돛땥딀뎽돝뎡땔딤뒬돠딝땠뒀됨딅딻땜뒉딟딠든듌돤뒛뒨돼도딠뎽땭뒻딃땝딠뒾드땫땜땥됨땩둡딎돸딽듽땠땄뎻됴둔딄땤뒷돴딻둥뎨듼둥돴듰땮뎰땦듌땜뎡돸땅땫땣득뒵드둘딹땡딄듽땬땐뎹둘딹돼뒛땻둑따돤뎡딄듻뒷돨땐뎻두땲득듬뒬땩둘땮뒻도도땥뒬딻두땔따들딅둑땔뒈딤땮뎻뎬;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    new-instance v1, L돨뎠뒤땹땃땅땍딐땯딁딨뎬뒨땣땹땧딸되땠듌뎹듸둡땦땫뒙뎻땱돝디딀뒵땩딀돨땅든뒻됐둥딝땅땱뎽돴둔드뎨땵둬땡둥딐땵땻뒨듌땳땵됨딠뎠땜뒉땦듻딅땁땤듌땁듌땳돳땧뒤따땪땲딅돷땯뒵땄듨둔돤뎬땤따돨땠땜듼땍둬뎸땅딎듐딄돠땍땭됐뎸딞듬뒐둡땄땠둡뒈땤뒨돤땤듸됨디둘땣땩땳땀뒨땳땟뒋;

    .line 24
    .line 25
    const/16 v2, 0xd

    .line 26
    .line 27
    invoke-direct {v1, p1, v2}, L돨뎠뒤땹땃땅땍딐땯딁딨뎬뒨땣땹땧딸되땠듌뎹듸둡땦땫뒙뎻땱돝디딀뒵땩딀돨땅든뒻됐둥딝땅땱뎽돴둔드뎨땵둬땡둥딐땵땻뒨듌땳땵됨딠뎠땜뒉땦듻딅땁땤듌땁듌땳돳땧뒤따땪땲딅돷땯뒵땄듨둔돤뎬땤따돨땠땜듼땍둬뎸땅딎듐딄돠땍땭됐뎸딞듬뒐둡땄땠둡뒈땤뒨돤땤듸됨디둘땣땩땳땀뒨땳땟뒋;-><init>(Ljava/lang/Object;I)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, v0, v1}, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->executeSafely(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public release()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mIsReleaseRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance v0, L돨뎠뒤땹땃땅땍딐땯딁딨뎬뒨땣땹땧딸되땠듌뎹듸둡땦땫뒙뎻땱돝디딀뒵땩딀돨땅든뒻됐둥딝땅땱뎽돴둔드뎨땵둬땡둥딐땵땻뒨듌땳땵됨딠뎠땜뒉땦듻딅땁땤듌땁듌땳돳땧뒤따땪땲딅돷땯뒵땄듨둔돤뎬땤따돨땠땜듼땍둬뎸땅딎듐딄돠땍땭됐뎸딞듬뒐둡땄땠둡뒈땤뒨돤땤듸됨디둘땣땩땳땀뒨땳땟뒋;

    .line 12
    .line 13
    const/16 v1, 0xc

    .line 14
    .line 15
    invoke-direct {v0, p0, v1}, L돨뎠뒤땹땃땅땍딐땯딁딨뎬뒨땣땹땧딸되땠듌뎹듸둡땦땫뒙뎻땱돝디딀뒵땩딀돨땅든뒻됐둥딝땅땱뎽돴둔드뎨땵둬땡둥딐땵땻뒨듌땳땵됨딠뎠땜뒉땦듻딅땁땤듌땁듌땳돳땧뒤따땪땲딅돷땯뒵땄듨둔돤뎬땤따돨땠땜듼땍둬뎸땅딎듐딄돠땍땭됐뎸딞듬뒐둡땄땠둡뒈땤뒨돤땤듸됨디둘땣땩땳땀뒨땳땟뒋;-><init>(Ljava/lang/Object;I)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, v0}, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->executeSafely(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public snapshot(II)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x64L
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x167L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, L뒈듨듼땬딜딄듐듟뎨됫듌딞뒤돵딄뎨뎽뎸뒐둑뎽듌뒻뒈둑딄뒼뒤뒉돝땭땤됩됨둔둘딅땅뒘땲딄땤땸뒘딁땐돷된돴딸땯딽듽됴도딁땨땦땻뒾딀땀땠딃딠뒋듐됩듼딄땟딄딅땝듨딅땲듬뒐도둘뒈듸도땨땅딤돤땋딄딹딽든듬된뒝땜땲된돸됐듐돶뒝뎨땦듟둘딐땳땪땅듐듐딻둔두듔땤뎸땔땱둑둠땟따뎻돼돨돸;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, L뒈듨듼땬딜딄듐듟뎨됫듌딞뒤돵딄뎨뎽뎸뒐둑뎽듌뒻뒈둑딄뒼뒤뒉돝땭땤됩됨둔둘딅땅뒘땲딄땤땸뒘딁땐돷된돴딸땯딽듽됴도딁땨땦땻뒾딀땀땠딃딠뒋듐됩듼딄땟딄딅땝듨딅땲듬뒐도둘뒈듸도땨땅딤돤땋딄딹딽든듬된뒝땜땲된돸됐듐돶뒝뎨땦듟둘딐땳땪땅듐듐딻둔두듔땤뎸땔땱둑둠땟따뎻돼돨돸;-><init>(Ljava/lang/Object;II)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {p1}, Landroidx/camera/core/impl/utils/futures/Futures;->nonCancellationPropagating(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method
