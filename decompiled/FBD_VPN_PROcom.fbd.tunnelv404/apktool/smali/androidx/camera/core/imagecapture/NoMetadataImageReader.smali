.class public Landroidx/camera/core/imagecapture/NoMetadataImageReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/ImageReaderProxy;


# instance fields
.field private mPendingRequest:Landroidx/camera/core/imagecapture/ProcessingRequest;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mWrappedImageReader:Landroidx/camera/core/impl/ImageReaderProxy;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/camera/core/impl/ImageReaderProxy;)V
    .locals 0
    .param p1    # Landroidx/camera/core/impl/ImageReaderProxy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/camera/core/imagecapture/NoMetadataImageReader;->mWrappedImageReader:Landroidx/camera/core/impl/ImageReaderProxy;

    .line 5
    .line 6
    return-void
.end method

.method private createImageProxyWithEmptyMetadata(Landroidx/camera/core/ImageProxy;)Landroidx/camera/core/ImageProxy;
    .locals 7
    .param p1    # Landroidx/camera/core/ImageProxy;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    iget-object v1, p0, Landroidx/camera/core/imagecapture/NoMetadataImageReader;->mPendingRequest:Landroidx/camera/core/imagecapture/ProcessingRequest;

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    invoke-static {}, Landroidx/camera/core/impl/TagBundle;->emptyBundle()Landroidx/camera/core/impl/TagBundle;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    new-instance v1, Landroid/util/Pair;

    .line 15
    .line 16
    iget-object v2, p0, Landroidx/camera/core/imagecapture/NoMetadataImageReader;->mPendingRequest:Landroidx/camera/core/imagecapture/ProcessingRequest;

    .line 17
    .line 18
    invoke-virtual {v2}, Landroidx/camera/core/imagecapture/ProcessingRequest;->getTagBundleKey()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    iget-object v3, p0, Landroidx/camera/core/imagecapture/NoMetadataImageReader;->mPendingRequest:Landroidx/camera/core/imagecapture/ProcessingRequest;

    .line 23
    .line 24
    invoke-virtual {v3}, Landroidx/camera/core/imagecapture/ProcessingRequest;->getStageIds()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    const/4 v4, 0x0

    .line 29
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-static {v1}, Landroidx/camera/core/impl/TagBundle;->create(Landroid/util/Pair;)Landroidx/camera/core/impl/TagBundle;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    :goto_0
    iput-object v0, p0, Landroidx/camera/core/imagecapture/NoMetadataImageReader;->mPendingRequest:Landroidx/camera/core/imagecapture/ProcessingRequest;

    .line 41
    .line 42
    new-instance v0, Landroidx/camera/core/SettableImageProxy;

    .line 43
    .line 44
    new-instance v2, Landroid/util/Size;

    .line 45
    .line 46
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getWidth()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getHeight()I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    invoke-direct {v2, v3, v4}, Landroid/util/Size;-><init>(II)V

    .line 55
    .line 56
    .line 57
    new-instance v3, Landroidx/camera/core/internal/CameraCaptureResultImageInfo;

    .line 58
    .line 59
    new-instance v4, Landroidx/camera/core/streamsharing/VirtualCameraCaptureResult;

    .line 60
    .line 61
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getImageInfo()Landroidx/camera/core/ImageInfo;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    invoke-interface {v5}, Landroidx/camera/core/ImageInfo;->getTimestamp()J

    .line 66
    .line 67
    .line 68
    move-result-wide v5

    .line 69
    invoke-direct {v4, v1, v5, v6}, Landroidx/camera/core/streamsharing/VirtualCameraCaptureResult;-><init>(Landroidx/camera/core/impl/TagBundle;J)V

    .line 70
    .line 71
    .line 72
    invoke-direct {v3, v4}, Landroidx/camera/core/internal/CameraCaptureResultImageInfo;-><init>(Landroidx/camera/core/impl/CameraCaptureResult;)V

    .line 73
    .line 74
    .line 75
    invoke-direct {v0, p1, v2, v3}, Landroidx/camera/core/SettableImageProxy;-><init>(Landroidx/camera/core/ImageProxy;Landroid/util/Size;Landroidx/camera/core/ImageInfo;)V

    .line 76
    .line 77
    .line 78
    return-object v0
.end method

