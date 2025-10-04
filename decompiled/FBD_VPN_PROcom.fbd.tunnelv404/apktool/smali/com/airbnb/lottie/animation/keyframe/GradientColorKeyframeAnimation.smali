.class public Lcom/airbnb/lottie/animation/keyframe/GradientColorKeyframeAnimation;
.super Lcom/airbnb/lottie/animation/keyframe/KeyframeAnimation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/animation/keyframe/KeyframeAnimation<",
        "Lcom/airbnb/lottie/model/content/GradientColor;",
        ">;"
    }
.end annotation


# instance fields
.field private final gradientColor:Lcom/airbnb/lottie/model/content/GradientColor;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/value/Keyframe<",
            "Lcom/airbnb/lottie/model/content/GradientColor;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/KeyframeAnimation;-><init>(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-ge v0, v2, :cond_1

    .line 11
    .line 12
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Lcom/airbnb/lottie/value/Keyframe;

    .line 17
    .line 18
    iget-object v2, v2, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v2, Lcom/airbnb/lottie/model/content/GradientColor;

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/airbnb/lottie/model/content/GradientColor;->getSize()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    new-instance p1, Lcom/airbnb/lottie/model/content/GradientColor;

    .line 36
    .line 37
    new-array v0, v1, [F

    .line 38
    .line 39
    new-array v1, v1, [I

    .line 40
    .line 41
    invoke-direct {p1, v0, v1}, Lcom/airbnb/lottie/model/content/GradientColor;-><init>([F[I)V

    .line 42
    .line 43
    .line 44
    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/GradientColorKeyframeAnimation;->gradientColor:Lcom/airbnb/lottie/model/content/GradientColor;

    .line 45
    .line 46
    return-void
.end method


# virtual methods
.method public getValue(Lcom/airbnb/lottie/value/Keyframe;F)Lcom/airbnb/lottie/model/content/GradientColor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/value/Keyframe<",
            "Lcom/airbnb/lottie/model/content/GradientColor;",
            ">;F)",
            "Lcom/airbnb/lottie/model/content/GradientColor;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/GradientColorKeyframeAnimation;->gradientColor:Lcom/airbnb/lottie/model/content/GradientColor;

    iget-object v1, p1, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v1, Lcom/airbnb/lottie/model/content/GradientColor;

    iget-object p1, p1, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    check-cast p1, Lcom/airbnb/lottie/model/content/GradientColor;

    invoke-virtual {v0, v1, p1, p2}, Lcom/airbnb/lottie/model/content/GradientColor;->lerp(Lcom/airbnb/lottie/model/content/GradientColor;Lcom/airbnb/lottie/model/content/GradientColor;F)V

    .line 3
    iget-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/GradientColorKeyframeAnimation;->gradientColor:Lcom/airbnb/lottie/model/content/GradientColor;

    return-object p1
.end method

.method public bridge synthetic getValue(Lcom/airbnb/lottie/value/Keyframe;F)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/animation/keyframe/GradientColorKeyframeAnimation;->getValue(Lcom/airbnb/lottie/value/Keyframe;F)Lcom/airbnb/lottie/model/content/GradientColor;

    move-result-object p1

    return-object p1
.end method
