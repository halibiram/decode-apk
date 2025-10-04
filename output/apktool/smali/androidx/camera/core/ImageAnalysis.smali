.class public final Landroidx/camera/core/ImageAnalysis;
.super Landroidx/camera/core/UseCase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/ImageAnalysis$Analyzer;,
        Landroidx/camera/core/ImageAnalysis$Defaults;,
        Landroidx/camera/core/ImageAnalysis$Builder;,
        Landroidx/camera/core/ImageAnalysis$OutputImageFormat;,
        Landroidx/camera/core/ImageAnalysis$BackpressureStrategy;
    }
.end annotation


# static fields
.field public static final COORDINATE_SYSTEM_ORIGINAL:I = 0x0

.field public static final COORDINATE_SYSTEM_SENSOR:I = 0x2

.field public static final COORDINATE_SYSTEM_VIEW_REFERENCED:I = 0x1

.field private static final DEFAULT_BACKPRESSURE_STRATEGY:I = 0x0

.field public static final DEFAULT_CONFIG:Landroidx/camera/core/ImageAnalysis$Defaults;
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field private static final DEFAULT_IMAGE_QUEUE_DEPTH:I = 0x6

.field private static final DEFAULT_ONE_PIXEL_SHIFT_ENABLED:Ljava/lang/Boolean;

.field private static final DEFAULT_OUTPUT_IMAGE_FORMAT:I = 0x1

.field private static final DEFAULT_OUTPUT_IMAGE_ROTATION_ENABLED:Z = false

.field private static final NON_BLOCKING_IMAGE_DEPTH:I = 0x4

.field public static final OUTPUT_IMAGE_FORMAT_RGBA_8888:I = 0x2

.field public static final OUTPUT_IMAGE_FORMAT_YUV_420_888:I = 0x1

.field public static final STRATEGY_BLOCK_PRODUCER:I = 0x1

.field public static final STRATEGY_KEEP_ONLY_LATEST:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ImageAnalysis"


# instance fields
.field private final mAnalysisLock:Ljava/lang/Object;

.field private mCloseableErrorListener:Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final mImageAnalysisAbstractAnalyzer:Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;

.field mSessionConfigBuilder:Landroidx/camera/core/impl/SessionConfig$Builder;

.field private mSubscribedAnalyzer:Landroidx/camera/core/ImageAnalysis$Analyzer;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mAnalysisLock"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/camera/core/ImageAnalysis$Defaults;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/camera/core/ImageAnalysis$Defaults;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/camera/core/ImageAnalysis;->DEFAULT_CONFIG:Landroidx/camera/core/ImageAnalysis$Defaults;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    sput-object v0, Landroidx/camera/core/ImageAnalysis;->DEFAULT_ONE_PIXEL_SHIFT_ENABLED:Ljava/lang/Boolean;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Landroidx/camera/core/impl/ImageAnalysisConfig;)V
    .locals 2
    .param p1    # Landroidx/camera/core/impl/ImageAnalysisConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroidx/camera/core/UseCase;-><init>(Landroidx/camera/core/impl/UseCaseConfig;)V

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
    iput-object v0, p0, Landroidx/camera/core/ImageAnalysis;->mAnalysisLock:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCurrentConfig()Landroidx/camera/core/impl/UseCaseConfig;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroidx/camera/core/impl/ImageAnalysisConfig;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/ImageAnalysisConfig;->getBackpressureStrategy(I)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x1

    .line 23
    if-ne v0, v1, :cond_0

    .line 24
    .line 25
    new-instance p1, Landroidx/camera/core/ImageAnalysisBlockingAnalyzer;

    .line 26
    .line 27
    invoke-direct {p1}, Landroidx/camera/core/ImageAnalysisBlockingAnalyzer;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Landroidx/camera/core/ImageAnalysis;->mImageAnalysisAbstractAnalyzer:Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    new-instance v0, Landroidx/camera/core/ImageAnalysisNonBlockingAnalyzer;

    .line 34
    .line 35
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->highPriorityExecutor()Ljava/util/concurrent/Executor;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    invoke-static {p1, v1}, L땪딎딀딽둥뒤땨둔땧땀뎬돠딠듐땠뎬둠땯된뒾따땅딁땨딃딅뒛뒀듽땋됐땋땁따뒉뒐뎰둑딀돛둣땰땯돶땭딐딜땹뎠듟땩듰도듟도땥둠딀뒤돵듐뒝돠딌돝드땮뎡땰돝땯땜딝뒵돸뎸뒷뎠둡딐득뒻된땹딎딀땍득뒤뎻듼땵듽딤땤딜딝뒻땐둣땃둣뒐땠땟됐뒼딎뎡뒘땳땋땵땥둑땝뎻듌듸듼땯뎽돴땋든두땧딄딄든;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Landroidx/camera/core/internal/ThreadConfig;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-direct {v0, p1}, Landroidx/camera/core/ImageAnalysisNonBlockingAnalyzer;-><init>(Ljava/util/concurrent/Executor;)V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Landroidx/camera/core/ImageAnalysis;->mImageAnalysisAbstractAnalyzer:Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;

    .line 50
    .line 51
    :goto_0
    iget-object p1, p0, Landroidx/camera/core/ImageAnalysis;->mImageAnalysisAbstractAnalyzer:Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;

    .line 52
    .line 53
    invoke-virtual {p0}, Landroidx/camera/core/ImageAnalysis;->getOutputImageFormat()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    invoke-virtual {p1, v0}, Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;->setOutputImageFormat(I)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Landroidx/camera/core/ImageAnalysis;->mImageAnalysisAbstractAnalyzer:Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;

    .line 61
    .line 62
    invoke-virtual {p0}, Landroidx/camera/core/ImageAnalysis;->isOutputImageRotationEnabled()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    invoke-virtual {p1, v0}, Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;->setOutputImageRotationEnabled(Z)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method private isFlipWH(Landroidx/camera/core/impl/CameraInternal;)Z
    .locals 2
    .param p1    # Landroidx/camera/core/impl/CameraInternal;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroidx/camera/core/ImageAnalysis;->isOutputImageRotationEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroidx/camera/core/UseCase;->getRelativeRotation(Landroidx/camera/core/impl/CameraInternal;)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    rem-int/lit16 p1, p1, 0xb4

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    :cond_0
    return v1
.end method

