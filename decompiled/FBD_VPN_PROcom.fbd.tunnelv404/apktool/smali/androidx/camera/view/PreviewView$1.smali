.class Landroidx/camera/view/PreviewView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/Preview$SurfaceProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/view/PreviewView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/view/PreviewView;


# direct methods
.method public constructor <init>(Landroidx/camera/view/PreviewView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/camera/view/PreviewView$1;->this$0:Landroidx/camera/view/PreviewView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$onSurfaceRequested$0(Landroidx/camera/core/SurfaceRequest;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/view/PreviewView$1;->this$0:Landroidx/camera/view/PreviewView;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/camera/view/PreviewView;->mSurfaceProvider:Landroidx/camera/core/Preview$SurfaceProvider;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroidx/camera/core/Preview$SurfaceProvider;->onSurfaceRequested(Landroidx/camera/core/SurfaceRequest;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private synthetic lambda$onSurfaceRequested$1(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/SurfaceRequest;Landroidx/camera/core/SurfaceRequest$TransformationInfo;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Preview transformation info updated. "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "PreviewView"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {p1}, Landroidx/camera/core/impl/CameraInternal;->getCameraInfoInternal()Landroidx/camera/core/impl/CameraInfoInternal;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-interface {p1}, Landroidx/camera/core/CameraInfo;->getLensFacing()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    const/4 v0, 0x0

    .line 29
    const/4 v1, 0x1

    .line 30
    if-nez p1, :cond_0

    .line 31
    .line 32
    const/4 p1, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 p1, 0x0

    .line 35
    :goto_0
    iget-object v2, p0, Landroidx/camera/view/PreviewView$1;->this$0:Landroidx/camera/view/PreviewView;

    .line 36
    .line 37
    iget-object v2, v2, Landroidx/camera/view/PreviewView;->mPreviewTransform:Landroidx/camera/view/PreviewTransformation;

    .line 38
    .line 39
    invoke-virtual {p2}, Landroidx/camera/core/SurfaceRequest;->getResolution()Landroid/util/Size;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-virtual {v2, p3, p2, p1}, Landroidx/camera/view/PreviewTransformation;->setTransformationInfo(Landroidx/camera/core/SurfaceRequest$TransformationInfo;Landroid/util/Size;Z)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p3}, Landroidx/camera/core/SurfaceRequest$TransformationInfo;->getTargetRotation()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    const/4 p2, -0x1

    .line 51
    if-eq p1, p2, :cond_2

    .line 52
    .line 53
    iget-object p1, p0, Landroidx/camera/view/PreviewView$1;->this$0:Landroidx/camera/view/PreviewView;

    .line 54
    .line 55
    iget-object p2, p1, Landroidx/camera/view/PreviewView;->mImplementation:Landroidx/camera/view/PreviewViewImplementation;

    .line 56
    .line 57
    if-eqz p2, :cond_1

    .line 58
    .line 59
    instance-of p2, p2, Landroidx/camera/view/SurfaceViewImplementation;

    .line 60
    .line 61
    if-eqz p2, :cond_1

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    iput-boolean v0, p1, Landroidx/camera/view/PreviewView;->mUseDisplayRotation:Z

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_2
    :goto_1
    iget-object p1, p0, Landroidx/camera/view/PreviewView$1;->this$0:Landroidx/camera/view/PreviewView;

    .line 68
    .line 69
    iput-boolean v1, p1, Landroidx/camera/view/PreviewView;->mUseDisplayRotation:Z

    .line 70
    .line 71
    :goto_2
    iget-object p1, p0, Landroidx/camera/view/PreviewView$1;->this$0:Landroidx/camera/view/PreviewView;

    .line 72
    .line 73
    invoke-virtual {p1}, Landroidx/camera/view/PreviewView;->redrawPreview()V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method private synthetic lambda$onSurfaceRequested$2(Landroidx/camera/view/PreviewStreamStateObserver;Landroidx/camera/core/impl/CameraInternal;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/view/PreviewView$1;->this$0:Landroidx/camera/view/PreviewView;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/camera/view/PreviewView;->mActiveStreamStateObserver:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    sget-object v0, Landroidx/camera/view/PreviewView$StreamState;->IDLE:Landroidx/camera/view/PreviewView$StreamState;

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroidx/camera/view/PreviewStreamStateObserver;->updatePreviewStreamState(Landroidx/camera/view/PreviewView$StreamState;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eq v1, p1, :cond_0

    .line 23
    .line 24
    :goto_0
    invoke-virtual {p1}, Landroidx/camera/view/PreviewStreamStateObserver;->clear()V

    .line 25
    .line 26
    .line 27
    invoke-interface {p2}, Landroidx/camera/core/impl/CameraInternal;->getCameraState()Landroidx/camera/core/impl/Observable;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-interface {p2, p1}, Landroidx/camera/core/impl/Observable;->removeObserver(Landroidx/camera/core/impl/Observable$Observer;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroidx/camera/view/PreviewView$1;Landroidx/camera/core/SurfaceRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/camera/view/PreviewView$1;->lambda$onSurfaceRequested$0(Landroidx/camera/core/SurfaceRequest;)V

    return-void
.end method

.method public static synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Landroidx/camera/view/PreviewView$1;Landroidx/camera/view/PreviewStreamStateObserver;Landroidx/camera/core/impl/CameraInternal;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/camera/view/PreviewView$1;->lambda$onSurfaceRequested$2(Landroidx/camera/view/PreviewStreamStateObserver;Landroidx/camera/core/impl/CameraInternal;)V

    return-void
.end method

.method public static synthetic 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Landroidx/camera/view/PreviewView$1;Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/SurfaceRequest;Landroidx/camera/core/SurfaceRequest$TransformationInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/view/PreviewView$1;->lambda$onSurfaceRequested$1(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/SurfaceRequest;Landroidx/camera/core/SurfaceRequest$TransformationInfo;)V

    return-void
.end method


# virtual methods
.method public onSurfaceRequested(Landroidx/camera/core/SurfaceRequest;)V
    .locals 5
    .param p1    # Landroidx/camera/core/SurfaceRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->isMainThread()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/camera/view/PreviewView$1;->this$0:Landroidx/camera/view/PreviewView;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Landroidx/core/content/ContextCompat;->getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Landroidx/camera/view/뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-direct {v1, p0, p1, v2}, Landroidx/camera/view/뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    const-string v0, "PreviewView"

    .line 28
    .line 29
    const-string v1, "Surface requested by Preview."

    .line 30
    .line 31
    invoke-static {v0, v1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Landroidx/camera/core/SurfaceRequest;->getCamera()Landroidx/camera/core/impl/CameraInternal;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v1, p0, Landroidx/camera/view/PreviewView$1;->this$0:Landroidx/camera/view/PreviewView;

    .line 39
    .line 40
    invoke-interface {v0}, Landroidx/camera/core/impl/CameraInternal;->getCameraInfoInternal()Landroidx/camera/core/impl/CameraInfoInternal;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    iput-object v2, v1, Landroidx/camera/view/PreviewView;->mCameraInfoInternal:Landroidx/camera/core/impl/CameraInfoInternal;

    .line 45
    .line 46
    iget-object v1, p0, Landroidx/camera/view/PreviewView$1;->this$0:Landroidx/camera/view/PreviewView;

    .line 47
    .line 48
    iget-object v1, v1, Landroidx/camera/view/PreviewView;->mPreviewViewMeteringPointFactory:Landroidx/camera/view/PreviewViewMeteringPointFactory;

    .line 49
    .line 50
    invoke-interface {v0}, Landroidx/camera/core/impl/CameraInternal;->getCameraControlInternal()Landroidx/camera/core/impl/CameraControlInternal;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-interface {v2}, Landroidx/camera/core/impl/CameraControlInternal;->getSensorRect()Landroid/graphics/Rect;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v1, v2}, Landroidx/camera/view/PreviewViewMeteringPointFactory;->setSensorRect(Landroid/graphics/Rect;)V

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Landroidx/camera/view/PreviewView$1;->this$0:Landroidx/camera/view/PreviewView;

    .line 62
    .line 63
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-static {v1}, Landroidx/core/content/ContextCompat;->getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    new-instance v2, Landroidx/camera/view/뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤;

    .line 72
    .line 73
    invoke-direct {v2, p0, v0, p1}, Landroidx/camera/view/뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v1, v2}, Landroidx/camera/core/SurfaceRequest;->setTransformationInfoListener(Ljava/util/concurrent/Executor;Landroidx/camera/core/SurfaceRequest$TransformationInfoListener;)V

    .line 77
    .line 78
    .line 79
    iget-object v1, p0, Landroidx/camera/view/PreviewView$1;->this$0:Landroidx/camera/view/PreviewView;

    .line 80
    .line 81
    iget-object v2, v1, Landroidx/camera/view/PreviewView;->mImplementation:Landroidx/camera/view/PreviewViewImplementation;

    .line 82
    .line 83
    iget-object v1, v1, Landroidx/camera/view/PreviewView;->mImplementationMode:Landroidx/camera/view/PreviewView$ImplementationMode;

    .line 84
    .line 85
    invoke-static {v2, p1, v1}, Landroidx/camera/view/PreviewView;->shouldReuseImplementation(Landroidx/camera/view/PreviewViewImplementation;Landroidx/camera/core/SurfaceRequest;Landroidx/camera/view/PreviewView$ImplementationMode;)Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-nez v1, :cond_2

    .line 90
    .line 91
    iget-object v1, p0, Landroidx/camera/view/PreviewView$1;->this$0:Landroidx/camera/view/PreviewView;

    .line 92
    .line 93
    iget-object v2, v1, Landroidx/camera/view/PreviewView;->mImplementationMode:Landroidx/camera/view/PreviewView$ImplementationMode;

    .line 94
    .line 95
    invoke-static {p1, v2}, Landroidx/camera/view/PreviewView;->shouldUseTextureView(Landroidx/camera/core/SurfaceRequest;Landroidx/camera/view/PreviewView$ImplementationMode;)Z

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-eqz v2, :cond_1

    .line 100
    .line 101
    new-instance v2, Landroidx/camera/view/TextureViewImplementation;

    .line 102
    .line 103
    iget-object v3, p0, Landroidx/camera/view/PreviewView$1;->this$0:Landroidx/camera/view/PreviewView;

    .line 104
    .line 105
    iget-object v4, v3, Landroidx/camera/view/PreviewView;->mPreviewTransform:Landroidx/camera/view/PreviewTransformation;

    .line 106
    .line 107
    invoke-direct {v2, v3, v4}, Landroidx/camera/view/TextureViewImplementation;-><init>(Landroid/widget/FrameLayout;Landroidx/camera/view/PreviewTransformation;)V

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_1
    new-instance v2, Landroidx/camera/view/SurfaceViewImplementation;

    .line 112
    .line 113
    iget-object v3, p0, Landroidx/camera/view/PreviewView$1;->this$0:Landroidx/camera/view/PreviewView;

    .line 114
    .line 115
    iget-object v4, v3, Landroidx/camera/view/PreviewView;->mPreviewTransform:Landroidx/camera/view/PreviewTransformation;

    .line 116
    .line 117
    invoke-direct {v2, v3, v4}, Landroidx/camera/view/SurfaceViewImplementation;-><init>(Landroid/widget/FrameLayout;Landroidx/camera/view/PreviewTransformation;)V

    .line 118
    .line 119
    .line 120
    :goto_0
    iput-object v2, v1, Landroidx/camera/view/PreviewView;->mImplementation:Landroidx/camera/view/PreviewViewImplementation;

    .line 121
    .line 122
    :cond_2
    new-instance v1, Landroidx/camera/view/PreviewStreamStateObserver;

    .line 123
    .line 124
    invoke-interface {v0}, Landroidx/camera/core/impl/CameraInternal;->getCameraInfoInternal()Landroidx/camera/core/impl/CameraInfoInternal;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    iget-object v3, p0, Landroidx/camera/view/PreviewView$1;->this$0:Landroidx/camera/view/PreviewView;

    .line 129
    .line 130
    iget-object v4, v3, Landroidx/camera/view/PreviewView;->mPreviewStreamStateLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 131
    .line 132
    iget-object v3, v3, Landroidx/camera/view/PreviewView;->mImplementation:Landroidx/camera/view/PreviewViewImplementation;

    .line 133
    .line 134
    invoke-direct {v1, v2, v4, v3}, Landroidx/camera/view/PreviewStreamStateObserver;-><init>(Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/lifecycle/MutableLiveData;Landroidx/camera/view/PreviewViewImplementation;)V

    .line 135
    .line 136
    .line 137
    iget-object v2, p0, Landroidx/camera/view/PreviewView$1;->this$0:Landroidx/camera/view/PreviewView;

    .line 138
    .line 139
    iget-object v2, v2, Landroidx/camera/view/PreviewView;->mActiveStreamStateObserver:Ljava/util/concurrent/atomic/AtomicReference;

    .line 140
    .line 141
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    invoke-interface {v0}, Landroidx/camera/core/impl/CameraInternal;->getCameraState()Landroidx/camera/core/impl/Observable;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    iget-object v3, p0, Landroidx/camera/view/PreviewView$1;->this$0:Landroidx/camera/view/PreviewView;

    .line 149
    .line 150
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    invoke-static {v3}, Landroidx/core/content/ContextCompat;->getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    invoke-interface {v2, v3, v1}, Landroidx/camera/core/impl/Observable;->addObserver(Ljava/util/concurrent/Executor;Landroidx/camera/core/impl/Observable$Observer;)V

    .line 159
    .line 160
    .line 161
    iget-object v2, p0, Landroidx/camera/view/PreviewView$1;->this$0:Landroidx/camera/view/PreviewView;

    .line 162
    .line 163
    iget-object v2, v2, Landroidx/camera/view/PreviewView;->mImplementation:Landroidx/camera/view/PreviewViewImplementation;

    .line 164
    .line 165
    new-instance v3, Landroidx/camera/view/뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤;

    .line 166
    .line 167
    invoke-direct {v3, p0, v1, v0}, Landroidx/camera/view/뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤;-><init>(Landroidx/camera/view/PreviewView$1;Landroidx/camera/view/PreviewStreamStateObserver;Landroidx/camera/core/impl/CameraInternal;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v2, p1, v3}, Landroidx/camera/view/PreviewViewImplementation;->onSurfaceRequested(Landroidx/camera/core/SurfaceRequest;Landroidx/camera/view/PreviewViewImplementation$OnSurfaceNotInUseListener;)V

    .line 171
    .line 172
    .line 173
    iget-object p1, p0, Landroidx/camera/view/PreviewView$1;->this$0:Landroidx/camera/view/PreviewView;

    .line 174
    .line 175
    iget-object v0, p1, Landroidx/camera/view/PreviewView;->mScreenFlashView:Landroidx/camera/view/ScreenFlashView;

    .line 176
    .line 177
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 178
    .line 179
    .line 180
    move-result p1

    .line 181
    const/4 v0, -0x1

    .line 182
    if-ne p1, v0, :cond_3

    .line 183
    .line 184
    iget-object p1, p0, Landroidx/camera/view/PreviewView$1;->this$0:Landroidx/camera/view/PreviewView;

    .line 185
    .line 186
    iget-object v0, p1, Landroidx/camera/view/PreviewView;->mScreenFlashView:Landroidx/camera/view/ScreenFlashView;

    .line 187
    .line 188
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 189
    .line 190
    .line 191
    :cond_3
    iget-object p1, p0, Landroidx/camera/view/PreviewView$1;->this$0:Landroidx/camera/view/PreviewView;

    .line 192
    .line 193
    iget-object v0, p1, Landroidx/camera/view/PreviewView;->mOnFrameUpdateListener:Landroidx/camera/view/PreviewView$OnFrameUpdateListener;

    .line 194
    .line 195
    if-eqz v0, :cond_4

    .line 196
    .line 197
    iget-object v1, p1, Landroidx/camera/view/PreviewView;->mOnFrameUpdateListenerExecutor:Ljava/util/concurrent/Executor;

    .line 198
    .line 199
    if-eqz v1, :cond_4

    .line 200
    .line 201
    iget-object p1, p1, Landroidx/camera/view/PreviewView;->mImplementation:Landroidx/camera/view/PreviewViewImplementation;

    .line 202
    .line 203
    invoke-virtual {p1, v1, v0}, Landroidx/camera/view/PreviewViewImplementation;->setFrameUpdateListener(Ljava/util/concurrent/Executor;Landroidx/camera/view/PreviewView$OnFrameUpdateListener;)V

    .line 204
    .line 205
    .line 206
    :cond_4
    return-void
.end method
