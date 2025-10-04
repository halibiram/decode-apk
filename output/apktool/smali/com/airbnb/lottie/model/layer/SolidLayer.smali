.class public Lcom/airbnb/lottie/model/layer/SolidLayer;
.super Lcom/airbnb/lottie/model/layer/BaseLayer;
.source "SourceFile"


# instance fields
.field private colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

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

.field private final layerModel:Lcom/airbnb/lottie/model/layer/Layer;

.field private final paint:Landroid/graphics/Paint;

.field private final path:Landroid/graphics/Path;

.field private final points:[F

.field private final rect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/graphics/RectF;

    .line 5
    .line 6
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->rect:Landroid/graphics/RectF;

    .line 10
    .line 11
    new-instance p1, Lcom/airbnb/lottie/animation/LPaint;

    .line 12
    .line 13
    invoke-direct {p1}, Lcom/airbnb/lottie/animation/LPaint;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->paint:Landroid/graphics/Paint;

    .line 17
    .line 18
    const/16 v0, 0x8

    .line 19
    .line 20
    new-array v0, v0, [F

    .line 21
    .line 22
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->points:[F

    .line 23
    .line 24
    new-instance v0, Landroid/graphics/Path;

    .line 25
    .line 26
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->path:Landroid/graphics/Path;

    .line 30
    .line 31
    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 35
    .line 36
    .line 37
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/Layer;->getSolidColor()I

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 47
    .line 48
    .line 49
    return-void
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
    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

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
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->COLOR:Ljava/lang/Integer;

    .line 23
    .line 24
    if-ne p1, v0, :cond_3

    .line 25
    .line 26
    if-nez p2, :cond_2

    .line 27
    .line 28
    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 29
    .line 30
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->paint:Landroid/graphics/Paint;

    .line 31
    .line 32
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 33
    .line 34
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/Layer;->getSolidColor()I

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    new-instance p1, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 43
    .line 44
    invoke-direct {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 48
    .line 49
    :cond_3
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
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/Layer;->getSolidColor()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Ljava/lang/Integer;

    .line 25
    .line 26
    :goto_0
    if-eqz v1, :cond_2

    .line 27
    .line 28
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->paint:Landroid/graphics/Paint;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->paint:Landroid/graphics/Paint;

    .line 39
    .line 40
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 41
    .line 42
    invoke-virtual {v2}, Lcom/airbnb/lottie/model/layer/Layer;->getSolidColor()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 47
    .line 48
    .line 49
    :goto_1
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getOpacity()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    if-nez v1, :cond_3

    .line 56
    .line 57
    const/16 v1, 0x64

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_3
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getOpacity()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    check-cast v1, Ljava/lang/Integer;

    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    :goto_2
    int-to-float p3, p3

    .line 77
    const/high16 v2, 0x437f0000    # 255.0f

    .line 78
    .line 79
    div-float/2addr p3, v2

    .line 80
    int-to-float v0, v0

    .line 81
    div-float/2addr v0, v2

    .line 82
    int-to-float v1, v1

    .line 83
    mul-float v0, v0, v1

    .line 84
    .line 85
    const/high16 v1, 0x42c80000    # 100.0f

    .line 86
    .line 87
    div-float/2addr v0, v1

    .line 88
    mul-float v0, v0, p3

    .line 89
    .line 90
    mul-float v0, v0, v2

    .line 91
    .line 92
    float-to-int p3, v0

    .line 93
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->paint:Landroid/graphics/Paint;

    .line 94
    .line 95
    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 96
    .line 97
    .line 98
    if-eqz p4, :cond_4

    .line 99
    .line 100
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->paint:Landroid/graphics/Paint;

    .line 101
    .line 102
    invoke-virtual {p4, v0}, Lcom/airbnb/lottie/utils/DropShadow;->applyTo(Landroid/graphics/Paint;)V

    .line 103
    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_4
    iget-object p4, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->paint:Landroid/graphics/Paint;

    .line 107
    .line 108
    invoke-virtual {p4}, Landroid/graphics/Paint;->clearShadowLayer()V

    .line 109
    .line 110
    .line 111
    :goto_3
    iget-object p4, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 112
    .line 113
    if-eqz p4, :cond_5

    .line 114
    .line 115
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->paint:Landroid/graphics/Paint;

    .line 116
    .line 117
    invoke-virtual {p4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p4

    .line 121
    check-cast p4, Landroid/graphics/ColorFilter;

    .line 122
    .line 123
    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 124
    .line 125
    .line 126
    :cond_5
    if-lez p3, :cond_6

    .line 127
    .line 128
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->points:[F

    .line 129
    .line 130
    const/4 p4, 0x0

    .line 131
    const/4 v0, 0x0

    .line 132
    aput v0, p3, p4

    .line 133
    .line 134
    const/4 v1, 0x1

    .line 135
    aput v0, p3, v1

    .line 136
    .line 137
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 138
    .line 139
    invoke-virtual {v2}, Lcom/airbnb/lottie/model/layer/Layer;->getSolidWidth()I

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    int-to-float v2, v2

    .line 144
    const/4 v3, 0x2

    .line 145
    aput v2, p3, v3

    .line 146
    .line 147
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->points:[F

    .line 148
    .line 149
    const/4 v2, 0x3

    .line 150
    aput v0, p3, v2

    .line 151
    .line 152
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 153
    .line 154
    invoke-virtual {v4}, Lcom/airbnb/lottie/model/layer/Layer;->getSolidWidth()I

    .line 155
    .line 156
    .line 157
    move-result v4

    .line 158
    int-to-float v4, v4

    .line 159
    const/4 v5, 0x4

    .line 160
    aput v4, p3, v5

    .line 161
    .line 162
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->points:[F

    .line 163
    .line 164
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 165
    .line 166
    invoke-virtual {v4}, Lcom/airbnb/lottie/model/layer/Layer;->getSolidHeight()I

    .line 167
    .line 168
    .line 169
    move-result v4

    .line 170
    int-to-float v4, v4

    .line 171
    const/4 v6, 0x5

    .line 172
    aput v4, p3, v6

    .line 173
    .line 174
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->points:[F

    .line 175
    .line 176
    const/4 v4, 0x6

    .line 177
    aput v0, p3, v4

    .line 178
    .line 179
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 180
    .line 181
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/Layer;->getSolidHeight()I

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    int-to-float v0, v0

    .line 186
    const/4 v7, 0x7

    .line 187
    aput v0, p3, v7

    .line 188
    .line 189
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->points:[F

    .line 190
    .line 191
    invoke-virtual {p2, p3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 192
    .line 193
    .line 194
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->path:Landroid/graphics/Path;

    .line 195
    .line 196
    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    .line 197
    .line 198
    .line 199
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->path:Landroid/graphics/Path;

    .line 200
    .line 201
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->points:[F

    .line 202
    .line 203
    aget v0, p3, p4

    .line 204
    .line 205
    aget p3, p3, v1

    .line 206
    .line 207
    invoke-virtual {p2, v0, p3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 208
    .line 209
    .line 210
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->path:Landroid/graphics/Path;

    .line 211
    .line 212
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->points:[F

    .line 213
    .line 214
    aget v0, p3, v3

    .line 215
    .line 216
    aget p3, p3, v2

    .line 217
    .line 218
    invoke-virtual {p2, v0, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 219
    .line 220
    .line 221
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->path:Landroid/graphics/Path;

    .line 222
    .line 223
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->points:[F

    .line 224
    .line 225
    aget v0, p3, v5

    .line 226
    .line 227
    aget p3, p3, v6

    .line 228
    .line 229
    invoke-virtual {p2, v0, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 230
    .line 231
    .line 232
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->path:Landroid/graphics/Path;

    .line 233
    .line 234
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->points:[F

    .line 235
    .line 236
    aget v0, p3, v4

    .line 237
    .line 238
    aget p3, p3, v7

    .line 239
    .line 240
    invoke-virtual {p2, v0, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 241
    .line 242
    .line 243
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->path:Landroid/graphics/Path;

    .line 244
    .line 245
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->points:[F

    .line 246
    .line 247
    aget p4, p3, p4

    .line 248
    .line 249
    aget p3, p3, v1

    .line 250
    .line 251
    invoke-virtual {p2, p4, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 252
    .line 253
    .line 254
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->path:Landroid/graphics/Path;

    .line 255
    .line 256
    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    .line 257
    .line 258
    .line 259
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->path:Landroid/graphics/Path;

    .line 260
    .line 261
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->paint:Landroid/graphics/Paint;

    .line 262
    .line 263
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 264
    .line 265
    .line 266
    :cond_6
    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->rect:Landroid/graphics/RectF;

    .line 5
    .line 6
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 7
    .line 8
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/layer/Layer;->getSolidWidth()I

    .line 9
    .line 10
    .line 11
    move-result p3

    .line 12
    int-to-float p3, p3

    .line 13
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/Layer;->getSolidHeight()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    int-to-float v0, v0

    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {p2, v1, v1, p3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 22
    .line 23
    .line 24
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->boundsMatrix:Landroid/graphics/Matrix;

    .line 25
    .line 26
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->rect:Landroid/graphics/RectF;

    .line 27
    .line 28
    invoke-virtual {p2, p3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 29
    .line 30
    .line 31
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/SolidLayer;->rect:Landroid/graphics/RectF;

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
