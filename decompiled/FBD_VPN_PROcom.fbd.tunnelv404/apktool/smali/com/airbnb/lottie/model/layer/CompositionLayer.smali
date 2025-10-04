.class public Lcom/airbnb/lottie/model/layer/CompositionLayer;
.super Lcom/airbnb/lottie/model/layer/BaseLayer;
.source "SourceFile"


# instance fields
.field private clipToCompositionBounds:Z

.field private dropShadowAnimation:Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private hasMasks:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private hasMatte:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final layerBounds:Landroid/graphics/RectF;

.field private final layers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/layer/BaseLayer;",
            ">;"
        }
    .end annotation
.end field

.field private final newClipRect:Landroid/graphics/RectF;

.field private final offscreenLayer:Lcom/airbnb/lottie/utils/OffscreenLayer;

.field private final offscreenOp:Lcom/airbnb/lottie/utils/OffscreenLayer$ComposeOp;

.field private progress:F

.field private final rect:Landroid/graphics/RectF;

.field private timeRemapping:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
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


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;Ljava/util/List;Lcom/airbnb/lottie/LottieComposition;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/LottieDrawable;",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            ">;",
            "Lcom/airbnb/lottie/LottieComposition;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layers:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/RectF;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->rect:Landroid/graphics/RectF;

    .line 17
    .line 18
    new-instance v0, Landroid/graphics/RectF;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->newClipRect:Landroid/graphics/RectF;

    .line 24
    .line 25
    new-instance v0, Landroid/graphics/RectF;

    .line 26
    .line 27
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layerBounds:Landroid/graphics/RectF;

    .line 31
    .line 32
    new-instance v0, Lcom/airbnb/lottie/utils/OffscreenLayer;

    .line 33
    .line 34
    invoke-direct {v0}, Lcom/airbnb/lottie/utils/OffscreenLayer;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->offscreenLayer:Lcom/airbnb/lottie/utils/OffscreenLayer;

    .line 38
    .line 39
    new-instance v0, Lcom/airbnb/lottie/utils/OffscreenLayer$ComposeOp;

    .line 40
    .line 41
    invoke-direct {v0}, Lcom/airbnb/lottie/utils/OffscreenLayer$ComposeOp;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->offscreenOp:Lcom/airbnb/lottie/utils/OffscreenLayer$ComposeOp;

    .line 45
    .line 46
    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->clipToCompositionBounds:Z

    .line 48
    .line 49
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/Layer;->getTimeRemapping()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    const/4 v1, 0x0

    .line 54
    if-eqz p2, :cond_0

    .line 55
    .line 56
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->timeRemapping:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 61
    .line 62
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 63
    .line 64
    .line 65
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->timeRemapping:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 66
    .line 67
    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->timeRemapping:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 72
    .line 73
    :goto_0
    new-instance p2, Landroidx/collection/LongSparseArray;

    .line 74
    .line 75
    invoke-virtual {p4}, Lcom/airbnb/lottie/LottieComposition;->getLayers()Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    invoke-direct {p2, v2}, Landroidx/collection/LongSparseArray;-><init>(I)V

    .line 84
    .line 85
    .line 86
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    sub-int/2addr v2, v0

    .line 91
    move-object v3, v1

    .line 92
    :goto_1
    const/4 v4, 0x0

    .line 93
    if-ltz v2, :cond_4

    .line 94
    .line 95
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    check-cast v5, Lcom/airbnb/lottie/model/layer/Layer;

    .line 100
    .line 101
    invoke-static {p0, v5, p1, p4}, Lcom/airbnb/lottie/model/layer/BaseLayer;->forModel(Lcom/airbnb/lottie/model/layer/CompositionLayer;Lcom/airbnb/lottie/model/layer/Layer;Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    if-nez v6, :cond_1

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_1
    invoke-virtual {v6}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getLayerModel()Lcom/airbnb/lottie/model/layer/Layer;

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    invoke-virtual {v7}, Lcom/airbnb/lottie/model/layer/Layer;->getId()J

    .line 113
    .line 114
    .line 115
    move-result-wide v7

    .line 116
    invoke-virtual {p2, v7, v8, v6}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    if-eqz v3, :cond_2

    .line 120
    .line 121
    invoke-virtual {v3, v6}, Lcom/airbnb/lottie/model/layer/BaseLayer;->setMatteLayer(Lcom/airbnb/lottie/model/layer/BaseLayer;)V

    .line 122
    .line 123
    .line 124
    move-object v3, v1

    .line 125
    goto :goto_2

    .line 126
    :cond_2
    iget-object v7, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layers:Ljava/util/List;

    .line 127
    .line 128
    invoke-interface {v7, v4, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    sget-object v4, Lcom/airbnb/lottie/model/layer/CompositionLayer$1;->$SwitchMap$com$airbnb$lottie$model$layer$Layer$MatteType:[I

    .line 132
    .line 133
    invoke-virtual {v5}, Lcom/airbnb/lottie/model/layer/Layer;->getMatteType()Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 138
    .line 139
    .line 140
    move-result v5

    .line 141
    aget v4, v4, v5

    .line 142
    .line 143
    if-eq v4, v0, :cond_3

    .line 144
    .line 145
    const/4 v5, 0x2

    .line 146
    if-eq v4, v5, :cond_3

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_3
    move-object v3, v6

    .line 150
    :goto_2
    add-int/lit8 v2, v2, -0x1

    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_4
    :goto_3
    invoke-virtual {p2}, Landroidx/collection/LongSparseArray;->size()I

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    if-ge v4, p1, :cond_7

    .line 158
    .line 159
    invoke-virtual {p2, v4}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    .line 160
    .line 161
    .line 162
    move-result-wide p3

    .line 163
    invoke-virtual {p2, p3, p4}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    check-cast p1, Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 168
    .line 169
    if-nez p1, :cond_5

    .line 170
    .line 171
    goto :goto_4

    .line 172
    :cond_5
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getLayerModel()Lcom/airbnb/lottie/model/layer/Layer;

    .line 173
    .line 174
    .line 175
    move-result-object p3

    .line 176
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/layer/Layer;->getParentId()J

    .line 177
    .line 178
    .line 179
    move-result-wide p3

    .line 180
    invoke-virtual {p2, p3, p4}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object p3

    .line 184
    check-cast p3, Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 185
    .line 186
    if-eqz p3, :cond_6

    .line 187
    .line 188
    invoke-virtual {p1, p3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->setParentLayer(Lcom/airbnb/lottie/model/layer/BaseLayer;)V

    .line 189
    .line 190
    .line 191
    :cond_6
    :goto_4
    add-int/lit8 v4, v4, 0x1

    .line 192
    .line 193
    goto :goto_3

    .line 194
    :cond_7
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getDropShadowEffect()Lcom/airbnb/lottie/parser/DropShadowEffect;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    if-eqz p1, :cond_8

    .line 199
    .line 200
    new-instance p1, Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;

    .line 201
    .line 202
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getDropShadowEffect()Lcom/airbnb/lottie/parser/DropShadowEffect;

    .line 203
    .line 204
    .line 205
    move-result-object p2

    .line 206
    invoke-direct {p1, p0, p0, p2}, Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;-><init>(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/parser/DropShadowEffect;)V

    .line 207
    .line 208
    .line 209
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->dropShadowAnimation:Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;

    .line 210
    .line 211
    :cond_8
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
    invoke-super {p0, p1, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addValueCallback(Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->TIME_REMAP:Ljava/lang/Float;

    .line 5
    .line 6
    if-ne p1, v0, :cond_1

    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->timeRemapping:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 11
    .line 12
    if-eqz p1, :cond_6

    .line 13
    .line 14
    const/4 p2, 0x0

    .line 15
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance p1, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 20
    .line 21
    invoke-direct {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->timeRemapping:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 25
    .line 26
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->timeRemapping:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->DROP_SHADOW_COLOR:Ljava/lang/Integer;

    .line 36
    .line 37
    if-ne p1, v0, :cond_2

    .line 38
    .line 39
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->dropShadowAnimation:Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;->setColorCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->DROP_SHADOW_OPACITY:Ljava/lang/Float;

    .line 48
    .line 49
    if-ne p1, v0, :cond_3

    .line 50
    .line 51
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->dropShadowAnimation:Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;

    .line 52
    .line 53
    if-eqz v0, :cond_3

    .line 54
    .line 55
    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;->setOpacityCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->DROP_SHADOW_DIRECTION:Ljava/lang/Float;

    .line 60
    .line 61
    if-ne p1, v0, :cond_4

    .line 62
    .line 63
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->dropShadowAnimation:Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;

    .line 64
    .line 65
    if-eqz v0, :cond_4

    .line 66
    .line 67
    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;->setDirectionCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_4
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->DROP_SHADOW_DISTANCE:Ljava/lang/Float;

    .line 72
    .line 73
    if-ne p1, v0, :cond_5

    .line 74
    .line 75
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->dropShadowAnimation:Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;

    .line 76
    .line 77
    if-eqz v0, :cond_5

    .line 78
    .line 79
    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;->setDistanceCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_5
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->DROP_SHADOW_RADIUS:Ljava/lang/Float;

    .line 84
    .line 85
    if-ne p1, v0, :cond_6

    .line 86
    .line 87
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->dropShadowAnimation:Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;

    .line 88
    .line 89
    if-eqz p1, :cond_6

    .line 90
    .line 91
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;->setRadiusCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 92
    .line 93
    .line 94
    :cond_6
    :goto_0
    return-void
.end method

.method public drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;ILcom/airbnb/lottie/utils/DropShadow;)V
    .locals 8
    .param p4    # Lcom/airbnb/lottie/utils/DropShadow;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-static {}, Lcom/airbnb/lottie/L;->isTraceEnabled()Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    new-array v2, v0, [J

    .line 11
    .line 12
    fill-array-data v2, :array_0

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v1}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    const/4 v1, 0x0

    .line 26
    const/4 v2, 0x1

    .line 27
    if-nez p4, :cond_2

    .line 28
    .line 29
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->dropShadowAnimation:Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;

    .line 30
    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 v3, 0x0

    .line 35
    goto :goto_1

    .line 36
    :cond_2
    :goto_0
    const/4 v3, 0x1

    .line 37
    :goto_1
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 38
    .line 39
    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieDrawable;->isApplyingOpacityToLayersEnabled()Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    const/16 v5, 0xff

    .line 44
    .line 45
    if-eqz v4, :cond_3

    .line 46
    .line 47
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layers:Ljava/util/List;

    .line 48
    .line 49
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-le v4, v2, :cond_3

    .line 54
    .line 55
    if-ne p3, v5, :cond_4

    .line 56
    .line 57
    :cond_3
    if-eqz v3, :cond_5

    .line 58
    .line 59
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 60
    .line 61
    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieDrawable;->isApplyingShadowToLayersEnabled()Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_5

    .line 66
    .line 67
    :cond_4
    const/4 v1, 0x1

    .line 68
    :cond_5
    if-eqz v1, :cond_6

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_6
    move v5, p3

    .line 72
    :goto_2
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->dropShadowAnimation:Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;

    .line 73
    .line 74
    if-eqz v3, :cond_7

    .line 75
    .line 76
    invoke-virtual {v3, p2, v5}, Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation;->evaluate(Landroid/graphics/Matrix;I)Lcom/airbnb/lottie/utils/DropShadow;

    .line 77
    .line 78
    .line 79
    move-result-object p4

    .line 80
    :cond_7
    iget-boolean v3, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->clipToCompositionBounds:Z

    .line 81
    .line 82
    if-nez v3, :cond_8

    .line 83
    .line 84
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 85
    .line 86
    const/4 v4, 0x3

    .line 87
    new-array v4, v4, [J

    .line 88
    .line 89
    fill-array-data v4, :array_1

    .line 90
    .line 91
    .line 92
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 100
    .line 101
    invoke-virtual {v4}, Lcom/airbnb/lottie/model/layer/Layer;->getName()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    if-eqz v3, :cond_8

    .line 110
    .line 111
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->newClipRect:Landroid/graphics/RectF;

    .line 112
    .line 113
    invoke-virtual {v3}, Landroid/graphics/RectF;->setEmpty()V

    .line 114
    .line 115
    .line 116
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layers:Ljava/util/List;

    .line 117
    .line 118
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    if-eqz v4, :cond_9

    .line 127
    .line 128
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    check-cast v4, Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 133
    .line 134
    iget-object v6, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layerBounds:Landroid/graphics/RectF;

    .line 135
    .line 136
    invoke-virtual {v4, v6, p2, v2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 137
    .line 138
    .line 139
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->newClipRect:Landroid/graphics/RectF;

    .line 140
    .line 141
    iget-object v6, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layerBounds:Landroid/graphics/RectF;

    .line 142
    .line 143
    invoke-virtual {v4, v6}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 144
    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_8
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->newClipRect:Landroid/graphics/RectF;

    .line 148
    .line 149
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 150
    .line 151
    invoke-virtual {v4}, Lcom/airbnb/lottie/model/layer/Layer;->getPreCompWidth()F

    .line 152
    .line 153
    .line 154
    move-result v4

    .line 155
    iget-object v6, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 156
    .line 157
    invoke-virtual {v6}, Lcom/airbnb/lottie/model/layer/Layer;->getPreCompHeight()F

    .line 158
    .line 159
    .line 160
    move-result v6

    .line 161
    const/4 v7, 0x0

    .line 162
    invoke-virtual {v3, v7, v7, v4, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 163
    .line 164
    .line 165
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->newClipRect:Landroid/graphics/RectF;

    .line 166
    .line 167
    invoke-virtual {p2, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 168
    .line 169
    .line 170
    :cond_9
    if-eqz v1, :cond_b

    .line 171
    .line 172
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->offscreenOp:Lcom/airbnb/lottie/utils/OffscreenLayer$ComposeOp;

    .line 173
    .line 174
    invoke-virtual {v3}, Lcom/airbnb/lottie/utils/OffscreenLayer$ComposeOp;->reset()V

    .line 175
    .line 176
    .line 177
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->offscreenOp:Lcom/airbnb/lottie/utils/OffscreenLayer$ComposeOp;

    .line 178
    .line 179
    iput p3, v3, Lcom/airbnb/lottie/utils/OffscreenLayer$ComposeOp;->alpha:I

    .line 180
    .line 181
    if-eqz p4, :cond_a

    .line 182
    .line 183
    invoke-virtual {p4, v3}, Lcom/airbnb/lottie/utils/DropShadow;->applyTo(Lcom/airbnb/lottie/utils/OffscreenLayer$ComposeOp;)V

    .line 184
    .line 185
    .line 186
    const/4 p4, 0x0

    .line 187
    :cond_a
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->offscreenLayer:Lcom/airbnb/lottie/utils/OffscreenLayer;

    .line 188
    .line 189
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->newClipRect:Landroid/graphics/RectF;

    .line 190
    .line 191
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->offscreenOp:Lcom/airbnb/lottie/utils/OffscreenLayer$ComposeOp;

    .line 192
    .line 193
    invoke-virtual {p3, p1, v3, v4}, Lcom/airbnb/lottie/utils/OffscreenLayer;->start(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/airbnb/lottie/utils/OffscreenLayer$ComposeOp;)Landroid/graphics/Canvas;

    .line 194
    .line 195
    .line 196
    move-result-object p3

    .line 197
    goto :goto_4

    .line 198
    :cond_b
    move-object p3, p1

    .line 199
    :goto_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 200
    .line 201
    .line 202
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->newClipRect:Landroid/graphics/RectF;

    .line 203
    .line 204
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 205
    .line 206
    .line 207
    move-result v3

    .line 208
    if-eqz v3, :cond_c

    .line 209
    .line 210
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layers:Ljava/util/List;

    .line 211
    .line 212
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 213
    .line 214
    .line 215
    move-result v3

    .line 216
    sub-int/2addr v3, v2

    .line 217
    :goto_5
    if-ltz v3, :cond_c

    .line 218
    .line 219
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layers:Ljava/util/List;

    .line 220
    .line 221
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    check-cast v2, Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 226
    .line 227
    invoke-virtual {v2, p3, p2, v5, p4}, Lcom/airbnb/lottie/model/layer/BaseLayer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;ILcom/airbnb/lottie/utils/DropShadow;)V

    .line 228
    .line 229
    .line 230
    add-int/lit8 v3, v3, -0x1

    .line 231
    .line 232
    goto :goto_5

    .line 233
    :cond_c
    if-eqz v1, :cond_d

    .line 234
    .line 235
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->offscreenLayer:Lcom/airbnb/lottie/utils/OffscreenLayer;

    .line 236
    .line 237
    invoke-virtual {p2}, Lcom/airbnb/lottie/utils/OffscreenLayer;->finish()V

    .line 238
    .line 239
    .line 240
    :cond_d
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 241
    .line 242
    .line 243
    invoke-static {}, Lcom/airbnb/lottie/L;->isTraceEnabled()Z

    .line 244
    .line 245
    .line 246
    move-result p1

    .line 247
    if-eqz p1, :cond_e

    .line 248
    .line 249
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 250
    .line 251
    new-array p2, v0, [J

    .line 252
    .line 253
    fill-array-data p2, :array_2

    .line 254
    .line 255
    .line 256
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object p1

    .line 263
    invoke-static {p1}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 264
    .line 265
    .line 266
    :cond_e
    return-void

    .line 267
    :array_0
    .array-data 8
        0x8d603e769d320dcL
        0x2d188b954485e3aL
        0x5be2510fe07ad841L    # 4.160390449295223E134
        0x666a907b2d849ca5L    # 2.2574961970395532E185
    .end array-data

    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    :array_1
    .array-data 8
        -0x11985493a5502f82L    # -6.844758345795506E223
        0x649a72d8832f49a4L    # 4.186589995213387E176
        -0x59a58f07f5fdd702L    # -6.249774514323935E-124
    .end array-data

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
    :array_2
    .array-data 8
        -0x2fd45f345a079d44L    # -1.599558140309811E78
        -0x5f3d092b50660f95L    # -7.241796466403227E-151
        -0x3a4e0a375a2ba8c2L    # -5.558379525078563E27
        0x428c3502f51935b9L    # 3.8767510577027153E12
    .end array-data
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layers:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    const/4 p3, 0x1

    .line 11
    sub-int/2addr p2, p3

    .line 12
    :goto_0
    if-ltz p2, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->rect:Landroid/graphics/RectF;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layers:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->rect:Landroid/graphics/RectF;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->boundsMatrix:Landroid/graphics/Matrix;

    .line 31
    .line 32
    invoke-virtual {v0, v1, v2, p3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->rect:Landroid/graphics/RectF;

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 38
    .line 39
    .line 40
    add-int/lit8 p2, p2, -0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    return-void
.end method

.method public getProgress()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->progress:F

    .line 2
    .line 3
    return v0
.end method

.method public hasMasks()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->hasMasks:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layers:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    sub-int/2addr v0, v1

    .line 13
    :goto_0
    if-ltz v0, :cond_2

    .line 14
    .line 15
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layers:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 22
    .line 23
    instance-of v3, v2, Lcom/airbnb/lottie/model/layer/ShapeLayer;

    .line 24
    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->hasMasksOnThisLayer()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->hasMasks:Ljava/lang/Boolean;

    .line 36
    .line 37
    return v1

    .line 38
    :cond_0
    instance-of v3, v2, Lcom/airbnb/lottie/model/layer/CompositionLayer;

    .line 39
    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    check-cast v2, Lcom/airbnb/lottie/model/layer/CompositionLayer;

    .line 43
    .line 44
    invoke-virtual {v2}, Lcom/airbnb/lottie/model/layer/CompositionLayer;->hasMasks()Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_1

    .line 49
    .line 50
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 51
    .line 52
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->hasMasks:Ljava/lang/Boolean;

    .line 53
    .line 54
    return v1

    .line 55
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 59
    .line 60
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->hasMasks:Ljava/lang/Boolean;

    .line 61
    .line 62
    :cond_3
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->hasMasks:Ljava/lang/Boolean;

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    return v0
.end method

.method public hasMatte()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->hasMatte:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->hasMatteOnThisLayer()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->hasMatte:Ljava/lang/Boolean;

    .line 15
    .line 16
    return v1

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layers:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    sub-int/2addr v0, v1

    .line 24
    :goto_0
    if-ltz v0, :cond_2

    .line 25
    .line 26
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layers:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->hasMatteOnThisLayer()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 41
    .line 42
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->hasMatte:Ljava/lang/Boolean;

    .line 43
    .line 44
    return v1

    .line 45
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 49
    .line 50
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->hasMatte:Ljava/lang/Boolean;

    .line 51
    .line 52
    :cond_3
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->hasMatte:Ljava/lang/Boolean;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    return v0
.end method

.method public resolveChildKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;)V
    .locals 2
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
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layers:Ljava/util/List;

    .line 3
    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layers:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 17
    .line 18
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/airbnb/lottie/model/layer/BaseLayer;->resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;)V

    .line 19
    .line 20
    .line 21
    add-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-void
.end method

.method public setClipToCompositionBounds(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->clipToCompositionBounds:Z

    .line 2
    .line 3
    return-void
.end method

.method public setOutlineMasksAndMattes(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->setOutlineMasksAndMattes(Z)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layers:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 21
    .line 22
    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->setOutlineMasksAndMattes(Z)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 4
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-static {}, Lcom/airbnb/lottie/L;->isTraceEnabled()Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    new-array v2, v0, [J

    .line 11
    .line 12
    fill-array-data v2, :array_0

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v1}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iput p1, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->progress:F

    .line 26
    .line 27
    invoke-super {p0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->setProgress(F)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->timeRemapping:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieDrawable;->getComposition()Lcom/airbnb/lottie/LottieComposition;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieComposition;->getDurationFrames()F

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    const v1, 0x3c23d70a    # 0.01f

    .line 45
    .line 46
    .line 47
    add-float/2addr p1, v1

    .line 48
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/airbnb/lottie/model/layer/Layer;->getComposition()Lcom/airbnb/lottie/LottieComposition;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieComposition;->getStartFrame()F

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->timeRemapping:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 59
    .line 60
    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    check-cast v2, Ljava/lang/Float;

    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 71
    .line 72
    invoke-virtual {v3}, Lcom/airbnb/lottie/model/layer/Layer;->getComposition()Lcom/airbnb/lottie/LottieComposition;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieComposition;->getFrameRate()F

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    mul-float v3, v3, v2

    .line 81
    .line 82
    sub-float/2addr v3, v1

    .line 83
    div-float p1, v3, p1

    .line 84
    .line 85
    :cond_1
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->timeRemapping:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 86
    .line 87
    if-nez v1, :cond_2

    .line 88
    .line 89
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 90
    .line 91
    invoke-virtual {v1}, Lcom/airbnb/lottie/model/layer/Layer;->getStartProgress()F

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    sub-float/2addr p1, v1

    .line 96
    :cond_2
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 97
    .line 98
    invoke-virtual {v1}, Lcom/airbnb/lottie/model/layer/Layer;->getTimeStretch()F

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    const/4 v2, 0x0

    .line 103
    cmpl-float v1, v1, v2

    .line 104
    .line 105
    if-eqz v1, :cond_3

    .line 106
    .line 107
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 108
    .line 109
    const/4 v2, 0x3

    .line 110
    new-array v2, v2, [J

    .line 111
    .line 112
    fill-array-data v2, :array_1

    .line 113
    .line 114
    .line 115
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 123
    .line 124
    invoke-virtual {v2}, Lcom/airbnb/lottie/model/layer/Layer;->getName()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    if-nez v1, :cond_3

    .line 133
    .line 134
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 135
    .line 136
    invoke-virtual {v1}, Lcom/airbnb/lottie/model/layer/Layer;->getTimeStretch()F

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    div-float/2addr p1, v1

    .line 141
    :cond_3
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layers:Ljava/util/List;

    .line 142
    .line 143
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    add-int/lit8 v1, v1, -0x1

    .line 148
    .line 149
    :goto_0
    if-ltz v1, :cond_4

    .line 150
    .line 151
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;->layers:Ljava/util/List;

    .line 152
    .line 153
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    check-cast v2, Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 158
    .line 159
    invoke-virtual {v2, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->setProgress(F)V

    .line 160
    .line 161
    .line 162
    add-int/lit8 v1, v1, -0x1

    .line 163
    .line 164
    goto :goto_0

    .line 165
    :cond_4
    invoke-static {}, Lcom/airbnb/lottie/L;->isTraceEnabled()Z

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    if-eqz p1, :cond_5

    .line 170
    .line 171
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 172
    .line 173
    new-array v0, v0, [J

    .line 174
    .line 175
    fill-array-data v0, :array_2

    .line 176
    .line 177
    .line 178
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    invoke-static {p1}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 186
    .line 187
    .line 188
    :cond_5
    return-void

    .line 189
    :array_0
    .array-data 8
        -0x50e2d6b16d37f230L    # -9.607024332713609E-82
        0x78c9bcd09b38e424L    # 6.961669723391283E273
        -0x177fabd9df7705baL    # -2.383960160493028E195
        0x2c35cd4a865719ddL    # 1.0206952589622403E-95
        -0x633dc856bd2ee396L    # -3.771199292943537E-170
    .end array-data

    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    :array_1
    .array-data 8
        -0x2bdcbc38d81ebd1L    # -2.325271776067742E295
        0x2710657e5b3405f6L    # 1.587419892309636E-120
        -0x26a7f5bdb5065855L    # -2.483099131283969E122
    .end array-data

    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    :array_2
    .array-data 8
        0xef6117769cd47cL
        -0x2ee2e6fcca70563cL    # -5.520235035531105E82
        0x5f5aaafea24ea8d1L    # 2.1823652552404556E151
        0x76e93b2e060a1629L    # 6.35599597024405E264
        0x19f9673f04a410ecL
    .end array-data
.end method
