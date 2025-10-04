.class public abstract Landroidx/camera/view/CameraController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/view/CameraController$OutputSize;,
        Landroidx/camera/view/CameraController$UseCases;
    }
.end annotation


# static fields
.field private static final AE_SIZE:F = 0.25f

.field private static final AF_SIZE:F = 0.16666667f

.field private static final CAMERA_NOT_ATTACHED:Ljava/lang/String; = "Use cases not attached to camera."

.field private static final CAMERA_NOT_INITIALIZED:Ljava/lang/String; = "Camera not initialized."

.field public static final COORDINATE_SYSTEM_VIEW_REFERENCED:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final IMAGE_ANALYSIS:I = 0x2

.field public static final IMAGE_CAPTURE:I = 0x1

.field private static final IMAGE_CAPTURE_DISABLED:Ljava/lang/String; = "ImageCapture disabled."

.field private static final NO_OP_SCREEN_FLASH:Landroidx/camera/core/ImageCapture$ScreenFlash;

.field private static final PREVIEW_VIEW_NOT_ATTACHED:Ljava/lang/String; = "PreviewView not attached to CameraController."

.field private static final TAG:Ljava/lang/String; = "CameraController"

.field public static final TAP_TO_FOCUS_FAILED:I = 0x4

.field public static final TAP_TO_FOCUS_FOCUSED:I = 0x2

.field public static final TAP_TO_FOCUS_NOT_FOCUSED:I = 0x3

.field public static final TAP_TO_FOCUS_NOT_STARTED:I = 0x0

.field public static final TAP_TO_FOCUS_STARTED:I = 0x1

.field public static final VIDEO_CAPTURE:I = 0x4

.field private static final VIDEO_CAPTURE_DISABLED:Ljava/lang/String; = "VideoCapture disabled."

.field private static final VIDEO_RECORDING_UNFINISHED:Ljava/lang/String; = "Recording video. Only one recording can be active at a time."


# instance fields
.field mActiveRecording:Landroidx/camera/video/Recording;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mAnalysisAnalyzer:Landroidx/camera/core/ImageAnalysis$Analyzer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mAnalysisBackgroundExecutor:Ljava/util/concurrent/Executor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mAnalysisExecutor:Ljava/util/concurrent/Executor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mAppContext:Landroid/content/Context;

.field mCamera:Landroidx/camera/core/Camera;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field mCameraProvider:Landroidx/camera/view/ProcessCameraProviderWrapper;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field mCameraSelector:Landroidx/camera/core/CameraSelector;

.field final mDeviceRotationListener:Landroidx/camera/view/RotationProvider$Listener;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mEffects:Ljava/util/Set;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/camera/core/CameraEffect;",
            ">;"
        }
    .end annotation
.end field

.field private mEnabledUseCases:I

.field mImageAnalysis:Landroidx/camera/core/ImageAnalysis;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field mImageAnalysisResolutionSelector:Landroidx/camera/core/resolutionselector/ResolutionSelector;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field mImageAnalysisTargetSize:Landroidx/camera/view/CameraController$OutputSize;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field mImageCapture:Landroidx/camera/core/ImageCapture;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field mImageCaptureIoExecutor:Ljava/util/concurrent/Executor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field mImageCaptureResolutionSelector:Landroidx/camera/core/resolutionselector/ResolutionSelector;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field mImageCaptureTargetSize:Landroidx/camera/view/CameraController$OutputSize;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mInitializationFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingEnableTorch:Landroidx/camera/view/PendingValue;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/view/PendingValue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingLinearZoom:Landroidx/camera/view/PendingValue;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/view/PendingValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingZoomRatio:Landroidx/camera/view/PendingValue;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/view/PendingValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mPinchToZoomEnabled:Z

.field mPreview:Landroidx/camera/core/Preview;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mPreviewDynamicRange:Landroidx/camera/core/DynamicRange;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field mPreviewResolutionSelector:Landroidx/camera/core/resolutionselector/ResolutionSelector;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field mPreviewTargetSize:Landroidx/camera/view/CameraController$OutputSize;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field mRecordingMap:Ljava/util/Map;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/core/util/Consumer<",
            "Landroidx/camera/video/VideoRecordEvent;",
            ">;",
            "Landroidx/camera/video/Recording;",
            ">;"
        }
    .end annotation
.end field

.field private final mRotationProvider:Landroidx/camera/view/RotationProvider;

.field private final mScreenFlashUiInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/camera/view/internal/ScreenFlashUiInfo$ProviderType;",
            "Landroidx/camera/view/internal/ScreenFlashUiInfo;",
            ">;"
        }
    .end annotation
.end field

.field mSurfaceProvider:Landroidx/camera/core/Preview$SurfaceProvider;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mTapToFocusEnabled:Z

.field final mTapToFocusState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTorchState:Landroidx/camera/view/ForwardingLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/view/ForwardingLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mVideoCapture:Landroidx/camera/video/VideoCapture;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/video/VideoCapture<",
            "Landroidx/camera/video/Recorder;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoCaptureDynamicRange:Landroidx/camera/core/DynamicRange;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mVideoCaptureMirrorMode:I

