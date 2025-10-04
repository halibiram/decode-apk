.class public Lcom/airbnb/lottie/animation/content/ContentGroup;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/animation/content/DrawingContent;
.implements Lcom/airbnb/lottie/animation/content/PathContent;
.implements Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;
.implements Lcom/airbnb/lottie/model/KeyPathElement;


# instance fields
.field private final contents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/animation/content/Content;",
            ">;"
        }
    .end annotation
.end field

.field private final hidden:Z

.field private final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field private final matrix:Landroid/graphics/Matrix;

.field private final name:Ljava/lang/String;

.field private final offScreenRectF:Landroid/graphics/RectF;

.field private final offscreenLayer:Lcom/airbnb/lottie/utils/OffscreenLayer;

.field private final offscreenOp:Lcom/airbnb/lottie/utils/OffscreenLayer$ComposeOp;

.field private final path:Landroid/graphics/Path;

.field private pathContents:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/animation/content/PathContent;",
            ">;"
        }
    .end annotation
.end field

.field private final rect:Landroid/graphics/RectF;

.field private transformAnimation:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/ShapeGroup;Lcom/airbnb/lottie/LottieComposition;)V
    .locals 7

    .line 1
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/ShapeGroup;->getName()Ljava/lang/String;

    move-result-object v3

    .line 2
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/ShapeGroup;->isHidden()Z

    move-result v4

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/ShapeGroup;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, p4, p2, v0}, Lcom/airbnb/lottie/animation/content/ContentGroup;->contentsFromModels(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/LottieComposition;Lcom/airbnb/lottie/model/layer/BaseLayer;Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 3
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/ShapeGroup;->getItems()Ljava/util/List;

    move-result-object p3

    invoke-static {p3}, Lcom/airbnb/lottie/animation/content/ContentGroup;->findTransform(Ljava/util/List;)Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 4
    invoke-direct/range {v0 .. v6}, Lcom/airbnb/lottie/animation/content/ContentGroup;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Ljava/lang/String;ZLjava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableTransform;)V

    return-void
.end method

