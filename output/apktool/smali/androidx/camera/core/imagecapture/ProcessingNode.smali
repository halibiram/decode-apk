.class public Landroidx/camera/core/imagecapture/ProcessingNode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/processing/Node;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/imagecapture/ProcessingNode$In;,
        Landroidx/camera/core/imagecapture/ProcessingNode$InputPacket;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/camera/core/processing/Node<",
        "Landroidx/camera/core/imagecapture/ProcessingNode$In;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ProcessingNode"


# instance fields
.field private mBitmap2JpegBytes:Landroidx/camera/core/processing/Operation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/core/processing/Operation<",
            "Landroidx/camera/core/imagecapture/Bitmap2JpegBytes$In;",
            "Landroidx/camera/core/processing/Packet<",
            "[B>;>;"
        }
    .end annotation
.end field

.field private mBitmapEffect:Landroidx/camera/core/processing/Operation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/core/processing/Operation<",
            "Landroidx/camera/core/processing/Packet<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroidx/camera/core/processing/Packet<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field final mBlockingExecutor:Ljava/util/concurrent/Executor;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mHasIncorrectJpegMetadataQuirk:Z

.field private mImage2Bitmap:Landroidx/camera/core/processing/Operation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/core/processing/Operation<",
            "Landroidx/camera/core/processing/Packet<",
            "Landroidx/camera/core/ImageProxy;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mImage2JpegBytes:Landroidx/camera/core/processing/Operation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/core/processing/Operation<",
            "Landroidx/camera/core/imagecapture/Image2JpegBytes$In;",
            "Landroidx/camera/core/processing/Packet<",
            "[B>;>;"
        }
    .end annotation
.end field

.field final mImageProcessor:Landroidx/camera/core/processing/InternalImageProcessor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mInput2Packet:Landroidx/camera/core/processing/Operation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/core/processing/Operation<",
            "Landroidx/camera/core/imagecapture/ProcessingNode$InputPacket;",
            "Landroidx/camera/core/processing/Packet<",
            "Landroidx/camera/core/ImageProxy;",
            ">;>;"
        }
    .end annotation
.end field

.field private mInputEdge:Landroidx/camera/core/imagecapture/ProcessingNode$In;

.field private mJpegBytes2CroppedBitmap:Landroidx/camera/core/processing/Operation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/core/processing/Operation<",
            "Landroidx/camera/core/processing/Packet<",
            "[B>;",
            "Landroidx/camera/core/processing/Packet<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private mJpegBytes2Disk:Landroidx/camera/core/processing/Operation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/core/processing/Operation<",
            "Landroidx/camera/core/imagecapture/JpegBytes2Disk$In;",
            "Landroidx/camera/core/ImageCapture$OutputFileResults;",
            ">;"
        }
    .end annotation
.end field

.field private mJpegBytes2Image:Landroidx/camera/core/processing/Operation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/core/processing/Operation<",
            "Landroidx/camera/core/processing/Packet<",
            "[B>;",
            "Landroidx/camera/core/processing/Packet<",
            "Landroidx/camera/core/ImageProxy;",
            ">;>;"
        }
    .end annotation
.end field

