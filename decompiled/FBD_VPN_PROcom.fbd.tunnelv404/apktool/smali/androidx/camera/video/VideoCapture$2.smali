.class Landroidx/camera/video/VideoCapture$2;
.super Landroidx/camera/core/impl/CameraCaptureCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/video/VideoCapture;->setupSurfaceUpdateNotifier(Landroidx/camera/core/impl/SessionConfig$Builder;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private mIsFirstCaptureResult:Z

.field final synthetic this$0:Landroidx/camera/video/VideoCapture;

.field final synthetic val$completer:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

.field final synthetic val$sessionConfigBuilder:Landroidx/camera/core/impl/SessionConfig$Builder;

.field final synthetic val$surfaceUpdateComplete:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroidx/camera/video/VideoCapture;Ljava/util/concurrent/atomic/AtomicBoolean;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroidx/camera/core/impl/SessionConfig$Builder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/camera/video/VideoCapture$2;->this$0:Landroidx/camera/video/VideoCapture;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/camera/video/VideoCapture$2;->val$surfaceUpdateComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/camera/video/VideoCapture$2;->val$completer:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/camera/video/VideoCapture$2;->val$sessionConfigBuilder:Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 8
    .line 9
    invoke-direct {p0}, Landroidx/camera/core/impl/CameraCaptureCallback;-><init>()V

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Landroidx/camera/video/VideoCapture$2;->mIsFirstCaptureResult:Z

    .line 14
    .line 15
    return-void
.end method

.method private synthetic lambda$onCaptureCompleted$0(Landroidx/camera/core/impl/SessionConfig$Builder;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Landroidx/camera/core/impl/SessionConfig$Builder;->removeCameraCaptureCallback(Landroidx/camera/core/impl/CameraCaptureCallback;)Z

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroidx/camera/video/VideoCapture$2;Landroidx/camera/core/impl/SessionConfig$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/camera/video/VideoCapture$2;->lambda$onCaptureCompleted$0(Landroidx/camera/core/impl/SessionConfig$Builder;)V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(ILandroidx/camera/core/impl/CameraCaptureResult;)V
    .locals 2
    .param p2    # Landroidx/camera/core/impl/CameraCaptureResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/camera/core/impl/CameraCaptureCallback;->onCaptureCompleted(ILandroidx/camera/core/impl/CameraCaptureResult;)V

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p0, Landroidx/camera/video/VideoCapture$2;->mIsFirstCaptureResult:Z

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Landroidx/camera/video/VideoCapture$2;->mIsFirstCaptureResult:Z

    .line 10
    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v0, "cameraCaptureResult timestampNs = "

    .line 14
    .line 15
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {p2}, Landroidx/camera/core/impl/CameraCaptureResult;->getTimestamp()J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v0, ", current system uptimeMs = "

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v0, ", current system realtimeMs = "

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 43
    .line 44
    .line 45
    move-result-wide v0

    .line 46
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    const-string v0, "VideoCapture"

    .line 54
    .line 55
    invoke-static {v0, p1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :cond_0
    iget-object p1, p0, Landroidx/camera/video/VideoCapture$2;->val$surfaceUpdateComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-nez p1, :cond_1

    .line 65
    .line 66
    invoke-interface {p2}, Landroidx/camera/core/impl/CameraCaptureResult;->getTagBundle()Landroidx/camera/core/impl/TagBundle;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    const-string p2, "androidx.camera.video.VideoCapture.streamUpdate"

    .line 71
    .line 72
    invoke-virtual {p1, p2}, Landroidx/camera/core/impl/TagBundle;->getTag(Ljava/lang/String;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    if-eqz p1, :cond_1

    .line 77
    .line 78
    check-cast p1, Ljava/lang/Integer;

    .line 79
    .line 80
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    iget-object p2, p0, Landroidx/camera/video/VideoCapture$2;->val$completer:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 85
    .line 86
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    .line 87
    .line 88
    .line 89
    move-result p2

    .line 90
    if-ne p1, p2, :cond_1

    .line 91
    .line 92
    iget-object p1, p0, Landroidx/camera/video/VideoCapture$2;->val$completer:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 93
    .line 94
    const/4 p2, 0x0

    .line 95
    invoke-virtual {p1, p2}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-eqz p1, :cond_1

    .line 100
    .line 101
    iget-object p1, p0, Landroidx/camera/video/VideoCapture$2;->val$surfaceUpdateComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 102
    .line 103
    const/4 p2, 0x1

    .line 104
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    if-nez p1, :cond_1

    .line 109
    .line 110
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    iget-object p2, p0, Landroidx/camera/video/VideoCapture$2;->val$sessionConfigBuilder:Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 115
    .line 116
    new-instance v0, Landroidx/camera/video/뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠;

    .line 117
    .line 118
    const/4 v1, 0x1

    .line 119
    invoke-direct {v0, p0, p2, v1}, Landroidx/camera/video/뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 120
    .line 121
    .line 122
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 123
    .line 124
    .line 125
    :cond_1
    return-void
.end method
