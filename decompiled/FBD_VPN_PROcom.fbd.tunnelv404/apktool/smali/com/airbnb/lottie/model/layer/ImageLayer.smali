.class public Lcom/airbnb/lottie/model/layer/ImageLayer;
.super Lcom/airbnb/lottie/model/layer/BaseLayer;
.source "SourceFile"


# instance fields
.field private colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "Landroid/graphics/ColorFilter;",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field

.field private dropShadowAnimation:Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final dst:Landroid/graphics/Rect;

.field private imageAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final layerBounds:Landroid/graphics/RectF;

.field private final lottieImageAsset:Lcom/airbnb/lottie/LottieImageAsset;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private offscreenLayer:Lcom/airbnb/lottie/utils/OffscreenLayer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private offscreenOp:Lcom/airbnb/lottie/utils/OffscreenLayer$ComposeOp;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final paint:Landroid/graphics/Paint;

.field private final src:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/airbnb/lottie/animation/LPaint;

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/animation/LPaint;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->paint:Landroid/graphics/Paint;

    .line 11
    .line 12
    new-instance v0, Landroid/graphics/Rect;

    .line 13
    .line 14
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->src:Landroid/graphics/Rect;

    .line 18
    .line 19
    new-instance v0, Landroid/graphics/Rect;

    .line 20
    .line 21
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->dst:Landroid/graphics/Rect;

    .line 25
    .line 26
    new-instance v0, Landroid/graphics/RectF;

    .line 27
    .line 28
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->layerBounds:Landroid/graphics/RectF;

    .line 32
    .line 33
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/Layer;->getRefId()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/LottieDrawable;->getLottieImageAssetForId(Ljava/lang/String;)Lcom/airbnb/lottie/LottieImageAsset;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->lottieImageAsset:Lcom/airbnb/lottie/LottieImageAsset;

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getDropShadowEffect()Lcom/airbnb/lottie/parser/DropShadowEffect;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-eqz p1, :cond_0

    .line 48
    .line 49
    new-instance p1, Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getDropShadowEffect()Lcom/airbnb/lottie/parser/DropShadowEffect;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-direct {p1, p0, p0, p2}, Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;-><init>(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/parser/DropShadowEffect;)V

    .line 56
    .line 57
    .line 58
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->dropShadowAnimation:Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;

    .line 59
    .line 60
    :cond_0
    return-void
.end method

