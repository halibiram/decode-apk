.class public Lcom/airbnb/lottie/LottieDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;,
        Lcom/airbnb/lottie/LottieDrawable$LazyCompositionTask;,
        Lcom/airbnb/lottie/LottieDrawable$RepeatMode;
    }
.end annotation


# static fields
.field private static final ALLOWED_REDUCED_MOTION_MARKERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final INFINITE:I = -0x1

.field private static final MAX_DELTA_MS_ASYNC_SET_PROGRESS:F = 50.0f

.field public static final RESTART:I = 0x1

.field public static final REVERSE:I = 0x2

.field private static final invalidateSelfOnMainThread:Z

.field private static final setProgressExecutor:Ljava/util/concurrent/Executor;


# instance fields
.field private alpha:I

.field private final animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

.field private asyncUpdates:Lcom/airbnb/lottie/AsyncUpdates;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private canvasClipBounds:Landroid/graphics/Rect;

.field private canvasClipBoundsRectF:Landroid/graphics/RectF;

.field private clipTextToBoundingBox:Z

.field private clipToCompositionBounds:Z

.field private composition:Lcom/airbnb/lottie/LottieComposition;

.field private compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field defaultFontFileExtension:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field fontAssetDelegate:Lcom/airbnb/lottie/FontAssetDelegate;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private fontAssetManager:Lcom/airbnb/lottie/manager/FontAssetManager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private fontMap:Ljava/util/Map;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private ignoreSystemAnimationsDisabled:Z

.field private imageAssetDelegate:Lcom/airbnb/lottie/ImageAssetDelegate;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private imageAssetManager:Lcom/airbnb/lottie/manager/ImageAssetManager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private imageAssetsFolder:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private invalidateSelfRunnable:Ljava/lang/Runnable;

.field private isApplyingOpacityToLayersEnabled:Z

.field private isApplyingShadowToLayersEnabled:Z

.field private isDirty:Z

.field private lastDrawnProgress:F

.field private final lazyCompositionTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/airbnb/lottie/LottieDrawable$LazyCompositionTask;",
            ">;"
        }
    .end annotation
.end field

.field private final lottieFeatureFlags:Lcom/airbnb/lottie/LottieFeatureFlags;

.field private mainThreadHandler:Landroid/os/Handler;

.field private maintainOriginalImageBounds:Z

.field private onVisibleAction:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

.field private outlineMasksAndMattes:Z

.field private performanceTrackingEnabled:Z

.field private final progressUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private renderMode:Lcom/airbnb/lottie/RenderMode;

.field private final renderingMatrix:Landroid/graphics/Matrix;

.field private safeMode:Z

.field private final setProgressDrawLock:Ljava/util/concurrent/Semaphore;

.field private softwareRenderingBitmap:Landroid/graphics/Bitmap;

.field private softwareRenderingCanvas:Landroid/graphics/Canvas;

.field private softwareRenderingDstBoundsRect:Landroid/graphics/Rect;

.field private softwareRenderingDstBoundsRectF:Landroid/graphics/RectF;

.field private softwareRenderingOriginalCanvasMatrix:Landroid/graphics/Matrix;

