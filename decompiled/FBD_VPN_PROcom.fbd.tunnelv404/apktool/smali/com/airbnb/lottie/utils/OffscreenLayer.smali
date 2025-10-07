.class public Lcom/airbnb/lottie/utils/OffscreenLayer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/utils/OffscreenLayer$ComposeOp;,
        Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;
    }
.end annotation


# static fields
.field private static final IDENTITY_MATRIX:Landroid/graphics/Matrix;


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private bitmapCanvas:Landroid/graphics/Canvas;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private bitmapSrcRect:Landroid/graphics/Rect;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private clearPaint:Lcom/airbnb/lottie/animation/LPaint;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private composePaint:Landroid/graphics/Paint;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private currentStrategy:Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;

.field private intRectIncludingShadow:Landroid/graphics/Rect;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private lastRenderNodeShadow:Lcom/airbnb/lottie/utils/DropShadow;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private lastShadowBlurRadius:F

.field private op:Lcom/airbnb/lottie/utils/OffscreenLayer$ComposeOp;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private parentCanvas:Landroid/graphics/Canvas;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field parentCanvasMatrix:Landroid/graphics/Matrix;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field preExistingTransform:[F
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private rectIncludingShadow:Landroid/graphics/RectF;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private renderNode:Landroid/graphics/RenderNode;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private scaledBounds:Landroid/graphics/RectF;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private scaledRectIncludingShadow:Landroid/graphics/RectF;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private shadowBitmap:Landroid/graphics/Bitmap;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private shadowBitmapCanvas:Landroid/graphics/Canvas;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private shadowBitmapSrcRect:Landroid/graphics/Rect;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private shadowBlurFilter:Landroid/graphics/BlurMaskFilter;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private shadowMaskBitmap:Landroid/graphics/Bitmap;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private shadowMaskBitmapCanvas:Landroid/graphics/Canvas;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private shadowPaint:Lcom/airbnb/lottie/animation/LPaint;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private shadowRenderNode:Landroid/graphics/RenderNode;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private targetRect:Landroid/graphics/RectF;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private tmpRect:Landroid/graphics/RectF;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Matrix;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->lastShadowBlurRadius:F

    .line 6
    .line 7
    return-void
.end method

.method private allocateBitmap(Landroid/graphics/RectF;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    float-to-double v0, v0

    .line 6
    const-wide v2, 0x3ff0cccccccccccdL    # 1.05

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    mul-double v0, v0, v2

    .line 12
    .line 13
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    double-to-int v0, v0

    .line 18
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    float-to-double v4, p1

    .line 23
    mul-double v4, v4, v2

    .line 24
    .line 25
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    .line 26
    .line 27
    .line 28
    move-result-wide v1

    .line 29
    double-to-int p1, v1

    .line 30
    invoke-static {v0, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    return-object p1
.end method

.method private calculateRectIncludingShadow(Landroid/graphics/RectF;Lcom/airbnb/lottie/utils/DropShadow;)Landroid/graphics/RectF;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->rectIncludingShadow:Landroid/graphics/RectF;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/graphics/RectF;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->rectIncludingShadow:Landroid/graphics/RectF;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->tmpRect:Landroid/graphics/RectF;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    new-instance v0, Landroid/graphics/RectF;

    .line 17
    .line 18
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->tmpRect:Landroid/graphics/RectF;

    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->rectIncludingShadow:Landroid/graphics/RectF;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->rectIncludingShadow:Landroid/graphics/RectF;

    .line 29
    .line 30
    iget v1, p1, Landroid/graphics/RectF;->left:F

    .line 31
    .line 32
    invoke-virtual {p2}, Lcom/airbnb/lottie/utils/DropShadow;->getDx()F

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    add-float/2addr v2, v1

    .line 37
    iget v1, p1, Landroid/graphics/RectF;->top:F

    .line 38
    .line 39
    invoke-virtual {p2}, Lcom/airbnb/lottie/utils/DropShadow;->getDy()F

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    add-float/2addr v3, v1

    .line 44
    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->rectIncludingShadow:Landroid/graphics/RectF;

    .line 48
    .line 49
    invoke-virtual {p2}, Lcom/airbnb/lottie/utils/DropShadow;->getRadius()F

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    neg-float v1, v1

    .line 54
    invoke-virtual {p2}, Lcom/airbnb/lottie/utils/DropShadow;->getRadius()F

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    neg-float p2, p2

    .line 59
    invoke-virtual {v0, v1, p2}, Landroid/graphics/RectF;->inset(FF)V

    .line 60
    .line 61
    .line 62
    iget-object p2, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->tmpRect:Landroid/graphics/RectF;

    .line 63
    .line 64
    invoke-virtual {p2, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->rectIncludingShadow:Landroid/graphics/RectF;

    .line 68
    .line 69
    iget-object p2, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->tmpRect:Landroid/graphics/RectF;

    .line 70
    .line 71
    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->rectIncludingShadow:Landroid/graphics/RectF;

    .line 75
    .line 76
    return-object p1
.end method

.method private chooseRenderStrategy(Landroid/graphics/Canvas;Lcom/airbnb/lottie/utils/OffscreenLayer$ComposeOp;)Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/airbnb/lottie/utils/OffscreenLayer$ComposeOp;->isNoop()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object p1, Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;->DIRECT:Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    invoke-virtual {p2}, Lcom/airbnb/lottie/utils/OffscreenLayer$ComposeOp;->hasShadow()Z

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    if-nez p2, :cond_1

    .line 15
    .line 16
    sget-object p1, Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;->SAVE_LAYER:Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;

    .line 17
    .line 18
    return-object p1

    .line 19
    :cond_1
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 20
    .line 21
    const/16 v0, 0x1d

    .line 22
    .line 23
    if-lt p2, v0, :cond_4

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_2

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    const/16 p1, 0x1f

    .line 33
    .line 34
    if-gt p2, p1, :cond_3

    .line 35
    .line 36
    sget-object p1, Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;->BITMAP:Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;

    .line 37
    .line 38
    return-object p1

    .line 39
    :cond_3
    sget-object p1, Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;->RENDER_NODE:Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;

    .line 40
    .line 41
    return-object p1

    .line 42
    :cond_4
    :goto_0
    sget-object p1, Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;->BITMAP:Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;

    .line 43
    .line 44
    return-object p1
.end method

.method private deallocateBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private needNewBitmap(Landroid/graphics/Bitmap;Landroid/graphics/RectF;)Z
    .locals 4
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    int-to-float v2, v2

    .line 14
    cmpl-float v1, v1, v2

    .line 15
    .line 16
    if-gez v1, :cond_3

    .line 17
    .line 18
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    int-to-float v2, v2

    .line 27
    cmpl-float v1, v1, v2

    .line 28
    .line 29
    if-ltz v1, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    int-to-float v2, v2

    .line 41
    const/high16 v3, 0x3f400000    # 0.75f

    .line 42
    .line 43
    mul-float v2, v2, v3

    .line 44
    .line 45
    cmpg-float v1, v1, v2

    .line 46
    .line 47
    if-ltz v1, :cond_3

    .line 48
    .line 49
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    int-to-float p1, p1

    .line 58
    mul-float p1, p1, v3

    .line 59
    .line 60
    cmpg-float p1, p2, p1

    .line 61
    .line 62
    if-gez p1, :cond_2

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    const/4 v0, 0x0

    .line 66
    :cond_3
    :goto_0
    return v0
.end method

.method private renderBitmapShadow(Landroid/graphics/Canvas;Lcom/airbnb/lottie/utils/DropShadow;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->targetRect:Landroid/graphics/RectF;

    .line 2
    .line 3
    if-eqz v0, :cond_f

    .line 4
    .line 5
    iget-object v1, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->bitmap:Landroid/graphics/Bitmap;

    .line 6
    .line 7
    if-eqz v1, :cond_f

    .line 8
    .line 9
    invoke-direct {p0, v0, p2}, Lcom/airbnb/lottie/utils/OffscreenLayer;->calculateRectIncludingShadow(Landroid/graphics/RectF;Lcom/airbnb/lottie/utils/DropShadow;)Landroid/graphics/RectF;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->intRectIncludingShadow:Landroid/graphics/Rect;

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    new-instance v1, Landroid/graphics/Rect;

    .line 18
    .line 19
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->intRectIncludingShadow:Landroid/graphics/Rect;

    .line 23
    .line 24
    :cond_0
    iget-object v1, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->intRectIncludingShadow:Landroid/graphics/Rect;

    .line 25
    .line 26
    iget v2, v0, Landroid/graphics/RectF;->left:F

    .line 27
    .line 28
    float-to-double v2, v2

    .line 29
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    .line 30
    .line 31
    .line 32
    move-result-wide v2

    .line 33
    double-to-int v2, v2

    .line 34
    iget v3, v0, Landroid/graphics/RectF;->top:F

    .line 35
    .line 36
    float-to-double v3, v3

    .line 37
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    .line 38
    .line 39
    .line 40
    move-result-wide v3

    .line 41
    double-to-int v3, v3

    .line 42
    iget v4, v0, Landroid/graphics/RectF;->right:F

    .line 43
    .line 44
    float-to-double v4, v4

    .line 45
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    .line 46
    .line 47
    .line 48
    move-result-wide v4

    .line 49
    double-to-int v4, v4

    .line 50
    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    .line 51
    .line 52
    float-to-double v5, v5

    .line 53
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    .line 54
    .line 55
    .line 56
    move-result-wide v5

    .line 57
    double-to-int v5, v5

    .line 58
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->preExistingTransform:[F

    .line 62
    .line 63
    const/high16 v2, 0x3f800000    # 1.0f

    .line 64
    .line 65
    const/4 v3, 0x0

    .line 66
    if-eqz v1, :cond_1

    .line 67
    .line 68
    aget v4, v1, v3

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    const/high16 v4, 0x3f800000    # 1.0f

    .line 72
    .line 73
    :goto_0
    if-eqz v1, :cond_2

    .line 74
    .line 75
    const/4 v2, 0x4

    .line 76
    aget v2, v1, v2

    .line 77
    .line 78
    :cond_2
    iget-object v1, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->scaledRectIncludingShadow:Landroid/graphics/RectF;

    .line 79
    .line 80
    if-nez v1, :cond_3

    .line 81
    .line 82
    new-instance v1, Landroid/graphics/RectF;

    .line 83
    .line 84
    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 85
    .line 86
    .line 87
    iput-object v1, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->scaledRectIncludingShadow:Landroid/graphics/RectF;

    .line 88
    .line 89
    :cond_3
    iget-object v1, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->scaledRectIncludingShadow:Landroid/graphics/RectF;

    .line 90
    .line 91
    iget v5, v0, Landroid/graphics/RectF;->left:F

    .line 92
    .line 93
    mul-float v5, v5, v4

    .line 94
    .line 95
    iget v6, v0, Landroid/graphics/RectF;->top:F

    .line 96
    .line 97
    mul-float v6, v6, v2

    .line 98
    .line 99
    iget v7, v0, Landroid/graphics/RectF;->right:F

    .line 100
    .line 101
    mul-float v7, v7, v4

    .line 102
    .line 103
    iget v8, v0, Landroid/graphics/RectF;->bottom:F

    .line 104
    .line 105
    mul-float v8, v8, v2

    .line 106
    .line 107
    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 108
    .line 109
    .line 110
    iget-object v1, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowBitmapSrcRect:Landroid/graphics/Rect;

    .line 111
    .line 112
    if-nez v1, :cond_4

    .line 113
    .line 114
    new-instance v1, Landroid/graphics/Rect;

    .line 115
    .line 116
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 117
    .line 118
    .line 119
    iput-object v1, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowBitmapSrcRect:Landroid/graphics/Rect;

    .line 120
    .line 121
    :cond_4
    iget-object v1, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowBitmapSrcRect:Landroid/graphics/Rect;

    .line 122
    .line 123
    iget-object v5, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->scaledRectIncludingShadow:Landroid/graphics/RectF;

    .line 124
    .line 125
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    .line 126
    .line 127
    .line 128
    move-result v5

    .line 129
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 130
    .line 131
    .line 132
    move-result v5

    .line 133
    iget-object v6, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->scaledRectIncludingShadow:Landroid/graphics/RectF;

    .line 134
    .line 135
    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    .line 136
    .line 137
    .line 138
    move-result v6

    .line 139
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 140
    .line 141
    .line 142
    move-result v6

    .line 143
    invoke-virtual {v1, v3, v3, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 144
    .line 145
    .line 146
    iget-object v1, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowBitmap:Landroid/graphics/Bitmap;

    .line 147
    .line 148
    iget-object v3, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->scaledRectIncludingShadow:Landroid/graphics/RectF;

    .line 149
    .line 150
    invoke-direct {p0, v1, v3}, Lcom/airbnb/lottie/utils/OffscreenLayer;->needNewBitmap(Landroid/graphics/Bitmap;Landroid/graphics/RectF;)Z

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    if-eqz v1, :cond_7

    .line 155
    .line 156
    iget-object v1, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowBitmap:Landroid/graphics/Bitmap;

    .line 157
    .line 158
    if-eqz v1, :cond_5

    .line 159
    .line 160
    invoke-direct {p0, v1}, Lcom/airbnb/lottie/utils/OffscreenLayer;->deallocateBitmap(Landroid/graphics/Bitmap;)V

    .line 161
    .line 162
    .line 163
    :cond_5
    iget-object v1, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowMaskBitmap:Landroid/graphics/Bitmap;

    .line 164
    .line 165
    if-eqz v1, :cond_6

    .line 166
    .line 167
    invoke-direct {p0, v1}, Lcom/airbnb/lottie/utils/OffscreenLayer;->deallocateBitmap(Landroid/graphics/Bitmap;)V

    .line 168
    .line 169
    .line 170
    :cond_6
    iget-object v1, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->scaledRectIncludingShadow:Landroid/graphics/RectF;

    .line 171
    .line 172
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 173
    .line 174
    invoke-direct {p0, v1, v3}, Lcom/airbnb/lottie/utils/OffscreenLayer;->allocateBitmap(Landroid/graphics/RectF;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    iput-object v1, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowBitmap:Landroid/graphics/Bitmap;

    .line 179
    .line 180
    iget-object v1, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->scaledRectIncludingShadow:Landroid/graphics/RectF;

    .line 181
    .line 182
    sget-object v3, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    .line 183
    .line 184
    invoke-direct {p0, v1, v3}, Lcom/airbnb/lottie/utils/OffscreenLayer;->allocateBitmap(Landroid/graphics/RectF;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    iput-object v1, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowMaskBitmap:Landroid/graphics/Bitmap;

    .line 189
    .line 190
    new-instance v1, Landroid/graphics/Canvas;

    .line 191
    .line 192
    iget-object v3, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowBitmap:Landroid/graphics/Bitmap;

    .line 193
    .line 194
    invoke-direct {v1, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 195
    .line 196
    .line 197
    iput-object v1, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowBitmapCanvas:Landroid/graphics/Canvas;

    .line 198
    .line 199
    new-instance v1, Landroid/graphics/Canvas;

    .line 200
    .line 201
    iget-object v3, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowMaskBitmap:Landroid/graphics/Bitmap;

    .line 202
    .line 203
    invoke-direct {v1, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 204
    .line 205
    .line 206
    iput-object v1, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowMaskBitmapCanvas:Landroid/graphics/Canvas;

    .line 207
    .line 208
    goto :goto_1

    .line 209
    :cond_7
    iget-object v1, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowBitmapCanvas:Landroid/graphics/Canvas;

    .line 210
    .line 211
    if-eqz v1, :cond_e

    .line 212
    .line 213
    iget-object v3, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowMaskBitmapCanvas:Landroid/graphics/Canvas;

    .line 214
    .line 215
    if-eqz v3, :cond_e

    .line 216
    .line 217
    iget-object v3, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->clearPaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 218
    .line 219
    if-eqz v3, :cond_e

    .line 220
    .line 221
    iget-object v5, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowBitmapSrcRect:Landroid/graphics/Rect;

    .line 222
    .line 223
    invoke-virtual {v1, v5, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 224
    .line 225
    .line 226
    iget-object v1, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowMaskBitmapCanvas:Landroid/graphics/Canvas;

    .line 227
    .line 228
    iget-object v3, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowBitmapSrcRect:Landroid/graphics/Rect;

    .line 229
    .line 230
    iget-object v5, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->clearPaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 231
    .line 232
    invoke-virtual {v1, v3, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 233
    .line 234
    .line 235
    :goto_1
    iget-object v1, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowMaskBitmap:Landroid/graphics/Bitmap;

    .line 236
    .line 237
    if-eqz v1, :cond_d

    .line 238
    .line 239
    iget-object v1, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowPaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 240
    .line 241
    const/4 v3, 0x1

    .line 242
    if-nez v1, :cond_8

    .line 243
    .line 244
    new-instance v1, Lcom/airbnb/lottie/animation/LPaint;

    .line 245
    .line 246
    invoke-direct {v1, v3}, Lcom/airbnb/lottie/animation/LPaint;-><init>(I)V

    .line 247
    .line 248
    .line 249
    iput-object v1, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowPaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 250
    .line 251
    :cond_8
    iget-object v1, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->targetRect:Landroid/graphics/RectF;

    .line 252
    .line 253
    iget v5, v1, Landroid/graphics/RectF;->left:F

    .line 254
    .line 255
    iget v6, v0, Landroid/graphics/RectF;->left:F

    .line 256
    .line 257
    sub-float/2addr v5, v6

    .line 258
    iget v1, v1, Landroid/graphics/RectF;->top:F

    .line 259
    .line 260
    iget v0, v0, Landroid/graphics/RectF;->top:F

    .line 261
    .line 262
    sub-float/2addr v1, v0

    .line 263
    iget-object v0, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowMaskBitmapCanvas:Landroid/graphics/Canvas;

    .line 264
    .line 265
    iget-object v6, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->bitmap:Landroid/graphics/Bitmap;

    .line 266
    .line 267
    mul-float v5, v5, v4

    .line 268
    .line 269
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 270
    .line 271
    .line 272
    move-result v5

    .line 273
    int-to-float v5, v5

    .line 274
    mul-float v1, v1, v2

    .line 275
    .line 276
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 277
    .line 278
    .line 279
    move-result v1

    .line 280
    int-to-float v1, v1

    .line 281
    const/4 v7, 0x0

    .line 282
    invoke-virtual {v0, v6, v5, v1, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 283
    .line 284
    .line 285
    iget-object v0, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowBlurFilter:Landroid/graphics/BlurMaskFilter;

    .line 286
    .line 287
    const/4 v1, 0x0

    .line 288
    if-eqz v0, :cond_9

    .line 289
    .line 290
    iget v0, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->lastShadowBlurRadius:F

    .line 291
    .line 292
    invoke-virtual {p2}, Lcom/airbnb/lottie/utils/DropShadow;->getRadius()F

    .line 293
    .line 294
    .line 295
    move-result v5

    .line 296
    cmpl-float v0, v0, v5

    .line 297
    .line 298
    if-eqz v0, :cond_b

    .line 299
    .line 300
    :cond_9
    invoke-virtual {p2}, Lcom/airbnb/lottie/utils/DropShadow;->getRadius()F

    .line 301
    .line 302
    .line 303
    move-result v0

    .line 304
    add-float v5, v4, v2

    .line 305
    .line 306
    mul-float v5, v5, v0

    .line 307
    .line 308
    const/high16 v0, 0x40000000    # 2.0f

    .line 309
    .line 310
    div-float/2addr v5, v0

    .line 311
    cmpl-float v0, v5, v1

    .line 312
    .line 313
    if-lez v0, :cond_a

    .line 314
    .line 315
    new-instance v0, Landroid/graphics/BlurMaskFilter;

    .line 316
    .line 317
    sget-object v6, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    .line 318
    .line 319
    invoke-direct {v0, v5, v6}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    .line 320
    .line 321
    .line 322
    iput-object v0, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowBlurFilter:Landroid/graphics/BlurMaskFilter;

    .line 323
    .line 324
    goto :goto_2

    .line 325
    :cond_a
    iput-object v7, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowBlurFilter:Landroid/graphics/BlurMaskFilter;

    .line 326
    .line 327
    :goto_2
    invoke-virtual {p2}, Lcom/airbnb/lottie/utils/DropShadow;->getRadius()F

    .line 328
    .line 329
    .line 330
    move-result v0

    .line 331
    iput v0, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->lastShadowBlurRadius:F

    .line 332
    .line 333
    :cond_b
    iget-object v0, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowPaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 334
    .line 335
    invoke-virtual {p2}, Lcom/airbnb/lottie/utils/DropShadow;->getColor()I

    .line 336
    .line 337
    .line 338
    move-result v5

    .line 339
    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {p2}, Lcom/airbnb/lottie/utils/DropShadow;->getRadius()F

    .line 343
    .line 344
    .line 345
    move-result v0

    .line 346
    cmpl-float v0, v0, v1

    .line 347
    .line 348
    if-lez v0, :cond_c

    .line 349
    .line 350
    iget-object v0, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowPaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 351
    .line 352
    iget-object v1, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowBlurFilter:Landroid/graphics/BlurMaskFilter;

    .line 353
    .line 354
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 355
    .line 356
    .line 357
    goto :goto_3

    .line 358
    :cond_c
    iget-object v0, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowPaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 359
    .line 360
    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 361
    .line 362
    .line 363
    :goto_3
    iget-object v0, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowPaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 364
    .line 365
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 366
    .line 367
    .line 368
    iget-object v0, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowBitmapCanvas:Landroid/graphics/Canvas;

    .line 369
    .line 370
    iget-object v1, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowMaskBitmap:Landroid/graphics/Bitmap;

    .line 371
    .line 372
    invoke-virtual {p2}, Lcom/airbnb/lottie/utils/DropShadow;->getDx()F

    .line 373
    .line 374
    .line 375
    move-result v3

    .line 376
    mul-float v3, v3, v4

    .line 377
    .line 378
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 379
    .line 380
    .line 381
    move-result v3

    .line 382
    int-to-float v3, v3

    .line 383
    invoke-virtual {p2}, Lcom/airbnb/lottie/utils/DropShadow;->getDy()F

    .line 384
    .line 385
    .line 386
    move-result p2

    .line 387
    mul-float p2, p2, v2

    .line 388
    .line 389
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 390
    .line 391
    .line 392
    move-result p2

    .line 393
    int-to-float p2, p2

    .line 394
    iget-object v2, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowPaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 395
    .line 396
    invoke-virtual {v0, v1, v3, p2, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 397
    .line 398
    .line 399
    iget-object p2, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowBitmap:Landroid/graphics/Bitmap;

    .line 400
    .line 401
    iget-object v0, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowBitmapSrcRect:Landroid/graphics/Rect;

    .line 402
    .line 403
    iget-object v1, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->intRectIncludingShadow:Landroid/graphics/Rect;

    .line 404
    .line 405
    iget-object v2, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->composePaint:Landroid/graphics/Paint;

    .line 406
    .line 407
    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 408
    .line 409
    .line 410
    return-void

    .line 411
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 412
    .line 413
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 414
    .line 415
    const/4 v0, 0x7

    .line 416
    new-array v0, v0, [J

    .line 417
    .line 418
    fill-array-data v0, :array_0

    .line 419
    .line 420
    .line 421
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object p2

    .line 428
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    throw p1

    .line 432
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 433
    .line 434
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 435
    .line 436
    const/16 v0, 0xb

    .line 437
    .line 438
    new-array v0, v0, [J

    .line 439
    .line 440
    fill-array-data v0, :array_1

    .line 441
    .line 442
    .line 443
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 444
    .line 445
    .line 446
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object p2

    .line 450
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 451
    .line 452
    .line 453
    throw p1

    .line 454
    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 455
    .line 456
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 457
    .line 458
    const/16 v0, 0x8

    .line 459
    .line 460
    new-array v0, v0, [J

    .line 461
    .line 462
    fill-array-data v0, :array_2

    .line 463
    .line 464
    .line 465
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 466
    .line 467
    .line 468
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object p2

    .line 472
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 473
    .line 474
    .line 475
    throw p1

    .line 476
    nop

    .line 477
    :array_0
    .array-data 8
        -0x519dc2c9369051c6L
        -0x7ecc938a4b9721c4L
        0x218fe4808a0bef68L    # 4.988406874956932E-147
        -0x4b923f459ce6d8c7L    # -3.791921214053615E-56
        -0x56ac3ef3b995cf93L
        0x494c33b4bc8f6aeL
        -0x3cd1f396f4d6120eL    # -4.228947299858169E15
    .end array-data

    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    :array_1
    .array-data 8
        0x6f11204b8b261e6L
        -0x5b6398b3542c4be9L
        0x4831922c69654a59L    # 5.97909812378039E39
        0x7fa4f36b23761840L    # 7.356094844470769E306
        -0x780fbe205eb19582L    # -1.923325628085048E-270
        -0x6d9f90891c207aefL    # -3.637421793438126E-220
        -0x1933018f3f976511L    # -1.5769360459751453E187
        -0x49e05f8cabdd022L
        -0x3ef1899cc5bb06d4L    # -249548.40345186868
        -0x33c874c7dc1b010bL    # -1.4778698716090502E59
        0x35b25c8510667bdfL    # 4.907571637141086E-50
    .end array-data

    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    :array_2
    .array-data 8
        0x661e8d71c926bee4L    # 8.113801405635235E183
        -0x2414d36d759c5bbeL    # -6.172248811328898E134
        0x29e48cf2b1106bfeL    # 7.00028292662311E-107
        0x74be98e786f0212aL    # 2.243257965926867E254
        0xbe99d26074f9015L
        0x2a09e3a77f43a9a6L
        0x74e0547d6e1ffaacL    # 9.577972027445396E254
        0x507805193fe2897eL    # 4.450106108852115E79
    .end array-data
.end method

.method private renderHardwareShadow(Landroid/graphics/Canvas;Lcom/airbnb/lottie/utils/DropShadow;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->renderNode:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    iget-object v0, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowRenderNode:Landroid/graphics/RenderNode;

    .line 6
    .line 7
    if-eqz v0, :cond_6

    .line 8
    .line 9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    .line 11
    const/16 v1, 0x1f

    .line 12
    .line 13
    if-lt v0, v1, :cond_5

    .line 14
    .line 15
    iget-object v0, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->preExistingTransform:[F

    .line 16
    .line 17
    const/high16 v1, 0x3f800000    # 1.0f

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    aget v2, v0, v2

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    .line 26
    .line 27
    :goto_0
    if-eqz v0, :cond_1

    .line 28
    .line 29
    const/4 v1, 0x4

    .line 30
    aget v1, v0, v1

    .line 31
    .line 32
    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->lastRenderNodeShadow:Lcom/airbnb/lottie/utils/DropShadow;

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/utils/DropShadow;->sameAs(Lcom/airbnb/lottie/utils/DropShadow;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_4

    .line 41
    .line 42
    :cond_2
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    .line 43
    .line 44
    invoke-virtual {p2}, Lcom/airbnb/lottie/utils/DropShadow;->getColor()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 49
    .line 50
    invoke-direct {v0, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 51
    .line 52
    .line 53
    invoke-static {v0}, L돨뎻듐뎠뎽둔돶뒨뒐돨듌돶도땪딤뒬딌딟두딤듌땲되뒤됫땫됴뒹땲땤뎻땤땹돷될뎽땨딅땭둣뒀듬돷땮땱됐뎹딸땸땣뒹뒬딐땫둠뒤뎻뒨듨뎠딅딸땁딁뒐뎬땱듬든딨듨된뎠땍따둡땁땹됩둘딌둣땹땧듼땠땜땨땠땳뒼땐땟뎽땋돝듸뒼뎠땀딝든땍듽땠듟듸뎰딀땯땍뒛땮뎬듌둬듐듼뎰딎된들돛뎬듽딀딀딃돝땵;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(Landroid/graphics/PorterDuffColorFilter;)Landroid/graphics/RenderEffect;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {p2}, Lcom/airbnb/lottie/utils/DropShadow;->getRadius()F

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    const/4 v4, 0x0

    .line 62
    cmpl-float v3, v3, v4

    .line 63
    .line 64
    if-lez v3, :cond_3

    .line 65
    .line 66
    invoke-virtual {p2}, Lcom/airbnb/lottie/utils/DropShadow;->getRadius()F

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    add-float v4, v2, v1

    .line 71
    .line 72
    mul-float v4, v4, v3

    .line 73
    .line 74
    const/high16 v3, 0x40000000    # 2.0f

    .line 75
    .line 76
    div-float/2addr v4, v3

    .line 77
    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 78
    .line 79
    invoke-static {v4, v4, v0, v3}, L돨뎻듐뎠뎽둔돶뒨뒐돨듌돶도땪딤뒬딌딟두딤듌땲되뒤됫땫됴뒹땲땤뎻땤땹돷될뎽땨딅땭둣뒀듬돷땮땱됐뎹딸땸땣뒹뒬딐땫둠뒤뎻뒨듨뎠딅딸땁딁뒐뎬땱듬든딨듨된뎠땍따둡땁땹됩둘딌둣땹땧듼땠땜땨땠땳뒼땐땟뎽땋돝듸뒼뎠땀딝든땍듽땠듟듸뎰딀땯땍뒛땮뎬듌둬듐듼뎰딎된들돛뎬듽딀딀딃돝땵;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(FFLandroid/graphics/RenderEffect;Landroid/graphics/Shader$TileMode;)Landroid/graphics/RenderEffect;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    :cond_3
    iget-object v3, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowRenderNode:Landroid/graphics/RenderNode;

    .line 84
    .line 85
    invoke-static {v3, v0}, L돨뎻듐뎠뎽둔돶뒨뒐돨듌돶도땪딤뒬딌딟두딤듌땲되뒤됫땫됴뒹땲땤뎻땤땹돷될뎽땨딅땭둣뒀듬돷땮땱됐뎹딸땸땣뒹뒬딐땫둠뒤뎻뒨듨뎠딅딸땁딁뒐뎬땱듬든딨듨된뎠땍따둡땁땹됩둘딌둣땹땧듼땠땜땨땠땳뒼땐땟뎽땋돝듸뒼뎠땀딝든땍듽땠듟듸뎰딀땯땍뒛땮뎬듌둬듐듼뎰딎된들돛뎬듽딀딀딃돝땵;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Landroid/graphics/RenderNode;Landroid/graphics/RenderEffect;)V

    .line 86
    .line 87
    .line 88
    iput-object p2, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->lastRenderNodeShadow:Lcom/airbnb/lottie/utils/DropShadow;

    .line 89
    .line 90
    :cond_4
    iget-object v0, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->targetRect:Landroid/graphics/RectF;

    .line 91
    .line 92
    invoke-direct {p0, v0, p2}, Lcom/airbnb/lottie/utils/OffscreenLayer;->calculateRectIncludingShadow(Landroid/graphics/RectF;Lcom/airbnb/lottie/utils/DropShadow;)Landroid/graphics/RectF;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    new-instance v3, Landroid/graphics/RectF;

    .line 97
    .line 98
    iget v4, v0, Landroid/graphics/RectF;->left:F

    .line 99
    .line 100
    mul-float v4, v4, v2

    .line 101
    .line 102
    iget v5, v0, Landroid/graphics/RectF;->top:F

    .line 103
    .line 104
    mul-float v5, v5, v1

    .line 105
    .line 106
    iget v6, v0, Landroid/graphics/RectF;->right:F

    .line 107
    .line 108
    mul-float v6, v6, v2

    .line 109
    .line 110
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    .line 111
    .line 112
    mul-float v0, v0, v1

    .line 113
    .line 114
    invoke-direct {v3, v4, v5, v6, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowRenderNode:Landroid/graphics/RenderNode;

    .line 118
    .line 119
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    .line 120
    .line 121
    .line 122
    move-result v4

    .line 123
    float-to-int v4, v4

    .line 124
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    .line 125
    .line 126
    .line 127
    move-result v5

    .line 128
    float-to-int v5, v5

    .line 129
    invoke-static {v0, v4, v5}, L딄땣뒻땃땀돶뎠됐땃뎸둬돝땅뒋땭들뒵뎠땝땳돨땋돨든듻땪딟딐뒘뒀땥뒐땻땠딻땬돠땀될돷도딻돸딁뒝돤땍땃딌뒐됐뒨땳땫둥둥뒈딅땅뎸둑둠되돸뒐땲뒀돰뒈땁도딀땯딄땥뎰딤땃됴땍되딞땳뒹딌딞딟돛됫뒾돨딀듰딹돳땅딎뒹땪땃둥땟땫땥뒘땀땳뎰땀뒐되땧땜뒻둥땀땐땐돨딌뒼땫뒙둡땯둑돰듻땳땃;->뎨딠땱땯딃땯땪됨땧돛돳뒹됴뎹될디든땣뒐돳돤든둔뒻땰됨뒻땤듰딄됨뒘땀딃둬둥둔딻돴땡땡될딠딨뎰땭됩딀두뒘딠득뒝딞딹땁됩땨땫된둣땳둑땁뒈땳땠도든딹뎡돼되뎸땨뎬딤딐돴땧돝딄땫듬뒉딟땋딐돼뎻딅땀돶둡디돶득되둔딝땪뎬뒛땟뒋돰돤됨돳땭돳됐뎰듻땃듬듻돷듸뒤딟땃도뎸돸딁딹땯뒙듐(Landroid/graphics/RenderNode;II)V

    .line 130
    .line 131
    .line 132
    iget-object v0, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowRenderNode:Landroid/graphics/RenderNode;

    .line 133
    .line 134
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    .line 135
    .line 136
    .line 137
    move-result v4

    .line 138
    float-to-int v4, v4

    .line 139
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    .line 140
    .line 141
    .line 142
    move-result v5

    .line 143
    float-to-int v5, v5

    .line 144
    invoke-static {v0, v4, v5}, L딄땣뒻땃땀돶뎠됐땃뎸둬돝땅뒋땭들뒵뎠땝땳돨땋돨든듻땪딟딐뒘뒀땥뒐땻땠딻땬돠땀될돷도딻돸딁뒝돤땍땃딌뒐됐뒨땳땫둥둥뒈딅땅뎸둑둠되돸뒐땲뒀돰뒈땁도딀땯딄땥뎰딤땃됴땍되딞땳뒹딌딞딟돛됫뒾돨딀듰딹돳땅딎뒹땪땃둥땟땫땥뒘땀땳뎰땀뒐되땧땜뒻둥땀땐땐돨딌뒼땫뒙둡땯둑돰듻땳땃;->뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋(Landroid/graphics/RenderNode;II)Landroid/graphics/RecordingCanvas;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    iget v4, v3, Landroid/graphics/RectF;->left:F

    .line 149
    .line 150
    neg-float v4, v4

    .line 151
    invoke-virtual {p2}, Lcom/airbnb/lottie/utils/DropShadow;->getDx()F

    .line 152
    .line 153
    .line 154
    move-result v5

    .line 155
    mul-float v5, v5, v2

    .line 156
    .line 157
    add-float/2addr v5, v4

    .line 158
    iget v2, v3, Landroid/graphics/RectF;->top:F

    .line 159
    .line 160
    neg-float v2, v2

    .line 161
    invoke-virtual {p2}, Lcom/airbnb/lottie/utils/DropShadow;->getDy()F

    .line 162
    .line 163
    .line 164
    move-result p2

    .line 165
    mul-float p2, p2, v1

    .line 166
    .line 167
    add-float/2addr p2, v2

    .line 168
    invoke-virtual {v0, v5, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 169
    .line 170
    .line 171
    iget-object p2, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->renderNode:Landroid/graphics/RenderNode;

    .line 172
    .line 173
    invoke-static {v0, p2}, L딄땣뒻땃땀돶뎠됐땃뎸둬돝땅뒋땭들뒵뎠땝땳돨땋돨든듻땪딟딐뒘뒀땥뒐땻땠딻땬돠땀될돷도딻돸딁뒝돤땍땃딌뒐됐뒨땳땫둥둥뒈딅땅뎸둑둠되돸뒐땲뒀돰뒈땁도딀땯딄땥뎰딤땃됴땍되딞땳뒹딌딞딟돛됫뒾돨딀듰딹돳땅딎뒹땪땃둥땟땫땥뒘땀땳뎰땀뒐되땧땜뒻둥땀땐땐돨딌뒼땫뒙둡땯둑돰듻땳땃;->뎨뒋딝뒘땻땭땳뒨돵뒋땡돛딟따뒷땮돴딤딃들땡돸땀뒘돳뎹됩둑딠뒬딤뎸땁뒙뒾딽딄뒷뒘땯도두뎠돸돤뒝돼뒵땳땰딅든뒻뒘땰땯땅뒼돤딃두딁땔듌뒵뎸돷뒘됴딻듔땬돵돼둔땸돨땧돝땲땧땥돛뒼뒋땨돶땮도땁돳듔돳뒈돨딟땨뎹딽둡뒤땐뒘뎡땃땯딐딄뒐땧뒤딹뒬딃땋뎽땮딅뎽뎻딞땡땮뎽뒙듟뎡뎹뒐딁(Landroid/graphics/Canvas;Landroid/graphics/RenderNode;)V

    .line 174
    .line 175
    .line 176
    iget-object p2, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowRenderNode:Landroid/graphics/RenderNode;

    .line 177
    .line 178
    invoke-static {p2}, L딄땣뒻땃땀돶뎠됐땃뎸둬돝땅뒋땭들뒵뎠땝땳돨땋돨든듻땪딟딐뒘뒀땥뒐땻땠딻땬돠땀될돷도딻돸딁뒝돤땍땃딌뒐됐뒨땳땫둥둥뒈딅땅뎸둑둠되돸뒐땲뒀돰뒈땁도딀땯딄땥뎰딤땃됴땍되딞땳뒹딌딞딟돛됫뒾돨딀듰딹돳땅딎뒹땪땃둥땟땫땥뒘땀땳뎰땀뒐되땧땜뒻둥땀땐땐돨딌뒼땫뒙둡땯둑돰듻땳땃;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Landroid/graphics/RenderNode;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 182
    .line 183
    .line 184
    iget p2, v3, Landroid/graphics/RectF;->left:F

    .line 185
    .line 186
    iget v0, v3, Landroid/graphics/RectF;->top:F

    .line 187
    .line 188
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 189
    .line 190
    .line 191
    iget-object p2, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowRenderNode:Landroid/graphics/RenderNode;

    .line 192
    .line 193
    invoke-static {p1, p2}, L딄땣뒻땃땀돶뎠됐땃뎸둬돝땅뒋땭들뒵뎠땝땳돨땋돨든듻땪딟딐뒘뒀땥뒐땻땠딻땬돠땀될돷도딻돸딁뒝돤땍땃딌뒐됐뒨땳땫둥둥뒈딅땅뎸둑둠되돸뒐땲뒀돰뒈땁도딀땯딄땥뎰딤땃됴땍되딞땳뒹딌딞딟돛됫뒾돨딀듰딹돳땅딎뒹땪땃둥땟땫땥뒘땀땳뎰땀뒐되땧땜뒻둥땀땐땐돨딌뒼땫뒙둡땯둑돰듻땳땃;->뎨뒋딝뒘땻땭땳뒨돵뒋땡돛딟따뒷땮돴딤딃들땡돸땀뒘돳뎹됩둑딠뒬딤뎸땁뒙뒾딽딄뒷뒘땯도두뎠돸돤뒝돼뒵땳땰딅든뒻뒘땰땯땅뒼돤딃두딁땔듌뒵뎸돷뒘됴딻듔땬돵돼둔땸돨땧돝땲땧땥돛뒼뒋땨돶땮도땁돳듔돳뒈돨딟땨뎹딽둡뒤땐뒘뎡땃땯딐딄뒐땧뒤딹뒬딃땋뎽땮딅뎽뎻딞땡땮뎽뒙듟뎡뎹뒐딁(Landroid/graphics/Canvas;Landroid/graphics/RenderNode;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 197
    .line 198
    .line 199
    return-void

    .line 200
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    .line 201
    .line 202
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 203
    .line 204
    const/4 v0, 0x7

    .line 205
    new-array v0, v0, [J

    .line 206
    .line 207
    fill-array-data v0, :array_0

    .line 208
    .line 209
    .line 210
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object p2

    .line 217
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    throw p1

    .line 221
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 222
    .line 223
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 224
    .line 225
    const/16 v0, 0x9

    .line 226
    .line 227
    new-array v0, v0, [J

    .line 228
    .line 229
    fill-array-data v0, :array_1

    .line 230
    .line 231
    .line 232
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object p2

    .line 239
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    throw p1

    .line 243
    :array_0
    .array-data 8
        -0x8e5f13e568ce0bbL    # -5.251354237169912E265
        -0x35c9844df43ee92cL    # -3.285921244267652E49
        -0x619530640f2db724L
        0x4fcbb3e20234a49cL    # 2.5060544780963494E76
        0x762a388a0e0c94aeL    # 1.6126240507243513E261
        -0xe465008b5238893L    # -6.690770890052772E239
        0x5da105b7135bc6d7L    # 1.0378792509683191E143
    .end array-data

    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    :array_1
    .array-data 8
        0x4f61efbcf0e73b4L    # 9.29756988280722E-285
        0x2c70f64a89f3e814L    # 1.2705751177522738E-94
        0x4d3ba3c7bee337ddL    # 1.1370340486927324E64
        -0x23bdb88589a38db3L    # -2.6572078810655025E136
        0x68c772a98e0bd250L    # 5.477358079906294E196
        -0x3cb270f3e96523dfL    # -1.6640112812472386E16
        -0x27819edca600d1f3L    # -1.9152177705680598E118
        0x675a1af0fbdb7d7bL    # 7.269507176558097E189
        0x5ef997dc8e97846bL    # 3.2725222876825586E149
    .end array-data
.end method


# virtual methods
.method public finish()V
    .locals 6

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    iget-object v1, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->parentCanvas:Landroid/graphics/Canvas;

    .line 4
    .line 5
    if-eqz v1, :cond_a

    .line 6
    .line 7
    iget-object v1, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->op:Lcom/airbnb/lottie/utils/OffscreenLayer$ComposeOp;

    .line 8
    .line 9
    if-eqz v1, :cond_a

    .line 10
    .line 11
    iget-object v1, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->preExistingTransform:[F

    .line 12
    .line 13
    if-eqz v1, :cond_a

    .line 14
    .line 15
    iget-object v1, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->targetRect:Landroid/graphics/RectF;

    .line 16
    .line 17
    if-eqz v1, :cond_a

    .line 18
    .line 19
    iget-object v1, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->currentStrategy:Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_9

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    if-eq v1, v2, :cond_8

    .line 29
    .line 30
    const/4 v2, 0x2

    .line 31
    const/4 v3, 0x4

    .line 32
    const/4 v4, 0x0

    .line 33
    if-eq v1, v2, :cond_4

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    if-eq v1, v2, :cond_0

    .line 37
    .line 38
    goto/16 :goto_0

    .line 39
    .line 40
    :cond_0
    iget-object v1, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->renderNode:Landroid/graphics/RenderNode;

    .line 41
    .line 42
    if-eqz v1, :cond_3

    .line 43
    .line 44
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 45
    .line 46
    const/16 v2, 0x1d

    .line 47
    .line 48
    if-lt v1, v2, :cond_2

    .line 49
    .line 50
    iget-object v0, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->parentCanvas:Landroid/graphics/Canvas;

    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->parentCanvas:Landroid/graphics/Canvas;

    .line 56
    .line 57
    iget-object v1, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->preExistingTransform:[F

    .line 58
    .line 59
    aget v2, v1, v4

    .line 60
    .line 61
    const/high16 v4, 0x3f800000    # 1.0f

    .line 62
    .line 63
    div-float v2, v4, v2

    .line 64
    .line 65
    aget v1, v1, v3

    .line 66
    .line 67
    div-float/2addr v4, v1

    .line 68
    invoke-virtual {v0, v2, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->renderNode:Landroid/graphics/RenderNode;

    .line 72
    .line 73
    invoke-static {v0}, L딄땣뒻땃땀돶뎠됐땃뎸둬돝땅뒋땭들뒵뎠땝땳돨땋돨든듻땪딟딐뒘뒀땥뒐땻땠딻땬돠땀될돷도딻돸딁뒝돤땍땃딌뒐됐뒨땳땫둥둥뒈딅땅뎸둑둠되돸뒐땲뒀돰뒈땁도딀땯딄땥뎰딤땃됴땍되딞땳뒹딌딞딟돛됫뒾돨딀듰딹돳땅딎뒹땪땃둥땟땫땥뒘땀땳뎰땀뒐되땧땜뒻둥땀땐땐돨딌뒼땫뒙둡땯둑돰듻땳땃;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Landroid/graphics/RenderNode;)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->op:Lcom/airbnb/lottie/utils/OffscreenLayer$ComposeOp;

    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/airbnb/lottie/utils/OffscreenLayer$ComposeOp;->hasShadow()Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_1

    .line 83
    .line 84
    iget-object v0, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->parentCanvas:Landroid/graphics/Canvas;

    .line 85
    .line 86
    iget-object v1, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->op:Lcom/airbnb/lottie/utils/OffscreenLayer$ComposeOp;

    .line 87
    .line 88
    iget-object v1, v1, Lcom/airbnb/lottie/utils/OffscreenLayer$ComposeOp;->shadow:Lcom/airbnb/lottie/utils/DropShadow;

    .line 89
    .line 90
    invoke-direct {p0, v0, v1}, Lcom/airbnb/lottie/utils/OffscreenLayer;->renderHardwareShadow(Landroid/graphics/Canvas;Lcom/airbnb/lottie/utils/DropShadow;)V

    .line 91
    .line 92
    .line 93
    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->parentCanvas:Landroid/graphics/Canvas;

    .line 94
    .line 95
    iget-object v1, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->renderNode:Landroid/graphics/RenderNode;

    .line 96
    .line 97
    invoke-static {v0, v1}, L딄땣뒻땃땀돶뎠됐땃뎸둬돝땅뒋땭들뒵뎠땝땳돨땋돨든듻땪딟딐뒘뒀땥뒐땻땠딻땬돠땀될돷도딻돸딁뒝돤땍땃딌뒐됐뒨땳땫둥둥뒈딅땅뎸둑둠되돸뒐땲뒀돰뒈땁도딀땯딄땥뎰딤땃됴땍되딞땳뒹딌딞딟돛됫뒾돨딀듰딹돳땅딎뒹땪땃둥땟땫땥뒘땀땳뎰땀뒐되땧땜뒻둥땀땐땐돨딌뒼땫뒙둡땯둑돰듻땳땃;->뎨뒋딝뒘땻땭땳뒨돵뒋땡돛딟따뒷땮돴딤딃들땡돸땀뒘돳뎹됩둑딠뒬딤뎸땁뒙뒾딽딄뒷뒘땯도두뎠돸돤뒝돼뒵땳땰딅든뒻뒘땰땯땅뒼돤딃두딁땔듌뒵뎸돷뒘됴딻듔땬돵돼둔땸돨땧돝땲땧땥돛뒼뒋땨돶땮도땁돳듔돳뒈돨딟땨뎹딽둡뒤땐뒘뎡땃땯딐딄뒐땧뒤딹뒬딃땋뎽땮딅뎽뎻딞땡땮뎽뒙듟뎡뎹뒐딁(Landroid/graphics/Canvas;Landroid/graphics/RenderNode;)V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->parentCanvas:Landroid/graphics/Canvas;

    .line 101
    .line 102
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 103
    .line 104
    .line 105
    goto/16 :goto_0

    .line 106
    .line 107
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 108
    .line 109
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 110
    .line 111
    new-array v0, v0, [J

    .line 112
    .line 113
    fill-array-data v0, :array_0

    .line 114
    .line 115
    .line 116
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw v1

    .line 127
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 128
    .line 129
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 130
    .line 131
    const/16 v2, 0xa

    .line 132
    .line 133
    new-array v2, v2, [J

    .line 134
    .line 135
    fill-array-data v2, :array_1

    .line 136
    .line 137
    .line 138
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    throw v0

    .line 149
    :cond_4
    iget-object v1, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->bitmap:Landroid/graphics/Bitmap;

    .line 150
    .line 151
    if-eqz v1, :cond_7

    .line 152
    .line 153
    iget-object v0, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->op:Lcom/airbnb/lottie/utils/OffscreenLayer$ComposeOp;

    .line 154
    .line 155
    invoke-virtual {v0}, Lcom/airbnb/lottie/utils/OffscreenLayer$ComposeOp;->hasShadow()Z

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    if-eqz v0, :cond_5

    .line 160
    .line 161
    iget-object v0, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->parentCanvas:Landroid/graphics/Canvas;

    .line 162
    .line 163
    iget-object v1, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->op:Lcom/airbnb/lottie/utils/OffscreenLayer$ComposeOp;

    .line 164
    .line 165
    iget-object v1, v1, Lcom/airbnb/lottie/utils/OffscreenLayer$ComposeOp;->shadow:Lcom/airbnb/lottie/utils/DropShadow;

    .line 166
    .line 167
    invoke-direct {p0, v0, v1}, Lcom/airbnb/lottie/utils/OffscreenLayer;->renderBitmapShadow(Landroid/graphics/Canvas;Lcom/airbnb/lottie/utils/DropShadow;)V

    .line 168
    .line 169
    .line 170
    :cond_5
    iget-object v0, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->bitmapSrcRect:Landroid/graphics/Rect;

    .line 171
    .line 172
    if-nez v0, :cond_6

    .line 173
    .line 174
    new-instance v0, Landroid/graphics/Rect;

    .line 175
    .line 176
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 177
    .line 178
    .line 179
    iput-object v0, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->bitmapSrcRect:Landroid/graphics/Rect;

    .line 180
    .line 181
    :cond_6
    iget-object v0, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->bitmapSrcRect:Landroid/graphics/Rect;

    .line 182
    .line 183
    iget-object v1, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->targetRect:Landroid/graphics/RectF;

    .line 184
    .line 185
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    iget-object v2, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->preExistingTransform:[F

    .line 190
    .line 191
    aget v2, v2, v4

    .line 192
    .line 193
    mul-float v1, v1, v2

    .line 194
    .line 195
    float-to-int v1, v1

    .line 196
    iget-object v2, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->targetRect:Landroid/graphics/RectF;

    .line 197
    .line 198
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    .line 199
    .line 200
    .line 201
    move-result v2

    .line 202
    iget-object v5, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->preExistingTransform:[F

    .line 203
    .line 204
    aget v3, v5, v3

    .line 205
    .line 206
    mul-float v2, v2, v3

    .line 207
    .line 208
    float-to-int v2, v2

    .line 209
    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 210
    .line 211
    .line 212
    iget-object v0, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->parentCanvas:Landroid/graphics/Canvas;

    .line 213
    .line 214
    iget-object v1, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->bitmap:Landroid/graphics/Bitmap;

    .line 215
    .line 216
    iget-object v2, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->bitmapSrcRect:Landroid/graphics/Rect;

    .line 217
    .line 218
    iget-object v3, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->targetRect:Landroid/graphics/RectF;

    .line 219
    .line 220
    iget-object v4, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->composePaint:Landroid/graphics/Paint;

    .line 221
    .line 222
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 223
    .line 224
    .line 225
    goto :goto_0

    .line 226
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 227
    .line 228
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 229
    .line 230
    new-array v0, v0, [J

    .line 231
    .line 232
    fill-array-data v0, :array_2

    .line 233
    .line 234
    .line 235
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    throw v1

    .line 246
    :cond_8
    iget-object v0, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->parentCanvas:Landroid/graphics/Canvas;

    .line 247
    .line 248
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 249
    .line 250
    .line 251
    goto :goto_0

    .line 252
    :cond_9
    iget-object v0, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->parentCanvas:Landroid/graphics/Canvas;

    .line 253
    .line 254
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 255
    .line 256
    .line 257
    :goto_0
    const/4 v0, 0x0

    .line 258
    iput-object v0, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->parentCanvas:Landroid/graphics/Canvas;

    .line 259
    .line 260
    return-void

    .line 261
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 262
    .line 263
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 264
    .line 265
    const/16 v2, 0x8

    .line 266
    .line 267
    new-array v2, v2, [J

    .line 268
    .line 269
    fill-array-data v2, :array_3

    .line 270
    .line 271
    .line 272
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    throw v0

    .line 283
    :array_0
    .array-data 8
        -0x755000447dce2957L    # -3.329887110295645E-257
        0x24cd42c996df0d1cL    # 2.061196578545732E-131
        -0x41827a3e3131aba7L    # -1.0997984008075935E-7
        0x3e1882e5a0376335L    # 1.4267463884511026E-9
        -0x32b89c3743d9fb65L    # -1.9243996209427278E64
        0xb6500d7b960ba97L
        0x77cb03892243f398L    # 1.114941308331787E269
        -0x3d7664c31e95be5fL    # -3.5193165038802036E12
        0xcd5435ee8675e39L
    .end array-data

    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    :array_1
    .array-data 8
        -0xa06691d45c8039L
        0x111c79ce1a2c10c6L    # 3.005102020211147E-226
        -0x1adde6534c492dd8L
        -0x213d13a3316b8f08L    # -3.024576339272331E148
        -0x18903e748f549340L    # -1.7686159556907352E190
        0x10c2a14359e2a1aaL    # 6.143906617181957E-228
        -0x516fefffb1fe69c0L    # -2.0670666928640697E-84
        -0x13434b8f18a6866L
        0x44a14463dbaefa06L    # 4.077090217150737E22
        0xaa1442d3cf6d304L
    .end array-data

    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    :array_2
    .array-data 8
        0x3325c745cec0eeeeL
        -0x31896ab79083ad10L    # -9.741442501895648E69
        -0x3f93599a44d0e6d2L    # -229.1999183578386
        0x2f98ddd80ddc1c45L    # 2.0971870974275504E-79
        0x773ed8afcee227f5L    # 2.4865725185883124E266
        -0x468a2b8e5908c118L    # -6.726844720896476E-32
        0x2565303442e48c8bL
        -0x740751be7c19a93bL    # -5.386180118263442E-251
        -0x5c79370ebe0d164cL    # -1.530663455862678E-137
    .end array-data

    :array_3
    .array-data 8
        0x2318882254c59166L    # 1.287511073703318E-139
        0x40c62edc36185bb9L    # 11357.720400852953
        0x5b1ee95c22c4d4f8L    # 8.570755151850136E130
        0x4b8d46e1fef249a8L    # 8.973339425650065E55
        0x13cd4fbab2cbfe53L
        0x43c6bec58b5dac4dL    # 3.2779290335442765E18
        -0x656392267aef956eL
        -0x1246562818bd0787L    # -3.623697146587674E220
    .end array-data
.end method

.method public start(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/airbnb/lottie/utils/OffscreenLayer$ComposeOp;)Landroid/graphics/Canvas;
    .locals 11

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    const/16 v2, 0x9

    .line 5
    .line 6
    iget-object v3, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->parentCanvas:Landroid/graphics/Canvas;

    .line 7
    .line 8
    if-nez v3, :cond_17

    .line 9
    .line 10
    iget-object v3, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->preExistingTransform:[F

    .line 11
    .line 12
    if-nez v3, :cond_0

    .line 13
    .line 14
    new-array v3, v2, [F

    .line 15
    .line 16
    iput-object v3, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->preExistingTransform:[F

    .line 17
    .line 18
    :cond_0
    iget-object v3, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->parentCanvasMatrix:Landroid/graphics/Matrix;

    .line 19
    .line 20
    if-nez v3, :cond_1

    .line 21
    .line 22
    new-instance v3, Landroid/graphics/Matrix;

    .line 23
    .line 24
    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v3, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->parentCanvasMatrix:Landroid/graphics/Matrix;

    .line 28
    .line 29
    :cond_1
    iget-object v3, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->parentCanvasMatrix:Landroid/graphics/Matrix;

    .line 30
    .line 31
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    .line 32
    .line 33
    .line 34
    iget-object v3, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->parentCanvasMatrix:Landroid/graphics/Matrix;

    .line 35
    .line 36
    iget-object v4, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->preExistingTransform:[F

    .line 37
    .line 38
    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->getValues([F)V

    .line 39
    .line 40
    .line 41
    iget-object v3, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->preExistingTransform:[F

    .line 42
    .line 43
    const/4 v4, 0x0

    .line 44
    aget v4, v3, v4

    .line 45
    .line 46
    aget v3, v3, v1

    .line 47
    .line 48
    iget-object v5, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->scaledBounds:Landroid/graphics/RectF;

    .line 49
    .line 50
    if-nez v5, :cond_2

    .line 51
    .line 52
    new-instance v5, Landroid/graphics/RectF;

    .line 53
    .line 54
    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .line 55
    .line 56
    .line 57
    iput-object v5, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->scaledBounds:Landroid/graphics/RectF;

    .line 58
    .line 59
    :cond_2
    iget-object v5, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->scaledBounds:Landroid/graphics/RectF;

    .line 60
    .line 61
    iget v6, p2, Landroid/graphics/RectF;->left:F

    .line 62
    .line 63
    mul-float v6, v6, v4

    .line 64
    .line 65
    iget v7, p2, Landroid/graphics/RectF;->top:F

    .line 66
    .line 67
    mul-float v7, v7, v3

    .line 68
    .line 69
    iget v8, p2, Landroid/graphics/RectF;->right:F

    .line 70
    .line 71
    mul-float v8, v8, v4

    .line 72
    .line 73
    iget v9, p2, Landroid/graphics/RectF;->bottom:F

    .line 74
    .line 75
    mul-float v9, v9, v3

    .line 76
    .line 77
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 78
    .line 79
    .line 80
    iput-object p1, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->parentCanvas:Landroid/graphics/Canvas;

    .line 81
    .line 82
    iput-object p3, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->op:Lcom/airbnb/lottie/utils/OffscreenLayer$ComposeOp;

    .line 83
    .line 84
    invoke-direct {p0, p1, p3}, Lcom/airbnb/lottie/utils/OffscreenLayer;->chooseRenderStrategy(Landroid/graphics/Canvas;Lcom/airbnb/lottie/utils/OffscreenLayer$ComposeOp;)Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    iput-object v5, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->currentStrategy:Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;

    .line 89
    .line 90
    iget-object v5, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->targetRect:Landroid/graphics/RectF;

    .line 91
    .line 92
    if-nez v5, :cond_3

    .line 93
    .line 94
    new-instance v5, Landroid/graphics/RectF;

    .line 95
    .line 96
    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .line 97
    .line 98
    .line 99
    iput-object v5, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->targetRect:Landroid/graphics/RectF;

    .line 100
    .line 101
    :cond_3
    iget-object v5, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->targetRect:Landroid/graphics/RectF;

    .line 102
    .line 103
    iget v6, p2, Landroid/graphics/RectF;->left:F

    .line 104
    .line 105
    float-to-int v6, v6

    .line 106
    int-to-float v6, v6

    .line 107
    iget v7, p2, Landroid/graphics/RectF;->top:F

    .line 108
    .line 109
    float-to-int v7, v7

    .line 110
    int-to-float v7, v7

    .line 111
    iget v8, p2, Landroid/graphics/RectF;->right:F

    .line 112
    .line 113
    float-to-int v8, v8

    .line 114
    int-to-float v8, v8

    .line 115
    iget v9, p2, Landroid/graphics/RectF;->bottom:F

    .line 116
    .line 117
    float-to-int v9, v9

    .line 118
    int-to-float v9, v9

    .line 119
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 120
    .line 121
    .line 122
    iget-object v5, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->composePaint:Landroid/graphics/Paint;

    .line 123
    .line 124
    if-nez v5, :cond_4

    .line 125
    .line 126
    new-instance v5, Lcom/airbnb/lottie/animation/LPaint;

    .line 127
    .line 128
    invoke-direct {v5}, Lcom/airbnb/lottie/animation/LPaint;-><init>()V

    .line 129
    .line 130
    .line 131
    iput-object v5, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->composePaint:Landroid/graphics/Paint;

    .line 132
    .line 133
    :cond_4
    iget-object v5, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->composePaint:Landroid/graphics/Paint;

    .line 134
    .line 135
    invoke-virtual {v5}, Landroid/graphics/Paint;->reset()V

    .line 136
    .line 137
    .line 138
    iget-object v5, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->currentStrategy:Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;

    .line 139
    .line 140
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 141
    .line 142
    .line 143
    move-result v5

    .line 144
    if-eqz v5, :cond_16

    .line 145
    .line 146
    const/4 v6, 0x1

    .line 147
    if-eq v5, v6, :cond_14

    .line 148
    .line 149
    const/4 p1, 0x2

    .line 150
    if-eq v5, p1, :cond_f

    .line 151
    .line 152
    const/4 p1, 0x3

    .line 153
    if-ne v5, p1, :cond_e

    .line 154
    .line 155
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 156
    .line 157
    const/16 v5, 0x1d

    .line 158
    .line 159
    if-lt p1, v5, :cond_d

    .line 160
    .line 161
    iget-object p1, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->renderNode:Landroid/graphics/RenderNode;

    .line 162
    .line 163
    if-nez p1, :cond_5

    .line 164
    .line 165
    invoke-static {}, L딄땣뒻땃땀돶뎠됐땃뎸둬돝땅뒋땭들뒵뎠땝땳돨땋돨든듻땪딟딐뒘뒀땥뒐땻땠딻땬돠땀될돷도딻돸딁뒝돤땍땃딌뒐됐뒨땳땫둥둥뒈딅땅뎸둑둠되돸뒐땲뒀돰뒈땁도딀땯딄땥뎰딤땃됴땍되딞땳뒹딌딞딟돛됫뒾돨딀듰딹돳땅딎뒹땪땃둥땟땫땥뒘땀땳뎰땀뒐되땧땜뒻둥땀땐땐돨딌뒼땫뒙둡땯둑돰듻땳땃;->뎨돶땰딎땵딃됨드땭두뒹듟땭땧될땤돝땡땟땡득땫땟듌둑듔뒐둔뒨딽땪돵둥뒬돝뒼뒹땻딹둡듔든땐땰땜땠돳땔될땪두땃딄되돸든돵뎬둘땨딀둡땲뎽땬듬딝딃땜뒼됨땤딝돴듽돰듻땲됫듸든둬듰듰듸뒈땳땠뎰딽둬딽뒼딎땃돸돳딠뒷뒛땯듬뎬땅땀되될딅땩땵됨땐땧뎰뎨땥됩뒋됐딟따됐땮뎡돛듰딸뎬뒙돷()V

    .line 166
    .line 167
    .line 168
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 169
    .line 170
    new-array v2, v1, [J

    .line 171
    .line 172
    fill-array-data v2, :array_0

    .line 173
    .line 174
    .line 175
    invoke-direct {p1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-static {p1}, L딄땣뒻땃땀돶뎠됐땃뎸둬돝땅뒋땭들뒵뎠땝땳돨땋돨든듻땪딟딐뒘뒀땥뒐땻땠딻땬돠땀될돷도딻돸딁뒝돤땍땃딌뒐됐뒨땳땫둥둥뒈딅땅뎸둑둠되돸뒐땲뒀돰뒈땁도딀땯딄땥뎰딤땃됴땍되딞땳뒹딌딞딟돛됫뒾돨딀듰딹돳땅딎뒹땪땃둥땟땫땥뒘땀땳뎰땀뒐되땧땜뒻둥땀땐땐돨딌뒼땫뒙둡땯둑돰듻땳땃;->뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두(Ljava/lang/String;)Landroid/graphics/RenderNode;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    iput-object p1, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->renderNode:Landroid/graphics/RenderNode;

    .line 187
    .line 188
    :cond_5
    invoke-virtual {p3}, Lcom/airbnb/lottie/utils/OffscreenLayer$ComposeOp;->hasShadow()Z

    .line 189
    .line 190
    .line 191
    move-result p1

    .line 192
    if-eqz p1, :cond_6

    .line 193
    .line 194
    iget-object p1, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowRenderNode:Landroid/graphics/RenderNode;

    .line 195
    .line 196
    if-nez p1, :cond_6

    .line 197
    .line 198
    invoke-static {}, L딄땣뒻땃땀돶뎠됐땃뎸둬돝땅뒋땭들뒵뎠땝땳돨땋돨든듻땪딟딐뒘뒀땥뒐땻땠딻땬돠땀될돷도딻돸딁뒝돤땍땃딌뒐됐뒨땳땫둥둥뒈딅땅뎸둑둠되돸뒐땲뒀돰뒈땁도딀땯딄땥뎰딤땃됴땍되딞땳뒹딌딞딟돛됫뒾돨딀듰딹돳땅딎뒹땪땃둥땟땫땥뒘땀땳뎰땀뒐되땧땜뒻둥땀땐땐돨딌뒼땫뒙둡땯둑돰듻땳땃;->뎨돶땰딎땵딃됨드땭두뒹듟땭땧될땤돝땡땟땡득땫땟듌둑듔뒐둔뒨딽땪돵둥뒬돝뒼뒹땻딹둡듔든땐땰땜땠돳땔될땪두땃딄되돸든돵뎬둘땨딀둡땲뎽땬듬딝딃땜뒼됨땤딝돴듽돰듻땲됫듸든둬듰듰듸뒈땳땠뎰딽둬딽뒼딎땃돸돳딠뒷뒛땯듬뎬땅땀되될딅땩땵됨땐땧뎰뎨땥됩뒋됐딟따됐땮뎡돛듰딸뎬뒙돷()V

    .line 199
    .line 200
    .line 201
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 202
    .line 203
    new-array v1, v1, [J

    .line 204
    .line 205
    fill-array-data v1, :array_1

    .line 206
    .line 207
    .line 208
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    invoke-static {p1}, L딄땣뒻땃땀돶뎠됐땃뎸둬돝땅뒋땭들뒵뎠땝땳돨땋돨든듻땪딟딐뒘뒀땥뒐땻땠딻땬돠땀될돷도딻돸딁뒝돤땍땃딌뒐됐뒨땳땫둥둥뒈딅땅뎸둑둠되돸뒐땲뒀돰뒈땁도딀땯딄땥뎰딤땃됴땍되딞땳뒹딌딞딟돛됫뒾돨딀듰딹돳땅딎뒹땪땃둥땟땫땥뒘땀땳뎰땀뒐되땧땜뒻둥땀땐땐돨딌뒼땫뒙둡땯둑돰듻땳땃;->뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두(Ljava/lang/String;)Landroid/graphics/RenderNode;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    iput-object p1, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowRenderNode:Landroid/graphics/RenderNode;

    .line 220
    .line 221
    const/4 p1, 0x0

    .line 222
    iput-object p1, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->lastRenderNodeShadow:Lcom/airbnb/lottie/utils/DropShadow;

    .line 223
    .line 224
    :cond_6
    invoke-virtual {p3}, Lcom/airbnb/lottie/utils/OffscreenLayer$ComposeOp;->hasBlendMode()Z

    .line 225
    .line 226
    .line 227
    move-result p1

    .line 228
    if-nez p1, :cond_7

    .line 229
    .line 230
    invoke-virtual {p3}, Lcom/airbnb/lottie/utils/OffscreenLayer$ComposeOp;->hasColorFilter()Z

    .line 231
    .line 232
    .line 233
    move-result p1

    .line 234
    if-eqz p1, :cond_a

    .line 235
    .line 236
    :cond_7
    iget-object p1, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->composePaint:Landroid/graphics/Paint;

    .line 237
    .line 238
    if-nez p1, :cond_8

    .line 239
    .line 240
    new-instance p1, Lcom/airbnb/lottie/animation/LPaint;

    .line 241
    .line 242
    invoke-direct {p1}, Lcom/airbnb/lottie/animation/LPaint;-><init>()V

    .line 243
    .line 244
    .line 245
    iput-object p1, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->composePaint:Landroid/graphics/Paint;

    .line 246
    .line 247
    :cond_8
    iget-object p1, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->composePaint:Landroid/graphics/Paint;

    .line 248
    .line 249
    invoke-virtual {p1}, Landroid/graphics/Paint;->reset()V

    .line 250
    .line 251
    .line 252
    iget-object p1, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->composePaint:Landroid/graphics/Paint;

    .line 253
    .line 254
    iget-object v1, p3, Lcom/airbnb/lottie/utils/OffscreenLayer$ComposeOp;->blendMode:Landroidx/core/graphics/BlendModeCompat;

    .line 255
    .line 256
    invoke-static {p1, v1}, Landroidx/core/graphics/PaintCompat;->setBlendMode(Landroid/graphics/Paint;Landroidx/core/graphics/BlendModeCompat;)Z

    .line 257
    .line 258
    .line 259
    iget-object p1, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->composePaint:Landroid/graphics/Paint;

    .line 260
    .line 261
    iget-object v1, p3, Lcom/airbnb/lottie/utils/OffscreenLayer$ComposeOp;->colorFilter:Landroid/graphics/ColorFilter;

    .line 262
    .line 263
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 264
    .line 265
    .line 266
    iget-object p1, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->renderNode:Landroid/graphics/RenderNode;

    .line 267
    .line 268
    iget-object v1, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->composePaint:Landroid/graphics/Paint;

    .line 269
    .line 270
    invoke-static {p1, v1}, L딄땣뒻땃땀돶뎠됐땃뎸둬돝땅뒋땭들뒵뎠땝땳돨땋돨든듻땪딟딐뒘뒀땥뒐땻땠딻땬돠땀될돷도딻돸딁뒝돤땍땃딌뒐됐뒨땳땫둥둥뒈딅땅뎸둑둠되돸뒐땲뒀돰뒈땁도딀땯딄땥뎰딤땃됴땍되딞땳뒹딌딞딟돛됫뒾돨딀듰딹돳땅딎뒹땪땃둥땟땫땥뒘땀땳뎰땀뒐되땧땜뒻둥땀땐땐돨딌뒼땫뒙둡땯둑돰듻땳땃;->뎨땱듼딃든둔뒬뒨땣된둬딻땵딎딽디땋따땃뒷딐땁된땀땔듨땤둠돠뎽땤돷듽둡돛딨듻뒋딐둣듌뒵듐둑뒾됫듟딌딤될뒨둥듟땬땁뒼땄돴뒙디딐딜들둣땧듬땐딌됨딹땸뒘땪뒝뒻딀땬땡딤듟딁따들돤땝뒼뒙딌딜딨뎹땀딌뎠득땝땔땅돠돛둬뒬뒻돨둡돠땋땯돝돵땔둘됴뒹땲땻땤듬뎬뎡돶땸돳듰땭뒐땪둔듔땬(Landroid/graphics/RenderNode;Landroid/graphics/Paint;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {p3}, Lcom/airbnb/lottie/utils/OffscreenLayer$ComposeOp;->hasShadow()Z

    .line 274
    .line 275
    .line 276
    move-result p1

    .line 277
    if-eqz p1, :cond_a

    .line 278
    .line 279
    iget-object p1, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowRenderNode:Landroid/graphics/RenderNode;

    .line 280
    .line 281
    if-eqz p1, :cond_9

    .line 282
    .line 283
    iget-object v1, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->composePaint:Landroid/graphics/Paint;

    .line 284
    .line 285
    invoke-static {p1, v1}, L딄땣뒻땃땀돶뎠됐땃뎸둬돝땅뒋땭들뒵뎠땝땳돨땋돨든듻땪딟딐뒘뒀땥뒐땻땠딻땬돠땀될돷도딻돸딁뒝돤땍땃딌뒐됐뒨땳땫둥둥뒈딅땅뎸둑둠되돸뒐땲뒀돰뒈땁도딀땯딄땥뎰딤땃됴땍되딞땳뒹딌딞딟돛됫뒾돨딀듰딹돳땅딎뒹땪땃둥땟땫땥뒘땀땳뎰땀뒐되땧땜뒻둥땀땐땐돨딌뒼땫뒙둡땯둑돰듻땳땃;->뎨땱듼딃든둔뒬뒨땣된둬딻땵딎딽디땋따땃뒷딐땁된땀땔듨땤둠돠뎽땤돷듽둡돛딨듻뒋딐둣듌뒵듐둑뒾됫듟딌딤될뒨둥듟땬땁뒼땄돴뒙디딐딜들둣땧듬땐딌됨딹땸뒘땪뒝뒻딀땬땡딤듟딁따들돤땝뒼뒙딌딜딨뎹땀딌뎠득땝땔땅돠돛둬뒬뒻돨둡돠땋땯돝돵땔둘됴뒹땲땻땤듬뎬뎡돶땸돳듰땭뒐땪둔듔땬(Landroid/graphics/RenderNode;Landroid/graphics/Paint;)V

    .line 286
    .line 287
    .line 288
    goto :goto_0

    .line 289
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 290
    .line 291
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 292
    .line 293
    new-array p3, v0, [J

    .line 294
    .line 295
    fill-array-data p3, :array_2

    .line 296
    .line 297
    .line 298
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object p2

    .line 305
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    throw p1

    .line 309
    :cond_a
    :goto_0
    iget-object p1, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->renderNode:Landroid/graphics/RenderNode;

    .line 310
    .line 311
    iget v1, p3, Lcom/airbnb/lottie/utils/OffscreenLayer$ComposeOp;->alpha:I

    .line 312
    .line 313
    int-to-float v1, v1

    .line 314
    const/high16 v2, 0x437f0000    # 255.0f

    .line 315
    .line 316
    div-float/2addr v1, v2

    .line 317
    invoke-static {p1, v1}, L딄땣뒻땃땀돶뎠됐땃뎸둬돝땅뒋땭들뒵뎠땝땳돨땋돨든듻땪딟딐뒘뒀땥뒐땻땠딻땬돠땀될돷도딻돸딁뒝돤땍땃딌뒐됐뒨땳땫둥둥뒈딅땅뎸둑둠되돸뒐땲뒀돰뒈땁도딀땯딄땥뎰딤땃됴땍되딞땳뒹딌딞딟돛됫뒾돨딀듰딹돳땅딎뒹땪땃둥땟땫땥뒘땀땳뎰땀뒐되땧땜뒻둥땀땐땐돨딌뒼땫뒙둡땯둑돰듻땳땃;->뎨딐딁들땠듟땣땝딄둬돨땁땸뒷돵뒝듨뒬딀듨듔딁뒐땯되들돶듰땋듽듸땡둥딹됨돨듼땀땝딀땳땍됨땱뒀땵될됫땪뒼돨땲뎹딨딅딄땜딜땨듌땫둑딜땠뒨땮땸뎡둔됫듐뒾따됐돶둡땦땲땵뒤땄든땃든뒵둑따돶듻드뒋뎸뎸돨뒘듽땧딻땋딸땯뒹딤땤디뒀둡되땯뒾뎹뒷됴뒨딁땰들됨된딜둬땣땀땔딸됩땩돴땡뎨(Landroid/graphics/RenderNode;F)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {p3}, Lcom/airbnb/lottie/utils/OffscreenLayer$ComposeOp;->hasShadow()Z

    .line 321
    .line 322
    .line 323
    move-result p1

    .line 324
    if-eqz p1, :cond_c

    .line 325
    .line 326
    iget-object p1, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->shadowRenderNode:Landroid/graphics/RenderNode;

    .line 327
    .line 328
    if-eqz p1, :cond_b

    .line 329
    .line 330
    iget p3, p3, Lcom/airbnb/lottie/utils/OffscreenLayer$ComposeOp;->alpha:I

    .line 331
    .line 332
    int-to-float p3, p3

    .line 333
    div-float/2addr p3, v2

    .line 334
    invoke-static {p1, p3}, L딄땣뒻땃땀돶뎠됐땃뎸둬돝땅뒋땭들뒵뎠땝땳돨땋돨든듻땪딟딐뒘뒀땥뒐땻땠딻땬돠땀될돷도딻돸딁뒝돤땍땃딌뒐됐뒨땳땫둥둥뒈딅땅뎸둑둠되돸뒐땲뒀돰뒈땁도딀땯딄땥뎰딤땃됴땍되딞땳뒹딌딞딟돛됫뒾돨딀듰딹돳땅딎뒹땪땃둥땟땫땥뒘땀땳뎰땀뒐되땧땜뒻둥땀땐땐돨딌뒼땫뒙둡땯둑돰듻땳땃;->뎨딐딁들땠듟땣땝딄둬돨땁땸뒷돵뒝듨뒬딀듨듔딁뒐땯되들돶듰땋듽듸땡둥딹됨돨듼땀땝딀땳땍됨땱뒀땵될됫땪뒼돨땲뎹딨딅딄땜딜땨듌땫둑딜땠뒨땮땸뎡둔됫듐뒾따됐돶둡땦땲땵뒤땄든땃든뒵둑따돶듻드뒋뎸뎸돨뒘듽땧딻땋딸땯뒹딤땤디뒀둡되땯뒾뎹뒷됴뒨딁땰들됨된딜둬땣땀땔딸됩땩돴땡뎨(Landroid/graphics/RenderNode;F)V

    .line 335
    .line 336
    .line 337
    goto :goto_1

    .line 338
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 339
    .line 340
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 341
    .line 342
    new-array p3, v0, [J

    .line 343
    .line 344
    fill-array-data p3, :array_3

    .line 345
    .line 346
    .line 347
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object p2

    .line 354
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    throw p1

    .line 358
    :cond_c
    :goto_1
    iget-object p1, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->renderNode:Landroid/graphics/RenderNode;

    .line 359
    .line 360
    invoke-static {p1}, L딄땣뒻땃땀돶뎠됐땃뎸둬돝땅뒋땭들뒵뎠땝땳돨땋돨든듻땪딟딐뒘뒀땥뒐땻땠딻땬돠땀될돷도딻돸딁뒝돤땍땃딌뒐됐뒨땳땫둥둥뒈딅땅뎸둑둠되돸뒐땲뒀돰뒈땁도딀땯딄땥뎰딤땃됴땍되딞땳뒹딌딞딟돛됫뒾돨딀듰딹돳땅딎뒹땪땃둥땟땫땥뒘땀땳뎰땀뒐되땧땜뒻둥땀땐땐돨딌뒼땫뒙둡땯둑돰듻땳땃;->뎬딹땋뎨땵뒀땸땤딹딌땩두돷돛딤둥뒼득땁뒝뎰땨딜뎡땀딞되뒈듼땃땤됨딃땣땍땡둡뎨딌땪돠뒐딀딄뎹돤둣딤땡듌뒹든됫듰둠땭땻듔땔둥들될돵딸됴돳돰뒉됴뒛딤땟땧땨딄뒋땀딹땭뎹뎨딜땪돴땧딸뎻땋땟뒋땮뎰땳드뒐돰뒘딟돸땟둥땧딻뎸딠딞땍돨돸땁둡뒙돝뒋딜듬듰돳딨딀돴뒝돛뎨땩뒝땬듟뒋돨(Landroid/graphics/RenderNode;)V

    .line 361
    .line 362
    .line 363
    iget-object p1, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->renderNode:Landroid/graphics/RenderNode;

    .line 364
    .line 365
    iget-object p3, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->scaledBounds:Landroid/graphics/RectF;

    .line 366
    .line 367
    iget v0, p3, Landroid/graphics/RectF;->left:F

    .line 368
    .line 369
    float-to-int v0, v0

    .line 370
    iget v1, p3, Landroid/graphics/RectF;->top:F

    .line 371
    .line 372
    float-to-int v1, v1

    .line 373
    iget v2, p3, Landroid/graphics/RectF;->right:F

    .line 374
    .line 375
    float-to-int v2, v2

    .line 376
    iget p3, p3, Landroid/graphics/RectF;->bottom:F

    .line 377
    .line 378
    float-to-int p3, p3

    .line 379
    invoke-static {p1, v0, v1, v2, p3}, L딄땣뒻땃땀돶뎠됐땃뎸둬돝땅뒋땭들뒵뎠땝땳돨땋돨든듻땪딟딐뒘뒀땥뒐땻땠딻땬돠땀될돷도딻돸딁뒝돤땍땃딌뒐됐뒨땳땫둥둥뒈딅땅뎸둑둠되돸뒐땲뒀돰뒈땁도딀땯딄땥뎰딤땃됴땍되딞땳뒹딌딞딟돛됫뒾돨딀듰딹돳땅딎뒹땪땃둥땟땫땥뒘땀땳뎰땀뒐되땧땜뒻둥땀땐땐돨딌뒼땫뒙둡땯둑돰듻땳땃;->뎨땋된땫딜딜땮듔든득됫뒻뒬땃돰땔땠땫뒉딜돛둑땅뒙든듨땁딁땧땦뒼딎듨딽되땩뒤됐땫돳뎻뎨듰딞됐뎸땯뎻땸뎨땋딞뎰딠딅뒐됩뒐뎡뒹딅딞뎽땅둑땟땧땣듸됨뒷땤딀뒉돨딎둠됫딁땳뎰됨땁땧되땔들뒻뎠땨뎠딜뒘땻땤뎰돤딜땦땩딃돸둣땣됐듐땃뒛뒷둔두땃딽땤됐딻땝둔딞뎽돝된땫뒻뎬돛땨딹든듌(Landroid/graphics/RenderNode;IIII)V

    .line 380
    .line 381
    .line 382
    iget-object p1, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->renderNode:Landroid/graphics/RenderNode;

    .line 383
    .line 384
    iget-object p3, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->scaledBounds:Landroid/graphics/RectF;

    .line 385
    .line 386
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    .line 387
    .line 388
    .line 389
    move-result p3

    .line 390
    float-to-int p3, p3

    .line 391
    iget-object v0, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->scaledBounds:Landroid/graphics/RectF;

    .line 392
    .line 393
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    .line 394
    .line 395
    .line 396
    move-result v0

    .line 397
    float-to-int v0, v0

    .line 398
    invoke-static {p1, p3, v0}, L딄땣뒻땃땀돶뎠됐땃뎸둬돝땅뒋땭들뒵뎠땝땳돨땋돨든듻땪딟딐뒘뒀땥뒐땻땠딻땬돠땀될돷도딻돸딁뒝돤땍땃딌뒐됐뒨땳땫둥둥뒈딅땅뎸둑둠되돸뒐땲뒀돰뒈땁도딀땯딄땥뎰딤땃됴땍되딞땳뒹딌딞딟돛됫뒾돨딀듰딹돳땅딎뒹땪땃둥땟땫땥뒘땀땳뎰땀뒐되땧땜뒻둥땀땐땐돨딌뒼땫뒙둡땯둑돰듻땳땃;->뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋(Landroid/graphics/RenderNode;II)Landroid/graphics/RecordingCanvas;

    .line 399
    .line 400
    .line 401
    move-result-object p1

    .line 402
    sget-object p3, Lcom/airbnb/lottie/utils/OffscreenLayer;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    .line 403
    .line 404
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {p1, v4, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 408
    .line 409
    .line 410
    iget p3, p2, Landroid/graphics/RectF;->left:F

    .line 411
    .line 412
    neg-float p3, p3

    .line 413
    iget p2, p2, Landroid/graphics/RectF;->top:F

    .line 414
    .line 415
    neg-float p2, p2

    .line 416
    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 417
    .line 418
    .line 419
    goto/16 :goto_3

    .line 420
    .line 421
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 422
    .line 423
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 424
    .line 425
    new-array p3, v2, [J

    .line 426
    .line 427
    fill-array-data p3, :array_4

    .line 428
    .line 429
    .line 430
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 431
    .line 432
    .line 433
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object p2

    .line 437
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 438
    .line 439
    .line 440
    throw p1

    .line 441
    :cond_e
    new-instance p1, Ljava/lang/RuntimeException;

    .line 442
    .line 443
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 444
    .line 445
    const/4 p3, 0x7

    .line 446
    new-array p3, p3, [J

    .line 447
    .line 448
    fill-array-data p3, :array_5

    .line 449
    .line 450
    .line 451
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 452
    .line 453
    .line 454
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object p2

    .line 458
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 459
    .line 460
    .line 461
    throw p1

    .line 462
    :cond_f
    iget-object p1, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->clearPaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 463
    .line 464
    if-nez p1, :cond_10

    .line 465
    .line 466
    new-instance p1, Lcom/airbnb/lottie/animation/LPaint;

    .line 467
    .line 468
    invoke-direct {p1}, Lcom/airbnb/lottie/animation/LPaint;-><init>()V

    .line 469
    .line 470
    .line 471
    iput-object p1, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->clearPaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 472
    .line 473
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    .line 474
    .line 475
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 476
    .line 477
    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 478
    .line 479
    .line 480
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 481
    .line 482
    .line 483
    :cond_10
    iget-object p1, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->bitmap:Landroid/graphics/Bitmap;

    .line 484
    .line 485
    iget-object v0, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->scaledBounds:Landroid/graphics/RectF;

    .line 486
    .line 487
    invoke-direct {p0, p1, v0}, Lcom/airbnb/lottie/utils/OffscreenLayer;->needNewBitmap(Landroid/graphics/Bitmap;Landroid/graphics/RectF;)Z

    .line 488
    .line 489
    .line 490
    move-result p1

    .line 491
    if-eqz p1, :cond_12

    .line 492
    .line 493
    iget-object p1, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->bitmap:Landroid/graphics/Bitmap;

    .line 494
    .line 495
    if-eqz p1, :cond_11

    .line 496
    .line 497
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/utils/OffscreenLayer;->deallocateBitmap(Landroid/graphics/Bitmap;)V

    .line 498
    .line 499
    .line 500
    :cond_11
    iget-object p1, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->scaledBounds:Landroid/graphics/RectF;

    .line 501
    .line 502
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 503
    .line 504
    invoke-direct {p0, p1, v0}, Lcom/airbnb/lottie/utils/OffscreenLayer;->allocateBitmap(Landroid/graphics/RectF;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 505
    .line 506
    .line 507
    move-result-object p1

    .line 508
    iput-object p1, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->bitmap:Landroid/graphics/Bitmap;

    .line 509
    .line 510
    new-instance p1, Landroid/graphics/Canvas;

    .line 511
    .line 512
    iget-object v0, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->bitmap:Landroid/graphics/Bitmap;

    .line 513
    .line 514
    invoke-direct {p1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 515
    .line 516
    .line 517
    iput-object p1, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->bitmapCanvas:Landroid/graphics/Canvas;

    .line 518
    .line 519
    goto :goto_2

    .line 520
    :cond_12
    iget-object p1, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->bitmapCanvas:Landroid/graphics/Canvas;

    .line 521
    .line 522
    if-eqz p1, :cond_13

    .line 523
    .line 524
    sget-object v0, Lcom/airbnb/lottie/utils/OffscreenLayer;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    .line 525
    .line 526
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 527
    .line 528
    .line 529
    iget-object v5, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->bitmapCanvas:Landroid/graphics/Canvas;

    .line 530
    .line 531
    iget-object p1, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->scaledBounds:Landroid/graphics/RectF;

    .line 532
    .line 533
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    .line 534
    .line 535
    .line 536
    move-result p1

    .line 537
    const/high16 v0, 0x3f800000    # 1.0f

    .line 538
    .line 539
    add-float v8, p1, v0

    .line 540
    .line 541
    iget-object p1, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->scaledBounds:Landroid/graphics/RectF;

    .line 542
    .line 543
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    .line 544
    .line 545
    .line 546
    move-result p1

    .line 547
    add-float v9, p1, v0

    .line 548
    .line 549
    iget-object v10, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->clearPaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 550
    .line 551
    const/high16 v6, -0x40800000    # -1.0f

    .line 552
    .line 553
    const/high16 v7, -0x40800000    # -1.0f

    .line 554
    .line 555
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 556
    .line 557
    .line 558
    :goto_2
    iget-object p1, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->composePaint:Landroid/graphics/Paint;

    .line 559
    .line 560
    iget-object v0, p3, Lcom/airbnb/lottie/utils/OffscreenLayer$ComposeOp;->blendMode:Landroidx/core/graphics/BlendModeCompat;

    .line 561
    .line 562
    invoke-static {p1, v0}, Landroidx/core/graphics/PaintCompat;->setBlendMode(Landroid/graphics/Paint;Landroidx/core/graphics/BlendModeCompat;)Z

    .line 563
    .line 564
    .line 565
    iget-object p1, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->composePaint:Landroid/graphics/Paint;

    .line 566
    .line 567
    iget-object v0, p3, Lcom/airbnb/lottie/utils/OffscreenLayer$ComposeOp;->colorFilter:Landroid/graphics/ColorFilter;

    .line 568
    .line 569
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 570
    .line 571
    .line 572
    iget-object p1, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->composePaint:Landroid/graphics/Paint;

    .line 573
    .line 574
    iget p3, p3, Lcom/airbnb/lottie/utils/OffscreenLayer$ComposeOp;->alpha:I

    .line 575
    .line 576
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 577
    .line 578
    .line 579
    iget-object p1, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->bitmapCanvas:Landroid/graphics/Canvas;

    .line 580
    .line 581
    invoke-virtual {p1, v4, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 582
    .line 583
    .line 584
    iget p3, p2, Landroid/graphics/RectF;->left:F

    .line 585
    .line 586
    neg-float p3, p3

    .line 587
    iget p2, p2, Landroid/graphics/RectF;->top:F

    .line 588
    .line 589
    neg-float p2, p2

    .line 590
    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 591
    .line 592
    .line 593
    goto :goto_3

    .line 594
    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 595
    .line 596
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 597
    .line 598
    new-array p3, v2, [J

    .line 599
    .line 600
    fill-array-data p3, :array_6

    .line 601
    .line 602
    .line 603
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 604
    .line 605
    .line 606
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 607
    .line 608
    .line 609
    move-result-object p2

    .line 610
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 611
    .line 612
    .line 613
    throw p1

    .line 614
    :cond_14
    iget-object v0, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->composePaint:Landroid/graphics/Paint;

    .line 615
    .line 616
    iget v1, p3, Lcom/airbnb/lottie/utils/OffscreenLayer$ComposeOp;->alpha:I

    .line 617
    .line 618
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 619
    .line 620
    .line 621
    iget-object v0, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->composePaint:Landroid/graphics/Paint;

    .line 622
    .line 623
    iget-object v1, p3, Lcom/airbnb/lottie/utils/OffscreenLayer$ComposeOp;->colorFilter:Landroid/graphics/ColorFilter;

    .line 624
    .line 625
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 626
    .line 627
    .line 628
    invoke-virtual {p3}, Lcom/airbnb/lottie/utils/OffscreenLayer$ComposeOp;->hasBlendMode()Z

    .line 629
    .line 630
    .line 631
    move-result v0

    .line 632
    if-eqz v0, :cond_15

    .line 633
    .line 634
    iget-object v0, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->composePaint:Landroid/graphics/Paint;

    .line 635
    .line 636
    iget-object p3, p3, Lcom/airbnb/lottie/utils/OffscreenLayer$ComposeOp;->blendMode:Landroidx/core/graphics/BlendModeCompat;

    .line 637
    .line 638
    invoke-static {v0, p3}, Landroidx/core/graphics/PaintCompat;->setBlendMode(Landroid/graphics/Paint;Landroidx/core/graphics/BlendModeCompat;)Z

    .line 639
    .line 640
    .line 641
    :cond_15
    iget-object p3, p0, Lcom/airbnb/lottie/utils/OffscreenLayer;->composePaint:Landroid/graphics/Paint;

    .line 642
    .line 643
    invoke-static {p1, p2, p3}, Lcom/airbnb/lottie/utils/Utils;->saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 644
    .line 645
    .line 646
    goto :goto_3

    .line 647
    :cond_16
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 648
    .line 649
    .line 650
    :goto_3
    return-object p1

    .line 651
    :cond_17
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 652
    .line 653
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 654
    .line 655
    const/16 p3, 0xb

    .line 656
    .line 657
    new-array p3, p3, [J

    .line 658
    .line 659
    fill-array-data p3, :array_7

    .line 660
    .line 661
    .line 662
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 663
    .line 664
    .line 665
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 666
    .line 667
    .line 668
    move-result-object p2

    .line 669
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 670
    .line 671
    .line 672
    throw p1

    .line 673
    :array_0
    .array-data 8
        0x2bb1b11f7d83af52L    # 3.2354565579960094E-98
        -0x6b1e37d8e8322100L    # -4.327029559857047E-208
        -0x4ea2f81da93bc9bbL    # -6.5723396182347165E-71
        0x209b3d66bd270404L
    .end array-data

    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    :array_1
    .array-data 8
        -0x5062c5af9d6300b6L    # -2.4650011034735797E-79
        0x2dd2862417067f8cL    # 5.819903319617172E-88
        0x34895b3268fb4851L    # 1.292634162235662E-55
        -0xb1c98a7a649f970L
    .end array-data

    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    :array_2
    .array-data 8
        -0x1ffb6cefe49cccaaL    # -3.448230857330458E154
        0x5c037d145250d9edL    # 1.7706328577756322E135
        0x33077fe6759a6ce2L    # 7.14054852556558E-63
        -0x4cd288d008517eb8L    # -3.581342335998352E-62
        0x7fbda8a5b96bec72L    # 2.0827102715312047E307
        0x16e16227029e663cL
        0x1a5cc627befacb2L
        0x2ae9270fc0cc46eaL
    .end array-data

    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    :array_3
    .array-data 8
        -0x18f18043c8900ed2L    # -2.654070280753033E188
        -0x47d929a4b608c44aL    # -3.3556441177296265E-38
        -0x3d6caefdba8f2915L    # -5.3096628460057295E12
        0x547f6bea97517542L    # 1.0738563179632269E99
        -0x66d836c24d6c5834L    # -1.708346286792842E-187
        -0x284c17e5eaeef7ceL    # -3.06391354383615E114
        0x35028ef8b8d615a8L    # 2.4219950012124277E-53
        -0x593242d73649147eL    # -8.997393572925003E-122
    .end array-data

    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    :array_4
    .array-data 8
        0x62f2e97c22980ef8L
        -0x3a93ab82cbb437bbL    # -2.7399129076084474E26
        0x58d01fb527ddb317L    # 6.505598479629343E119
        0x410d39973359e821L    # 239410.90007382727
        0x1698a68e81f7f68aL    # 8.051014219065945E-200
        -0x445d0cdeb3fe5eaeL    # -2.006380369790404E-21
        0x4ca814cf96f430f4L    # 1.9348572590331664E61
        -0x541cefb16e9d8f0dL    # -2.7890646295111654E-97
        0x576f84713769fe60L    # 1.5159264164005206E113
    .end array-data

    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    :array_5
    .array-data 8
        0x6ebc275a07f3f6dbL    # 2.60526870534654E225
        0x6df4fe6950447a9bL    # 4.742941487463296E221
        0x2165d749653bba22L    # 8.540512530738445E-148
        -0x46299c3b1c154fe8L    # -4.415594299707283E-30
        -0x347e18e27a7391d3L    # -5.487190460704526E55
        -0x2e4818e4968c07b5L    # -4.643515221995593E85
        -0x317d1000821343a3L    # -1.6337720991561475E70
    .end array-data

    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    :array_6
    .array-data 8
        0x488f5e3257417c2L
        -0x35ff820f5e24f550L    # -3.012877040263644E48
        -0x667666db0f8e452bL    # -1.176636860722809E-185
        -0x2434190d3f70a46dL    # -1.5844028913182956E134
        -0x3294d4427eecdc2aL    # -8.941954907962646E64
        -0x51f02ddd79502cd8L    # -7.998027489250486E-87
        -0x461881f1f9b6875dL    # -9.266118555677526E-30
        0x7bc9d69f9e503586L    # 1.9672114003442914E288
        0x319a2ee33148fb26L    # 9.484249662012225E-70
    .end array-data

    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    :array_7
    .array-data 8
        0x100361c8a78b5c97L
        -0x57e8860e0672cc7cL
        -0x6cf4fe1ca6acd799L    # -6.120621376904794E-217
        0x82120abb40c11e4L
        0x7575e4e3e662844eL    # 6.57481371194309E257
        0x7dc69723a57640b9L    # 7.38702234740906E297
        -0x673e822a942b29c2L    # -1.962911543146925E-189
        -0x2f14e9160d05b885L    # -6.42406531975699E81
        0x13479e87e5d80f76L    # 8.564448957124489E-216
        -0x2ebea15411e04cb1L    # -2.636233702269979E83
        0x39627d42f29dec24L    # 2.848728151708751E-32
    .end array-data
.end method
