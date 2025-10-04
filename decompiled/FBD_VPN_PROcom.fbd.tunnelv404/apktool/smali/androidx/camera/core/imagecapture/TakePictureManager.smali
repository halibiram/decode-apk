.class public Landroidx/camera/core/imagecapture/TakePictureManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/ForwardingImageProxy$OnImageCloseListener;
.implements Landroidx/camera/core/imagecapture/TakePictureRequest$RetryControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/imagecapture/TakePictureManager$CaptureError;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TakePictureManager"


# instance fields
.field private mCapturingRequest:Landroidx/camera/core/imagecapture/RequestWithCallback;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final mImageCaptureControl:Landroidx/camera/core/imagecapture/ImageCaptureControl;

.field mImagePipeline:Landroidx/camera/core/imagecapture/ImagePipeline;

.field private final mIncompleteRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/core/imagecapture/RequestWithCallback;",
            ">;"
        }
    .end annotation
.end field

.field final mNewRequests:Ljava/util/Deque;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Landroidx/camera/core/imagecapture/TakePictureRequest;",
            ">;"
        }
    .end annotation
.end field

.field mPaused:Z


# direct methods
.method public constructor <init>(Landroidx/camera/core/imagecapture/ImageCaptureControl;)V
    .locals 1
    .param p1    # Landroidx/camera/core/imagecapture/ImageCaptureControl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayDeque;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/camera/core/imagecapture/TakePictureManager;->mNewRequests:Ljava/util/Deque;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Landroidx/camera/core/imagecapture/TakePictureManager;->mPaused:Z

    .line 13
    .line 14
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Landroidx/camera/core/imagecapture/TakePictureManager;->mImageCaptureControl:Landroidx/camera/core/imagecapture/ImageCaptureControl;

    .line 18
    .line 19
    new-instance p1, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Landroidx/camera/core/imagecapture/TakePictureManager;->mIncompleteRequests:Ljava/util/List;

    .line 25
    .line 26
    return-void
.end method

