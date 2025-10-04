.class public final Lio/github/g00fy2/quickie/QRScannerActivity$startCamera$1$listener$1;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "io/github/g00fy2/quickie/QRScannerActivity$startCamera$1$listener$1",
        "Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;",
        "Landroid/view/ScaleGestureDetector;",
        "detector",
        "",
        "onScale",
        "(Landroid/view/ScaleGestureDetector;)Z",
        "quickie-foss_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Landroidx/camera/core/Camera;


# direct methods
.method public constructor <init>(Landroidx/camera/core/Camera;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/github/g00fy2/quickie/QRScannerActivity$startCamera$1$listener$1;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Landroidx/camera/core/Camera;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 2

    .line 1
    const-string v0, "detector"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/github/g00fy2/quickie/QRScannerActivity$startCamera$1$listener$1;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Landroidx/camera/core/Camera;

    .line 7
    .line 8
    invoke-interface {v0}, Landroidx/camera/core/Camera;->getCameraInfo()Landroidx/camera/core/CameraInfo;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Landroidx/camera/core/CameraInfo;->getZoomState()Landroidx/lifecycle/LiveData;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Landroidx/camera/core/ZoomState;

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-interface {v1}, Landroidx/camera/core/ZoomState;->getZoomRatio()F

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 30
    .line 31
    :goto_0
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    invoke-interface {v0}, Landroidx/camera/core/Camera;->getCameraControl()Landroidx/camera/core/CameraControl;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    mul-float v1, v1, p1

    .line 40
    .line 41
    invoke-interface {v0, v1}, Landroidx/camera/core/CameraControl;->setZoomRatio(F)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 42
    .line 43
    .line 44
    const/4 p1, 0x1

    .line 45
    return p1
.end method