.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Ljava/lang/String;ZLjava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableTransform;)V
    .locals 1
    .param p6    # Lcom/airbnb/lottie/model/animatable/AnimatableTransform;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/LottieDrawable;",
            "Lcom/airbnb/lottie/model/layer/BaseLayer;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/animation/content/Content;",
            ">;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableTransform;",
            ")V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Lcom/airbnb/lottie/utils/OffscreenLayer$ComposeOp;

    invoke-direct {v0}, Lcom/airbnb/lottie/utils/OffscreenLayer$ComposeOp;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->offscreenOp:Lcom/airbnb/lottie/utils/OffscreenLayer$ComposeOp;

    .line 7
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->offScreenRectF:Landroid/graphics/RectF;

    .line 8
    new-instance v0, Lcom/airbnb/lottie/utils/OffscreenLayer;

    invoke-direct {v0}, Lcom/airbnb/lottie/utils/OffscreenLayer;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->offscreenLayer:Lcom/airbnb/lottie/utils/OffscreenLayer;

    .line 9
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    .line 10
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->path:Landroid/graphics/Path;

    .line 11
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->rect:Landroid/graphics/RectF;

    .line 12
    iput-object p3, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->name:Ljava/lang/String;

    .line 13
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 14
    iput-boolean p4, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->hidden:Z

    .line 15
    iput-object p5, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->contents:Ljava/util/List;

    if-eqz p6, :cond_0

    .line 16
    invoke-virtual {p6}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->transformAnimation:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    .line 17
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->addAnimationsToLayer(Lcom/airbnb/lottie/model/layer/BaseLayer;)V

    .line 18
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->transformAnimation:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->addListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 19
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 20
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ltz p2, :cond_2

    .line 21
    invoke-interface {p5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/airbnb/lottie/animation/content/Content;

    .line 22
    instance-of p4, p3, Lcom/airbnb/lottie/animation/content/GreedyContent;

    if-eqz p4, :cond_1

    .line 23
    check-cast p3, Lcom/airbnb/lottie/animation/content/GreedyContent;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 24
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_1
    if-ltz p2, :cond_3

    .line 25
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/airbnb/lottie/animation/content/GreedyContent;

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p4

    invoke-interface {p5, p4}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p4

    invoke-interface {p3, p4}, Lcom/airbnb/lottie/animation/content/GreedyContent;->absorbContent(Ljava/util/ListIterator;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private static contentsFromModels(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/LottieComposition;Lcom/airbnb/lottie/model/layer/BaseLayer;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/LottieDrawable;",
            "Lcom/airbnb/lottie/LottieComposition;",
            "Lcom/airbnb/lottie/model/layer/BaseLayer;",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/content/ContentModel;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/animation/content/Content;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-ge v1, v2, :cond_1

    .line 16
    .line 17
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lcom/airbnb/lottie/model/content/ContentModel;

    .line 22
    .line 23
    invoke-interface {v2, p0, p1, p2}, Lcom/airbnb/lottie/model/content/ContentModel;->toContent(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/LottieComposition;Lcom/airbnb/lottie/model/layer/BaseLayer;)Lcom/airbnb/lottie/animation/content/Content;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    return-object v0
.end method

.method public static findTransform(Ljava/util/List;)Lcom/airbnb/lottie/model/animatable/AnimatableTransform;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/content/ContentModel;",
            ">;)",
            "Lcom/airbnb/lottie/model/animatable/AnimatableTransform;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_1

    .line 7
    .line 8
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Lcom/airbnb/lottie/model/content/ContentModel;

    .line 13
    .line 14
    instance-of v2, v1, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    check-cast v1, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    .line 19
    .line 20
    return-object v1

    .line 21
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 p0, 0x0

    .line 25
    return-object p0
.end method

.method private hasTwoOrMoreDrawableContent()Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_0
    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->contents:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v3

    .line 10
    if-ge v1, v3, :cond_1

    .line 11
    .line 12
    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->contents:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    instance-of v3, v3, Lcom/airbnb/lottie/animation/content/DrawingContent;

    .line 19
    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    add-int/lit8 v2, v2, 0x1

    .line 23
    .line 24
    const/4 v3, 0x2

    .line 25
    if-lt v2, v3, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    return v0

    .line 29
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    return v0
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
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->transformAnimation:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->applyValueCallback(Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)Z

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;ILcom/airbnb/lottie/utils/DropShadow;)V
    .locals 5
    .param p4    # Lcom/airbnb/lottie/utils/DropShadow;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->hidden:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    .line 7
    .line 8
    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->transformAnimation:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->transformAnimation:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getOpacity()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    const/16 v0, 0x64

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->transformAnimation:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getOpacity()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Ljava/lang/Integer;

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    :goto_0
    int-to-float v0, v0

    .line 52
    const/high16 v1, 0x42c80000    # 100.0f

    .line 53
    .line 54
    div-float/2addr v0, v1

    .line 55
    int-to-float p3, p3

    .line 56
    mul-float v0, v0, p3

    .line 57
    .line 58
    const/high16 p3, 0x437f0000    # 255.0f

    .line 59
    .line 60
    div-float/2addr v0, p3

    .line 61
    mul-float v0, v0, p3

    .line 62
    .line 63
    float-to-int p3, v0

    .line 64
    :cond_2
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->isApplyingOpacityToLayersEnabled()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    const/16 v1, 0xff

    .line 71
    .line 72
    const/4 v2, 0x1

    .line 73
    if-eqz v0, :cond_3

    .line 74
    .line 75
    invoke-direct {p0}, Lcom/airbnb/lottie/animation/content/ContentGroup;->hasTwoOrMoreDrawableContent()Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_3

    .line 80
    .line 81
    if-ne p3, v1, :cond_4

    .line 82
    .line 83
    :cond_3
    if-eqz p4, :cond_5

    .line 84
    .line 85
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->isApplyingShadowToLayersEnabled()Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_5

    .line 92
    .line 93
    invoke-direct {p0}, Lcom/airbnb/lottie/animation/content/ContentGroup;->hasTwoOrMoreDrawableContent()Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_5

    .line 98
    .line 99
    :cond_4
    const/4 v0, 0x1

    .line 100
    goto :goto_1

    .line 101
    :cond_5
    const/4 v0, 0x0

    .line 102
    :goto_1
    if-eqz v0, :cond_6

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_6
    move v1, p3

    .line 106
    :goto_2
    if-eqz v0, :cond_8

    .line 107
    .line 108
    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->offScreenRectF:Landroid/graphics/RectF;

    .line 109
    .line 110
    const/4 v4, 0x0

    .line 111
    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 112
    .line 113
    .line 114
    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->offScreenRectF:Landroid/graphics/RectF;

    .line 115
    .line 116
    invoke-virtual {p0, v3, p2, v2}, Lcom/airbnb/lottie/animation/content/ContentGroup;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 117
    .line 118
    .line 119
    iget-object p2, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->offscreenOp:Lcom/airbnb/lottie/utils/OffscreenLayer$ComposeOp;

    .line 120
    .line 121
    iput p3, p2, Lcom/airbnb/lottie/utils/OffscreenLayer$ComposeOp;->alpha:I

    .line 122
    .line 123
    const/4 p3, 0x0

    .line 124
    if-eqz p4, :cond_7

    .line 125
    .line 126
    invoke-virtual {p4, p2}, Lcom/airbnb/lottie/utils/DropShadow;->applyTo(Lcom/airbnb/lottie/utils/OffscreenLayer$ComposeOp;)V

    .line 127
    .line 128
    .line 129
    move-object p4, p3

    .line 130
    goto :goto_3

    .line 131
    :cond_7
    iput-object p3, p2, Lcom/airbnb/lottie/utils/OffscreenLayer$ComposeOp;->shadow:Lcom/airbnb/lottie/utils/DropShadow;

    .line 132
    .line 133
    :goto_3
    iget-object p2, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->offscreenLayer:Lcom/airbnb/lottie/utils/OffscreenLayer;

    .line 134
    .line 135
    iget-object p3, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->offScreenRectF:Landroid/graphics/RectF;

    .line 136
    .line 137
    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->offscreenOp:Lcom/airbnb/lottie/utils/OffscreenLayer$ComposeOp;

    .line 138
    .line 139
    invoke-virtual {p2, p1, p3, v3}, Lcom/airbnb/lottie/utils/OffscreenLayer;->start(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/airbnb/lottie/utils/OffscreenLayer$ComposeOp;)Landroid/graphics/Canvas;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    goto :goto_4

    .line 144
    :cond_8
    if-eqz p4, :cond_9

    .line 145
    .line 146
    new-instance p2, Lcom/airbnb/lottie/utils/DropShadow;

    .line 147
    .line 148
    invoke-direct {p2, p4}, Lcom/airbnb/lottie/utils/DropShadow;-><init>(Lcom/airbnb/lottie/utils/DropShadow;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p2, v1}, Lcom/airbnb/lottie/utils/DropShadow;->multiplyOpacity(I)V

    .line 152
    .line 153
    .line 154
    move-object p4, p2

    .line 155
    :cond_9
    :goto_4
    iget-object p2, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->contents:Ljava/util/List;

    .line 156
    .line 157
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 158
    .line 159
    .line 160
    move-result p2

    .line 161
    sub-int/2addr p2, v2

    .line 162
    :goto_5
    if-ltz p2, :cond_b

    .line 163
    .line 164
    iget-object p3, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->contents:Ljava/util/List;

    .line 165
    .line 166
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object p3

    .line 170
    instance-of v2, p3, Lcom/airbnb/lottie/animation/content/DrawingContent;

    .line 171
    .line 172
    if-eqz v2, :cond_a

    .line 173
    .line 174
    check-cast p3, Lcom/airbnb/lottie/animation/content/DrawingContent;

    .line 175
    .line 176
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    .line 177
    .line 178
    invoke-interface {p3, p1, v2, v1, p4}, Lcom/airbnb/lottie/animation/content/DrawingContent;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;ILcom/airbnb/lottie/utils/DropShadow;)V

    .line 179
    .line 180
    .line 181
    :cond_a
    add-int/lit8 p2, p2, -0x1

    .line 182
    .line 183
    goto :goto_5

    .line 184
    :cond_b
    if-eqz v0, :cond_c

    .line 185
    .line 186
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->offscreenLayer:Lcom/airbnb/lottie/utils/OffscreenLayer;

    .line 187
    .line 188
    invoke-virtual {p1}, Lcom/airbnb/lottie/utils/OffscreenLayer;->finish()V

    .line 189
    .line 190
    .line 191
    :cond_c
    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->transformAnimation:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    .line 11
    .line 12
    invoke-virtual {p2}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object p2, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->rect:Landroid/graphics/RectF;

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-virtual {p2, v0, v0, v0, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 23
    .line 24
    .line 25
    iget-object p2, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->contents:Ljava/util/List;

    .line 26
    .line 27
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    add-int/lit8 p2, p2, -0x1

    .line 32
    .line 33
    :goto_0
    if-ltz p2, :cond_2

    .line 34
    .line 35
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->contents:Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Lcom/airbnb/lottie/animation/content/Content;

    .line 42
    .line 43
    instance-of v1, v0, Lcom/airbnb/lottie/animation/content/DrawingContent;

    .line 44
    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    check-cast v0, Lcom/airbnb/lottie/animation/content/DrawingContent;

    .line 48
    .line 49
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->rect:Landroid/graphics/RectF;

    .line 50
    .line 51
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    .line 52
    .line 53
    invoke-interface {v0, v1, v2, p3}, Lcom/airbnb/lottie/animation/content/DrawingContent;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->rect:Landroid/graphics/RectF;

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    add-int/lit8 p2, p2, -0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    return-void
.end method

.method public getContents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/animation/content/Content;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->contents:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->transformAnimation:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->path:Landroid/graphics/Path;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 22
    .line 23
    .line 24
    iget-boolean v0, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->hidden:Z

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->path:Landroid/graphics/Path;

    .line 29
    .line 30
    return-object v0

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->contents:Ljava/util/List;

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    add-int/lit8 v0, v0, -0x1

    .line 38
    .line 39
    :goto_0
    if-ltz v0, :cond_3

    .line 40
    .line 41
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->contents:Ljava/util/List;

    .line 42
    .line 43
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Lcom/airbnb/lottie/animation/content/Content;

    .line 48
    .line 49
    instance-of v2, v1, Lcom/airbnb/lottie/animation/content/PathContent;

    .line 50
    .line 51
    if-eqz v2, :cond_2

    .line 52
    .line 53
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->path:Landroid/graphics/Path;

    .line 54
    .line 55
    check-cast v1, Lcom/airbnb/lottie/animation/content/PathContent;

    .line 56
    .line 57
    invoke-interface {v1}, Lcom/airbnb/lottie/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    .line 62
    .line 63
    invoke-virtual {v2, v1, v3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 64
    .line 65
    .line 66
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->path:Landroid/graphics/Path;

    .line 70
    .line 71
    return-object v0
.end method

.method public getPathList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/animation/content/PathContent;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->pathContents:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->pathContents:Ljava/util/List;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    :goto_0
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->contents:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-ge v0, v1, :cond_1

    .line 20
    .line 21
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->contents:Ljava/util/List;

    .line 22
    .line 23
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/airbnb/lottie/animation/content/Content;

    .line 28
    .line 29
    instance-of v2, v1, Lcom/airbnb/lottie/animation/content/PathContent;

    .line 30
    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->pathContents:Ljava/util/List;

    .line 34
    .line 35
    check-cast v1, Lcom/airbnb/lottie/animation/content/PathContent;

    .line 36
    .line 37
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->pathContents:Ljava/util/List;

    .line 44
    .line 45
    return-object v0
.end method

.method public getTransformationMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->transformAnimation:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    .line 16
    .line 17
    return-object v0
.end method

.method public onValueChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;)V
    .locals 3
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
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0}, Lcom/airbnb/lottie/animation/content/ContentGroup;->getName()Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {p1, v1, p2}, Lcom/airbnb/lottie/model/KeyPath;->matches(Ljava/lang/String;I)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 13
    .line 14
    new-array v2, v0, [J

    .line 15
    .line 16
    fill-array-data v2, :array_0

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {p0}, Lcom/airbnb/lottie/animation/content/ContentGroup;->getName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_0

    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 38
    .line 39
    new-array v0, v0, [J

    .line 40
    .line 41
    fill-array-data v0, :array_1

    .line 42
    .line 43
    .line 44
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p0}, Lcom/airbnb/lottie/animation/content/ContentGroup;->getName()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_1

    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/airbnb/lottie/animation/content/ContentGroup;->getName()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {p4, v0}, Lcom/airbnb/lottie/model/KeyPath;->addKey(Ljava/lang/String;)Lcom/airbnb/lottie/model/KeyPath;

    .line 66
    .line 67
    .line 68
    move-result-object p4

    .line 69
    invoke-virtual {p0}, Lcom/airbnb/lottie/animation/content/ContentGroup;->getName()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {p1, v0, p2}, Lcom/airbnb/lottie/model/KeyPath;->fullyResolvesTo(Ljava/lang/String;I)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_1

    .line 78
    .line 79
    invoke-virtual {p4, p0}, Lcom/airbnb/lottie/model/KeyPath;->resolve(Lcom/airbnb/lottie/model/KeyPathElement;)Lcom/airbnb/lottie/model/KeyPath;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    :cond_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/animation/content/ContentGroup;->getName()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {p1, v0, p2}, Lcom/airbnb/lottie/model/KeyPath;->propagateToChildren(Ljava/lang/String;I)Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_3

    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/airbnb/lottie/animation/content/ContentGroup;->getName()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {p1, v0, p2}, Lcom/airbnb/lottie/model/KeyPath;->incrementDepthBy(Ljava/lang/String;I)I

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    add-int/2addr v0, p2

    .line 105
    const/4 p2, 0x0

    .line 106
    :goto_0
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->contents:Ljava/util/List;

    .line 107
    .line 108
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-ge p2, v1, :cond_3

    .line 113
    .line 114
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->contents:Ljava/util/List;

    .line 115
    .line 116
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    check-cast v1, Lcom/airbnb/lottie/animation/content/Content;

    .line 121
    .line 122
    instance-of v2, v1, Lcom/airbnb/lottie/model/KeyPathElement;

    .line 123
    .line 124
    if-eqz v2, :cond_2

    .line 125
    .line 126
    check-cast v1, Lcom/airbnb/lottie/model/KeyPathElement;

    .line 127
    .line 128
    invoke-interface {v1, p1, v0, p3, p4}, Lcom/airbnb/lottie/model/KeyPathElement;->resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;)V

    .line 129
    .line 130
    .line 131
    :cond_2
    add-int/lit8 p2, p2, 0x1

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_3
    return-void

    .line 135
    :array_0
    .array-data 8
        -0x22d55cf05153b028L    # -6.34413796661941E140
        -0x3d02c74dd582ad95L    # -5.140695120499587E14
        0x164476065dcb5048L
    .end array-data

    .line 136
    .line 137
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
    :array_1
    .array-data 8
        -0x2bcb54b10d0a4d28L    # -4.414908646207773E97
        -0x28661e2ec8e10f61L    # -9.959048928656692E113
        0x5090d722e9071c90L    # 1.2479887176584258E80
    .end array-data
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .locals 3
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
    new-instance p2, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->contents:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    add-int/2addr v1, v0

    .line 14
    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->contents:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    add-int/lit8 p1, p1, -0x1

    .line 27
    .line 28
    :goto_0
    if-ltz p1, :cond_0

    .line 29
    .line 30
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->contents:Ljava/util/List;

    .line 31
    .line 32
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lcom/airbnb/lottie/animation/content/Content;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->contents:Ljava/util/List;

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    invoke-interface {v1, v2, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-interface {v0, p2, v1}, Lcom/airbnb/lottie/animation/content/Content;->setContents(Ljava/util/List;Ljava/util/List;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    add-int/lit8 p1, p1, -0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    return-void
.end method