.field mVideoCaptureQualitySelector:Landroidx/camera/video/QualitySelector;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mVideoCaptureTargetFrameRate:Landroid/util/Range;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mViewPort:Landroidx/camera/core/ViewPort;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mZoomState:Landroidx/camera/view/ForwardingLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/view/ForwardingLiveData<",
            "Landroidx/camera/core/ZoomState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/camera/view/CameraController$1;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/camera/view/CameraController$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/camera/view/CameraController;->NO_OP_SCREEN_FLASH:Landroidx/camera/core/ImageCapture$ScreenFlash;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Landroidx/camera/lifecycle/ProcessCameraProvider;->getInstance(Landroid/content/Context;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Landroidx/camera/view/뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 3
    invoke-static {v0, v1, v2}, Landroidx/camera/core/impl/utils/futures/Futures;->transform(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/arch/core/util/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroidx/camera/view/CameraController;-><init>(Landroid/content/Context;Lcom/google/common/util/concurrent/ListenableFuture;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/common/util/concurrent/ListenableFuture;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/camera/view/ProcessCameraProviderWrapper;",
            ">;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    sget-object v0, Landroidx/camera/core/CameraSelector;->DEFAULT_BACK_CAMERA:Landroidx/camera/core/CameraSelector;

    iput-object v0, p0, Landroidx/camera/view/CameraController;->mCameraSelector:Landroidx/camera/core/CameraSelector;

    const/4 v0, 0x3

    .line 6
    iput v0, p0, Landroidx/camera/view/CameraController;->mEnabledUseCases:I

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Landroidx/camera/view/CameraController;->mActiveRecording:Landroidx/camera/video/Recording;

    .line 8
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroidx/camera/view/CameraController;->mRecordingMap:Ljava/util/Map;

    .line 9
    sget-object v1, Landroidx/camera/video/Recorder;->DEFAULT_QUALITY_SELECTOR:Landroidx/camera/video/QualitySelector;

    iput-object v1, p0, Landroidx/camera/view/CameraController;->mVideoCaptureQualitySelector:Landroidx/camera/video/QualitySelector;

    const/4 v1, 0x0

    .line 10
    iput v1, p0, Landroidx/camera/view/CameraController;->mVideoCaptureMirrorMode:I

    .line 11
    sget-object v2, Landroidx/camera/core/DynamicRange;->UNSPECIFIED:Landroidx/camera/core/DynamicRange;

    iput-object v2, p0, Landroidx/camera/view/CameraController;->mVideoCaptureDynamicRange:Landroidx/camera/core/DynamicRange;

    .line 12
    iput-object v2, p0, Landroidx/camera/view/CameraController;->mPreviewDynamicRange:Landroidx/camera/core/DynamicRange;

    .line 13
    sget-object v2, Landroidx/camera/core/impl/StreamSpec;->FRAME_RATE_RANGE_UNSPECIFIED:Landroid/util/Range;

    iput-object v2, p0, Landroidx/camera/view/CameraController;->mVideoCaptureTargetFrameRate:Landroid/util/Range;

    const/4 v2, 0x1

    .line 14
    iput-boolean v2, p0, Landroidx/camera/view/CameraController;->mPinchToZoomEnabled:Z

    .line 15
    iput-boolean v2, p0, Landroidx/camera/view/CameraController;->mTapToFocusEnabled:Z

    .line 16
    new-instance v2, Landroidx/camera/view/ForwardingLiveData;

    invoke-direct {v2}, Landroidx/camera/view/ForwardingLiveData;-><init>()V

    iput-object v2, p0, Landroidx/camera/view/CameraController;->mZoomState:Landroidx/camera/view/ForwardingLiveData;

    .line 17
    new-instance v2, Landroidx/camera/view/ForwardingLiveData;

    invoke-direct {v2}, Landroidx/camera/view/ForwardingLiveData;-><init>()V

    iput-object v2, p0, Landroidx/camera/view/CameraController;->mTorchState:Landroidx/camera/view/ForwardingLiveData;

    .line 18
    new-instance v2, Landroidx/lifecycle/MutableLiveData;

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v2, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Landroidx/camera/view/CameraController;->mTapToFocusState:Landroidx/lifecycle/MutableLiveData;

    .line 20
    new-instance v1, Landroidx/camera/view/PendingValue;

    invoke-direct {v1}, Landroidx/camera/view/PendingValue;-><init>()V

    iput-object v1, p0, Landroidx/camera/view/CameraController;->mPendingEnableTorch:Landroidx/camera/view/PendingValue;

    .line 21
    new-instance v1, Landroidx/camera/view/PendingValue;

    invoke-direct {v1}, Landroidx/camera/view/PendingValue;-><init>()V

    iput-object v1, p0, Landroidx/camera/view/CameraController;->mPendingLinearZoom:Landroidx/camera/view/PendingValue;

    .line 22
    new-instance v1, Landroidx/camera/view/PendingValue;

    invoke-direct {v1}, Landroidx/camera/view/PendingValue;-><init>()V

    iput-object v1, p0, Landroidx/camera/view/CameraController;->mPendingZoomRatio:Landroidx/camera/view/PendingValue;

    .line 23
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Landroidx/camera/view/CameraController;->mEffects:Ljava/util/Set;

    .line 24
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroidx/camera/view/CameraController;->mScreenFlashUiInfoMap:Ljava/util/Map;

    .line 25
    invoke-static {p1}, Landroidx/camera/core/impl/utils/ContextUtil;->getApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/view/CameraController;->mAppContext:Landroid/content/Context;

    .line 26
    invoke-direct {p0}, Landroidx/camera/view/CameraController;->createPreview()Landroidx/camera/core/Preview;

    move-result-object v1

    iput-object v1, p0, Landroidx/camera/view/CameraController;->mPreview:Landroidx/camera/core/Preview;

    .line 27
    invoke-direct {p0, v0}, Landroidx/camera/view/CameraController;->createImageCapture(Ljava/lang/Integer;)Landroidx/camera/core/ImageCapture;

    move-result-object v1

    iput-object v1, p0, Landroidx/camera/view/CameraController;->mImageCapture:Landroidx/camera/core/ImageCapture;

    .line 28
    invoke-direct {p0, v0, v0, v0}, Landroidx/camera/view/CameraController;->createImageAnalysis(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Landroidx/camera/core/ImageAnalysis;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/view/CameraController;->mImageAnalysis:Landroidx/camera/core/ImageAnalysis;

    .line 29
    invoke-direct {p0}, Landroidx/camera/view/CameraController;->createVideoCapture()Landroidx/camera/video/VideoCapture;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/view/CameraController;->mVideoCapture:Landroidx/camera/video/VideoCapture;

    .line 30
    new-instance v0, Landroidx/camera/view/뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/camera/view/뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸;-><init>(Ljava/lang/Object;I)V

    .line 31
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    .line 32
    invoke-static {p2, v0, v1}, Landroidx/camera/core/impl/utils/futures/Futures;->transform(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/arch/core/util/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p2

    iput-object p2, p0, Landroidx/camera/view/CameraController;->mInitializationFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 33
    new-instance p2, Landroidx/camera/view/RotationProvider;

    invoke-direct {p2, p1}, Landroidx/camera/view/RotationProvider;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroidx/camera/view/CameraController;->mRotationProvider:Landroidx/camera/view/RotationProvider;

    .line 34
    new-instance p1, L돛돶땠땃뎹땤뒷뒐딃따됩땮듰뒛땲땮뒙딅돠땤뒻디땔듽딃땱둬땁뎨딞뎹둔뎠뒙돼딻뒘듨땅된뒼듸드듽된딽딃뎸땯뎨디땧땬땦딎땫뎠될돝돼듸돵딜땡듸됩돨뒀듨든듬딄딹듼땝뒛뒙땁돤뎽듔땬뒹땔돝돨땪뎨땤돶땦땯땬땱뎬딞딜듌두땔돷딄됫됐될돰돵뒻돸듐듟둠돛땃딁듨둥둣듌딽되듼땮뎠딀돵뒛땡될땯;

    const/4 p2, 0x5

    invoke-direct {p1, p0, p2}, L돛돶땠땃뎹땤뒷뒐딃따됩땮듰뒛땲땮뒙딅돠땤뒻디땔듽딃땱둬땁뎨딞뎹둔뎠뒙돼딻뒘듨땅된뒼듸드듽된딽딃뎸땯뎨디땧땬땦딎땫뎠될돝돼듸돵딜땡듸됩돨뒀듨든듬딄딹듼땝뒛뒙땁돤뎽듔땬뒹땔돝돨땪뎨땤돶땦땯땬땱뎬딞딜듌두땔돷딄됫됐될돰돵뒻돸듐듟둠돛땃딁듨둥둣듌딽되듼땮뎠딀돵뒛땡될땯;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Landroidx/camera/view/CameraController;->mDeviceRotationListener:Landroidx/camera/view/RotationProvider$Listener;

    return-void
.end method

.method private checkAudioPermissionGranted()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mAppContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.RECORD_AUDIO"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroidx/core/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, -0x1

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    .line 14
    .line 15
    const-string v1, "Attempted to start recording with audio, but application does not have RECORD_AUDIO permission granted."

    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw v0
.end method

.method private configureResolution(Landroidx/camera/core/impl/ImageOutputConfig$Builder;Landroidx/camera/core/resolutionselector/ResolutionSelector;Landroidx/camera/view/CameraController$OutputSize;)V
    .locals 0
    .param p1    # Landroidx/camera/core/impl/ImageOutputConfig$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/resolutionselector/ResolutionSelector;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/camera/view/CameraController$OutputSize;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/impl/ImageOutputConfig$Builder<",
            "*>;",
            "Landroidx/camera/core/resolutionselector/ResolutionSelector;",
            "Landroidx/camera/view/CameraController$OutputSize;",
            ")V"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-interface {p1, p2}, Landroidx/camera/core/impl/ImageOutputConfig$Builder;->setResolutionSelector(Landroidx/camera/core/resolutionselector/ResolutionSelector;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    if-eqz p3, :cond_1

    .line 8
    .line 9
    invoke-direct {p0, p1, p3}, Landroidx/camera/view/CameraController;->setTargetOutputSize(Landroidx/camera/core/impl/ImageOutputConfig$Builder;Landroidx/camera/view/CameraController$OutputSize;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    iget-object p2, p0, Landroidx/camera/view/CameraController;->mViewPort:Landroidx/camera/core/ViewPort;

    .line 14
    .line 15
    if-eqz p2, :cond_2

    .line 16
    .line 17
    invoke-direct {p0, p2}, Landroidx/camera/view/CameraController;->getViewportAspectRatioStrategy(Landroidx/camera/core/ViewPort;)Landroidx/camera/core/resolutionselector/AspectRatioStrategy;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    if-eqz p2, :cond_2

    .line 22
    .line 23
    new-instance p3, Landroidx/camera/core/resolutionselector/ResolutionSelector$Builder;

    .line 24
    .line 25
    invoke-direct {p3}, Landroidx/camera/core/resolutionselector/ResolutionSelector$Builder;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p3, p2}, Landroidx/camera/core/resolutionselector/ResolutionSelector$Builder;->setAspectRatioStrategy(Landroidx/camera/core/resolutionselector/AspectRatioStrategy;)Landroidx/camera/core/resolutionselector/ResolutionSelector$Builder;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-virtual {p2}, Landroidx/camera/core/resolutionselector/ResolutionSelector$Builder;->build()Landroidx/camera/core/resolutionselector/ResolutionSelector;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-interface {p1, p2}, Landroidx/camera/core/impl/ImageOutputConfig$Builder;->setResolutionSelector(Landroidx/camera/core/resolutionselector/ResolutionSelector;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    :cond_2
    :goto_0
    return-void
.end method

.method private createImageAnalysis(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Landroidx/camera/core/ImageAnalysis;
    .locals 1

    .line 1
    new-instance v0, Landroidx/camera/core/ImageAnalysis$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/camera/core/ImageAnalysis$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-virtual {v0, p1}, Landroidx/camera/core/ImageAnalysis$Builder;->setBackpressureStrategy(I)Landroidx/camera/core/ImageAnalysis$Builder;

    .line 13
    .line 14
    .line 15
    :cond_0
    if-eqz p2, :cond_1

    .line 16
    .line 17
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-virtual {v0, p1}, Landroidx/camera/core/ImageAnalysis$Builder;->setImageQueueDepth(I)Landroidx/camera/core/ImageAnalysis$Builder;

    .line 22
    .line 23
    .line 24
    :cond_1
    if-eqz p3, :cond_2

    .line 25
    .line 26
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    invoke-virtual {v0, p1}, Landroidx/camera/core/ImageAnalysis$Builder;->setOutputImageFormat(I)Landroidx/camera/core/ImageAnalysis$Builder;

    .line 31
    .line 32
    .line 33
    :cond_2
    iget-object p1, p0, Landroidx/camera/view/CameraController;->mImageAnalysisResolutionSelector:Landroidx/camera/core/resolutionselector/ResolutionSelector;

    .line 34
    .line 35
    iget-object p2, p0, Landroidx/camera/view/CameraController;->mImageAnalysisTargetSize:Landroidx/camera/view/CameraController$OutputSize;

    .line 36
    .line 37
    invoke-direct {p0, v0, p1, p2}, Landroidx/camera/view/CameraController;->configureResolution(Landroidx/camera/core/impl/ImageOutputConfig$Builder;Landroidx/camera/core/resolutionselector/ResolutionSelector;Landroidx/camera/view/CameraController$OutputSize;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Landroidx/camera/view/CameraController;->mAnalysisBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 41
    .line 42
    if-eqz p1, :cond_3

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Landroidx/camera/core/ImageAnalysis$Builder;->setBackgroundExecutor(Ljava/util/concurrent/Executor;)Landroidx/camera/core/ImageAnalysis$Builder;

    .line 45
    .line 46
    .line 47
    :cond_3
    invoke-virtual {v0}, Landroidx/camera/core/ImageAnalysis$Builder;->build()Landroidx/camera/core/ImageAnalysis;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    return-object p1
.end method

.method private createImageCapture(Ljava/lang/Integer;)Landroidx/camera/core/ImageCapture;
    .locals 2

    .line 1
    new-instance v0, Landroidx/camera/core/ImageCapture$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/camera/core/ImageCapture$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-virtual {v0, p1}, Landroidx/camera/core/ImageCapture$Builder;->setCaptureMode(I)Landroidx/camera/core/ImageCapture$Builder;

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object p1, p0, Landroidx/camera/view/CameraController;->mImageCaptureResolutionSelector:Landroidx/camera/core/resolutionselector/ResolutionSelector;

    .line 16
    .line 17
    iget-object v1, p0, Landroidx/camera/view/CameraController;->mImageCaptureTargetSize:Landroidx/camera/view/CameraController$OutputSize;

    .line 18
    .line 19
    invoke-direct {p0, v0, p1, v1}, Landroidx/camera/view/CameraController;->configureResolution(Landroidx/camera/core/impl/ImageOutputConfig$Builder;Landroidx/camera/core/resolutionselector/ResolutionSelector;Landroidx/camera/view/CameraController$OutputSize;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Landroidx/camera/view/CameraController;->mImageCaptureIoExecutor:Ljava/util/concurrent/Executor;

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Landroidx/camera/core/ImageCapture$Builder;->setIoExecutor(Ljava/util/concurrent/Executor;)Landroidx/camera/core/ImageCapture$Builder;

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-virtual {v0}, Landroidx/camera/core/ImageCapture$Builder;->build()Landroidx/camera/core/ImageCapture;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    return-object p1
.end method

.method private createPreview()Landroidx/camera/core/Preview;
    .locals 3

    .line 1
    new-instance v0, Landroidx/camera/core/Preview$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/camera/core/Preview$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/camera/view/CameraController;->mPreviewResolutionSelector:Landroidx/camera/core/resolutionselector/ResolutionSelector;

    .line 7
    .line 8
    iget-object v2, p0, Landroidx/camera/view/CameraController;->mPreviewTargetSize:Landroidx/camera/view/CameraController$OutputSize;

    .line 9
    .line 10
    invoke-direct {p0, v0, v1, v2}, Landroidx/camera/view/CameraController;->configureResolution(Landroidx/camera/core/impl/ImageOutputConfig$Builder;Landroidx/camera/core/resolutionselector/ResolutionSelector;Landroidx/camera/view/CameraController$OutputSize;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Landroidx/camera/view/CameraController;->mPreviewDynamicRange:Landroidx/camera/core/DynamicRange;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroidx/camera/core/Preview$Builder;->setDynamicRange(Landroidx/camera/core/DynamicRange;)Landroidx/camera/core/Preview$Builder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/camera/core/Preview$Builder;->build()Landroidx/camera/core/Preview;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method

.method private createVideoCapture()Landroidx/camera/video/VideoCapture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/camera/video/VideoCapture<",
            "Landroidx/camera/video/Recorder;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/camera/video/Recorder$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/camera/video/Recorder$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/camera/view/CameraController;->mVideoCaptureQualitySelector:Landroidx/camera/video/QualitySelector;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroidx/camera/video/Recorder$Builder;->setQualitySelector(Landroidx/camera/video/QualitySelector;)Landroidx/camera/video/Recorder$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Landroidx/camera/view/CameraController;->mViewPort:Landroidx/camera/core/ViewPort;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    iget-object v2, p0, Landroidx/camera/view/CameraController;->mVideoCaptureQualitySelector:Landroidx/camera/video/QualitySelector;

    .line 17
    .line 18
    sget-object v3, Landroidx/camera/video/Recorder;->DEFAULT_QUALITY_SELECTOR:Landroidx/camera/video/QualitySelector;

    .line 19
    .line 20
    if-ne v2, v3, :cond_0

    .line 21
    .line 22
    invoke-direct {p0, v1}, Landroidx/camera/view/CameraController;->getViewportAspectRatioInt(Landroidx/camera/core/ViewPort;)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/4 v2, -0x1

    .line 27
    if-eq v1, v2, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroidx/camera/video/Recorder$Builder;->setAspectRatio(I)Landroidx/camera/video/Recorder$Builder;

    .line 30
    .line 31
    .line 32
    :cond_0
    new-instance v1, Landroidx/camera/video/VideoCapture$Builder;

    .line 33
    .line 34
    invoke-virtual {v0}, Landroidx/camera/video/Recorder$Builder;->build()Landroidx/camera/video/Recorder;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-direct {v1, v0}, Landroidx/camera/video/VideoCapture$Builder;-><init>(Landroidx/camera/video/VideoOutput;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mVideoCaptureTargetFrameRate:Landroid/util/Range;

    .line 42
    .line 43
    invoke-virtual {v1, v0}, Landroidx/camera/video/VideoCapture$Builder;->setTargetFrameRate(Landroid/util/Range;)Landroidx/camera/video/VideoCapture$Builder;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget v1, p0, Landroidx/camera/view/CameraController;->mVideoCaptureMirrorMode:I

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroidx/camera/video/VideoCapture$Builder;->setMirrorMode(I)Landroidx/camera/video/VideoCapture$Builder;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object v1, p0, Landroidx/camera/view/CameraController;->mVideoCaptureDynamicRange:Landroidx/camera/core/DynamicRange;

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroidx/camera/video/VideoCapture$Builder;->setDynamicRange(Landroidx/camera/core/DynamicRange;)Landroidx/camera/video/VideoCapture$Builder;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0}, Landroidx/camera/video/VideoCapture$Builder;->build()Landroidx/camera/video/VideoCapture;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    return-object v0
.end method

.method private deactivateRecording(Landroidx/camera/video/Recording;)V
    .locals 1
    .param p1    # Landroidx/camera/video/Recording;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mActiveRecording:Landroidx/camera/video/Recording;

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Landroidx/camera/view/CameraController;->mActiveRecording:Landroidx/camera/video/Recording;

    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private getViewportAspectRatioInt(Landroidx/camera/core/ViewPort;)I
    .locals 6
    .param p1    # Landroidx/camera/core/ViewPort;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroidx/camera/core/ViewPort;->getRotation()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-static {v1}, Landroidx/camera/core/impl/utils/CameraOrientationUtil;->surfaceRotationToDegrees(I)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    :goto_0
    iget-object v2, p0, Landroidx/camera/view/CameraController;->mCameraProvider:Landroidx/camera/view/ProcessCameraProviderWrapper;

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    iget-object v3, p0, Landroidx/camera/view/CameraController;->mCameraSelector:Landroidx/camera/core/CameraSelector;

    .line 21
    .line 22
    invoke-interface {v2, v3}, Landroidx/camera/view/ProcessCameraProviderWrapper;->getCameraInfo(Landroidx/camera/core/CameraSelector;)Landroidx/camera/core/CameraInfo;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-interface {v2}, Landroidx/camera/core/CameraInfo;->getSensorRotationDegrees()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    :goto_1
    iget-object v3, p0, Landroidx/camera/view/CameraController;->mCameraProvider:Landroidx/camera/view/ProcessCameraProviderWrapper;

    .line 31
    .line 32
    const/4 v4, 0x1

    .line 33
    if-nez v3, :cond_2

    .line 34
    .line 35
    :goto_2
    const/4 v3, 0x1

    .line 36
    goto :goto_3

    .line 37
    :cond_2
    iget-object v5, p0, Landroidx/camera/view/CameraController;->mCameraSelector:Landroidx/camera/core/CameraSelector;

    .line 38
    .line 39
    invoke-interface {v3, v5}, Landroidx/camera/view/ProcessCameraProviderWrapper;->getCameraInfo(Landroidx/camera/core/CameraSelector;)Landroidx/camera/core/CameraInfo;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-interface {v3}, Landroidx/camera/core/CameraInfo;->getLensFacing()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-ne v3, v4, :cond_3

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_3
    const/4 v3, 0x0

    .line 51
    :goto_3
    invoke-static {v1, v2, v3}, Landroidx/camera/core/impl/utils/CameraOrientationUtil;->getRelativeImageRotation(IIZ)I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    invoke-virtual {p1}, Landroidx/camera/core/ViewPort;->getAspectRatio()Landroid/util/Rational;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    const/16 v2, 0x5a

    .line 60
    .line 61
    if-eq v1, v2, :cond_4

    .line 62
    .line 63
    const/16 v2, 0x10e

    .line 64
    .line 65
    if-ne v1, v2, :cond_5

    .line 66
    .line 67
    :cond_4
    new-instance v1, Landroid/util/Rational;

    .line 68
    .line 69
    invoke-virtual {p1}, Landroid/util/Rational;->getDenominator()I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    invoke-virtual {p1}, Landroid/util/Rational;->getNumerator()I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    invoke-direct {v1, v2, p1}, Landroid/util/Rational;-><init>(II)V

    .line 78
    .line 79
    .line 80
    move-object p1, v1

    .line 81
    :cond_5
    new-instance v1, Landroid/util/Rational;

    .line 82
    .line 83
    const/4 v2, 0x4

    .line 84
    const/4 v3, 0x3

    .line 85
    invoke-direct {v1, v2, v3}, Landroid/util/Rational;-><init>(II)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v1}, Landroid/util/Rational;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-eqz v1, :cond_6

    .line 93
    .line 94
    return v0

    .line 95
    :cond_6
    new-instance v0, Landroid/util/Rational;

    .line 96
    .line 97
    const/16 v1, 0x10

    .line 98
    .line 99
    const/16 v2, 0x9

    .line 100
    .line 101
    invoke-direct {v0, v1, v2}, Landroid/util/Rational;-><init>(II)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v0}, Landroid/util/Rational;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    if-eqz p1, :cond_7

    .line 109
    .line 110
    return v4

    .line 111
    :cond_7
    const/4 p1, -0x1

    .line 112
    return p1
.end method

.method private getViewportAspectRatioStrategy(Landroidx/camera/core/ViewPort;)Landroidx/camera/core/resolutionselector/AspectRatioStrategy;
    .locals 2
    .param p1    # Landroidx/camera/core/ViewPort;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroidx/camera/view/CameraController;->getViewportAspectRatioInt(Landroidx/camera/core/ViewPort;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, -0x1

    .line 6
    if-eq p1, v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Landroidx/camera/core/resolutionselector/AspectRatioStrategy;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-direct {v0, p1, v1}, Landroidx/camera/core/resolutionselector/AspectRatioStrategy;-><init>(II)V

    .line 12
    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    return-object p1
.end method

.method private isCameraAttached()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mCamera:Landroidx/camera/core/Camera;

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
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method private isCameraInitialized()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mCameraProvider:Landroidx/camera/view/ProcessCameraProviderWrapper;

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
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method private isOutputSizeEqual(Landroidx/camera/view/CameraController$OutputSize;Landroidx/camera/view/CameraController$OutputSize;)Z
    .locals 1
    .param p1    # Landroidx/camera/view/CameraController$OutputSize;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/view/CameraController$OutputSize;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p2, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    if-eqz p1, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    const/4 v0, 0x0

    .line 15
    :goto_0
    return v0
.end method

.method private isPreviewViewAttached()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mSurfaceProvider:Landroidx/camera/core/Preview$SurfaceProvider;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mViewPort:Landroidx/camera/core/ViewPort;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method private isUseCaseEnabled(I)Z
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/view/CameraController;->mEnabledUseCases:I

    .line 2
    .line 3
    and-int/2addr p1, v0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    return p1
.end method

.method private synthetic lambda$new$0(Landroidx/camera/view/ProcessCameraProviderWrapper;)Ljava/lang/Void;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/camera/view/CameraController;->mCameraProvider:Landroidx/camera/view/ProcessCameraProviderWrapper;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/camera/view/CameraController;->unbindAllAndRecreate()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/camera/view/CameraController;->startCameraAndTrackStates()V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return-object p1
.end method

.method private synthetic lambda$new$1(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mImageAnalysis:Landroidx/camera/core/ImageAnalysis;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/camera/core/ImageAnalysis;->setTargetRotation(I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mImageCapture:Landroidx/camera/core/ImageCapture;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroidx/camera/core/ImageCapture;->setTargetRotation(I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mVideoCapture:Landroidx/camera/video/VideoCapture;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroidx/camera/video/VideoCapture;->setTargetRotation(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private synthetic lambda$setCameraSelector$3(Landroidx/camera/core/CameraSelector;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/camera/view/CameraController;->mCameraSelector:Landroidx/camera/core/CameraSelector;

    .line 2
    .line 3
    return-void
.end method

.method private synthetic lambda$setEnabledUseCases$2(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/camera/view/CameraController;->mEnabledUseCases:I

    .line 2
    .line 3
    return-void
.end method

.method private prepareRecording(Landroidx/camera/video/OutputOptions;)Landroidx/camera/video/PendingRecording;
    .locals 3
    .param p1    # Landroidx/camera/video/OutputOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mVideoCapture:Landroidx/camera/video/VideoCapture;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/camera/video/VideoCapture;->getOutput()Landroidx/camera/video/VideoOutput;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/camera/video/Recorder;

    .line 8
    .line 9
    instance-of v1, p1, Landroidx/camera/video/FileOutputOptions;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/camera/view/CameraController;->mAppContext:Landroid/content/Context;

    .line 14
    .line 15
    check-cast p1, Landroidx/camera/video/FileOutputOptions;

    .line 16
    .line 17
    invoke-virtual {v0, v1, p1}, Landroidx/camera/video/Recorder;->prepareRecording(Landroid/content/Context;Landroidx/camera/video/FileOutputOptions;)Landroidx/camera/video/PendingRecording;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1

    .line 22
    :cond_0
    instance-of v1, p1, Landroidx/camera/video/FileDescriptorOutputOptions;

    .line 23
    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 27
    .line 28
    const/16 v2, 0x1a

    .line 29
    .line 30
    if-lt v1, v2, :cond_1

    .line 31
    .line 32
    iget-object v1, p0, Landroidx/camera/view/CameraController;->mAppContext:Landroid/content/Context;

    .line 33
    .line 34
    check-cast p1, Landroidx/camera/video/FileDescriptorOutputOptions;

    .line 35
    .line 36
    invoke-virtual {v0, v1, p1}, Landroidx/camera/video/Recorder;->prepareRecording(Landroid/content/Context;Landroidx/camera/video/FileDescriptorOutputOptions;)Landroidx/camera/video/PendingRecording;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    return-object p1

    .line 41
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 42
    .line 43
    const-string v0, "File descriptors are not supported on pre-Android O (API 26) devices."

    .line 44
    .line 45
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p1

    .line 49
    :cond_2
    instance-of v1, p1, Landroidx/camera/video/MediaStoreOutputOptions;

    .line 50
    .line 51
    if-eqz v1, :cond_3

    .line 52
    .line 53
    iget-object v1, p0, Landroidx/camera/view/CameraController;->mAppContext:Landroid/content/Context;

    .line 54
    .line 55
    check-cast p1, Landroidx/camera/video/MediaStoreOutputOptions;

    .line 56
    .line 57
    invoke-virtual {v0, v1, p1}, Landroidx/camera/video/Recorder;->prepareRecording(Landroid/content/Context;Landroidx/camera/video/MediaStoreOutputOptions;)Landroidx/camera/video/PendingRecording;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    return-object p1

    .line 62
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 63
    .line 64
    const-string v0, "Unsupported OutputOptions type."

    .line 65
    .line 66
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p1
.end method

.method private restartCameraIfAnalyzerResolutionChanged(Landroidx/camera/core/ImageAnalysis$Analyzer;Landroidx/camera/core/ImageAnalysis$Analyzer;)V
    .locals 1
    .param p1    # Landroidx/camera/core/ImageAnalysis$Analyzer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/ImageAnalysis$Analyzer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    move-object p1, v0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {p1}, Landroidx/camera/core/ImageAnalysis$Analyzer;->getDefaultTargetResolution()Landroid/util/Size;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :goto_0
    if-nez p2, :cond_1

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_1
    invoke-interface {p2}, Landroidx/camera/core/ImageAnalysis$Analyzer;->getDefaultTargetResolution()Landroid/util/Size;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :goto_1
    invoke-static {p1, v0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_2

    .line 22
    .line 23
    iget-object p1, p0, Landroidx/camera/view/CameraController;->mImageAnalysis:Landroidx/camera/core/ImageAnalysis;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroidx/camera/core/ImageAnalysis;->getBackpressureStrategy()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object p2, p0, Landroidx/camera/view/CameraController;->mImageAnalysis:Landroidx/camera/core/ImageAnalysis;

    .line 34
    .line 35
    invoke-virtual {p2}, Landroidx/camera/core/ImageAnalysis;->getImageQueueDepth()I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mImageAnalysis:Landroidx/camera/core/ImageAnalysis;

    .line 44
    .line 45
    invoke-virtual {v0}, Landroidx/camera/core/ImageAnalysis;->getOutputImageFormat()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-direct {p0, p1, p2, v0}, Landroidx/camera/view/CameraController;->unbindImageAnalysisAndRecreate(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Landroidx/camera/view/CameraController;->startCameraAndTrackStates()V

    .line 57
    .line 58
    .line 59
    :cond_2
    return-void
.end method

.method private setActiveRecording(Landroidx/camera/video/Recording;Landroidx/core/util/Consumer;)V
    .locals 1
    .param p1    # Landroidx/camera/video/Recording;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/core/util/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/video/Recording;",
            "Landroidx/core/util/Consumer<",
            "Landroidx/camera/video/VideoRecordEvent;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mRecordingMap:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Landroidx/camera/view/CameraController;->mActiveRecording:Landroidx/camera/video/Recording;

    .line 7
    .line 8
    return-void
.end method

.method private setTargetOutputSize(Landroidx/camera/core/impl/ImageOutputConfig$Builder;Landroidx/camera/view/CameraController$OutputSize;)V
    .locals 2
    .param p1    # Landroidx/camera/core/impl/ImageOutputConfig$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/view/CameraController$OutputSize;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/impl/ImageOutputConfig$Builder<",
            "*>;",
            "Landroidx/camera/view/CameraController$OutputSize;",
            ")V"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p2}, Landroidx/camera/view/CameraController$OutputSize;->getResolution()Landroid/util/Size;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p2}, Landroidx/camera/view/CameraController$OutputSize;->getResolution()Landroid/util/Size;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-interface {p1, p2}, Landroidx/camera/core/impl/ImageOutputConfig$Builder;->setTargetResolution(Landroid/util/Size;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    invoke-virtual {p2}, Landroidx/camera/view/CameraController$OutputSize;->getAspectRatio()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, -0x1

    .line 23
    if-eq v0, v1, :cond_2

    .line 24
    .line 25
    invoke-virtual {p2}, Landroidx/camera/view/CameraController$OutputSize;->getAspectRatio()I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    invoke-interface {p1, p2}, Landroidx/camera/core/impl/ImageOutputConfig$Builder;->setTargetAspectRatio(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v0, "Invalid target surface size. "

    .line 36
    .line 37
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const-string p2, "CameraController"

    .line 48
    .line 49
    invoke-static {p2, p1}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :goto_0
    return-void
.end method

.method private speedUpZoomBy2X(F)F
    .locals 3

    .line 1
    const/high16 v0, 0x40000000    # 2.0f

    .line 2
    .line 3
    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    .line 5
    cmpl-float v2, p1, v1

    .line 6
    .line 7
    if-lez v2, :cond_0

    .line 8
    .line 9
    invoke-static {p1, v1, v0, v1}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(FFFF)F

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_0
    sub-float p1, v1, p1

    .line 15
    .line 16
    mul-float p1, p1, v0

    .line 17
    .line 18
    sub-float/2addr v1, p1

    .line 19
    return v1
.end method

.method private startListeningToRotationEvents()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mRotationProvider:Landroidx/camera/view/RotationProvider;

    .line 2
    .line 3
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Landroidx/camera/view/CameraController;->mDeviceRotationListener:Landroidx/camera/view/RotationProvider$Listener;

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Landroidx/camera/view/RotationProvider;->addListener(Ljava/util/concurrent/Executor;Landroidx/camera/view/RotationProvider$Listener;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private startRecordingInternal(Landroidx/camera/video/OutputOptions;Landroidx/camera/view/video/AudioConfig;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)Landroidx/camera/video/Recording;
    .locals 2
    .param p1    # Landroidx/camera/video/OutputOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/view/video/AudioConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/core/util/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.RECORD_AUDIO"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/video/OutputOptions;",
            "Landroidx/camera/view/video/AudioConfig;",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/core/util/Consumer<",
            "Landroidx/camera/video/VideoRecordEvent;",
            ">;)",
            "Landroidx/camera/video/Recording;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroidx/camera/view/CameraController;->isCameraInitialized()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const-string v1, "Camera not initialized."

    .line 9
    .line 10
    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/camera/view/CameraController;->isVideoCaptureEnabled()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const-string v1, "VideoCapture disabled."

    .line 18
    .line 19
    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/camera/view/CameraController;->isRecording()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    xor-int/lit8 v0, v0, 0x1

    .line 27
    .line 28
    const-string v1, "Recording video. Only one recording can be active at a time."

    .line 29
    .line 30
    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, p4}, Landroidx/camera/view/CameraController;->wrapListenerToDeactivateRecordingOnFinalized(Landroidx/core/util/Consumer;)Landroidx/core/util/Consumer;

    .line 34
    .line 35
    .line 36
    move-result-object p4

    .line 37
    invoke-direct {p0, p1}, Landroidx/camera/view/CameraController;->prepareRecording(Landroidx/camera/video/OutputOptions;)Landroidx/camera/video/PendingRecording;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p2}, Landroidx/camera/view/video/AudioConfig;->getAudioEnabled()Z

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    if-eqz p2, :cond_0

    .line 46
    .line 47
    invoke-direct {p0}, Landroidx/camera/view/CameraController;->checkAudioPermissionGranted()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Landroidx/camera/video/PendingRecording;->withAudioEnabled()Landroidx/camera/video/PendingRecording;

    .line 51
    .line 52
    .line 53
    :cond_0
    invoke-virtual {p1, p3, p4}, Landroidx/camera/video/PendingRecording;->start(Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)Landroidx/camera/video/Recording;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-direct {p0, p1, p4}, Landroidx/camera/view/CameraController;->setActiveRecording(Landroidx/camera/video/Recording;Landroidx/core/util/Consumer;)V

    .line 58
    .line 59
    .line 60
    return-object p1
.end method

.method private stopListeningToRotationEvents()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mRotationProvider:Landroidx/camera/view/RotationProvider;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/camera/view/CameraController;->mDeviceRotationListener:Landroidx/camera/view/RotationProvider$Listener;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroidx/camera/view/RotationProvider;->removeListener(Landroidx/camera/view/RotationProvider$Listener;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private stopRecording()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mActiveRecording:Landroidx/camera/video/Recording;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/camera/video/Recording;->stop()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mActiveRecording:Landroidx/camera/video/Recording;

    .line 12
    .line 13
    invoke-direct {p0, v0}, Landroidx/camera/view/CameraController;->deactivateRecording(Landroidx/camera/video/Recording;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private throwExceptionForInvalidScreenFlashCapture()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/camera/view/CameraController;->getImageCaptureFlashMode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x3

    .line 6
    if-ne v0, v1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/camera/view/CameraController;->getScreenFlashUiInfoByPriority()Landroidx/camera/view/internal/ScreenFlashUiInfo;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/camera/view/CameraController;->getScreenFlashUiInfoByPriority()Landroidx/camera/view/internal/ScreenFlashUiInfo;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroidx/camera/view/internal/ScreenFlashUiInfo;->getScreenFlash()Landroidx/camera/core/ImageCapture$ScreenFlash;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    const-string v1, "No window set in PreviewView despite setting FLASH_MODE_SCREEN"

    .line 28
    .line 29
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v0

    .line 33
    :cond_1
    :goto_0
    return-void
.end method

.method private unbindAllAndRecreate()V
    .locals 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/camera/view/CameraController;->unbindPreviewAndRecreate()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/camera/view/CameraController;->getImageCaptureMode()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-direct {p0, v0}, Landroidx/camera/view/CameraController;->unbindImageCaptureAndRecreate(Ljava/lang/Integer;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mImageAnalysis:Landroidx/camera/core/ImageAnalysis;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/camera/core/ImageAnalysis;->getBackpressureStrategy()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Landroidx/camera/view/CameraController;->mImageAnalysis:Landroidx/camera/core/ImageAnalysis;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroidx/camera/core/ImageAnalysis;->getImageQueueDepth()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iget-object v2, p0, Landroidx/camera/view/CameraController;->mImageAnalysis:Landroidx/camera/core/ImageAnalysis;

    .line 36
    .line 37
    invoke-virtual {v2}, Landroidx/camera/core/ImageAnalysis;->getOutputImageFormat()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-direct {p0, v0, v1, v2}, Landroidx/camera/view/CameraController;->unbindImageAnalysisAndRecreate(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 46
    .line 47
    .line 48
    invoke-direct {p0}, Landroidx/camera/view/CameraController;->unbindVideoAndRecreate()V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method private unbindImageAnalysisAndRecreate(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 4
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroidx/camera/view/CameraController;->isCameraInitialized()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mCameraProvider:Landroidx/camera/view/ProcessCameraProviderWrapper;

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/camera/view/CameraController;->mImageAnalysis:Landroidx/camera/core/ImageAnalysis;

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    new-array v2, v2, [Landroidx/camera/core/UseCase;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    aput-object v1, v2, v3

    .line 19
    .line 20
    invoke-interface {v0, v2}, Landroidx/camera/view/ProcessCameraProviderWrapper;->unbind([Landroidx/camera/core/UseCase;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/view/CameraController;->createImageAnalysis(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Landroidx/camera/core/ImageAnalysis;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Landroidx/camera/view/CameraController;->mImageAnalysis:Landroidx/camera/core/ImageAnalysis;

    .line 28
    .line 29
    iget-object p2, p0, Landroidx/camera/view/CameraController;->mAnalysisExecutor:Ljava/util/concurrent/Executor;

    .line 30
    .line 31
    if-eqz p2, :cond_1

    .line 32
    .line 33
    iget-object p3, p0, Landroidx/camera/view/CameraController;->mAnalysisAnalyzer:Landroidx/camera/core/ImageAnalysis$Analyzer;

    .line 34
    .line 35
    if-eqz p3, :cond_1

    .line 36
    .line 37
    invoke-virtual {p1, p2, p3}, Landroidx/camera/core/ImageAnalysis;->setAnalyzer(Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageAnalysis$Analyzer;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void
.end method

.method private unbindImageCaptureAndRecreate(Ljava/lang/Integer;)V
    .locals 4
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/camera/view/CameraController;->isCameraInitialized()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mCameraProvider:Landroidx/camera/view/ProcessCameraProviderWrapper;

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/camera/view/CameraController;->mImageCapture:Landroidx/camera/core/ImageCapture;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    new-array v2, v2, [Landroidx/camera/core/UseCase;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    aput-object v1, v2, v3

    .line 16
    .line 17
    invoke-interface {v0, v2}, Landroidx/camera/view/ProcessCameraProviderWrapper;->unbind([Landroidx/camera/core/UseCase;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mImageCapture:Landroidx/camera/core/ImageCapture;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/camera/core/ImageCapture;->getFlashMode()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-direct {p0, p1}, Landroidx/camera/view/CameraController;->createImageCapture(Ljava/lang/Integer;)Landroidx/camera/core/ImageCapture;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Landroidx/camera/view/CameraController;->mImageCapture:Landroidx/camera/core/ImageCapture;

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Landroidx/camera/view/CameraController;->setImageCaptureFlashMode(I)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method private unbindPreviewAndRecreate()V
    .locals 4
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/camera/view/CameraController;->isCameraInitialized()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mCameraProvider:Landroidx/camera/view/ProcessCameraProviderWrapper;

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/camera/view/CameraController;->mPreview:Landroidx/camera/core/Preview;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    new-array v2, v2, [Landroidx/camera/core/UseCase;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    aput-object v1, v2, v3

    .line 16
    .line 17
    invoke-interface {v0, v2}, Landroidx/camera/view/ProcessCameraProviderWrapper;->unbind([Landroidx/camera/core/UseCase;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-direct {p0}, Landroidx/camera/view/CameraController;->createPreview()Landroidx/camera/core/Preview;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Landroidx/camera/view/CameraController;->mPreview:Landroidx/camera/core/Preview;

    .line 25
    .line 26
    iget-object v1, p0, Landroidx/camera/view/CameraController;->mSurfaceProvider:Landroidx/camera/core/Preview$SurfaceProvider;

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroidx/camera/core/Preview;->setSurfaceProvider(Landroidx/camera/core/Preview$SurfaceProvider;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method private unbindVideoAndRecreate()V
    .locals 4
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/camera/view/CameraController;->isCameraInitialized()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mCameraProvider:Landroidx/camera/view/ProcessCameraProviderWrapper;

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/camera/view/CameraController;->mVideoCapture:Landroidx/camera/video/VideoCapture;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    new-array v2, v2, [Landroidx/camera/core/UseCase;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    aput-object v1, v2, v3

    .line 16
    .line 17
    invoke-interface {v0, v2}, Landroidx/camera/view/ProcessCameraProviderWrapper;->unbind([Landroidx/camera/core/UseCase;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-direct {p0}, Landroidx/camera/view/CameraController;->createVideoCapture()Landroidx/camera/video/VideoCapture;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Landroidx/camera/view/CameraController;->mVideoCapture:Landroidx/camera/video/VideoCapture;

    .line 25
    .line 26
    return-void
.end method

.method private wrapListenerToDeactivateRecordingOnFinalized(Landroidx/core/util/Consumer;)Landroidx/core/util/Consumer;
    .locals 2
    .param p1    # Landroidx/core/util/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer<",
            "Landroidx/camera/video/VideoRecordEvent;",
            ">;)",
            "Landroidx/core/util/Consumer<",
            "Landroidx/camera/video/VideoRecordEvent;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mAppContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/core/content/ContextCompat;->getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroidx/camera/view/CameraController$2;

    .line 8
    .line 9
    invoke-direct {v1, p0, v0, p1}, Landroidx/camera/view/CameraController$2;-><init>(Landroidx/camera/view/CameraController;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V

    .line 10
    .line 11
    .line 12
    return-object v1
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroidx/camera/view/CameraController;Landroidx/camera/view/ProcessCameraProviderWrapper;)Ljava/lang/Void;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/camera/view/CameraController;->lambda$new$0(Landroidx/camera/view/ProcessCameraProviderWrapper;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Landroidx/camera/view/CameraController;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/camera/view/CameraController;->lambda$new$1(I)V

    return-void
.end method

.method public static synthetic 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Landroidx/camera/view/CameraController;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/camera/view/CameraController;->lambda$setEnabledUseCases$2(I)V

    return-void
.end method

.method public static synthetic 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(Landroidx/camera/view/CameraController;Landroidx/camera/core/CameraSelector;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/camera/view/CameraController;->lambda$setCameraSelector$3(Landroidx/camera/core/CameraSelector;)V

    return-void
.end method


# virtual methods
.method public attachPreviewSurface(Landroidx/camera/core/Preview$SurfaceProvider;Landroidx/camera/core/ViewPort;)V
    .locals 1
    .param p1    # Landroidx/camera/core/Preview$SurfaceProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/ViewPort;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission",
            "WrongConstant"
        }
    .end annotation

    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mSurfaceProvider:Landroidx/camera/core/Preview$SurfaceProvider;

    .line 5
    .line 6
    if-eq v0, p1, :cond_0

    .line 7
    .line 8
    iput-object p1, p0, Landroidx/camera/view/CameraController;->mSurfaceProvider:Landroidx/camera/core/Preview$SurfaceProvider;

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mPreview:Landroidx/camera/core/Preview;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroidx/camera/core/Preview;->setSurfaceProvider(Landroidx/camera/core/Preview$SurfaceProvider;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object p1, p0, Landroidx/camera/view/CameraController;->mViewPort:Landroidx/camera/core/ViewPort;

    .line 16
    .line 17
    if-eqz p1, :cond_2

    .line 18
    .line 19
    invoke-direct {p0, p2}, Landroidx/camera/view/CameraController;->getViewportAspectRatioStrategy(Landroidx/camera/core/ViewPort;)Landroidx/camera/core/resolutionselector/AspectRatioStrategy;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mViewPort:Landroidx/camera/core/ViewPort;

    .line 24
    .line 25
    invoke-direct {p0, v0}, Landroidx/camera/view/CameraController;->getViewportAspectRatioStrategy(Landroidx/camera/core/ViewPort;)Landroidx/camera/core/resolutionselector/AspectRatioStrategy;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eq p1, v0, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 p1, 0x0

    .line 33
    goto :goto_1

    .line 34
    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 35
    :goto_1
    iput-object p2, p0, Landroidx/camera/view/CameraController;->mViewPort:Landroidx/camera/core/ViewPort;

    .line 36
    .line 37
    invoke-direct {p0}, Landroidx/camera/view/CameraController;->startListeningToRotationEvents()V

    .line 38
    .line 39
    .line 40
    if-eqz p1, :cond_3

    .line 41
    .line 42
    invoke-direct {p0}, Landroidx/camera/view/CameraController;->unbindAllAndRecreate()V

    .line 43
    .line 44
    .line 45
    :cond_3
    invoke-virtual {p0}, Landroidx/camera/view/CameraController;->startCameraAndTrackStates()V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public clearEffects()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mCameraProvider:Landroidx/camera/view/ProcessCameraProviderWrapper;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Landroidx/camera/view/ProcessCameraProviderWrapper;->unbindAll()V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mEffects:Ljava/util/Set;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/camera/view/CameraController;->startCameraAndTrackStates()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public clearImageAnalysisAnalyzer()V
    .locals 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mAnalysisAnalyzer:Landroidx/camera/core/ImageAnalysis$Analyzer;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Landroidx/camera/view/CameraController;->mAnalysisExecutor:Ljava/util/concurrent/Executor;

    .line 8
    .line 9
    iput-object v1, p0, Landroidx/camera/view/CameraController;->mAnalysisAnalyzer:Landroidx/camera/core/ImageAnalysis$Analyzer;

    .line 10
    .line 11
    iget-object v2, p0, Landroidx/camera/view/CameraController;->mImageAnalysis:Landroidx/camera/core/ImageAnalysis;

    .line 12
    .line 13
    invoke-virtual {v2}, Landroidx/camera/core/ImageAnalysis;->clearAnalyzer()V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0, v1}, Landroidx/camera/view/CameraController;->restartCameraIfAnalyzerResolutionChanged(Landroidx/camera/core/ImageAnalysis$Analyzer;Landroidx/camera/core/ImageAnalysis$Analyzer;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public clearPreviewSurface()V
    .locals 7
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mCameraProvider:Landroidx/camera/view/ProcessCameraProviderWrapper;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/camera/view/CameraController;->mPreview:Landroidx/camera/core/Preview;

    .line 9
    .line 10
    iget-object v2, p0, Landroidx/camera/view/CameraController;->mImageCapture:Landroidx/camera/core/ImageCapture;

    .line 11
    .line 12
    iget-object v3, p0, Landroidx/camera/view/CameraController;->mImageAnalysis:Landroidx/camera/core/ImageAnalysis;

    .line 13
    .line 14
    iget-object v4, p0, Landroidx/camera/view/CameraController;->mVideoCapture:Landroidx/camera/video/VideoCapture;

    .line 15
    .line 16
    const/4 v5, 0x4

    .line 17
    new-array v5, v5, [Landroidx/camera/core/UseCase;

    .line 18
    .line 19
    const/4 v6, 0x0

    .line 20
    aput-object v1, v5, v6

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    aput-object v2, v5, v1

    .line 24
    .line 25
    const/4 v1, 0x2

    .line 26
    aput-object v3, v5, v1

    .line 27
    .line 28
    const/4 v1, 0x3

    .line 29
    aput-object v4, v5, v1

    .line 30
    .line 31
    invoke-interface {v0, v5}, Landroidx/camera/view/ProcessCameraProviderWrapper;->unbind([Landroidx/camera/core/UseCase;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mPreview:Landroidx/camera/core/Preview;

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-virtual {v0, v1}, Landroidx/camera/core/Preview;->setSurfaceProvider(Landroidx/camera/core/Preview$SurfaceProvider;)V

    .line 38
    .line 39
    .line 40
    iput-object v1, p0, Landroidx/camera/view/CameraController;->mCamera:Landroidx/camera/core/Camera;

    .line 41
    .line 42
    iput-object v1, p0, Landroidx/camera/view/CameraController;->mSurfaceProvider:Landroidx/camera/core/Preview$SurfaceProvider;

    .line 43
    .line 44
    iput-object v1, p0, Landroidx/camera/view/CameraController;->mViewPort:Landroidx/camera/core/ViewPort;

    .line 45
    .line 46
    invoke-direct {p0}, Landroidx/camera/view/CameraController;->stopListeningToRotationEvents()V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public createUseCaseGroup()Landroidx/camera/core/UseCaseGroup;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-direct {p0}, Landroidx/camera/view/CameraController;->isCameraInitialized()Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    const/4 v3, 0x0

    .line 8
    const-string v4, "CameraController"

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    const-string v0, "Camera not initialized."

    .line 13
    .line 14
    invoke-static {v4, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-object v3

    .line 18
    :cond_0
    invoke-direct {p0}, Landroidx/camera/view/CameraController;->isPreviewViewAttached()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-nez v2, :cond_1

    .line 23
    .line 24
    const-string v0, "PreviewView not attached to CameraController."

    .line 25
    .line 26
    invoke-static {v4, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-object v3

    .line 30
    :cond_1
    new-instance v2, Landroidx/camera/core/UseCaseGroup$Builder;

    .line 31
    .line 32
    invoke-direct {v2}, Landroidx/camera/core/UseCaseGroup$Builder;-><init>()V

    .line 33
    .line 34
    .line 35
    iget-object v3, p0, Landroidx/camera/view/CameraController;->mPreview:Landroidx/camera/core/Preview;

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Landroidx/camera/core/UseCaseGroup$Builder;->addUseCase(Landroidx/camera/core/UseCase;)Landroidx/camera/core/UseCaseGroup$Builder;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {p0}, Landroidx/camera/view/CameraController;->isImageCaptureEnabled()Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_2

    .line 46
    .line 47
    iget-object v3, p0, Landroidx/camera/view/CameraController;->mImageCapture:Landroidx/camera/core/ImageCapture;

    .line 48
    .line 49
    invoke-virtual {v2, v3}, Landroidx/camera/core/UseCaseGroup$Builder;->addUseCase(Landroidx/camera/core/UseCase;)Landroidx/camera/core/UseCaseGroup$Builder;

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    iget-object v3, p0, Landroidx/camera/view/CameraController;->mCameraProvider:Landroidx/camera/view/ProcessCameraProviderWrapper;

    .line 54
    .line 55
    iget-object v4, p0, Landroidx/camera/view/CameraController;->mImageCapture:Landroidx/camera/core/ImageCapture;

    .line 56
    .line 57
    new-array v5, v1, [Landroidx/camera/core/UseCase;

    .line 58
    .line 59
    aput-object v4, v5, v0

    .line 60
    .line 61
    invoke-interface {v3, v5}, Landroidx/camera/view/ProcessCameraProviderWrapper;->unbind([Landroidx/camera/core/UseCase;)V

    .line 62
    .line 63
    .line 64
    :goto_0
    invoke-virtual {p0}, Landroidx/camera/view/CameraController;->isImageAnalysisEnabled()Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-eqz v3, :cond_3

    .line 69
    .line 70
    iget-object v3, p0, Landroidx/camera/view/CameraController;->mImageAnalysis:Landroidx/camera/core/ImageAnalysis;

    .line 71
    .line 72
    invoke-virtual {v2, v3}, Landroidx/camera/core/UseCaseGroup$Builder;->addUseCase(Landroidx/camera/core/UseCase;)Landroidx/camera/core/UseCaseGroup$Builder;

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_3
    iget-object v3, p0, Landroidx/camera/view/CameraController;->mCameraProvider:Landroidx/camera/view/ProcessCameraProviderWrapper;

    .line 77
    .line 78
    iget-object v4, p0, Landroidx/camera/view/CameraController;->mImageAnalysis:Landroidx/camera/core/ImageAnalysis;

    .line 79
    .line 80
    new-array v5, v1, [Landroidx/camera/core/UseCase;

    .line 81
    .line 82
    aput-object v4, v5, v0

    .line 83
    .line 84
    invoke-interface {v3, v5}, Landroidx/camera/view/ProcessCameraProviderWrapper;->unbind([Landroidx/camera/core/UseCase;)V

    .line 85
    .line 86
    .line 87
    :goto_1
    invoke-virtual {p0}, Landroidx/camera/view/CameraController;->isVideoCaptureEnabled()Z

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    if-eqz v3, :cond_4

    .line 92
    .line 93
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mVideoCapture:Landroidx/camera/video/VideoCapture;

    .line 94
    .line 95
    invoke-virtual {v2, v0}, Landroidx/camera/core/UseCaseGroup$Builder;->addUseCase(Landroidx/camera/core/UseCase;)Landroidx/camera/core/UseCaseGroup$Builder;

    .line 96
    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_4
    iget-object v3, p0, Landroidx/camera/view/CameraController;->mCameraProvider:Landroidx/camera/view/ProcessCameraProviderWrapper;

    .line 100
    .line 101
    iget-object v4, p0, Landroidx/camera/view/CameraController;->mVideoCapture:Landroidx/camera/video/VideoCapture;

    .line 102
    .line 103
    new-array v1, v1, [Landroidx/camera/core/UseCase;

    .line 104
    .line 105
    aput-object v4, v1, v0

    .line 106
    .line 107
    invoke-interface {v3, v1}, Landroidx/camera/view/ProcessCameraProviderWrapper;->unbind([Landroidx/camera/core/UseCase;)V

    .line 108
    .line 109
    .line 110
    :goto_2
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mViewPort:Landroidx/camera/core/ViewPort;

    .line 111
    .line 112
    invoke-virtual {v2, v0}, Landroidx/camera/core/UseCaseGroup$Builder;->setViewPort(Landroidx/camera/core/ViewPort;)Landroidx/camera/core/UseCaseGroup$Builder;

    .line 113
    .line 114
    .line 115
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mEffects:Ljava/util/Set;

    .line 116
    .line 117
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    if-eqz v1, :cond_5

    .line 126
    .line 127
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    check-cast v1, Landroidx/camera/core/CameraEffect;

    .line 132
    .line 133
    invoke-virtual {v2, v1}, Landroidx/camera/core/UseCaseGroup$Builder;->addEffect(Landroidx/camera/core/CameraEffect;)Landroidx/camera/core/UseCaseGroup$Builder;

    .line 134
    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_5
    invoke-virtual {v2}, Landroidx/camera/core/UseCaseGroup$Builder;->build()Landroidx/camera/core/UseCaseGroup;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    return-object v0
.end method

.method public deactivateRecordingByListener(Landroidx/core/util/Consumer;)V
    .locals 1
    .param p1    # Landroidx/core/util/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer<",
            "Landroidx/camera/video/VideoRecordEvent;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mRecordingMap:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroidx/camera/video/Recording;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-direct {p0, p1}, Landroidx/camera/view/CameraController;->deactivateRecording(Landroidx/camera/video/Recording;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public enableTorch(Z)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroidx/camera/view/CameraController;->isCameraAttached()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mPendingEnableTorch:Landroidx/camera/view/PendingValue;

    .line 11
    .line 12
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {v0, p1}, Landroidx/camera/view/PendingValue;->setValue(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1

    .line 21
    :cond_0
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mCamera:Landroidx/camera/core/Camera;

    .line 22
    .line 23
    invoke-interface {v0}, Landroidx/camera/core/Camera;->getCameraControl()Landroidx/camera/core/CameraControl;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0, p1}, Landroidx/camera/core/CameraControl;->enableTorch(Z)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    return-object p1
.end method

.method public getCameraControl()Landroidx/camera/core/CameraControl;
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mCamera:Landroidx/camera/core/Camera;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-interface {v0}, Landroidx/camera/core/Camera;->getCameraControl()Landroidx/camera/core/CameraControl;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :goto_0
    return-object v0
.end method

.method public getCameraInfo()Landroidx/camera/core/CameraInfo;
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mCamera:Landroidx/camera/core/Camera;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-interface {v0}, Landroidx/camera/core/Camera;->getCameraInfo()Landroidx/camera/core/CameraInfo;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :goto_0
    return-object v0
.end method

.method public getCameraSelector()Landroidx/camera/core/CameraSelector;
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
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mCameraSelector:Landroidx/camera/core/CameraSelector;

    .line 5
    .line 6
    return-object v0
.end method

.method public getImageAnalysisBackgroundExecutor()Ljava/util/concurrent/Executor;
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mAnalysisBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 5
    .line 6
    return-object v0
.end method

.method public getImageAnalysisBackpressureStrategy()I
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mImageAnalysis:Landroidx/camera/core/ImageAnalysis;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/camera/core/ImageAnalysis;->getBackpressureStrategy()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public getImageAnalysisImageQueueDepth()I
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mImageAnalysis:Landroidx/camera/core/ImageAnalysis;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/camera/core/ImageAnalysis;->getImageQueueDepth()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public getImageAnalysisOutputImageFormat()I
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mImageAnalysis:Landroidx/camera/core/ImageAnalysis;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/camera/core/ImageAnalysis;->getOutputImageFormat()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public getImageAnalysisResolutionSelector()Landroidx/camera/core/resolutionselector/ResolutionSelector;
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mImageAnalysisResolutionSelector:Landroidx/camera/core/resolutionselector/ResolutionSelector;

    .line 5
    .line 6
    return-object v0
.end method

.method public getImageAnalysisTargetSize()Landroidx/camera/view/CameraController$OutputSize;
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mImageAnalysisTargetSize:Landroidx/camera/view/CameraController$OutputSize;

    .line 5
    .line 6
    return-object v0
.end method

.method public getImageCaptureFlashMode()I
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mImageCapture:Landroidx/camera/core/ImageCapture;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/camera/core/ImageCapture;->getFlashMode()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public getImageCaptureIoExecutor()Ljava/util/concurrent/Executor;
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mImageCaptureIoExecutor:Ljava/util/concurrent/Executor;

    .line 5
    .line 6
    return-object v0
.end method

.method public getImageCaptureMode()I
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mImageCapture:Landroidx/camera/core/ImageCapture;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/camera/core/ImageCapture;->getCaptureMode()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public getImageCaptureResolutionSelector()Landroidx/camera/core/resolutionselector/ResolutionSelector;
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mImageCaptureResolutionSelector:Landroidx/camera/core/resolutionselector/ResolutionSelector;

    .line 5
    .line 6
    return-object v0
.end method

.method public getImageCaptureTargetSize()Landroidx/camera/view/CameraController$OutputSize;
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mImageCaptureTargetSize:Landroidx/camera/view/CameraController$OutputSize;

    .line 5
    .line 6
    return-object v0
.end method

.method public getInitializationFuture()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
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
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mInitializationFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPreviewDynamicRange()Landroidx/camera/core/DynamicRange;
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mPreviewDynamicRange:Landroidx/camera/core/DynamicRange;

    .line 5
    .line 6
    return-object v0
.end method

.method public getPreviewResolutionSelector()Landroidx/camera/core/resolutionselector/ResolutionSelector;
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mPreviewResolutionSelector:Landroidx/camera/core/resolutionselector/ResolutionSelector;

    .line 5
    .line 6
    return-object v0
.end method

.method public getPreviewTargetSize()Landroidx/camera/view/CameraController$OutputSize;
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mPreviewTargetSize:Landroidx/camera/view/CameraController$OutputSize;

    .line 5
    .line 6
    return-object v0
.end method

.method public getScreenFlashUiInfoByPriority()Landroidx/camera/view/internal/ScreenFlashUiInfo;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mScreenFlashUiInfoMap:Ljava/util/Map;

    .line 2
    .line 3
    sget-object v1, Landroidx/camera/view/internal/ScreenFlashUiInfo$ProviderType;->SCREEN_FLASH_VIEW:Landroidx/camera/view/internal/ScreenFlashUiInfo$ProviderType;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mScreenFlashUiInfoMap:Ljava/util/Map;

    .line 12
    .line 13
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroidx/camera/view/internal/ScreenFlashUiInfo;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_0
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mScreenFlashUiInfoMap:Ljava/util/Map;

    .line 21
    .line 22
    sget-object v1, Landroidx/camera/view/internal/ScreenFlashUiInfo$ProviderType;->PREVIEW_VIEW:Landroidx/camera/view/internal/ScreenFlashUiInfo$ProviderType;

    .line 23
    .line 24
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mScreenFlashUiInfoMap:Ljava/util/Map;

    .line 31
    .line 32
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroidx/camera/view/internal/ScreenFlashUiInfo;

    .line 37
    .line 38
    return-object v0

    .line 39
    :cond_1
    const/4 v0, 0x0

    .line 40
    return-object v0
.end method

.method public getTapToFocusState()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mTapToFocusState:Landroidx/lifecycle/MutableLiveData;

    .line 5
    .line 6
    return-object v0
.end method

.method public getTorchState()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mTorchState:Landroidx/camera/view/ForwardingLiveData;

    .line 5
    .line 6
    return-object v0
.end method

.method public getVideoCaptureDynamicRange()Landroidx/camera/core/DynamicRange;
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
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mVideoCaptureDynamicRange:Landroidx/camera/core/DynamicRange;

    .line 5
    .line 6
    return-object v0
.end method

.method public getVideoCaptureMirrorMode()I
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Landroidx/camera/view/CameraController;->mVideoCaptureMirrorMode:I

    .line 5
    .line 6
    return v0
.end method

.method public getVideoCaptureQualitySelector()Landroidx/camera/video/QualitySelector;
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
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mVideoCaptureQualitySelector:Landroidx/camera/video/QualitySelector;

    .line 5
    .line 6
    return-object v0
.end method

.method public getVideoCaptureTargetFrameRate()Landroid/util/Range;
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mVideoCaptureTargetFrameRate:Landroid/util/Range;

    .line 5
    .line 6
    return-object v0
.end method

.method public getZoomState()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Landroidx/camera/core/ZoomState;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mZoomState:Landroidx/camera/view/ForwardingLiveData;

    .line 5
    .line 6
    return-object v0
.end method

.method public hasCamera(Landroidx/camera/core/CameraSelector;)Z
    .locals 2
    .param p1    # Landroidx/camera/core/CameraSelector;
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
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mCameraProvider:Landroidx/camera/view/ProcessCameraProviderWrapper;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    :try_start_0
    invoke-interface {v0, p1}, Landroidx/camera/view/ProcessCameraProviderWrapper;->hasCamera(Landroidx/camera/core/CameraSelector;)Z

    .line 12
    .line 13
    .line 14
    move-result p1
    :try_end_0
    .catch Landroidx/camera/core/CameraInfoUnavailableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return p1

    .line 16
    :catch_0
    move-exception p1

    .line 17
    const-string v0, "CameraController"

    .line 18
    .line 19
    const-string v1, "Failed to check camera availability"

    .line 20
    .line 21
    invoke-static {v0, v1, p1}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    return p1

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    const-string v0, "Camera not initialized. Please wait for the initialization future to finish. See #getInitializationFuture()."

    .line 29
    .line 30
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p1
.end method

.method public isImageAnalysisEnabled()Z
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    invoke-direct {p0, v0}, Landroidx/camera/view/CameraController;->isUseCaseEnabled(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public isImageCaptureEnabled()Z
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, v0}, Landroidx/camera/view/CameraController;->isUseCaseEnabled(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public isPinchToZoomEnabled()Z
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Landroidx/camera/view/CameraController;->mPinchToZoomEnabled:Z

    .line 5
    .line 6
    return v0
.end method

.method public isRecording()Z
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mActiveRecording:Landroidx/camera/video/Recording;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/camera/video/Recording;->isClosed()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    return v0
.end method

.method public isTapToFocusEnabled()Z
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Landroidx/camera/view/CameraController;->mTapToFocusEnabled:Z

    .line 5
    .line 6
    return v0
.end method

.method public isVideoCaptureEnabled()Z
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    invoke-direct {p0, v0}, Landroidx/camera/view/CameraController;->isUseCaseEnabled(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public onPinchToZoom(F)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/camera/view/CameraController;->isCameraAttached()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "CameraController"

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string p1, "Use cases not attached to camera."

    .line 10
    .line 11
    invoke-static {v1, p1}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-boolean v0, p0, Landroidx/camera/view/CameraController;->mPinchToZoomEnabled:Z

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    const-string p1, "Pinch to zoom disabled."

    .line 20
    .line 21
    invoke-static {v1, p1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v2, "Pinch to zoom with scale: "

    .line 28
    .line 29
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v1, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroidx/camera/view/CameraController;->getZoomState()Landroidx/lifecycle/LiveData;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Landroidx/camera/core/ZoomState;

    .line 51
    .line 52
    if-nez v0, :cond_2

    .line 53
    .line 54
    return-void

    .line 55
    :cond_2
    invoke-interface {v0}, Landroidx/camera/core/ZoomState;->getZoomRatio()F

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    invoke-direct {p0, p1}, Landroidx/camera/view/CameraController;->speedUpZoomBy2X(F)F

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    mul-float v1, v1, p1

    .line 64
    .line 65
    invoke-interface {v0}, Landroidx/camera/core/ZoomState;->getMinZoomRatio()F

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    invoke-interface {v0}, Landroidx/camera/core/ZoomState;->getMaxZoomRatio()F

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    invoke-virtual {p0, p1}, Landroidx/camera/view/CameraController;->setZoomRatio(F)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public onTapToFocus(Landroidx/camera/core/MeteringPointFactory;FF)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/camera/view/CameraController;->isCameraAttached()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "CameraController"

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string p1, "Use cases not attached to camera."

    .line 10
    .line 11
    invoke-static {v1, p1}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-boolean v0, p0, Landroidx/camera/view/CameraController;->mTapToFocusEnabled:Z

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    const-string p1, "Tap to focus disabled. "

    .line 20
    .line 21
    invoke-static {v1, p1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v2, "Tap to focus started: "

    .line 28
    .line 29
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v2, ", "

    .line 36
    .line 37
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v1, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mTapToFocusState:Landroidx/lifecycle/MutableLiveData;

    .line 51
    .line 52
    const/4 v1, 0x1

    .line 53
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    const v0, 0x3e2aaaab

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, p2, p3, v0}, Landroidx/camera/core/MeteringPointFactory;->createPoint(FFF)Landroidx/camera/core/MeteringPoint;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const/high16 v2, 0x3e800000    # 0.25f

    .line 68
    .line 69
    invoke-virtual {p1, p2, p3, v2}, Landroidx/camera/core/MeteringPointFactory;->createPoint(FFF)Landroidx/camera/core/MeteringPoint;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    new-instance p2, Landroidx/camera/core/FocusMeteringAction$Builder;

    .line 74
    .line 75
    invoke-direct {p2, v0, v1}, Landroidx/camera/core/FocusMeteringAction$Builder;-><init>(Landroidx/camera/core/MeteringPoint;I)V

    .line 76
    .line 77
    .line 78
    const/4 p3, 0x2

    .line 79
    invoke-virtual {p2, p1, p3}, Landroidx/camera/core/FocusMeteringAction$Builder;->addPoint(Landroidx/camera/core/MeteringPoint;I)Landroidx/camera/core/FocusMeteringAction$Builder;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p1}, Landroidx/camera/core/FocusMeteringAction$Builder;->build()Landroidx/camera/core/FocusMeteringAction;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    iget-object p2, p0, Landroidx/camera/view/CameraController;->mCamera:Landroidx/camera/core/Camera;

    .line 88
    .line 89
    invoke-interface {p2}, Landroidx/camera/core/Camera;->getCameraControl()Landroidx/camera/core/CameraControl;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    invoke-interface {p2, p1}, Landroidx/camera/core/CameraControl;->startFocusAndMetering(Landroidx/camera/core/FocusMeteringAction;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    new-instance p2, Landroidx/camera/view/CameraController$3;

    .line 98
    .line 99
    invoke-direct {p2, p0}, Landroidx/camera/view/CameraController$3;-><init>(Landroidx/camera/view/CameraController;)V

    .line 100
    .line 101
    .line 102
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    .line 103
    .line 104
    .line 105
    move-result-object p3

    .line 106
    invoke-static {p1, p2, p3}, Landroidx/camera/core/impl/utils/futures/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/camera/core/impl/utils/futures/FutureCallback;Ljava/util/concurrent/Executor;)V

    .line 107
    .line 108
    .line 109
    return-void
.end method

.method public setCameraSelector(Landroidx/camera/core/CameraSelector;)V
    .locals 8
    .param p1    # Landroidx/camera/core/CameraSelector;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 3
    .line 4
    .line 5
    iget-object v1, p0, Landroidx/camera/view/CameraController;->mCameraSelector:Landroidx/camera/core/CameraSelector;

    .line 6
    .line 7
    if-ne v1, p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p1}, Landroidx/camera/core/CameraSelector;->getLensFacing()Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p0, Landroidx/camera/view/CameraController;->mImageCapture:Landroidx/camera/core/ImageCapture;

    .line 15
    .line 16
    invoke-virtual {v2}, Landroidx/camera/core/ImageCapture;->getFlashMode()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-ne v2, v0, :cond_2

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 32
    .line 33
    const-string v0, "Not a front camera despite setting FLASH_MODE_SCREEN"

    .line 34
    .line 35
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p1

    .line 39
    :cond_2
    :goto_0
    iget-object v1, p0, Landroidx/camera/view/CameraController;->mCameraSelector:Landroidx/camera/core/CameraSelector;

    .line 40
    .line 41
    iput-object p1, p0, Landroidx/camera/view/CameraController;->mCameraSelector:Landroidx/camera/core/CameraSelector;

    .line 42
    .line 43
    iget-object p1, p0, Landroidx/camera/view/CameraController;->mCameraProvider:Landroidx/camera/view/ProcessCameraProviderWrapper;

    .line 44
    .line 45
    if-nez p1, :cond_3

    .line 46
    .line 47
    return-void

    .line 48
    :cond_3
    iget-object v2, p0, Landroidx/camera/view/CameraController;->mPreview:Landroidx/camera/core/Preview;

    .line 49
    .line 50
    iget-object v3, p0, Landroidx/camera/view/CameraController;->mImageCapture:Landroidx/camera/core/ImageCapture;

    .line 51
    .line 52
    iget-object v4, p0, Landroidx/camera/view/CameraController;->mImageAnalysis:Landroidx/camera/core/ImageAnalysis;

    .line 53
    .line 54
    iget-object v5, p0, Landroidx/camera/view/CameraController;->mVideoCapture:Landroidx/camera/video/VideoCapture;

    .line 55
    .line 56
    const/4 v6, 0x4

    .line 57
    new-array v6, v6, [Landroidx/camera/core/UseCase;

    .line 58
    .line 59
    const/4 v7, 0x0

    .line 60
    aput-object v2, v6, v7

    .line 61
    .line 62
    const/4 v2, 0x1

    .line 63
    aput-object v3, v6, v2

    .line 64
    .line 65
    const/4 v2, 0x2

    .line 66
    aput-object v4, v6, v2

    .line 67
    .line 68
    aput-object v5, v6, v0

    .line 69
    .line 70
    invoke-interface {p1, v6}, Landroidx/camera/view/ProcessCameraProviderWrapper;->unbind([Landroidx/camera/core/UseCase;)V

    .line 71
    .line 72
    .line 73
    new-instance p1, L뎰둣땀땀땪돶돛땥딀뎽돝뎡땔딤뒬돠딝땠뒀됨딅딻땜뒉딟딠든듌돤뒛뒨돼도딠뎽땭뒻딃땝딠뒾드땫땜땥됨땩둡딎돸딽듽땠땄뎻됴둔딄땤뒷돴딻둥뎨듼둥돴듰땮뎰땦듌땜뎡돸땅땫땣득뒵드둘딹땡딄듽땬땐뎹둘딹돼뒛땻둑따돤뎡딄듻뒷돨땐뎻두땲득듬뒬땩둘땮뒻도도땥뒬딻두땔따들딅둑땔뒈딤땮뎻뎬;

    .line 74
    .line 75
    const/16 v0, 0xb

    .line 76
    .line 77
    invoke-direct {p1, p0, v1, v0}, L뎰둣땀땀땪돶돛땥딀뎽돝뎡땔딤뒬돠딝땠뒀됨딅딻땜뒉딟딠든듌돤뒛뒨돼도딠뎽땭뒻딃땝딠뒾드땫땜땥됨땩둡딎돸딽듽땠땄뎻됴둔딄땤뒷돴딻둥뎨듼둥돴듰땮뎰땦듌땜뎡돸땅땫땣득뒵드둘딹땡딄듽땬땐뎹둘딹돼뒛땻둑따돤뎡딄듻뒷돨땐뎻두땲득듬뒬땩둘땮뒻도도땥뒬딻두땔따들딅둑땔뒈딤땮뎻뎬;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, p1}, Landroidx/camera/view/CameraController;->startCameraAndTrackStates(Ljava/lang/Runnable;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public setEffects(Ljava/util/Set;)V
    .locals 1
    .param p1    # Ljava/util/Set;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/camera/core/CameraEffect;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mEffects:Ljava/util/Set;

    .line 5
    .line 6
    invoke-static {v0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mCameraProvider:Landroidx/camera/view/ProcessCameraProviderWrapper;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Landroidx/camera/view/ProcessCameraProviderWrapper;->unbindAll()V

    .line 18
    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mEffects:Ljava/util/Set;

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mEffects:Ljava/util/Set;

    .line 26
    .line 27
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroidx/camera/view/CameraController;->startCameraAndTrackStates()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public setEnabledUseCases(I)V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Landroidx/camera/view/CameraController;->mEnabledUseCases:I

    .line 5
    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iput p1, p0, Landroidx/camera/view/CameraController;->mEnabledUseCases:I

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/camera/view/CameraController;->isVideoCaptureEnabled()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/camera/view/CameraController;->isRecording()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-direct {p0}, Landroidx/camera/view/CameraController;->stopRecording()V

    .line 24
    .line 25
    .line 26
    :cond_1
    new-instance p1, L돨땲듔땳둘땩둣뎠뒋땩뒹뎰두뒤땔땨딌뎽듽땤땜뎽듸딤듸땦땵뎹돠땍뒷땻땋땋땄딐둡뎬뒵땐딄뎬뒀땧득땨돰될듸뒼땯땡땜땍듼듌듼딁뒤땧뒹땝뒾뒀땣뎹땱돳둥뒛된드뒐땤땀땃땯땄딤뎽땠뒨땍둘듬될뒵됩돨둡뒻딌둬둔딸돸듰뎸듼뎠됨들땟듨둠두땯딟딜돰듟돵딽뎡뒉듐딠땪듐땣돸땥돛든뒼땣땅딽뒘땧;

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    invoke-direct {p1, p0, v0, v1}, L돨땲듔땳둘땩둣뎠뒋땩뒹뎰두뒤땔땨딌뎽듽땤땜뎽듸딤듸땦땵뎹돠땍뒷땻땋땋땄딐둡뎬뒵땐딄뎬뒀땧득땨돰될듸뒼땯땡땜땍듼듌듼딁뒤땧뒹땝뒾뒀땣뎹땱돳둥뒛된드뒐땤땀땃땯땄딤뎽땠뒨땍둘듬될뒵됩돨둡뒻딌둬둔딸돸듰뎸듼뎠됨들땟듨둠두땯딟딜돰듟돵딽뎡뒉듐딠땪듐땣돸땥돛든뒼땣땅딽뒘땧;-><init>(Ljava/lang/Object;II)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1}, Landroidx/camera/view/CameraController;->startCameraAndTrackStates(Ljava/lang/Runnable;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public setImageAnalysisAnalyzer(Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageAnalysis$Analyzer;)V
    .locals 2
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/ImageAnalysis$Analyzer;
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
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mAnalysisAnalyzer:Landroidx/camera/core/ImageAnalysis$Analyzer;

    .line 5
    .line 6
    if-ne v0, p2, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/camera/view/CameraController;->mAnalysisExecutor:Ljava/util/concurrent/Executor;

    .line 9
    .line 10
    if-ne v1, p1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iput-object p1, p0, Landroidx/camera/view/CameraController;->mAnalysisExecutor:Ljava/util/concurrent/Executor;

    .line 14
    .line 15
    iput-object p2, p0, Landroidx/camera/view/CameraController;->mAnalysisAnalyzer:Landroidx/camera/core/ImageAnalysis$Analyzer;

    .line 16
    .line 17
    iget-object v1, p0, Landroidx/camera/view/CameraController;->mImageAnalysis:Landroidx/camera/core/ImageAnalysis;

    .line 18
    .line 19
    invoke-virtual {v1, p1, p2}, Landroidx/camera/core/ImageAnalysis;->setAnalyzer(Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageAnalysis$Analyzer;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, v0, p2}, Landroidx/camera/view/CameraController;->restartCameraIfAnalyzerResolutionChanged(Landroidx/camera/core/ImageAnalysis$Analyzer;Landroidx/camera/core/ImageAnalysis$Analyzer;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public setImageAnalysisBackgroundExecutor(Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mAnalysisBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 5
    .line 6
    if-ne v0, p1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iput-object p1, p0, Landroidx/camera/view/CameraController;->mAnalysisBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 10
    .line 11
    iget-object p1, p0, Landroidx/camera/view/CameraController;->mImageAnalysis:Landroidx/camera/core/ImageAnalysis;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/camera/core/ImageAnalysis;->getBackpressureStrategy()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mImageAnalysis:Landroidx/camera/core/ImageAnalysis;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/camera/core/ImageAnalysis;->getImageQueueDepth()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v1, p0, Landroidx/camera/view/CameraController;->mImageAnalysis:Landroidx/camera/core/ImageAnalysis;

    .line 32
    .line 33
    invoke-virtual {v1}, Landroidx/camera/core/ImageAnalysis;->getOutputImageFormat()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-direct {p0, p1, v0, v1}, Landroidx/camera/view/CameraController;->unbindImageAnalysisAndRecreate(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Landroidx/camera/view/CameraController;->startCameraAndTrackStates()V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public setImageAnalysisBackpressureStrategy(I)V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mImageAnalysis:Landroidx/camera/core/ImageAnalysis;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/camera/core/ImageAnalysis;->getBackpressureStrategy()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-ne v0, p1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mImageAnalysis:Landroidx/camera/core/ImageAnalysis;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/camera/core/ImageAnalysis;->getImageQueueDepth()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v1, p0, Landroidx/camera/view/CameraController;->mImageAnalysis:Landroidx/camera/core/ImageAnalysis;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroidx/camera/core/ImageAnalysis;->getOutputImageFormat()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-direct {p0, p1, v0, v1}, Landroidx/camera/view/CameraController;->unbindImageAnalysisAndRecreate(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Landroidx/camera/view/CameraController;->startCameraAndTrackStates()V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public setImageAnalysisImageQueueDepth(I)V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mImageAnalysis:Landroidx/camera/core/ImageAnalysis;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/camera/core/ImageAnalysis;->getImageQueueDepth()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-ne v0, p1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mImageAnalysis:Landroidx/camera/core/ImageAnalysis;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/camera/core/ImageAnalysis;->getBackpressureStrategy()I

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
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iget-object v1, p0, Landroidx/camera/view/CameraController;->mImageAnalysis:Landroidx/camera/core/ImageAnalysis;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroidx/camera/core/ImageAnalysis;->getOutputImageFormat()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-direct {p0, v0, p1, v1}, Landroidx/camera/view/CameraController;->unbindImageAnalysisAndRecreate(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Landroidx/camera/view/CameraController;->startCameraAndTrackStates()V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public setImageAnalysisOutputImageFormat(I)V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mImageAnalysis:Landroidx/camera/core/ImageAnalysis;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/camera/core/ImageAnalysis;->getOutputImageFormat()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mImageAnalysis:Landroidx/camera/core/ImageAnalysis;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/camera/core/ImageAnalysis;->getBackpressureStrategy()I

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
    iget-object v1, p0, Landroidx/camera/view/CameraController;->mImageAnalysis:Landroidx/camera/core/ImageAnalysis;

    .line 24
    .line 25
    invoke-virtual {v1}, Landroidx/camera/core/ImageAnalysis;->getImageQueueDepth()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-direct {p0, v0, v1, p1}, Landroidx/camera/view/CameraController;->unbindImageAnalysisAndRecreate(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public setImageAnalysisResolutionSelector(Landroidx/camera/core/resolutionselector/ResolutionSelector;)V
    .locals 2
    .param p1    # Landroidx/camera/core/resolutionselector/ResolutionSelector;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mImageAnalysisResolutionSelector:Landroidx/camera/core/resolutionselector/ResolutionSelector;

    .line 5
    .line 6
    if-ne v0, p1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iput-object p1, p0, Landroidx/camera/view/CameraController;->mImageAnalysisResolutionSelector:Landroidx/camera/core/resolutionselector/ResolutionSelector;

    .line 10
    .line 11
    iget-object p1, p0, Landroidx/camera/view/CameraController;->mImageAnalysis:Landroidx/camera/core/ImageAnalysis;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/camera/core/ImageAnalysis;->getBackpressureStrategy()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mImageAnalysis:Landroidx/camera/core/ImageAnalysis;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/camera/core/ImageAnalysis;->getImageQueueDepth()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v1, p0, Landroidx/camera/view/CameraController;->mImageAnalysis:Landroidx/camera/core/ImageAnalysis;

    .line 32
    .line 33
    invoke-virtual {v1}, Landroidx/camera/core/ImageAnalysis;->getOutputImageFormat()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-direct {p0, p1, v0, v1}, Landroidx/camera/view/CameraController;->unbindImageAnalysisAndRecreate(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Landroidx/camera/view/CameraController;->startCameraAndTrackStates()V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public setImageAnalysisTargetSize(Landroidx/camera/view/CameraController$OutputSize;)V
    .locals 2
    .param p1    # Landroidx/camera/view/CameraController$OutputSize;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mImageAnalysisTargetSize:Landroidx/camera/view/CameraController$OutputSize;

    .line 5
    .line 6
    invoke-direct {p0, v0, p1}, Landroidx/camera/view/CameraController;->isOutputSizeEqual(Landroidx/camera/view/CameraController$OutputSize;Landroidx/camera/view/CameraController$OutputSize;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iput-object p1, p0, Landroidx/camera/view/CameraController;->mImageAnalysisTargetSize:Landroidx/camera/view/CameraController$OutputSize;

    .line 14
    .line 15
    iget-object p1, p0, Landroidx/camera/view/CameraController;->mImageAnalysis:Landroidx/camera/core/ImageAnalysis;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroidx/camera/core/ImageAnalysis;->getBackpressureStrategy()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mImageAnalysis:Landroidx/camera/core/ImageAnalysis;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroidx/camera/core/ImageAnalysis;->getImageQueueDepth()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v1, p0, Landroidx/camera/view/CameraController;->mImageAnalysis:Landroidx/camera/core/ImageAnalysis;

    .line 36
    .line 37
    invoke-virtual {v1}, Landroidx/camera/core/ImageAnalysis;->getOutputImageFormat()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-direct {p0, p1, v0, v1}, Landroidx/camera/view/CameraController;->unbindImageAnalysisAndRecreate(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Landroidx/camera/view/CameraController;->startCameraAndTrackStates()V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public setImageCaptureFlashMode(I)V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    if-ne p1, v0, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mCameraSelector:Landroidx/camera/core/CameraSelector;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/camera/core/CameraSelector;->getLensFacing()Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    const-string v0, "Not a front camera despite setting FLASH_MODE_SCREEN"

    .line 25
    .line 26
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1

    .line 30
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/camera/view/CameraController;->updateScreenFlashToImageCapture()V

    .line 31
    .line 32
    .line 33
    :cond_2
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mImageCapture:Landroidx/camera/core/ImageCapture;

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Landroidx/camera/core/ImageCapture;->setFlashMode(I)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public setImageCaptureIoExecutor(Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mImageCaptureIoExecutor:Ljava/util/concurrent/Executor;

    .line 5
    .line 6
    if-ne v0, p1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iput-object p1, p0, Landroidx/camera/view/CameraController;->mImageCaptureIoExecutor:Ljava/util/concurrent/Executor;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/camera/view/CameraController;->getImageCaptureMode()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-direct {p0, p1}, Landroidx/camera/view/CameraController;->unbindImageCaptureAndRecreate(Ljava/lang/Integer;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/camera/view/CameraController;->startCameraAndTrackStates()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public setImageCaptureMode(I)V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mImageCapture:Landroidx/camera/core/ImageCapture;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/camera/core/ImageCapture;->getCaptureMode()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-ne v0, p1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-direct {p0, p1}, Landroidx/camera/view/CameraController;->unbindImageCaptureAndRecreate(Ljava/lang/Integer;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/camera/view/CameraController;->startCameraAndTrackStates()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public setImageCaptureResolutionSelector(Landroidx/camera/core/resolutionselector/ResolutionSelector;)V
    .locals 1
    .param p1    # Landroidx/camera/core/resolutionselector/ResolutionSelector;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mImageCaptureResolutionSelector:Landroidx/camera/core/resolutionselector/ResolutionSelector;

    .line 5
    .line 6
    if-ne v0, p1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iput-object p1, p0, Landroidx/camera/view/CameraController;->mImageCaptureResolutionSelector:Landroidx/camera/core/resolutionselector/ResolutionSelector;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/camera/view/CameraController;->getImageCaptureMode()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-direct {p0, p1}, Landroidx/camera/view/CameraController;->unbindImageCaptureAndRecreate(Ljava/lang/Integer;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/camera/view/CameraController;->startCameraAndTrackStates()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public setImageCaptureTargetSize(Landroidx/camera/view/CameraController$OutputSize;)V
    .locals 1
    .param p1    # Landroidx/camera/view/CameraController$OutputSize;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mImageCaptureTargetSize:Landroidx/camera/view/CameraController$OutputSize;

    .line 5
    .line 6
    invoke-direct {p0, v0, p1}, Landroidx/camera/view/CameraController;->isOutputSizeEqual(Landroidx/camera/view/CameraController$OutputSize;Landroidx/camera/view/CameraController$OutputSize;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iput-object p1, p0, Landroidx/camera/view/CameraController;->mImageCaptureTargetSize:Landroidx/camera/view/CameraController$OutputSize;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/camera/view/CameraController;->getImageCaptureMode()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-direct {p0, p1}, Landroidx/camera/view/CameraController;->unbindImageCaptureAndRecreate(Ljava/lang/Integer;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/camera/view/CameraController;->startCameraAndTrackStates()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public setLinearZoom(F)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

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
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroidx/camera/view/CameraController;->isCameraAttached()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mPendingLinearZoom:Landroidx/camera/view/PendingValue;

    .line 11
    .line 12
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {v0, p1}, Landroidx/camera/view/PendingValue;->setValue(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1

    .line 21
    :cond_0
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mCamera:Landroidx/camera/core/Camera;

    .line 22
    .line 23
    invoke-interface {v0}, Landroidx/camera/core/Camera;->getCameraControl()Landroidx/camera/core/CameraControl;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0, p1}, Landroidx/camera/core/CameraControl;->setLinearZoom(F)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    return-object p1
.end method

.method public setPinchToZoomEnabled(Z)V
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Landroidx/camera/view/CameraController;->mPinchToZoomEnabled:Z

    .line 5
    .line 6
    return-void
.end method

.method public setPreviewDynamicRange(Landroidx/camera/core/DynamicRange;)V
    .locals 0
    .param p1    # Landroidx/camera/core/DynamicRange;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/camera/view/CameraController;->mPreviewDynamicRange:Landroidx/camera/core/DynamicRange;

    .line 5
    .line 6
    invoke-direct {p0}, Landroidx/camera/view/CameraController;->unbindPreviewAndRecreate()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/camera/view/CameraController;->startCameraAndTrackStates()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setPreviewResolutionSelector(Landroidx/camera/core/resolutionselector/ResolutionSelector;)V
    .locals 1
    .param p1    # Landroidx/camera/core/resolutionselector/ResolutionSelector;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mPreviewResolutionSelector:Landroidx/camera/core/resolutionselector/ResolutionSelector;

    .line 5
    .line 6
    if-ne v0, p1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iput-object p1, p0, Landroidx/camera/view/CameraController;->mPreviewResolutionSelector:Landroidx/camera/core/resolutionselector/ResolutionSelector;

    .line 10
    .line 11
    invoke-direct {p0}, Landroidx/camera/view/CameraController;->unbindPreviewAndRecreate()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/camera/view/CameraController;->startCameraAndTrackStates()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public setPreviewTargetSize(Landroidx/camera/view/CameraController$OutputSize;)V
    .locals 1
    .param p1    # Landroidx/camera/view/CameraController$OutputSize;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mPreviewTargetSize:Landroidx/camera/view/CameraController$OutputSize;

    .line 5
    .line 6
    invoke-direct {p0, v0, p1}, Landroidx/camera/view/CameraController;->isOutputSizeEqual(Landroidx/camera/view/CameraController$OutputSize;Landroidx/camera/view/CameraController$OutputSize;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iput-object p1, p0, Landroidx/camera/view/CameraController;->mPreviewTargetSize:Landroidx/camera/view/CameraController$OutputSize;

    .line 14
    .line 15
    invoke-direct {p0}, Landroidx/camera/view/CameraController;->unbindPreviewAndRecreate()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/camera/view/CameraController;->startCameraAndTrackStates()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public setScreenFlashUiInfo(Landroidx/camera/view/internal/ScreenFlashUiInfo;)V
    .locals 3
    .param p1    # Landroidx/camera/view/internal/ScreenFlashUiInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/camera/view/CameraController;->getScreenFlashUiInfoByPriority()Landroidx/camera/view/internal/ScreenFlashUiInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroidx/camera/view/CameraController;->mScreenFlashUiInfoMap:Ljava/util/Map;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/camera/view/internal/ScreenFlashUiInfo;->getProviderType()Landroidx/camera/view/internal/ScreenFlashUiInfo$ProviderType;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/camera/view/CameraController;->getScreenFlashUiInfoByPriority()Landroidx/camera/view/internal/ScreenFlashUiInfo;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroidx/camera/view/internal/ScreenFlashUiInfo;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/camera/view/CameraController;->updateScreenFlashToImageCapture()V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public setTapToFocusEnabled(Z)V
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Landroidx/camera/view/CameraController;->mTapToFocusEnabled:Z

    .line 5
    .line 6
    return-void
.end method

.method public setVideoCaptureDynamicRange(Landroidx/camera/core/DynamicRange;)V
    .locals 0
    .param p1    # Landroidx/camera/core/DynamicRange;
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
    iput-object p1, p0, Landroidx/camera/view/CameraController;->mVideoCaptureDynamicRange:Landroidx/camera/core/DynamicRange;

    .line 5
    .line 6
    invoke-direct {p0}, Landroidx/camera/view/CameraController;->unbindVideoAndRecreate()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/camera/view/CameraController;->startCameraAndTrackStates()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setVideoCaptureMirrorMode(I)V
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/camera/view/CameraController;->mVideoCaptureMirrorMode:I

    .line 5
    .line 6
    invoke-direct {p0}, Landroidx/camera/view/CameraController;->unbindVideoAndRecreate()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/camera/view/CameraController;->startCameraAndTrackStates()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setVideoCaptureQualitySelector(Landroidx/camera/video/QualitySelector;)V
    .locals 0
    .param p1    # Landroidx/camera/video/QualitySelector;
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
    iput-object p1, p0, Landroidx/camera/view/CameraController;->mVideoCaptureQualitySelector:Landroidx/camera/video/QualitySelector;

    .line 5
    .line 6
    invoke-direct {p0}, Landroidx/camera/view/CameraController;->unbindVideoAndRecreate()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/camera/view/CameraController;->startCameraAndTrackStates()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setVideoCaptureTargetFrameRate(Landroid/util/Range;)V
    .locals 0
    .param p1    # Landroid/util/Range;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/camera/view/CameraController;->mVideoCaptureTargetFrameRate:Landroid/util/Range;

    .line 5
    .line 6
    invoke-direct {p0}, Landroidx/camera/view/CameraController;->unbindVideoAndRecreate()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/camera/view/CameraController;->startCameraAndTrackStates()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setZoomRatio(F)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

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
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroidx/camera/view/CameraController;->isCameraAttached()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mPendingZoomRatio:Landroidx/camera/view/PendingValue;

    .line 11
    .line 12
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {v0, p1}, Landroidx/camera/view/PendingValue;->setValue(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1

    .line 21
    :cond_0
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mCamera:Landroidx/camera/core/Camera;

    .line 22
    .line 23
    invoke-interface {v0}, Landroidx/camera/core/Camera;->getCameraControl()Landroidx/camera/core/CameraControl;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0, p1}, Landroidx/camera/core/CameraControl;->setZoomRatio(F)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    return-object p1
.end method

.method public abstract startCamera()Landroidx/camera/core/Camera;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public startCameraAndTrackStates()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroidx/camera/view/CameraController;->startCameraAndTrackStates(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startCameraAndTrackStates(Ljava/lang/Runnable;)V
    .locals 2
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroidx/camera/view/CameraController;->startCamera()Landroidx/camera/core/Camera;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/view/CameraController;->mCamera:Landroidx/camera/core/Camera;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    invoke-direct {p0}, Landroidx/camera/view/CameraController;->isCameraAttached()Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    const-string p1, "CameraController"

    const-string v0, "Use cases not attached to camera."

    invoke-static {p1, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    iget-object p1, p0, Landroidx/camera/view/CameraController;->mZoomState:Landroidx/camera/view/ForwardingLiveData;

    iget-object v0, p0, Landroidx/camera/view/CameraController;->mCamera:Landroidx/camera/core/Camera;

    invoke-interface {v0}, Landroidx/camera/core/Camera;->getCameraInfo()Landroidx/camera/core/CameraInfo;

    move-result-object v0

    invoke-interface {v0}, Landroidx/camera/core/CameraInfo;->getZoomState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/camera/view/ForwardingLiveData;->setSource(Landroidx/lifecycle/LiveData;)V

    .line 6
    iget-object p1, p0, Landroidx/camera/view/CameraController;->mTorchState:Landroidx/camera/view/ForwardingLiveData;

    iget-object v0, p0, Landroidx/camera/view/CameraController;->mCamera:Landroidx/camera/core/Camera;

    invoke-interface {v0}, Landroidx/camera/core/Camera;->getCameraInfo()Landroidx/camera/core/CameraInfo;

    move-result-object v0

    invoke-interface {v0}, Landroidx/camera/core/CameraInfo;->getTorchState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/camera/view/ForwardingLiveData;->setSource(Landroidx/lifecycle/LiveData;)V

    .line 7
    iget-object p1, p0, Landroidx/camera/view/CameraController;->mPendingEnableTorch:Landroidx/camera/view/PendingValue;

    new-instance v0, L돵딜뎸듰딹뒙땮두뒋뒻땜뒵땄돵됨땩될딝됫듽돤땲디뒨뒤뒤딨뎨뒼땦돵땵딄뒘뎻뎸됨땅듔됨땫땵딄딟땥됐두돝뒐땨듰땨듰딽땔되딎듟땲됫듨땀땜땧딐돠뒋둡둣뒬뒐돨땟딄돳뒨드듌땋땻됩됨땡땱뒨뒼딟땝딸뎸땀뒷뒝땝듰됫뎡듼땤뒷땹딤땡땰딜딐땔딸듰돶듽딽뎠딽뒬땧땱땡됐딤뒉둔돴둣땪돤뒀딞뒋땡;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, L돵딜뎸듰딹뒙땮두뒋뒻땜뒵땄돵됨땩될딝됫듽돤땲디뒨뒤뒤딨뎨뒼땦돵땵딄뒘뎻뎸됨땅듔됨땫땵딄딟땥됐두돝뒐땨듰땨듰딽땔되딎듟땲됫듨땀땜땧딐돠뒋둡둣뒬뒐돨땟딄돳뒨드듌땋땻됩됨땡땱뒨뒼딟땝딸뎸땀뒷뒝땝듰됫뎡듼땤뒷땹딤땡땰딜딐땔딸듰돶듽딽뎠딽뒬땧땱땡됐딤뒉둔돴둣땪돤뒀딞뒋땡;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroidx/camera/view/PendingValue;->propagateIfHasValue(Landroidx/arch/core/util/Function;)V

    .line 8
    iget-object p1, p0, Landroidx/camera/view/CameraController;->mPendingLinearZoom:Landroidx/camera/view/PendingValue;

    new-instance v0, L돵딜뎸듰딹뒙땮두뒋뒻땜뒵땄돵됨땩될딝됫듽돤땲디뒨뒤뒤딨뎨뒼땦돵땵딄뒘뎻뎸됨땅듔됨땫땵딄딟땥됐두돝뒐땨듰땨듰딽땔되딎듟땲됫듨땀땜땧딐돠뒋둡둣뒬뒐돨땟딄돳뒨드듌땋땻됩됨땡땱뒨뒼딟땝딸뎸땀뒷뒝땝듰됫뎡듼땤뒷땹딤땡땰딜딐땔딸듰돶듽딽뎠딽뒬땧땱땡됐딤뒉둔돴둣땪돤뒀딞뒋땡;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, L돵딜뎸듰딹뒙땮두뒋뒻땜뒵땄돵됨땩될딝됫듽돤땲디뒨뒤뒤딨뎨뒼땦돵땵딄뒘뎻뎸됨땅듔됨땫땵딄딟땥됐두돝뒐땨듰땨듰딽땔되딎듟땲됫듨땀땜땧딐돠뒋둡둣뒬뒐돨땟딄돳뒨드듌땋땻됩됨땡땱뒨뒼딟땝딸뎸땀뒷뒝땝듰됫뎡듼땤뒷땹딤땡땰딜딐땔딸듰돶듽딽뎠딽뒬땧땱땡됐딤뒉둔돴둣땪돤뒀딞뒋땡;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroidx/camera/view/PendingValue;->propagateIfHasValue(Landroidx/arch/core/util/Function;)V

    .line 9
    iget-object p1, p0, Landroidx/camera/view/CameraController;->mPendingZoomRatio:Landroidx/camera/view/PendingValue;

    new-instance v0, L돵딜뎸듰딹뒙땮두뒋뒻땜뒵땄돵됨땩될딝됫듽돤땲디뒨뒤뒤딨뎨뒼땦돵땵딄뒘뎻뎸됨땅듔됨땫땵딄딟땥됐두돝뒐땨듰땨듰딽땔되딎듟땲됫듨땀땜땧딐돠뒋둡둣뒬뒐돨땟딄돳뒨드듌땋땻됩됨땡땱뒨뒼딟땝딸뎸땀뒷뒝땝듰됫뎡듼땤뒷땹딤땡땰딜딐땔딸듰돶듽딽뎠딽뒬땧땱땡됐딤뒉둔돴둣땪돤뒀딞뒋땡;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, L돵딜뎸듰딹뒙땮두뒋뒻땜뒵땄돵됨땩될딝됫듽돤땲디뒨뒤뒤딨뎨뒼땦돵땵딄뒘뎻뎸됨땅듔됨땫땵딄딟땥됐두돝뒐땨듰땨듰딽땔되딎듟땲됫듨땀땜땧딐돠뒋둡둣뒬뒐돨땟딄돳뒨드듌땋땻됩됨땡땱뒨뒼딟땝딸뎸땀뒷뒝땝듰됫뎡듼땤뒷땹딤땡땰딜딐땔딸듰돶듽딽뎠딽뒬땧땱땡됐딤뒉둔돴둣땪돤뒀딞뒋땡;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroidx/camera/view/PendingValue;->propagateIfHasValue(Landroidx/arch/core/util/Function;)V

    return-void

    :catch_0
    move-exception v0

    if-eqz p1, :cond_1

    .line 10
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 11
    :cond_1
    throw v0
.end method

.method public startRecording(Landroidx/camera/video/FileDescriptorOutputOptions;Landroidx/camera/view/video/AudioConfig;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)Landroidx/camera/video/Recording;
    .locals 0
    .param p1    # Landroidx/camera/video/FileDescriptorOutputOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/view/video/AudioConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/core/util/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1a
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/video/FileDescriptorOutputOptions;",
            "Landroidx/camera/view/video/AudioConfig;",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/core/util/Consumer<",
            "Landroidx/camera/video/VideoRecordEvent;",
            ">;)",
            "Landroidx/camera/video/Recording;"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/camera/view/CameraController;->startRecordingInternal(Landroidx/camera/video/OutputOptions;Landroidx/camera/view/video/AudioConfig;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)Landroidx/camera/video/Recording;

    move-result-object p1

    return-object p1
.end method

.method public startRecording(Landroidx/camera/video/FileOutputOptions;Landroidx/camera/view/video/AudioConfig;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)Landroidx/camera/video/Recording;
    .locals 0
    .param p1    # Landroidx/camera/video/FileOutputOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/view/video/AudioConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/core/util/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/video/FileOutputOptions;",
            "Landroidx/camera/view/video/AudioConfig;",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/core/util/Consumer<",
            "Landroidx/camera/video/VideoRecordEvent;",
            ">;)",
            "Landroidx/camera/video/Recording;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/camera/view/CameraController;->startRecordingInternal(Landroidx/camera/video/OutputOptions;Landroidx/camera/view/video/AudioConfig;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)Landroidx/camera/video/Recording;

    move-result-object p1

    return-object p1
.end method

.method public startRecording(Landroidx/camera/video/MediaStoreOutputOptions;Landroidx/camera/view/video/AudioConfig;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)Landroidx/camera/video/Recording;
    .locals 0
    .param p1    # Landroidx/camera/video/MediaStoreOutputOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/view/video/AudioConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/core/util/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/video/MediaStoreOutputOptions;",
            "Landroidx/camera/view/video/AudioConfig;",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/core/util/Consumer<",
            "Landroidx/camera/video/VideoRecordEvent;",
            ">;)",
            "Landroidx/camera/video/Recording;"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/camera/view/CameraController;->startRecordingInternal(Landroidx/camera/video/OutputOptions;Landroidx/camera/view/video/AudioConfig;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)Landroidx/camera/video/Recording;

    move-result-object p1

    return-object p1
.end method

.method public takePicture(Landroidx/camera/core/ImageCapture$OutputFileOptions;Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageCapture$OnImageSavedCallback;)V
    .locals 2
    .param p1    # Landroidx/camera/core/ImageCapture$OutputFileOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/camera/core/ImageCapture$OnImageSavedCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    invoke-direct {p0}, Landroidx/camera/view/CameraController;->isCameraInitialized()Z

    move-result v0

    const-string v1, "Camera not initialized."

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Landroidx/camera/view/CameraController;->isImageCaptureEnabled()Z

    move-result v0

    const-string v1, "ImageCapture disabled."

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 4
    invoke-direct {p0}, Landroidx/camera/view/CameraController;->throwExceptionForInvalidScreenFlashCapture()V

    .line 5
    invoke-virtual {p0, p1}, Landroidx/camera/view/CameraController;->updateMirroringFlagInOutputFileOptions(Landroidx/camera/core/ImageCapture$OutputFileOptions;)V

    .line 6
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mImageCapture:Landroidx/camera/core/ImageCapture;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/camera/core/ImageCapture;->takePicture(Landroidx/camera/core/ImageCapture$OutputFileOptions;Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageCapture$OnImageSavedCallback;)V

    return-void
.end method

.method public takePicture(Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;)V
    .locals 2
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 7
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 8
    invoke-direct {p0}, Landroidx/camera/view/CameraController;->isCameraInitialized()Z

    move-result v0

    const-string v1, "Camera not initialized."

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Landroidx/camera/view/CameraController;->isImageCaptureEnabled()Z

    move-result v0

    const-string v1, "ImageCapture disabled."

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 10
    invoke-direct {p0}, Landroidx/camera/view/CameraController;->throwExceptionForInvalidScreenFlashCapture()V

    .line 11
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mImageCapture:Landroidx/camera/core/ImageCapture;

    invoke-virtual {v0, p1, p2}, Landroidx/camera/core/ImageCapture;->takePicture(Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;)V

    return-void
.end method

.method public updateMirroringFlagInOutputFileOptions(Landroidx/camera/core/ImageCapture$OutputFileOptions;)V
    .locals 1
    .param p1    # Landroidx/camera/core/ImageCapture$OutputFileOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mCameraSelector:Landroidx/camera/core/CameraSelector;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/camera/core/CameraSelector;->getLensFacing()Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/camera/core/ImageCapture$OutputFileOptions;->getMetadata()Landroidx/camera/core/ImageCapture$Metadata;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroidx/camera/core/ImageCapture$Metadata;->isReversedHorizontalSet()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/camera/core/ImageCapture$OutputFileOptions;->getMetadata()Landroidx/camera/core/ImageCapture$Metadata;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mCameraSelector:Landroidx/camera/core/CameraSelector;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroidx/camera/core/CameraSelector;->getLensFacing()Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 v0, 0x0

    .line 38
    :goto_0
    invoke-virtual {p1, v0}, Landroidx/camera/core/ImageCapture$Metadata;->setReversedHorizontal(Z)V

    .line 39
    .line 40
    .line 41
    :cond_1
    return-void
.end method

.method public updatePreviewViewTransform(Landroid/graphics/Matrix;)V
    .locals 2
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Landroidx/annotation/OptIn;
        markerClass = {
            Landroidx/camera/view/TransformExperimental;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mAnalysisAnalyzer:Landroidx/camera/core/ImageAnalysis$Analyzer;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-interface {v0}, Landroidx/camera/core/ImageAnalysis$Analyzer;->getTargetCoordinateSystem()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-ne v0, v1, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mAnalysisAnalyzer:Landroidx/camera/core/ImageAnalysis$Analyzer;

    .line 17
    .line 18
    invoke-interface {v0, p1}, Landroidx/camera/core/ImageAnalysis$Analyzer;->updateTransform(Landroid/graphics/Matrix;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method public updateScreenFlashToImageCapture()V
    .locals 4
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/camera/view/CameraController;->getScreenFlashUiInfoByPriority()Landroidx/camera/view/internal/ScreenFlashUiInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "CameraController"

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "No ScreenFlash instance set yet, need to wait for controller to be set to either ScreenFlashView or PreviewView"

    .line 10
    .line 11
    invoke-static {v1, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Landroidx/camera/view/CameraController;->mImageCapture:Landroidx/camera/core/ImageCapture;

    .line 15
    .line 16
    sget-object v1, Landroidx/camera/view/CameraController;->NO_OP_SCREEN_FLASH:Landroidx/camera/core/ImageCapture$ScreenFlash;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroidx/camera/core/ImageCapture;->setScreenFlash(Landroidx/camera/core/ImageCapture$ScreenFlash;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget-object v2, p0, Landroidx/camera/view/CameraController;->mImageCapture:Landroidx/camera/core/ImageCapture;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/camera/view/internal/ScreenFlashUiInfo;->getScreenFlash()Landroidx/camera/core/ImageCapture$ScreenFlash;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v2, v3}, Landroidx/camera/core/ImageCapture;->setScreenFlash(Landroidx/camera/core/ImageCapture$ScreenFlash;)V

    .line 29
    .line 30
    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v3, "Set ScreenFlash instance to ImageCapture, provided by "

    .line 34
    .line 35
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Landroidx/camera/view/internal/ScreenFlashUiInfo;->getProviderType()Landroidx/camera/view/internal/ScreenFlashUiInfo$ProviderType;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v1, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method
