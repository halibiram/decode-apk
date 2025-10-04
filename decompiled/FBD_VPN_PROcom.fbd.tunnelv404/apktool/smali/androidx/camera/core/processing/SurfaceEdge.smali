.class public Landroidx/camera/core/processing/SurfaceEdge;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/processing/SurfaceEdge$SettableSurface;
    }
.end annotation


# instance fields
.field private final mCropRect:Landroid/graphics/Rect;

.field private final mFormat:I

.field private final mHasCameraTransform:Z

.field private mHasConsumer:Z

.field private mIsClosed:Z

.field private final mMirroring:Z

.field private final mOnInvalidatedListeners:Ljava/util/Set;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mProviderSurfaceRequest:Landroidx/camera/core/SurfaceRequest;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mRotationDegrees:I

.field private final mSensorToBufferTransform:Landroid/graphics/Matrix;

.field private mSettableSurface:Landroidx/camera/core/processing/SurfaceEdge$SettableSurface;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mStreamSpec:Landroidx/camera/core/impl/StreamSpec;

.field private mTargetRotation:I

.field private final mTargets:I

.field private final mTransformationUpdatesListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/core/util/Consumer<",
            "Landroidx/camera/core/SurfaceRequest$TransformationInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILandroidx/camera/core/impl/StreamSpec;Landroid/graphics/Matrix;ZLandroid/graphics/Rect;IIZ)V
    .locals 2
    .param p3    # Landroidx/camera/core/impl/StreamSpec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/Matrix;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/camera/core/processing/SurfaceEdge;->mHasConsumer:Z

    .line 6
    .line 7
    new-instance v1, Ljava/util/HashSet;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Landroidx/camera/core/processing/SurfaceEdge;->mOnInvalidatedListeners:Ljava/util/Set;

    .line 13
    .line 14
    iput-boolean v0, p0, Landroidx/camera/core/processing/SurfaceEdge;->mIsClosed:Z

    .line 15
    .line 16
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Landroidx/camera/core/processing/SurfaceEdge;->mTransformationUpdatesListeners:Ljava/util/List;

    .line 22
    .line 23
    iput p1, p0, Landroidx/camera/core/processing/SurfaceEdge;->mTargets:I

    .line 24
    .line 25
    iput p2, p0, Landroidx/camera/core/processing/SurfaceEdge;->mFormat:I

    .line 26
    .line 27
    iput-object p3, p0, Landroidx/camera/core/processing/SurfaceEdge;->mStreamSpec:Landroidx/camera/core/impl/StreamSpec;

    .line 28
    .line 29
    iput-object p4, p0, Landroidx/camera/core/processing/SurfaceEdge;->mSensorToBufferTransform:Landroid/graphics/Matrix;

    .line 30
    .line 31
    iput-boolean p5, p0, Landroidx/camera/core/processing/SurfaceEdge;->mHasCameraTransform:Z

    .line 32
    .line 33
    iput-object p6, p0, Landroidx/camera/core/processing/SurfaceEdge;->mCropRect:Landroid/graphics/Rect;

    .line 34
    .line 35
    iput p7, p0, Landroidx/camera/core/processing/SurfaceEdge;->mRotationDegrees:I

    .line 36
    .line 37
    iput p8, p0, Landroidx/camera/core/processing/SurfaceEdge;->mTargetRotation:I

    .line 38
    .line 39
    iput-boolean p9, p0, Landroidx/camera/core/processing/SurfaceEdge;->mMirroring:Z

    .line 40
    .line 41
    new-instance p1, Landroidx/camera/core/processing/SurfaceEdge$SettableSurface;

    .line 42
    .line 43
    invoke-virtual {p3}, Landroidx/camera/core/impl/StreamSpec;->getResolution()Landroid/util/Size;

    .line 44
    .line 45
    .line 46
    move-result-object p3

    .line 47
    invoke-direct {p1, p3, p2}, Landroidx/camera/core/processing/SurfaceEdge$SettableSurface;-><init>(Landroid/util/Size;I)V

    .line 48
    .line 49
    .line 50
    iput-object p1, p0, Landroidx/camera/core/processing/SurfaceEdge;->mSettableSurface:Landroidx/camera/core/processing/SurfaceEdge$SettableSurface;

    .line 51
    .line 52
    return-void