.method private static synthetic lambda$createPipeline$1(Landroidx/camera/core/SafeCloseImageReaderProxy;Landroidx/camera/core/SafeCloseImageReaderProxy;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/camera/core/SafeCloseImageReaderProxy;->safeClose()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/camera/core/SafeCloseImageReaderProxy;->safeClose()V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method private synthetic lambda$createPipeline$2(Landroidx/camera/core/impl/SessionConfig;Landroidx/camera/core/impl/SessionConfig$SessionError;)V
    .locals 3

    .line 1
    const/4 p1, 0x0

    .line 2
    const/4 p2, 0x1

    .line 3
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCamera()Landroidx/camera/core/impl/CameraInternal;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroidx/camera/core/ImageAnalysis;->clearPipeline()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Landroidx/camera/core/ImageAnalysis;->mImageAnalysisAbstractAnalyzer:Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;->clearCache()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCameraId()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCurrentConfig()Landroidx/camera/core/impl/UseCaseConfig;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Landroidx/camera/core/impl/ImageAnalysisConfig;

    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getAttachedStreamSpec()Landroidx/camera/core/impl/StreamSpec;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-static {v2}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Landroidx/camera/core/impl/StreamSpec;

    .line 37
    .line 38
    invoke-virtual {p0, v0, v1, v2}, Landroidx/camera/core/ImageAnalysis;->createPipeline(Ljava/lang/String;Landroidx/camera/core/impl/ImageAnalysisConfig;Landroidx/camera/core/impl/StreamSpec;)Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p0, Landroidx/camera/core/ImageAnalysis;->mSessionConfigBuilder:Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 43
    .line 44
    invoke-virtual {v0}, Landroidx/camera/core/impl/SessionConfig$Builder;->build()Landroidx/camera/core/impl/SessionConfig;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    new-array v1, p2, [Ljava/lang/Object;

    .line 49
    .line 50
    aput-object v0, v1, p1

    .line 51
    .line 52
    new-instance v0, Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 55
    .line 56
    .line 57
    aget-object p1, v1, p1

    .line 58
    .line 59
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p0, p1}, Landroidx/camera/core/UseCase;->updateSessionConfig(Ljava/util/List;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->notifyReset()V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method private static synthetic lambda$onMergeConfig$0(Landroid/util/Size;Ljava/util/List;I)Ljava/util/List;
    .locals 0

    .line 1
    new-instance p2, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    invoke-virtual {p2, p1, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-object p2
.end method

.method private static synthetic lambda$setAnalyzer$3(Landroidx/camera/core/ImageAnalysis$Analyzer;Landroidx/camera/core/ImageProxy;)V
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Landroidx/camera/core/ImageAnalysis$Analyzer;->analyze(Landroidx/camera/core/ImageProxy;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private tryUpdateRelativeRotation()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCamera()Landroidx/camera/core/impl/CameraInternal;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/camera/core/ImageAnalysis;->mImageAnalysisAbstractAnalyzer:Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroidx/camera/core/UseCase;->getRelativeRotation(Landroidx/camera/core/impl/CameraInternal;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {v1, v0}, Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;->setRelativeRotation(I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroidx/camera/core/ImageAnalysis;Landroidx/camera/core/impl/SessionConfig;Landroidx/camera/core/impl/SessionConfig$SessionError;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/camera/core/ImageAnalysis;->lambda$createPipeline$2(Landroidx/camera/core/impl/SessionConfig;Landroidx/camera/core/impl/SessionConfig$SessionError;)V

    return-void
.end method

.method public static synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Landroidx/camera/core/SafeCloseImageReaderProxy;Landroidx/camera/core/SafeCloseImageReaderProxy;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/camera/core/ImageAnalysis;->lambda$createPipeline$1(Landroidx/camera/core/SafeCloseImageReaderProxy;Landroidx/camera/core/SafeCloseImageReaderProxy;)V

    return-void
.end method

.method public static synthetic 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Landroidx/camera/core/ImageAnalysis$Analyzer;Landroidx/camera/core/ImageProxy;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/camera/core/ImageAnalysis;->lambda$setAnalyzer$3(Landroidx/camera/core/ImageAnalysis$Analyzer;Landroidx/camera/core/ImageProxy;)V

    return-void
.end method

.method public static synthetic 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(Landroid/util/Size;Ljava/util/List;I)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/camera/core/ImageAnalysis;->lambda$onMergeConfig$0(Landroid/util/Size;Ljava/util/List;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public clearAnalyzer()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/camera/core/ImageAnalysis;->mAnalysisLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/camera/core/ImageAnalysis;->mImageAnalysisAbstractAnalyzer:Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-virtual {v1, v2, v2}, Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;->setAnalyzer(Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageAnalysis$Analyzer;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Landroidx/camera/core/ImageAnalysis;->mSubscribedAnalyzer:Landroidx/camera/core/ImageAnalysis$Analyzer;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->notifyInactive()V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    iput-object v2, p0, Landroidx/camera/core/ImageAnalysis;->mSubscribedAnalyzer:Landroidx/camera/core/ImageAnalysis$Analyzer;

    .line 21
    .line 22
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v1
.end method

.method public clearPipeline()V
    .locals 2

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/core/ImageAnalysis;->mCloseableErrorListener:Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;->close()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Landroidx/camera/core/ImageAnalysis;->mCloseableErrorListener:Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Landroidx/camera/core/ImageAnalysis;->mDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/camera/core/impl/DeferrableSurface;->close()V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Landroidx/camera/core/ImageAnalysis;->mDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    .line 22
    .line 23
    :cond_1
    return-void
.end method

.method public createPipeline(Ljava/lang/String;Landroidx/camera/core/impl/ImageAnalysisConfig;Landroidx/camera/core/impl/StreamSpec;)Landroidx/camera/core/impl/SessionConfig$Builder;
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/impl/ImageAnalysisConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/camera/core/impl/StreamSpec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Landroidx/camera/core/impl/StreamSpec;->getResolution()Landroid/util/Size;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->highPriorityExecutor()Ljava/util/concurrent/Executor;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-static {p2, v0}, L땪딎딀딽둥뒤땨둔땧땀뎬돠딠듐땠뎬둠땯된뒾따땅딁땨딃딅뒛뒀듽땋됐땋땁따뒉뒐뎰둑딀돛둣땰땯돶땭딐딜땹뎠듟땩듰도듟도땥둠딀뒤돵듐뒝돠딌돝드땮뎡땰돝땯땜딝뒵돸뎸뒷뎠둡딐득뒻된땹딎딀땍득뒤뎻듼땵듽딤땤딜딝뒻땐둣땃둣뒐땠땟됐뒼딎뎡뒘땳땋땵땥둑땝뎻듌듸듼땯뎽돴땋든두땧딄딄든;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Landroidx/camera/core/internal/ThreadConfig;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/util/concurrent/Executor;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/camera/core/ImageAnalysis;->getBackpressureStrategy()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const/4 v2, 0x1

    .line 30
    if-ne v1, v2, :cond_0

    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/camera/core/ImageAnalysis;->getImageQueueDepth()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    move v7, v1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v1, 0x4

    .line 39
    const/4 v7, 0x4

    .line 40
    :goto_0
    invoke-virtual {p2}, Landroidx/camera/core/impl/ImageAnalysisConfig;->getImageReaderProxyProvider()Landroidx/camera/core/ImageReaderProxyProvider;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    new-instance v1, Landroidx/camera/core/SafeCloseImageReaderProxy;

    .line 47
    .line 48
    invoke-virtual {p2}, Landroidx/camera/core/impl/ImageAnalysisConfig;->getImageReaderProxyProvider()Landroidx/camera/core/ImageReaderProxyProvider;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getImageFormat()I

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    const-wide/16 v8, 0x0

    .line 65
    .line 66
    invoke-interface/range {v3 .. v9}, Landroidx/camera/core/ImageReaderProxyProvider;->newInstance(IIIIJ)Landroidx/camera/core/impl/ImageReaderProxy;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-direct {v1, v3}, Landroidx/camera/core/SafeCloseImageReaderProxy;-><init>(Landroidx/camera/core/impl/ImageReaderProxy;)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    new-instance v1, Landroidx/camera/core/SafeCloseImageReaderProxy;

    .line 75
    .line 76
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getImageFormat()I

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    invoke-static {v3, v4, v5, v7}, Landroidx/camera/core/ImageReaderProxys;->createIsolatedReader(IIII)Landroidx/camera/core/impl/ImageReaderProxy;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-direct {v1, v3}, Landroidx/camera/core/SafeCloseImageReaderProxy;-><init>(Landroidx/camera/core/impl/ImageReaderProxy;)V

    .line 93
    .line 94
    .line 95
    :goto_1
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCamera()Landroidx/camera/core/impl/CameraInternal;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    const/4 v4, 0x0

    .line 100
    if-eqz v3, :cond_2

    .line 101
    .line 102
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCamera()Landroidx/camera/core/impl/CameraInternal;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-direct {p0, v3}, Landroidx/camera/core/ImageAnalysis;->isFlipWH(Landroidx/camera/core/impl/CameraInternal;)Z

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    goto :goto_2

    .line 111
    :cond_2
    const/4 v3, 0x0

    .line 112
    :goto_2
    if-eqz v3, :cond_3

    .line 113
    .line 114
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    .line 115
    .line 116
    .line 117
    move-result v5

    .line 118
    goto :goto_3

    .line 119
    :cond_3
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    .line 120
    .line 121
    .line 122
    move-result v5

    .line 123
    :goto_3
    if-eqz v3, :cond_4

    .line 124
    .line 125
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    goto :goto_4

    .line 130
    :cond_4
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    :goto_4
    invoke-virtual {p0}, Landroidx/camera/core/ImageAnalysis;->getOutputImageFormat()I

    .line 135
    .line 136
    .line 137
    move-result v6

    .line 138
    const/4 v7, 0x2

    .line 139
    const/16 v8, 0x23

    .line 140
    .line 141
    if-ne v6, v7, :cond_5

    .line 142
    .line 143
    const/4 v6, 0x1

    .line 144
    goto :goto_5

    .line 145
    :cond_5
    const/16 v6, 0x23

    .line 146
    .line 147
    :goto_5
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getImageFormat()I

    .line 148
    .line 149
    .line 150
    move-result v9

    .line 151
    if-ne v9, v8, :cond_6

    .line 152
    .line 153
    invoke-virtual {p0}, Landroidx/camera/core/ImageAnalysis;->getOutputImageFormat()I

    .line 154
    .line 155
    .line 156
    move-result v9

    .line 157
    if-ne v9, v7, :cond_6

    .line 158
    .line 159
    const/4 v7, 0x1

    .line 160
    goto :goto_6

    .line 161
    :cond_6
    const/4 v7, 0x0

    .line 162
    :goto_6
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getImageFormat()I

    .line 163
    .line 164
    .line 165
    move-result v9

    .line 166
    if-ne v9, v8, :cond_8

    .line 167
    .line 168
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCamera()Landroidx/camera/core/impl/CameraInternal;

    .line 169
    .line 170
    .line 171
    move-result-object v8

    .line 172
    if-eqz v8, :cond_7

    .line 173
    .line 174
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCamera()Landroidx/camera/core/impl/CameraInternal;

    .line 175
    .line 176
    .line 177
    move-result-object v8

    .line 178
    invoke-virtual {p0, v8}, Landroidx/camera/core/UseCase;->getRelativeRotation(Landroidx/camera/core/impl/CameraInternal;)I

    .line 179
    .line 180
    .line 181
    move-result v8

    .line 182
    if-nez v8, :cond_9

    .line 183
    .line 184
    :cond_7
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 185
    .line 186
    invoke-virtual {p0}, Landroidx/camera/core/ImageAnalysis;->getOnePixelShiftEnabled()Ljava/lang/Boolean;

    .line 187
    .line 188
    .line 189
    move-result-object v9

    .line 190
    invoke-virtual {v8, v9}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result v8

    .line 194
    if-eqz v8, :cond_8

    .line 195
    .line 196
    goto :goto_7

    .line 197
    :cond_8
    const/4 v2, 0x0

    .line 198
    :cond_9
    :goto_7
    const/4 v4, 0x0

    .line 199
    if-nez v7, :cond_b

    .line 200
    .line 201
    if-eqz v2, :cond_a

    .line 202
    .line 203
    goto :goto_8

    .line 204
    :cond_a
    move-object v2, v4

    .line 205
    goto :goto_9

    .line 206
    :cond_b
    :goto_8
    new-instance v2, Landroidx/camera/core/SafeCloseImageReaderProxy;

    .line 207
    .line 208
    invoke-virtual {v1}, Landroidx/camera/core/SafeCloseImageReaderProxy;->getMaxImages()I

    .line 209
    .line 210
    .line 211
    move-result v7

    .line 212
    invoke-static {v5, v3, v6, v7}, Landroidx/camera/core/ImageReaderProxys;->createIsolatedReader(IIII)Landroidx/camera/core/impl/ImageReaderProxy;

    .line 213
    .line 214
    .line 215
    move-result-object v3

    .line 216
    invoke-direct {v2, v3}, Landroidx/camera/core/SafeCloseImageReaderProxy;-><init>(Landroidx/camera/core/impl/ImageReaderProxy;)V

    .line 217
    .line 218
    .line 219
    :goto_9
    if-eqz v2, :cond_c

    .line 220
    .line 221
    iget-object v3, p0, Landroidx/camera/core/ImageAnalysis;->mImageAnalysisAbstractAnalyzer:Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;

    .line 222
    .line 223
    invoke-virtual {v3, v2}, Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;->setProcessedImageReaderProxy(Landroidx/camera/core/SafeCloseImageReaderProxy;)V

    .line 224
    .line 225
    .line 226
    :cond_c
    invoke-direct {p0}, Landroidx/camera/core/ImageAnalysis;->tryUpdateRelativeRotation()V

    .line 227
    .line 228
    .line 229
    iget-object v3, p0, Landroidx/camera/core/ImageAnalysis;->mImageAnalysisAbstractAnalyzer:Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;

    .line 230
    .line 231
    invoke-virtual {v1, v3, v0}, Landroidx/camera/core/SafeCloseImageReaderProxy;->setOnImageAvailableListener(Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;Ljava/util/concurrent/Executor;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {p3}, Landroidx/camera/core/impl/StreamSpec;->getResolution()Landroid/util/Size;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    invoke-static {p2, v0}, Landroidx/camera/core/impl/SessionConfig$Builder;->createFrom(Landroidx/camera/core/impl/UseCaseConfig;Landroid/util/Size;)Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 239
    .line 240
    .line 241
    move-result-object p2

    .line 242
    invoke-virtual {p3}, Landroidx/camera/core/impl/StreamSpec;->getImplementationOptions()Landroidx/camera/core/impl/Config;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    if-eqz v0, :cond_d

    .line 247
    .line 248
    invoke-virtual {p3}, Landroidx/camera/core/impl/StreamSpec;->getImplementationOptions()Landroidx/camera/core/impl/Config;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    invoke-virtual {p2, v0}, Landroidx/camera/core/impl/SessionConfig$Builder;->addImplementationOptions(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 253
    .line 254
    .line 255
    :cond_d
    iget-object v0, p0, Landroidx/camera/core/ImageAnalysis;->mDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    .line 256
    .line 257
    if-eqz v0, :cond_e

    .line 258
    .line 259
    invoke-virtual {v0}, Landroidx/camera/core/impl/DeferrableSurface;->close()V

    .line 260
    .line 261
    .line 262
    :cond_e
    new-instance v0, Landroidx/camera/core/impl/ImmediateSurface;

    .line 263
    .line 264
    invoke-virtual {v1}, Landroidx/camera/core/SafeCloseImageReaderProxy;->getSurface()Landroid/view/Surface;

    .line 265
    .line 266
    .line 267
    move-result-object v3

    .line 268
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getImageFormat()I

    .line 269
    .line 270
    .line 271
    move-result v5

    .line 272
    invoke-direct {v0, v3, p1, v5}, Landroidx/camera/core/impl/ImmediateSurface;-><init>(Landroid/view/Surface;Landroid/util/Size;I)V

    .line 273
    .line 274
    .line 275
    iput-object v0, p0, Landroidx/camera/core/ImageAnalysis;->mDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    .line 276
    .line 277
    invoke-virtual {v0}, Landroidx/camera/core/impl/DeferrableSurface;->getTerminationFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    .line 278
    .line 279
    .line 280
    move-result-object p1

    .line 281
    new-instance v0, L뎰둣땀땀땪돶돛땥딀뎽돝뎡땔딤뒬돠딝땠뒀됨딅딻땜뒉딟딠든듌돤뒛뒨돼도딠뎽땭뒻딃땝딠뒾드땫땜땥됨땩둡딎돸딽듽땠땄뎻됴둔딄땤뒷돴딻둥뎨듼둥돴듰땮뎰땦듌땜뎡돸땅땫땣득뒵드둘딹땡딄듽땬땐뎹둘딹돼뒛땻둑따돤뎡딄듻뒷돨땐뎻두땲득듬뒬땩둘땮뒻도도땥뒬딻두땔따들딅둑땔뒈딤땮뎻뎬;

    .line 282
    .line 283
    const/16 v3, 0x1c

    .line 284
    .line 285
    invoke-direct {v0, v1, v2, v3}, L뎰둣땀땀땪돶돛땥딀뎽돝뎡땔딤뒬돠딝땠뒀됨딅딻땜뒉딟딠든듌돤뒛뒨돼도딠뎽땭뒻딃땝딠뒾드땫땜땥됨땩둡딎돸딽듽땠땄뎻됴둔딄땤뒷돴딻둥뎨듼둥돴듰땮뎰땦듌땜뎡돸땅땫땣득뒵드둘딹땡딄듽땬땐뎹둘딹돼뒛땻둑따돤뎡딄듻뒷돨땐뎻두땲득듬뒬땩둘땮뒻도도땥뒬딻두땔따들딅둑땔뒈딤땮뎻뎬;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 286
    .line 287
    .line 288
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    invoke-interface {p1, v0, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {p3}, Landroidx/camera/core/impl/StreamSpec;->getExpectedFrameRateRange()Landroid/util/Range;

    .line 296
    .line 297
    .line 298
    move-result-object p1

    .line 299
    invoke-virtual {p2, p1}, Landroidx/camera/core/impl/SessionConfig$Builder;->setExpectedFrameRateRange(Landroid/util/Range;)Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 300
    .line 301
    .line 302
    iget-object p1, p0, Landroidx/camera/core/ImageAnalysis;->mDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    .line 303
    .line 304
    invoke-virtual {p3}, Landroidx/camera/core/impl/StreamSpec;->getDynamicRange()Landroidx/camera/core/DynamicRange;

    .line 305
    .line 306
    .line 307
    move-result-object p3

    .line 308
    const/4 v0, -0x1

    .line 309
    invoke-virtual {p2, p1, p3, v4, v0}, Landroidx/camera/core/impl/SessionConfig$Builder;->addSurface(Landroidx/camera/core/impl/DeferrableSurface;Landroidx/camera/core/DynamicRange;Ljava/lang/String;I)Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 310
    .line 311
    .line 312
    iget-object p1, p0, Landroidx/camera/core/ImageAnalysis;->mCloseableErrorListener:Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;

    .line 313
    .line 314
    if-eqz p1, :cond_f

    .line 315
    .line 316
    invoke-virtual {p1}, Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;->close()V

    .line 317
    .line 318
    .line 319
    :cond_f
    new-instance p1, Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;

    .line 320
    .line 321
    new-instance p3, L듻딸뎰뒼됫땯뒘듔디딅땠뒙둑득뒛딜땡뒛딤뒵땰돠땦딜땩듐땰돝둡뒼딜뎬뎨뒤돨땣땪뒐땡딐둡뎡뒋땥돠듟됨뒹땳돼듻뒹뎽땝뒋듰뒨딁도둡둬딃둔땧됐딝딻딻뎻뒤뎹듰둑뎰땁듽땫듐뒤된득땥딞땟땔뎡뒨땳땅딃듌둡뒬듽될땨땲뎹둠뎽돝뒷듽뒼딝듸땣둑돤뎡둣된뒐두딃돼딄뎬듽뒐땋둑돰땃됩듸드둑땃땳;

    .line 322
    .line 323
    const/4 v0, 0x0

    .line 324
    invoke-direct {p3, p0, v0}, L듻딸뎰뒼됫땯뒘듔디딅땠뒙둑득뒛딜땡뒛딤뒵땰돠땦딜땩듐땰돝둡뒼딜뎬뎨뒤돨땣땪뒐땡딐둡뎡뒋땥돠듟됨뒹땳돼듻뒹뎽땝뒋듰뒨딁도둡둬딃둔땧됐딝딻딻뎻뒤뎹듰둑뎰땁듽땫듐뒤된득땥딞땟땔뎡뒨땳땅딃듌둡뒬듽될땨땲뎹둠뎽돝뒷듽뒼딝듸땣둑돤뎡둣된뒐두딃돼딄뎬듽뒐땋둑돰땃됩듸드둑땃땳;-><init>(Ljava/lang/Object;I)V

    .line 325
    .line 326
    .line 327
    invoke-direct {p1, p3}, Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;-><init>(Landroidx/camera/core/impl/SessionConfig$ErrorListener;)V

    .line 328
    .line 329
    .line 330
    iput-object p1, p0, Landroidx/camera/core/ImageAnalysis;->mCloseableErrorListener:Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;

    .line 331
    .line 332
    invoke-virtual {p2, p1}, Landroidx/camera/core/impl/SessionConfig$Builder;->setErrorListener(Landroidx/camera/core/impl/SessionConfig$ErrorListener;)Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 333
    .line 334
    .line 335
    return-object p2
.end method

.method public getBackgroundExecutor()Ljava/util/concurrent/Executor;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/camera/core/ExperimentalUseCaseApi;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCurrentConfig()Landroidx/camera/core/impl/UseCaseConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/camera/core/impl/ImageAnalysisConfig;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-static {v0, v1}, L땪딎딀딽둥뒤땨둔땧땀뎬돠딠듐땠뎬둠땯된뒾따땅딁땨딃딅뒛뒀듽땋됐땋땁따뒉뒐뎰둑딀돛둣땰땯돶땭딐딜땹뎠듟땩듰도듟도땥둠딀뒤돵듐뒝돠딌돝드땮뎡땰돝땯땜딝뒵돸뎸뒷뎠둡딐득뒻된땹딎딀땍득뒤뎻듼땵듽딤땤딜딝뒻땐둣땃둣뒐땠땟됐뒼딎뎡뒘땳땋땵땥둑땝뎻듌듸듼땯뎽돴땋든두땧딄딄든;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Landroidx/camera/core/internal/ThreadConfig;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public getBackpressureStrategy()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCurrentConfig()Landroidx/camera/core/impl/UseCaseConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/camera/core/impl/ImageAnalysisConfig;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/ImageAnalysisConfig;->getBackpressureStrategy(I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public getDefaultConfig(ZLandroidx/camera/core/impl/UseCaseConfigFactory;)Landroidx/camera/core/impl/UseCaseConfig;
    .locals 3
    .param p2    # Landroidx/camera/core/impl/UseCaseConfigFactory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroidx/camera/core/impl/UseCaseConfigFactory;",
            ")",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;"
        }
    .end annotation

    .line 1
    sget-object v0, Landroidx/camera/core/ImageAnalysis;->DEFAULT_CONFIG:Landroidx/camera/core/ImageAnalysis$Defaults;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/camera/core/ImageAnalysis$Defaults;->getConfig()Landroidx/camera/core/impl/ImageAnalysisConfig;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {v1}, L땰돨듽들땹땩됫돤땧돷딌뒵됫뎬듸뒈뒹돰딝따뎻뒾두돷돨든돴딅뒀땠땩둔땣땹뒼듽딝땻드드딠딹땧딻뒈딄듻딅딜뒾뎡땠땃듌듽뎹둘뒛딐돷됩땱딸돤뒹땝땄둣뒙둣뒤돰됫듌뎽땲뎻듔뎹된땡땳땸두딠땮뎸딀땭땵뎹땄듨돠뒵딁땹뎨땪땜뒉딎둬둬땟딃땰딁뒋듔됨됩뒀돝땁든뒼딅땁땄땬뎬듨둠뎹뒤돷뎽딞뒉;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Landroidx/camera/core/impl/UseCaseConfig;)Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-interface {p2, v1, v2}, Landroidx/camera/core/impl/UseCaseConfigFactory;->getConfig(Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;I)Landroidx/camera/core/impl/Config;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/camera/core/ImageAnalysis$Defaults;->getConfig()Landroidx/camera/core/impl/ImageAnalysisConfig;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {p2, p1}, L둣땜뒹땲딠뒉됐듨딻땩둔됐뎬땻든뎠따돵땔둠뒀따땩뒹딃땔뒬뒀둔땨뎰땠땨든디땅뒷딄뒤땰된딤땦디딨듬딸드딹돠뒤뒬딸땟딨땳뒘돳돴됴도뒈딝뒀됐둥뒷뎰딃돠돳됫딸돴돼땟뒵딄든돝뒘두된돠뒤딠돶두땟땟땱땀땡되땟따땨딠뎹딸뎰딠됩듽됨뒛딄땄딟땮딨뎽딻땀땍뒝딅뒀돠둬뎠땳듨뒉딐된듽됐듰돛;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Landroidx/camera/core/impl/Config;Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/Config;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    :cond_0
    if-nez p2, :cond_1

    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {p0, p2}, Landroidx/camera/core/ImageAnalysis;->getUseCaseConfigBuilder(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/UseCaseConfig$Builder;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-interface {p1}, Landroidx/camera/core/impl/UseCaseConfig$Builder;->getUseCaseConfig()Landroidx/camera/core/impl/UseCaseConfig;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    :goto_0
    return-object p1
.end method

.method public getImageQueueDepth()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCurrentConfig()Landroidx/camera/core/impl/UseCaseConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/camera/core/impl/ImageAnalysisConfig;

    .line 6
    .line 7
    const/4 v1, 0x6

    .line 8
    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/ImageAnalysisConfig;->getImageQueueDepth(I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public getOnePixelShiftEnabled()Ljava/lang/Boolean;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCurrentConfig()Landroidx/camera/core/impl/UseCaseConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/camera/core/impl/ImageAnalysisConfig;

    .line 6
    .line 7
    sget-object v1, Landroidx/camera/core/ImageAnalysis;->DEFAULT_ONE_PIXEL_SHIFT_ENABLED:Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/ImageAnalysisConfig;->getOnePixelShiftEnabled(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public getOutputImageFormat()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCurrentConfig()Landroidx/camera/core/impl/UseCaseConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/camera/core/impl/ImageAnalysisConfig;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/ImageAnalysisConfig;->getOutputImageFormat(I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public getResolutionInfo()Landroidx/camera/core/ResolutionInfo;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getResolutionInfoInternal()Landroidx/camera/core/ResolutionInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getResolutionSelector()Landroidx/camera/core/resolutionselector/ResolutionSelector;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCurrentConfig()Landroidx/camera/core/impl/UseCaseConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/camera/core/impl/ImageOutputConfig;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-interface {v0, v1}, Landroidx/camera/core/impl/ImageOutputConfig;->getResolutionSelector(Landroidx/camera/core/resolutionselector/ResolutionSelector;)Landroidx/camera/core/resolutionselector/ResolutionSelector;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public getTargetRotation()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getTargetRotationInternal()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public getUseCaseConfigBuilder(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/UseCaseConfig$Builder;
    .locals 0
    .param p1    # Landroidx/camera/core/impl/Config;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/impl/Config;",
            ")",
            "Landroidx/camera/core/impl/UseCaseConfig$Builder<",
            "***>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroidx/camera/core/ImageAnalysis$Builder;->fromConfig(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/ImageAnalysis$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public isOutputImageRotationEnabled()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCurrentConfig()Landroidx/camera/core/impl/UseCaseConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/camera/core/impl/ImageAnalysisConfig;

    .line 6
    .line 7
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/ImageAnalysisConfig;->isOutputImageRotationEnabled(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public onBind()V
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/ImageAnalysis;->mImageAnalysisAbstractAnalyzer:Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;->attach()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onMergeConfig(Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/camera/core/impl/UseCaseConfig$Builder;)Landroidx/camera/core/impl/UseCaseConfig;
    .locals 5
    .param p1    # Landroidx/camera/core/impl/CameraInfoInternal;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/impl/UseCaseConfig$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/impl/CameraInfoInternal;",
            "Landroidx/camera/core/impl/UseCaseConfig$Builder<",
            "***>;)",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/camera/core/ImageAnalysis;->getOnePixelShiftEnabled()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p1}, Landroidx/camera/core/impl/CameraInfoInternal;->getCameraQuirks()Landroidx/camera/core/impl/Quirks;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-class v2, Landroidx/camera/core/internal/compat/quirk/OnePixelShiftQuirk;

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Landroidx/camera/core/impl/Quirks;->contains(Ljava/lang/Class;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget-object v2, p0, Landroidx/camera/core/ImageAnalysis;->mImageAnalysisAbstractAnalyzer:Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    :goto_0
    invoke-virtual {v2, v1}, Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;->setOnePixelShiftEnabled(Z)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Landroidx/camera/core/ImageAnalysis;->mAnalysisLock:Ljava/lang/Object;

    .line 28
    .line 29
    monitor-enter v0

    .line 30
    :try_start_0
    iget-object v1, p0, Landroidx/camera/core/ImageAnalysis;->mSubscribedAnalyzer:Landroidx/camera/core/ImageAnalysis$Analyzer;

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    invoke-interface {v1}, Landroidx/camera/core/ImageAnalysis$Analyzer;->getDefaultTargetResolution()Landroid/util/Size;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    goto :goto_1

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    goto/16 :goto_3

    .line 42
    .line 43
    :cond_1
    move-object v1, v2

    .line 44
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    if-nez v1, :cond_2

    .line 46
    .line 47
    invoke-interface {p2}, Landroidx/camera/core/impl/UseCaseConfig$Builder;->getUseCaseConfig()Landroidx/camera/core/impl/UseCaseConfig;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    return-object p1

    .line 52
    :cond_2
    invoke-interface {p2}, Landroidx/camera/core/ExtendableBuilder;->getMutableConfig()Landroidx/camera/core/impl/MutableConfig;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    sget-object v3, Landroidx/camera/core/impl/ImageOutputConfig;->OPTION_TARGET_ROTATION:Landroidx/camera/core/impl/Config$Option;

    .line 57
    .line 58
    const/4 v4, 0x0

    .line 59
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-interface {v0, v3, v4}, Landroidx/camera/core/impl/Config;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Ljava/lang/Integer;

    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    invoke-interface {p1, v0}, Landroidx/camera/core/CameraInfo;->getSensorRotationDegrees(I)I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    rem-int/lit16 p1, p1, 0xb4

    .line 78
    .line 79
    const/16 v0, 0x5a

    .line 80
    .line 81
    if-ne p1, v0, :cond_3

    .line 82
    .line 83
    new-instance p1, Landroid/util/Size;

    .line 84
    .line 85
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    invoke-direct {p1, v0, v1}, Landroid/util/Size;-><init>(II)V

    .line 94
    .line 95
    .line 96
    move-object v1, p1

    .line 97
    :cond_3
    invoke-interface {p2}, Landroidx/camera/core/impl/UseCaseConfig$Builder;->getUseCaseConfig()Landroidx/camera/core/impl/UseCaseConfig;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    sget-object v0, Landroidx/camera/core/impl/ImageOutputConfig;->OPTION_TARGET_RESOLUTION:Landroidx/camera/core/impl/Config$Option;

    .line 102
    .line 103
    invoke-interface {p1, v0}, Landroidx/camera/core/impl/ReadableConfig;->containsOption(Landroidx/camera/core/impl/Config$Option;)Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-nez p1, :cond_4

    .line 108
    .line 109
    invoke-interface {p2}, Landroidx/camera/core/ExtendableBuilder;->getMutableConfig()Landroidx/camera/core/impl/MutableConfig;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-interface {p1, v0, v1}, Landroidx/camera/core/impl/MutableConfig;->insertOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    :cond_4
    invoke-interface {p2}, Landroidx/camera/core/impl/UseCaseConfig$Builder;->getUseCaseConfig()Landroidx/camera/core/impl/UseCaseConfig;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    sget-object v0, Landroidx/camera/core/impl/ImageOutputConfig;->OPTION_RESOLUTION_SELECTOR:Landroidx/camera/core/impl/Config$Option;

    .line 121
    .line 122
    invoke-interface {p1, v0}, Landroidx/camera/core/impl/ReadableConfig;->containsOption(Landroidx/camera/core/impl/Config$Option;)Z

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    if-eqz p1, :cond_9

    .line 127
    .line 128
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getAppConfig()Landroidx/camera/core/impl/UseCaseConfig;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-interface {p1, v0, v2}, Landroidx/camera/core/impl/ReadableConfig;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    check-cast p1, Landroidx/camera/core/resolutionselector/ResolutionSelector;

    .line 137
    .line 138
    if-nez p1, :cond_5

    .line 139
    .line 140
    new-instance v2, Landroidx/camera/core/resolutionselector/ResolutionSelector$Builder;

    .line 141
    .line 142
    invoke-direct {v2}, Landroidx/camera/core/resolutionselector/ResolutionSelector$Builder;-><init>()V

    .line 143
    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_5
    invoke-static {p1}, Landroidx/camera/core/resolutionselector/ResolutionSelector$Builder;->fromResolutionSelector(Landroidx/camera/core/resolutionselector/ResolutionSelector;)Landroidx/camera/core/resolutionselector/ResolutionSelector$Builder;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    :goto_2
    if-eqz p1, :cond_6

    .line 151
    .line 152
    invoke-virtual {p1}, Landroidx/camera/core/resolutionselector/ResolutionSelector;->getResolutionStrategy()Landroidx/camera/core/resolutionselector/ResolutionStrategy;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    if-nez v3, :cond_7

    .line 157
    .line 158
    :cond_6
    new-instance v3, Landroidx/camera/core/resolutionselector/ResolutionStrategy;

    .line 159
    .line 160
    const/4 v4, 0x1

    .line 161
    invoke-direct {v3, v1, v4}, Landroidx/camera/core/resolutionselector/ResolutionStrategy;-><init>(Landroid/util/Size;I)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v2, v3}, Landroidx/camera/core/resolutionselector/ResolutionSelector$Builder;->setResolutionStrategy(Landroidx/camera/core/resolutionselector/ResolutionStrategy;)Landroidx/camera/core/resolutionselector/ResolutionSelector$Builder;

    .line 165
    .line 166
    .line 167
    :cond_7
    if-nez p1, :cond_8

    .line 168
    .line 169
    new-instance p1, L돛돶땠땃뎹땤뒷뒐딃따됩땮듰뒛땲땮뒙딅돠땤뒻디땔듽딃땱둬땁뎨딞뎹둔뎠뒙돼딻뒘듨땅된뒼듸드듽된딽딃뎸땯뎨디땧땬땦딎땫뎠될돝돼듸돵딜땡듸됩돨뒀듨든듬딄딹듼땝뒛뒙땁돤뎽듔땬뒹땔돝돨땪뎨땤돶땦땯땬땱뎬딞딜듌두땔돷딄됫됐될돰돵뒻돸듐듟둠돛땃딁듨둥둣듌딽되듼땮뎠딀돵뒛땡될땯;

    .line 170
    .line 171
    const/16 v3, 0xd

    .line 172
    .line 173
    invoke-direct {p1, v1, v3}, L돛돶땠땃뎹땤뒷뒐딃따됩땮듰뒛땲땮뒙딅돠땤뒻디땔듽딃땱둬땁뎨딞뎹둔뎠뒙돼딻뒘듨땅된뒼듸드듽된딽딃뎸땯뎨디땧땬땦딎땫뎠될돝돼듸돵딜땡듸됩돨뒀듨든듬딄딹듼땝뒛뒙땁돤뎽듔땬뒹땔돝돨땪뎨땤돶땦땯땬땱뎬딞딜듌두땔돷딄됫됐될돰돵뒻돸듐듟둠돛땃딁듨둥둣듌딽되듼땮뎠딀돵뒛땡될땯;-><init>(Ljava/lang/Object;I)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v2, p1}, Landroidx/camera/core/resolutionselector/ResolutionSelector$Builder;->setResolutionFilter(Landroidx/camera/core/resolutionselector/ResolutionFilter;)Landroidx/camera/core/resolutionselector/ResolutionSelector$Builder;

    .line 177
    .line 178
    .line 179
    :cond_8
    invoke-interface {p2}, Landroidx/camera/core/ExtendableBuilder;->getMutableConfig()Landroidx/camera/core/impl/MutableConfig;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    invoke-virtual {v2}, Landroidx/camera/core/resolutionselector/ResolutionSelector$Builder;->build()Landroidx/camera/core/resolutionselector/ResolutionSelector;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    invoke-interface {p1, v0, v1}, Landroidx/camera/core/impl/MutableConfig;->insertOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    :cond_9
    invoke-interface {p2}, Landroidx/camera/core/impl/UseCaseConfig$Builder;->getUseCaseConfig()Landroidx/camera/core/impl/UseCaseConfig;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    return-object p1

    .line 195
    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    throw p1
.end method

.method public onSuggestedStreamSpecImplementationOptionsUpdated(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/StreamSpec;
    .locals 4
    .param p1    # Landroidx/camera/core/impl/Config;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
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
    iget-object v2, p0, Landroidx/camera/core/ImageAnalysis;->mSessionConfigBuilder:Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 4
    .line 5
    invoke-virtual {v2, p1}, Landroidx/camera/core/impl/SessionConfig$Builder;->addImplementationOptions(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Landroidx/camera/core/ImageAnalysis;->mSessionConfigBuilder:Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 9
    .line 10
    invoke-virtual {v2}, Landroidx/camera/core/impl/SessionConfig$Builder;->build()Landroidx/camera/core/impl/SessionConfig;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    new-array v3, v1, [Ljava/lang/Object;

    .line 15
    .line 16
    aput-object v2, v3, v0

    .line 17
    .line 18
    new-instance v2, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 21
    .line 22
    .line 23
    aget-object v0, v3, v0

    .line 24
    .line 25
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    invoke-static {v2}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p0, v0}, Landroidx/camera/core/UseCase;->updateSessionConfig(Ljava/util/List;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getAttachedStreamSpec()Landroidx/camera/core/impl/StreamSpec;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Landroidx/camera/core/impl/StreamSpec;->toBuilder()Landroidx/camera/core/impl/StreamSpec$Builder;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0, p1}, Landroidx/camera/core/impl/StreamSpec$Builder;->setImplementationOptions(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/StreamSpec$Builder;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1}, Landroidx/camera/core/impl/StreamSpec$Builder;->build()Landroidx/camera/core/impl/StreamSpec;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    return-object p1
.end method

.method public onSuggestedStreamSpecUpdated(Landroidx/camera/core/impl/StreamSpec;Landroidx/camera/core/impl/StreamSpec;)Landroidx/camera/core/impl/StreamSpec;
    .locals 3
    .param p1    # Landroidx/camera/core/impl/StreamSpec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/impl/StreamSpec;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    const/4 p2, 0x0

    .line 2
    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCurrentConfig()Landroidx/camera/core/impl/UseCaseConfig;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Landroidx/camera/core/impl/ImageAnalysisConfig;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCameraId()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {p0, v2, v1, p1}, Landroidx/camera/core/ImageAnalysis;->createPipeline(Ljava/lang/String;Landroidx/camera/core/impl/ImageAnalysisConfig;Landroidx/camera/core/impl/StreamSpec;)Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iput-object v1, p0, Landroidx/camera/core/ImageAnalysis;->mSessionConfigBuilder:Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroidx/camera/core/impl/SessionConfig$Builder;->build()Landroidx/camera/core/impl/SessionConfig;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    new-array v2, v0, [Ljava/lang/Object;

    .line 24
    .line 25
    aput-object v1, v2, p2

    .line 26
    .line 27
    new-instance v1, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 30
    .line 31
    .line 32
    aget-object p2, v2, p2

    .line 33
    .line 34
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    invoke-static {v1}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-virtual {p0, p2}, Landroidx/camera/core/UseCase;->updateSessionConfig(Ljava/util/List;)V

    .line 45
    .line 46
    .line 47
    return-object p1
.end method

.method public onUnbind()V
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/camera/core/ImageAnalysis;->clearPipeline()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/core/ImageAnalysis;->mImageAnalysisAbstractAnalyzer:Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;->detach()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setAnalyzer(Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageAnalysis$Analyzer;)V
    .locals 4
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/ImageAnalysis$Analyzer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/camera/core/ImageAnalysis;->mAnalysisLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/camera/core/ImageAnalysis;->mImageAnalysisAbstractAnalyzer:Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;

    .line 5
    .line 6
    new-instance v2, L돛돶땠땃뎹땤뒷뒐딃따됩땮듰뒛땲땮뒙딅돠땤뒻디땔듽딃땱둬땁뎨딞뎹둔뎠뒙돼딻뒘듨땅된뒼듸드듽된딽딃뎸땯뎨디땧땬땦딎땫뎠될돝돼듸돵딜땡듸됩돨뒀듨든듬딄딹듼땝뒛뒙땁돤뎽듔땬뒹땔돝돨땪뎨땤돶땦땯땬땱뎬딞딜듌두땔돷딄됫됐될돰돵뒻돸듐듟둠돛땃딁듨둥둣듌딽되듼땮뎠딀돵뒛땡될땯;

    .line 7
    .line 8
    const/16 v3, 0xc

    .line 9
    .line 10
    invoke-direct {v2, p2, v3}, L돛돶땠땃뎹땤뒷뒐딃따됩땮듰뒛땲땮뒙딅돠땤뒻디땔듽딃땱둬땁뎨딞뎹둔뎠뒙돼딻뒘듨땅된뒼듸드듽된딽딃뎸땯뎨디땧땬땦딎땫뎠될돝돼듸돵딜땡듸됩돨뒀듨든듬딄딹듼땝뒛뒙땁돤뎽듔땬뒹땔돝돨땪뎨땤돶땦땯땬땱뎬딞딜듌두땔돷딄됫됐될돰돵뒻돸듐듟둠돛땃딁듨둥둣듌딽되듼땮뎠딀돵뒛땡될땯;-><init>(Ljava/lang/Object;I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1, v2}, Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;->setAnalyzer(Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageAnalysis$Analyzer;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Landroidx/camera/core/ImageAnalysis;->mSubscribedAnalyzer:Landroidx/camera/core/ImageAnalysis$Analyzer;

    .line 17
    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->notifyActive()V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    iput-object p2, p0, Landroidx/camera/core/ImageAnalysis;->mSubscribedAnalyzer:Landroidx/camera/core/ImageAnalysis$Analyzer;

    .line 27
    .line 28
    monitor-exit v0

    .line 29
    return-void

    .line 30
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p1
.end method

.method public setSensorToBufferTransformMatrix(Landroid/graphics/Matrix;)V
    .locals 1
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/camera/core/UseCase;->setSensorToBufferTransformMatrix(Landroid/graphics/Matrix;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/core/ImageAnalysis;->mImageAnalysisAbstractAnalyzer:Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;->setSensorToBufferTransformMatrix(Landroid/graphics/Matrix;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setTargetRotation(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/camera/core/UseCase;->setTargetRotationInternal(I)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Landroidx/camera/core/ImageAnalysis;->tryUpdateRelativeRotation()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setViewPortCropRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/camera/core/UseCase;->setViewPortCropRect(Landroid/graphics/Rect;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/core/ImageAnalysis;->mImageAnalysisAbstractAnalyzer:Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;->setViewPortCropRect(Landroid/graphics/Rect;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ImageAnalysis:"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method