.method private synthetic lambda$trackCurrentRequests$0()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/camera/core/imagecapture/TakePictureManager;->mCapturingRequest:Landroidx/camera/core/imagecapture/RequestWithCallback;

    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/camera/core/imagecapture/TakePictureManager;->issueNextRequest()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private synthetic lambda$trackCurrentRequests$1(Landroidx/camera/core/imagecapture/RequestWithCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/core/imagecapture/TakePictureManager;->mIncompleteRequests:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private submitCameraRequest(Landroidx/camera/core/imagecapture/CameraRequest;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1    # Landroidx/camera/core/imagecapture/CameraRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/imagecapture/CameraRequest;",
            ")",
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
    iget-object v0, p0, Landroidx/camera/core/imagecapture/TakePictureManager;->mImageCaptureControl:Landroidx/camera/core/imagecapture/ImageCaptureControl;

    .line 5
    .line 6
    invoke-interface {v0}, Landroidx/camera/core/imagecapture/ImageCaptureControl;->lockFlashMode()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Landroidx/camera/core/imagecapture/TakePictureManager;->mImageCaptureControl:Landroidx/camera/core/imagecapture/ImageCaptureControl;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/CameraRequest;->getCaptureConfigs()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v0, v1}, Landroidx/camera/core/imagecapture/ImageCaptureControl;->submitStillCaptureRequests(Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Landroidx/camera/core/imagecapture/TakePictureManager$1;

    .line 20
    .line 21
    invoke-direct {v1, p0, p1}, Landroidx/camera/core/imagecapture/TakePictureManager$1;-><init>(Landroidx/camera/core/imagecapture/TakePictureManager;Landroidx/camera/core/imagecapture/CameraRequest;)V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {v0, v1, p1}, Landroidx/camera/core/impl/utils/futures/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/camera/core/impl/utils/futures/FutureCallback;Ljava/util/concurrent/Executor;)V

    .line 29
    .line 30
    .line 31
    return-object v0
.end method

.method private trackCurrentRequests(Landroidx/camera/core/imagecapture/RequestWithCallback;)V
    .locals 3
    .param p1    # Landroidx/camera/core/imagecapture/RequestWithCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroidx/camera/core/imagecapture/TakePictureManager;->hasCapturingRequest()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkState(Z)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Landroidx/camera/core/imagecapture/TakePictureManager;->mCapturingRequest:Landroidx/camera/core/imagecapture/RequestWithCallback;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/RequestWithCallback;->getCaptureFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v1, L땩듽돨돠듐땍듬땄듨땥뒋땻둔됩돛딞땃땄뒾돝뒙딎돛땠딞뒀듬둣뎸땻땡딸둠듬뎹딠땬뒝돠듰땰땨되디따돰땻들땬딄뒘뒘땰땳뒝딁딄땨뒾듰땍뎽땯됐땲뎨든돴된땭뒻뒻됐듸땜땲뎨땐땃드뎨딸딌둔땻뒻땥땫뎸땫땟되땔뒻돳뒐돰뒾땯뎡딨둬뒻돼땜땅뒙딐됩돳됐땝듼둠둑따딨돠뒋될딃뎸뒻듨뒉땪땅돴딅딐;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-direct {v1, p0, v2}, L땩듽돨돠듐땍듬땄듨땥뒋땻둔됩돛딞땃땄뒾돝뒙딎돛땠딞뒀듬둣뎸땻땡딸둠듬뎹딠땬뒝돠듰땰땨되디따돰땻들땬딄뒘뒘땰땳뒝딁딄땨뒾듰땍뎽땯됐땲뎨든돴된땭뒻뒻됐듸땜땲뎨땐땃드뎨딸딌둔땻뒻땥땫뎸땫땟되땔뒻돳뒐돰뒾땯뎡딨둬뒻돼땜땅뒙딐됩돳됐땝듼둠둑따딨돠뒋될딃뎸뒻듨뒉땪땅돴딅딐;-><init>(Landroidx/camera/core/imagecapture/TakePictureManager;I)V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-interface {v0, v1, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Landroidx/camera/core/imagecapture/TakePictureManager;->mIncompleteRequests:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/RequestWithCallback;->getCompleteFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    new-instance v1, L딌뎰뎡두땜디뒘딝딌땔듻땀돼따땨될되둬뒻땭돠뒋딄뒨돵땧땋듔뒉듐땐딸뒨드뎡됐듼땪땭듻두돴둔된뒐땍뒐땨딜뒉땠듟땍된디뎬두땍딁돝딤딌듐둑땦뎡뒷땠뒐됩디둬뒀될땵딤듌득딀뎡땹들돛돠땥땥딐뎨딟땤돰돝뒻둠땲돶땜둘듻득됩듼딀딜뒉딁듸듬땬둠듐듌돼땨듰디뒼땄땨뎡땠돵딨돴딽됴듬돠땮땵;

    .line 39
    .line 40
    const/16 v2, 0x10

    .line 41
    .line 42
    invoke-direct {v1, p0, p1, v2}, L딌뎰뎡두땜디뒘딝딌땔듻땀돼따땨될되둬뒻땭돠뒋딄뒨돵땧땋듔뒉듐땐딸뒨드뎡됐듼땪땭듻두돴둔된뒐땍뒐땨딜뒉땠듟땍된디뎬두땍딁돝딤딌듐둑땦뎡뒷땠뒐됩디둬뒀될땵딤듌득딀뎡땹들돛돠땥땥딐뎨딟땤돰돝뒻둠땲돶땜둘듻득됩듼딀딜뒉딁듸듬땬둠듐듌돼땨듰디뒼땄땨뎡땠돵딨돴딽됴듬돠땮땵;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 43
    .line 44
    .line 45
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-interface {v0, v1, p1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroidx/camera/core/imagecapture/TakePictureManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/camera/core/imagecapture/TakePictureManager;->lambda$trackCurrentRequests$0()V

    return-void
.end method

.method public static synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Landroidx/camera/core/imagecapture/TakePictureManager;Landroidx/camera/core/imagecapture/RequestWithCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/camera/core/imagecapture/TakePictureManager;->lambda$trackCurrentRequests$1(Landroidx/camera/core/imagecapture/RequestWithCallback;)V

    return-void
.end method


# virtual methods
.method public abortRequests()V
    .locals 4
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/camera/core/ImageCaptureException;

    .line 5
    .line 6
    const-string v1, "Camera is closed."

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x3

    .line 10
    invoke-direct {v0, v3, v1, v2}, Landroidx/camera/core/ImageCaptureException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Landroidx/camera/core/imagecapture/TakePictureManager;->mNewRequests:Ljava/util/Deque;

    .line 14
    .line 15
    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Landroidx/camera/core/imagecapture/TakePictureRequest;

    .line 30
    .line 31
    invoke-virtual {v2, v0}, Landroidx/camera/core/imagecapture/TakePictureRequest;->onError(Landroidx/camera/core/ImageCaptureException;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object v1, p0, Landroidx/camera/core/imagecapture/TakePictureManager;->mNewRequests:Ljava/util/Deque;

    .line 36
    .line 37
    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 38
    .line 39
    .line 40
    new-instance v1, Ljava/util/ArrayList;

    .line 41
    .line 42
    iget-object v2, p0, Landroidx/camera/core/imagecapture/TakePictureManager;->mIncompleteRequests:Ljava/util/List;

    .line 43
    .line 44
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_1

    .line 56
    .line 57
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    check-cast v2, Landroidx/camera/core/imagecapture/RequestWithCallback;

    .line 62
    .line 63
    invoke-virtual {v2, v0}, Landroidx/camera/core/imagecapture/RequestWithCallback;->abortAndSendErrorToApp(Landroidx/camera/core/ImageCaptureException;)V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_1
    return-void
.end method

.method public getCapturingRequest()Landroidx/camera/core/imagecapture/RequestWithCallback;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/imagecapture/TakePictureManager;->mCapturingRequest:Landroidx/camera/core/imagecapture/RequestWithCallback;

    .line 2
    .line 3
    return-object v0
.end method

.method public getImagePipeline()Landroidx/camera/core/imagecapture/ImagePipeline;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/imagecapture/TakePictureManager;->mImagePipeline:Landroidx/camera/core/imagecapture/ImagePipeline;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIncompleteRequests()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/core/imagecapture/RequestWithCallback;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/imagecapture/TakePictureManager;->mIncompleteRequests:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public hasCapturingRequest()Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/imagecapture/TakePictureManager;->mCapturingRequest:Landroidx/camera/core/imagecapture/RequestWithCallback;

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

.method public issueNextRequest()V
    .locals 4
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/camera/core/imagecapture/TakePictureManager;->hasCapturingRequest()Z

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
    iget-boolean v0, p0, Landroidx/camera/core/imagecapture/TakePictureManager;->mPaused:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    iget-object v0, p0, Landroidx/camera/core/imagecapture/TakePictureManager;->mImagePipeline:Landroidx/camera/core/imagecapture/ImagePipeline;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/camera/core/imagecapture/ImagePipeline;->getCapacity()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_2

    .line 23
    .line 24
    return-void

    .line 25
    :cond_2
    iget-object v0, p0, Landroidx/camera/core/imagecapture/TakePictureManager;->mNewRequests:Ljava/util/Deque;

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Landroidx/camera/core/imagecapture/TakePictureRequest;

    .line 32
    .line 33
    if-nez v0, :cond_3

    .line 34
    .line 35
    return-void

    .line 36
    :cond_3
    new-instance v1, Landroidx/camera/core/imagecapture/RequestWithCallback;

    .line 37
    .line 38
    invoke-direct {v1, v0, p0}, Landroidx/camera/core/imagecapture/RequestWithCallback;-><init>(Landroidx/camera/core/imagecapture/TakePictureRequest;Landroidx/camera/core/imagecapture/TakePictureRequest$RetryControl;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {p0, v1}, Landroidx/camera/core/imagecapture/TakePictureManager;->trackCurrentRequests(Landroidx/camera/core/imagecapture/RequestWithCallback;)V

    .line 42
    .line 43
    .line 44
    iget-object v2, p0, Landroidx/camera/core/imagecapture/TakePictureManager;->mImagePipeline:Landroidx/camera/core/imagecapture/ImagePipeline;

    .line 45
    .line 46
    invoke-virtual {v1}, Landroidx/camera/core/imagecapture/RequestWithCallback;->getCaptureFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v2, v0, v1, v3}, Landroidx/camera/core/imagecapture/ImagePipeline;->createRequests(Landroidx/camera/core/imagecapture/TakePictureRequest;Landroidx/camera/core/imagecapture/TakePictureCallback;Lcom/google/common/util/concurrent/ListenableFuture;)Landroidx/core/util/Pair;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iget-object v2, v0, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v2, Landroidx/camera/core/imagecapture/CameraRequest;

    .line 57
    .line 58
    invoke-static {v2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    iget-object v0, v0, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v0, Landroidx/camera/core/imagecapture/ProcessingRequest;

    .line 64
    .line 65
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    iget-object v3, p0, Landroidx/camera/core/imagecapture/TakePictureManager;->mImagePipeline:Landroidx/camera/core/imagecapture/ImagePipeline;

    .line 69
    .line 70
    invoke-virtual {v3, v0}, Landroidx/camera/core/imagecapture/ImagePipeline;->submitProcessingRequest(Landroidx/camera/core/imagecapture/ProcessingRequest;)V

    .line 71
    .line 72
    .line 73
    invoke-direct {p0, v2}, Landroidx/camera/core/imagecapture/TakePictureManager;->submitCameraRequest(Landroidx/camera/core/imagecapture/CameraRequest;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v1, v0}, Landroidx/camera/core/imagecapture/RequestWithCallback;->setCaptureRequestFuture(Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public offerRequest(Landroidx/camera/core/imagecapture/TakePictureRequest;)V
    .locals 1
    .param p1    # Landroidx/camera/core/imagecapture/TakePictureRequest;
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
    iget-object v0, p0, Landroidx/camera/core/imagecapture/TakePictureManager;->mNewRequests:Ljava/util/Deque;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Ljava/util/Deque;->offer(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/camera/core/imagecapture/TakePictureManager;->issueNextRequest()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onImageClose(Landroidx/camera/core/ImageProxy;)V
    .locals 2
    .param p1    # Landroidx/camera/core/ImageProxy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, L땩듽돨돠듐땍듬땄듨땥뒋땻둔됩돛딞땃땄뒾돝뒙딎돛땠딞뒀듬둣뎸땻땡딸둠듬뎹딠땬뒝돠듰땰땨되디따돰땻들땬딄뒘뒘땰땳뒝딁딄땨뒾듰땍뎽땯됐땲뎨든돴된땭뒻뒻됐듸땜땲뎨땐땃드뎨딸딌둔땻뒻땥땫뎸땫땟되땔뒻돳뒐돰뒾땯뎡딨둬뒻돼땜땅뒙딐됩돳됐땝듼둠둑따딨돠뒋될딃뎸뒻듨뒉땪땅돴딅딐;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-direct {v0, p0, v1}, L땩듽돨돠듐땍듬땄듨땥뒋땻둔됩돛딞땃땄뒾돝뒙딎돛땠딞뒀듬둣뎸땻땡딸둠듬뎹딠땬뒝돠듰땰땨되디따돰땻들땬딄뒘뒘땰땳뒝딁딄땨뒾듰땍뎽땯됐땲뎨든돴된땭뒻뒻됐듸땜땲뎨땐땃드뎨딸딌둔땻뒻땥땫뎸땫땟되땔뒻돳뒐돰뒾땯뎡딨둬뒻돼땜땅뒙딐됩돳됐땝듼둠둑따딨돠뒋될딃뎸뒻듨뒉땪땅돴딅딐;-><init>(Landroidx/camera/core/imagecapture/TakePictureManager;I)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public pause()V
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
    iput-boolean v0, p0, Landroidx/camera/core/imagecapture/TakePictureManager;->mPaused:Z

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/camera/core/imagecapture/TakePictureManager;->mCapturingRequest:Landroidx/camera/core/imagecapture/RequestWithCallback;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/camera/core/imagecapture/RequestWithCallback;->abortSilentlyAndRetry()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/camera/core/imagecapture/TakePictureManager;->mPaused:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/camera/core/imagecapture/TakePictureManager;->issueNextRequest()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public retryRequest(Landroidx/camera/core/imagecapture/TakePictureRequest;)V
    .locals 2
    .param p1    # Landroidx/camera/core/imagecapture/TakePictureRequest;
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
    const-string v0, "TakePictureManager"

    .line 5
    .line 6
    const-string v1, "Add a new request for retrying."

    .line 7
    .line 8
    invoke-static {v0, v1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroidx/camera/core/imagecapture/TakePictureManager;->mNewRequests:Ljava/util/Deque;

    .line 12
    .line 13
    invoke-interface {v0, p1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/camera/core/imagecapture/TakePictureManager;->issueNextRequest()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public setImagePipeline(Landroidx/camera/core/imagecapture/ImagePipeline;)V
    .locals 0
    .param p1    # Landroidx/camera/core/imagecapture/ImagePipeline;
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
    iput-object p1, p0, Landroidx/camera/core/imagecapture/TakePictureManager;->mImagePipeline:Landroidx/camera/core/imagecapture/ImagePipeline;

    .line 5
    .line 6
    invoke-virtual {p1, p0}, Landroidx/camera/core/imagecapture/ImagePipeline;->setOnImageCloseListener(Landroidx/camera/core/ForwardingImageProxy$OnImageCloseListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