.end method

.method private checkAndSetHasConsumer()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/camera/core/processing/SurfaceEdge;->mHasConsumer:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    xor-int/2addr v0, v1

    .line 5
    const-string v2, "Consumer can only be linked once."

    .line 6
    .line 7
    invoke-static {v0, v2}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iput-boolean v1, p0, Landroidx/camera/core/processing/SurfaceEdge;->mHasConsumer:Z

    .line 11
    .line 12
    return-void
.end method

.method private checkNotClosed()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/camera/core/processing/SurfaceEdge;->mIsClosed:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    const-string v1, "Edge is already closed."

    .line 6
    .line 7
    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private synthetic lambda$createSurfaceOutputFuture$2(Landroidx/camera/core/processing/SurfaceEdge$SettableSurface;ILandroidx/camera/core/SurfaceOutput$CameraInputInfo;Landroidx/camera/core/SurfaceOutput$CameraInputInfo;Landroid/view/Surface;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 9

    .line 1
    invoke-static {p5}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p1}, Landroidx/camera/core/impl/DeferrableSurface;->incrementUseCount()V
    :try_end_0
    .catch Landroidx/camera/core/impl/DeferrableSurface$SurfaceClosedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    .line 7
    new-instance v8, Landroidx/camera/core/processing/SurfaceOutputImpl;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/camera/core/processing/SurfaceEdge;->getTargets()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    iget-object v0, p0, Landroidx/camera/core/processing/SurfaceEdge;->mStreamSpec:Landroidx/camera/core/impl/StreamSpec;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/camera/core/impl/StreamSpec;->getResolution()Landroid/util/Size;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    iget-object v7, p0, Landroidx/camera/core/processing/SurfaceEdge;->mSensorToBufferTransform:Landroid/graphics/Matrix;

    .line 20
    .line 21
    move-object v0, v8

    .line 22
    move-object v1, p5

    .line 23
    move v3, p2

    .line 24
    move-object v5, p3

    .line 25
    move-object v6, p4

    .line 26
    invoke-direct/range {v0 .. v7}, Landroidx/camera/core/processing/SurfaceOutputImpl;-><init>(Landroid/view/Surface;IILandroid/util/Size;Landroidx/camera/core/SurfaceOutput$CameraInputInfo;Landroidx/camera/core/SurfaceOutput$CameraInputInfo;Landroid/graphics/Matrix;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v8}, Landroidx/camera/core/processing/SurfaceOutputImpl;->getCloseFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    new-instance p3, Landroidx/camera/core/processing/뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉;

    .line 34
    .line 35
    const/4 p4, 0x1

    .line 36
    invoke-direct {p3, p1, p4}, Landroidx/camera/core/processing/뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉;-><init>(Landroidx/camera/core/processing/SurfaceEdge$SettableSurface;I)V

    .line 37
    .line 38
    .line 39
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    .line 40
    .line 41
    .line 42
    move-result-object p4

    .line 43
    invoke-interface {p2, p3, p4}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v8}, Landroidx/camera/core/processing/SurfaceEdge$SettableSurface;->setConsumer(Landroidx/camera/core/processing/SurfaceOutputImpl;)V

    .line 47
    .line 48
    .line 49
    invoke-static {v8}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    return-object p1

    .line 54
    :catch_0
    move-exception p1

    .line 55
    invoke-static {p1}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    return-object p1
.end method

