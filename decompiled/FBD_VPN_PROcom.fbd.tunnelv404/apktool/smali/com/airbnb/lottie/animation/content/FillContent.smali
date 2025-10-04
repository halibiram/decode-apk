.class public Lcom/airbnb/lottie/animation/content/FillContent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/animation/content/DrawingContent;
.implements Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;
.implements Lcom/airbnb/lottie/animation/content/KeyPathElementContent;


# instance fields
.field private blurAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field blurMaskFilterRadius:F

.field private final colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

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

.field private final hidden:Z

.field private final layer:Lcom/airbnb/lottie/model/layer/BaseLayer;

.field private final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field private final name:Ljava/lang/String;

.field private final opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final paint:Landroid/graphics/Paint;

.field private final path:Landroid/graphics/Path;

.field private final paths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/animation/content/PathContent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/ShapeFill;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Path;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/FillContent;->path:Landroid/graphics/Path;

    .line 10
    .line 11
    new-instance v1, Lcom/airbnb/lottie/animation/LPaint;

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-direct {v1, v2}, Lcom/airbnb/lottie/animation/LPaint;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcom/airbnb/lottie/animation/content/FillContent;->paint:Landroid/graphics/Paint;

    .line 18
    .line 19
    new-instance v1, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lcom/airbnb/lottie/animation/content/FillContent;->paths:Ljava/util/List;

    .line 25
    .line 26
    iput-object p2, p0, Lcom/airbnb/lottie/animation/content/FillContent;->layer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 27
    .line 28
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/ShapeFill;->getName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iput-object v1, p0, Lcom/airbnb/lottie/animation/content/FillContent;->name:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/ShapeFill;->isHidden()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    iput-boolean v1, p0, Lcom/airbnb/lottie/animation/content/FillContent;->hidden:Z

    .line 39
    .line 40
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/FillContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 41
    .line 42
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getBlurEffect()Lcom/airbnb/lottie/model/content/BlurEffect;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    if-eqz p1, :cond_0

    .line 47
    .line 48
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getBlurEffect()Lcom/airbnb/lottie/model/content/BlurEffect;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/content/BlurEffect;->getBlurriness()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/FillContent;->blurAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 61
    .line 62
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/FillContent;->blurAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 66
    .line 67
    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 68
    .line 69
    .line 70
    :cond_0
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/ShapeFill;->getColor()Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    if-eqz p1, :cond_2

    .line 75
    .line 76
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/ShapeFill;->getOpacity()Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    if-nez p1, :cond_1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/ShapeFill;->getFillType()Landroid/graphics/Path$FillType;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {v0, p1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/ShapeFill;->getColor()Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/FillContent;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 99
    .line 100
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/ShapeFill;->getOpacity()Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/FillContent;->opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 115
    .line 116
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 124
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/FillContent;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 125
    .line 126
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/FillContent;->opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 127
    .line 128
    return-void
.end method


# virtual methods
.method public addValueCallback(Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V
    .locals 1
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
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->COLOR:Ljava/lang/Integer;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/FillContent;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 6
    .line 7
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->OPACITY:Ljava/lang/Integer;

    .line 12
    .line 13
    if-ne p1, v0, :cond_1

    .line 14
    .line 15
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/FillContent;->opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    .line 22
    .line 23
    if-ne p1, v0, :cond_4

    .line 24
    .line 25
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/FillContent;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 26
    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/FillContent;->layer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->removeAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 32
    .line 33
    .line 34
    :cond_2
    if-nez p2, :cond_3

    .line 35
    .line 36
    const/4 p1, 0x0

    .line 37
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/FillContent;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_3
    new-instance p1, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 41
    .line 42
    invoke-direct {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 43
    .line 44
    .line 45
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/FillContent;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 46
    .line 47
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/FillContent;->layer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 51
    .line 52
    iget-object p2, p0, Lcom/airbnb/lottie/animation/content/FillContent;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 53
    .line 54
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_4
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->BLUR_RADIUS:Ljava/lang/Float;

    .line 59
    .line 60
    if-ne p1, v0, :cond_6

    .line 61
    .line 62
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/FillContent;->blurAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 63
    .line 64
    if-eqz p1, :cond_5

    .line 65
    .line 66
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_5
    new-instance p1, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 71
    .line 72
    invoke-direct {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 73
    .line 74
    .line 75
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/FillContent;->blurAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 76
    .line 77
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/FillContent;->layer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 81
    .line 82
    iget-object p2, p0, Lcom/airbnb/lottie/animation/content/FillContent;->blurAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 83
    .line 84
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 85
    .line 86
    .line 87
    :cond_6
    :goto_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;ILcom/airbnb/lottie/utils/DropShadow;)V
    .locals 6
    .param p4    # Lcom/airbnb/lottie/utils/DropShadow;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x3

    .line 2
    iget-boolean v1, p0, Lcom/airbnb/lottie/animation/content/FillContent;->hidden:Z

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    invoke-static {}, Lcom/airbnb/lottie/L;->isTraceEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

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
    invoke-static {v1}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/FillContent;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 31
    .line 32
    check-cast v1, Lcom/airbnb/lottie/animation/keyframe/ColorKeyframeAnimation;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/ColorKeyframeAnimation;->getIntValue()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/FillContent;->opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 39
    .line 40
    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Ljava/lang/Integer;

    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    int-to-float v2, v2

    .line 51
    const/high16 v3, 0x42c80000    # 100.0f

    .line 52
    .line 53
    div-float/2addr v2, v3

    .line 54
    int-to-float p3, p3

    .line 55
    mul-float p3, p3, v2

    .line 56
    .line 57
    float-to-int p3, p3

    .line 58
    const/16 v3, 0xff

    .line 59
    .line 60
    const/4 v4, 0x0

    .line 61
    invoke-static {p3, v4, v3}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(III)I

    .line 62
    .line 63
    .line 64
    move-result p3

    .line 65
    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/FillContent;->paint:Landroid/graphics/Paint;

    .line 66
    .line 67
    shl-int/lit8 p3, p3, 0x18

    .line 68
    .line 69
    const v5, 0xffffff

    .line 70
    .line 71
    .line 72
    and-int/2addr v1, v5

    .line 73
    or-int/2addr p3, v1

    .line 74
    invoke-virtual {v3, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    .line 76
    .line 77
    iget-object p3, p0, Lcom/airbnb/lottie/animation/content/FillContent;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 78
    .line 79
    if-eqz p3, :cond_2

    .line 80
    .line 81
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/FillContent;->paint:Landroid/graphics/Paint;

    .line 82
    .line 83
    invoke-virtual {p3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p3

    .line 87
    check-cast p3, Landroid/graphics/ColorFilter;

    .line 88
    .line 89
    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 90
    .line 91
    .line 92
    :cond_2
    iget-object p3, p0, Lcom/airbnb/lottie/animation/content/FillContent;->blurAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 93
    .line 94
    if-eqz p3, :cond_5

    .line 95
    .line 96
    invoke-virtual {p3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p3

    .line 100
    check-cast p3, Ljava/lang/Float;

    .line 101
    .line 102
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    .line 103
    .line 104
    .line 105
    move-result p3

    .line 106
    const/4 v1, 0x0

    .line 107
    cmpl-float v1, p3, v1

    .line 108
    .line 109
    if-nez v1, :cond_3

    .line 110
    .line 111
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/FillContent;->paint:Landroid/graphics/Paint;

    .line 112
    .line 113
    const/4 v3, 0x0

    .line 114
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_3
    iget v1, p0, Lcom/airbnb/lottie/animation/content/FillContent;->blurMaskFilterRadius:F

    .line 119
    .line 120
    cmpl-float v1, p3, v1

    .line 121
    .line 122
    if-eqz v1, :cond_4

    .line 123
    .line 124
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/FillContent;->layer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 125
    .line 126
    invoke-virtual {v1, p3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getBlurMaskFilter(F)Landroid/graphics/BlurMaskFilter;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/FillContent;->paint:Landroid/graphics/Paint;

    .line 131
    .line 132
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 133
    .line 134
    .line 135
    :cond_4
    :goto_0
    iput p3, p0, Lcom/airbnb/lottie/animation/content/FillContent;->blurMaskFilterRadius:F

    .line 136
    .line 137
    :cond_5
    if-eqz p4, :cond_6

    .line 138
    .line 139
    const/high16 p3, 0x437f0000    # 255.0f

    .line 140
    .line 141
    mul-float v2, v2, p3

    .line 142
    .line 143
    float-to-int p3, v2

    .line 144
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/FillContent;->paint:Landroid/graphics/Paint;

    .line 145
    .line 146
    invoke-virtual {p4, p3, v1}, Lcom/airbnb/lottie/utils/DropShadow;->applyWithAlpha(ILandroid/graphics/Paint;)V

    .line 147
    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_6
    iget-object p3, p0, Lcom/airbnb/lottie/animation/content/FillContent;->paint:Landroid/graphics/Paint;

    .line 151
    .line 152
    invoke-virtual {p3}, Landroid/graphics/Paint;->clearShadowLayer()V

    .line 153
    .line 154
    .line 155
    :goto_1
    iget-object p3, p0, Lcom/airbnb/lottie/animation/content/FillContent;->path:Landroid/graphics/Path;

    .line 156
    .line 157
    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    .line 158
    .line 159
    .line 160
    :goto_2
    iget-object p3, p0, Lcom/airbnb/lottie/animation/content/FillContent;->paths:Ljava/util/List;

    .line 161
    .line 162
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 163
    .line 164
    .line 165
    move-result p3

    .line 166
    if-ge v4, p3, :cond_7

    .line 167
    .line 168
    iget-object p3, p0, Lcom/airbnb/lottie/animation/content/FillContent;->path:Landroid/graphics/Path;

    .line 169
    .line 170
    iget-object p4, p0, Lcom/airbnb/lottie/animation/content/FillContent;->paths:Ljava/util/List;

    .line 171
    .line 172
    invoke-interface {p4, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object p4

    .line 176
    check-cast p4, Lcom/airbnb/lottie/animation/content/PathContent;

    .line 177
    .line 178
    invoke-interface {p4}, Lcom/airbnb/lottie/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    .line 179
    .line 180
    .line 181
    move-result-object p4

    .line 182
    invoke-virtual {p3, p4, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 183
    .line 184
    .line 185
    add-int/lit8 v4, v4, 0x1

    .line 186
    .line 187
    goto :goto_2

    .line 188
    :cond_7
    iget-object p2, p0, Lcom/airbnb/lottie/animation/content/FillContent;->path:Landroid/graphics/Path;

    .line 189
    .line 190
    iget-object p3, p0, Lcom/airbnb/lottie/animation/content/FillContent;->paint:Landroid/graphics/Paint;

    .line 191
    .line 192
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 193
    .line 194
    .line 195
    invoke-static {}, Lcom/airbnb/lottie/L;->isTraceEnabled()Z

    .line 196
    .line 197
    .line 198
    move-result p1

    .line 199
    if-eqz p1, :cond_8

    .line 200
    .line 201
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 202
    .line 203
    new-array p2, v0, [J

    .line 204
    .line 205
    fill-array-data p2, :array_1

    .line 206
    .line 207
    .line 208
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    invoke-static {p1}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 216
    .line 217
    .line 218
    :cond_8
    return-void

    .line 219
    :array_0
    .array-data 8
        0x64fbc8f7e6e017d5L    # 2.8148053148539408E178
        -0x403074f10c098158L    # -0.24643122589349287
        0x426b55d1c1ed6391L    # 9.392314161711115E11
    .end array-data

    .line 220
    .line 221
    .line 222
    :array_1
    .array-data 8
        0x2ea8d5599fb3736eL    # 6.39156752355646E-84
        -0x40f93eea34308beeL    # -4.3400266328076764E-5
        -0x13e8498d4385d578L    # -4.9892785085111E212
    .end array-data
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 3

    .line 1
    iget-object p3, p0, Lcom/airbnb/lottie/animation/content/FillContent;->path:Landroid/graphics/Path;

    .line 2
    .line 3
    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    .line 4
    .line 5
    .line 6
    const/4 p3, 0x0

    .line 7
    const/4 v0, 0x0

    .line 8
    :goto_0
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/FillContent;->paths:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-ge v0, v1, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/FillContent;->path:Landroid/graphics/Path;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/FillContent;->paths:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcom/airbnb/lottie/animation/content/PathContent;

    .line 25
    .line 26
    invoke-interface {v2}, Lcom/airbnb/lottie/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v1, v2, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 31
    .line 32
    .line 33
    add-int/lit8 v0, v0, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object p2, p0, Lcom/airbnb/lottie/animation/content/FillContent;->path:Landroid/graphics/Path;

    .line 37
    .line 38
    invoke-virtual {p2, p1, p3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 39
    .line 40
    .line 41
    iget p2, p1, Landroid/graphics/RectF;->left:F

    .line 42
    .line 43
    const/high16 p3, 0x3f800000    # 1.0f

    .line 44
    .line 45
    sub-float/2addr p2, p3

    .line 46
    iget v0, p1, Landroid/graphics/RectF;->top:F

    .line 47
    .line 48
    sub-float/2addr v0, p3

    .line 49
    iget v1, p1, Landroid/graphics/RectF;->right:F

    .line 50
    .line 51
    add-float/2addr v1, p3

    .line 52
    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    .line 53
    .line 54
    add-float/2addr v2, p3

    .line 55
    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/FillContent;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public onValueChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/FillContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/model/KeyPath;",
            "I",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/KeyPath;",
            ">;",
            "Lcom/airbnb/lottie/model/KeyPath;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2, p3, p4, p0}, Lcom/airbnb/lottie/utils/MiscUtils;->resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;Lcom/airbnb/lottie/animation/content/KeyPathElementContent;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/animation/content/Content;",
            ">;",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/animation/content/Content;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 p1, 0x0

    .line 2
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-ge p1, v0, :cond_1

    .line 7
    .line 8
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/airbnb/lottie/animation/content/Content;

    .line 13
    .line 14
    instance-of v1, v0, Lcom/airbnb/lottie/animation/content/PathContent;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/FillContent;->paths:Ljava/util/List;

    .line 19
    .line 20
    check-cast v0, Lcom/airbnb/lottie/animation/content/PathContent;

    .line 21
    .line 22
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    return-void
.end method