.field private mJpegImage2Result:Landroidx/camera/core/processing/Operation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/core/processing/Operation<",
            "Landroidx/camera/core/processing/Packet<",
            "Landroidx/camera/core/ImageProxy;",
            ">;",
            "Landroidx/camera/core/ImageProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final mQuirks:Landroidx/camera/core/impl/Quirks;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {}, Landroidx/camera/core/internal/compat/quirk/DeviceQuirks;->getAll()Landroidx/camera/core/impl/Quirks;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Landroidx/camera/core/imagecapture/ProcessingNode;-><init>(Ljava/util/concurrent/Executor;Landroidx/camera/core/processing/InternalImageProcessor;Landroidx/camera/core/impl/Quirks;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Landroidx/camera/core/impl/Quirks;)V
    .locals 1
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/impl/Quirks;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0, p2}, Landroidx/camera/core/imagecapture/ProcessingNode;-><init>(Ljava/util/concurrent/Executor;Landroidx/camera/core/processing/InternalImageProcessor;Landroidx/camera/core/impl/Quirks;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Landroidx/camera/core/processing/InternalImageProcessor;)V
    .locals 1
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/processing/InternalImageProcessor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-static {}, Landroidx/camera/core/internal/compat/quirk/DeviceQuirks;->getAll()Landroidx/camera/core/impl/Quirks;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Landroidx/camera/core/imagecapture/ProcessingNode;-><init>(Ljava/util/concurrent/Executor;Landroidx/camera/core/processing/InternalImageProcessor;Landroidx/camera/core/impl/Quirks;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Landroidx/camera/core/processing/InternalImageProcessor;Landroidx/camera/core/impl/Quirks;)V
    .locals 1
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/processing/InternalImageProcessor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/camera/core/impl/Quirks;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-class v0, Landroidx/camera/core/internal/compat/quirk/LowMemoryQuirk;

    invoke-static {v0}, Landroidx/camera/core/internal/compat/quirk/DeviceQuirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    invoke-static {p1}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->newSequentialExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/core/imagecapture/ProcessingNode;->mBlockingExecutor:Ljava/util/concurrent/Executor;

    goto :goto_0

    .line 7
    :cond_0
    iput-object p1, p0, Landroidx/camera/core/imagecapture/ProcessingNode;->mBlockingExecutor:Ljava/util/concurrent/Executor;

    .line 8
    :goto_0
    iput-object p2, p0, Landroidx/camera/core/imagecapture/ProcessingNode;->mImageProcessor:Landroidx/camera/core/processing/InternalImageProcessor;

    .line 9
    iput-object p3, p0, Landroidx/camera/core/imagecapture/ProcessingNode;->mQuirks:Landroidx/camera/core/impl/Quirks;

    .line 10
    const-class p1, Landroidx/camera/core/internal/compat/quirk/IncorrectJpegMetadataQuirk;

    invoke-virtual {p3, p1}, Landroidx/camera/core/impl/Quirks;->contains(Ljava/lang/Class;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/camera/core/imagecapture/ProcessingNode;->mHasIncorrectJpegMetadataQuirk:Z

    return-void
.end method

.method private cropAndMaybeApplyEffect(Landroidx/camera/core/processing/Packet;I)Landroidx/camera/core/processing/Packet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/processing/Packet<",
            "[B>;I)",
            "Landroidx/camera/core/processing/Packet<",
            "[B>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroidx/camera/core/processing/Packet;->getFormat()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Landroidx/camera/core/internal/utils/ImageUtil;->isJpegFormats(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkState(Z)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Landroidx/camera/core/imagecapture/ProcessingNode;->mJpegBytes2CroppedBitmap:Landroidx/camera/core/processing/Operation;

    .line 13
    .line 14
    invoke-interface {v0, p1}, Landroidx/camera/core/processing/Operation;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Landroidx/camera/core/processing/Packet;

    .line 19
    .line 20
    iget-object v0, p0, Landroidx/camera/core/imagecapture/ProcessingNode;->mBitmapEffect:Landroidx/camera/core/processing/Operation;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-interface {v0, p1}, Landroidx/camera/core/processing/Operation;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Landroidx/camera/core/processing/Packet;

    .line 29
    .line 30
    :cond_0
    iget-object v0, p0, Landroidx/camera/core/imagecapture/ProcessingNode;->mBitmap2JpegBytes:Landroidx/camera/core/processing/Operation;

    .line 31
    .line 32
    invoke-static {p1, p2}, Landroidx/camera/core/imagecapture/Bitmap2JpegBytes$In;->of(Landroidx/camera/core/processing/Packet;I)Landroidx/camera/core/imagecapture/Bitmap2JpegBytes$In;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-interface {v0, p1}, Landroidx/camera/core/processing/Operation;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Landroidx/camera/core/processing/Packet;

    .line 41
    .line 42
    return-object p1
.end method

.method private static synthetic lambda$processInputPacket$4(Landroidx/camera/core/imagecapture/ProcessingRequest;Landroidx/camera/core/ImageProxy;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/camera/core/imagecapture/ProcessingRequest;->onFinalResult(Landroidx/camera/core/ImageProxy;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic lambda$processInputPacket$5(Landroidx/camera/core/imagecapture/ProcessingRequest;Landroidx/camera/core/ImageCapture$OutputFileResults;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/camera/core/imagecapture/ProcessingRequest;->onFinalResult(Landroidx/camera/core/ImageCapture$OutputFileResults;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic lambda$processPostviewInputPacket$6(Landroidx/camera/core/imagecapture/ProcessingRequest;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/camera/core/imagecapture/ProcessingRequest;->onPostviewBitmapAvailable(Landroid/graphics/Bitmap;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic lambda$sendError$7(Landroidx/camera/core/imagecapture/ProcessingRequest;Landroidx/camera/core/ImageCaptureException;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/camera/core/imagecapture/ProcessingRequest;->onProcessFailure(Landroidx/camera/core/ImageCaptureException;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$transform$0(Landroidx/camera/core/imagecapture/ProcessingNode$InputPacket;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/camera/core/imagecapture/ProcessingNode;->processInputPacket(Landroidx/camera/core/imagecapture/ProcessingNode$InputPacket;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$transform$1(Landroidx/camera/core/imagecapture/ProcessingNode$InputPacket;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/ProcessingNode$InputPacket;->getProcessingRequest()Landroidx/camera/core/imagecapture/ProcessingRequest;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/camera/core/imagecapture/ProcessingRequest;->isAborted()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/ProcessingNode$InputPacket;->getImageProxy()Landroidx/camera/core/ImageProxy;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->close()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v0, p0, Landroidx/camera/core/imagecapture/ProcessingNode;->mBlockingExecutor:Ljava/util/concurrent/Executor;

    .line 20
    .line 21
    new-instance v1, Landroidx/camera/core/imagecapture/뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨;

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    invoke-direct {v1, p0, p1, v2}, Landroidx/camera/core/imagecapture/뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨;-><init>(Landroidx/camera/core/imagecapture/ProcessingNode;Landroidx/camera/core/imagecapture/ProcessingNode$InputPacket;I)V

    .line 25
    .line 26
    .line 27
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method private synthetic lambda$transform$2(Landroidx/camera/core/imagecapture/ProcessingNode$InputPacket;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/camera/core/imagecapture/ProcessingNode;->processPostviewInputPacket(Landroidx/camera/core/imagecapture/ProcessingNode$InputPacket;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$transform$3(Landroidx/camera/core/imagecapture/ProcessingNode$InputPacket;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/ProcessingNode$InputPacket;->getProcessingRequest()Landroidx/camera/core/imagecapture/ProcessingRequest;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/camera/core/imagecapture/ProcessingRequest;->isAborted()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string v0, "ProcessingNode"

    .line 12
    .line 13
    const-string v1, "The postview image is closed due to request aborted"

    .line 14
    .line 15
    invoke-static {v0, v1}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/ProcessingNode$InputPacket;->getImageProxy()Landroidx/camera/core/ImageProxy;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->close()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    iget-object v0, p0, Landroidx/camera/core/imagecapture/ProcessingNode;->mBlockingExecutor:Ljava/util/concurrent/Executor;

    .line 27
    .line 28
    new-instance v1, Landroidx/camera/core/imagecapture/뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨;

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-direct {v1, p0, p1, v2}, Landroidx/camera/core/imagecapture/뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨;-><init>(Landroidx/camera/core/imagecapture/ProcessingNode;Landroidx/camera/core/imagecapture/ProcessingNode$InputPacket;I)V

    .line 32
    .line 33
    .line 34
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method private static sendError(Landroidx/camera/core/imagecapture/ProcessingRequest;Landroidx/camera/core/ImageCaptureException;)V
    .locals 3
    .param p0    # Landroidx/camera/core/imagecapture/ProcessingRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/camera/core/ImageCaptureException;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroidx/camera/core/imagecapture/뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, p0, p1, v2}, Landroidx/camera/core/imagecapture/뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋;-><init>(Landroidx/camera/core/imagecapture/ProcessingRequest;Ljava/lang/Object;I)V

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroidx/camera/core/imagecapture/ProcessingRequest;Landroidx/camera/core/ImageCapture$OutputFileResults;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/camera/core/imagecapture/ProcessingNode;->lambda$processInputPacket$5(Landroidx/camera/core/imagecapture/ProcessingRequest;Landroidx/camera/core/ImageCapture$OutputFileResults;)V

    return-void
.end method

.method public static synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Landroidx/camera/core/imagecapture/ProcessingNode;Landroidx/camera/core/imagecapture/ProcessingNode$InputPacket;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/camera/core/imagecapture/ProcessingNode;->lambda$transform$1(Landroidx/camera/core/imagecapture/ProcessingNode$InputPacket;)V

    return-void
.end method

.method public static synthetic 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Landroidx/camera/core/imagecapture/ProcessingRequest;Landroidx/camera/core/ImageProxy;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/camera/core/imagecapture/ProcessingNode;->lambda$processInputPacket$4(Landroidx/camera/core/imagecapture/ProcessingRequest;Landroidx/camera/core/ImageProxy;)V

    return-void
.end method

.method public static synthetic 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(Landroidx/camera/core/imagecapture/ProcessingNode;Landroidx/camera/core/imagecapture/ProcessingNode$InputPacket;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/camera/core/imagecapture/ProcessingNode;->lambda$transform$3(Landroidx/camera/core/imagecapture/ProcessingNode$InputPacket;)V

    return-void
.end method

.method public static synthetic 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(Landroidx/camera/core/imagecapture/ProcessingNode;Landroidx/camera/core/imagecapture/ProcessingNode$InputPacket;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/camera/core/imagecapture/ProcessingNode;->lambda$transform$2(Landroidx/camera/core/imagecapture/ProcessingNode$InputPacket;)V

    return-void
.end method

.method public static synthetic 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤(Landroidx/camera/core/imagecapture/ProcessingRequest;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/camera/core/imagecapture/ProcessingNode;->lambda$processPostviewInputPacket$6(Landroidx/camera/core/imagecapture/ProcessingRequest;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic 뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋(Landroidx/camera/core/imagecapture/ProcessingRequest;Landroidx/camera/core/ImageCaptureException;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/camera/core/imagecapture/ProcessingNode;->lambda$sendError$7(Landroidx/camera/core/imagecapture/ProcessingRequest;Landroidx/camera/core/ImageCaptureException;)V

    return-void
.end method

.method public static synthetic 뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두(Landroidx/camera/core/imagecapture/ProcessingNode;Landroidx/camera/core/imagecapture/ProcessingNode$InputPacket;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/camera/core/imagecapture/ProcessingNode;->lambda$transform$0(Landroidx/camera/core/imagecapture/ProcessingNode$InputPacket;)V

    return-void
.end method


# virtual methods
.method public injectProcessingInput2Packet(Landroidx/camera/core/processing/Operation;)V
    .locals 0
    .param p1    # Landroidx/camera/core/processing/Operation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/processing/Operation<",
            "Landroidx/camera/core/imagecapture/ProcessingNode$InputPacket;",
            "Landroidx/camera/core/processing/Packet<",
            "Landroidx/camera/core/ImageProxy;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/camera/core/imagecapture/ProcessingNode;->mInput2Packet:Landroidx/camera/core/processing/Operation;

    .line 2
    .line 3
    return-void
.end method

.method public processInMemoryCapture(Landroidx/camera/core/imagecapture/ProcessingNode$InputPacket;)Landroidx/camera/core/ImageProxy;
    .locals 3
    .param p1    # Landroidx/camera/core/imagecapture/ProcessingNode$InputPacket;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/ProcessingNode$InputPacket;->getProcessingRequest()Landroidx/camera/core/imagecapture/ProcessingRequest;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroidx/camera/core/imagecapture/ProcessingNode;->mInput2Packet:Landroidx/camera/core/processing/Operation;

    .line 6
    .line 7
    invoke-interface {v1, p1}, Landroidx/camera/core/processing/Operation;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroidx/camera/core/processing/Packet;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/camera/core/processing/Packet;->getFormat()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/16 v2, 0x23

    .line 18
    .line 19
    if-eq v1, v2, :cond_0

    .line 20
    .line 21
    iget-object v1, p0, Landroidx/camera/core/imagecapture/ProcessingNode;->mBitmapEffect:Landroidx/camera/core/processing/Operation;

    .line 22
    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    iget-boolean v1, p0, Landroidx/camera/core/imagecapture/ProcessingNode;->mHasIncorrectJpegMetadataQuirk:Z

    .line 26
    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    :cond_0
    iget-object v1, p0, Landroidx/camera/core/imagecapture/ProcessingNode;->mInputEdge:Landroidx/camera/core/imagecapture/ProcessingNode$In;

    .line 30
    .line 31
    invoke-virtual {v1}, Landroidx/camera/core/imagecapture/ProcessingNode$In;->getOutputFormat()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    const/16 v2, 0x100

    .line 36
    .line 37
    if-ne v1, v2, :cond_2

    .line 38
    .line 39
    iget-object v1, p0, Landroidx/camera/core/imagecapture/ProcessingNode;->mImage2JpegBytes:Landroidx/camera/core/processing/Operation;

    .line 40
    .line 41
    invoke-virtual {v0}, Landroidx/camera/core/imagecapture/ProcessingRequest;->getJpegQuality()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    invoke-static {p1, v2}, Landroidx/camera/core/imagecapture/Image2JpegBytes$In;->of(Landroidx/camera/core/processing/Packet;I)Landroidx/camera/core/imagecapture/Image2JpegBytes$In;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-interface {v1, p1}, Landroidx/camera/core/processing/Operation;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Landroidx/camera/core/processing/Packet;

    .line 54
    .line 55
    iget-object v1, p0, Landroidx/camera/core/imagecapture/ProcessingNode;->mBitmapEffect:Landroidx/camera/core/processing/Operation;

    .line 56
    .line 57
    if-eqz v1, :cond_1

    .line 58
    .line 59
    invoke-virtual {v0}, Landroidx/camera/core/imagecapture/ProcessingRequest;->getJpegQuality()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    invoke-direct {p0, p1, v0}, Landroidx/camera/core/imagecapture/ProcessingNode;->cropAndMaybeApplyEffect(Landroidx/camera/core/processing/Packet;I)Landroidx/camera/core/processing/Packet;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    :cond_1
    iget-object v0, p0, Landroidx/camera/core/imagecapture/ProcessingNode;->mJpegBytes2Image:Landroidx/camera/core/processing/Operation;

    .line 68
    .line 69
    invoke-interface {v0, p1}, Landroidx/camera/core/processing/Operation;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    check-cast p1, Landroidx/camera/core/processing/Packet;

    .line 74
    .line 75
    :cond_2
    iget-object v0, p0, Landroidx/camera/core/imagecapture/ProcessingNode;->mJpegImage2Result:Landroidx/camera/core/processing/Operation;

    .line 76
    .line 77
    invoke-interface {v0, p1}, Landroidx/camera/core/processing/Operation;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    check-cast p1, Landroidx/camera/core/ImageProxy;

    .line 82
    .line 83
    return-object p1
.end method

.method public processInputPacket(Landroidx/camera/core/imagecapture/ProcessingNode$InputPacket;)V
    .locals 5
    .param p1    # Landroidx/camera/core/imagecapture/ProcessingNode$InputPacket;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/ProcessingNode$InputPacket;->getProcessingRequest()Landroidx/camera/core/imagecapture/ProcessingRequest;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/ProcessingNode$InputPacket;->getProcessingRequest()Landroidx/camera/core/imagecapture/ProcessingRequest;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-virtual {v2}, Landroidx/camera/core/imagecapture/ProcessingRequest;->isInMemoryCapture()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Landroidx/camera/core/imagecapture/ProcessingNode;->processInMemoryCapture(Landroidx/camera/core/imagecapture/ProcessingNode$InputPacket;)Landroidx/camera/core/ImageProxy;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    new-instance v3, Landroidx/camera/core/imagecapture/뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋;

    .line 25
    .line 26
    const/4 v4, 0x1

    .line 27
    invoke-direct {v3, v0, p1, v4}, Landroidx/camera/core/imagecapture/뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋;-><init>(Landroidx/camera/core/imagecapture/ProcessingRequest;Ljava/lang/Object;I)V

    .line 28
    .line 29
    .line 30
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 31
    .line 32
    .line 33
    goto :goto_3

    .line 34
    :catch_0
    move-exception p1

    .line 35
    goto :goto_0

    .line 36
    :catch_1
    move-exception p1

    .line 37
    goto :goto_1

    .line 38
    :catch_2
    move-exception p1

    .line 39
    goto :goto_2

    .line 40
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/camera/core/imagecapture/ProcessingNode;->processOnDiskCapture(Landroidx/camera/core/imagecapture/ProcessingNode$InputPacket;)Landroidx/camera/core/ImageCapture$OutputFileResults;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    new-instance v3, Landroidx/camera/core/imagecapture/뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋;

    .line 49
    .line 50
    const/4 v4, 0x2

    .line 51
    invoke-direct {v3, v0, p1, v4}, Landroidx/camera/core/imagecapture/뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋;-><init>(Landroidx/camera/core/imagecapture/ProcessingRequest;Ljava/lang/Object;I)V

    .line 52
    .line 53
    .line 54
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroidx/camera/core/ImageCaptureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    .line 57
    goto :goto_3

    .line 58
    :goto_0
    new-instance v2, Landroidx/camera/core/ImageCaptureException;

    .line 59
    .line 60
    const-string v3, "Processing failed."

    .line 61
    .line 62
    invoke-direct {v2, v1, v3, p1}, Landroidx/camera/core/ImageCaptureException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    .line 64
    .line 65
    invoke-static {v0, v2}, Landroidx/camera/core/imagecapture/ProcessingNode;->sendError(Landroidx/camera/core/imagecapture/ProcessingRequest;Landroidx/camera/core/ImageCaptureException;)V

    .line 66
    .line 67
    .line 68
    goto :goto_3

    .line 69
    :goto_1
    new-instance v2, Landroidx/camera/core/ImageCaptureException;

    .line 70
    .line 71
    const-string v3, "Processing failed due to low memory."

    .line 72
    .line 73
    invoke-direct {v2, v1, v3, p1}, Landroidx/camera/core/ImageCaptureException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    .line 75
    .line 76
    invoke-static {v0, v2}, Landroidx/camera/core/imagecapture/ProcessingNode;->sendError(Landroidx/camera/core/imagecapture/ProcessingRequest;Landroidx/camera/core/ImageCaptureException;)V

    .line 77
    .line 78
    .line 79
    goto :goto_3

    .line 80
    :goto_2
    invoke-static {v0, p1}, Landroidx/camera/core/imagecapture/ProcessingNode;->sendError(Landroidx/camera/core/imagecapture/ProcessingRequest;Landroidx/camera/core/ImageCaptureException;)V

    .line 81
    .line 82
    .line 83
    :goto_3
    return-void
.end method

.method public processOnDiskCapture(Landroidx/camera/core/imagecapture/ProcessingNode$InputPacket;)Landroidx/camera/core/ImageCapture$OutputFileResults;
    .locals 4
    .param p1    # Landroidx/camera/core/imagecapture/ProcessingNode$InputPacket;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/imagecapture/ProcessingNode;->mInputEdge:Landroidx/camera/core/imagecapture/ProcessingNode$In;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/camera/core/imagecapture/ProcessingNode$In;->getOutputFormat()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Landroidx/camera/core/internal/utils/ImageUtil;->isJpegFormats(I)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v3, "On-disk capture only support JPEG and JPEG/R output formats. Output format: "

    .line 14
    .line 15
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v1, v0}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/ProcessingNode$InputPacket;->getProcessingRequest()Landroidx/camera/core/imagecapture/ProcessingRequest;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v1, p0, Landroidx/camera/core/imagecapture/ProcessingNode;->mInput2Packet:Landroidx/camera/core/processing/Operation;

    .line 33
    .line 34
    invoke-interface {v1, p1}, Landroidx/camera/core/processing/Operation;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Landroidx/camera/core/processing/Packet;

    .line 39
    .line 40
    iget-object v1, p0, Landroidx/camera/core/imagecapture/ProcessingNode;->mImage2JpegBytes:Landroidx/camera/core/processing/Operation;

    .line 41
    .line 42
    invoke-virtual {v0}, Landroidx/camera/core/imagecapture/ProcessingRequest;->getJpegQuality()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    invoke-static {p1, v2}, Landroidx/camera/core/imagecapture/Image2JpegBytes$In;->of(Landroidx/camera/core/processing/Packet;I)Landroidx/camera/core/imagecapture/Image2JpegBytes$In;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-interface {v1, p1}, Landroidx/camera/core/processing/Operation;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Landroidx/camera/core/processing/Packet;

    .line 55
    .line 56
    invoke-virtual {p1}, Landroidx/camera/core/processing/Packet;->hasCropping()Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-nez v1, :cond_0

    .line 61
    .line 62
    iget-object v1, p0, Landroidx/camera/core/imagecapture/ProcessingNode;->mBitmapEffect:Landroidx/camera/core/processing/Operation;

    .line 63
    .line 64
    if-eqz v1, :cond_1

    .line 65
    .line 66
    :cond_0
    invoke-virtual {v0}, Landroidx/camera/core/imagecapture/ProcessingRequest;->getJpegQuality()I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    invoke-direct {p0, p1, v1}, Landroidx/camera/core/imagecapture/ProcessingNode;->cropAndMaybeApplyEffect(Landroidx/camera/core/processing/Packet;I)Landroidx/camera/core/processing/Packet;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    :cond_1
    iget-object v1, p0, Landroidx/camera/core/imagecapture/ProcessingNode;->mJpegBytes2Disk:Landroidx/camera/core/processing/Operation;

    .line 75
    .line 76
    invoke-virtual {v0}, Landroidx/camera/core/imagecapture/ProcessingRequest;->getOutputFileOptions()Landroidx/camera/core/ImageCapture$OutputFileOptions;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    invoke-static {p1, v0}, Landroidx/camera/core/imagecapture/JpegBytes2Disk$In;->of(Landroidx/camera/core/processing/Packet;Landroidx/camera/core/ImageCapture$OutputFileOptions;)Landroidx/camera/core/imagecapture/JpegBytes2Disk$In;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-interface {v1, p1}, Landroidx/camera/core/processing/Operation;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    check-cast p1, Landroidx/camera/core/ImageCapture$OutputFileResults;

    .line 92
    .line 93
    return-object p1
.end method

.method public processPostviewInputPacket(Landroidx/camera/core/imagecapture/ProcessingNode$InputPacket;)V
    .locals 5
    .param p1    # Landroidx/camera/core/imagecapture/ProcessingNode$InputPacket;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/imagecapture/ProcessingNode;->mInputEdge:Landroidx/camera/core/imagecapture/ProcessingNode$In;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/camera/core/imagecapture/ProcessingNode$In;->getOutputFormat()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x23

    .line 8
    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    .line 11
    const/16 v1, 0x100

    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v1, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 19
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v3, "Postview only support YUV and JPEG output formats. Output format: "

    .line 22
    .line 23
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v1, v0}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/ProcessingNode$InputPacket;->getProcessingRequest()Landroidx/camera/core/imagecapture/ProcessingRequest;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    :try_start_0
    iget-object v1, p0, Landroidx/camera/core/imagecapture/ProcessingNode;->mInput2Packet:Landroidx/camera/core/processing/Operation;

    .line 41
    .line 42
    invoke-interface {v1, p1}, Landroidx/camera/core/processing/Operation;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Landroidx/camera/core/processing/Packet;

    .line 47
    .line 48
    iget-object v2, p0, Landroidx/camera/core/imagecapture/ProcessingNode;->mImage2Bitmap:Landroidx/camera/core/processing/Operation;

    .line 49
    .line 50
    invoke-interface {v2, v1}, Landroidx/camera/core/processing/Operation;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Landroid/graphics/Bitmap;

    .line 55
    .line 56
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    new-instance v3, Landroidx/camera/core/imagecapture/뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋;

    .line 61
    .line 62
    const/4 v4, 0x3

    .line 63
    invoke-direct {v3, v0, v1, v4}, Landroidx/camera/core/imagecapture/뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋;-><init>(Landroidx/camera/core/imagecapture/ProcessingRequest;Ljava/lang/Object;I)V

    .line 64
    .line 65
    .line 66
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    .line 69
    goto :goto_2

    .line 70
    :catch_0
    move-exception v0

    .line 71
    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/ProcessingNode$InputPacket;->getImageProxy()Landroidx/camera/core/ImageProxy;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->close()V

    .line 76
    .line 77
    .line 78
    const-string p1, "ProcessingNode"

    .line 79
    .line 80
    const-string v1, "process postview input packet failed."

    .line 81
    .line 82
    invoke-static {p1, v1, v0}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    .line 84
    .line 85
    :goto_2
    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    check-cast p1, Landroidx/camera/core/imagecapture/ProcessingNode$In;

    invoke-virtual {p0, p1}, Landroidx/camera/core/imagecapture/ProcessingNode;->transform(Landroidx/camera/core/imagecapture/ProcessingNode$In;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public transform(Landroidx/camera/core/imagecapture/ProcessingNode$In;)Ljava/lang/Void;
    .locals 3
    .param p1    # Landroidx/camera/core/imagecapture/ProcessingNode$In;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iput-object p1, p0, Landroidx/camera/core/imagecapture/ProcessingNode;->mInputEdge:Landroidx/camera/core/imagecapture/ProcessingNode$In;

    .line 3
    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/ProcessingNode$In;->getEdge()Landroidx/camera/core/processing/Edge;

    move-result-object v0

    new-instance v1, Landroidx/camera/core/imagecapture/뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroidx/camera/core/imagecapture/뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤;-><init>(Landroidx/camera/core/imagecapture/ProcessingNode;I)V

    invoke-virtual {v0, v1}, Landroidx/camera/core/processing/Edge;->setListener(Landroidx/core/util/Consumer;)V

    .line 4
    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/ProcessingNode$In;->getPostviewEdge()Landroidx/camera/core/processing/Edge;

    move-result-object v0

    new-instance v1, Landroidx/camera/core/imagecapture/뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Landroidx/camera/core/imagecapture/뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤;-><init>(Landroidx/camera/core/imagecapture/ProcessingNode;I)V

    invoke-virtual {v0, v1}, Landroidx/camera/core/processing/Edge;->setListener(Landroidx/core/util/Consumer;)V

    .line 5
    new-instance v0, Landroidx/camera/core/imagecapture/ProcessingInput2Packet;

    invoke-direct {v0}, Landroidx/camera/core/imagecapture/ProcessingInput2Packet;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/imagecapture/ProcessingNode;->mInput2Packet:Landroidx/camera/core/processing/Operation;

    .line 6
    new-instance v0, Landroidx/camera/core/imagecapture/Image2JpegBytes;

    iget-object v1, p0, Landroidx/camera/core/imagecapture/ProcessingNode;->mQuirks:Landroidx/camera/core/impl/Quirks;

    invoke-direct {v0, v1}, Landroidx/camera/core/imagecapture/Image2JpegBytes;-><init>(Landroidx/camera/core/impl/Quirks;)V

    iput-object v0, p0, Landroidx/camera/core/imagecapture/ProcessingNode;->mImage2JpegBytes:Landroidx/camera/core/processing/Operation;

    .line 7
    new-instance v0, Landroidx/camera/core/imagecapture/JpegBytes2CroppedBitmap;

    invoke-direct {v0}, Landroidx/camera/core/imagecapture/JpegBytes2CroppedBitmap;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/imagecapture/ProcessingNode;->mJpegBytes2CroppedBitmap:Landroidx/camera/core/processing/Operation;

    .line 8
    new-instance v0, Landroidx/camera/core/imagecapture/Bitmap2JpegBytes;

    invoke-direct {v0}, Landroidx/camera/core/imagecapture/Bitmap2JpegBytes;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/imagecapture/ProcessingNode;->mBitmap2JpegBytes:Landroidx/camera/core/processing/Operation;

    .line 9
    new-instance v0, Landroidx/camera/core/imagecapture/JpegBytes2Disk;

    invoke-direct {v0}, Landroidx/camera/core/imagecapture/JpegBytes2Disk;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/imagecapture/ProcessingNode;->mJpegBytes2Disk:Landroidx/camera/core/processing/Operation;

    .line 10
    new-instance v0, Landroidx/camera/core/imagecapture/JpegImage2Result;

    invoke-direct {v0}, Landroidx/camera/core/imagecapture/JpegImage2Result;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/imagecapture/ProcessingNode;->mJpegImage2Result:Landroidx/camera/core/processing/Operation;

    .line 11
    new-instance v0, Landroidx/camera/core/imagecapture/Image2Bitmap;

    invoke-direct {v0}, Landroidx/camera/core/imagecapture/Image2Bitmap;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/imagecapture/ProcessingNode;->mImage2Bitmap:Landroidx/camera/core/processing/Operation;

    .line 12
    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/ProcessingNode$In;->getInputFormat()I

    move-result p1

    const/16 v0, 0x23

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Landroidx/camera/core/imagecapture/ProcessingNode;->mImageProcessor:Landroidx/camera/core/processing/InternalImageProcessor;

    if-nez p1, :cond_0

    iget-boolean p1, p0, Landroidx/camera/core/imagecapture/ProcessingNode;->mHasIncorrectJpegMetadataQuirk:Z

    if-eqz p1, :cond_1

    .line 13
    :cond_0
    new-instance p1, Landroidx/camera/core/imagecapture/JpegBytes2Image;

    invoke-direct {p1}, Landroidx/camera/core/imagecapture/JpegBytes2Image;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/imagecapture/ProcessingNode;->mJpegBytes2Image:Landroidx/camera/core/processing/Operation;

    .line 14
    :cond_1
    iget-object p1, p0, Landroidx/camera/core/imagecapture/ProcessingNode;->mImageProcessor:Landroidx/camera/core/processing/InternalImageProcessor;

    if-eqz p1, :cond_2

    .line 15
    new-instance v0, Landroidx/camera/core/imagecapture/BitmapEffect;

    invoke-direct {v0, p1}, Landroidx/camera/core/imagecapture/BitmapEffect;-><init>(Landroidx/camera/core/processing/InternalImageProcessor;)V

    iput-object v0, p0, Landroidx/camera/core/imagecapture/ProcessingNode;->mBitmapEffect:Landroidx/camera/core/processing/Operation;

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method
