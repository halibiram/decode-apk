.class public Lcom/airbnb/lottie/model/animatable/AnimatableSplitDimensionPathValue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/model/animatable/AnimatableValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/model/animatable/AnimatableValue<",
        "Landroid/graphics/PointF;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private final animatableXDimension:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

.field private final animatableYDimension:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/airbnb/lottie/model/animatable/AnimatableSplitDimensionPathValue;->animatableXDimension:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/airbnb/lottie/model/animatable/AnimatableSplitDimensionPathValue;->animatableYDimension:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/airbnb/lottie/animation/keyframe/SplitDimensionPathKeyframeAnimation;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/airbnb/lottie/model/animatable/AnimatableSplitDimensionPathValue;->animatableXDimension:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/airbnb/lottie/model/animatable/AnimatableSplitDimensionPathValue;->animatableYDimension:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-direct {v0, v1, v2}, Lcom/airbnb/lottie/animation/keyframe/SplitDimensionPathKeyframeAnimation;-><init>(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public getKeyframes()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/value/Keyframe<",
            "Landroid/graphics/PointF;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/16 v2, 0x9

    .line 6
    .line 7
    new-array v2, v2, [J

    .line 8
    .line 9
    fill-array-data v2, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw v0

    .line 23
    :array_0
    .array-data 8
        -0x7978987bb80836b3L
        0x4669ba0621d9fd68L    # 1.6306205504780748E31
        -0x4ed74142450b3d12L    # -7.002610199793518E-72
        -0x2b7a55018e89ee2dL    # -1.4810383873559525E99
        0x1d19157716d7fc20L
        -0x8c26c1c0dd4049cL
        0xad15d027cb1540cL
        0x7fd17246777d38c5L    # 4.900508041182316E307
        -0xfcabb9bcac95c70L    # -3.301764143541775E232
    .end array-data
.end method

.method public isStatic()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/animatable/AnimatableSplitDimensionPathValue;->animatableXDimension:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->isStatic()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/airbnb/lottie/model/animatable/AnimatableSplitDimensionPathValue;->animatableYDimension:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->isStatic()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
.end method