.method private getBitmap()Landroid/graphics/Bitmap;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->imageAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/graphics/Bitmap;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/Layer;->getRefId()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/LottieDrawable;->getBitmapForId(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    return-object v0

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->lottieImageAsset:Lcom/airbnb/lottie/LottieImageAsset;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieImageAsset;->getBitmap()Landroid/graphics/Bitmap;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    return-object v0

    .line 38
    :cond_2
    const/4 v0, 0x0

    .line 39
    return-object v0
.end method


# virtual methods
.method public addValueCallback(Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V
    .locals 2
    .param p2    # Lcom/airbnb/lottie/value/LottieValueCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/airbnb/lottie/value/LottieValueCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addValueCallback(Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-ne p1, v0, :cond_1

    .line 8
    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance p1, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 15
    .line 16
    invoke-direct {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->IMAGE:Landroid/graphics/Bitmap;

    .line 23
    .line 24
    if-ne p1, v0, :cond_3

    .line 25
    .line 26
    if-nez p2, :cond_2

    .line 27
    .line 28
    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->imageAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    new-instance p1, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 32
    .line 33
    invoke-direct {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->imageAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_3
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->DROP_SHADOW_COLOR:Ljava/lang/Integer;

    .line 40
    .line 41
    if-ne p1, v0, :cond_4

    .line 42
    .line 43
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->dropShadowAnimation:Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;

    .line 44
    .line 45
    if-eqz v0, :cond_4

    .line 46
    .line 47
    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;->setColorCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_4
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->DROP_SHADOW_OPACITY:Ljava/lang/Float;

    .line 52
    .line 53
    if-ne p1, v0, :cond_5

    .line 54
    .line 55
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->dropShadowAnimation:Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;

    .line 56
    .line 57
    if-eqz v0, :cond_5

    .line 58
    .line 59
    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;->setOpacityCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_5
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->DROP_SHADOW_DIRECTION:Ljava/lang/Float;

    .line 64
    .line 65
    if-ne p1, v0, :cond_6

    .line 66
    .line 67
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->dropShadowAnimation:Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;

    .line 68
    .line 69
    if-eqz v0, :cond_6

    .line 70
    .line 71
    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;->setDirectionCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_6
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->DROP_SHADOW_DISTANCE:Ljava/lang/Float;

    .line 76
    .line 77
    if-ne p1, v0, :cond_7

    .line 78
    .line 79
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->dropShadowAnimation:Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;

    .line 80
    .line 81
    if-eqz v0, :cond_7

    .line 82
    .line 83
    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;->setDistanceCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_7
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->DROP_SHADOW_RADIUS:Ljava/lang/Float;

    .line 88
    .line 89
    if-ne p1, v0, :cond_8

    .line 90
    .line 91
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->dropShadowAnimation:Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;

    .line 92
    .line 93
    if-eqz p1, :cond_8

    .line 94
    .line 95
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;->setRadiusCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 96
    .line 97
    .line 98
    :cond_8
    :goto_0
    return-void
.end method

.method public drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;ILcom/airbnb/lottie/utils/DropShadow;)V
    .locals 6
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/airbnb/lottie/utils/DropShadow;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/airbnb/lottie/model/layer/ImageLayer;->getBitmap()Landroid/graphics/Bitmap;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_9

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_9

    .line 12
    .line 13
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->lottieImageAsset:Lcom/airbnb/lottie/LottieImageAsset;

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    goto/16 :goto_1

    .line 18
    .line 19
    :cond_0
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->paint:Landroid/graphics/Paint;

    .line 24
    .line 25
    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 26
    .line 27
    .line 28
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->paint:Landroid/graphics/Paint;

    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Landroid/graphics/ColorFilter;

    .line 39
    .line 40
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 41
    .line 42
    .line 43
    :cond_1
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->dropShadowAnimation:Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;

    .line 44
    .line 45
    if-eqz v2, :cond_2

    .line 46
    .line 47
    invoke-virtual {v2, p2, p3}, Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;->evaluate(Landroid/graphics/Matrix;I)Lcom/airbnb/lottie/utils/DropShadow;

    .line 48
    .line 49
    .line 50
    move-result-object p4

    .line 51
    :cond_2
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->src:Landroid/graphics/Rect;

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    const/4 v5, 0x0

    .line 62
    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 63
    .line 64
    .line 65
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 66
    .line 67
    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieDrawable;->getMaintainOriginalImageBounds()Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_3

    .line 72
    .line 73
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->dst:Landroid/graphics/Rect;

    .line 74
    .line 75
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->lottieImageAsset:Lcom/airbnb/lottie/LottieImageAsset;

    .line 76
    .line 77
    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieImageAsset;->getWidth()I

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    int-to-float v3, v3

    .line 82
    mul-float v3, v3, v1

    .line 83
    .line 84
    float-to-int v3, v3

    .line 85
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->lottieImageAsset:Lcom/airbnb/lottie/LottieImageAsset;

    .line 86
    .line 87
    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieImageAsset;->getHeight()I

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    int-to-float v4, v4

    .line 92
    mul-float v4, v4, v1

    .line 93
    .line 94
    float-to-int v1, v4

    .line 95
    invoke-virtual {v2, v5, v5, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_3
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->dst:Landroid/graphics/Rect;

    .line 100
    .line 101
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    int-to-float v3, v3

    .line 106
    mul-float v3, v3, v1

    .line 107
    .line 108
    float-to-int v3, v3

    .line 109
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    int-to-float v4, v4

    .line 114
    mul-float v4, v4, v1

    .line 115
    .line 116
    float-to-int v1, v4

    .line 117
    invoke-virtual {v2, v5, v5, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 118
    .line 119
    .line 120
    :goto_0
    if-eqz p4, :cond_4

    .line 121
    .line 122
    const/4 v5, 0x1

    .line 123
    :cond_4
    if-eqz v5, :cond_7

    .line 124
    .line 125
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->offscreenLayer:Lcom/airbnb/lottie/utils/OffscreenLayer;

    .line 126
    .line 127
    if-nez v1, :cond_5

    .line 128
    .line 129
    new-instance v1, Lcom/airbnb/lottie/utils/OffscreenLayer;

    .line 130
    .line 131
    invoke-direct {v1}, Lcom/airbnb/lottie/utils/OffscreenLayer;-><init>()V

    .line 132
    .line 133
    .line 134
    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->offscreenLayer:Lcom/airbnb/lottie/utils/OffscreenLayer;

    .line 135
    .line 136
    :cond_5
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->offscreenOp:Lcom/airbnb/lottie/utils/OffscreenLayer$ComposeOp;

    .line 137
    .line 138
    if-nez v1, :cond_6

    .line 139
    .line 140
    new-instance v1, Lcom/airbnb/lottie/utils/OffscreenLayer$ComposeOp;

    .line 141
    .line 142
    invoke-direct {v1}, Lcom/airbnb/lottie/utils/OffscreenLayer$ComposeOp;-><init>()V

    .line 143
    .line 144
    .line 145
    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->offscreenOp:Lcom/airbnb/lottie/utils/OffscreenLayer$ComposeOp;

    .line 146
    .line 147
    :cond_6
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->offscreenOp:Lcom/airbnb/lottie/utils/OffscreenLayer$ComposeOp;

    .line 148
    .line 149
    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/OffscreenLayer$ComposeOp;->reset()V

    .line 150
    .line 151
    .line 152
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->offscreenOp:Lcom/airbnb/lottie/utils/OffscreenLayer$ComposeOp;

    .line 153
    .line 154
    invoke-virtual {p4, p3, v1}, Lcom/airbnb/lottie/utils/DropShadow;->applyWithAlpha(ILcom/airbnb/lottie/utils/OffscreenLayer$ComposeOp;)V

    .line 155
    .line 156
    .line 157
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->layerBounds:Landroid/graphics/RectF;

    .line 158
    .line 159
    iget-object p4, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->dst:Landroid/graphics/Rect;

    .line 160
    .line 161
    iget v1, p4, Landroid/graphics/Rect;->left:I

    .line 162
    .line 163
    int-to-float v1, v1

    .line 164
    iget v2, p4, Landroid/graphics/Rect;->top:I

    .line 165
    .line 166
    int-to-float v2, v2

    .line 167
    iget v3, p4, Landroid/graphics/Rect;->right:I

    .line 168
    .line 169
    int-to-float v3, v3

    .line 170
    iget p4, p4, Landroid/graphics/Rect;->bottom:I

    .line 171
    .line 172
    int-to-float p4, p4

    .line 173
    invoke-virtual {p3, v1, v2, v3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 174
    .line 175
    .line 176
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->layerBounds:Landroid/graphics/RectF;

    .line 177
    .line 178
    invoke-virtual {p2, p3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 179
    .line 180
    .line 181
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->offscreenLayer:Lcom/airbnb/lottie/utils/OffscreenLayer;

    .line 182
    .line 183
    iget-object p4, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->layerBounds:Landroid/graphics/RectF;

    .line 184
    .line 185
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->offscreenOp:Lcom/airbnb/lottie/utils/OffscreenLayer$ComposeOp;

    .line 186
    .line 187
    invoke-virtual {p3, p1, p4, v1}, Lcom/airbnb/lottie/utils/OffscreenLayer;->start(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/airbnb/lottie/utils/OffscreenLayer$ComposeOp;)Landroid/graphics/Canvas;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 192
    .line 193
    .line 194
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 195
    .line 196
    .line 197
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->src:Landroid/graphics/Rect;

    .line 198
    .line 199
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->dst:Landroid/graphics/Rect;

    .line 200
    .line 201
    iget-object p4, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->paint:Landroid/graphics/Paint;

    .line 202
    .line 203
    invoke-virtual {p1, v0, p2, p3, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 204
    .line 205
    .line 206
    if-eqz v5, :cond_8

    .line 207
    .line 208
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->offscreenLayer:Lcom/airbnb/lottie/utils/OffscreenLayer;

    .line 209
    .line 210
    invoke-virtual {p2}, Lcom/airbnb/lottie/utils/OffscreenLayer;->finish()V

    .line 211
    .line 212
    .line 213
    :cond_8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 214
    .line 215
    .line 216
    :cond_9
    :goto_1
    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->lottieImageAsset:Lcom/airbnb/lottie/LottieImageAsset;

    .line 5
    .line 6
    if-eqz p2, :cond_1

    .line 7
    .line 8
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 13
    .line 14
    invoke-virtual {p3}, Lcom/airbnb/lottie/LottieDrawable;->getMaintainOriginalImageBounds()Z

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    const/4 v0, 0x0

    .line 19
    if-eqz p3, :cond_0

    .line 20
    .line 21
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->lottieImageAsset:Lcom/airbnb/lottie/LottieImageAsset;

    .line 22
    .line 23
    invoke-virtual {p3}, Lcom/airbnb/lottie/LottieImageAsset;->getWidth()I

    .line 24
    .line 25
    .line 26
    move-result p3

    .line 27
    int-to-float p3, p3

    .line 28
    mul-float p3, p3, p2

    .line 29
    .line 30
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->lottieImageAsset:Lcom/airbnb/lottie/LottieImageAsset;

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieImageAsset;->getHeight()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    int-to-float v1, v1

    .line 37
    mul-float v1, v1, p2

    .line 38
    .line 39
    invoke-virtual {p1, v0, v0, p3, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-direct {p0}, Lcom/airbnb/lottie/model/layer/ImageLayer;->getBitmap()Landroid/graphics/Bitmap;

    .line 44
    .line 45
    .line 46
    move-result-object p3

    .line 47
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    .line 48
    .line 49
    .line 50
    move-result p3

    .line 51
    int-to-float p3, p3

    .line 52
    mul-float p3, p3, p2

    .line 53
    .line 54
    invoke-direct {p0}, Lcom/airbnb/lottie/model/layer/ImageLayer;->getBitmap()Landroid/graphics/Bitmap;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    int-to-float v1, v1

    .line 63
    mul-float v1, v1, p2

    .line 64
    .line 65
    invoke-virtual {p1, v0, v0, p3, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 66
    .line 67
    .line 68
    :goto_0
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->boundsMatrix:Landroid/graphics/Matrix;

    .line 69
    .line 70
    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 71
    .line 72
    .line 73
    :cond_1
    return-void
.end method
