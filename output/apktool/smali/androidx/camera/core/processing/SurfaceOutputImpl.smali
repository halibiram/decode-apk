.class final Landroidx/camera/core/processing/SurfaceOutputImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/SurfaceOutput;


# static fields
.field private static final TAG:Ljava/lang/String; = "SurfaceOutputImpl"


# instance fields
.field private final mAdditionalTransform:[F
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mCameraInputInfo:Landroidx/camera/core/SurfaceOutput$CameraInputInfo;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mCloseFuture:Lcom/google/common/util/concurrent/ListenableFuture;
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

.field private mCloseFutureCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mEventListener:Landroidx/core/util/Consumer;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Consumer<",
            "Landroidx/camera/core/SurfaceOutput$Event;",
            ">;"
        }
    .end annotation
.end field

.field private mExecutor:Ljava/util/concurrent/Executor;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mFormat:I

.field private mHasPendingCloseRequest:Z
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mInvertedTextureTransform:[F
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mIsClosed:Z
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mSecondaryAdditionalTransform:[F
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mSecondaryCameraInputInfo:Landroidx/camera/core/SurfaceOutput$CameraInputInfo;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mSecondaryInvertedTextureTransform:[F
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mSensorToBufferTransform:Landroid/graphics/Matrix;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mSize:Landroid/util/Size;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mSurface:Landroid/view/Surface;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mTargets:I


# direct methods
.method public constructor <init>(Landroid/view/Surface;IILandroid/util/Size;Landroidx/camera/core/SurfaceOutput$CameraInputInfo;Landroidx/camera/core/SurfaceOutput$CameraInputInfo;Landroid/graphics/Matrix;)V
    .locals 5
    .param p1    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/util/Size;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroidx/camera/core/SurfaceOutput$CameraInputInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroidx/camera/core/SurfaceOutput$CameraInputInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Landroid/graphics/Matrix;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

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
    iput-object v0, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    const/16 v0, 0x10

    .line 12
    .line 13
    new-array v1, v0, [F

    .line 14
    .line 15
    iput-object v1, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->mAdditionalTransform:[F

    .line 16
    .line 17
    new-array v2, v0, [F

    .line 18
    .line 19
    iput-object v2, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->mSecondaryAdditionalTransform:[F

    .line 20
    .line 21
    new-array v3, v0, [F

    .line 22
    .line 23
    iput-object v3, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->mInvertedTextureTransform:[F

    .line 24
    .line 25
    new-array v0, v0, [F

    .line 26
    .line 27
    iput-object v0, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->mSecondaryInvertedTextureTransform:[F

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    iput-boolean v4, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->mHasPendingCloseRequest:Z

    .line 31
    .line 32
    iput-boolean v4, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->mIsClosed:Z

    .line 33
    .line 34
    iput-object p1, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->mSurface:Landroid/view/Surface;

    .line 35
    .line 36
    iput p2, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->mTargets:I

    .line 37
    .line 38
    iput p3, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->mFormat:I

    .line 39
    .line 40
    iput-object p4, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->mSize:Landroid/util/Size;

    .line 41
    .line 42
    iput-object p5, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->mCameraInputInfo:Landroidx/camera/core/SurfaceOutput$CameraInputInfo;

    .line 43
    .line 44
    iput-object p6, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->mSecondaryCameraInputInfo:Landroidx/camera/core/SurfaceOutput$CameraInputInfo;

    .line 45
    .line 46
    iput-object p7, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->mSensorToBufferTransform:Landroid/graphics/Matrix;

    .line 47
    .line 48
    invoke-static {v1, v3, p5}, Landroidx/camera/core/processing/SurfaceOutputImpl;->calculateAdditionalTransform([F[FLandroidx/camera/core/SurfaceOutput$CameraInputInfo;)V

    .line 49
    .line 50
    .line 51
    invoke-static {v2, v0, p6}, Landroidx/camera/core/processing/SurfaceOutputImpl;->calculateAdditionalTransform([F[FLandroidx/camera/core/SurfaceOutput$CameraInputInfo;)V

    .line 52
    .line 53
    .line 54
    new-instance p1, Landroidx/camera/core/processing/뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨;

    .line 55
    .line 56
    const/4 p2, 0x1

    .line 57
    invoke-direct {p1, p0, p2}, Landroidx/camera/core/processing/뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨;-><init>(Ljava/lang/Object;I)V

    .line 58
    .line 59
    .line 60
    invoke-static {p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iput-object p1, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->mCloseFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 65
    .line 66
    return-void
.end method

.method private static calculateAdditionalTransform([F[FLandroidx/camera/core/SurfaceOutput$CameraInputInfo;)V
    .locals 9
    .param p0    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/SurfaceOutput$CameraInputInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 3
    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/high16 v1, 0x3f000000    # 0.5f

    .line 9
    .line 10
    invoke-static {p0, v1}, Landroidx/camera/core/impl/utils/MatrixExt;->preVerticalFlip([FF)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Landroidx/camera/core/SurfaceOutput$CameraInputInfo;->getRotationDegrees()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    int-to-float v2, v2

    .line 18
    invoke-static {p0, v2, v1, v1}, Landroidx/camera/core/impl/utils/MatrixExt;->preRotate([FFFF)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Landroidx/camera/core/SurfaceOutput$CameraInputInfo;->getMirroring()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v2, 0x0

    .line 26
    const/high16 v3, 0x3f800000    # 1.0f

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-static {p0, v0, v3, v2, v2}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 31
    .line 32
    .line 33
    const/high16 v1, -0x40800000    # -1.0f

    .line 34
    .line 35
    invoke-static {p0, v0, v1, v3, v3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-virtual {p2}, Landroidx/camera/core/SurfaceOutput$CameraInputInfo;->getInputSize()Landroid/util/Size;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {p2}, Landroidx/camera/core/SurfaceOutput$CameraInputInfo;->getRotationDegrees()I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    invoke-static {v1, v4}, Landroidx/camera/core/impl/utils/TransformUtils;->rotateSize(Landroid/util/Size;I)Landroid/util/Size;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {p2}, Landroidx/camera/core/SurfaceOutput$CameraInputInfo;->getInputSize()Landroid/util/Size;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-static {v4}, Landroidx/camera/core/impl/utils/TransformUtils;->sizeToRectF(Landroid/util/Size;)Landroid/graphics/RectF;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-static {v1}, Landroidx/camera/core/impl/utils/TransformUtils;->sizeToRectF(Landroid/util/Size;)Landroid/graphics/RectF;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    invoke-virtual {p2}, Landroidx/camera/core/SurfaceOutput$CameraInputInfo;->getRotationDegrees()I

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    invoke-virtual {p2}, Landroidx/camera/core/SurfaceOutput$CameraInputInfo;->getMirroring()Z

    .line 67
    .line 68
    .line 69
    move-result v7

    .line 70
    invoke-static {v4, v5, v6, v7}, Landroidx/camera/core/impl/utils/TransformUtils;->getRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;IZ)Landroid/graphics/Matrix;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    new-instance v5, Landroid/graphics/RectF;

    .line 75
    .line 76
    invoke-virtual {p2}, Landroidx/camera/core/SurfaceOutput$CameraInputInfo;->getInputCropRect()Landroid/graphics/Rect;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    invoke-direct {v5, v6}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 84
    .line 85
    .line 86
    iget v4, v5, Landroid/graphics/RectF;->left:F

    .line 87
    .line 88
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    .line 89
    .line 90
    .line 91
    move-result v6

    .line 92
    int-to-float v6, v6

    .line 93
    div-float/2addr v4, v6

    .line 94
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    .line 95
    .line 96
    .line 97
    move-result v6

    .line 98
    int-to-float v6, v6

    .line 99
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    .line 100
    .line 101
    .line 102
    move-result v7

    .line 103
    sub-float/2addr v6, v7

    .line 104
    iget v7, v5, Landroid/graphics/RectF;->top:F

    .line 105
    .line 106
    sub-float/2addr v6, v7

    .line 107
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    .line 108
    .line 109
    .line 110
    move-result v7

    .line 111
    int-to-float v7, v7

    .line 112
    div-float/2addr v6, v7

    .line 113
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    .line 114
    .line 115
    .line 116
    move-result v7

    .line 117
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    .line 118
    .line 119
    .line 120
    move-result v8

    .line 121
    int-to-float v8, v8

    .line 122
    div-float/2addr v7, v8

    .line 123
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    int-to-float v1, v1

    .line 132
    div-float/2addr v5, v1

    .line 133
    invoke-static {p0, v0, v4, v6, v2}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 134
    .line 135
    .line 136
    invoke-static {p0, v0, v7, v5, v3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p2}, Landroidx/camera/core/SurfaceOutput$CameraInputInfo;->getCameraInternal()Landroidx/camera/core/impl/CameraInternal;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    invoke-static {p1, p2}, Landroidx/camera/core/processing/SurfaceOutputImpl;->calculateInvertedTextureTransform([FLandroidx/camera/core/impl/CameraInternal;)V

    .line 144
    .line 145
    .line 146
    const/4 v3, 0x0

    .line 147
    const/4 v5, 0x0

    .line 148
    const/4 v1, 0x0

    .line 149
    move-object v0, p0

    .line 150
    move-object v2, p1

    .line 151
    move-object v4, p0

    .line 152
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 153
    .line 154
    .line 155
    return-void
.end method

.method private static calculateInvertedTextureTransform([FLandroidx/camera/core/impl/CameraInternal;)V
    .locals 4
    .param p0    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/camera/core/impl/CameraInternal;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 3
    .line 4
    .line 5
    const/high16 v1, 0x3f000000    # 0.5f

    .line 6
    .line 7
    invoke-static {p0, v1}, Landroidx/camera/core/impl/utils/MatrixExt;->preVerticalFlip([FF)V

    .line 8
    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-interface {p1}, Landroidx/camera/core/impl/CameraInternal;->getHasTransform()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const-string v3, "Camera has no transform."

    .line 17
    .line 18
    invoke-static {v2, v3}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {p1}, Landroidx/camera/core/impl/CameraInternal;->getCameraInfo()Landroidx/camera/core/CameraInfo;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-interface {v2}, Landroidx/camera/core/CameraInfo;->getSensorRotationDegrees()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    int-to-float v2, v2

    .line 30
    invoke-static {p0, v2, v1, v1}, Landroidx/camera/core/impl/utils/MatrixExt;->preRotate([FFFF)V

    .line 31
    .line 32
    .line 33
    invoke-interface {p1}, Landroidx/camera/core/impl/CameraInternal;->isFrontFacing()Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_0

    .line 38
    .line 39
    const/high16 p1, 0x3f800000    # 1.0f

    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    invoke-static {p0, v0, p1, v1, v1}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 43
    .line 44
    .line 45
    const/high16 v1, -0x40800000    # -1.0f

    .line 46
    .line 47
    invoke-static {p0, v0, v1, p1, p1}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 48
    .line 49
    .line 50
    :cond_0
    invoke-static {p0, v0, p0, v0}, Landroid/opengl/Matrix;->invertM([FI[FI)Z

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method private synthetic lambda$new$0(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->mCloseFutureCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 2
    .line 3
    const-string p1, "SurfaceOutputImpl close future complete"

    .line 4
    .line 5
    return-object p1
.end method

.method private synthetic lambda$requestClose$1(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Landroidx/core/util/Consumer;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-static {v0, p0}, Landroidx/camera/core/SurfaceOutput$Event;->of(ILandroidx/camera/core/SurfaceOutput;)Landroidx/camera/core/SurfaceOutput$Event;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {p1, v0}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroidx/camera/core/processing/SurfaceOutputImpl;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/camera/core/processing/SurfaceOutputImpl;->lambda$new$0(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Landroidx/camera/core/processing/SurfaceOutputImpl;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/camera/core/processing/SurfaceOutputImpl;->lambda$requestClose$1(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->mIsClosed:Z

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->mIsClosed:Z

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception v1

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    iget-object v0, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->mCloseFutureCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    throw v1
.end method

.method public getCamera()Landroidx/camera/core/impl/CameraInternal;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->mCameraInputInfo:Landroidx/camera/core/SurfaceOutput$CameraInputInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/camera/core/SurfaceOutput$CameraInputInfo;->getCameraInternal()Landroidx/camera/core/impl/CameraInternal;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getCloseFuture()Lcom/google/common/util/concurrent/ListenableFuture;
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
    iget-object v0, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->mCloseFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFormat()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->mFormat:I

    .line 2
    .line 3
    return v0
.end method

.method public getInputCropRect()Landroid/graphics/Rect;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->mCameraInputInfo:Landroidx/camera/core/SurfaceOutput$CameraInputInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/camera/core/SurfaceOutput$CameraInputInfo;->getInputCropRect()Landroid/graphics/Rect;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getInputSize()Landroid/util/Size;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->mCameraInputInfo:Landroidx/camera/core/SurfaceOutput$CameraInputInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/camera/core/SurfaceOutput$CameraInputInfo;->getInputSize()Landroid/util/Size;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getRotationDegrees()I
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->mCameraInputInfo:Landroidx/camera/core/SurfaceOutput$CameraInputInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/camera/core/SurfaceOutput$CameraInputInfo;->getRotationDegrees()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getSensorToBufferTransform()Landroid/graphics/Matrix;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroid/graphics/Matrix;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->mSensorToBufferTransform:Landroid/graphics/Matrix;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public getSize()Landroid/util/Size;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->mSize:Landroid/util/Size;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSurface(Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)Landroid/view/Surface;
    .locals 1
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/core/util/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/core/util/Consumer<",
            "Landroidx/camera/core/SurfaceOutput$Event;",
            ">;)",
            "Landroid/view/Surface;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput-object p1, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->mExecutor:Ljava/util/concurrent/Executor;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->mEventListener:Landroidx/core/util/Consumer;

    .line 7
    .line 8
    iget-boolean p1, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->mHasPendingCloseRequest:Z

    .line 9
    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/camera/core/processing/SurfaceOutputImpl;->requestClose()V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object p1, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->mSurface:Landroid/view/Surface;

    .line 17
    .line 18
    return-object p1

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    throw p1
.end method

.method public getTargets()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->mTargets:I

    .line 2
    .line 3
    return v0
.end method

.method public isClosed()Z
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->mIsClosed:Z

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw v1
.end method

.method public isMirroring()Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->mCameraInputInfo:Landroidx/camera/core/SurfaceOutput$CameraInputInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/camera/core/SurfaceOutput$CameraInputInfo;->getMirroring()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public requestClose()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->mLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget-object v2, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->mExecutor:Ljava/util/concurrent/Executor;

    .line 10
    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    iget-object v2, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->mEventListener:Landroidx/core/util/Consumer;

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-boolean v3, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->mIsClosed:Z

    .line 19
    .line 20
    if-nez v3, :cond_2

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->mExecutor:Ljava/util/concurrent/Executor;

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    iput-boolean v3, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->mHasPendingCloseRequest:Z

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    goto :goto_3

    .line 33
    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 34
    iput-boolean v2, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->mHasPendingCloseRequest:Z

    .line 35
    .line 36
    :cond_2
    const/4 v2, 0x0

    .line 37
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    if-eqz v2, :cond_3

    .line 39
    .line 40
    :try_start_1
    new-instance v1, Landroidx/camera/core/processing/뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸;

    .line 41
    .line 42
    const/4 v3, 0x1

    .line 43
    invoke-direct {v1, p0, v0, v3}, Landroidx/camera/core/processing/뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 44
    .line 45
    .line 46
    invoke-interface {v2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    .line 47
    .line 48
    .line 49
    goto :goto_2

    .line 50
    :catch_0
    move-exception v0

    .line 51
    const-string v1, "SurfaceOutputImpl"

    .line 52
    .line 53
    const-string v2, "Processor executor closed. Close request not posted."

    .line 54
    .line 55
    invoke-static {v1, v2, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    .line 57
    .line 58
    :cond_3
    :goto_2
    return-void

    .line 59
    :goto_3
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 60
    throw v0
.end method

.method public updateTransformMatrix([F[F)V
    .locals 1
    .param p1    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Landroidx/camera/core/processing/SurfaceOutputImpl;->updateTransformMatrix([F[FZ)V

    return-void
.end method

.method public updateTransformMatrix([F[FZ)V
    .locals 6
    .param p1    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    if-eqz p3, :cond_0

    .line 2
    iget-object p3, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->mAdditionalTransform:[F

    :goto_0
    move-object v4, p3

    goto :goto_1

    :cond_0
    iget-object p3, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->mSecondaryAdditionalTransform:[F

    goto :goto_0

    :goto_1
    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    move-object v2, p2

    .line 3
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    return-void
.end method