.method private synthetic lambda$createSurfaceRequest$0()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/camera/core/processing/SurfaceEdge;->mIsClosed:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/camera/core/processing/SurfaceEdge;->invalidate()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private synthetic lambda$createSurfaceRequest$1()V
    .locals 3

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, L땧땝딝뒐듨땬뎠땸듬땻딻땐땲딎뒾돛땐든돝땬듐든땅뎬뒉둘딁뒙듬돳돨땡뒐땭돛땸딠땠돳뒝듽땣듐뒷땍딞딀땸땩땟땋땮딜땣뒼듽되땣뒨땹뒾듼땧돸딜땠땯뒷듟뎰땦뒻딞둘땭딟땅됐딸돴딝땨딻뒬뒼뎻뎹딅듰듰뒨딽뒼둬둘듔돴땠듨딄딐될땵뒨딟딐땡도딀뎸땫뒙땩땁땧된땫땍땁돵둣땣뒘딞따딁둡땠딽뒉;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v1, p0, v2}, L땧땝딝뒐듨땬뎠땸듬땻딻땐땲딎뒾돛땐든돝땬듐든땅뎬뒉둘딁뒙듬돳돨땡뒐땭돛땸딠땠돳뒝듽땣듐뒷땍딞딀땸땩땟땋땮딜땣뒼듽되땣뒨땹뒾듼땧돸딜땠땯뒷듟뎰땦뒻딞둘땭딟땅됐딸돴딝땨딻뒬뒼뎻뎹딅듰듰뒨딽뒼둬둘듔돴땠듨딄딐될땵뒨딟딐땡도딀뎸땫뒙땩땁땧된땫땍땁돵둣땣뒘딞따딁둡땠딽뒉;-><init>(Landroidx/camera/core/processing/SurfaceEdge;I)V

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private synthetic lambda$updateTransformation$3(II)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/camera/core/processing/SurfaceEdge;->mRotationDegrees:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, p1, :cond_0

    .line 5
    .line 6
    iput p1, p0, Landroidx/camera/core/processing/SurfaceEdge;->mRotationDegrees:I

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    iget v0, p0, Landroidx/camera/core/processing/SurfaceEdge;->mTargetRotation:I

    .line 12
    .line 13
    if-eq v0, p2, :cond_1

    .line 14
    .line 15
    iput p2, p0, Landroidx/camera/core/processing/SurfaceEdge;->mTargetRotation:I

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    move v1, p1

    .line 19
    :goto_1
    if-eqz v1, :cond_2

    .line 20
    .line 21
    invoke-direct {p0}, Landroidx/camera/core/processing/SurfaceEdge;->notifyTransformationInfoUpdate()V

    .line 22
    .line 23
    .line 24
    :cond_2
    return-void
.end method