.method private synthetic lambda$setOnImageAvailableListener$0(Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;Landroidx/camera/core/impl/ImageReaderProxy;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;->onImageAvailable(Landroidx/camera/core/impl/ImageReaderProxy;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroidx/camera/core/imagecapture/NoMetadataImageReader;Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;Landroidx/camera/core/impl/ImageReaderProxy;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/camera/core/imagecapture/NoMetadataImageReader;->lambda$setOnImageAvailableListener$0(Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;Landroidx/camera/core/impl/ImageReaderProxy;)V

    return-void
.end method


# virtual methods
.method public acceptProcessingRequest(Landroidx/camera/core/imagecapture/ProcessingRequest;)V
    .locals 2
    .param p1    # Landroidx/camera/core/imagecapture/ProcessingRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/camera/core/imagecapture/NoMetadataImageReader;->mPendingRequest:Landroidx/camera/core/imagecapture/ProcessingRequest;

    .line 2
    .line 3
    if-nez v0, :cond_0

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
    const-string v1, "Pending request should be null"

    .line 9
    .line 10
    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Landroidx/camera/core/imagecapture/NoMetadataImageReader;->mPendingRequest:Landroidx/camera/core/imagecapture/ProcessingRequest;

    .line 14
    .line 15
    return-void
.end method

.method public acquireLatestImage()Landroidx/camera/core/ImageProxy;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/imagecapture/NoMetadataImageReader;->mWrappedImageReader:Landroidx/camera/core/impl/ImageReaderProxy;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/camera/core/impl/ImageReaderProxy;->acquireLatestImage()Landroidx/camera/core/ImageProxy;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Landroidx/camera/core/imagecapture/NoMetadataImageReader;->createImageProxyWithEmptyMetadata(Landroidx/camera/core/ImageProxy;)Landroidx/camera/core/ImageProxy;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public acquireNextImage()Landroidx/camera/core/ImageProxy;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/imagecapture/NoMetadataImageReader;->mWrappedImageReader:Landroidx/camera/core/impl/ImageReaderProxy;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/camera/core/impl/ImageReaderProxy;->acquireNextImage()Landroidx/camera/core/ImageProxy;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Landroidx/camera/core/imagecapture/NoMetadataImageReader;->createImageProxyWithEmptyMetadata(Landroidx/camera/core/ImageProxy;)Landroidx/camera/core/ImageProxy;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public clearOnImageAvailableListener()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/core/imagecapture/NoMetadataImageReader;->mWrappedImageReader:Landroidx/camera/core/impl/ImageReaderProxy;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/camera/core/impl/ImageReaderProxy;->clearOnImageAvailableListener()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public clearProcessingRequest()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/camera/core/imagecapture/NoMetadataImageReader;->mPendingRequest:Landroidx/camera/core/imagecapture/ProcessingRequest;

    .line 3
    .line 4
    return-void
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/core/imagecapture/NoMetadataImageReader;->mWrappedImageReader:Landroidx/camera/core/impl/ImageReaderProxy;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/camera/core/impl/ImageReaderProxy;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/core/imagecapture/NoMetadataImageReader;->mWrappedImageReader:Landroidx/camera/core/impl/ImageReaderProxy;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/camera/core/impl/ImageReaderProxy;->getHeight()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getImageFormat()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/core/imagecapture/NoMetadataImageReader;->mWrappedImageReader:Landroidx/camera/core/impl/ImageReaderProxy;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/camera/core/impl/ImageReaderProxy;->getImageFormat()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getMaxImages()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/core/imagecapture/NoMetadataImageReader;->mWrappedImageReader:Landroidx/camera/core/impl/ImageReaderProxy;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/camera/core/impl/ImageReaderProxy;->getMaxImages()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/imagecapture/NoMetadataImageReader;->mWrappedImageReader:Landroidx/camera/core/impl/ImageReaderProxy;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/camera/core/impl/ImageReaderProxy;->getSurface()Landroid/view/Surface;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/core/imagecapture/NoMetadataImageReader;->mWrappedImageReader:Landroidx/camera/core/impl/ImageReaderProxy;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/camera/core/impl/ImageReaderProxy;->getWidth()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public setOnImageAvailableListener(Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;Ljava/util/concurrent/Executor;)V
    .locals 3
    .param p1    # Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/camera/core/imagecapture/NoMetadataImageReader;->mWrappedImageReader:Landroidx/camera/core/impl/ImageReaderProxy;

    .line 2
    .line 3
    new-instance v1, L딠땤땵뒙되돛뒾뎰돤땹뒹득땫딄땱땍뒼땮둬득듸둔땳딠딃딠뎻듟딄뒙땁뒘땰땮땥뒉뎸되땠딅뎰돛듨땪둣드땪뒻땯땟딹딠뒛땡돴득되딤되딻딃듔뒘돴땣듟됐딽돨뎸땨땔득딅땱땤딹뎬딠딃듟뒼듌땪듼딁돨돝뒵뒈듐뎹뒷돨뒘될듬뒝딻땋든땅딀땟뒘딟땣딀땋뒘뒘디듼돠돸듔뎹땠뒋돸뒹됴딻땪도딄득뎨딹뒷;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p0, p1, v2}, L딠땤땵뒙되돛뒾뎰돤땹뒹득땫딄땱땍뒼땮둬득듸둔땳딠딃딠뎻듟딄뒙땁뒘땰땮땥뒉뎸되땠딅뎰돛듨땪둣드땪뒻땯땟딹딠뒛땡돴득되딤되딻딃듔뒘돴땣듟됐딽돨뎸땨땔득딅땱땤딹뎬딠딃듟뒼듌땪듼딁돨돝뒵뒈듐뎹뒷돨뒘될듬뒝딻땋든땅딀땟뒘딟땣딀땋뒘뒘디듼돠돸듔뎹땠뒋돸뒹됴딻땪도딄득뎨딹뒷;-><init>(Landroidx/camera/core/impl/ImageReaderProxy;Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;I)V

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1, p2}, Landroidx/camera/core/impl/ImageReaderProxy;->setOnImageAvailableListener(Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;Ljava/util/concurrent/Executor;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
