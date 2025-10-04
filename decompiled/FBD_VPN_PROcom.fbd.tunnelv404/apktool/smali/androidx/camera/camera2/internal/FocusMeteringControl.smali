.class Landroidx/camera/camera2/internal/FocusMeteringControl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/OptIn;
    markerClass = {
        Landroidx/camera/camera2/interop/ExperimentalCamera2Interop;
    }
.end annotation


# static fields
.field static final AUTO_FOCUS_TIMEOUT_DURATION:J = 0x1388L

.field private static final EMPTY_RECTANGLES:[Landroid/hardware/camera2/params/MeteringRectangle;

.field private static final TAG:Ljava/lang/String; = "FocusMeteringControl"


# instance fields
.field private mAeRects:[Landroid/hardware/camera2/params/MeteringRectangle;

.field private mAfRects:[Landroid/hardware/camera2/params/MeteringRectangle;

.field private mAutoCancelHandle:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private mAutoFocusTimeoutHandle:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private mAwbRects:[Landroid/hardware/camera2/params/MeteringRectangle;

.field private final mCameraControl:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

.field mCurrentAfState:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final mExecutor:Ljava/util/concurrent/Executor;

.field mFocusTimeoutCounter:J

.field private volatile mIsActive:Z

.field mIsAutoFocusCompleted:Z

.field private mIsExternalFlashAeModeEnabled:Z

.field mIsFocusSuccessful:Z

.field private mIsInAfAutoMode:Z

.field private final mMeteringRegionCorrection:Landroidx/camera/camera2/internal/compat/workaround/MeteringRegionCorrection;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private volatile mPreviewAspectRatio:Landroid/util/Rational;

.field mRunningActionCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<",
            "Landroidx/camera/core/FocusMeteringResult;",
            ">;"
        }
    .end annotation
.end field

.field mRunningCancelCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field private mSessionListenerForAeMode:Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CaptureResultListener;

.field private mSessionListenerForCancel:Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CaptureResultListener;

.field private mSessionListenerForFocus:Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CaptureResultListener;

.field private mTemplate:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 3
    .line 4
    sput-object v0, Landroidx/camera/camera2/internal/FocusMeteringControl;->EMPTY_RECTANGLES:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>(Landroidx/camera/camera2/internal/Camera2CameraControlImpl;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;Landroidx/camera/core/impl/Quirks;)V
    .locals 4
    .param p1    # Landroidx/camera/camera2/internal/Camera2CameraControlImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/ScheduledExecutorService;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/camera/core/impl/Quirks;
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
    iput-boolean v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mIsActive:Z

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mPreviewAspectRatio:Landroid/util/Rational;

    .line 9
    .line 10
    iput-boolean v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mIsInAfAutoMode:Z

    .line 11
    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    iput-object v2, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mCurrentAfState:Ljava/lang/Integer;

    .line 17
    .line 18
    const-wide/16 v2, 0x0

    .line 19
    .line 20
    iput-wide v2, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mFocusTimeoutCounter:J

    .line 21
    .line 22
    iput-boolean v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mIsAutoFocusCompleted:Z

    .line 23
    .line 24
    iput-boolean v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mIsFocusSuccessful:Z

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    iput v2, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mTemplate:I

    .line 28
    .line 29
    iput-object v1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mSessionListenerForFocus:Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CaptureResultListener;

    .line 30
    .line 31
    iput-object v1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mSessionListenerForCancel:Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CaptureResultListener;

    .line 32
    .line 33
    sget-object v2, Landroidx/camera/camera2/internal/FocusMeteringControl;->EMPTY_RECTANGLES:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 34
    .line 35
    iput-object v2, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mAfRects:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 36
    .line 37
    iput-object v2, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mAeRects:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 38
    .line 39
    iput-object v2, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mAwbRects:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 40
    .line 41
    iput-object v1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mRunningActionCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 42
    .line 43
    iput-object v1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mRunningCancelCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 44
    .line 45
    iput-boolean v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mIsExternalFlashAeModeEnabled:Z

    .line 46
    .line 47
    iput-object v1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mSessionListenerForAeMode:Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CaptureResultListener;

    .line 48
    .line 49
    iput-object p1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mCameraControl:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    .line 50
    .line 51
    iput-object p3, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mExecutor:Ljava/util/concurrent/Executor;

    .line 52
    .line 53
    iput-object p2, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 54
    .line 55
    new-instance p1, Landroidx/camera/camera2/internal/compat/workaround/MeteringRegionCorrection;

    .line 56
    .line 57
    invoke-direct {p1, p4}, Landroidx/camera/camera2/internal/compat/workaround/MeteringRegionCorrection;-><init>(Landroidx/camera/core/impl/Quirks;)V

    .line 58
    .line 59
    .line 60
    iput-object p1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mMeteringRegionCorrection:Landroidx/camera/camera2/internal/compat/workaround/MeteringRegionCorrection;

    .line 61
    .line 62
    return-void
.end method

.method private clearAutoFocusTimeoutHandle()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mAutoFocusTimeoutHandle:Ljava/util/concurrent/ScheduledFuture;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mAutoFocusTimeoutHandle:Ljava/util/concurrent/ScheduledFuture;

    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private completeCancelFuture()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mRunningCancelCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mRunningCancelCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private disableAutoCancel()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mAutoCancelHandle:Ljava/util/concurrent/ScheduledFuture;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mAutoCancelHandle:Ljava/util/concurrent/ScheduledFuture;

    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private enableExternalFlashAeMode(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 3
    .param p1    # Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1c
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 6
    iget-boolean v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mIsActive:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 7
    new-instance v0, Landroidx/camera/core/CameraControl$OperationCanceledException;

    const-string v1, "Camera is not active."

    invoke-direct {v0, v1}, Landroidx/camera/core/CameraControl$OperationCanceledException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    :cond_0
    return-void

    .line 8
    :cond_1
    iget-object v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mCameraControl:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    invoke-virtual {v0}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->updateSessionConfigSynchronous()J

    move-result-wide v0

    .line 9
    new-instance v2, Landroidx/camera/camera2/internal/뎰딎땻듔땥땣듽땩땲땱딞둠듌뎸듰땋뒻됩두땤뒝땰도됐돰땠뒘듌뎡땩둔뒨뒻됐딝땪뒨딨딤땔뎡뒙땅땋돸돴딟딄땠땮뎬듰뎡딻뎹뒐뎰땝둡둠딟뒷듌땧듔뒘땵득딠땧돰된뒐딹되듸딃땄땮딄딅땹들뎹뒵딌듼된돤딝돷뒛된뒵땜돴딟땧땀땜땤득땤듸딎돼뒙땔디땮돸뒈딟뎻득땭땡돴된돛땔돝득됫뎠듽뒛돛땡둥;

    invoke-direct {v2, p0, v0, v1, p1}, Landroidx/camera/camera2/internal/뎰딎땻듔땥땣듽땩땲땱딞둠듌뎸듰땋뒻됩두땤뒝땰도됐돰땠뒘듌뎡땩둔뒨뒻됐딝땪뒨딨딤땔뎡뒙땅땋돸돴딟딄땠땮뎬듰뎡딻뎹뒐뎰땝둡둠딟뒷듌땧듔뒘땵득딠땧돰된뒐딹되듸딃땄땮딄딅땹들뎹뒵딌듼된돤딝돷뒛된뒵땜돴딟땧땀땜땤득땤듸딎돼뒙땔디땮돸뒈딟뎻득땭땡돴된돛땔돝득됫뎠듽뒛돛땡둥;-><init>(Landroidx/camera/camera2/internal/FocusMeteringControl;JLandroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    iput-object v2, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mSessionListenerForAeMode:Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CaptureResultListener;

    .line 10
    iget-object p1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mCameraControl:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    invoke-virtual {p1, v2}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->addCaptureResultListener(Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CaptureResultListener;)V

    return-void
.end method

.method private executeMeteringAction([Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;Landroidx/camera/core/FocusMeteringAction;J)V
    .locals 2
    .param p1    # [Landroid/hardware/camera2/params/MeteringRectangle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Landroid/hardware/camera2/params/MeteringRectangle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [Landroid/hardware/camera2/params/MeteringRectangle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mCameraControl:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mSessionListenerForFocus:Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CaptureResultListener;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->removeCaptureResultListener(Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CaptureResultListener;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Landroidx/camera/camera2/internal/FocusMeteringControl;->disableAutoCancel()V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Landroidx/camera/camera2/internal/FocusMeteringControl;->clearAutoFocusTimeoutHandle()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mAfRects:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 15
    .line 16
    iput-object p2, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mAeRects:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 17
    .line 18
    iput-object p3, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mAwbRects:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 19
    .line 20
    invoke-direct {p0}, Landroidx/camera/camera2/internal/FocusMeteringControl;->shouldTriggerAF()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    const/4 p2, 0x1

    .line 25
    const/4 p3, 0x0

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    iput-boolean p2, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mIsInAfAutoMode:Z

    .line 29
    .line 30
    iput-boolean p3, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mIsAutoFocusCompleted:Z

    .line 31
    .line 32
    iput-boolean p3, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mIsFocusSuccessful:Z

    .line 33
    .line 34
    iget-object p1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mCameraControl:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->updateSessionConfigSynchronous()J

    .line 37
    .line 38
    .line 39
    move-result-wide v0

    .line 40
    const/4 p1, 0x0

    .line 41
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/internal/FocusMeteringControl;->triggerAf(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Z)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iput-boolean p3, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mIsInAfAutoMode:Z

    .line 46
    .line 47
    iput-boolean p2, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mIsAutoFocusCompleted:Z

    .line 48
    .line 49
    iput-boolean p3, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mIsFocusSuccessful:Z

    .line 50
    .line 51
    iget-object p1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mCameraControl:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    .line 52
    .line 53
    invoke-virtual {p1}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->updateSessionConfigSynchronous()J

    .line 54
    .line 55
    .line 56
    move-result-wide v0

    .line 57
    :goto_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iput-object p1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mCurrentAfState:Ljava/lang/Integer;

    .line 62
    .line 63
    invoke-direct {p0}, Landroidx/camera/camera2/internal/FocusMeteringControl;->isAfModeSupported()Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    new-instance p2, Landroidx/camera/camera2/internal/뎸딞돵뎡뎬땃뒵딸돵땱둘뒹득뒛땩뒵뒾듸듟딅땫돝돛땔뒵땱둡딁땔되땄듔뒷딠땐듬뎬땱딀딄땰둘땡땡됩뒹돵뒈땥딽뒉땬땧딽둔듔뒀땠딨딜땭뒻돠딜땤도둬된땭됐드도땔땦땻디됨돰뒼땟듻뎬뎡뎽땍뒬딠뎬땦두뒛돴돴둑됫드둣든땥디땧됩됨두딠딨땃둠돵뎸뒨뎸뎹땡뒙땨딝되땁됨돼땲돼뎽땮땠딄딁땄땸;

    .line 68
    .line 69
    invoke-direct {p2, p0, p1, v0, v1}, Landroidx/camera/camera2/internal/뎸딞돵뎡뎬땃뒵딸돵땱둘뒹득뒛땩뒵뒾듸듟딅땫돝돛땔뒵땱둡딁땔되땄듔뒷딠땐듬뎬땱딀딄땰둘땡땡됩뒹돵뒈땥딽뒉땬땧딽둔듔뒀땠딨딜땭뒻돠딜땤도둬된땭됐드도땔땦땻디됨돰뒼땟듻뎬뎡뎽땍뒬딠뎬땦두뒛돴돴둑됫드둣든땥디땧됩됨두딠딨땃둠돵뎸뒨뎸뎹땡뒙땨딝되땁됨돼땲돼뎽땮땠딄딁땄땸;-><init>(Landroidx/camera/camera2/internal/FocusMeteringControl;ZJ)V

    .line 70
    .line 71
    .line 72
    iput-object p2, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mSessionListenerForFocus:Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CaptureResultListener;

    .line 73
    .line 74
    iget-object p1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mCameraControl:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    .line 75
    .line 76
    invoke-virtual {p1, p2}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->addCaptureResultListener(Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CaptureResultListener;)V

    .line 77
    .line 78
    .line 79
    iget-wide p1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mFocusTimeoutCounter:J

    .line 80
    .line 81
    const-wide/16 v0, 0x1

    .line 82
    .line 83
    add-long/2addr p1, v0

    .line 84
    iput-wide p1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mFocusTimeoutCounter:J

    .line 85
    .line 86
    new-instance p3, Landroidx/camera/camera2/internal/뎬땲땰땄뒬딤뒙땯듬돤뒾땁뎻돛딌뒷돛뒹듐땠딨될땸둥땰뒵돷땍뒷돵듬땐땣돛뒵뒋뒷딃돷듽둡돝뒬됐뒈땻뒋딝딸땲딟두됨딁뒐땍듨돳되돠땥땥뎡뎹뎬듰뒻듻딄듸땋땱딹땥두듨뎠둠둬됫땱둔딁땤두될뒨딟둠뎡돨땫듨딤돤딃딟뒐땲돰땜딀둘됫딻돸든돷둠둔땻되됨듰땪땣두딎돳듐땄될땬뎬드땟딁듰돷디;

    .line 87
    .line 88
    const/4 v0, 0x2

    .line 89
    invoke-direct {p3, v0, p1, p2, p0}, Landroidx/camera/camera2/internal/뎬땲땰땄뒬딤뒙땯듬돤뒾땁뎻돛딌뒷돛뒹듐땠딨될땸둥땰뒵돷땍뒷돵듬땐땣돛뒵뒋뒷딃돷듽둡돝뒬됐뒈땻뒋딝딸땲딟두됨딁뒐땍듨돳되돠땥땥뎡뎹뎬듰뒻듻딄듸땋땱딹땥두듨뎠둠둬됫땱둔딁땤두될뒨딟둠뎡돨땫듨딤돤딃딟뒐땲돰땜딀둘됫딻돸든돷둠둔땻되됨듰땪땣두딎돳듐땄될땬뎬드땟딁듰돷디;-><init>(IJLandroidx/camera/camera2/internal/FocusMeteringControl;)V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 93
    .line 94
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 95
    .line 96
    invoke-interface {v0, p3, p5, p6, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 97
    .line 98
    .line 99
    move-result-object p3

    .line 100
    iput-object p3, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mAutoFocusTimeoutHandle:Ljava/util/concurrent/ScheduledFuture;

    .line 101
    .line 102
    invoke-virtual {p4}, Landroidx/camera/core/FocusMeteringAction;->isAutoCancelEnabled()Z

    .line 103
    .line 104
    .line 105
    move-result p3

    .line 106
    if-eqz p3, :cond_1

    .line 107
    .line 108
    new-instance p3, Landroidx/camera/camera2/internal/뎬땲땰땄뒬딤뒙땯듬돤뒾땁뎻돛딌뒷돛뒹듐땠딨될땸둥땰뒵돷땍뒷돵듬땐땣돛뒵뒋뒷딃돷듽둡돝뒬됐뒈땻뒋딝딸땲딟두됨딁뒐땍듨돳되돠땥땥뎡뎹뎬듰뒻듻딄듸땋땱딹땥두듨뎠둠둬됫땱둔딁땤두될뒨딟둠뎡돨땫듨딤돤딃딟뒐땲돰땜딀둘됫딻돸든돷둠둔땻되됨듰땪땣두딎돳듐땄될땬뎬드땟딁듰돷디;

    .line 109
    .line 110
    const/4 p5, 0x3

    .line 111
    invoke-direct {p3, p5, p1, p2, p0}, Landroidx/camera/camera2/internal/뎬땲땰땄뒬딤뒙땯듬돤뒾땁뎻돛딌뒷돛뒹듐땠딨될땸둥땰뒵돷땍뒷돵듬땐땣돛뒵뒋뒷딃돷듽둡돝뒬됐뒈땻뒋딝딸땲딟두됨딁뒐땍듨돳되돠땥땥뎡뎹뎬듰뒻듻딄듸땋땱딹땥두듨뎠둠둬됫땱둔딁땤두될뒨딟둠뎡돨땫듨딤돤딃딟뒐땲돰땜딀둘됫딻돸든돷둠둔땻되됨듰땪땣두딎돳듐땄될땬뎬드땟딁듰돷디;-><init>(IJLandroidx/camera/camera2/internal/FocusMeteringControl;)V

    .line 112
    .line 113
    .line 114
    iget-object p1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 115
    .line 116
    invoke-virtual {p4}, Landroidx/camera/core/FocusMeteringAction;->getAutoCancelDurationInMillis()J

    .line 117
    .line 118
    .line 119
    move-result-wide p4

    .line 120
    invoke-interface {p1, p3, p4, p5, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    iput-object p1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mAutoCancelHandle:Ljava/util/concurrent/ScheduledFuture;

    .line 125
    .line 126
    :cond_1
    return-void
.end method

.method private failActionFuture(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mCameraControl:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mSessionListenerForFocus:Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CaptureResultListener;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->removeCaptureResultListener(Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CaptureResultListener;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mRunningActionCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance v1, Landroidx/camera/core/CameraControl$OperationCanceledException;

    .line 13
    .line 14
    invoke-direct {v1, p1}, Landroidx/camera/core/CameraControl$OperationCanceledException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mRunningActionCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method private failCancelFuture(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mCameraControl:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mSessionListenerForCancel:Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CaptureResultListener;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->removeCaptureResultListener(Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CaptureResultListener;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mRunningCancelCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance v1, Landroidx/camera/core/CameraControl$OperationCanceledException;

    .line 13
    .line 14
    invoke-direct {v1, p1}, Landroidx/camera/core/CameraControl$OperationCanceledException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mRunningCancelCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method private getDefaultAspectRatio()Landroid/util/Rational;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mPreviewAspectRatio:Landroid/util/Rational;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mPreviewAspectRatio:Landroid/util/Rational;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mCameraControl:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->getCropSensorRegion()Landroid/graphics/Rect;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Landroid/util/Rational;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-direct {v1, v2, v0}, Landroid/util/Rational;-><init>(II)V

    .line 25
    .line 26
    .line 27
    return-object v1
.end method

.method private static getFovAdjustedPoint(Landroidx/camera/core/MeteringPoint;Landroid/util/Rational;Landroid/util/Rational;ILandroidx/camera/camera2/internal/compat/workaround/MeteringRegionCorrection;)Landroid/graphics/PointF;
    .locals 6
    .param p0    # Landroidx/camera/core/MeteringPoint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/util/Rational;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/Rational;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroidx/camera/core/MeteringPoint;->getSurfaceAspectRatio()Landroid/util/Rational;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/camera/core/MeteringPoint;->getSurfaceAspectRatio()Landroid/util/Rational;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    :cond_0
    invoke-virtual {p4, p0, p3}, Landroidx/camera/camera2/internal/compat/workaround/MeteringRegionCorrection;->getCorrectedPoint(Landroidx/camera/core/MeteringPoint;I)Landroid/graphics/PointF;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p2, p1}, Landroid/util/Rational;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p3

    .line 19
    if-nez p3, :cond_2

    .line 20
    .line 21
    invoke-virtual {p2, p1}, Landroid/util/Rational;->compareTo(Landroid/util/Rational;)I

    .line 22
    .line 23
    .line 24
    move-result p3

    .line 25
    const/high16 p4, 0x3f800000    # 1.0f

    .line 26
    .line 27
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 28
    .line 29
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 30
    .line 31
    if-lez p3, :cond_1

    .line 32
    .line 33
    invoke-virtual {p2}, Landroid/util/Rational;->doubleValue()D

    .line 34
    .line 35
    .line 36
    move-result-wide p2

    .line 37
    invoke-virtual {p1}, Landroid/util/Rational;->doubleValue()D

    .line 38
    .line 39
    .line 40
    move-result-wide v4

    .line 41
    div-double/2addr p2, v4

    .line 42
    double-to-float p1, p2

    .line 43
    float-to-double p2, p1

    .line 44
    sub-double/2addr p2, v2

    .line 45
    div-double/2addr p2, v0

    .line 46
    double-to-float p2, p2

    .line 47
    iget p3, p0, Landroid/graphics/PointF;->y:F

    .line 48
    .line 49
    add-float/2addr p2, p3

    .line 50
    div-float/2addr p4, p1

    .line 51
    mul-float p4, p4, p2

    .line 52
    .line 53
    iput p4, p0, Landroid/graphics/PointF;->y:F

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {p1}, Landroid/util/Rational;->doubleValue()D

    .line 57
    .line 58
    .line 59
    move-result-wide v4

    .line 60
    invoke-virtual {p2}, Landroid/util/Rational;->doubleValue()D

    .line 61
    .line 62
    .line 63
    move-result-wide p1

    .line 64
    div-double/2addr v4, p1

    .line 65
    double-to-float p1, v4

    .line 66
    float-to-double p2, p1

    .line 67
    sub-double/2addr p2, v2

    .line 68
    div-double/2addr p2, v0

    .line 69
    double-to-float p2, p2

    .line 70
    iget p3, p0, Landroid/graphics/PointF;->x:F

    .line 71
    .line 72
    add-float/2addr p2, p3

    .line 73
    div-float/2addr p4, p1

    .line 74
    mul-float p4, p4, p2

    .line 75
    .line 76
    iput p4, p0, Landroid/graphics/PointF;->x:F

    .line 77
    .line 78
    :cond_2
    :goto_0
    return-object p0
.end method

.method private static getMeteringRect(Landroidx/camera/core/MeteringPoint;Landroid/graphics/PointF;Landroid/graphics/Rect;)Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 5

    .line 1
    iget v0, p2, Landroid/graphics/Rect;->left:I

    .line 2
    .line 3
    int-to-float v0, v0

    .line 4
    iget v1, p1, Landroid/graphics/PointF;->x:F

    .line 5
    .line 6
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    int-to-float v2, v2

    .line 11
    mul-float v1, v1, v2

    .line 12
    .line 13
    add-float/2addr v1, v0

    .line 14
    float-to-int v0, v1

    .line 15
    iget v1, p2, Landroid/graphics/Rect;->top:I

    .line 16
    .line 17
    int-to-float v1, v1

    .line 18
    iget p1, p1, Landroid/graphics/PointF;->y:F

    .line 19
    .line 20
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    int-to-float v2, v2

    .line 25
    mul-float p1, p1, v2

    .line 26
    .line 27
    add-float/2addr p1, v1

    .line 28
    float-to-int p1, p1

    .line 29
    invoke-virtual {p0}, Landroidx/camera/core/MeteringPoint;->getSize()F

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    int-to-float v2, v2

    .line 38
    mul-float v1, v1, v2

    .line 39
    .line 40
    float-to-int v1, v1

    .line 41
    invoke-virtual {p0}, Landroidx/camera/core/MeteringPoint;->getSize()F

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    int-to-float v2, v2

    .line 50
    mul-float p0, p0, v2

    .line 51
    .line 52
    float-to-int p0, p0

    .line 53
    new-instance v2, Landroid/graphics/Rect;

    .line 54
    .line 55
    div-int/lit8 v1, v1, 0x2

    .line 56
    .line 57
    sub-int v3, v0, v1

    .line 58
    .line 59
    div-int/lit8 p0, p0, 0x2

    .line 60
    .line 61
    sub-int v4, p1, p0

    .line 62
    .line 63
    add-int/2addr v0, v1

    .line 64
    add-int/2addr p1, p0

    .line 65
    invoke-direct {v2, v3, v4, v0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 66
    .line 67
    .line 68
    iget p0, v2, Landroid/graphics/Rect;->left:I

    .line 69
    .line 70
    iget p1, p2, Landroid/graphics/Rect;->right:I

    .line 71
    .line 72
    iget v0, p2, Landroid/graphics/Rect;->left:I

    .line 73
    .line 74
    invoke-static {p0, p1, v0}, Landroidx/camera/camera2/internal/FocusMeteringControl;->rangeLimit(III)I

    .line 75
    .line 76
    .line 77
    move-result p0

    .line 78
    iput p0, v2, Landroid/graphics/Rect;->left:I

    .line 79
    .line 80
    iget p0, v2, Landroid/graphics/Rect;->right:I

    .line 81
    .line 82
    iget p1, p2, Landroid/graphics/Rect;->right:I

    .line 83
    .line 84
    iget v0, p2, Landroid/graphics/Rect;->left:I

    .line 85
    .line 86
    invoke-static {p0, p1, v0}, Landroidx/camera/camera2/internal/FocusMeteringControl;->rangeLimit(III)I

    .line 87
    .line 88
    .line 89
    move-result p0

    .line 90
    iput p0, v2, Landroid/graphics/Rect;->right:I

    .line 91
    .line 92
    iget p0, v2, Landroid/graphics/Rect;->top:I

    .line 93
    .line 94
    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    .line 95
    .line 96
    iget v0, p2, Landroid/graphics/Rect;->top:I

    .line 97
    .line 98
    invoke-static {p0, p1, v0}, Landroidx/camera/camera2/internal/FocusMeteringControl;->rangeLimit(III)I

    .line 99
    .line 100
    .line 101
    move-result p0

    .line 102
    iput p0, v2, Landroid/graphics/Rect;->top:I

    .line 103
    .line 104
    iget p0, v2, Landroid/graphics/Rect;->bottom:I

    .line 105
    .line 106
    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    .line 107
    .line 108
    iget p2, p2, Landroid/graphics/Rect;->top:I

    .line 109
    .line 110
    invoke-static {p0, p1, p2}, Landroidx/camera/camera2/internal/FocusMeteringControl;->rangeLimit(III)I

    .line 111
    .line 112
    .line 113
    move-result p0

    .line 114
    iput p0, v2, Landroid/graphics/Rect;->bottom:I

    .line 115
    .line 116
    new-instance p0, Landroid/hardware/camera2/params/MeteringRectangle;

    .line 117
    .line 118
    const/16 p1, 0x3e8

    .line 119
    .line 120
    invoke-direct {p0, v2, p1}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(Landroid/graphics/Rect;I)V

    .line 121
    .line 122
    .line 123
    return-object p0
.end method

.method private getMeteringRectangles(Ljava/util/List;ILandroid/util/Rational;Landroid/graphics/Rect;I)Ljava/util/List;
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/util/Rational;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/camera/core/MeteringPoint;",
            ">;I",
            "Landroid/util/Rational;",
            "Landroid/graphics/Rect;",
            "I)",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_6

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    goto :goto_2

    .line 10
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    new-instance v1, Landroid/util/Rational;

    .line 16
    .line 17
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    invoke-direct {v1, v2, v3}, Landroid/util/Rational;-><init>(II)V

    .line 26
    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_5

    .line 37
    .line 38
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Landroidx/camera/core/MeteringPoint;

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-ne v3, p2, :cond_2

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    invoke-static {v2}, Landroidx/camera/camera2/internal/FocusMeteringControl;->isValid(Landroidx/camera/core/MeteringPoint;)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-nez v3, :cond_3

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_3
    iget-object v3, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mMeteringRegionCorrection:Landroidx/camera/camera2/internal/compat/workaround/MeteringRegionCorrection;

    .line 59
    .line 60
    invoke-static {v2, v1, p3, p5, v3}, Landroidx/camera/camera2/internal/FocusMeteringControl;->getFovAdjustedPoint(Landroidx/camera/core/MeteringPoint;Landroid/util/Rational;Landroid/util/Rational;ILandroidx/camera/camera2/internal/compat/workaround/MeteringRegionCorrection;)Landroid/graphics/PointF;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-static {v2, v3, p4}, Landroidx/camera/camera2/internal/FocusMeteringControl;->getMeteringRect(Landroidx/camera/core/MeteringPoint;Landroid/graphics/PointF;Landroid/graphics/Rect;)Landroid/hardware/camera2/params/MeteringRectangle;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v2}, Landroid/hardware/camera2/params/MeteringRectangle;->getWidth()I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-eqz v3, :cond_1

    .line 73
    .line 74
    invoke-virtual {v2}, Landroid/hardware/camera2/params/MeteringRectangle;->getHeight()I

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-nez v3, :cond_4

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_5
    :goto_1
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    return-object p1

    .line 90
    :cond_6
    :goto_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    return-object p1
.end method

.method private isAfModeSupported()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mCameraControl:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->getSupportedAfMode(I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    return v1
.end method

.method private static isValid(Landroidx/camera/core/MeteringPoint;)Z
    .locals 3
    .param p0    # Landroidx/camera/core/MeteringPoint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroidx/camera/core/MeteringPoint;->getX()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    cmpl-float v0, v0, v1

    .line 7
    .line 8
    if-ltz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/camera/core/MeteringPoint;->getX()F

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/high16 v2, 0x3f800000    # 1.0f

    .line 15
    .line 16
    cmpg-float v0, v0, v2

    .line 17
    .line 18
    if-gtz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/camera/core/MeteringPoint;->getY()F

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    cmpl-float v0, v0, v1

    .line 25
    .line 26
    if-ltz v0, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/camera/core/MeteringPoint;->getY()F

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    cmpg-float p0, p0, v2

    .line 33
    .line 34
    if-gtz p0, :cond_0

    .line 35
    .line 36
    const/4 p0, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 p0, 0x0

    .line 39
    :goto_0
    return p0
.end method

.method private synthetic lambda$cancelFocusAndMetering$12(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/internal/FocusMeteringControl;->cancelFocusAndMeteringInternal(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$cancelFocusAndMetering$13(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mExecutor:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    new-instance v1, Landroidx/camera/camera2/internal/뎰땄돸뒼땯뒀듰뒛뒀뎠따딠뒼디둡딐듻뎠도뎠둘뒤득땮땩뒻땥딨뎸딄땯딤딌딝뒘딐드돰둡둠딎듸땨딠듰땡딅됴두듽돰딀땪뎸돛듟득땻됫땦될된듽돵뒷땩뒬뒉딐땤돴듟땪돴두돼됫땧땰돴뎽뒤뒙땵딎뒛뒾뎰뒈뒉돛딟돛뒾뒛뒈땨돛딸땜뒐둠딸돠딤돰딞땵듨듐돴딅따됫딁땜듔됨됩땅드딨뒀돤뒵땦딃둬듟땦;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p0, p1, v2}, Landroidx/camera/camera2/internal/뎰땄돸뒼땯뒀듰뒛뒀뎠따딠뒼디둡딐듻뎠도뎠둘뒤득땮땩뒻땥딨뎸딄땯딤딌딝뒘딐드돰둡둠딎듸땨딠듰땡딅됴두듽돰딀땪뎸돛듟득땻됫땦될된듽돵뒷땩뒬뒉딐땤돴듟땪돴두돼됫땧땰돴뎽뒤뒙땵딎뒛뒾뎰뒈뒉돛딟돛뒾뒛뒈땨돛딸땜뒐둠딸돠딤돰딞땵듨듐돴딅따됫딁땜듔됨됩땅드딨뒀돤뒵땦딃둬듟땦;-><init>(Landroidx/camera/camera2/internal/FocusMeteringControl;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;I)V

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    const-string p1, "cancelFocusAndMetering"

    .line 13
    .line 14
    return-object p1
.end method

.method private synthetic lambda$cancelFocusAndMeteringInternal$14(IJLandroid/hardware/camera2/TotalCaptureResult;)Z
    .locals 1

    .line 1
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    .line 2
    .line 3
    invoke-virtual {p4, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Integer;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-ne v0, p1, :cond_0

    .line 14
    .line 15
    invoke-static {p4, p2, p3}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->isSessionUpdated(Landroid/hardware/camera2/TotalCaptureResult;J)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-direct {p0}, Landroidx/camera/camera2/internal/FocusMeteringControl;->completeCancelFuture()V

    .line 22
    .line 23
    .line 24
    const/4 p1, 0x1

    .line 25
    return p1

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    return p1
.end method

.method private synthetic lambda$enableExternalFlashAeMode$4(ZLandroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mCameraControl:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mSessionListenerForAeMode:Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CaptureResultListener;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->removeCaptureResultListener(Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CaptureResultListener;)V

    .line 6
    .line 7
    .line 8
    iput-boolean p1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mIsExternalFlashAeModeEnabled:Z

    .line 9
    .line 10
    invoke-direct {p0, p2}, Landroidx/camera/camera2/internal/FocusMeteringControl;->enableExternalFlashAeMode(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private synthetic lambda$enableExternalFlashAeMode$5(ZLandroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mExecutor:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    new-instance v1, Landroidx/camera/camera2/internal/뎰딌뒝뒙땸땫땨둘뒘둔뎹됐딜땬듬뎽돛땃뒤땟뎰땠땧딞딝뎰딐땦뎹디딻둑뎠듸땋돵듟땯둠땀듟듰땃땁땍땁땱땵땬딨뒝딤뒻땱둑뒀땩땄땩뎽땤돼땱딃딠됐땬뎽딝된둡득도돴듼땪딀땨땜땪땰땸되뒾뒀땹땵뎨땐뒈딻드듼땱땹듔도딄될땹딄둠딞됩뎹딟딨듐뒈땬뎨두딜둬땐딀땔땥둥땻돸돼뒹돼듔듌되뒝땠듨;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Landroidx/camera/camera2/internal/뎰딌뒝뒙땸땫땨둘뒘둔뎹됐딜땬듬뎽돛땃뒤땟뎰땠땧딞딝뎰딐땦뎹디딻둑뎠듸땋돵듟땯둠땀듟듰땃땁땍땁땱땵땬딨뒝딤뒻땱둑뒀땩땄땩뎽땤돼땱딃딠됐땬뎽딝된둡득도돴듼땪딀땨땜땪땰땸되뒾뒀땹땵뎨땐뒈딻드듼땱땹듔도딄될땹딄둠딞됩뎹딟딨듐뒈땬뎨두딜둬땐딀땔땥둥땻돸돼뒹돼듔듌되뒝땠듨;-><init>(Landroidx/camera/camera2/internal/FocusMeteringControl;ZLandroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "enableExternalFlashAeMode"

    .line 12
    .line 13
    return-object p1
.end method

.method private synthetic lambda$enableExternalFlashAeMode$6(JLandroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroid/hardware/camera2/TotalCaptureResult;)Z
    .locals 5

    .line 1
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    .line 2
    .line 3
    invoke-virtual {p4, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Integer;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x5

    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x1

    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v4, "enableExternalFlashAeMode: isAeModeExternalFlash = "

    .line 24
    .line 25
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const-string v4, "FocusMeteringControl"

    .line 36
    .line 37
    invoke-static {v4, v1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-boolean v1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mIsExternalFlashAeModeEnabled:Z

    .line 41
    .line 42
    if-ne v0, v1, :cond_2

    .line 43
    .line 44
    invoke-static {p4, p1, p2}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->isSessionUpdated(Landroid/hardware/camera2/TotalCaptureResult;J)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    new-instance p1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string p2, "enableExternalFlashAeMode: session updated with isAeModeExternalFlash = "

    .line 53
    .line 54
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-static {v4, p1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    if-eqz p3, :cond_1

    .line 68
    .line 69
    const/4 p1, 0x0

    .line 70
    invoke-virtual {p3, p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    :cond_1
    return v3

    .line 74
    :cond_2
    return v2
.end method

.method private synthetic lambda$executeMeteringAction$10(J)V
    .locals 3

    .line 1
    iget-wide v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mFocusTimeoutCounter:J

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/camera/camera2/internal/FocusMeteringControl;->cancelFocusAndMeteringWithoutAsyncResult()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private synthetic lambda$executeMeteringAction$11(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mExecutor:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    new-instance v1, Landroidx/camera/camera2/internal/뎬땲땰땄뒬딤뒙땯듬돤뒾땁뎻돛딌뒷돛뒹듐땠딨될땸둥땰뒵돷땍뒷돵듬땐땣돛뒵뒋뒷딃돷듽둡돝뒬됐뒈땻뒋딝딸땲딟두됨딁뒐땍듨돳되돠땥땥뎡뎹뎬듰뒻듻딄듸땋땱딹땥두듨뎠둠둬됫땱둔딁땤두될뒨딟둠뎡돨땫듨딤돤딃딟뒐땲돰땜딀둘됫딻돸든돷둠둔땻되됨듰땪땣두딎돳듐땄될땬뎬드땟딁듰돷디;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, v2, p1, p2, p0}, Landroidx/camera/camera2/internal/뎬땲땰땄뒬딤뒙땯듬돤뒾땁뎻돛딌뒷돛뒹듐땠딨될땸둥땰뒵돷땍뒷돵듬땐땣돛뒵뒋뒷딃돷듽둡돝뒬됐뒈땻뒋딝딸땲딟두됨딁뒐땍듨돳되돠땥땥뎡뎹뎬듰뒻듻딄듸땋땱딹땥두듨뎠둠둬됫땱둔딁땤두될뒨딟둠뎡돨땫듨딤돤딃딟뒐땲돰땜딀둘됫딻돸든돷둠둔땻되됨듰땪땣두딎돳듐땄될땬뎬드땟딁듰돷디;-><init>(IJLandroidx/camera/camera2/internal/FocusMeteringControl;)V

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private synthetic lambda$executeMeteringAction$7(ZJLandroid/hardware/camera2/TotalCaptureResult;)Z
    .locals 4

    .line 1
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    .line 2
    .line 3
    invoke-virtual {p4, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Integer;

    .line 8
    .line 9
    invoke-direct {p0}, Landroidx/camera/camera2/internal/FocusMeteringControl;->shouldTriggerAF()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x1

    .line 15
    if-eqz v1, :cond_3

    .line 16
    .line 17
    if-eqz p1, :cond_2

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mCurrentAfState:Ljava/lang/Integer;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    const/4 v1, 0x3

    .line 29
    if-ne p1, v1, :cond_3

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    const/4 v1, 0x4

    .line 36
    if-ne p1, v1, :cond_1

    .line 37
    .line 38
    iput-boolean v3, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mIsFocusSuccessful:Z

    .line 39
    .line 40
    iput-boolean v3, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mIsAutoFocusCompleted:Z

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    const/4 v1, 0x5

    .line 48
    if-ne p1, v1, :cond_3

    .line 49
    .line 50
    iput-boolean v2, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mIsFocusSuccessful:Z

    .line 51
    .line 52
    iput-boolean v3, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mIsAutoFocusCompleted:Z

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    :goto_0
    iput-boolean v3, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mIsFocusSuccessful:Z

    .line 56
    .line 57
    iput-boolean v3, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mIsAutoFocusCompleted:Z

    .line 58
    .line 59
    :cond_3
    :goto_1
    iget-boolean p1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mIsAutoFocusCompleted:Z

    .line 60
    .line 61
    if-eqz p1, :cond_4

    .line 62
    .line 63
    invoke-static {p4, p2, p3}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->isSessionUpdated(Landroid/hardware/camera2/TotalCaptureResult;J)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_4

    .line 68
    .line 69
    iget-boolean p1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mIsFocusSuccessful:Z

    .line 70
    .line 71
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/internal/FocusMeteringControl;->completeActionFuture(Z)V

    .line 72
    .line 73
    .line 74
    return v3

    .line 75
    :cond_4
    iget-object p1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mCurrentAfState:Ljava/lang/Integer;

    .line 76
    .line 77
    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-nez p1, :cond_5

    .line 82
    .line 83
    if-eqz v0, :cond_5

    .line 84
    .line 85
    iput-object v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mCurrentAfState:Ljava/lang/Integer;

    .line 86
    .line 87
    :cond_5
    return v2
.end method

.method private synthetic lambda$executeMeteringAction$8(J)V
    .locals 3

    .line 1
    iget-wide v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mFocusTimeoutCounter:J

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mIsFocusSuccessful:Z

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/internal/FocusMeteringControl;->completeActionFuture(Z)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private synthetic lambda$executeMeteringAction$9(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mExecutor:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    new-instance v1, Landroidx/camera/camera2/internal/뎬땲땰땄뒬딤뒙땯듬돤뒾땁뎻돛딌뒷돛뒹듐땠딨될땸둥땰뒵돷땍뒷돵듬땐땣돛뒵뒋뒷딃돷듽둡돝뒬됐뒈땻뒋딝딸땲딟두됨딁뒐땍듨돳되돠땥땥뎡뎹뎬듰뒻듻딄듸땋땱딹땥두듨뎠둠둬됫땱둔딁땤두될뒨딟둠뎡돨땫듨딤돤딃딟뒐땲돰땜딀둘됫딻돸든돷둠둔땻되됨듰땪땣두딎돳듐땄될땬뎬드땟딁듰돷디;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v1, v2, p1, p2, p0}, Landroidx/camera/camera2/internal/뎬땲땰땄뒬딤뒙땯듬돤뒾땁뎻돛딌뒷돛뒹듐땠딨될땸둥땰뒵돷땍뒷돵듬땐땣돛뒵뒋뒷딃돷듽둡돝뒬됐뒈땻뒋딝딸땲딟두됨딁뒐땍듨돳되돠땥땥뎡뎹뎬듰뒻듻딄듸땋땱딹땥두듨뎠둠둬됫땱둔딁땤두될뒨딟둠뎡돨땫듨딤돤딃딟뒐땲돰땜딀둘됫딻돸든돷둠둔땻되됨듰땪땣두딎돳듐땄될땬뎬드땟딁듰돷디;-><init>(IJLandroidx/camera/camera2/internal/FocusMeteringControl;)V

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private synthetic lambda$startFocusAndMetering$0(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroidx/camera/core/FocusMeteringAction;J)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/internal/FocusMeteringControl;->startFocusAndMeteringInternal(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroidx/camera/core/FocusMeteringAction;J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$startFocusAndMetering$1(Landroidx/camera/core/FocusMeteringAction;JLandroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mExecutor:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    new-instance v7, Landroidx/camera/camera2/internal/뎸듸뒼둥딝땣득뒋땔땁딝듟땬딄땤뎹뒉딃돴듨뒙뒝뒉뒈뒤땄딤땻됫땳됴될뎹듸딸돛둬듼뎻땄땥듨딹들둥땃들둑들뎬듟뒐뎡뒼듰돴땔딌뒼뎠뒬돤딝땸듼듸든듟드둡됴딽딤땨땐돛땬돠되되땫뒋디땲딅땡돸뒘둡딨든땍됴땡뎨딌듬돰듻돵듰땰땵땩됐땋됐돛뒾딀됩땁둘딅딜도뒻뎡돼돛땲딃뎡땥땲듬딎뎠땜듰;

    .line 4
    .line 5
    move-object v1, v7

    .line 6
    move-wide v2, p2

    .line 7
    move-object v4, p0

    .line 8
    move-object v5, p1

    .line 9
    move-object v6, p4

    .line 10
    invoke-direct/range {v1 .. v6}, Landroidx/camera/camera2/internal/뎸듸뒼둥딝땣득뒋땔땁딝듟땬딄땤뎹뒉딃돴듨뒙뒝뒉뒈뒤땄딤땻됫땳됴될뎹듸딸돛둬듼뎻땄땥듨딹들둥땃들둑들뎬듟뒐뎡뒼듰돴땔딌뒼뎠뒬돤딝땸듼듸든듟드둡됴딽딤땨땐돛땬돠되되땫뒋디땲딅땡돸뒘둡딨든땍됴땡뎨딌듬돰듻돵듰땰땵땩됐땋됐돛뒾딀됩땁둘딅딜도뒻뎡돼돛땲딃뎡땥땲듬딎뎠땜듰;-><init>(JLandroidx/camera/camera2/internal/FocusMeteringControl;Landroidx/camera/core/FocusMeteringAction;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    const-string p1, "startFocusAndMetering"

    .line 17
    .line 18
    return-object p1
.end method

.method private synthetic lambda$triggerAePrecapture$2(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/internal/FocusMeteringControl;->triggerAePrecapture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$triggerAePrecapture$3(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mExecutor:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    new-instance v1, Landroidx/camera/camera2/internal/뎰땄돸뒼땯뒀듰뒛뒀뎠따딠뒼디둡딐듻뎠도뎠둘뒤득땮땩뒻땥딨뎸딄땯딤딌딝뒘딐드돰둡둠딎듸땨딠듰땡딅됴두듽돰딀땪뎸돛듟득땻됫땦될된듽돵뒷땩뒬뒉딐땤돴듟땪돴두돼됫땧땰돴뎽뒤뒙땵딎뒛뒾뎰뒈뒉돛딟돛뒾뒛뒈땨돛딸땜뒐둠딸돠딤돰딞땵듨듐돴딅따됫딁땜듔됨됩땅드딨뒀돤뒵땦딃둬듟땦;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v1, p0, p1, v2}, Landroidx/camera/camera2/internal/뎰땄돸뒼땯뒀듰뒛뒀뎠따딠뒼디둡딐듻뎠도뎠둘뒤득땮땩뒻땥딨뎸딄땯딤딌딝뒘딐드돰둡둠딎듸땨딠듰땡딅됴두듽돰딀땪뎸돛듟득땻됫땦될된듽돵뒷땩뒬뒉딐땤돴듟땪돴두돼됫땧땰돴뎽뒤뒙땵딎뒛뒾뎰뒈뒉돛딟돛뒾뒛뒈땨돛딸땜뒐둠딸돠딤돰딞땵듨듐돴딅따됫딁땜듔됨됩땅드딨뒀돤뒵땦딃둬듟땦;-><init>(Landroidx/camera/camera2/internal/FocusMeteringControl;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;I)V

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    const-string p1, "triggerAePrecapture"

    .line 13
    .line 14
    return-object p1
.end method

.method private static rangeLimit(III)I
    .locals 0

    .line 1
    invoke-static {p0, p2}, Ljava/lang/Math;->max(II)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method private shouldTriggerAF()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mAfRects:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    if-lez v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return v0
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroidx/camera/camera2/internal/FocusMeteringControl;IJLandroid/hardware/camera2/TotalCaptureResult;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/internal/FocusMeteringControl;->lambda$cancelFocusAndMeteringInternal$14(IJLandroid/hardware/camera2/TotalCaptureResult;)Z

    move-result p0

    return p0
.end method

.method public static synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Landroidx/camera/camera2/internal/FocusMeteringControl;ZLandroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/internal/FocusMeteringControl;->lambda$enableExternalFlashAeMode$4(ZLandroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    return-void
.end method

.method public static synthetic 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(JLandroidx/camera/camera2/internal/FocusMeteringControl;Landroidx/camera/core/FocusMeteringAction;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p2, p3, p0, p1, p4}, Landroidx/camera/camera2/internal/FocusMeteringControl;->lambda$startFocusAndMetering$1(Landroidx/camera/core/FocusMeteringAction;JLandroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(Landroidx/camera/camera2/internal/FocusMeteringControl;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/internal/FocusMeteringControl;->lambda$executeMeteringAction$11(J)V

    return-void
.end method

.method public static synthetic 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(Landroidx/camera/camera2/internal/FocusMeteringControl;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/internal/FocusMeteringControl;->lambda$executeMeteringAction$9(J)V

    return-void
.end method

.method public static synthetic 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤(Landroidx/camera/camera2/internal/FocusMeteringControl;ZLandroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/internal/FocusMeteringControl;->lambda$enableExternalFlashAeMode$5(ZLandroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋(Landroidx/camera/camera2/internal/FocusMeteringControl;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/camera/camera2/internal/FocusMeteringControl;->lambda$cancelFocusAndMetering$12(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    return-void
.end method

.method public static synthetic 뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두(Landroidx/camera/camera2/internal/FocusMeteringControl;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/camera/camera2/internal/FocusMeteringControl;->lambda$triggerAePrecapture$2(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    return-void
.end method

.method public static synthetic 뎨돶땰딎땵딃됨드땭두뒹듟땭땧될땤돝땡땟땡득땫땟듌둑듔뒐둔뒨딽땪돵둥뒬돝뒼뒹땻딹둡듔든땐땰땜땠돳땔될땪두땃딄되돸든돵뎬둘땨딀둡땲뎽땬듬딝딃땜뒼됨땤딝돴듽돰듻땲됫듸든둬듰듰듸뒈땳땠뎰딽둬딽뒼딎땃돸돳딠뒷뒛땯듬뎬땅땀되될딅땩땵됨땐땧뎰뎨땥됩뒋됐딟따됐땮뎡돛듰딸뎬뒙돷(Landroidx/camera/camera2/internal/FocusMeteringControl;JLandroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroid/hardware/camera2/TotalCaptureResult;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/internal/FocusMeteringControl;->lambda$enableExternalFlashAeMode$6(JLandroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroid/hardware/camera2/TotalCaptureResult;)Z

    move-result p0

    return p0
.end method

.method public static synthetic 뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Landroidx/camera/camera2/internal/FocusMeteringControl;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/camera/camera2/internal/FocusMeteringControl;->lambda$triggerAePrecapture$3(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Landroidx/camera/camera2/internal/FocusMeteringControl;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/internal/FocusMeteringControl;->lambda$executeMeteringAction$8(J)V

    return-void
.end method

.method public static synthetic 뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻(Landroidx/camera/camera2/internal/FocusMeteringControl;ZJLandroid/hardware/camera2/TotalCaptureResult;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/internal/FocusMeteringControl;->lambda$executeMeteringAction$7(ZJLandroid/hardware/camera2/TotalCaptureResult;)Z

    move-result p0

    return p0
.end method

.method public static synthetic 뎨뒋딝뒘땻땭땳뒨돵뒋땡돛딟따뒷땮돴딤딃들땡돸땀뒘돳뎹됩둑딠뒬딤뎸땁뒙뒾딽딄뒷뒘땯도두뎠돸돤뒝돼뒵땳땰딅든뒻뒘땰땯땅뒼돤딃두딁땔듌뒵뎸돷뒘됴딻듔땬돵돼둔땸돨땧돝땲땧땥돛뒼뒋땨돶땮도땁돳듔돳뒈돨딟땨뎹딽둡뒤땐뒘뎡땃땯딐딄뒐땧뒤딹뒬딃땋뎽땮딅뎽뎻딞땡땮뎽뒙듟뎡뎹뒐딁(Landroidx/camera/camera2/internal/FocusMeteringControl;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/internal/FocusMeteringControl;->lambda$executeMeteringAction$10(J)V

    return-void
.end method

.method public static synthetic 뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Landroidx/camera/camera2/internal/FocusMeteringControl;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/camera/camera2/internal/FocusMeteringControl;->lambda$cancelFocusAndMetering$13(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎨딐딁들땠듟땣땝딄둬돨땁땸뒷돵뒝듨뒬딀듨듔딁뒐땯되들돶듰땋듽듸땡둥딹됨돨듼땀땝딀땳땍됨땱뒀땵될됫땪뒼돨땲뎹딨딅딄땜딜땨듌땫둑딜땠뒨땮땸뎡둔됫듐뒾따됐돶둡땦땲땵뒤땄든땃든뒵둑따돶듻드뒋뎸뎸돨뒘듽땧딻땋딸땯뒹딤땤디뒀둡되땯뒾뎹뒷됴뒨딁땰들됨된딜둬땣땀땔딸됩땩돴땡뎨(JLandroidx/camera/camera2/internal/FocusMeteringControl;Landroidx/camera/core/FocusMeteringAction;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 0

    .line 1
    invoke-direct {p2, p4, p3, p0, p1}, Landroidx/camera/camera2/internal/FocusMeteringControl;->lambda$startFocusAndMetering$0(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroidx/camera/core/FocusMeteringAction;J)V

    return-void
.end method


# virtual methods
.method public addFocusMeteringOptions(Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;)V
    .locals 3
    .param p1    # Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mIsInAfAutoMode:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroidx/camera/camera2/internal/FocusMeteringControl;->getDefaultAfMode()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    :goto_0
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 12
    .line 13
    iget-object v2, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mCameraControl:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    .line 14
    .line 15
    invoke-virtual {v2, v0}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->getSupportedAfMode(I)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sget-object v2, Landroidx/camera/core/impl/Config$OptionPriority;->REQUIRED:Landroidx/camera/core/impl/Config$OptionPriority;

    .line 24
    .line 25
    invoke-virtual {p1, v1, v0, v2}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->setCaptureRequestOptionWithPriority(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;Landroidx/camera/core/impl/Config$OptionPriority;)Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mAfRects:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 29
    .line 30
    array-length v1, v0

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 34
    .line 35
    invoke-virtual {p1, v1, v0, v2}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->setCaptureRequestOptionWithPriority(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;Landroidx/camera/core/impl/Config$OptionPriority;)Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    .line 36
    .line 37
    .line 38
    :cond_1
    iget-object v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mAeRects:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 39
    .line 40
    array-length v1, v0

    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 44
    .line 45
    invoke-virtual {p1, v1, v0, v2}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->setCaptureRequestOptionWithPriority(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;Landroidx/camera/core/impl/Config$OptionPriority;)Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    .line 46
    .line 47
    .line 48
    :cond_2
    iget-object v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mAwbRects:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 49
    .line 50
    array-length v1, v0

    .line 51
    if-eqz v1, :cond_3

    .line 52
    .line 53
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 54
    .line 55
    invoke-virtual {p1, v1, v0, v2}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->setCaptureRequestOptionWithPriority(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;Landroidx/camera/core/impl/Config$OptionPriority;)Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    .line 56
    .line 57
    .line 58
    :cond_3
    return-void
.end method

.method public cancelAfAeTrigger(ZZ)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mIsActive:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Landroidx/camera/core/impl/CaptureConfig$Builder;

    .line 7
    .line 8
    invoke-direct {v0}, Landroidx/camera/core/impl/CaptureConfig$Builder;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->setUseRepeatingSurface(Z)V

    .line 13
    .line 14
    .line 15
    iget v1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mTemplate:I

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->setTemplateType(I)V

    .line 18
    .line 19
    .line 20
    new-instance v1, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    .line 21
    .line 22
    invoke-direct {v1}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;-><init>()V

    .line 23
    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 29
    .line 30
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v1, p1, v3}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->setCaptureRequestOption(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    .line 35
    .line 36
    .line 37
    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 38
    .line 39
    const/16 v3, 0x17

    .line 40
    .line 41
    if-lt p1, v3, :cond_2

    .line 42
    .line 43
    if-eqz p2, :cond_2

    .line 44
    .line 45
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 46
    .line 47
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-virtual {v1, p1, p2}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->setCaptureRequestOption(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    .line 52
    .line 53
    .line 54
    :cond_2
    invoke-virtual {v1}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->build()Landroidx/camera/camera2/impl/Camera2ImplConfig;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {v0, p1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addImplementationOptions(Landroidx/camera/core/impl/Config;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mCameraControl:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    .line 62
    .line 63
    invoke-virtual {v0}, Landroidx/camera/core/impl/CaptureConfig$Builder;->build()Landroidx/camera/core/impl/CaptureConfig;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-virtual {p1, p2}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->submitCaptureRequestsInternal(Ljava/util/List;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public cancelFocusAndMetering()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/camera/camera2/internal/뎰둣땀땀땪돶돛땥딀뎽돝뎡땔딤뒬돠딝땠뒀됨딅딻땜뒉딟딠든듌돤뒛뒨돼도딠뎽땭뒻딃땝딠뒾드땫땜땥됨땩둡딎돸딽듽땠땄뎻됴둔딄땤뒷돴딻둥뎨듼둥돴듰땮뎰땦듌땜뎡돸땅땫땣득뒵드둘딹땡딄듽땬땐뎹둘딹돼뒛땻둑따돤뎡딄듻뒷돨땐뎻두땲득듬뒬땩둘땮뒻도도땥뒬딻두땔따들딅둑땔뒈딤땮뎻뎬;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Landroidx/camera/camera2/internal/뎰둣땀땀땪돶돛땥딀뎽돝뎡땔딤뒬돠딝땠뒀됨딅딻땜뒉딟딠든듌돤뒛뒨돼도딠뎽땭뒻딃땝딠뒾드땫땜땥됨땩둡딎돸딽듽땠땄뎻됴둔딄땤뒷돴딻둥뎨듼둥돴듰땮뎰땦듌땜뎡돸땅땫땣득뒵드둘딹땡딄듽땬땐뎹둘딹돼뒛땻둑따돤뎡딄듻뒷돨땐뎻두땲득듬뒬땩둘땮뒻도도땥뒬딻두땔따들딅둑땔뒈딤땮뎻뎬;-><init>(Landroidx/camera/camera2/internal/FocusMeteringControl;I)V

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public cancelFocusAndMeteringInternal(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 3
    .param p1    # Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "Cancelled by another cancelFocusAndMetering()"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroidx/camera/camera2/internal/FocusMeteringControl;->failCancelFuture(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "Cancelled by cancelFocusAndMetering()"

    .line 7
    .line 8
    invoke-direct {p0, v0}, Landroidx/camera/camera2/internal/FocusMeteringControl;->failActionFuture(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mRunningCancelCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 12
    .line 13
    invoke-direct {p0}, Landroidx/camera/camera2/internal/FocusMeteringControl;->disableAutoCancel()V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Landroidx/camera/camera2/internal/FocusMeteringControl;->clearAutoFocusTimeoutHandle()V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Landroidx/camera/camera2/internal/FocusMeteringControl;->shouldTriggerAF()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    const/4 v0, 0x0

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    const/4 p1, 0x1

    .line 27
    invoke-virtual {p0, p1, v0}, Landroidx/camera/camera2/internal/FocusMeteringControl;->cancelAfAeTrigger(ZZ)V

    .line 28
    .line 29
    .line 30
    :cond_0
    sget-object p1, Landroidx/camera/camera2/internal/FocusMeteringControl;->EMPTY_RECTANGLES:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 31
    .line 32
    iput-object p1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mAfRects:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 33
    .line 34
    iput-object p1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mAeRects:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 35
    .line 36
    iput-object p1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mAwbRects:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 37
    .line 38
    iput-boolean v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mIsInAfAutoMode:Z

    .line 39
    .line 40
    iget-object p1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mCameraControl:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    .line 41
    .line 42
    invoke-virtual {p1}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->updateSessionConfigSynchronous()J

    .line 43
    .line 44
    .line 45
    move-result-wide v0

    .line 46
    iget-object p1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mRunningCancelCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 47
    .line 48
    if-eqz p1, :cond_1

    .line 49
    .line 50
    iget-object p1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mCameraControl:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    .line 51
    .line 52
    invoke-virtual {p0}, Landroidx/camera/camera2/internal/FocusMeteringControl;->getDefaultAfMode()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    invoke-virtual {p1, v2}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->getSupportedAfMode(I)I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    new-instance v2, Landroidx/camera/camera2/internal/뎸딜둠딎뎬딻돰딃뒨땀듌딤뒋뎻땍뒵될뒼땸둘땤듰딌딻둔땱땁따땮땬뒀뒛땫딻땮땮드땹땥땬땠듬땯득땐땐땋딐뒉돴땬뒨듌땯뎹땱될듟땭땮뒹돸딞딐돨뒘딃듰되뎰듐뒵디딨디땜땋뎠뒬디딤듬딠듼뒬뒹뒵딤땥둘둘땄딠뎹듽듔뒻뎻뎻돝딨따땟둣듻딄뒙돶땭땄듽딟땯뒾디딄둬뒀딅뒐듽뎠듬돛땤디둥딨딤땮;

    .line 61
    .line 62
    invoke-direct {v2, p1, v0, v1, p0}, Landroidx/camera/camera2/internal/뎸딜둠딎뎬딻돰딃뒨땀듌딤뒋뎻땍뒵될뒼땸둘땤듰딌딻둔땱땁따땮땬뒀뒛땫딻땮땮드땹땥땬땠듬땯득땐땐땋딐뒉돴땬뒨듌땯뎹땱될듟땭땮뒹돸딞딐돨뒘딃듰되뎰듐뒵디딨디땜땋뎠뒬디딤듬딠듼뒬뒹뒵딤땥둘둘땄딠뎹듽듔뒻뎻뎻돝딨따땟둣듻딄뒙돶땭땄듽딟땯뒾디딄둬뒀딅뒐듽뎠듬돛땤디둥딨딤땮;-><init>(IJLandroidx/camera/camera2/internal/FocusMeteringControl;)V

    .line 63
    .line 64
    .line 65
    iput-object v2, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mSessionListenerForCancel:Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CaptureResultListener;

    .line 66
    .line 67
    iget-object p1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mCameraControl:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    .line 68
    .line 69
    invoke-virtual {p1, v2}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->addCaptureResultListener(Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CaptureResultListener;)V

    .line 70
    .line 71
    .line 72
    :cond_1
    return-void
.end method

.method public cancelFocusAndMeteringWithoutAsyncResult()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/camera/camera2/internal/FocusMeteringControl;->cancelFocusAndMeteringInternal(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public completeActionFuture(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/camera/camera2/internal/FocusMeteringControl;->clearAutoFocusTimeoutHandle()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mRunningActionCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Landroidx/camera/core/FocusMeteringResult;->create(Z)Landroidx/camera/core/FocusMeteringResult;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {v0, p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mRunningActionCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public enableExternalFlashAeMode(Z)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 2
    invoke-static {v2}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mCameraControl:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->getSupportedAeMode(I)I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 4
    invoke-static {v2}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    new-instance v0, Landroidx/camera/camera2/internal/뎰돼땰땮땣땅땜될딝딀땰득땩둡따됴뎠뒉뎰땸딜둬땩뒼뒻뒙돰돛돷돝뒉돤딤듸딁땯뎡땰땻땁돷듽듸땜땟딝돰듬디뒛듸땸듼둠땧듨듌뒵뎹뒻든돵될든듌듬돠땣딎뒼듽땠듻딤땱드땰땦득땐뒘땄될땧뒾듨땝디땦든딁딅뒘뒉됐뒋땸땋돛든돷땻돠됫뒼될돳돛땄땃땦드둑땱뒀뒹딌땡딀듐뒀돰땋땨뒼뒉따뎻됩뒻;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Landroidx/camera/camera2/internal/뎰돼땰땮땣땅땜될딝딀땰득땩둡따됴뎠뒉뎰땸딜둬땩뒼뒻뒙돰돛돷돝뒉돤딤듸딁땯뎡땰땻땁돷듽듸땜땟딝돰듬디뒛듸땸듼둠땧듨듌뒵뎹뒻든돵될든듌듬돠땣딎뒼듽땠듻딤땱드땰땦득땐뒘땄될땧뒾듨땝디땦든딁딅뒘뒉됐뒋땸땋돛든돷땻돠됫뒼될돳돛땄땃땦드둑땱뒀뒹딌땡딀듐뒀돰땋땨뒼뒉따뎻됩뒻;-><init>(ILjava/lang/Object;Z)V

    invoke-static {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public getDefaultAfMode()I
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mTemplate:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x4

    .line 7
    return v0

    .line 8
    :cond_0
    return v1
.end method

.method public isExternalFlashAeModeEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mIsExternalFlashAeModeEnabled:Z

    .line 2
    .line 3
    return v0
.end method

.method public isFocusMeteringSupported(Landroidx/camera/core/FocusMeteringAction;)Z
    .locals 10
    .param p1    # Landroidx/camera/core/FocusMeteringAction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mCameraControl:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->getCropSensorRegion()Landroid/graphics/Rect;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0}, Landroidx/camera/camera2/internal/FocusMeteringControl;->getDefaultAspectRatio()Landroid/util/Rational;

    .line 8
    .line 9
    .line 10
    move-result-object v7

    .line 11
    invoke-virtual {p1}, Landroidx/camera/core/FocusMeteringAction;->getMeteringPointsAf()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget-object v1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mCameraControl:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->getMaxAfRegionCount()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    const/4 v6, 0x1

    .line 22
    move-object v1, p0

    .line 23
    move-object v4, v7

    .line 24
    move-object v5, v0

    .line 25
    invoke-direct/range {v1 .. v6}, Landroidx/camera/camera2/internal/FocusMeteringControl;->getMeteringRectangles(Ljava/util/List;ILandroid/util/Rational;Landroid/graphics/Rect;I)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v8

    .line 29
    invoke-virtual {p1}, Landroidx/camera/core/FocusMeteringAction;->getMeteringPointsAe()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    iget-object v1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mCameraControl:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    .line 34
    .line 35
    invoke-virtual {v1}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->getMaxAeRegionCount()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    const/4 v6, 0x2

    .line 40
    move-object v1, p0

    .line 41
    invoke-direct/range {v1 .. v6}, Landroidx/camera/camera2/internal/FocusMeteringControl;->getMeteringRectangles(Ljava/util/List;ILandroid/util/Rational;Landroid/graphics/Rect;I)Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v9

    .line 45
    invoke-virtual {p1}, Landroidx/camera/core/FocusMeteringAction;->getMeteringPointsAwb()Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    iget-object p1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mCameraControl:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    .line 50
    .line 51
    invoke-virtual {p1}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->getMaxAwbRegionCount()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    const/4 v6, 0x4

    .line 56
    invoke-direct/range {v1 .. v6}, Landroidx/camera/camera2/internal/FocusMeteringControl;->getMeteringRectangles(Ljava/util/List;ILandroid/util/Rational;Landroid/graphics/Rect;I)Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_1

    .line 65
    .line 66
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_1

    .line 71
    .line 72
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-nez p1, :cond_0

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_0
    const/4 p1, 0x0

    .line 80
    goto :goto_1

    .line 81
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 82
    :goto_1
    return p1
.end method

.method public setActive(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mIsActive:Z

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mIsActive:Z

    .line 7
    .line 8
    iget-boolean p1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mIsActive:Z

    .line 9
    .line 10
    if-nez p1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/camera/camera2/internal/FocusMeteringControl;->cancelFocusAndMeteringWithoutAsyncResult()V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method

.method public setPreviewAspectRatio(Landroid/util/Rational;)V
    .locals 0
    .param p1    # Landroid/util/Rational;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mPreviewAspectRatio:Landroid/util/Rational;

    .line 2
    .line 3
    return-void
.end method

.method public setTemplate(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mTemplate:I

    .line 2
    .line 3
    return-void
.end method

.method public startFocusAndMetering(Landroidx/camera/core/FocusMeteringAction;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1    # Landroidx/camera/core/FocusMeteringAction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/FocusMeteringAction;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/camera/core/FocusMeteringResult;",
            ">;"
        }
    .end annotation

    const-wide/16 v0, 0x1388

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Landroidx/camera/camera2/internal/FocusMeteringControl;->startFocusAndMetering(Landroidx/camera/core/FocusMeteringAction;J)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public startFocusAndMetering(Landroidx/camera/core/FocusMeteringAction;J)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p1    # Landroidx/camera/core/FocusMeteringAction;
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
            "Landroidx/camera/core/FocusMeteringAction;",
            "J)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/camera/core/FocusMeteringResult;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Landroidx/camera/camera2/internal/뎸딀듽땐땱딨둘됴듨돛땐둔되땔돳된듨됩땨따듬땮뒐든듸뒹딝땟땬땋뎰뒵딽땩땵드땍딻뒛땰땮딐뒤땄돸뒐돤땻땵뎡딎땭딸뎡듻뎸뒛땟뎰뒉땡돨딄땄딤뎠둣뒈땠땭뒉땀뒀뒘딃땤뎡뒘뎡땪돳됫돤뎸땡됴땪돳땭딤딹뒹듌뒬둑땸듨땰둠뒋땬딻땥돶딎땥두뒵뒝딅딝뒹뒾딃뒝땣뒵뎬딹땄딁돷뎬땅땃뒾뒼뎨땸땥;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/camera/camera2/internal/뎸딀듽땐땱딨둘됴듨돛땐둔되땔돳된듨됩땨따듬땮뒐든듸뒹딝땟땬땋뎰뒵딽땩땵드땍딻뒛땰땮딐뒤땄돸뒐돤땻땵뎡딎땭딸뎡듻뎸뒛땟뎰뒉땡돨딄땄딤뎠둣뒈땠땭뒉땀뒀뒘딃땤뎡뒘뎡땪돳됫돤뎸땡됴땪돳땭딤딹뒹듌뒬둑땸듨땰둠뒋땬딻땥돶딎땥두뒵뒝딅딝뒹뒾딃뒝땣뒵뎬딹땄딁돷뎬땅땃뒾뒼뎨땸땥;-><init>(Landroidx/camera/camera2/internal/FocusMeteringControl;Landroidx/camera/core/FocusMeteringAction;J)V

    invoke-static {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public startFocusAndMeteringInternal(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroidx/camera/core/FocusMeteringAction;J)V
    .locals 10
    .param p1    # Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/FocusMeteringAction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<",
            "Landroidx/camera/core/FocusMeteringResult;",
            ">;",
            "Landroidx/camera/core/FocusMeteringAction;",
            "J)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mIsActive:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance p2, Landroidx/camera/core/CameraControl$OperationCanceledException;

    .line 6
    .line 7
    const-string p3, "Camera is not active."

    .line 8
    .line 9
    invoke-direct {p2, p3}, Landroidx/camera/core/CameraControl$OperationCanceledException;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p2}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mCameraControl:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->getCropSensorRegion()Landroid/graphics/Rect;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-direct {p0}, Landroidx/camera/camera2/internal/FocusMeteringControl;->getDefaultAspectRatio()Landroid/util/Rational;

    .line 23
    .line 24
    .line 25
    move-result-object v7

    .line 26
    invoke-virtual {p2}, Landroidx/camera/core/FocusMeteringAction;->getMeteringPointsAf()Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    iget-object v1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mCameraControl:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    .line 31
    .line 32
    invoke-virtual {v1}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->getMaxAfRegionCount()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    const/4 v6, 0x1

    .line 37
    move-object v1, p0

    .line 38
    move-object v4, v7

    .line 39
    move-object v5, v0

    .line 40
    invoke-direct/range {v1 .. v6}, Landroidx/camera/camera2/internal/FocusMeteringControl;->getMeteringRectangles(Ljava/util/List;ILandroid/util/Rational;Landroid/graphics/Rect;I)Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v8

    .line 44
    invoke-virtual {p2}, Landroidx/camera/core/FocusMeteringAction;->getMeteringPointsAe()Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    iget-object v1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mCameraControl:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    .line 49
    .line 50
    invoke-virtual {v1}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->getMaxAeRegionCount()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    const/4 v6, 0x2

    .line 55
    move-object v1, p0

    .line 56
    invoke-direct/range {v1 .. v6}, Landroidx/camera/camera2/internal/FocusMeteringControl;->getMeteringRectangles(Ljava/util/List;ILandroid/util/Rational;Landroid/graphics/Rect;I)Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object v9

    .line 60
    invoke-virtual {p2}, Landroidx/camera/core/FocusMeteringAction;->getMeteringPointsAwb()Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    iget-object v1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mCameraControl:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    .line 65
    .line 66
    invoke-virtual {v1}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->getMaxAwbRegionCount()I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    const/4 v6, 0x4

    .line 71
    move-object v1, p0

    .line 72
    invoke-direct/range {v1 .. v6}, Landroidx/camera/camera2/internal/FocusMeteringControl;->getMeteringRectangles(Ljava/util/List;ILandroid/util/Rational;Landroid/graphics/Rect;I)Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_1

    .line 81
    .line 82
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-eqz v1, :cond_1

    .line 87
    .line 88
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-eqz v1, :cond_1

    .line 93
    .line 94
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 95
    .line 96
    const-string p3, "None of the specified AF/AE/AWB MeteringPoints is supported on this camera."

    .line 97
    .line 98
    invoke-direct {p2, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, p2}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :cond_1
    const-string v1, "Cancelled by another startFocusAndMetering()"

    .line 106
    .line 107
    invoke-direct {p0, v1}, Landroidx/camera/camera2/internal/FocusMeteringControl;->failActionFuture(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-direct {p0, v1}, Landroidx/camera/camera2/internal/FocusMeteringControl;->failCancelFuture(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-direct {p0}, Landroidx/camera/camera2/internal/FocusMeteringControl;->disableAutoCancel()V

    .line 114
    .line 115
    .line 116
    iput-object p1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mRunningActionCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 117
    .line 118
    sget-object p1, Landroidx/camera/camera2/internal/FocusMeteringControl;->EMPTY_RECTANGLES:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 119
    .line 120
    invoke-interface {v8, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    move-object v3, v1

    .line 125
    check-cast v3, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 126
    .line 127
    invoke-interface {v9, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    move-object v4, v1

    .line 132
    check-cast v4, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 133
    .line 134
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    move-object v5, p1

    .line 139
    check-cast v5, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 140
    .line 141
    move-object v2, p0

    .line 142
    move-object v6, p2

    .line 143
    move-wide v7, p3

    .line 144
    invoke-direct/range {v2 .. v8}, Landroidx/camera/camera2/internal/FocusMeteringControl;->executeMeteringAction([Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;Landroidx/camera/core/FocusMeteringAction;J)V

    .line 145
    .line 146
    .line 147
    return-void
.end method

.method public triggerAePrecapture()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/camera/camera2/internal/뎰둣땀땀땪돶돛땥딀뎽돝뎡땔딤뒬돠딝땠뒀됨딅딻땜뒉딟딠든듌돤뒛뒨돼도딠뎽땭뒻딃땝딠뒾드땫땜땥됨땩둡딎돸딽듽땠땄뎻됴둔딄땤뒷돴딻둥뎨듼둥돴듰땮뎰땦듌땜뎡돸땅땫땣득뒵드둘딹땡딄듽땬땐뎹둘딹돼뒛땻둑따돤뎡딄듻뒷돨땐뎻두땲득듬뒬땩둘땮뒻도도땥뒬딻두땔따들딅둑땔뒈딤땮뎻뎬;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroidx/camera/camera2/internal/뎰둣땀땀땪돶돛땥딀뎽돝뎡땔딤뒬돠딝땠뒀됨딅딻땜뒉딟딠든듌돤뒛뒨돼도딠뎽땭뒻딃땝딠뒾드땫땜땥됨땩둡딎돸딽듽땠땄뎻됴둔딄땤뒷돴딻둥뎨듼둥돴듰땮뎰땦듌땜뎡돸땅땫땣득뒵드둘딹땡딄듽땬땐뎹둘딹돼뒛땻둑따돤뎡딄듻뒷돨땐뎻두땲득듬뒬땩둘땮뒻도도땥뒬딻두땔따들딅둑땔뒈딤땮뎻뎬;-><init>(Landroidx/camera/camera2/internal/FocusMeteringControl;I)V

    invoke-static {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public triggerAePrecapture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 4
    .param p1    # Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 2
    const-string v0, "FocusMeteringControl"

    const-string v1, "triggerAePrecapture"

    invoke-static {v0, v1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-boolean v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mIsActive:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 4
    new-instance v0, Landroidx/camera/core/CameraControl$OperationCanceledException;

    const-string v1, "Camera is not active."

    invoke-direct {v0, v1}, Landroidx/camera/core/CameraControl$OperationCanceledException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    :cond_0
    return-void

    .line 5
    :cond_1
    new-instance v0, Landroidx/camera/core/impl/CaptureConfig$Builder;

    invoke-direct {v0}, Landroidx/camera/core/impl/CaptureConfig$Builder;-><init>()V

    .line 6
    iget v1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mTemplate:I

    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->setTemplateType(I)V

    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->setUseRepeatingSurface(Z)V

    .line 8
    new-instance v2, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    invoke-direct {v2}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;-><init>()V

    .line 9
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 11
    invoke-virtual {v2, v3, v1}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->setCaptureRequestOption(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    .line 12
    invoke-virtual {v2}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->build()Landroidx/camera/camera2/impl/Camera2ImplConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addImplementationOptions(Landroidx/camera/core/impl/Config;)V

    .line 13
    new-instance v1, Landroidx/camera/camera2/internal/FocusMeteringControl$2;

    invoke-direct {v1, p0, p1}, Landroidx/camera/camera2/internal/FocusMeteringControl$2;-><init>(Landroidx/camera/camera2/internal/FocusMeteringControl;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addCameraCaptureCallback(Landroidx/camera/core/impl/CameraCaptureCallback;)V

    .line 14
    iget-object p1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mCameraControl:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    invoke-virtual {v0}, Landroidx/camera/core/impl/CaptureConfig$Builder;->build()Landroidx/camera/core/impl/CaptureConfig;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->submitCaptureRequestsInternal(Ljava/util/List;)V

    return-void
.end method

.method public triggerAf(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Z)V
    .locals 5
    .param p1    # Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<",
            "Landroidx/camera/core/impl/CameraCaptureResult;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mIsActive:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    new-instance p2, Landroidx/camera/core/CameraControl$OperationCanceledException;

    .line 8
    .line 9
    const-string v0, "Camera is not active."

    .line 10
    .line 11
    invoke-direct {p2, v0}, Landroidx/camera/core/CameraControl$OperationCanceledException;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void

    .line 18
    :cond_1
    new-instance v0, Landroidx/camera/core/impl/CaptureConfig$Builder;

    .line 19
    .line 20
    invoke-direct {v0}, Landroidx/camera/core/impl/CaptureConfig$Builder;-><init>()V

    .line 21
    .line 22
    .line 23
    iget v1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mTemplate:I

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->setTemplateType(I)V

    .line 26
    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->setUseRepeatingSurface(Z)V

    .line 30
    .line 31
    .line 32
    new-instance v2, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    .line 33
    .line 34
    invoke-direct {v2}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;-><init>()V

    .line 35
    .line 36
    .line 37
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 38
    .line 39
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-virtual {v2, v3, v4}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->setCaptureRequestOption(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    .line 44
    .line 45
    .line 46
    if-eqz p2, :cond_2

    .line 47
    .line 48
    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 49
    .line 50
    iget-object v3, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mCameraControl:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    .line 51
    .line 52
    invoke-virtual {v3, v1}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->getSupportedAeMode(I)I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    sget-object v3, Landroidx/camera/core/impl/Config$OptionPriority;->HIGH_PRIORITY_REQUIRED:Landroidx/camera/core/impl/Config$OptionPriority;

    .line 61
    .line 62
    invoke-virtual {v2, p2, v1, v3}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->setCaptureRequestOptionWithPriority(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;Landroidx/camera/core/impl/Config$OptionPriority;)Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    .line 63
    .line 64
    .line 65
    :cond_2
    invoke-virtual {v2}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->build()Landroidx/camera/camera2/impl/Camera2ImplConfig;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    invoke-virtual {v0, p2}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addImplementationOptions(Landroidx/camera/core/impl/Config;)V

    .line 70
    .line 71
    .line 72
    new-instance p2, Landroidx/camera/camera2/internal/FocusMeteringControl$1;

    .line 73
    .line 74
    invoke-direct {p2, p0, p1}, Landroidx/camera/camera2/internal/FocusMeteringControl$1;-><init>(Landroidx/camera/camera2/internal/FocusMeteringControl;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, p2}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addCameraCaptureCallback(Landroidx/camera/core/impl/CameraCaptureCallback;)V

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Landroidx/camera/camera2/internal/FocusMeteringControl;->mCameraControl:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    .line 81
    .line 82
    invoke-virtual {v0}, Landroidx/camera/core/impl/CaptureConfig$Builder;->build()Landroidx/camera/core/impl/CaptureConfig;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    invoke-virtual {p1, p2}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->submitCaptureRequestsInternal(Ljava/util/List;)V

    .line 91
    .line 92
    .line 93
    return-void
.end method