.method private notifyTransformationInfoUpdate()V
    .locals 6
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/core/processing/SurfaceEdge;->mCropRect:Landroid/graphics/Rect;

    .line 5
    .line 6
    iget v1, p0, Landroidx/camera/core/processing/SurfaceEdge;->mRotationDegrees:I

    .line 7
    .line 8
    iget v2, p0, Landroidx/camera/core/processing/SurfaceEdge;->mTargetRotation:I

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/camera/core/processing/SurfaceEdge;->hasCameraTransform()Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    iget-object v4, p0, Landroidx/camera/core/processing/SurfaceEdge;->mSensorToBufferTransform:Landroid/graphics/Matrix;

    .line 15
    .line 16
    iget-boolean v5, p0, Landroidx/camera/core/processing/SurfaceEdge;->mMirroring:Z

    .line 17
    .line 18
    invoke-static/range {v0 .. v5}, Landroidx/camera/core/SurfaceRequest$TransformationInfo;->of(Landroid/graphics/Rect;IIZLandroid/graphics/Matrix;Z)Landroidx/camera/core/SurfaceRequest$TransformationInfo;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Landroidx/camera/core/processing/SurfaceEdge;->mProviderSurfaceRequest:Landroidx/camera/core/SurfaceRequest;

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Landroidx/camera/core/SurfaceRequest;->updateTransformationInfo(Landroidx/camera/core/SurfaceRequest$TransformationInfo;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v1, p0, Landroidx/camera/core/processing/SurfaceEdge;->mTransformationUpdatesListeners:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Landroidx/core/util/Consumer;

    .line 46
    .line 47
    invoke-interface {v2, v0}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    return-void
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroidx/camera/core/processing/SurfaceEdge;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/camera/core/processing/SurfaceEdge;->lambda$createSurfaceRequest$1()V

    return-void
.end method

.method public static synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Landroidx/camera/core/processing/SurfaceEdge;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/camera/core/processing/SurfaceEdge;->lambda$createSurfaceRequest$0()V

    return-void
.end method

.method public static synthetic 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Landroidx/camera/core/processing/SurfaceEdge;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/camera/core/processing/SurfaceEdge;->lambda$updateTransformation$3(II)V

    return-void
.end method

.method public static synthetic 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(Landroidx/camera/core/processing/SurfaceEdge;Landroidx/camera/core/processing/SurfaceEdge$SettableSurface;ILandroidx/camera/core/SurfaceOutput$CameraInputInfo;Landroidx/camera/core/SurfaceOutput$CameraInputInfo;Landroid/view/Surface;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Landroidx/camera/core/processing/SurfaceEdge;->lambda$createSurfaceOutputFuture$2(Landroidx/camera/core/processing/SurfaceEdge$SettableSurface;ILandroidx/camera/core/SurfaceOutput$CameraInputInfo;Landroidx/camera/core/SurfaceOutput$CameraInputInfo;Landroid/view/Surface;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addOnInvalidatedListener(Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroidx/camera/core/processing/SurfaceEdge;->checkNotClosed()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroidx/camera/core/processing/SurfaceEdge;->mOnInvalidatedListeners:Ljava/util/Set;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public addTransformationUpdateListener(Landroidx/core/util/Consumer;)V
    .locals 1
    .param p1    # Landroidx/core/util/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer<",
            "Landroidx/camera/core/SurfaceRequest$TransformationInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/core/processing/SurfaceEdge;->mTransformationUpdatesListeners:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final close()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/core/processing/SurfaceEdge;->mSettableSurface:Landroidx/camera/core/processing/SurfaceEdge$SettableSurface;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/camera/core/processing/SurfaceEdge$SettableSurface;->close()V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Landroidx/camera/core/processing/SurfaceEdge;->mIsClosed:Z

    .line 11
    .line 12
    return-void
.end method

.method public createSurfaceOutputFuture(ILandroidx/camera/core/SurfaceOutput$CameraInputInfo;Landroidx/camera/core/SurfaceOutput$CameraInputInfo;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 8
    .param p2    # Landroidx/camera/core/SurfaceOutput$CameraInputInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/camera/core/SurfaceOutput$CameraInputInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/camera/core/SurfaceOutput$CameraInputInfo;",
            "Landroidx/camera/core/SurfaceOutput$CameraInputInfo;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/camera/core/SurfaceOutput;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroidx/camera/core/processing/SurfaceEdge;->checkNotClosed()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Landroidx/camera/core/processing/SurfaceEdge;->checkAndSetHasConsumer()V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Landroidx/camera/core/processing/SurfaceEdge;->mSettableSurface:Landroidx/camera/core/processing/SurfaceEdge$SettableSurface;

    .line 11
    .line 12
    invoke-virtual {v2}, Landroidx/camera/core/impl/DeferrableSurface;->getSurface()Lcom/google/common/util/concurrent/ListenableFuture;

    .line 13
    .line 14
    .line 15
    move-result-object v6

    .line 16
    new-instance v7, Landroidx/camera/core/processing/뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫;

    .line 17
    .line 18
    move-object v0, v7

    .line 19
    move-object v1, p0

    .line 20
    move v3, p1

    .line 21
    move-object v4, p2

    .line 22
    move-object v5, p3

    .line 23
    invoke-direct/range {v0 .. v5}, Landroidx/camera/core/processing/뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫;-><init>(Landroidx/camera/core/processing/SurfaceEdge;Landroidx/camera/core/processing/SurfaceEdge$SettableSurface;ILandroidx/camera/core/SurfaceOutput$CameraInputInfo;Landroidx/camera/core/SurfaceOutput$CameraInputInfo;)V

    .line 24
    .line 25
    .line 26
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {v6, v7, p1}, Landroidx/camera/core/impl/utils/futures/Futures;->transformAsync(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/camera/core/impl/utils/futures/AsyncFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    return-object p1
.end method

.method public createSurfaceRequest(Landroidx/camera/core/impl/CameraInternal;)Landroidx/camera/core/SurfaceRequest;
    .locals 1
    .param p1    # Landroidx/camera/core/impl/CameraInternal;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Landroidx/camera/core/processing/SurfaceEdge;->createSurfaceRequest(Landroidx/camera/core/impl/CameraInternal;Z)Landroidx/camera/core/SurfaceRequest;

    move-result-object p1

    return-object p1
.end method

.method public createSurfaceRequest(Landroidx/camera/core/impl/CameraInternal;Z)Landroidx/camera/core/SurfaceRequest;
    .locals 8
    .param p1    # Landroidx/camera/core/impl/CameraInternal;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 3
    invoke-direct {p0}, Landroidx/camera/core/processing/SurfaceEdge;->checkNotClosed()V

    .line 4
    new-instance v7, Landroidx/camera/core/SurfaceRequest;

    iget-object v0, p0, Landroidx/camera/core/processing/SurfaceEdge;->mStreamSpec:Landroidx/camera/core/impl/StreamSpec;

    .line 5
    invoke-virtual {v0}, Landroidx/camera/core/impl/StreamSpec;->getResolution()Landroid/util/Size;

    move-result-object v1

    iget-object v0, p0, Landroidx/camera/core/processing/SurfaceEdge;->mStreamSpec:Landroidx/camera/core/impl/StreamSpec;

    .line 6
    invoke-virtual {v0}, Landroidx/camera/core/impl/StreamSpec;->getDynamicRange()Landroidx/camera/core/DynamicRange;

    move-result-object v4

    iget-object v0, p0, Landroidx/camera/core/processing/SurfaceEdge;->mStreamSpec:Landroidx/camera/core/impl/StreamSpec;

    .line 7
    invoke-virtual {v0}, Landroidx/camera/core/impl/StreamSpec;->getExpectedFrameRateRange()Landroid/util/Range;

    move-result-object v5

    new-instance v6, L땧땝딝뒐듨땬뎠땸듬땻딻땐땲딎뒾돛땐든돝땬듐든땅뎬뒉둘딁뒙듬돳돨땡뒐땭돛땸딠땠돳뒝듽땣듐뒷땍딞딀땸땩땟땋땮딜땣뒼듽되땣뒨땹뒾듼땧돸딜땠땯뒷듟뎰땦뒻딞둘땭딟땅됐딸돴딝땨딻뒬뒼뎻뎹딅듰듰뒨딽뒼둬둘듔돴땠듨딄딐될땵뒨딟딐땡도딀뎸땫뒙땩땁땧된땫땍땁돵둣땣뒘딞따딁둡땠딽뒉;

    const/4 v0, 0x0

    invoke-direct {v6, p0, v0}, L땧땝딝뒐듨땬뎠땸듬땻딻땐땲딎뒾돛땐든돝땬듐든땅뎬뒉둘딁뒙듬돳돨땡뒐땭돛땸딠땠돳뒝듽땣듐뒷땍딞딀땸땩땟땋땮딜땣뒼듽되땣뒨땹뒾듼땧돸딜땠땯뒷듟뎰땦뒻딞둘땭딟땅됐딸돴딝땨딻뒬뒼뎻뎹딅듰듰뒨딽뒼둬둘듔돴땠듨딄딐될땵뒨딟딐땡도딀뎸땫뒙땩땁땧된땫땍땁돵둣땣뒘딞따딁둡땠딽뒉;-><init>(Landroidx/camera/core/processing/SurfaceEdge;I)V

    move-object v0, v7

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Landroidx/camera/core/SurfaceRequest;-><init>(Landroid/util/Size;Landroidx/camera/core/impl/CameraInternal;ZLandroidx/camera/core/DynamicRange;Landroid/util/Range;Ljava/lang/Runnable;)V

    .line 8
    :try_start_0
    invoke-virtual {v7}, Landroidx/camera/core/SurfaceRequest;->getDeferrableSurface()Landroidx/camera/core/impl/DeferrableSurface;

    move-result-object p1

    .line 9
    iget-object p2, p0, Landroidx/camera/core/processing/SurfaceEdge;->mSettableSurface:Landroidx/camera/core/processing/SurfaceEdge$SettableSurface;

    .line 10
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroidx/camera/core/processing/뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Landroidx/camera/core/processing/뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉;-><init>(Landroidx/camera/core/processing/SurfaceEdge$SettableSurface;I)V

    invoke-virtual {p2, p1, v0}, Landroidx/camera/core/processing/SurfaceEdge$SettableSurface;->setProvider(Landroidx/camera/core/impl/DeferrableSurface;Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {p2}, Landroidx/camera/core/impl/DeferrableSurface;->getTerminationFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p2

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, L땨뎬됨뎰땔딜딁딞땣딹듨뎻땝땲딎땻뒷돵딤땦땐뒾딞돳땲땫땻듬땐됐돼둬따뒬땀딠듔딅땭땨땣듟뒨땜땨땀뒈땋뎡뎽돝뒵된땹딅땔뒛땲딸딅됐땸딜뒻땣뒐뒛뒛뎸땋돶뎹땩땁돨득돝뎰땟듽땩뎻딸땁딟뎹뎽땐땥땤땸뒼딄되땔됐뒘뎽돰땭땻땳딨돼딀돨됴딌땍땅땤딝뒋뒨딝돷돶됫딄듐땱딞땸땱따돛딞땃땄듽;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, L땨뎬됨뎰땔딜딁딞땣딹듨뎻땝땲딎땻뒷돵딤땦땐뒾딞돳땲땫땻듬땐됐돼둬따뒬땀딠듔딅땭땨땣듟뒨땜땨땀뒈땋뎡뎽돝뒵된땹딅땔뒛땲딸딅됐땸딜뒻땣뒐뒛뒛뎸땋돶뎹땩땁돨득돝뎰땟듽땩뎻딸땁딟뎹뎽땐땥땤땸뒼딄되땔됐뒘뎽돰땭땻땳딨돼딀돨됴딌땍땅땤딝뒋뒨딝돷돶됫딄듐땱딞땸땱따돛딞땃땄듽;-><init>(Landroidx/camera/core/impl/DeferrableSurface;I)V

    .line 12
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 13
    invoke-interface {p2, v0, p1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catch Landroidx/camera/core/impl/DeferrableSurface$SurfaceClosedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    .line 14
    :cond_0
    :goto_0
    iput-object v7, p0, Landroidx/camera/core/processing/SurfaceEdge;->mProviderSurfaceRequest:Landroidx/camera/core/SurfaceRequest;

    .line 15
    invoke-direct {p0}, Landroidx/camera/core/processing/SurfaceEdge;->notifyTransformationInfoUpdate()V

    return-object v7

    .line 16
    :goto_1
    invoke-virtual {v7}, Landroidx/camera/core/SurfaceRequest;->willNotProvideSurface()Z

    .line 17
    throw p1

    .line 18
    :goto_2
    new-instance p2, Ljava/lang/AssertionError;

    const-string v0, "Surface is somehow already closed"

    invoke-direct {p2, v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final disconnect()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroidx/camera/core/processing/SurfaceEdge;->checkNotClosed()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroidx/camera/core/processing/SurfaceEdge;->mSettableSurface:Landroidx/camera/core/processing/SurfaceEdge$SettableSurface;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/camera/core/processing/SurfaceEdge$SettableSurface;->close()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public getCropRect()Landroid/graphics/Rect;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/processing/SurfaceEdge;->mCropRect:Landroid/graphics/Rect;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDeferrableSurface()Landroidx/camera/core/impl/DeferrableSurface;
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroidx/camera/core/processing/SurfaceEdge;->checkNotClosed()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Landroidx/camera/core/processing/SurfaceEdge;->checkAndSetHasConsumer()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroidx/camera/core/processing/SurfaceEdge;->mSettableSurface:Landroidx/camera/core/processing/SurfaceEdge$SettableSurface;

    .line 11
    .line 12
    return-object v0
.end method

.method public getDeferrableSurfaceForTesting()Landroidx/camera/core/impl/DeferrableSurface;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/processing/SurfaceEdge;->mSettableSurface:Landroidx/camera/core/processing/SurfaceEdge$SettableSurface;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFormat()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/core/processing/SurfaceEdge;->mFormat:I

    .line 2
    .line 3
    return v0
.end method

.method public getRotationDegrees()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/core/processing/SurfaceEdge;->mRotationDegrees:I

    .line 2
    .line 3
    return v0
.end method

.method public getSensorToBufferTransform()Landroid/graphics/Matrix;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/processing/SurfaceEdge;->mSensorToBufferTransform:Landroid/graphics/Matrix;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStreamSpec()Landroidx/camera/core/impl/StreamSpec;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/processing/SurfaceEdge;->mStreamSpec:Landroidx/camera/core/impl/StreamSpec;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTargets()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/core/processing/SurfaceEdge;->mTargets:I

    .line 2
    .line 3
    return v0
.end method

.method public hasCameraTransform()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/camera/core/processing/SurfaceEdge;->mHasCameraTransform:Z

    .line 2
    .line 3
    return v0
.end method

.method public hasProvider()Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/processing/SurfaceEdge;->mSettableSurface:Landroidx/camera/core/processing/SurfaceEdge$SettableSurface;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/camera/core/processing/SurfaceEdge$SettableSurface;->hasProvider()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public invalidate()V
    .locals 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroidx/camera/core/processing/SurfaceEdge;->checkNotClosed()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroidx/camera/core/processing/SurfaceEdge;->mSettableSurface:Landroidx/camera/core/processing/SurfaceEdge$SettableSurface;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/camera/core/processing/SurfaceEdge$SettableSurface;->canSetProvider()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Landroidx/camera/core/processing/SurfaceEdge;->mHasConsumer:Z

    .line 18
    .line 19
    iget-object v0, p0, Landroidx/camera/core/processing/SurfaceEdge;->mSettableSurface:Landroidx/camera/core/processing/SurfaceEdge$SettableSurface;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/camera/core/processing/SurfaceEdge$SettableSurface;->close()V

    .line 22
    .line 23
    .line 24
    new-instance v0, Landroidx/camera/core/processing/SurfaceEdge$SettableSurface;

    .line 25
    .line 26
    iget-object v1, p0, Landroidx/camera/core/processing/SurfaceEdge;->mStreamSpec:Landroidx/camera/core/impl/StreamSpec;

    .line 27
    .line 28
    invoke-virtual {v1}, Landroidx/camera/core/impl/StreamSpec;->getResolution()Landroid/util/Size;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iget v2, p0, Landroidx/camera/core/processing/SurfaceEdge;->mFormat:I

    .line 33
    .line 34
    invoke-direct {v0, v1, v2}, Landroidx/camera/core/processing/SurfaceEdge$SettableSurface;-><init>(Landroid/util/Size;I)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Landroidx/camera/core/processing/SurfaceEdge;->mSettableSurface:Landroidx/camera/core/processing/SurfaceEdge$SettableSurface;

    .line 38
    .line 39
    iget-object v0, p0, Landroidx/camera/core/processing/SurfaceEdge;->mOnInvalidatedListeners:Ljava/util/Set;

    .line 40
    .line 41
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Ljava/lang/Runnable;

    .line 56
    .line 57
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    return-void
.end method

.method public isClosed()Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroidx/camera/core/processing/SurfaceEdge;->mIsClosed:Z

    .line 2
    .line 3
    return v0
.end method

.method public isMirroring()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/camera/core/processing/SurfaceEdge;->mMirroring:Z

    .line 2
    .line 3
    return v0
.end method

.method public removeTransformationUpdateListener(Landroidx/core/util/Consumer;)V
    .locals 1
    .param p1    # Landroidx/core/util/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer<",
            "Landroidx/camera/core/SurfaceRequest$TransformationInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/core/processing/SurfaceEdge;->mTransformationUpdatesListeners:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setProvider(Landroidx/camera/core/impl/DeferrableSurface;)V
    .locals 3
    .param p1    # Landroidx/camera/core/impl/DeferrableSurface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroidx/camera/core/processing/SurfaceEdge;->checkNotClosed()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroidx/camera/core/processing/SurfaceEdge;->mSettableSurface:Landroidx/camera/core/processing/SurfaceEdge$SettableSurface;

    .line 8
    .line 9
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    new-instance v1, Landroidx/camera/core/processing/뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-direct {v1, v0, v2}, Landroidx/camera/core/processing/뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉;-><init>(Landroidx/camera/core/processing/SurfaceEdge$SettableSurface;I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1, v1}, Landroidx/camera/core/processing/SurfaceEdge$SettableSurface;->setProvider(Landroidx/camera/core/impl/DeferrableSurface;Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public updateTransformation(I)V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Landroidx/camera/core/processing/SurfaceEdge;->updateTransformation(II)V

    return-void
.end method

.method public updateTransformation(II)V
    .locals 1

    .line 2
    new-instance v0, L땨됩딸듨듬뎹땤뒬땟땜땸딀뎸돝돨뒻둣딟땄땍뎨따땃뒝뒋돛돠땀땹돶땃됨딎땰듻딞뎨뒘드뒉둡듌돴듟듽땋땝뒻딤뒹땱돸뎻땳돤뒬듐딹든됨둣땅뎽둬땨돴땩딻돤들딟땁딸돤득뒐두땧뎻듨땱뎽되됩둘땯땁땡두둬돷돠땅듰뒾뒵돛듼된땃땩디둠뒻땍뒻땭딄됴도뒈둥되땬땻뎬돳돸뎽드뒤됐뒘땡따딤뒼둘뎽돠;

    invoke-direct {v0, p0, p1, p2}, L땨됩딸듨듬뎹땤뒬땟땜땸딀뎸돝돨뒻둣딟땄땍뎨따땃뒝뒋돛돠땀땹돶땃됨딎땰듻딞뎨뒘드뒉둡듌돴듟듽땋땝뒻딤뒹땱돸뎻땳돤뒬듐딹든됨둣땅뎽둬땨돴땩딻돤들딟땁딸돤득뒐두땧뎻듨땱뎽되됩둘땯땁땡두둬돷돠땅듰뒾뒵돛듼된땃땩디둠뒻땍뒻땭딄됴도뒈둥되땬땻뎬돳돸뎽드뒤됐뒘땡따딤뒼둘뎽돠;-><init>(Landroidx/camera/core/processing/SurfaceEdge;II)V

    invoke-static {v0}, Landroidx/camera/core/impl/utils/Threads;->runOnMain(Ljava/lang/Runnable;)V

    return-void
.end method
