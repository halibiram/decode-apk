.class final Landroidx/camera/view/TextureViewImplementation;
.super Landroidx/camera/view/PreviewViewImplementation;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TextureViewImpl"


# instance fields
.field mDetachedSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field mFrameUpdateExecutor:Ljava/util/concurrent/Executor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field mIsSurfaceTextureDetachedFromView:Z

.field mNextFrameCompleter:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field mOnFrameUpdateListener:Landroidx/camera/view/PreviewView$OnFrameUpdateListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field mOnSurfaceNotInUseListener:Landroidx/camera/view/PreviewViewImplementation$OnSurfaceNotInUseListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field mSurfaceReleaseFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/camera/core/SurfaceRequest$Result;",
            ">;"
        }
    .end annotation
.end field

.field mSurfaceRequest:Landroidx/camera/core/SurfaceRequest;

.field mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field mTextureView:Landroid/view/TextureView;


# direct methods
.method public constructor <init>(Landroid/widget/FrameLayout;Landroidx/camera/view/PreviewTransformation;)V
    .locals 0
    .param p1    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/view/PreviewTransformation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/camera/view/PreviewViewImplementation;-><init>(Landroid/widget/FrameLayout;Landroidx/camera/view/PreviewTransformation;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Landroidx/camera/view/TextureViewImplementation;->mIsSurfaceTextureDetachedFromView:Z

    .line 6
    .line 7
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 8
    .line 9
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Landroidx/camera/view/TextureViewImplementation;->mNextFrameCompleter:Ljava/util/concurrent/atomic/AtomicReference;

    .line 13
    .line 14
    return-void
.end method

.method private synthetic lambda$onSurfaceRequested$0(Landroidx/camera/core/SurfaceRequest;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/view/TextureViewImplementation;->mSurfaceRequest:Landroidx/camera/core/SurfaceRequest;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-ne v0, p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Landroidx/camera/view/TextureViewImplementation;->mSurfaceRequest:Landroidx/camera/core/SurfaceRequest;

    .line 9
    .line 10
    iput-object p1, p0, Landroidx/camera/view/TextureViewImplementation;->mSurfaceReleaseFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 11
    .line 12
    :cond_0
    invoke-direct {p0}, Landroidx/camera/view/TextureViewImplementation;->notifySurfaceNotInUse()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private synthetic lambda$tryToProvidePreviewSurface$1(Landroid/view/Surface;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 4

    .line 1
    const-string v0, "TextureViewImpl"

    .line 2
    .line 3
    const-string v1, "Surface set on Preview."

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroidx/camera/view/TextureViewImplementation;->mSurfaceRequest:Landroidx/camera/core/SurfaceRequest;

    .line 9
    .line 10
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    new-instance v2, L땄뒋땃딌땝둡둡딸듽뒐디딅땯돶땬됐듸뒤땭딹됴드딝뒹뎽딞됨딸땻됴딝땸뒋뎽뒐뎠뎸뒐땫돨뎹딀뎽둘땻땀땜뒀땤됨둣돵듨둠땟땬땁듼됨땫땦둬땄땄됐디땰드뎸뎰딐땠두뒬뒷땐땥듸됩땧둡땬뎻땄딸뎡땪둔딹뒹뎻뎡둘돸뎨딌땲듌됐됴땀땸듻돰뒹듸뒝돶듨땱뎡뒙땸돴돰둔되땝드돠돝둬땯뒘뒛뎬땠뎰딁뒻;

    .line 18
    .line 19
    const/4 v3, 0x3

    .line 20
    invoke-direct {v2, p2, v3}, L땄뒋땃딌땝둡둡딸듽뒐디딅땯돶땬됐듸뒤땭딹됴드딝뒹뎽딞됨딸땻됴딝땸뒋뎽뒐뎠뎸뒐땫돨뎹딀뎽둘땻땀땜뒀땤됨둣돵듨둠땟땬땁듼됨땫땦둬땄땄됐디땰드뎸뎰딐땠두뒬뒷땐땥듸됩땧둡땬뎻땄딸뎡땪둔딹뒹뎻뎡둘돸뎨딌땲듌됐됴땀땸듻돰뒹듸뒝돶듨땱뎡뒙땸돴돰둔되땝드돠돝둬땯뒘뒛뎬땠뎰딁뒻;-><init>(Ljava/lang/Object;I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1, v1, v2}, Landroidx/camera/core/SurfaceRequest;->provideSurface(Landroid/view/Surface;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V

    .line 24
    .line 25
    .line 26
    new-instance p2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v0, "provideSurface[request="

    .line 29
    .line 30
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Landroidx/camera/view/TextureViewImplementation;->mSurfaceRequest:Landroidx/camera/core/SurfaceRequest;

    .line 34
    .line 35
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v0, " surface="

    .line 39
    .line 40
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string p1, "]"

    .line 47
    .line 48
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    return-object p1
.end method

.method private synthetic lambda$tryToProvidePreviewSurface$2(Landroid/view/Surface;Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/camera/core/SurfaceRequest;)V
    .locals 2

    .line 1
    const-string v0, "TextureViewImpl"

    .line 2
    .line 3
    const-string v1, "Safe to release surface."

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Landroidx/camera/view/TextureViewImplementation;->notifySurfaceNotInUse()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Landroidx/camera/view/TextureViewImplementation;->mSurfaceReleaseFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    if-ne p1, p2, :cond_0

    .line 18
    .line 19
    iput-object v0, p0, Landroidx/camera/view/TextureViewImplementation;->mSurfaceReleaseFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 20
    .line 21
    :cond_0
    iget-object p1, p0, Landroidx/camera/view/TextureViewImplementation;->mSurfaceRequest:Landroidx/camera/core/SurfaceRequest;

    .line 22
    .line 23
    if-ne p1, p3, :cond_1

    .line 24
    .line 25
    iput-object v0, p0, Landroidx/camera/view/TextureViewImplementation;->mSurfaceRequest:Landroidx/camera/core/SurfaceRequest;

    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method private synthetic lambda$waitForNextFrame$3(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/view/TextureViewImplementation;->mNextFrameCompleter:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "textureViewImpl_waitForNextFrame"

    .line 7
    .line 8
    return-object p1
.end method

.method private notifySurfaceNotInUse()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/view/TextureViewImplementation;->mOnSurfaceNotInUseListener:Landroidx/camera/view/PreviewViewImplementation$OnSurfaceNotInUseListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/camera/view/PreviewViewImplementation$OnSurfaceNotInUseListener;->onSurfaceNotInUse()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Landroidx/camera/view/TextureViewImplementation;->mOnSurfaceNotInUseListener:Landroidx/camera/view/PreviewViewImplementation$OnSurfaceNotInUseListener;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private reattachSurfaceTexture()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/camera/view/TextureViewImplementation;->mIsSurfaceTextureDetachedFromView:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/camera/view/TextureViewImplementation;->mDetachedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/camera/view/TextureViewImplementation;->mTextureView:Landroid/view/TextureView;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Landroidx/camera/view/TextureViewImplementation;->mDetachedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 16
    .line 17
    if-eq v0, v1, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Landroidx/camera/view/TextureViewImplementation;->mTextureView:Landroid/view/TextureView;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Landroidx/camera/view/TextureViewImplementation;->mDetachedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Landroidx/camera/view/TextureViewImplementation;->mIsSurfaceTextureDetachedFromView:Z

    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroidx/camera/view/TextureViewImplementation;Landroid/view/Surface;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/camera/view/TextureViewImplementation;->lambda$tryToProvidePreviewSurface$1(Landroid/view/Surface;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Landroidx/camera/view/TextureViewImplementation;Landroid/view/Surface;Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/camera/core/SurfaceRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/view/TextureViewImplementation;->lambda$tryToProvidePreviewSurface$2(Landroid/view/Surface;Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/camera/core/SurfaceRequest;)V

    return-void
.end method

.method public static synthetic 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Landroidx/camera/view/TextureViewImplementation;Landroidx/camera/core/SurfaceRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/camera/view/TextureViewImplementation;->lambda$onSurfaceRequested$0(Landroidx/camera/core/SurfaceRequest;)V

    return-void
.end method

.method public static synthetic 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(Landroidx/camera/view/TextureViewImplementation;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/camera/view/TextureViewImplementation;->lambda$waitForNextFrame$3(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getPreview()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/view/TextureViewImplementation;->mTextureView:Landroid/view/TextureView;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPreviewBitmap()Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/view/TextureViewImplementation;->mTextureView:Landroid/view/TextureView;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/camera/view/TextureViewImplementation;->mTextureView:Landroid/view/TextureView;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0

    .line 19
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 20
    return-object v0
.end method

.method public initializePreview()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/camera/view/PreviewViewImplementation;->mParent:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/camera/view/PreviewViewImplementation;->mResolution:Landroid/util/Size;

    .line 7
    .line 8
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    new-instance v0, Landroid/view/TextureView;

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/camera/view/PreviewViewImplementation;->mParent:Landroid/widget/FrameLayout;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-direct {v0, v1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Landroidx/camera/view/TextureViewImplementation;->mTextureView:Landroid/view/TextureView;

    .line 23
    .line 24
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 25
    .line 26
    iget-object v2, p0, Landroidx/camera/view/PreviewViewImplementation;->mResolution:Landroid/util/Size;

    .line 27
    .line 28
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    iget-object v3, p0, Landroidx/camera/view/PreviewViewImplementation;->mResolution:Landroid/util/Size;

    .line 33
    .line 34
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Landroidx/camera/view/TextureViewImplementation;->mTextureView:Landroid/view/TextureView;

    .line 45
    .line 46
    new-instance v1, Landroidx/camera/view/TextureViewImplementation$1;

    .line 47
    .line 48
    invoke-direct {v1, p0}, Landroidx/camera/view/TextureViewImplementation$1;-><init>(Landroidx/camera/view/TextureViewImplementation;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Landroidx/camera/view/PreviewViewImplementation;->mParent:Landroid/widget/FrameLayout;

    .line 55
    .line 56
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Landroidx/camera/view/PreviewViewImplementation;->mParent:Landroid/widget/FrameLayout;

    .line 60
    .line 61
    iget-object v1, p0, Landroidx/camera/view/TextureViewImplementation;->mTextureView:Landroid/view/TextureView;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/camera/view/TextureViewImplementation;->reattachSurfaceTexture()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/camera/view/TextureViewImplementation;->mIsSurfaceTextureDetachedFromView:Z

    .line 3
    .line 4
    return-void
.end method

.method public onSurfaceRequested(Landroidx/camera/core/SurfaceRequest;Landroidx/camera/view/PreviewViewImplementation$OnSurfaceNotInUseListener;)V
    .locals 2
    .param p1    # Landroidx/camera/core/SurfaceRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/view/PreviewViewImplementation$OnSurfaceNotInUseListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Landroidx/camera/core/SurfaceRequest;->getResolution()Landroid/util/Size;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Landroidx/camera/view/PreviewViewImplementation;->mResolution:Landroid/util/Size;

    .line 6
    .line 7
    iput-object p2, p0, Landroidx/camera/view/TextureViewImplementation;->mOnSurfaceNotInUseListener:Landroidx/camera/view/PreviewViewImplementation$OnSurfaceNotInUseListener;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/camera/view/TextureViewImplementation;->initializePreview()V

    .line 10
    .line 11
    .line 12
    iget-object p2, p0, Landroidx/camera/view/TextureViewImplementation;->mSurfaceRequest:Landroidx/camera/core/SurfaceRequest;

    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    invoke-virtual {p2}, Landroidx/camera/core/SurfaceRequest;->willNotProvideSurface()Z

    .line 17
    .line 18
    .line 19
    :cond_0
    iput-object p1, p0, Landroidx/camera/view/TextureViewImplementation;->mSurfaceRequest:Landroidx/camera/core/SurfaceRequest;

    .line 20
    .line 21
    iget-object p2, p0, Landroidx/camera/view/TextureViewImplementation;->mTextureView:Landroid/view/TextureView;

    .line 22
    .line 23
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-static {p2}, Landroidx/core/content/ContextCompat;->getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    new-instance v0, Landroidx/camera/view/뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두;

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    invoke-direct {v0, p0, p1, v1}, Landroidx/camera/view/뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2, v0}, Landroidx/camera/core/SurfaceRequest;->addRequestCancellationListener(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Landroidx/camera/view/TextureViewImplementation;->tryToProvidePreviewSurface()V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public setFrameUpdateListener(Ljava/util/concurrent/Executor;Landroidx/camera/view/PreviewView$OnFrameUpdateListener;)V
    .locals 0
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/view/PreviewView$OnFrameUpdateListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p2, p0, Landroidx/camera/view/TextureViewImplementation;->mOnFrameUpdateListener:Landroidx/camera/view/PreviewView$OnFrameUpdateListener;

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/camera/view/TextureViewImplementation;->mFrameUpdateExecutor:Ljava/util/concurrent/Executor;

    .line 4
    .line 5
    return-void
.end method

.method public tryToProvidePreviewSurface()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/camera/view/PreviewViewImplementation;->mResolution:Landroid/util/Size;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/camera/view/TextureViewImplementation;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    iget-object v2, p0, Landroidx/camera/view/TextureViewImplementation;->mSurfaceRequest:Landroidx/camera/core/SurfaceRequest;

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget-object v2, p0, Landroidx/camera/view/PreviewViewImplementation;->mResolution:Landroid/util/Size;

    .line 19
    .line 20
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-virtual {v1, v0, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 25
    .line 26
    .line 27
    new-instance v0, Landroid/view/Surface;

    .line 28
    .line 29
    iget-object v1, p0, Landroidx/camera/view/TextureViewImplementation;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 30
    .line 31
    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Landroidx/camera/view/TextureViewImplementation;->mSurfaceRequest:Landroidx/camera/core/SurfaceRequest;

    .line 35
    .line 36
    new-instance v2, Landroidx/camera/view/뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨;

    .line 37
    .line 38
    const/4 v3, 0x1

    .line 39
    invoke-direct {v2, p0, v0, v3}, Landroidx/camera/view/뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 40
    .line 41
    .line 42
    invoke-static {v2}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    iput-object v2, p0, Landroidx/camera/view/TextureViewImplementation;->mSurfaceReleaseFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 47
    .line 48
    new-instance v3, Landroidx/camera/view/뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀;

    .line 49
    .line 50
    invoke-direct {v3, p0, v0, v2, v1}, Landroidx/camera/view/뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀;-><init>(Landroidx/camera/view/TextureViewImplementation;Landroid/view/Surface;Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/camera/core/SurfaceRequest;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Landroidx/camera/view/TextureViewImplementation;->mTextureView:Landroid/view/TextureView;

    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {v0}, Landroidx/core/content/ContextCompat;->getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-interface {v2, v3, v0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Landroidx/camera/view/PreviewViewImplementation;->onSurfaceProvided()V

    .line 67
    .line 68
    .line 69
    :cond_1
    :goto_0
    return-void
.end method

.method public waitForNextFrame()Lcom/google/common/util/concurrent/ListenableFuture;
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
    new-instance v0, Landroidx/camera/view/뎨뒋딝뒘땻땭땳뒨돵뒋땡돛딟따뒷땮돴딤딃들땡돸땀뒘돳뎹됩둑딠뒬딤뎸땁뒙뒾딽딄뒷뒘땯도두뎠돸돤뒝돼뒵땳땰딅든뒻뒘땰땯땅뒼돤딃두딁땔듌뒵뎸돷뒘됴딻듔땬돵돼둔땸돨땧돝땲땧땥돛뒼뒋땨돶땮도땁돳듔돳뒈돨딟땨뎹딽둡뒤땐뒘뎡땃땯딐딄뒐땧뒤딹뒬딃땋뎽땮딅뎽뎻딞땡땮뎽뒙듟뎡뎹뒐딁;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/camera/view/뎨뒋딝뒘땻땭땳뒨돵뒋땡돛딟따뒷땮돴딤딃들땡돸땀뒘돳뎹됩둑딠뒬딤뎸땁뒙뒾딽딄뒷뒘땯도두뎠돸돤뒝돼뒵땳땰딅든뒻뒘땰땯땅뒼돤딃두딁땔듌뒵뎸돷뒘됴딻듔땬돵돼둔땸돨땧돝땲땧땥돛뒼뒋땨돶땮도땁돳듔돳뒈돨딟땨뎹딽둡뒤땐뒘뎡땃땯딐딄뒐땧뒤딹뒬딃땋뎽땮딅뎽뎻딞땡땮뎽뒙듟뎡뎹뒐딁;-><init>(Landroidx/camera/view/TextureViewImplementation;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method
