.class final Landroidx/camera/camera2/internal/ZoomControl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/internal/ZoomControl$ZoomImpl;
    }
.end annotation


# static fields
.field public static final DEFAULT_ZOOM_RATIO:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "ZoomControl"


# instance fields
.field private final mCamera2CameraControlImpl:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

.field private mCaptureResultListener:Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CaptureResultListener;

.field private final mCurrentZoomState:Landroidx/camera/camera2/internal/ZoomStateImpl;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mCurrentZoomState"
    .end annotation
.end field

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private mIsActive:Z

.field final mZoomImpl:Landroidx/camera/camera2/internal/ZoomControl$ZoomImpl;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mZoomStateLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Landroidx/camera/core/ZoomState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/internal/Camera2CameraControlImpl;Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1    # Landroidx/camera/camera2/internal/Camera2CameraControlImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/concurrent/Executor;
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
    iput-boolean v0, p0, Landroidx/camera/camera2/internal/ZoomControl;->mIsActive:Z

    .line 6
    .line 7
    new-instance v0, Landroidx/camera/camera2/internal/ZoomControl$1;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Landroidx/camera/camera2/internal/ZoomControl$1;-><init>(Landroidx/camera/camera2/internal/ZoomControl;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Landroidx/camera/camera2/internal/ZoomControl;->mCaptureResultListener:Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CaptureResultListener;

    .line 13
    .line 14
    iput-object p1, p0, Landroidx/camera/camera2/internal/ZoomControl;->mCamera2CameraControlImpl:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    .line 15
    .line 16
    iput-object p3, p0, Landroidx/camera/camera2/internal/ZoomControl;->mExecutor:Ljava/util/concurrent/Executor;

    .line 17
    .line 18
    invoke-static {p2}, Landroidx/camera/camera2/internal/ZoomControl;->createZoomImpl(Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;)Landroidx/camera/camera2/internal/ZoomControl$ZoomImpl;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    iput-object p2, p0, Landroidx/camera/camera2/internal/ZoomControl;->mZoomImpl:Landroidx/camera/camera2/internal/ZoomControl$ZoomImpl;

    .line 23
    .line 24
    new-instance p3, Landroidx/camera/camera2/internal/ZoomStateImpl;

    .line 25
    .line 26
    invoke-interface {p2}, Landroidx/camera/camera2/internal/ZoomControl$ZoomImpl;->getMaxZoom()F

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-interface {p2}, Landroidx/camera/camera2/internal/ZoomControl$ZoomImpl;->getMinZoom()F

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    invoke-direct {p3, v0, p2}, Landroidx/camera/camera2/internal/ZoomStateImpl;-><init>(FF)V

    .line 35
    .line 36
    .line 37
    iput-object p3, p0, Landroidx/camera/camera2/internal/ZoomControl;->mCurrentZoomState:Landroidx/camera/camera2/internal/ZoomStateImpl;

    .line 38
    .line 39
    const/high16 p2, 0x3f800000    # 1.0f

    .line 40
    .line 41
    invoke-virtual {p3, p2}, Landroidx/camera/camera2/internal/ZoomStateImpl;->setZoomRatio(F)V

    .line 42
    .line 43
    .line 44
    new-instance p2, Landroidx/lifecycle/MutableLiveData;

    .line 45
    .line 46
    invoke-static {p3}, Landroidx/camera/core/internal/ImmutableZoomState;->create(Landroidx/camera/core/ZoomState;)Landroidx/camera/core/ZoomState;

    .line 47
    .line 48
    .line 49
    move-result-object p3

    .line 50
    invoke-direct {p2, p3}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iput-object p2, p0, Landroidx/camera/camera2/internal/ZoomControl;->mZoomStateLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 54
    .line 55
    iget-object p2, p0, Landroidx/camera/camera2/internal/ZoomControl;->mCaptureResultListener:Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CaptureResultListener;

    .line 56
    .line 57
    invoke-virtual {p1, p2}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->addCaptureResultListener(Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CaptureResultListener;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method private static createZoomImpl(Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;)Landroidx/camera/camera2/internal/ZoomControl$ZoomImpl;
    .locals 1
    .param p0    # Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Landroidx/camera/camera2/internal/ZoomControl;->isAndroidRZoomSupported(Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroidx/camera/camera2/internal/AndroidRZoomImpl;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Landroidx/camera/camera2/internal/AndroidRZoomImpl;-><init>(Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;)V

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    new-instance v0, Landroidx/camera/camera2/internal/CropRegionZoomImpl;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Landroidx/camera/camera2/internal/CropRegionZoomImpl;-><init>(Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public static getDefaultZoomState(Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;)Landroidx/camera/core/ZoomState;
    .locals 2

    .line 1
    invoke-static {p0}, Landroidx/camera/camera2/internal/ZoomControl;->createZoomImpl(Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;)Landroidx/camera/camera2/internal/ZoomControl$ZoomImpl;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Landroidx/camera/camera2/internal/ZoomStateImpl;

    .line 6
    .line 7
    invoke-interface {p0}, Landroidx/camera/camera2/internal/ZoomControl$ZoomImpl;->getMaxZoom()F

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-interface {p0}, Landroidx/camera/camera2/internal/ZoomControl$ZoomImpl;->getMinZoom()F

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    invoke-direct {v0, v1, p0}, Landroidx/camera/camera2/internal/ZoomStateImpl;-><init>(FF)V

    .line 16
    .line 17
    .line 18
    const/high16 p0, 0x3f800000    # 1.0f

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Landroidx/camera/camera2/internal/ZoomStateImpl;->setZoomRatio(F)V

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Landroidx/camera/core/internal/ImmutableZoomState;->create(Landroidx/camera/core/ZoomState;)Landroidx/camera/core/ZoomState;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method private static getZoomRatioRange(Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;)Landroid/util/Range;
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1e
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;",
            ")",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, L뎨땋된땫딜딜땮듔든득됫뒻뒬땃돰땔땠땫뒉딜돛둑땅뒙든듨땁딁땧땦뒼딎듨딽되땩뒤됐땫돳뎻뎨듰딞됐뎸땯뎻땸뎨땋딞뎰딠딅뒐됩뒐뎡뒹딅딞뎽땅둑땟땧땣듸됨뒷땤딀뒉돨딎둠됫딁땳뎰됨땁땧되땔들뒻뎠땨뎠딜뒘땻땤뎰돤딜땦땩딃돸둣땣됐듐땃뒛뒷둔두땃딽땤됐딻땝둔딞뎽돝된땫뒻뎬돛땨딹든듌;->뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두()Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/util/Range;
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    return-object p0

    .line 12
    :catch_0
    move-exception p0

    .line 13
    const-string v0, "ZoomControl"

    .line 14
    .line 15
    const-string v1, "AssertionError, fail to get camera characteristic."

    .line 16
    .line 17
    invoke-static {v0, v1, p0}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    return-object p0
.end method

.method public static isAndroidRZoomSupported(Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;)Z
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1e

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Landroidx/camera/camera2/internal/ZoomControl;->getZoomRatioRange(Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;)Landroid/util/Range;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method

.method private synthetic lambda$setLinearZoom$2(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroidx/camera/core/ZoomState;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/internal/ZoomControl;->submitCameraZoomRatio(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroidx/camera/core/ZoomState;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$setLinearZoom$3(Landroidx/camera/core/ZoomState;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/ZoomControl;->mExecutor:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    new-instance v1, Landroidx/camera/camera2/internal/뎻됩듌뎡듼둔땁뒷땨땱땀땪뒹듌뒼둣딁딐둑뒨땬뒙딨땹듻땦두땮된뒙딎딄딸둣뎡듸둣뒐돤뒀뎰뎡될땋땳뒵뒀땳땱뒹땣땥딀듔둡둘땟듬뒷돳뒷딟뒵둥땫땨땅딨땅듨땅돵땵뒐됐땹땠득둬드땭딌돷땍뒐땀땲땭뎡뎰땄됫뒨땡뎹땜딨뎹뒐돠디돛딤딨뎰딁땟딤됴땸뎬뒾듐뒹돸뒤듐돵땸땨뎹뒈뎽따됨돵둔돴듻땸;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v1, p0, p2, p1, v2}, Landroidx/camera/camera2/internal/뎻됩듌뎡듼둔땁뒷땨땱땀땪뒹듌뒼둣딁딐둑뒨땬뒙딨땹듻땦두땮된뒙딎딄딸둣뎡듸둣뒐돤뒀뎰뎡될땋땳뒵뒀땳땱뒹땣땥딀듔둡둘땟듬뒷돳뒷딟뒵둥땫땨땅딨땅듨땅돵땵뒐됐땹땠득둬드땭딌돷땍뒐땀땲땭뎡뎰땄됫뒨땡뎹땜딨뎹뒐돠디돛딤딨뎰딁땟딤됴땸뎬뒾듐뒹돸뒤듐돵땸땨뎹뒈뎽따됨돵둔돴듻땸;-><init>(Landroidx/camera/camera2/internal/ZoomControl;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroidx/camera/core/ZoomState;I)V

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    const-string p1, "setLinearZoom"

    .line 13
    .line 14
    return-object p1
.end method

.method private synthetic lambda$setZoomRatio$0(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroidx/camera/core/ZoomState;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/internal/ZoomControl;->submitCameraZoomRatio(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroidx/camera/core/ZoomState;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$setZoomRatio$1(Landroidx/camera/core/ZoomState;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/ZoomControl;->mExecutor:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    new-instance v1, Landroidx/camera/camera2/internal/뎻됩듌뎡듼둔땁뒷땨땱땀땪뒹듌뒼둣딁딐둑뒨땬뒙딨땹듻땦두땮된뒙딎딄딸둣뎡듸둣뒐돤뒀뎰뎡될땋땳뒵뒀땳땱뒹땣땥딀듔둡둘땟듬뒷돳뒷딟뒵둥땫땨땅딨땅듨땅돵땵뒐됐땹땠득둬드땭딌돷땍뒐땀땲땭뎡뎰땄됫뒨땡뎹땜딨뎹뒐돠디돛딤딨뎰딁땟딤됴땸뎬뒾듐뒹돸뒤듐돵땸땨뎹뒈뎽따됨돵둔돴듻땸;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p0, p2, p1, v2}, Landroidx/camera/camera2/internal/뎻됩듌뎡듼둔땁뒷땨땱땀땪뒹듌뒼둣딁딐둑뒨땬뒙딨땹듻땦두땮된뒙딎딄딸둣뎡듸둣뒐돤뒀뎰뎡될땋땳뒵뒀땳땱뒹땣땥딀듔둡둘땟듬뒷돳뒷딟뒵둥땫땨땅딨땅듨땅돵땵뒐됐땹땠득둬드땭딌돷땍뒐땀땲땭뎡뎰땄됫뒨땡뎹땜딨뎹뒐돠디돛딤딨뎰딁땟딤됴땸뎬뒾듐뒹돸뒤듐돵땸땨뎹뒈뎽따됨돵둔돴듻땸;-><init>(Landroidx/camera/camera2/internal/ZoomControl;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroidx/camera/core/ZoomState;I)V

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    const-string p1, "setZoomRatio"

    .line 13
    .line 14
    return-object p1
.end method

.method private submitCameraZoomRatio(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroidx/camera/core/ZoomState;)V
    .locals 2
    .param p1    # Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/ZoomState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<",
            "Ljava/lang/Void;",
            ">;",
            "Landroidx/camera/core/ZoomState;",
            ")V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroidx/camera/camera2/internal/ZoomControl;->mIsActive:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/camera/camera2/internal/ZoomControl;->mCurrentZoomState:Landroidx/camera/camera2/internal/ZoomStateImpl;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object p2, p0, Landroidx/camera/camera2/internal/ZoomControl;->mCurrentZoomState:Landroidx/camera/camera2/internal/ZoomStateImpl;

    .line 9
    .line 10
    const/high16 v1, 0x3f800000    # 1.0f

    .line 11
    .line 12
    invoke-virtual {p2, v1}, Landroidx/camera/camera2/internal/ZoomStateImpl;->setZoomRatio(F)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Landroidx/camera/camera2/internal/ZoomControl;->mCurrentZoomState:Landroidx/camera/camera2/internal/ZoomStateImpl;

    .line 16
    .line 17
    invoke-static {p2}, Landroidx/camera/core/internal/ImmutableZoomState;->create(Landroidx/camera/core/ZoomState;)Landroidx/camera/core/ZoomState;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    invoke-direct {p0, p2}, Landroidx/camera/camera2/internal/ZoomControl;->updateLiveData(Landroidx/camera/core/ZoomState;)V

    .line 23
    .line 24
    .line 25
    new-instance p2, Landroidx/camera/core/CameraControl$OperationCanceledException;

    .line 26
    .line 27
    const-string v0, "Camera is not active."

    .line 28
    .line 29
    invoke-direct {p2, v0}, Landroidx/camera/core/CameraControl$OperationCanceledException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p2}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    throw p1

    .line 39
    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/internal/ZoomControl;->mZoomImpl:Landroidx/camera/camera2/internal/ZoomControl$ZoomImpl;

    .line 40
    .line 41
    invoke-interface {p2}, Landroidx/camera/core/ZoomState;->getZoomRatio()F

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    invoke-interface {v0, p2, p1}, Landroidx/camera/camera2/internal/ZoomControl$ZoomImpl;->setZoomRatio(FLandroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Landroidx/camera/camera2/internal/ZoomControl;->mCamera2CameraControlImpl:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    .line 49
    .line 50
    invoke-virtual {p1}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->updateSessionConfigSynchronous()J

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method private updateLiveData(Landroidx/camera/core/ZoomState;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/camera/camera2/internal/ZoomControl;->mZoomStateLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/internal/ZoomControl;->mZoomStateLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroidx/camera/camera2/internal/ZoomControl;Landroidx/camera/core/ZoomState;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p1}, Landroidx/camera/camera2/internal/ZoomControl;->lambda$setZoomRatio$0(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroidx/camera/core/ZoomState;)V

    return-void
.end method

.method public static synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Landroidx/camera/camera2/internal/ZoomControl;Landroidx/camera/core/ZoomState;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p1}, Landroidx/camera/camera2/internal/ZoomControl;->lambda$setLinearZoom$2(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroidx/camera/core/ZoomState;)V

    return-void
.end method

.method public static synthetic 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Landroidx/camera/camera2/internal/ZoomControl;Landroidx/camera/core/ZoomState;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/internal/ZoomControl;->lambda$setLinearZoom$3(Landroidx/camera/core/ZoomState;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(Landroidx/camera/camera2/internal/ZoomControl;Landroidx/camera/core/ZoomState;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/internal/ZoomControl;->lambda$setZoomRatio$1(Landroidx/camera/core/ZoomState;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addZoomOption(Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;)V
    .locals 1
    .param p1    # Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/ZoomControl;->mZoomImpl:Landroidx/camera/camera2/internal/ZoomControl$ZoomImpl;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroidx/camera/camera2/internal/ZoomControl$ZoomImpl;->addRequestOption(Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getCropSensorRegion()Landroid/graphics/Rect;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/ZoomControl;->mZoomImpl:Landroidx/camera/camera2/internal/ZoomControl$ZoomImpl;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/camera/camera2/internal/ZoomControl$ZoomImpl;->getCropSensorRegion()Landroid/graphics/Rect;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getZoomState()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Landroidx/camera/core/ZoomState;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/ZoomControl;->mZoomStateLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public setActive(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/camera/camera2/internal/ZoomControl;->mIsActive:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Landroidx/camera/camera2/internal/ZoomControl;->mIsActive:Z

    .line 7
    .line 8
    if-nez p1, :cond_1

    .line 9
    .line 10
    iget-object p1, p0, Landroidx/camera/camera2/internal/ZoomControl;->mCurrentZoomState:Landroidx/camera/camera2/internal/ZoomStateImpl;

    .line 11
    .line 12
    monitor-enter p1

    .line 13
    :try_start_0
    iget-object v0, p0, Landroidx/camera/camera2/internal/ZoomControl;->mCurrentZoomState:Landroidx/camera/camera2/internal/ZoomStateImpl;

    .line 14
    .line 15
    const/high16 v1, 0x3f800000    # 1.0f

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroidx/camera/camera2/internal/ZoomStateImpl;->setZoomRatio(F)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Landroidx/camera/camera2/internal/ZoomControl;->mCurrentZoomState:Landroidx/camera/camera2/internal/ZoomStateImpl;

    .line 21
    .line 22
    invoke-static {v0}, Landroidx/camera/core/internal/ImmutableZoomState;->create(Landroidx/camera/core/ZoomState;)Landroidx/camera/core/ZoomState;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    invoke-direct {p0, v0}, Landroidx/camera/camera2/internal/ZoomControl;->updateLiveData(Landroidx/camera/core/ZoomState;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Landroidx/camera/camera2/internal/ZoomControl;->mZoomImpl:Landroidx/camera/camera2/internal/ZoomControl$ZoomImpl;

    .line 31
    .line 32
    invoke-interface {p1}, Landroidx/camera/camera2/internal/ZoomControl$ZoomImpl;->resetZoom()V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Landroidx/camera/camera2/internal/ZoomControl;->mCamera2CameraControlImpl:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->updateSessionConfigSynchronous()J

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    throw v0

    .line 44
    :cond_1
    :goto_0
    return-void
.end method

.method public setLinearZoom(F)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/ZoomControl;->mCurrentZoomState:Landroidx/camera/camera2/internal/ZoomStateImpl;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/internal/ZoomControl;->mCurrentZoomState:Landroidx/camera/camera2/internal/ZoomStateImpl;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroidx/camera/camera2/internal/ZoomStateImpl;->setLinearZoom(F)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Landroidx/camera/camera2/internal/ZoomControl;->mCurrentZoomState:Landroidx/camera/camera2/internal/ZoomStateImpl;

    .line 10
    .line 11
    invoke-static {p1}, Landroidx/camera/core/internal/ImmutableZoomState;->create(Landroidx/camera/core/ZoomState;)Landroidx/camera/core/ZoomState;

    .line 12
    .line 13
    .line 14
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    invoke-direct {p0, p1}, Landroidx/camera/camera2/internal/ZoomControl;->updateLiveData(Landroidx/camera/core/ZoomState;)V

    .line 17
    .line 18
    .line 19
    new-instance v0, Landroidx/camera/camera2/internal/뎻될두돳돰땐듰땪땱딜돛돼됐뒷따딽뒵땲듻땰뒈됐됐딄둔땅뎰돶뒝땐딄땄땱듐땧뒷듼뒋땳땋듔뒼땻돝뎽둬뎻뎡뎬땔땭듰돼딄땭뎬뎻될도딟듰땡땦땄뎸듔뎬둣딞땀뒀뒼땻돠됨두딐뒷딎땝됨딌딌따딜땁뒨둠뒋뒈딄돸될땻듐뒤딸뒷드듼땦딐딨땔딎둡딀뒘땯땭땻둣돶듸뎡뒐땁땄뒹뒹땭뎸땱땋돷딅딻돝뒷땄;

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-direct {v0, p0, p1, v1}, Landroidx/camera/camera2/internal/뎻될두돳돰땐듰땪땱딜돛돼됐뒷따딽뒵땲듻땰뒈됐됐딄둔땅뎰돶뒝땐딄땄땱듐땧뒷듼뒋땳땋듔뒼땻돝뎽둬뎻뎡뎬땔땭듰돼딄땭뎬뎻될도딟듰땡땦땄뎸듔뎬둣딞땀뒀뒼땻돠됨두딐뒷딎땝됨딌딌따딜땁뒨둠뒋뒈딄돸될땻듐뒤딸뒷드듼땦딐딨땔딎둡딀뒘땯땭땻둣돶듸뎡뒐땁땄뒹뒹땭뎸땱땋돷딅딻돝뒷땄;-><init>(Landroidx/camera/camera2/internal/ZoomControl;Landroidx/camera/core/ZoomState;I)V

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    return-object p1

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception p1

    .line 33
    :try_start_2
    invoke-static {p1}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    monitor-exit v0

    .line 38
    return-object p1

    .line 39
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 40
    throw p1
.end method

.method public setZoomRatio(F)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/ZoomControl;->mCurrentZoomState:Landroidx/camera/camera2/internal/ZoomStateImpl;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/internal/ZoomControl;->mCurrentZoomState:Landroidx/camera/camera2/internal/ZoomStateImpl;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroidx/camera/camera2/internal/ZoomStateImpl;->setZoomRatio(F)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Landroidx/camera/camera2/internal/ZoomControl;->mCurrentZoomState:Landroidx/camera/camera2/internal/ZoomStateImpl;

    .line 10
    .line 11
    invoke-static {p1}, Landroidx/camera/core/internal/ImmutableZoomState;->create(Landroidx/camera/core/ZoomState;)Landroidx/camera/core/ZoomState;

    .line 12
    .line 13
    .line 14
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    invoke-direct {p0, p1}, Landroidx/camera/camera2/internal/ZoomControl;->updateLiveData(Landroidx/camera/core/ZoomState;)V

    .line 17
    .line 18
    .line 19
    new-instance v0, Landroidx/camera/camera2/internal/뎻될두돳돰땐듰땪땱딜돛돼됐뒷따딽뒵땲듻땰뒈됐됐딄둔땅뎰돶뒝땐딄땄땱듐땧뒷듼뒋땳땋듔뒼땻돝뎽둬뎻뎡뎬땔땭듰돼딄땭뎬뎻될도딟듰땡땦땄뎸듔뎬둣딞땀뒀뒼땻돠됨두딐뒷딎땝됨딌딌따딜땁뒨둠뒋뒈딄돸될땻듐뒤딸뒷드듼땦딐딨땔딎둡딀뒘땯땭땻둣돶듸뎡뒐땁땄뒹뒹땭뎸땱땋돷딅딻돝뒷땄;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-direct {v0, p0, p1, v1}, Landroidx/camera/camera2/internal/뎻될두돳돰땐듰땪땱딜돛돼됐뒷따딽뒵땲듻땰뒈됐됐딄둔땅뎰돶뒝땐딄땄땱듐땧뒷듼뒋땳땋듔뒼땻돝뎽둬뎻뎡뎬땔땭듰돼딄땭뎬뎻될도딟듰땡땦땄뎸듔뎬둣딞땀뒀뒼땻돠됨두딐뒷딎땝됨딌딌따딜땁뒨둠뒋뒈딄돸될땻듐뒤딸뒷드듼땦딐딨땔딎둡딀뒘땯땭땻둣돶듸뎡뒐땁땄뒹뒹땭뎸땱땋돷딅딻돝뒷땄;-><init>(Landroidx/camera/camera2/internal/ZoomControl;Landroidx/camera/core/ZoomState;I)V

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    return-object p1

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception p1

    .line 33
    :try_start_2
    invoke-static {p1}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    monitor-exit v0

    .line 38
    return-object p1

    .line 39
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 40
    throw p1
.end method
