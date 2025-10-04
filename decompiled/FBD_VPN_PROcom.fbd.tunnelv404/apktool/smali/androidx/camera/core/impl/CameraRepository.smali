.class public final Landroidx/camera/core/impl/CameraRepository;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraRepository"


# instance fields
.field private final mCameras:Ljava/util/Map;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mCamerasLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/camera/core/impl/CameraInternal;",
            ">;"
        }
    .end annotation
.end field

.field private final mCamerasLock:Ljava/lang/Object;

.field private mDeinitCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mCamerasLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mDeinitFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mCamerasLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final mReleasingCameras:Ljava/util/Set;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mCamerasLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/camera/core/impl/CameraInternal;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/camera/core/impl/CameraRepository;->mCamerasLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroidx/camera/core/impl/CameraRepository;->mCameras:Ljava/util/Map;

    .line 17
    .line 18
    new-instance v0, Ljava/util/HashSet;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Landroidx/camera/core/impl/CameraRepository;->mReleasingCameras:Ljava/util/Set;

    .line 24
    .line 25
    return-void
.end method

.method private synthetic lambda$deinit$0(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/core/impl/CameraRepository;->mCamerasLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput-object p1, p0, Landroidx/camera/core/impl/CameraRepository;->mDeinitCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 5
    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    const-string p1, "CameraRepository-deinit"

    .line 8
    .line 9
    return-object p1

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    throw p1
.end method

.method private synthetic lambda$deinit$1(Landroidx/camera/core/impl/CameraInternal;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/core/impl/CameraRepository;->mCamerasLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/camera/core/impl/CameraRepository;->mReleasingCameras:Ljava/util/Set;

    .line 5
    .line 6
    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Landroidx/camera/core/impl/CameraRepository;->mReleasingCameras:Ljava/util/Set;

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Landroidx/camera/core/impl/CameraRepository;->mDeinitCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 18
    .line 19
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Landroidx/camera/core/impl/CameraRepository;->mDeinitCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-virtual {p1, v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Landroidx/camera/core/impl/CameraRepository;->mDeinitCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 29
    .line 30
    iput-object v1, p0, Landroidx/camera/core/impl/CameraRepository;->mDeinitFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    :goto_0
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw p1
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroidx/camera/core/impl/CameraRepository;Landroidx/camera/core/impl/CameraInternal;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/camera/core/impl/CameraRepository;->lambda$deinit$1(Landroidx/camera/core/impl/CameraInternal;)V

    return-void
.end method

.method public static synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Landroidx/camera/core/impl/CameraRepository;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/camera/core/impl/CameraRepository;->lambda$deinit$0(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public deinit()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 7
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
    iget-object v0, p0, Landroidx/camera/core/impl/CameraRepository;->mCamerasLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/camera/core/impl/CameraRepository;->mCameras:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/camera/core/impl/CameraRepository;->mDeinitFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-static {v1}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v1

    .line 23
    goto :goto_2

    .line 24
    :cond_0
    :goto_0
    monitor-exit v0

    .line 25
    return-object v1

    .line 26
    :cond_1
    iget-object v1, p0, Landroidx/camera/core/impl/CameraRepository;->mDeinitFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 27
    .line 28
    if-nez v1, :cond_2

    .line 29
    .line 30
    new-instance v1, L돛돶땠땃뎹땤뒷뒐딃따됩땮듰뒛땲땮뒙딅돠땤뒻디땔듽딃땱둬땁뎨딞뎹둔뎠뒙돼딻뒘듨땅된뒼듸드듽된딽딃뎸땯뎨디땧땬땦딎땫뎠될돝돼듸돵딜땡듸됩돨뒀듨든듬딄딹듼땝뒛뒙땁돤뎽듔땬뒹땔돝돨땪뎨땤돶땦땯땬땱뎬딞딜듌두땔돷딄됫됐될돰돵뒻돸듐듟둠돛땃딁듨둥둣듌딽되듼땮뎠딀돵뒛땡될땯;

    .line 31
    .line 32
    const/4 v2, 0x6

    .line 33
    invoke-direct {v1, p0, v2}, L돛돶땠땃뎹땤뒷뒐딃따됩땮듰뒛땲땮뒙딅돠땤뒻디땔듽딃땱둬땁뎨딞뎹둔뎠뒙돼딻뒘듨땅된뒼듸드듽된딽딃뎸땯뎨디땧땬땦딎땫뎠될돝돼듸돵딜땡듸됩돨뒀듨든듬딄딹듼땝뒛뒙땁돤뎽듔땬뒹땔돝돨땪뎨땤돶땦땯땬땱뎬딞딜듌두땔돷딄됫됐될돰돵뒻돸듐듟둠돛땃딁듨둥둣듌딽되듼땮뎠딀돵뒛땡될땯;-><init>(Ljava/lang/Object;I)V

    .line 34
    .line 35
    .line 36
    invoke-static {v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iput-object v1, p0, Landroidx/camera/core/impl/CameraRepository;->mDeinitFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 41
    .line 42
    :cond_2
    iget-object v2, p0, Landroidx/camera/core/impl/CameraRepository;->mReleasingCameras:Ljava/util/Set;

    .line 43
    .line 44
    iget-object v3, p0, Landroidx/camera/core/impl/CameraRepository;->mCameras:Ljava/util/Map;

    .line 45
    .line 46
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 51
    .line 52
    .line 53
    iget-object v2, p0, Landroidx/camera/core/impl/CameraRepository;->mCameras:Ljava/util/Map;

    .line 54
    .line 55
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_3

    .line 68
    .line 69
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    check-cast v3, Landroidx/camera/core/impl/CameraInternal;

    .line 74
    .line 75
    invoke-interface {v3}, Landroidx/camera/core/impl/CameraInternal;->release()Lcom/google/common/util/concurrent/ListenableFuture;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    new-instance v5, L뎰둣땀땀땪돶돛땥딀뎽돝뎡땔딤뒬돠딝땠뒀됨딅딻땜뒉딟딠든듌돤뒛뒨돼도딠뎽땭뒻딃땝딠뒾드땫땜땥됨땩둡딎돸딽듽땠땄뎻됴둔딄땤뒷돴딻둥뎨듼둥돴듰땮뎰땦듌땜뎡돸땅땫땣득뒵드둘딹땡딄듽땬땐뎹둘딹돼뒛땻둑따돤뎡딄듻뒷돨땐뎻두땲득듬뒬땩둘땮뒻도도땥뒬딻두땔따들딅둑땔뒈딤땮뎻뎬;

    .line 80
    .line 81
    const/16 v6, 0xd

    .line 82
    .line 83
    invoke-direct {v5, p0, v3, v6}, L뎰둣땀땀땪돶돛땥딀뎽돝뎡땔딤뒬돠딝땠뒀됨딅딻땜뒉딟딠든듌돤뒛뒨돼도딠뎽땭뒻딃땝딠뒾드땫땜땥됨땩둡딎돸딽듽땠땄뎻됴둔딄땤뒷돴딻둥뎨듼둥돴듰땮뎰땦듌땜뎡돸땅땫땣득뒵드둘딹땡딄듽땬땐뎹둘딹돼뒛땻둑따돤뎡딄듻뒷돨땐뎻두땲득듬뒬땩둘땮뒻도도땥뒬딻두땔따들딅둑땔뒈딤땮뎻뎬;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 84
    .line 85
    .line 86
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-interface {v4, v5, v3}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_3
    iget-object v2, p0, Landroidx/camera/core/impl/CameraRepository;->mCameras:Ljava/util/Map;

    .line 95
    .line 96
    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 97
    .line 98
    .line 99
    monitor-exit v0

    .line 100
    return-object v1

    .line 101
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    throw v1
.end method

.method public getCamera(Ljava/lang/String;)Landroidx/camera/core/impl/CameraInternal;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const-string v0, "Invalid camera: "

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/camera/core/impl/CameraRepository;->mCamerasLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p0, Landroidx/camera/core/impl/CameraRepository;->mCameras:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Landroidx/camera/core/impl/CameraInternal;

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    monitor-exit v1

    .line 17
    return-object v2

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 21
    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-direct {v2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw v2

    .line 38
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw p1
.end method

.method public getCameraIds()Ljava/util/Set;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/impl/CameraRepository;->mCamerasLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 5
    .line 6
    iget-object v2, p0, Landroidx/camera/core/impl/CameraRepository;->mCameras:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-direct {v1, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 13
    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return-object v1

    .line 17
    :catchall_0
    move-exception v1

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw v1
.end method

.method public getCameras()Ljava/util/LinkedHashSet;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashSet<",
            "Landroidx/camera/core/impl/CameraInternal;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/impl/CameraRepository;->mCamerasLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 5
    .line 6
    iget-object v2, p0, Landroidx/camera/core/impl/CameraRepository;->mCameras:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-direct {v1, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 13
    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return-object v1

    .line 17
    :catchall_0
    move-exception v1

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw v1
.end method

.method public init(Landroidx/camera/core/impl/CameraFactory;)V
    .locals 6
    .param p1    # Landroidx/camera/core/impl/CameraFactory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/camera/core/impl/CameraRepository;->mCamerasLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-interface {p1}, Landroidx/camera/core/impl/CameraFactory;->getAvailableCameraIds()Ljava/util/Set;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Ljava/lang/String;

    .line 23
    .line 24
    const-string v3, "CameraRepository"

    .line 25
    .line 26
    new-instance v4, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v5, "Added camera: "

    .line 32
    .line 33
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-static {v3, v4}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object v3, p0, Landroidx/camera/core/impl/CameraRepository;->mCameras:Ljava/util/Map;

    .line 47
    .line 48
    invoke-interface {p1, v2}, Landroidx/camera/core/impl/CameraFactory;->getCamera(Ljava/lang/String;)Landroidx/camera/core/impl/CameraInternal;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroidx/camera/core/CameraUnavailableException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception p1

    .line 57
    goto :goto_2

    .line 58
    :catch_0
    move-exception p1

    .line 59
    goto :goto_1

    .line 60
    :cond_0
    :try_start_1
    monitor-exit v0

    .line 61
    return-void

    .line 62
    :goto_1
    new-instance v1, Landroidx/camera/core/InitializationException;

    .line 63
    .line 64
    invoke-direct {v1, p1}, Landroidx/camera/core/InitializationException;-><init>(Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    throw v1

    .line 68
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    throw p1
.end method