.field private softwareRenderingOriginalCanvasMatrixElements:[F

.field private softwareRenderingOriginalCanvasMatrixInverse:Landroid/graphics/Matrix;

.field private softwareRenderingPaint:Landroid/graphics/Paint;

.field private softwareRenderingSrcBoundsRect:Landroid/graphics/Rect;

.field private softwareRenderingTransformedBounds:Landroid/graphics/RectF;

.field private systemAnimationsEnabled:Z

.field textDelegate:Lcom/airbnb/lottie/TextDelegate;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final updateProgressRunnable:Ljava/lang/Runnable;

.field private useSoftwareRendering:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    const/4 v0, 0x3

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    .line 4
    const/16 v2, 0x19

    .line 5
    .line 6
    if-gt v1, v2, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    :goto_0
    sput-boolean v1, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelfOnMainThread:Z

    .line 12
    .line 13
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 14
    .line 15
    new-array v2, v0, [J

    .line 16
    .line 17
    fill-array-data v2, :array_0

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 28
    .line 29
    new-array v3, v0, [J

    .line 30
    .line 31
    fill-array-data v3, :array_1

    .line 32
    .line 33
    .line 34
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 42
    .line 43
    new-array v4, v0, [J

    .line 44
    .line 45
    fill-array-data v4, :array_2

    .line 46
    .line 47
    .line 48
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 56
    .line 57
    new-array v0, v0, [J

    .line 58
    .line 59
    fill-array-data v0, :array_3

    .line 60
    .line 61
    .line 62
    invoke-direct {v4, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    filled-new-array {v1, v2, v3, v0}, [Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    sput-object v0, Lcom/airbnb/lottie/LottieDrawable;->ALLOWED_REDUCED_MOTION_MARKERS:Ljava/util/List;

    .line 78
    .line 79
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 80
    .line 81
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 82
    .line 83
    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 84
    .line 85
    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 86
    .line 87
    .line 88
    new-instance v8, Lcom/airbnb/lottie/utils/LottieThreadFactory;

    .line 89
    .line 90
    invoke-direct {v8}, Lcom/airbnb/lottie/utils/LottieThreadFactory;-><init>()V

    .line 91
    .line 92
    .line 93
    const/4 v2, 0x0

    .line 94
    const/4 v3, 0x2

    .line 95
    const-wide/16 v4, 0x23

    .line 96
    .line 97
    move-object v1, v0

    .line 98
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 99
    .line 100
    .line 101
    sput-object v0, Lcom/airbnb/lottie/LottieDrawable;->setProgressExecutor:Ljava/util/concurrent/Executor;

    .line 102
    .line 103
    return-void

    .line 104
    nop

    .line 105
    :array_0
    .array-data 8
        0x6f2b6e7102d6b796L    # 3.249188483528254E227
        0x180402837bc80c1fL    # 5.482213484058493E-193
        -0x3245a28c88b4eca7L    # -2.776563111031249E66
    .end array-data

    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    :array_1
    .array-data 8
        -0xd5ac6a20f7ba902L    # -1.811488462502518E244
        -0x8248827e49eddaaL    # -2.267385752950919E269
        -0x38bb29d1b0db8012L    # -2.163800836295898E35
    .end array-data

    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    :array_2
    .array-data 8
        -0x7258e579e7347aefL    # -6.767267244207436E-243
        0x594065157f2687caL    # 8.467124666797836E121
        0x41266b46d62c98f0L    # 734627.4183090013
    .end array-data

    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    :array_3
    .array-data 8
        -0x3cad57079b8c8309L    # -2.100933748575126E16
        0xc8d89b04a0ef81cL
        0x3bbf35e9be944f5aL    # 6.60910118273993E-21
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    iput-boolean v1, p0, Lcom/airbnb/lottie/LottieDrawable;->systemAnimationsEnabled:Z

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    iput-boolean v2, p0, Lcom/airbnb/lottie/LottieDrawable;->ignoreSystemAnimationsDisabled:Z

    .line 16
    .line 17
    iput-boolean v2, p0, Lcom/airbnb/lottie/LottieDrawable;->safeMode:Z

    .line 18
    .line 19
    sget-object v3, Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;->NONE:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    .line 20
    .line 21
    iput-object v3, p0, Lcom/airbnb/lottie/LottieDrawable;->onVisibleAction:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    .line 22
    .line 23
    new-instance v3, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v3, p0, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    .line 29
    .line 30
    new-instance v3, Lcom/airbnb/lottie/LottieFeatureFlags;

    .line 31
    .line 32
    invoke-direct {v3}, Lcom/airbnb/lottie/LottieFeatureFlags;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v3, p0, Lcom/airbnb/lottie/LottieDrawable;->lottieFeatureFlags:Lcom/airbnb/lottie/LottieFeatureFlags;

    .line 36
    .line 37
    iput-boolean v2, p0, Lcom/airbnb/lottie/LottieDrawable;->maintainOriginalImageBounds:Z

    .line 38
    .line 39
    iput-boolean v1, p0, Lcom/airbnb/lottie/LottieDrawable;->clipToCompositionBounds:Z

    .line 40
    .line 41
    const/16 v3, 0xff

    .line 42
    .line 43
    iput v3, p0, Lcom/airbnb/lottie/LottieDrawable;->alpha:I

    .line 44
    .line 45
    iput-boolean v2, p0, Lcom/airbnb/lottie/LottieDrawable;->clipTextToBoundingBox:Z

    .line 46
    .line 47
    sget-object v3, Lcom/airbnb/lottie/RenderMode;->AUTOMATIC:Lcom/airbnb/lottie/RenderMode;

    .line 48
    .line 49
    iput-object v3, p0, Lcom/airbnb/lottie/LottieDrawable;->renderMode:Lcom/airbnb/lottie/RenderMode;

    .line 50
    .line 51
    iput-boolean v2, p0, Lcom/airbnb/lottie/LottieDrawable;->useSoftwareRendering:Z

    .line 52
    .line 53
    new-instance v3, Landroid/graphics/Matrix;

    .line 54
    .line 55
    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v3, p0, Lcom/airbnb/lottie/LottieDrawable;->renderingMatrix:Landroid/graphics/Matrix;

    .line 59
    .line 60
    const/16 v3, 0x9

    .line 61
    .line 62
    new-array v3, v3, [F

    .line 63
    .line 64
    iput-object v3, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingOriginalCanvasMatrixElements:[F

    .line 65
    .line 66
    iput-boolean v2, p0, Lcom/airbnb/lottie/LottieDrawable;->isDirty:Z

    .line 67
    .line 68
    new-instance v2, L뒐딅땍땔딀땤땳뒙뒋디뒹땝땵뎽듌땅뒉들뒘딞딻드둬뒛딅돛둡듌됴돳땸둬됐딠땭땝뒘딃땫땲땀땀듨돠듬드땱딜땧딞듬들돝땨디됐딨땬땟들뒝된돰땪돛뒬돸도뎨땋될딟뎨뎡땭땍둣딸딎듽듐둑땔듐뎸돶딁듼땣될땵땱된딞땠땫될땣뒋땲딜땲땅듸땠돠딅듸뒹딽둘뒾뒀뎹돶뒹뎽듸땨됩돰돳둥딝뒬돛뒛됫딌땤;

    .line 69
    .line 70
    const/4 v3, 0x1

    .line 71
    invoke-direct {v2, p0, v3}, L뒐딅땍땔딀땤땳뒙뒋디뒹땝땵뎽듌땅뒉들뒘딞딻드둬뒛딅돛둡듌됴돳땸둬됐딠땭땝뒘딃땫땲땀땀듨돠듬드땱딜땧딞듬들돝땨디됐딨땬땟들뒝된돰땪돛뒬돸도뎨땋될딟뎨뎡땭땍둣딸딎듽듐둑땔듐뎸돶딁듼땣될땵땱된딞땠땫될땣뒋땲딜땲땅듸땠돠딅듸뒹딽둘뒾뒀뎹돶뒹뎽듸땨됩돰돳둥딝뒬돛뒛됫딌땤;-><init>(Ljava/lang/Object;I)V

    .line 72
    .line 73
    .line 74
    iput-object v2, p0, Lcom/airbnb/lottie/LottieDrawable;->progressUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 75
    .line 76
    new-instance v3, Ljava/util/concurrent/Semaphore;

    .line 77
    .line 78
    invoke-direct {v3, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 79
    .line 80
    .line 81
    iput-object v3, p0, Lcom/airbnb/lottie/LottieDrawable;->setProgressDrawLock:Ljava/util/concurrent/Semaphore;

    .line 82
    .line 83
    new-instance v1, L딎땫땪딐땵될뒷둠돠됫돴뒘땱땨땦됫둡둡딽딅되듐딞둬뒨뒷뎡땔뎰뒼딎돠뒾뒙뒋땻뒷딞돴됫뎬땨됩땠듸듰뒘땵돤되디뒼땝뒉뒹딹뒛뎬뎬듌딹땳뒹땄돛땤돴듼땝뒵둑돰둘돤땯땸돷뎠땹됫땤둡땝땍땹딟땝땦디둬뒉딎딜두뒙땜뒾도땡땯듸딅땲두듨땅뎻뒉딄득따땵땱딜땋땦딨땲땝듐둬땧도둔둘될땩디땟땹;

    .line 84
    .line 85
    const/4 v3, 0x1

    .line 86
    invoke-direct {v1, p0, v3}, L딎땫땪딐땵될뒷둠돠됫돴뒘땱땨땦됫둡둡딽딅되듐딞둬뒨뒷뎡땔뎰뒼딎돠뒾뒙뒋땻뒷딞돴됫뎬땨됩땠듸듰뒘땵돤되디뒼땝뒉뒹딹뒛뎬뎬듌딹땳뒹땄돛땤돴듼땝뒵둑돰둘돤땯땸돷뎠땹됫땤둡땝땍땹딟땝땦디둬뒉딎딜두뒙땜뒾도땡땯듸딅땲두듨땅뎻뒉딄득따땵땱딜땋땦딨땲땝듐둬땧도둔둘될땩디땟땹;-><init>(Lcom/airbnb/lottie/LottieDrawable;I)V

    .line 87
    .line 88
    .line 89
    iput-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->updateProgressRunnable:Ljava/lang/Runnable;

    .line 90
    .line 91
    const v1, -0x800001

    .line 92
    .line 93
    .line 94
    iput v1, p0, Lcom/airbnb/lottie/LottieDrawable;->lastDrawnProgress:F

    .line 95
    .line 96
    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/utils/BaseLottieAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 97
    .line 98
    .line 99
    return-void
.end method

.method private buildCompositionLayer()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v1, Lcom/airbnb/lottie/model/layer/CompositionLayer;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/airbnb/lottie/parser/LayerParser;->parse(Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/layer/Layer;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getLayers()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-direct {v1, p0, v2, v3, v0}, Lcom/airbnb/lottie/model/layer/CompositionLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;Ljava/util/List;Lcom/airbnb/lottie/LottieComposition;)V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    .line 20
    .line 21
    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieDrawable;->outlineMasksAndMattes:Z

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/model/layer/CompositionLayer;->setOutlineMasksAndMattes(Z)V

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    .line 30
    .line 31
    iget-boolean v1, p0, Lcom/airbnb/lottie/LottieDrawable;->clipToCompositionBounds:Z

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/model/layer/CompositionLayer;->setClipToCompositionBounds(Z)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method private computeRenderMode()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->renderMode:Lcom/airbnb/lottie/RenderMode;

    .line 7
    .line 8
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->hasDashPattern()Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getMaskAndMatteCount()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-virtual {v1, v2, v3, v0}, Lcom/airbnb/lottie/RenderMode;->useSoftwareRendering(IZI)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieDrawable;->useSoftwareRendering:Z

    .line 23
    .line 24
    return-void
.end method

.method private convertRect(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 3

    .line 7
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    invoke-virtual {p2, v0, v1, v2, p1}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private convertRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V
    .locals 5

    .line 1
    iget v0, p1, Landroid/graphics/RectF;->left:F

    float-to-double v0, v0

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p1, Landroid/graphics/RectF;->top:F

    float-to-double v1, v1

    .line 3
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget v2, p1, Landroid/graphics/RectF;->right:F

    float-to-double v2, v2

    .line 4
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    float-to-double v3, p1

    .line 5
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int p1, v3

    .line 6
    invoke-virtual {p2, v0, v1, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/layer/CompositionLayer;I)V
    .locals 1

    .line 52
    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieDrawable;->useSoftwareRendering:Z

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 54
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 55
    invoke-direct {p0, p1, p3}, Lcom/airbnb/lottie/LottieDrawable;->renderAndDrawAsBitmap(Landroid/graphics/Canvas;Lcom/airbnb/lottie/model/layer/CompositionLayer;)V

    .line 56
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 57
    invoke-virtual {p3, p1, p2, p4, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;ILcom/airbnb/lottie/utils/DropShadow;)V

    :goto_0
    return-void
.end method

.method private drawDirectlyToCanvas(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 4
    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v2, p0, Lcom/airbnb/lottie/LottieDrawable;->renderingMatrix:Landroid/graphics/Matrix;

    .line 11
    .line 12
    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-nez v3, :cond_1

    .line 24
    .line 25
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    int-to-float v3, v3

    .line 30
    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieComposition;->getBounds()Landroid/graphics/Rect;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    int-to-float v4, v4

    .line 39
    div-float/2addr v3, v4

    .line 40
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    int-to-float v4, v4

    .line 45
    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieComposition;->getBounds()Landroid/graphics/Rect;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    int-to-float v1, v1

    .line 54
    div-float/2addr v4, v1

    .line 55
    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->renderingMatrix:Landroid/graphics/Matrix;

    .line 56
    .line 57
    iget v5, v2, Landroid/graphics/Rect;->left:I

    .line 58
    .line 59
    int-to-float v5, v5

    .line 60
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 61
    .line 62
    int-to-float v2, v2

    .line 63
    invoke-virtual {v1, v5, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->renderingMatrix:Landroid/graphics/Matrix;

    .line 67
    .line 68
    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 69
    .line 70
    .line 71
    :cond_1
    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->renderingMatrix:Landroid/graphics/Matrix;

    .line 72
    .line 73
    iget v2, p0, Lcom/airbnb/lottie/LottieDrawable;->alpha:I

    .line 74
    .line 75
    const/4 v3, 0x0

    .line 76
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;ILcom/airbnb/lottie/utils/DropShadow;)V

    .line 77
    .line 78
    .line 79
    :cond_2
    :goto_0
    return-void
.end method

.method private ensureSoftwareRenderingBitmap(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingBitmap:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-lt v0, p1, :cond_2

    .line 11
    .line 12
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingBitmap:Landroid/graphics/Bitmap;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-ge v0, p2, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingBitmap:Landroid/graphics/Bitmap;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-gt v0, p1, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingBitmap:Landroid/graphics/Bitmap;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-le v0, p2, :cond_3

    .line 36
    .line 37
    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingBitmap:Landroid/graphics/Bitmap;

    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    invoke-static {v0, v2, v2, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingBitmap:Landroid/graphics/Bitmap;

    .line 45
    .line 46
    iget-object p2, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingCanvas:Landroid/graphics/Canvas;

    .line 47
    .line 48
    invoke-virtual {p2, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 49
    .line 50
    .line 51
    iput-boolean v1, p0, Lcom/airbnb/lottie/LottieDrawable;->isDirty:Z

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    :goto_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 55
    .line 56
    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingBitmap:Landroid/graphics/Bitmap;

    .line 61
    .line 62
    iget-object p2, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingCanvas:Landroid/graphics/Canvas;

    .line 63
    .line 64
    invoke-virtual {p2, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 65
    .line 66
    .line 67
    iput-boolean v1, p0, Lcom/airbnb/lottie/LottieDrawable;->isDirty:Z

    .line 68
    .line 69
    :cond_3
    :goto_1
    return-void
.end method

.method private ensureSoftwareRenderingObjectsInitialized()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingCanvas:Landroid/graphics/Canvas;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Landroid/graphics/Canvas;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingCanvas:Landroid/graphics/Canvas;

    .line 12
    .line 13
    new-instance v0, Landroid/graphics/RectF;

    .line 14
    .line 15
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingTransformedBounds:Landroid/graphics/RectF;

    .line 19
    .line 20
    new-instance v0, Landroid/graphics/Matrix;

    .line 21
    .line 22
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingOriginalCanvasMatrix:Landroid/graphics/Matrix;

    .line 26
    .line 27
    new-instance v0, Landroid/graphics/Matrix;

    .line 28
    .line 29
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingOriginalCanvasMatrixInverse:Landroid/graphics/Matrix;

    .line 33
    .line 34
    new-instance v0, Landroid/graphics/Rect;

    .line 35
    .line 36
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->canvasClipBounds:Landroid/graphics/Rect;

    .line 40
    .line 41
    new-instance v0, Landroid/graphics/RectF;

    .line 42
    .line 43
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->canvasClipBoundsRectF:Landroid/graphics/RectF;

    .line 47
    .line 48
    new-instance v0, Lcom/airbnb/lottie/animation/LPaint;

    .line 49
    .line 50
    invoke-direct {v0}, Lcom/airbnb/lottie/animation/LPaint;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingPaint:Landroid/graphics/Paint;

    .line 54
    .line 55
    new-instance v0, Landroid/graphics/Rect;

    .line 56
    .line 57
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingSrcBoundsRect:Landroid/graphics/Rect;

    .line 61
    .line 62
    new-instance v0, Landroid/graphics/Rect;

    .line 63
    .line 64
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingDstBoundsRect:Landroid/graphics/Rect;

    .line 68
    .line 69
    new-instance v0, Landroid/graphics/RectF;

    .line 70
    .line 71
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 72
    .line 73
    .line 74
    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingDstBoundsRectF:Landroid/graphics/RectF;

    .line 75
    .line 76
    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    instance-of v2, v0, Landroid/view/View;

    .line 10
    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    check-cast v0, Landroid/view/View;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0

    .line 20
    :cond_1
    return-object v1
.end method

.method private getFontAssetManager()Lcom/airbnb/lottie/manager/FontAssetManager;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->fontAssetManager:Lcom/airbnb/lottie/manager/FontAssetManager;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    new-instance v0, Lcom/airbnb/lottie/manager/FontAssetManager;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-object v2, p0, Lcom/airbnb/lottie/LottieDrawable;->fontAssetDelegate:Lcom/airbnb/lottie/FontAssetDelegate;

    .line 20
    .line 21
    invoke-direct {v0, v1, v2}, Lcom/airbnb/lottie/manager/FontAssetManager;-><init>(Landroid/graphics/drawable/Drawable$Callback;Lcom/airbnb/lottie/FontAssetDelegate;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->fontAssetManager:Lcom/airbnb/lottie/manager/FontAssetManager;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->defaultFontFileExtension:Ljava/lang/String;

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/manager/FontAssetManager;->setDefaultFontFileExtension(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->fontAssetManager:Lcom/airbnb/lottie/manager/FontAssetManager;

    .line 34
    .line 35
    return-object v0
.end method

.method private getImageAssetManager()Lcom/airbnb/lottie/manager/ImageAssetManager;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetManager:Lcom/airbnb/lottie/manager/ImageAssetManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/manager/ImageAssetManager;->hasSameContext(Landroid/content/Context;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetManager:Lcom/airbnb/lottie/manager/ImageAssetManager;

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetManager:Lcom/airbnb/lottie/manager/ImageAssetManager;

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    new-instance v0, Lcom/airbnb/lottie/manager/ImageAssetManager;

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iget-object v2, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetsFolder:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v3, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetDelegate:Lcom/airbnb/lottie/ImageAssetDelegate;

    .line 31
    .line 32
    iget-object v4, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 33
    .line 34
    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieComposition;->getImages()Ljava/util/Map;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/airbnb/lottie/manager/ImageAssetManager;-><init>(Landroid/graphics/drawable/Drawable$Callback;Ljava/lang/String;Lcom/airbnb/lottie/ImageAssetDelegate;Ljava/util/Map;)V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetManager:Lcom/airbnb/lottie/manager/ImageAssetManager;

    .line 42
    .line 43
    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetManager:Lcom/airbnb/lottie/manager/ImageAssetManager;

    .line 44
    .line 45
    return-object v0
.end method

.method private ignoreCanvasClipBounds()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroid/view/View;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    return v2

    .line 11
    :cond_0
    check-cast v0, Landroid/view/View;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    check-cast v0, Landroid/view/ViewGroup;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getClipChildren()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    xor-int/lit8 v0, v0, 0x1

    .line 28
    .line 29
    return v0

    .line 30
    :cond_1
    return v2
.end method

.method private synthetic lambda$addValueCallback$17(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;Lcom/airbnb/lottie/LottieComposition;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/airbnb/lottie/LottieDrawable;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getAsyncUpdatesEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getAnimatedValueAbsolute()F

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/model/layer/CompositionLayer;->setProgress(F)V

    .line 22
    .line 23
    .line 24
    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private synthetic lambda$new$2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->setProgressDrawLock:Ljava/util/concurrent/Semaphore;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getAnimatedValueAbsolute()F

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/model/layer/CompositionLayer;->setProgress(F)V

    .line 18
    .line 19
    .line 20
    sget-boolean v0, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelfOnMainThread:Z

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieDrawable;->isDirty:Z

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->mainThreadHandler:Landroid/os/Handler;

    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    new-instance v0, Landroid/os/Handler;

    .line 33
    .line 34
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->mainThreadHandler:Landroid/os/Handler;

    .line 42
    .line 43
    new-instance v0, L딎땫땪딐땵될뒷둠돠됫돴뒘땱땨땦됫둡둡딽딅되듐딞둬뒨뒷뎡땔뎰뒼딎돠뒾뒙뒋땻뒷딞돴됫뎬땨됩땠듸듰뒘땵돤되디뒼땝뒉뒹딹뒛뎬뎬듌딹땳뒹땄돛땤돴듼땝뒵둑돰둘돤땯땸돷뎠땹됫땤둡땝땍땹딟땝땦디둬뒉딎딜두뒙땜뒾도땡땯듸딅땲두듨땅뎻뒉딄득따땵땱딜땋땦딨땲땝듐둬땧도둔둘될땩디땟땹;

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-direct {v0, p0, v1}, L딎땫땪딐땵될뒷둠돠됫돴뒘땱땨땦됫둡둡딽딅되듐딞둬뒨뒷뎡땔뎰뒼딎돠뒾뒙뒋땻뒷딞돴됫뎬땨됩땠듸듰뒘땵돤되디뒼땝뒉뒹딹뒛뎬뎬듌딹땳뒹땄돛땤돴듼땝뒵둑돰둘돤땯땸돷뎠땹됫땤둡땝땍땹딟땝땦디둬뒉딎딜두뒙땜뒾도땡땯듸딅땲두듨땅뎻뒉딄득따땵땱딜땋땦딨땲땝듐둬땧도둔둘될땩디땟땹;-><init>(Lcom/airbnb/lottie/LottieDrawable;I)V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelfRunnable:Ljava/lang/Runnable;

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception v0

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->mainThreadHandler:Landroid/os/Handler;

    .line 55
    .line 56
    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelfRunnable:Ljava/lang/Runnable;

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    .line 61
    :catch_0
    :cond_2
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->setProgressDrawLock:Ljava/util/concurrent/Semaphore;

    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 64
    .line 65
    .line 66
    goto :goto_2

    .line 67
    :goto_1
    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->setProgressDrawLock:Ljava/util/concurrent/Semaphore;

    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 70
    .line 71
    .line 72
    throw v0

    .line 73
    :goto_2
    return-void
.end method

.method private synthetic lambda$playAnimation$3(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->playAnimation()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$resumeAnimation$4(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->resumeAnimation()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$setFrame$15(ILcom/airbnb/lottie/LottieComposition;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setFrame(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$setMaxFrame$10(Ljava/lang/String;Lcom/airbnb/lottie/LottieComposition;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setMaxFrame(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$setMaxFrame$7(ILcom/airbnb/lottie/LottieComposition;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setMaxFrame(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$setMaxProgress$8(FLcom/airbnb/lottie/LottieComposition;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setMaxProgress(F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$setMinAndMaxFrame$11(Ljava/lang/String;Lcom/airbnb/lottie/LottieComposition;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setMinAndMaxFrame(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$setMinAndMaxFrame$12(Ljava/lang/String;Ljava/lang/String;ZLcom/airbnb/lottie/LottieComposition;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/airbnb/lottie/LottieDrawable;->setMinAndMaxFrame(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$setMinAndMaxFrame$13(IILcom/airbnb/lottie/LottieComposition;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/LottieDrawable;->setMinAndMaxFrame(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$setMinAndMaxProgress$14(FFLcom/airbnb/lottie/LottieComposition;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/LottieDrawable;->setMinAndMaxProgress(FF)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$setMinFrame$5(ILcom/airbnb/lottie/LottieComposition;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setMinFrame(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$setMinFrame$9(Ljava/lang/String;Lcom/airbnb/lottie/LottieComposition;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setMinFrame(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$setMinProgress$6(FLcom/airbnb/lottie/LottieComposition;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setMinProgress(F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$setProgress$16(FLcom/airbnb/lottie/LottieComposition;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setProgress(F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private renderAndDrawAsBitmap(Landroid/graphics/Canvas;Lcom/airbnb/lottie/model/layer/CompositionLayer;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    goto/16 :goto_1

    .line 8
    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->ensureSoftwareRenderingObjectsInitialized()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingOriginalCanvasMatrix:Landroid/graphics/Matrix;

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->canvasClipBounds:Landroid/graphics/Rect;

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->canvasClipBounds:Landroid/graphics/Rect;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->canvasClipBoundsRectF:Landroid/graphics/RectF;

    .line 25
    .line 26
    invoke-direct {p0, v0, v1}, Lcom/airbnb/lottie/LottieDrawable;->convertRect(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingOriginalCanvasMatrix:Landroid/graphics/Matrix;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->canvasClipBoundsRectF:Landroid/graphics/RectF;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->canvasClipBoundsRectF:Landroid/graphics/RectF;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->canvasClipBounds:Landroid/graphics/Rect;

    .line 39
    .line 40
    invoke-direct {p0, v0, v1}, Lcom/airbnb/lottie/LottieDrawable;->convertRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    .line 41
    .line 42
    .line 43
    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieDrawable;->clipToCompositionBounds:Z

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    const/4 v2, 0x0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingTransformedBounds:Landroid/graphics/RectF;

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getIntrinsicWidth()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    int-to-float v3, v3

    .line 56
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getIntrinsicHeight()I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    int-to-float v4, v4

    .line 61
    const/4 v5, 0x0

    .line 62
    invoke-virtual {v0, v5, v5, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingTransformedBounds:Landroid/graphics/RectF;

    .line 67
    .line 68
    invoke-virtual {p2, v0, v1, v2}, Lcom/airbnb/lottie/model/layer/CompositionLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 69
    .line 70
    .line 71
    :goto_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingOriginalCanvasMatrix:Landroid/graphics/Matrix;

    .line 72
    .line 73
    iget-object v3, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingTransformedBounds:Landroid/graphics/RectF;

    .line 74
    .line 75
    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    int-to-float v3, v3

    .line 87
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getIntrinsicWidth()I

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    int-to-float v4, v4

    .line 92
    div-float/2addr v3, v4

    .line 93
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    int-to-float v0, v0

    .line 98
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getIntrinsicHeight()I

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    int-to-float v4, v4

    .line 103
    div-float/2addr v0, v4

    .line 104
    iget-object v4, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingTransformedBounds:Landroid/graphics/RectF;

    .line 105
    .line 106
    invoke-direct {p0, v4, v3, v0}, Lcom/airbnb/lottie/LottieDrawable;->scaleRect(Landroid/graphics/RectF;FF)V

    .line 107
    .line 108
    .line 109
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->ignoreCanvasClipBounds()Z

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    if-nez v4, :cond_2

    .line 114
    .line 115
    iget-object v4, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingTransformedBounds:Landroid/graphics/RectF;

    .line 116
    .line 117
    iget-object v5, p0, Lcom/airbnb/lottie/LottieDrawable;->canvasClipBounds:Landroid/graphics/Rect;

    .line 118
    .line 119
    iget v6, v5, Landroid/graphics/Rect;->left:I

    .line 120
    .line 121
    int-to-float v6, v6

    .line 122
    iget v7, v5, Landroid/graphics/Rect;->top:I

    .line 123
    .line 124
    int-to-float v7, v7

    .line 125
    iget v8, v5, Landroid/graphics/Rect;->right:I

    .line 126
    .line 127
    int-to-float v8, v8

    .line 128
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    .line 129
    .line 130
    int-to-float v5, v5

    .line 131
    invoke-virtual {v4, v6, v7, v8, v5}, Landroid/graphics/RectF;->intersect(FFFF)Z

    .line 132
    .line 133
    .line 134
    :cond_2
    iget-object v4, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingTransformedBounds:Landroid/graphics/RectF;

    .line 135
    .line 136
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    float-to-double v4, v4

    .line 141
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    .line 142
    .line 143
    .line 144
    move-result-wide v4

    .line 145
    double-to-int v4, v4

    .line 146
    iget-object v5, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingTransformedBounds:Landroid/graphics/RectF;

    .line 147
    .line 148
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    .line 149
    .line 150
    .line 151
    move-result v5

    .line 152
    float-to-double v5, v5

    .line 153
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    .line 154
    .line 155
    .line 156
    move-result-wide v5

    .line 157
    double-to-int v5, v5

    .line 158
    if-lez v4, :cond_5

    .line 159
    .line 160
    if-gtz v5, :cond_3

    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_3
    invoke-direct {p0, v4, v5}, Lcom/airbnb/lottie/LottieDrawable;->ensureSoftwareRenderingBitmap(II)V

    .line 164
    .line 165
    .line 166
    iget-boolean v6, p0, Lcom/airbnb/lottie/LottieDrawable;->isDirty:Z

    .line 167
    .line 168
    if-eqz v6, :cond_4

    .line 169
    .line 170
    iget-object v6, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingOriginalCanvasMatrix:Landroid/graphics/Matrix;

    .line 171
    .line 172
    iget-object v7, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingOriginalCanvasMatrixElements:[F

    .line 173
    .line 174
    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->getValues([F)V

    .line 175
    .line 176
    .line 177
    iget-object v6, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingOriginalCanvasMatrixElements:[F

    .line 178
    .line 179
    aget v7, v6, v2

    .line 180
    .line 181
    const/4 v8, 0x4

    .line 182
    aget v6, v6, v8

    .line 183
    .line 184
    iget-object v8, p0, Lcom/airbnb/lottie/LottieDrawable;->renderingMatrix:Landroid/graphics/Matrix;

    .line 185
    .line 186
    iget-object v9, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingOriginalCanvasMatrix:Landroid/graphics/Matrix;

    .line 187
    .line 188
    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 189
    .line 190
    .line 191
    iget-object v8, p0, Lcom/airbnb/lottie/LottieDrawable;->renderingMatrix:Landroid/graphics/Matrix;

    .line 192
    .line 193
    invoke-virtual {v8, v3, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 194
    .line 195
    .line 196
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->renderingMatrix:Landroid/graphics/Matrix;

    .line 197
    .line 198
    iget-object v3, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingTransformedBounds:Landroid/graphics/RectF;

    .line 199
    .line 200
    iget v8, v3, Landroid/graphics/RectF;->left:F

    .line 201
    .line 202
    neg-float v8, v8

    .line 203
    iget v3, v3, Landroid/graphics/RectF;->top:F

    .line 204
    .line 205
    neg-float v3, v3

    .line 206
    invoke-virtual {v0, v8, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 207
    .line 208
    .line 209
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->renderingMatrix:Landroid/graphics/Matrix;

    .line 210
    .line 211
    const/high16 v3, 0x3f800000    # 1.0f

    .line 212
    .line 213
    div-float v8, v3, v7

    .line 214
    .line 215
    div-float/2addr v3, v6

    .line 216
    invoke-virtual {v0, v8, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 217
    .line 218
    .line 219
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingBitmap:Landroid/graphics/Bitmap;

    .line 220
    .line 221
    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 222
    .line 223
    .line 224
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingCanvas:Landroid/graphics/Canvas;

    .line 225
    .line 226
    sget-object v3, Lcom/airbnb/lottie/utils/Utils;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    .line 227
    .line 228
    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 229
    .line 230
    .line 231
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingCanvas:Landroid/graphics/Canvas;

    .line 232
    .line 233
    invoke-virtual {v0, v7, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 234
    .line 235
    .line 236
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingCanvas:Landroid/graphics/Canvas;

    .line 237
    .line 238
    iget-object v3, p0, Lcom/airbnb/lottie/LottieDrawable;->renderingMatrix:Landroid/graphics/Matrix;

    .line 239
    .line 240
    iget v6, p0, Lcom/airbnb/lottie/LottieDrawable;->alpha:I

    .line 241
    .line 242
    invoke-virtual {p2, v0, v3, v6, v1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;ILcom/airbnb/lottie/utils/DropShadow;)V

    .line 243
    .line 244
    .line 245
    iget-object p2, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingOriginalCanvasMatrix:Landroid/graphics/Matrix;

    .line 246
    .line 247
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingOriginalCanvasMatrixInverse:Landroid/graphics/Matrix;

    .line 248
    .line 249
    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 250
    .line 251
    .line 252
    iget-object p2, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingOriginalCanvasMatrixInverse:Landroid/graphics/Matrix;

    .line 253
    .line 254
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingDstBoundsRectF:Landroid/graphics/RectF;

    .line 255
    .line 256
    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingTransformedBounds:Landroid/graphics/RectF;

    .line 257
    .line 258
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 259
    .line 260
    .line 261
    iget-object p2, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingDstBoundsRectF:Landroid/graphics/RectF;

    .line 262
    .line 263
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingDstBoundsRect:Landroid/graphics/Rect;

    .line 264
    .line 265
    invoke-direct {p0, p2, v0}, Lcom/airbnb/lottie/LottieDrawable;->convertRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    .line 266
    .line 267
    .line 268
    :cond_4
    iget-object p2, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingSrcBoundsRect:Landroid/graphics/Rect;

    .line 269
    .line 270
    invoke-virtual {p2, v2, v2, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 271
    .line 272
    .line 273
    iget-object p2, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingBitmap:Landroid/graphics/Bitmap;

    .line 274
    .line 275
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingSrcBoundsRect:Landroid/graphics/Rect;

    .line 276
    .line 277
    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingDstBoundsRect:Landroid/graphics/Rect;

    .line 278
    .line 279
    iget-object v2, p0, Lcom/airbnb/lottie/LottieDrawable;->softwareRenderingPaint:Landroid/graphics/Paint;

    .line 280
    .line 281
    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 282
    .line 283
    .line 284
    :cond_5
    :goto_1
    return-void
.end method

.method private scaleRect(Landroid/graphics/RectF;FF)V
    .locals 3

    .line 1
    iget v0, p1, Landroid/graphics/RectF;->left:F

    .line 2
    .line 3
    mul-float v0, v0, p2

    .line 4
    .line 5
    iget v1, p1, Landroid/graphics/RectF;->top:F

    .line 6
    .line 7
    mul-float v1, v1, p3

    .line 8
    .line 9
    iget v2, p1, Landroid/graphics/RectF;->right:F

    .line 10
    .line 11
    mul-float v2, v2, p2

    .line 12
    .line 13
    iget p2, p1, Landroid/graphics/RectF;->bottom:F

    .line 14
    .line 15
    mul-float p2, p2, p3

    .line 16
    .line 17
    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private shouldSetProgressBeforeDrawing()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget v2, p0, Lcom/airbnb/lottie/LottieDrawable;->lastDrawnProgress:F

    .line 8
    .line 9
    iget-object v3, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 10
    .line 11
    invoke-virtual {v3}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getAnimatedValueAbsolute()F

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    iput v3, p0, Lcom/airbnb/lottie/LottieDrawable;->lastDrawnProgress:F

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getDuration()F

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    sub-float/2addr v3, v2

    .line 22
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    mul-float v2, v2, v0

    .line 27
    .line 28
    const/high16 v0, 0x42480000    # 50.0f

    .line 29
    .line 30
    cmpl-float v0, v2, v0

    .line 31
    .line 32
    if-ltz v0, :cond_1

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    :cond_1
    return v1
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lcom/airbnb/lottie/LottieDrawable;FLcom/airbnb/lottie/LottieComposition;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/LottieDrawable;->lambda$setProgress$16(FLcom/airbnb/lottie/LottieComposition;)V

    return-void
.end method

.method public static synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/LottieComposition;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->lambda$resumeAnimation$4(Lcom/airbnb/lottie/LottieComposition;)V

    return-void
.end method

.method public static synthetic 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Lcom/airbnb/lottie/LottieDrawable;Ljava/lang/String;Lcom/airbnb/lottie/LottieComposition;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/LottieDrawable;->lambda$setMinAndMaxFrame$11(Ljava/lang/String;Lcom/airbnb/lottie/LottieComposition;)V

    return-void
.end method

.method public static synthetic 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(Lcom/airbnb/lottie/LottieDrawable;ILcom/airbnb/lottie/LottieComposition;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/LottieDrawable;->lambda$setFrame$15(ILcom/airbnb/lottie/LottieComposition;)V

    return-void
.end method

.method public static synthetic 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/LottieComposition;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->lambda$playAnimation$3(Lcom/airbnb/lottie/LottieComposition;)V

    return-void
.end method

.method public static synthetic 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤(Lcom/airbnb/lottie/LottieDrawable;FFLcom/airbnb/lottie/LottieComposition;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/lottie/LottieDrawable;->lambda$setMinAndMaxProgress$14(FFLcom/airbnb/lottie/LottieComposition;)V

    return-void
.end method

.method public static synthetic 뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋(Lcom/airbnb/lottie/LottieDrawable;Ljava/lang/String;Lcom/airbnb/lottie/LottieComposition;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/LottieDrawable;->lambda$setMaxFrame$10(Ljava/lang/String;Lcom/airbnb/lottie/LottieComposition;)V

    return-void
.end method

.method public static synthetic 뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두(Lcom/airbnb/lottie/LottieDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->lambda$new$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic 뎨돶땰딎땵딃됨드땭두뒹듟땭땧될땤돝땡땟땡득땫땟듌둑듔뒐둔뒨딽땪돵둥뒬돝뒼뒹땻딹둡듔든땐땰땜땠돳땔될땪두땃딄되돸든돵뎬둘땨딀둡땲뎽땬듬딝딃땜뒼됨땤딝돴듽돰듻땲됫듸든둬듰듰듸뒈땳땠뎰딽둬딽뒼딎땃돸돳딠뒷뒛땯듬뎬땅땀되될딅땩땵됨땐땧뎰뎨땥됩뒋됐딟따됐땮뎡돛듰딸뎬뒙돷(Lcom/airbnb/lottie/LottieDrawable;ILcom/airbnb/lottie/LottieComposition;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/LottieDrawable;->lambda$setMinFrame$5(ILcom/airbnb/lottie/LottieComposition;)V

    return-void
.end method

.method public static synthetic 뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/airbnb/lottie/LottieDrawable;IILcom/airbnb/lottie/LottieComposition;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/lottie/LottieDrawable;->lambda$setMinAndMaxFrame$13(IILcom/airbnb/lottie/LottieComposition;)V

    return-void
.end method

.method public static synthetic 뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/airbnb/lottie/LottieDrawable;FLcom/airbnb/lottie/LottieComposition;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/LottieDrawable;->lambda$setMinProgress$6(FLcom/airbnb/lottie/LottieComposition;)V

    return-void
.end method

.method public static synthetic 뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻(Lcom/airbnb/lottie/LottieDrawable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->lambda$new$2()V

    return-void
.end method

.method public static synthetic 뎨뒋딝뒘땻땭땳뒨돵뒋땡돛딟따뒷땮돴딤딃들땡돸땀뒘돳뎹됩둑딠뒬딤뎸땁뒙뒾딽딄뒷뒘땯도두뎠돸돤뒝돼뒵땳땰딅든뒻뒘땰땯땅뒼돤딃두딁땔듌뒵뎸돷뒘됴딻듔땬돵돼둔땸돨땧돝땲땧땥돛뒼뒋땨돶땮도땁돳듔돳뒈돨딟땨뎹딽둡뒤땐뒘뎡땃땯딐딄뒐땧뒤딹뒬딃땋뎽땮딅뎽뎻딞땡땮뎽뒙듟뎡뎹뒐딁(Lcom/airbnb/lottie/LottieDrawable;Ljava/lang/String;Ljava/lang/String;ZLcom/airbnb/lottie/LottieComposition;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/airbnb/lottie/LottieDrawable;->lambda$setMinAndMaxFrame$12(Ljava/lang/String;Ljava/lang/String;ZLcom/airbnb/lottie/LottieComposition;)V

    return-void
.end method

.method public static synthetic 뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;Lcom/airbnb/lottie/LottieComposition;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/airbnb/lottie/LottieDrawable;->lambda$addValueCallback$17(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;Lcom/airbnb/lottie/LottieComposition;)V

    return-void
.end method

.method public static synthetic 뎨딐딁들땠듟땣땝딄둬돨땁땸뒷돵뒝듨뒬딀듨듔딁뒐땯되들돶듰땋듽듸땡둥딹됨돨듼땀땝딀땳땍됨땱뒀땵될됫땪뒼돨땲뎹딨딅딄땜딜땨듌땫둑딜땠뒨땮땸뎡둔됫듐뒾따됐돶둡땦땲땵뒤땄든땃든뒵둑따돶듻드뒋뎸뎸돨뒘듽땧딻땋딸땯뒹딤땤디뒀둡되땯뒾뎹뒷됴뒨딁땰들됨된딜둬땣땀땔딸됩땩돴땡뎨(Lcom/airbnb/lottie/LottieDrawable;Ljava/lang/String;Lcom/airbnb/lottie/LottieComposition;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/LottieDrawable;->lambda$setMinFrame$9(Ljava/lang/String;Lcom/airbnb/lottie/LottieComposition;)V

    return-void
.end method

.method public static synthetic 뎨딠땱땯딃땯땪됨땧돛돳뒹됴뎹될디든땣뒐돳돤든둔뒻땰됨뒻땤듰딄됨뒘땀딃둬둥둔딻돴땡땡될딠딨뎰땭됩딀두뒘딠득뒝딞딹땁됩땨땫된둣땳둑땁뒈땳땠도든딹뎡돼되뎸땨뎬딤딐돴땧돝딄땫듬뒉딟땋딐돼뎻딅땀돶둡디돶득되둔딝땪뎬뒛땟뒋돰돤됨돳땭돳됐뎰듻땃듬듻돷듸뒤딟땃도뎸돸딁딹땯뒙듐(Lcom/airbnb/lottie/LottieDrawable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->lambda$new$1()V

    return-void
.end method

.method public static synthetic 뎨땋된땫딜딜땮듔든득됫뒻뒬땃돰땔땠땫뒉딜돛둑땅뒙든듨땁딁땧땦뒼딎듨딽되땩뒤됐땫돳뎻뎨듰딞됐뎸땯뎻땸뎨땋딞뎰딠딅뒐됩뒐뎡뒹딅딞뎽땅둑땟땧땣듸됨뒷땤딀뒉돨딎둠됫딁땳뎰됨땁땧되땔들뒻뎠땨뎠딜뒘땻땤뎰돤딜땦땩딃돸둣땣됐듐땃뒛뒷둔두땃딽땤됐딻땝둔딞뎽돝된땫뒻뎬돛땨딹든듌(Lcom/airbnb/lottie/LottieDrawable;FLcom/airbnb/lottie/LottieComposition;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/LottieDrawable;->lambda$setMaxProgress$8(FLcom/airbnb/lottie/LottieComposition;)V

    return-void
.end method

.method public static synthetic 뎨땱듼딃든둔뒬뒨땣된둬딻땵딎딽디땋따땃뒷딐땁된땀땔듨땤둠돠뎽땤돷듽둡돛딨듻뒋딐둣듌뒵듐둑뒾됫듟딌딤될뒨둥듟땬땁뒼땄돴뒙디딐딜들둣땧듬땐딌됨딹땸뒘땪뒝뒻딀땬땡딤듟딁따들돤땝뒼뒙딌딜딨뎹땀딌뎠득땝땔땅돠돛둬뒬뒻돨둡돠땋땯돝돵땔둘됴뒹땲땻땤듬뎬뎡돶땸돳듰땭뒐땪둔듔땬(Lcom/airbnb/lottie/LottieDrawable;ILcom/airbnb/lottie/LottieComposition;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/LottieDrawable;->lambda$setMaxFrame$7(ILcom/airbnb/lottie/LottieComposition;)V

    return-void
.end method


# virtual methods
.method public addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/utils/BaseLottieAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public addAnimatorPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x13
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/utils/BaseLottieAnimator;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public addAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/utils/BaseLottieAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V
    .locals 3
    .param p3    # Lcom/airbnb/lottie/value/LottieValueCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/airbnb/lottie/model/KeyPath;",
            "TT;",
            "Lcom/airbnb/lottie/value/LottieValueCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/airbnb/lottie/뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    sget-object v1, Lcom/airbnb/lottie/model/KeyPath;->COMPOSITION:Lcom/airbnb/lottie/model/KeyPath;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_1

    .line 4
    invoke-virtual {v0, p2, p3}, Lcom/airbnb/lottie/model/layer/CompositionLayer;->addValueCallback(Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/KeyPath;->getResolvedElement()Lcom/airbnb/lottie/model/KeyPathElement;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/KeyPath;->getResolvedElement()Lcom/airbnb/lottie/model/KeyPathElement;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lcom/airbnb/lottie/model/KeyPathElement;->addValueCallback(Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 8
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 9
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/model/KeyPath;

    invoke-virtual {v1}, Lcom/airbnb/lottie/model/KeyPath;->getResolvedElement()Lcom/airbnb/lottie/model/KeyPathElement;

    move-result-object v1

    invoke-interface {v1, p2, p3}, Lcom/airbnb/lottie/model/KeyPathElement;->addValueCallback(Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/2addr v2, p1

    :goto_1
    if-eqz v2, :cond_4

    .line 11
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 12
    sget-object p1, Lcom/airbnb/lottie/LottieProperty;->TIME_REMAP:Ljava/lang/Float;

    if-ne p2, p1, :cond_4

    .line 13
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getProgress()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setProgress(F)V

    :cond_4
    return-void
.end method

.method public addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/SimpleLottieValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/airbnb/lottie/model/KeyPath;",
            "TT;",
            "Lcom/airbnb/lottie/value/SimpleLottieValueCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 14
    new-instance v0, Lcom/airbnb/lottie/LottieDrawable$1;

    invoke-direct {v0, p0, p3}, Lcom/airbnb/lottie/LottieDrawable$1;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/value/SimpleLottieValueCallback;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/airbnb/lottie/LottieDrawable;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    return-void
.end method

.method public animationsEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieDrawable;->ignoreSystemAnimationsDisabled:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieDrawable;->systemAnimationsEnabled:Z

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-static {}, Lcom/airbnb/lottie/L;->getReducedMotionOption()Lcom/airbnb/lottie/configurations/reducemotion/ReducedMotionOption;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1}, Lcom/airbnb/lottie/configurations/reducemotion/ReducedMotionOption;->getCurrentReducedMotionMode(Landroid/content/Context;)Lcom/airbnb/lottie/configurations/reducemotion/ReducedMotionMode;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    sget-object v0, Lcom/airbnb/lottie/configurations/reducemotion/ReducedMotionMode;->STANDARD_MOTION:Lcom/airbnb/lottie/configurations/reducemotion/ReducedMotionMode;

    .line 20
    .line 21
    if-ne p1, v0, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v1, 0x0

    .line 25
    :goto_0
    return v1
.end method

.method public cancelAnimation()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->cancel()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    sget-object v0, Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;->NONE:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->onVisibleAction:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public clearComposition()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isRunning()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->cancel()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    sget-object v0, Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;->NONE:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->onVisibleAction:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    .line 23
    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    .line 28
    .line 29
    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetManager:Lcom/airbnb/lottie/manager/ImageAssetManager;

    .line 30
    .line 31
    const v0, -0x800001

    .line 32
    .line 33
    .line 34
    iput v0, p0, Lcom/airbnb/lottie/LottieDrawable;->lastDrawnProgress:F

    .line 35
    .line 36
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->clearComposition()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public disableExtraScaleModeInFitXY()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x3

    .line 1
    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getAsyncUpdatesEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3
    :try_start_0
    iget-object v3, p0, Lcom/airbnb/lottie/LottieDrawable;->setProgressDrawLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->acquire()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :catch_0
    nop

    goto/16 :goto_5

    .line 4
    :cond_1
    :goto_0
    invoke-static {}, Lcom/airbnb/lottie/L;->isTraceEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v0, [J

    fill-array-data v4, :array_0

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    :cond_2
    if-eqz v2, :cond_3

    .line 6
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->shouldSetProgressBeforeDrawing()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 7
    iget-object v3, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v3}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getAnimatedValueAbsolute()F

    move-result v3

    invoke-virtual {p0, v3}, Lcom/airbnb/lottie/LottieDrawable;->setProgress(F)V

    .line 8
    :cond_3
    iget-boolean v3, p0, Lcom/airbnb/lottie/LottieDrawable;->safeMode:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_5

    .line 9
    :try_start_1
    iget-boolean v3, p0, Lcom/airbnb/lottie/LottieDrawable;->useSoftwareRendering:Z

    if-eqz v3, :cond_4

    .line 10
    invoke-direct {p0, p1, v1}, Lcom/airbnb/lottie/LottieDrawable;->renderAndDrawAsBitmap(Landroid/graphics/Canvas;Lcom/airbnb/lottie/model/layer/CompositionLayer;)V

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_1

    .line 11
    :cond_4
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->drawDirectlyToCanvas(Landroid/graphics/Canvas;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    .line 12
    :goto_1
    :try_start_2
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v4, 0x4

    new-array v4, v4, [J

    fill-array-data v4, :array_1

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/airbnb/lottie/utils/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 13
    :cond_5
    iget-boolean v3, p0, Lcom/airbnb/lottie/LottieDrawable;->useSoftwareRendering:Z

    if-eqz v3, :cond_6

    .line 14
    invoke-direct {p0, p1, v1}, Lcom/airbnb/lottie/LottieDrawable;->renderAndDrawAsBitmap(Landroid/graphics/Canvas;Lcom/airbnb/lottie/model/layer/CompositionLayer;)V

    goto :goto_2

    .line 15
    :cond_6
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->drawDirectlyToCanvas(Landroid/graphics/Canvas;)V

    :goto_2
    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieDrawable;->isDirty:Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17
    invoke-static {}, Lcom/airbnb/lottie/L;->isTraceEnabled()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 18
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v0, [J

    fill-array-data v0, :array_2

    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    :cond_7
    if-eqz v2, :cond_b

    .line 19
    iget-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->setProgressDrawLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 20
    invoke-virtual {v1}, Lcom/airbnb/lottie/model/layer/CompositionLayer;->getProgress()F

    move-result p1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getAnimatedValueAbsolute()F

    move-result v0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_b

    .line 21
    :goto_3
    sget-object p1, Lcom/airbnb/lottie/LottieDrawable;->setProgressExecutor:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->updateProgressRunnable:Ljava/lang/Runnable;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_6

    .line 22
    :goto_4
    invoke-static {}, Lcom/airbnb/lottie/L;->isTraceEnabled()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 23
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v0, [J

    fill-array-data v0, :array_3

    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    :cond_8
    if-eqz v2, :cond_9

    .line 24
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->setProgressDrawLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 25
    invoke-virtual {v1}, Lcom/airbnb/lottie/model/layer/CompositionLayer;->getProgress()F

    move-result v0

    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getAnimatedValueAbsolute()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_9

    .line 26
    sget-object v0, Lcom/airbnb/lottie/LottieDrawable;->setProgressExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->updateProgressRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 27
    :cond_9
    throw p1

    .line 28
    :goto_5
    invoke-static {}, Lcom/airbnb/lottie/L;->isTraceEnabled()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 29
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v0, [J

    fill-array-data v0, :array_4

    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    :cond_a
    if-eqz v2, :cond_b

    .line 30
    iget-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->setProgressDrawLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 31
    invoke-virtual {v1}, Lcom/airbnb/lottie/model/layer/CompositionLayer;->getProgress()F

    move-result p1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getAnimatedValueAbsolute()F

    move-result v0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_b

    goto :goto_3

    :cond_b
    :goto_6
    return-void

    nop

    :array_0
    .array-data 8
        0x60a847855730464fL    # 4.1668254948723903E157
        0x1dee6447718ec0e8L
        -0x7ce1ecb01df6556dL    # -1.177270323947207E-293
    .end array-data

    :array_1
    .array-data 8
        0x7c1bfc91b8544a66L    # 6.8184547650885285E289
        0x7000ae3e39ce4388L    # 3.2371238398392215E231
        -0x4c22ab9f0e8de24aL    # -7.300743009930768E-59
        0x4696cf098cfc1f0bL    # 1.156540491815254E32
    .end array-data

    :array_2
    .array-data 8
        -0x1d7f6109c6b5cdf2L    # -3.062833022366697E166
        0x4a8e487db5fd2f42L    # 1.4162847968657353E51
        0x78903acc89db208eL    # 5.487393945793937E272
    .end array-data

    :array_3
    .array-data 8
        0x258dc974060153feL    # 8.594439270030242E-128
        -0x224556452a05c45fL    # -3.251375151666659E143
        0x25db52569809f810L    # 2.52260060845364E-126
    .end array-data

    :array_4
    .array-data 8
        0x6da2bdd7970ec5ebL    # 1.323161445276285E220
        -0x335c09259275cc2bL    # -1.6040672852053017E61
        0x278705d70b8fcfdcL    # 2.853054651190004E-118
    .end array-data
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 3
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    .line 33
    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-eqz v0, :cond_4

    if-nez v1, :cond_0

    goto/16 :goto_5

    .line 34
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getAsyncUpdatesEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 35
    :try_start_0
    iget-object v2, p0, Lcom/airbnb/lottie/LottieDrawable;->setProgressDrawLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 36
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->shouldSetProgressBeforeDrawing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 37
    iget-object v2, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v2}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getAnimatedValueAbsolute()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/airbnb/lottie/LottieDrawable;->setProgress(F)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    nop

    goto :goto_4

    .line 38
    :cond_1
    :goto_0
    iget-boolean v2, p0, Lcom/airbnb/lottie/LottieDrawable;->safeMode:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    .line 39
    :try_start_1
    iget v2, p0, Lcom/airbnb/lottie/LottieDrawable;->alpha:I

    invoke-direct {p0, p1, p2, v0, v2}, Lcom/airbnb/lottie/LottieDrawable;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/layer/CompositionLayer;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 40
    :try_start_2
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x4

    new-array v2, v2, [J

    fill-array-data v2, :array_0

    invoke-direct {p2, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/airbnb/lottie/utils/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 41
    :cond_2
    iget v2, p0, Lcom/airbnb/lottie/LottieDrawable;->alpha:I

    invoke-direct {p0, p1, p2, v0, v2}, Lcom/airbnb/lottie/LottieDrawable;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/layer/CompositionLayer;I)V

    :goto_1
    const/4 p1, 0x0

    .line 42
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieDrawable;->isDirty:Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_4

    .line 43
    iget-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->setProgressDrawLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 44
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/CompositionLayer;->getProgress()F

    move-result p1

    iget-object p2, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {p2}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getAnimatedValueAbsolute()F

    move-result p2

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_4

    .line 45
    :goto_2
    sget-object p1, Lcom/airbnb/lottie/LottieDrawable;->setProgressExecutor:Ljava/util/concurrent/Executor;

    iget-object p2, p0, Lcom/airbnb/lottie/LottieDrawable;->updateProgressRunnable:Ljava/lang/Runnable;

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_5

    :goto_3
    if-eqz v1, :cond_3

    .line 46
    iget-object p2, p0, Lcom/airbnb/lottie/LottieDrawable;->setProgressDrawLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 47
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/CompositionLayer;->getProgress()F

    move-result p2

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getAnimatedValueAbsolute()F

    move-result v0

    cmpl-float p2, p2, v0

    if-eqz p2, :cond_3

    .line 48
    sget-object p2, Lcom/airbnb/lottie/LottieDrawable;->setProgressExecutor:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->updateProgressRunnable:Ljava/lang/Runnable;

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 49
    :cond_3
    throw p1

    :goto_4
    if-eqz v1, :cond_4

    .line 50
    iget-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->setProgressDrawLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 51
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/CompositionLayer;->getProgress()F

    move-result p1

    iget-object p2, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {p2}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getAnimatedValueAbsolute()F

    move-result p2

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    :goto_5
    return-void

    :array_0
    .array-data 8
        0x3233cf8158ced611L    # 7.348147854941346E-67
        -0x373394f8cec9dc2cL    # -4.951127558932865E42
        0x47eeac15a779642aL    # 3.261628330599125E38
        -0x64a1ed55928d7238L
    .end array-data
.end method

.method public enableFeatureFlag(Lcom/airbnb/lottie/LottieFeatureFlag;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->lottieFeatureFlags:Lcom/airbnb/lottie/LottieFeatureFlags;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/airbnb/lottie/LottieFeatureFlags;->enableFlag(Lcom/airbnb/lottie/LottieFeatureFlag;Z)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget-object p2, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->buildCompositionLayer()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public enableMergePathsForKitKatAndAbove(Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->lottieFeatureFlags:Lcom/airbnb/lottie/LottieFeatureFlags;

    sget-object v1, Lcom/airbnb/lottie/LottieFeatureFlag;->MergePathsApi19:Lcom/airbnb/lottie/LottieFeatureFlag;

    invoke-virtual {v0, v1, p1}, Lcom/airbnb/lottie/LottieFeatureFlags;->enableFlag(Lcom/airbnb/lottie/LottieFeatureFlag;Z)Z

    move-result p1

    .line 3
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->buildCompositionLayer()V

    :cond_0
    return-void
.end method

.method public enableMergePathsForKitKatAndAbove()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->lottieFeatureFlags:Lcom/airbnb/lottie/LottieFeatureFlags;

    sget-object v1, Lcom/airbnb/lottie/LottieFeatureFlag;->MergePathsApi19:Lcom/airbnb/lottie/LottieFeatureFlag;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieFeatureFlags;->isFlagEnabled(Lcom/airbnb/lottie/LottieFeatureFlag;)Z

    move-result v0

    return v0
.end method

.method public endAnimation()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->endAnimation()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    sget-object v0, Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;->NONE:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->onVisibleAction:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/LottieDrawable;->alpha:I

    .line 2
    .line 3
    return v0
.end method

.method public getAsyncUpdates()Lcom/airbnb/lottie/AsyncUpdates;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->asyncUpdates:Lcom/airbnb/lottie/AsyncUpdates;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    invoke-static {}, Lcom/airbnb/lottie/L;->getDefaultAsyncUpdates()Lcom/airbnb/lottie/AsyncUpdates;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public getAsyncUpdatesEnabled()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getAsyncUpdates()Lcom/airbnb/lottie/AsyncUpdates;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/airbnb/lottie/AsyncUpdates;->ENABLED:Lcom/airbnb/lottie/AsyncUpdates;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

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

.method public getBitmapForId(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->getImageAssetManager()Lcom/airbnb/lottie/manager/ImageAssetManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/manager/ImageAssetManager;->bitmapForId(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    return-object p1
.end method

.method public getClipTextToBoundingBox()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieDrawable;->clipTextToBoundingBox:Z

    .line 2
    .line 3
    return v0
.end method

.method public getClipToCompositionBounds()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieDrawable;->clipToCompositionBounds:Z

    .line 2
    .line 3
    return v0
.end method

.method public getComposition()Lcom/airbnb/lottie/LottieComposition;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFrame()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getFrame()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    float-to-int v0, v0

    .line 8
    return v0
.end method

.method public getImageAsset(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->getImageAssetManager()Lcom/airbnb/lottie/manager/ImageAssetManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/manager/ImageAssetManager;->bitmapForId(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    move-object p1, v1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getImages()Ljava/util/Map;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lcom/airbnb/lottie/LottieImageAsset;

    .line 28
    .line 29
    :goto_0
    if-eqz p1, :cond_2

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieImageAsset;->getBitmap()Landroid/graphics/Bitmap;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    return-object p1

    .line 36
    :cond_2
    return-object v1
.end method

.method public getImageAssetsFolder()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetsFolder:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getBounds()Landroid/graphics/Rect;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    :goto_0
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getBounds()Landroid/graphics/Rect;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    :goto_0
    return v0
.end method

.method public getLottieImageAssetForId(Ljava/lang/String;)Lcom/airbnb/lottie/LottieImageAsset;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getImages()Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/airbnb/lottie/LottieImageAsset;

    .line 16
    .line 17
    return-object p1
.end method

.method public getMaintainOriginalImageBounds()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieDrawable;->maintainOriginalImageBounds:Z

    .line 2
    .line 3
    return v0
.end method

.method public getMarkerForAnimationsDisabled()Lcom/airbnb/lottie/model/Marker;
    .locals 3
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/airbnb/lottie/LottieDrawable;->ALLOWED_REDUCED_MOTION_MARKERS:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Ljava/lang/String;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 21
    .line 22
    invoke-virtual {v2, v1}, Lcom/airbnb/lottie/LottieComposition;->getMarker(Ljava/lang/String;)Lcom/airbnb/lottie/model/Marker;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    :cond_1
    return-object v1
.end method

.method public getMaxFrame()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getMinFrame()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public getPerformanceTracker()Lcom/airbnb/lottie/PerformanceTracker;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getPerformanceTracker()Lcom/airbnb/lottie/PerformanceTracker;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public getProgress()F
    .locals 1
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getAnimatedValueAbsolute()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getRenderMode()Lcom/airbnb/lottie/RenderMode;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieDrawable;->useSoftwareRendering:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/airbnb/lottie/RenderMode;->SOFTWARE:Lcom/airbnb/lottie/RenderMode;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget-object v0, Lcom/airbnb/lottie/RenderMode;->HARDWARE:Lcom/airbnb/lottie/RenderMode;

    .line 9
    .line 10
    :goto_0
    return-object v0
.end method

.method public getRepeatCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getRepeatMode()I
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getRepeatMode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getSpeed()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getSpeed()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getTextDelegate()Lcom/airbnb/lottie/TextDelegate;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->textDelegate:Lcom/airbnb/lottie/TextDelegate;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTypeface(Lcom/airbnb/lottie/model/Font;)Landroid/graphics/Typeface;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->fontMap:Ljava/util/Map;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/Font;->getFamily()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Landroid/graphics/Typeface;

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_0
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/Font;->getName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Landroid/graphics/Typeface;

    .line 37
    .line 38
    return-object p1

    .line 39
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/Font;->getFamily()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 52
    .line 53
    const/4 v3, 0x2

    .line 54
    new-array v3, v3, [J

    .line 55
    .line 56
    fill-array-data v3, :array_0

    .line 57
    .line 58
    .line 59
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/Font;->getStyle()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_2

    .line 85
    .line 86
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    check-cast p1, Landroid/graphics/Typeface;

    .line 91
    .line 92
    return-object p1

    .line 93
    :cond_2
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->getFontAssetManager()Lcom/airbnb/lottie/manager/FontAssetManager;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    if-eqz v0, :cond_3

    .line 98
    .line 99
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/manager/FontAssetManager;->getTypeface(Lcom/airbnb/lottie/model/Font;)Landroid/graphics/Typeface;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    return-object p1

    .line 104
    :cond_3
    const/4 p1, 0x0

    .line 105
    return-object p1

    .line 106
    nop

    .line 107
    :array_0
    .array-data 8
        -0x4fed2336140e1763L    # -4.072483751752284E-77
        -0x10e761f5ee84267dL    # -1.4579340930432145E227
    .end array-data
.end method

.method public hasMasks()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/CompositionLayer;->hasMasks()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public hasMatte()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/CompositionLayer;->hasMatte()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public invalidateSelf()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieDrawable;->isDirty:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieDrawable;->isDirty:Z

    .line 8
    .line 9
    sget-boolean v0, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelfOnMainThread:Z

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-eq v0, v1, :cond_1

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 31
    .line 32
    .line 33
    :cond_2
    return-void
.end method

.method public isAnimating()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isRunning()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public isAnimatingOrWillAnimateOnVisible()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isRunning()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->onVisibleAction:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    .line 15
    .line 16
    sget-object v1, Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;->PLAY:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    .line 17
    .line 18
    if-eq v0, v1, :cond_2

    .line 19
    .line 20
    sget-object v1, Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;->RESUME:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    .line 21
    .line 22
    if-ne v0, v1, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 v0, 0x0

    .line 26
    goto :goto_1

    .line 27
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 28
    :goto_1
    return v0
.end method

.method public isApplyingOpacityToLayersEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieDrawable;->isApplyingOpacityToLayersEnabled:Z

    .line 2
    .line 3
    return v0
.end method

.method public isApplyingShadowToLayersEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieDrawable;->isApplyingShadowToLayersEnabled:Z

    .line 2
    .line 3
    return v0
.end method

.method public isFeatureFlagEnabled(Lcom/airbnb/lottie/LottieFeatureFlag;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->lottieFeatureFlags:Lcom/airbnb/lottie/LottieFeatureFlags;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieFeatureFlags;->isFlagEnabled(Lcom/airbnb/lottie/LottieFeatureFlag;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public isLooping()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return v0
.end method

.method public isMergePathsEnabledForKitKatAndAbove()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->lottieFeatureFlags:Lcom/airbnb/lottie/LottieFeatureFlags;

    .line 2
    .line 3
    sget-object v1, Lcom/airbnb/lottie/LottieFeatureFlag;->MergePathsApi19:Lcom/airbnb/lottie/LottieFeatureFlag;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieFeatureFlags;->isFlagEnabled(Lcom/airbnb/lottie/LottieFeatureFlag;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->isAnimating()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public loop(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 p1, -0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p1, 0x0

    .line 8
    :goto_0
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public pauseAnimation()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->pauseAnimation()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    sget-object v0, Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;->NONE:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->onVisibleAction:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public playAnimation()V
    .locals 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    .line 6
    .line 7
    new-instance v1, Lcom/airbnb/lottie/뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-direct {v1, p0, v2}, Lcom/airbnb/lottie/뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋;-><init>(Lcom/airbnb/lottie/LottieDrawable;I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->computeRenderMode()V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieDrawable;->animationsEnabled(Landroid/content/Context;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getRepeatCount()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_3

    .line 35
    .line 36
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->playAnimation()V

    .line 45
    .line 46
    .line 47
    sget-object v0, Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;->NONE:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    .line 48
    .line 49
    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->onVisibleAction:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    sget-object v0, Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;->PLAY:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    .line 53
    .line 54
    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->onVisibleAction:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    .line 55
    .line 56
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->getContext()Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieDrawable;->animationsEnabled(Landroid/content/Context;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-nez v0, :cond_6

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getMarkerForAnimationsDisabled()Lcom/airbnb/lottie/model/Marker;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    if-eqz v0, :cond_4

    .line 71
    .line 72
    iget v0, v0, Lcom/airbnb/lottie/model/Marker;->startFrame:F

    .line 73
    .line 74
    float-to-int v0, v0

    .line 75
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieDrawable;->setFrame(I)V

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_4
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getSpeed()F

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    const/4 v1, 0x0

    .line 84
    cmpg-float v0, v0, v1

    .line 85
    .line 86
    if-gez v0, :cond_5

    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getMinFrame()F

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    goto :goto_1

    .line 93
    :cond_5
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getMaxFrame()F

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    :goto_1
    float-to-int v0, v0

    .line 98
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieDrawable;->setFrame(I)V

    .line 99
    .line 100
    .line 101
    :goto_2
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->endAnimation()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-nez v0, :cond_6

    .line 111
    .line 112
    sget-object v0, Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;->NONE:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    .line 113
    .line 114
    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->onVisibleAction:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    .line 115
    .line 116
    :cond_6
    return-void
.end method

.method public removeAllAnimatorListeners()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/airbnb/lottie/utils/BaseLottieAnimator;->removeAllListeners()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public removeAllUpdateListeners()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/airbnb/lottie/utils/BaseLottieAnimator;->removeAllUpdateListeners()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->progressUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/utils/BaseLottieAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public removeAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/utils/BaseLottieAnimator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public removeAnimatorPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x13
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/utils/BaseLottieAnimator;->removePauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public removeAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/utils/BaseLottieAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/model/KeyPath;",
            ")",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/KeyPath;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/16 v0, 0x8

    .line 8
    .line 9
    new-array v0, v0, [J

    .line 10
    .line 11
    fill-array-data v0, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {p1}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1

    .line 29
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    .line 35
    .line 36
    new-instance v2, Lcom/airbnb/lottie/model/KeyPath;

    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    new-array v4, v3, [Ljava/lang/String;

    .line 40
    .line 41
    invoke-direct {v2, v4}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p1, v3, v0, v2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;)V

    .line 45
    .line 46
    .line 47
    return-object v0

    .line 48
    nop

    .line 49
    :array_0
    .array-data 8
        0x5850303634e51fe8L    # 2.5514102631320093E117
        0x3ab8d6885116aa7L
        -0x1fc0fa1f1bdfeb79L    # -4.159499268557284E155
        0x44a118fa41e329abL    # 4.037049250535203E22
        -0x3ea859ce6208ddabL    # -6199494.468208869
        -0x4f7b33b0bea7929bL    # -5.747704383252147E-75
        -0x712fd04c2b689610L    # -2.485718952380024E-237
        -0x29480555f14708c8L    # -5.63160721864052E109
    .end array-data
.end method

.method public resumeAnimation()V
    .locals 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    .line 6
    .line 7
    new-instance v1, Lcom/airbnb/lottie/뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v1, p0, v2}, Lcom/airbnb/lottie/뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋;-><init>(Lcom/airbnb/lottie/LottieDrawable;I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->computeRenderMode()V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieDrawable;->animationsEnabled(Landroid/content/Context;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getRepeatCount()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_3

    .line 35
    .line 36
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->resumeAnimation()V

    .line 45
    .line 46
    .line 47
    sget-object v0, Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;->NONE:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    .line 48
    .line 49
    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->onVisibleAction:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    sget-object v0, Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;->RESUME:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    .line 53
    .line 54
    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->onVisibleAction:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    .line 55
    .line 56
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->getContext()Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieDrawable;->animationsEnabled(Landroid/content/Context;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-nez v0, :cond_5

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getSpeed()F

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    const/4 v1, 0x0

    .line 71
    cmpg-float v0, v0, v1

    .line 72
    .line 73
    if-gez v0, :cond_4

    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getMinFrame()F

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    goto :goto_1

    .line 80
    :cond_4
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getMaxFrame()F

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    :goto_1
    float-to-int v0, v0

    .line 85
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieDrawable;->setFrame(I)V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->endAnimation()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-nez v0, :cond_5

    .line 98
    .line 99
    sget-object v0, Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;->NONE:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    .line 100
    .line 101
    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->onVisibleAction:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    .line 102
    .line 103
    :cond_5
    return-void
.end method

.method public reverseAnimationSpeed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->reverseAnimationSpeed()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/airbnb/lottie/LottieDrawable;->alpha:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setApplyingOpacityToLayersEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieDrawable;->isApplyingOpacityToLayersEnabled:Z

    .line 2
    .line 3
    return-void
.end method

.method public setApplyingShadowToLayersEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieDrawable;->isApplyingShadowToLayersEnabled:Z

    .line 2
    .line 3
    return-void
.end method

.method public setAsyncUpdates(Lcom/airbnb/lottie/AsyncUpdates;)V
    .locals 0
    .param p1    # Lcom/airbnb/lottie/AsyncUpdates;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->asyncUpdates:Lcom/airbnb/lottie/AsyncUpdates;

    .line 2
    .line 3
    return-void
.end method

.method public setClipTextToBoundingBox(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieDrawable;->clipTextToBoundingBox:Z

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieDrawable;->clipTextToBoundingBox:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setClipToCompositionBounds(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieDrawable;->clipToCompositionBounds:Z

    .line 2
    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieDrawable;->clipToCompositionBounds:Z

    .line 6
    .line 7
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/model/layer/CompositionLayer;->setClipToCompositionBounds(Z)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 15
    .line 16
    .line 17
    :cond_1
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v0, 0x5

    .line 4
    new-array v0, v0, [J

    .line 5
    .line 6
    fill-array-data v0, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-static {p1}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :array_0
    .array-data 8
        -0x4cd26c25d4f5261dL    # -3.594951785450233E-62
        -0x7af5d094f2e597f4L    # -2.201154125429832E-284
        -0x77ec5cf7f440bb9dL    # -9.292563316093524E-270
        0xcd0003c2b12012aL
        -0x2ee349cd07d2c1d7L    # -5.44700742417299E82
    .end array-data
.end method

.method public setComposition(Lcom/airbnb/lottie/LottieComposition;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_0
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieDrawable;->isDirty:Z

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->clearComposition()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->buildCompositionLayer()V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 19
    .line 20
    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setComposition(Lcom/airbnb/lottie/LottieComposition;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getAnimatedFraction()F

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/LottieDrawable;->setProgress(F)V

    .line 30
    .line 31
    .line 32
    new-instance v1, Ljava/util/ArrayList;

    .line 33
    .line 34
    iget-object v2, p0, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_2

    .line 48
    .line 49
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Lcom/airbnb/lottie/LottieDrawable$LazyCompositionTask;

    .line 54
    .line 55
    if-eqz v2, :cond_1

    .line 56
    .line 57
    invoke-interface {v2, p1}, Lcom/airbnb/lottie/LottieDrawable$LazyCompositionTask;->run(Lcom/airbnb/lottie/LottieComposition;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 67
    .line 68
    .line 69
    iget-boolean v1, p0, Lcom/airbnb/lottie/LottieDrawable;->performanceTrackingEnabled:Z

    .line 70
    .line 71
    invoke-virtual {p1, v1}, Lcom/airbnb/lottie/LottieComposition;->setPerformanceTrackingEnabled(Z)V

    .line 72
    .line 73
    .line 74
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->computeRenderMode()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    instance-of v1, p1, Landroid/widget/ImageView;

    .line 82
    .line 83
    if-eqz v1, :cond_3

    .line 84
    .line 85
    check-cast p1, Landroid/widget/ImageView;

    .line 86
    .line 87
    const/4 v1, 0x0

    .line 88
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 92
    .line 93
    .line 94
    :cond_3
    return v0
.end method

.method public setDefaultFontFileExtension(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->defaultFontFileExtension:Ljava/lang/String;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->getFontAssetManager()Lcom/airbnb/lottie/manager/FontAssetManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/manager/FontAssetManager;->setDefaultFontFileExtension(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public setFontAssetDelegate(Lcom/airbnb/lottie/FontAssetDelegate;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->fontAssetDelegate:Lcom/airbnb/lottie/FontAssetDelegate;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->fontAssetManager:Lcom/airbnb/lottie/manager/FontAssetManager;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/manager/FontAssetManager;->setDelegate(Lcom/airbnb/lottie/FontAssetDelegate;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setFontMap(Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->fontMap:Ljava/util/Map;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->fontMap:Ljava/util/Map;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setFrame(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    .line 6
    .line 7
    new-instance v1, Lcom/airbnb/lottie/뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v1, p0, p1, v2}, Lcom/airbnb/lottie/뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫;-><init>(Lcom/airbnb/lottie/LottieDrawable;II)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 18
    .line 19
    int-to-float p1, p1

    .line 20
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setFrame(F)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public setIgnoreDisabledSystemAnimations(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieDrawable;->ignoreSystemAnimationsDisabled:Z

    .line 2
    .line 3
    return-void
.end method

.method public setImageAssetDelegate(Lcom/airbnb/lottie/ImageAssetDelegate;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetDelegate:Lcom/airbnb/lottie/ImageAssetDelegate;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetManager:Lcom/airbnb/lottie/manager/ImageAssetManager;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/manager/ImageAssetManager;->setDelegate(Lcom/airbnb/lottie/ImageAssetDelegate;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setImagesAssetsFolder(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetsFolder:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setMaintainOriginalImageBounds(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieDrawable;->maintainOriginalImageBounds:Z

    .line 2
    .line 3
    return-void
.end method

.method public setMaxFrame(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/airbnb/lottie/뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫;-><init>(Lcom/airbnb/lottie/LottieDrawable;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    int-to-float p1, p1

    const v1, 0x3f7d70a4    # 0.99f

    add-float/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setMaxFrame(F)V

    return-void
.end method

.method public setMaxFrame(Ljava/lang/String;)V
    .locals 4

    .line 4
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/airbnb/lottie/뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤;-><init>(Lcom/airbnb/lottie/LottieDrawable;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieComposition;->getMarker(Ljava/lang/String;)Lcom/airbnb/lottie/model/Marker;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    iget p1, v0, Lcom/airbnb/lottie/model/Marker;->startFrame:F

    iget v0, v0, Lcom/airbnb/lottie/model/Marker;->durationFrames:F

    add-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setMaxFrame(I)V

    return-void

    .line 8
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v3, 0x5

    new-array v3, v3, [J

    fill-array-data v3, :array_0

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x2

    new-array v2, v2, [J

    fill-array-data v2, :array_1

    invoke-direct {p1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 9
    invoke-static {p1, v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 8
        -0x322d43603381ce16L    # -7.892867004000836E66
        0x12ecf24ac9cc30L
        0x2ba09804aad597ddL    # 1.5173222739997594E-98
        0x5a9fd3f73fc9b136L    # 3.4472073196010734E128
        0x139844f9d740bd86L
    .end array-data

    :array_1
    .array-data 8
        -0x3b0ceb71c0f4aae2L    # -1.4416663676757532E24
        0x1cfb82e3f4e37076L    # 4.556101741478367E-169
    .end array-data
.end method

.method public setMaxProgress(F)V
    .locals 3
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    .line 6
    .line 7
    new-instance v1, Lcom/airbnb/lottie/뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-direct {v1, p0, p1, v2}, Lcom/airbnb/lottie/뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸;-><init>(Lcom/airbnb/lottie/LottieDrawable;FI)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getStartFrame()F

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget-object v2, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieComposition;->getEndFrame()F

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-static {v0, v2, p1}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setMaxFrame(F)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public setMinAndMaxFrame(II)V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨;

    invoke-direct {v1, p0, p1, p2}, Lcom/airbnb/lottie/뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨;-><init>(Lcom/airbnb/lottie/LottieDrawable;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    int-to-float p1, p1

    int-to-float p2, p2

    const v1, 0x3f7d70a4    # 0.99f

    add-float/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setMinAndMaxFrames(FF)V

    return-void
.end method

.method public setMinAndMaxFrame(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/airbnb/lottie/뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤;-><init>(Lcom/airbnb/lottie/LottieDrawable;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieComposition;->getMarker(Ljava/lang/String;)Lcom/airbnb/lottie/model/Marker;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget p1, v0, Lcom/airbnb/lottie/model/Marker;->startFrame:F

    float-to-int p1, p1

    .line 5
    iget v0, v0, Lcom/airbnb/lottie/model/Marker;->durationFrames:F

    float-to-int v0, v0

    add-int/2addr v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/airbnb/lottie/LottieDrawable;->setMinAndMaxFrame(II)V

    return-void

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v3, 0x5

    new-array v3, v3, [J

    fill-array-data v3, :array_0

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x2

    new-array v2, v2, [J

    fill-array-data v2, :array_1

    invoke-direct {p1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 7
    invoke-static {p1, v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 8
        -0x306c2eb2d731535eL    # -2.2409369235631656E75
        -0x5a649f3238b1e677L    # -1.579886128625788E-127
        -0x31a7c47ba08c0bf5L    # -2.6132264010296666E69
        0x2f390c231bbc77f3L    # 3.300684520986217E-81
        0x30bec76929c9cd06L    # 6.804791973085266E-74
    .end array-data

    :array_1
    .array-data 8
        0x51e4a2909e379fd6L    # 3.2069607906210825E86
        -0x2fa2d0cc07ba1cc6L    # -1.3517284457932588E79
    .end array-data
.end method

.method public setMinAndMaxFrame(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x5

    .line 12
    iget-object v2, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v2, :cond_0

    .line 13
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/airbnb/lottie/뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두;-><init>(Lcom/airbnb/lottie/LottieDrawable;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 14
    :cond_0
    invoke-virtual {v2, p1}, Lcom/airbnb/lottie/LottieComposition;->getMarker(Ljava/lang/String;)Lcom/airbnb/lottie/model/Marker;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 15
    iget p1, v2, Lcom/airbnb/lottie/model/Marker;->startFrame:F

    float-to-int p1, p1

    .line 16
    iget-object v2, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v2, p2}, Lcom/airbnb/lottie/LottieComposition;->getMarker(Ljava/lang/String;)Lcom/airbnb/lottie/model/Marker;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 17
    iget p2, v2, Lcom/airbnb/lottie/model/Marker;->startFrame:F

    if-eqz p3, :cond_1

    const/high16 p3, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    add-float/2addr p2, p3

    float-to-int p2, p2

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/LottieDrawable;->setMinAndMaxFrame(II)V

    return-void

    .line 19
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v0, [J

    fill-array-data v0, :array_1

    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 20
    invoke-static {p2, p3}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    .line 21
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    fill-array-data v1, :array_2

    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v0, [J

    fill-array-data v0, :array_3

    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 23
    invoke-static {p1, p3}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 24
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :array_0
    .array-data 8
        -0x9f97473e2fa5610L
        -0x320319085210d468L    # -4.870013894824866E67
        0x36581f345028daa3L    # 6.601947303724682E-47
        -0x41f1b33852742c92L    # -8.818437881762726E-10
        0x4e56ff640d1013bfL    # 2.4800584786313663E69
    .end array-data

    :array_1
    .array-data 8
        0x4eea3f689e8d9664L    # 1.4492391948789678E72
        0x32840a6f840421cbL    # 2.378730414184955E-65
    .end array-data

    :array_2
    .array-data 8
        0x3762c2ce5a987a22L    # 6.730164770171854E-42
        0x741fb087af06fefeL    # 2.2688864025363617E251
        0x7fa0d1efa6787271L    # 5.905724965703107E306
        -0x23e1ef113e3469c9L    # -5.463309281617647E135
        -0x63439d7339f0f3b3L    # -2.937993006058883E-170
    .end array-data

    :array_3
    .array-data 8
        -0x14e4fdde4590da3aL    # -8.671110308533076E207
        0x5b4ad98902788fd3L    # 5.955638351171264E131
    .end array-data
.end method

.method public setMinAndMaxProgress(FF)V
    .locals 2
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .param p2    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    .line 6
    .line 7
    new-instance v1, Lcom/airbnb/lottie/뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1, p2}, Lcom/airbnb/lottie/뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉;-><init>(Lcom/airbnb/lottie/LottieDrawable;FF)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getStartFrame()F

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieComposition;->getEndFrame()F

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-static {v0, v1, p1}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    float-to-int p1, p1

    .line 31
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getStartFrame()F

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieComposition;->getEndFrame()F

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    invoke-static {v0, v1, p2}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    float-to-int p2, p2

    .line 48
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/LottieDrawable;->setMinAndMaxFrame(II)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public setMinFrame(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, v2}, Lcom/airbnb/lottie/뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫;-><init>(Lcom/airbnb/lottie/LottieDrawable;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setMinFrame(I)V

    return-void
.end method

.method public setMinFrame(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x2

    .line 4
    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v2, Lcom/airbnb/lottie/뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤;

    invoke-direct {v2, p0, p1, v0}, Lcom/airbnb/lottie/뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤;-><init>(Lcom/airbnb/lottie/LottieDrawable;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 6
    :cond_0
    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/LottieComposition;->getMarker(Ljava/lang/String;)Lcom/airbnb/lottie/model/Marker;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7
    iget p1, v1, Lcom/airbnb/lottie/model/Marker;->startFrame:F

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setMinFrame(I)V

    return-void

    .line 8
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v4, 0x5

    new-array v4, v4, [J

    fill-array-data v4, :array_0

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v0, [J

    fill-array-data v0, :array_1

    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 9
    invoke-static {p1, v2}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :array_0
    .array-data 8
        0x1872c497478c0b6dL    # 6.581717081579437E-191
        0x1a38ab5ecb324772L
        -0x1cf2a3da4428c6b2L
        -0x6077de120e4afdd4L    # -8.788509940368869E-157
        0x49ff913482751f22L    # 2.883470338889335E48
    .end array-data

    :array_1
    .array-data 8
        0x5c5e71f8a39e0526L    # 8.851500184494322E136
        -0xe0cabc529a82a0L
    .end array-data
.end method

.method public setMinProgress(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    .line 6
    .line 7
    new-instance v1, Lcom/airbnb/lottie/뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸;

    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    invoke-direct {v1, p0, p1, v2}, Lcom/airbnb/lottie/뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸;-><init>(Lcom/airbnb/lottie/LottieDrawable;FI)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getStartFrame()F

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieComposition;->getEndFrame()F

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-static {v0, v1, p1}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    float-to-int p1, p1

    .line 32
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setMinFrame(I)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public setOutlineMasksAndMattes(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieDrawable;->outlineMasksAndMattes:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieDrawable;->outlineMasksAndMattes:Z

    .line 7
    .line 8
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/model/layer/CompositionLayer;->setOutlineMasksAndMattes(Z)V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method

.method public setPerformanceTrackingEnabled(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieDrawable;->performanceTrackingEnabled:Z

    .line 2
    .line 3
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieComposition;->setPerformanceTrackingEnabled(Z)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 3
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x4

    .line 2
    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    .line 7
    .line 8
    new-instance v1, Lcom/airbnb/lottie/뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {v1, p0, p1, v2}, Lcom/airbnb/lottie/뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸;-><init>(Lcom/airbnb/lottie/LottieDrawable;FI)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-static {}, Lcom/airbnb/lottie/L;->isTraceEnabled()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 25
    .line 26
    new-array v2, v0, [J

    .line 27
    .line 28
    fill-array-data v2, :array_0

    .line 29
    .line 30
    .line 31
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v1}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 42
    .line 43
    iget-object v2, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 44
    .line 45
    invoke-virtual {v2, p1}, Lcom/airbnb/lottie/LottieComposition;->getFrameForProgress(F)F

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setFrame(F)V

    .line 50
    .line 51
    .line 52
    invoke-static {}, Lcom/airbnb/lottie/L;->isTraceEnabled()Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_2

    .line 57
    .line 58
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 59
    .line 60
    new-array v0, v0, [J

    .line 61
    .line 62
    fill-array-data v0, :array_1

    .line 63
    .line 64
    .line 65
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-static {p1}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 73
    .line 74
    .line 75
    :cond_2
    return-void

    .line 76
    nop

    .line 77
    :array_0
    .array-data 8
        -0x177bf5875f271bb9L    # -2.9259337762743147E195
        -0x29e67d5084733ae4L    # -5.850827385737429E106
        -0x7603f5cff4798be3L
        -0x563e675f9da59edL
    .end array-data

    .line 78
    :array_1
    .array-data 8
        -0x6b977b2e08794db0L    # -2.330626936217127E-210
        0x56a2da5151ff40b0L    # 2.2138305735270683E109
        0x6d802a0bf07e0db0L
        0x4c4c2b84fb1b525eL    # 3.5365188512266985E59
    .end array-data
.end method

.method public setRenderMode(Lcom/airbnb/lottie/RenderMode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->renderMode:Lcom/airbnb/lottie/RenderMode;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->computeRenderMode()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setRepeatCount(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setRepeatMode(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setSafeMode(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieDrawable;->safeMode:Z

    .line 2
    .line 3
    return-void
.end method

.method public setSpeed(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setSpeed(F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setSystemAnimationsAreEnabled(Ljava/lang/Boolean;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieDrawable;->systemAnimationsEnabled:Z

    .line 6
    .line 7
    return-void
.end method

.method public setTextDelegate(Lcom/airbnb/lottie/TextDelegate;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->textDelegate:Lcom/airbnb/lottie/TextDelegate;

    .line 2
    .line 3
    return-void
.end method

.method public setUseCompositionFrameRate(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setUseCompositionFrameRate(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    iget-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->onVisibleAction:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    .line 12
    .line 13
    sget-object v0, Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;->PLAY:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    .line 14
    .line 15
    if-ne p1, v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->playAnimation()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    sget-object v0, Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;->RESUME:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    .line 22
    .line 23
    if-ne p1, v0, :cond_3

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->resumeAnimation()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isRunning()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->pauseAnimation()V

    .line 38
    .line 39
    .line 40
    sget-object p1, Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;->RESUME:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    .line 41
    .line 42
    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->onVisibleAction:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    if-eqz v0, :cond_3

    .line 46
    .line 47
    sget-object p1, Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;->NONE:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    .line 48
    .line 49
    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->onVisibleAction:Lcom/airbnb/lottie/LottieDrawable$OnVisibleAction;

    .line 50
    .line 51
    :cond_3
    :goto_0
    return p2
.end method

.method public start()V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroid/view/View;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Landroid/view/View;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->playAnimation()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public stop()V
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->endAnimation()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public updateBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->getImageAssetManager()Lcom/airbnb/lottie/manager/ImageAssetManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    const/16 p2, 0x10

    .line 10
    .line 11
    new-array p2, p2, [J

    .line 12
    .line 13
    fill-array-data p2, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p1}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    return-object p1

    .line 28
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/airbnb/lottie/manager/ImageAssetManager;->updateBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 33
    .line 34
    .line 35
    return-object p1

    .line 36
    nop

    .line 37
    :array_0
    .array-data 8
        -0x89889e92003f2e9L
        -0x10e403ab94d15daeL    # -1.6574191409853304E227
        0x1ab96e376f5d984eL
        -0x4d597a2864f172c9L    # -1.0693348694111183E-64
        0x72f8982944f9ccdfL    # 6.717263009855361E245
        -0x1dc9befb59ffcc45L    # -1.2815196789329466E165
        -0x31cfc1f3ab4038beL    # -4.378935814581407E68
        0x519041a98ab596acL    # 7.895245934855068E84
        -0x53a65ea4b9deb6f8L    # -4.799710587911766E-95
        -0x723941d1cabc96eL    # -1.537524372622843E274
        -0x7bda4763d57e3c68L
        0xdf90e6d07a07c05L
        -0x574e7412a64eec2fL
        0x199d2c1cd49e04bfL    # 2.681844376926576E-185
        0x311ad8813b45eb01L    # 3.798535036210026E-72
        0x4c36b9528c8d0702L    # 1.4264033160544737E59
    .end array-data
.end method

.method public useTextGlyphs()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->fontMap:Ljava/util/Map;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->textDelegate:Lcom/airbnb/lottie/TextDelegate;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getCharacters()Landroidx/collection/SparseArrayCompat;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-lez v0, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    return v0
.end method
