.class public Lcom/airbnb/lottie/model/layer/TextLayer;
.super Lcom/airbnb/lottie/model/layer/BaseLayer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;
    }
.end annotation


# instance fields
.field private final codePointCache:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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

.field private colorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
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

.field private final composition:Lcom/airbnb/lottie/LottieComposition;

.field private final contentsForCharacter:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/airbnb/lottie/model/FontCharacter;",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/animation/content/ContentGroup;",
            ">;>;"
        }
    .end annotation
.end field

.field private final fillPaint:Landroid/graphics/Paint;

.field private final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field private final matrix:Landroid/graphics/Matrix;

.field private opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
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

.field private final rectF:Landroid/graphics/RectF;

.field private final stringBuilder:Ljava/lang/StringBuilder;

.field private strokeColorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
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

.field private strokeColorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
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

.field private final strokePaint:Landroid/graphics/Paint;

.field private strokeWidthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
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

.field private strokeWidthCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
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

.field private final textAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

.field private textRangeEndAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
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

.field private textRangeOffsetAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
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

.field private textRangeStartAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
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

.field private textRangeUnits:Lcom/airbnb/lottie/model/content/TextRangeUnits;

.field private textSizeCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
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

.field private final textSubLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;",
            ">;"
        }
    .end annotation
.end field

.field private trackingAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
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

.field private trackingCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
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

.field private typefaceCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "Landroid/graphics/Typeface;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->stringBuilder:Ljava/lang/StringBuilder;

    .line 11
    .line 12
    new-instance v0, Landroid/graphics/RectF;

    .line 13
    .line 14
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->rectF:Landroid/graphics/RectF;

    .line 18
    .line 19
    new-instance v0, Landroid/graphics/Matrix;

    .line 20
    .line 21
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->matrix:Landroid/graphics/Matrix;

    .line 25
    .line 26
    new-instance v0, Lcom/airbnb/lottie/model/layer/TextLayer$1;

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    invoke-direct {v0, p0, v1}, Lcom/airbnb/lottie/model/layer/TextLayer$1;-><init>(Lcom/airbnb/lottie/model/layer/TextLayer;I)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    .line 33
    .line 34
    new-instance v0, Lcom/airbnb/lottie/model/layer/TextLayer$2;

    .line 35
    .line 36
    invoke-direct {v0, p0, v1}, Lcom/airbnb/lottie/model/layer/TextLayer$2;-><init>(Lcom/airbnb/lottie/model/layer/TextLayer;I)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    .line 40
    .line 41
    new-instance v0, Ljava/util/HashMap;

    .line 42
    .line 43
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->contentsForCharacter:Ljava/util/Map;

    .line 47
    .line 48
    new-instance v0, Landroidx/collection/LongSparseArray;

    .line 49
    .line 50
    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->codePointCache:Landroidx/collection/LongSparseArray;

    .line 54
    .line 55
    new-instance v0, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textSubLines:Ljava/util/List;

    .line 61
    .line 62
    sget-object v0, Lcom/airbnb/lottie/model/content/TextRangeUnits;->INDEX:Lcom/airbnb/lottie/model/content/TextRangeUnits;

    .line 63
    .line 64
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textRangeUnits:Lcom/airbnb/lottie/model/content/TextRangeUnits;

    .line 65
    .line 66
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 67
    .line 68
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/Layer;->getComposition()Lcom/airbnb/lottie/LottieComposition;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 73
    .line 74
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/Layer;->getText()Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 83
    .line 84
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/Layer;->getTextProperties()Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    if-eqz p1, :cond_0

    .line 95
    .line 96
    iget-object p2, p1, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;->textStyle:Lcom/airbnb/lottie/model/animatable/AnimatableTextStyle;

    .line 97
    .line 98
    if-eqz p2, :cond_0

    .line 99
    .line 100
    iget-object p2, p2, Lcom/airbnb/lottie/model/animatable/AnimatableTextStyle;->color:Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    .line 101
    .line 102
    if-eqz p2, :cond_0

    .line 103
    .line 104
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 109
    .line 110
    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 111
    .line 112
    .line 113
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 114
    .line 115
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 116
    .line 117
    .line 118
    :cond_0
    if-eqz p1, :cond_1

    .line 119
    .line 120
    iget-object p2, p1, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;->textStyle:Lcom/airbnb/lottie/model/animatable/AnimatableTextStyle;

    .line 121
    .line 122
    if-eqz p2, :cond_1

    .line 123
    .line 124
    iget-object p2, p2, Lcom/airbnb/lottie/model/animatable/AnimatableTextStyle;->stroke:Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    .line 125
    .line 126
    if-eqz p2, :cond_1

    .line 127
    .line 128
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeColorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 133
    .line 134
    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 135
    .line 136
    .line 137
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeColorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 138
    .line 139
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 140
    .line 141
    .line 142
    :cond_1
    if-eqz p1, :cond_2

    .line 143
    .line 144
    iget-object p2, p1, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;->textStyle:Lcom/airbnb/lottie/model/animatable/AnimatableTextStyle;

    .line 145
    .line 146
    if-eqz p2, :cond_2

    .line 147
    .line 148
    iget-object p2, p2, Lcom/airbnb/lottie/model/animatable/AnimatableTextStyle;->strokeWidth:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 149
    .line 150
    if-eqz p2, :cond_2

    .line 151
    .line 152
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 157
    .line 158
    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 159
    .line 160
    .line 161
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 162
    .line 163
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 164
    .line 165
    .line 166
    :cond_2
    if-eqz p1, :cond_3

    .line 167
    .line 168
    iget-object p2, p1, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;->textStyle:Lcom/airbnb/lottie/model/animatable/AnimatableTextStyle;

    .line 169
    .line 170
    if-eqz p2, :cond_3

    .line 171
    .line 172
    iget-object p2, p2, Lcom/airbnb/lottie/model/animatable/AnimatableTextStyle;->tracking:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 173
    .line 174
    if-eqz p2, :cond_3

    .line 175
    .line 176
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 177
    .line 178
    .line 179
    move-result-object p2

    .line 180
    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 181
    .line 182
    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 183
    .line 184
    .line 185
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 186
    .line 187
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 188
    .line 189
    .line 190
    :cond_3
    if-eqz p1, :cond_4

    .line 191
    .line 192
    iget-object p2, p1, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;->textStyle:Lcom/airbnb/lottie/model/animatable/AnimatableTextStyle;

    .line 193
    .line 194
    if-eqz p2, :cond_4

    .line 195
    .line 196
    iget-object p2, p2, Lcom/airbnb/lottie/model/animatable/AnimatableTextStyle;->opacity:Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    .line 197
    .line 198
    if-eqz p2, :cond_4

    .line 199
    .line 200
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 201
    .line 202
    .line 203
    move-result-object p2

    .line 204
    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 205
    .line 206
    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 207
    .line 208
    .line 209
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 210
    .line 211
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 212
    .line 213
    .line 214
    :cond_4
    if-eqz p1, :cond_5

    .line 215
    .line 216
    iget-object p2, p1, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;->rangeSelector:Lcom/airbnb/lottie/model/animatable/AnimatableTextRangeSelector;

    .line 217
    .line 218
    if-eqz p2, :cond_5

    .line 219
    .line 220
    iget-object p2, p2, Lcom/airbnb/lottie/model/animatable/AnimatableTextRangeSelector;->start:Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    .line 221
    .line 222
    if-eqz p2, :cond_5

    .line 223
    .line 224
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 225
    .line 226
    .line 227
    move-result-object p2

    .line 228
    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textRangeStartAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 229
    .line 230
    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 231
    .line 232
    .line 233
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textRangeStartAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 234
    .line 235
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 236
    .line 237
    .line 238
    :cond_5
    if-eqz p1, :cond_6

    .line 239
    .line 240
    iget-object p2, p1, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;->rangeSelector:Lcom/airbnb/lottie/model/animatable/AnimatableTextRangeSelector;

    .line 241
    .line 242
    if-eqz p2, :cond_6

    .line 243
    .line 244
    iget-object p2, p2, Lcom/airbnb/lottie/model/animatable/AnimatableTextRangeSelector;->end:Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    .line 245
    .line 246
    if-eqz p2, :cond_6

    .line 247
    .line 248
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 249
    .line 250
    .line 251
    move-result-object p2

    .line 252
    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textRangeEndAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 253
    .line 254
    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 255
    .line 256
    .line 257
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textRangeEndAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 258
    .line 259
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 260
    .line 261
    .line 262
    :cond_6
    if-eqz p1, :cond_7

    .line 263
    .line 264
    iget-object p2, p1, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;->rangeSelector:Lcom/airbnb/lottie/model/animatable/AnimatableTextRangeSelector;

    .line 265
    .line 266
    if-eqz p2, :cond_7

    .line 267
    .line 268
    iget-object p2, p2, Lcom/airbnb/lottie/model/animatable/AnimatableTextRangeSelector;->offset:Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    .line 269
    .line 270
    if-eqz p2, :cond_7

    .line 271
    .line 272
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 273
    .line 274
    .line 275
    move-result-object p2

    .line 276
    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textRangeOffsetAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 277
    .line 278
    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 279
    .line 280
    .line 281
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textRangeOffsetAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 282
    .line 283
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 284
    .line 285
    .line 286
    :cond_7
    if-eqz p1, :cond_8

    .line 287
    .line 288
    iget-object p1, p1, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;->rangeSelector:Lcom/airbnb/lottie/model/animatable/AnimatableTextRangeSelector;

    .line 289
    .line 290
    if-eqz p1, :cond_8

    .line 291
    .line 292
    iget-object p1, p1, Lcom/airbnb/lottie/model/animatable/AnimatableTextRangeSelector;->units:Lcom/airbnb/lottie/model/content/TextRangeUnits;

    .line 293
    .line 294
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textRangeUnits:Lcom/airbnb/lottie/model/content/TextRangeUnits;

    .line 295
    .line 296
    :cond_8
    return-void
.end method

.method private codePointToString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p1, p2}, Ljava/lang/String;->codePointAt(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/2addr v1, p2

    .line 10
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-ge v1, v2, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1, v1}, Ljava/lang/String;->codePointAt(I)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-direct {p0, v2}, Lcom/airbnb/lottie/model/layer/TextLayer;->isModifier(I)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-nez v3, :cond_0

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    add-int/2addr v1, v3

    .line 32
    mul-int/lit8 v0, v0, 0x1f

    .line 33
    .line 34
    add-int/2addr v0, v2

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->codePointCache:Landroidx/collection/LongSparseArray;

    .line 37
    .line 38
    int-to-long v3, v0

    .line 39
    invoke-virtual {v2, v3, v4}, Landroidx/collection/LongSparseArray;->containsKey(J)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->codePointCache:Landroidx/collection/LongSparseArray;

    .line 46
    .line 47
    invoke-virtual {p1, v3, v4}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    check-cast p1, Ljava/lang/String;

    .line 52
    .line 53
    return-object p1

    .line 54
    :cond_2
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->stringBuilder:Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const/4 v2, 0x0

    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 58
    .line 59
    .line 60
    :goto_2
    if-ge p2, v1, :cond_3

    .line 61
    .line 62
    invoke-virtual {p1, p2}, Ljava/lang/String;->codePointAt(I)I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->stringBuilder:Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    add-int/2addr p2, v0

    .line 76
    goto :goto_2

    .line 77
    :cond_3
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->stringBuilder:Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->codePointCache:Landroidx/collection/LongSparseArray;

    .line 84
    .line 85
    invoke-virtual {p2, v3, v4, p1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    return-object p1
.end method

.method private configurePaint(Lcom/airbnb/lottie/model/DocumentData;II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->colorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Integer;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-direct {p0, p3}, Lcom/airbnb/lottie/model/layer/TextLayer;->isIndexInRangeSelection(I)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Ljava/lang/Integer;

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    .line 50
    .line 51
    iget v1, p1, Lcom/airbnb/lottie/model/DocumentData;->color:I

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    .line 55
    .line 56
    :goto_0
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeColorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 57
    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Ljava/lang/Integer;

    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeColorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 77
    .line 78
    if-eqz v0, :cond_3

    .line 79
    .line 80
    invoke-direct {p0, p3}, Lcom/airbnb/lottie/model/layer/TextLayer;->isIndexInRangeSelection(I)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_3

    .line 85
    .line 86
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    .line 87
    .line 88
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeColorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 89
    .line 90
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    check-cast v1, Ljava/lang/Integer;

    .line 95
    .line 96
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_3
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    .line 105
    .line 106
    iget v1, p1, Lcom/airbnb/lottie/model/DocumentData;->strokeColor:I

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 109
    .line 110
    .line 111
    :goto_1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    .line 112
    .line 113
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getOpacity()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    const/16 v1, 0x64

    .line 118
    .line 119
    if-nez v0, :cond_4

    .line 120
    .line 121
    const/16 v0, 0x64

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_4
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    .line 125
    .line 126
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getOpacity()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    check-cast v0, Ljava/lang/Integer;

    .line 135
    .line 136
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    :goto_2
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 141
    .line 142
    if-eqz v2, :cond_5

    .line 143
    .line 144
    invoke-direct {p0, p3}, Lcom/airbnb/lottie/model/layer/TextLayer;->isIndexInRangeSelection(I)Z

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    if-eqz v2, :cond_5

    .line 149
    .line 150
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 151
    .line 152
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    check-cast v1, Ljava/lang/Integer;

    .line 157
    .line 158
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    :cond_5
    int-to-float v0, v0

    .line 163
    const/high16 v2, 0x437f0000    # 255.0f

    .line 164
    .line 165
    mul-float v0, v0, v2

    .line 166
    .line 167
    const/high16 v3, 0x42c80000    # 100.0f

    .line 168
    .line 169
    div-float/2addr v0, v3

    .line 170
    int-to-float v1, v1

    .line 171
    div-float/2addr v1, v3

    .line 172
    mul-float v1, v1, v0

    .line 173
    .line 174
    int-to-float p2, p2

    .line 175
    mul-float v1, v1, p2

    .line 176
    .line 177
    div-float/2addr v1, v2

    .line 178
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 179
    .line 180
    .line 181
    move-result p2

    .line 182
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    .line 183
    .line 184
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 185
    .line 186
    .line 187
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    .line 188
    .line 189
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 190
    .line 191
    .line 192
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 193
    .line 194
    if-eqz p2, :cond_6

    .line 195
    .line 196
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    .line 197
    .line 198
    invoke-virtual {p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object p2

    .line 202
    check-cast p2, Ljava/lang/Float;

    .line 203
    .line 204
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 205
    .line 206
    .line 207
    move-result p2

    .line 208
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 209
    .line 210
    .line 211
    goto :goto_3

    .line 212
    :cond_6
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 213
    .line 214
    if-eqz p2, :cond_7

    .line 215
    .line 216
    invoke-direct {p0, p3}, Lcom/airbnb/lottie/model/layer/TextLayer;->isIndexInRangeSelection(I)Z

    .line 217
    .line 218
    .line 219
    move-result p2

    .line 220
    if-eqz p2, :cond_7

    .line 221
    .line 222
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    .line 223
    .line 224
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 225
    .line 226
    invoke-virtual {p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object p2

    .line 230
    check-cast p2, Ljava/lang/Float;

    .line 231
    .line 232
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 233
    .line 234
    .line 235
    move-result p2

    .line 236
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 237
    .line 238
    .line 239
    goto :goto_3

    .line 240
    :cond_7
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    .line 241
    .line 242
    iget p1, p1, Lcom/airbnb/lottie/model/DocumentData;->strokeWidth:F

    .line 243
    .line 244
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    .line 245
    .line 246
    .line 247
    move-result p3

    .line 248
    mul-float p3, p3, p1

    .line 249
    .line 250
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 251
    .line 252
    .line 253
    :goto_3
    return-void
.end method

.method private drawCharacter(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 13
    .line 14
    if-ne v0, v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    cmpl-float v0, v0, v1

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    const/4 v5, 0x0

    .line 31
    const/4 v6, 0x0

    .line 32
    const/4 v3, 0x0

    .line 33
    move-object v1, p3

    .line 34
    move-object v2, p1

    .line 35
    move-object v7, p2

    .line 36
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method private drawCharacterAsGlyph(Lcom/airbnb/lottie/model/FontCharacter;FLcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Canvas;II)V
    .locals 4

    .line 1
    invoke-direct {p0, p3, p6, p5}, Lcom/airbnb/lottie/model/layer/TextLayer;->configurePaint(Lcom/airbnb/lottie/model/DocumentData;II)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/model/layer/TextLayer;->getContentsForCharacter(Lcom/airbnb/lottie/model/FontCharacter;)Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const/4 p5, 0x0

    .line 9
    const/4 p6, 0x0

    .line 10
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-ge p6, v0, :cond_1

    .line 15
    .line 16
    invoke-interface {p1, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcom/airbnb/lottie/animation/content/ContentGroup;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/content/ContentGroup;->getPath()Landroid/graphics/Path;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->rectF:Landroid/graphics/RectF;

    .line 27
    .line 28
    invoke-virtual {v0, v1, p5}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->matrix:Landroid/graphics/Matrix;

    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->matrix:Landroid/graphics/Matrix;

    .line 37
    .line 38
    iget v2, p3, Lcom/airbnb/lottie/model/DocumentData;->baselineShift:F

    .line 39
    .line 40
    neg-float v2, v2

    .line 41
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    mul-float v3, v3, v2

    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->matrix:Landroid/graphics/Matrix;

    .line 52
    .line 53
    invoke-virtual {v1, p2, p2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->matrix:Landroid/graphics/Matrix;

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 59
    .line 60
    .line 61
    iget-boolean v1, p3, Lcom/airbnb/lottie/model/DocumentData;->strokeOverFill:Z

    .line 62
    .line 63
    if-eqz v1, :cond_0

    .line 64
    .line 65
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    .line 66
    .line 67
    invoke-direct {p0, v0, v1, p4}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawGlyph(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 68
    .line 69
    .line 70
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    .line 71
    .line 72
    invoke-direct {p0, v0, v1, p4}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawGlyph(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    .line 77
    .line 78
    invoke-direct {p0, v0, v1, p4}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawGlyph(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 79
    .line 80
    .line 81
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    .line 82
    .line 83
    invoke-direct {p0, v0, v1, p4}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawGlyph(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 84
    .line 85
    .line 86
    :goto_1
    add-int/lit8 p6, p6, 0x1

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_1
    return-void
.end method

.method private drawCharacterFromFont(Ljava/lang/String;Lcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Canvas;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p5, p4}, Lcom/airbnb/lottie/model/layer/TextLayer;->configurePaint(Lcom/airbnb/lottie/model/DocumentData;II)V

    .line 2
    .line 3
    .line 4
    iget-boolean p2, p2, Lcom/airbnb/lottie/model/DocumentData;->strokeOverFill:Z

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    .line 9
    .line 10
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawCharacter(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 11
    .line 12
    .line 13
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    .line 14
    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawCharacter(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    .line 20
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawCharacter(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 22
    .line 23
    .line 24
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    .line 25
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawCharacter(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method

.method private drawFontTextLine(Ljava/lang/String;Lcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Canvas;FII)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    invoke-direct {p0, p1, v0}, Lcom/airbnb/lottie/model/layer/TextLayer;->codePointToString(Ljava/lang/String;I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    add-int v6, p5, v0

    .line 13
    .line 14
    move-object v2, p0

    .line 15
    move-object v3, v1

    .line 16
    move-object v4, p2

    .line 17
    move-object v5, p3

    .line 18
    move v7, p6

    .line 19
    invoke-direct/range {v2 .. v7}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawCharacterFromFont(Ljava/lang/String;Lcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Canvas;II)V

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    .line 23
    .line 24
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    add-float/2addr v2, p4

    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-virtual {p3, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    add-int/2addr v0, v1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    return-void
.end method

.method private drawGlyph(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 13
    .line 14
    if-ne v0, v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    cmpl-float v0, v0, v1

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private drawGlyphTextLine(Ljava/lang/String;Lcom/airbnb/lottie/model/DocumentData;Lcom/airbnb/lottie/model/Font;Landroid/graphics/Canvas;FFFI)V
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_1

    .line 7
    .line 8
    move-object v8, p1

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/Font;->getFamily()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/Font;->getStyle()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-static {v1, v2, v3}, Lcom/airbnb/lottie/model/FontCharacter;->hashFor(CLjava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    move-object v9, p0

    .line 26
    iget-object v2, v9, Lcom/airbnb/lottie/model/layer/TextLayer;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieComposition;->getCharacters()Landroidx/collection/SparseArrayCompat;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v2, v1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    move-object v10, v1

    .line 37
    check-cast v10, Lcom/airbnb/lottie/model/FontCharacter;

    .line 38
    .line 39
    if-nez v10, :cond_0

    .line 40
    .line 41
    move-object v3, p4

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    move-object v1, p0

    .line 44
    move-object v2, v10

    .line 45
    move/from16 v3, p6

    .line 46
    .line 47
    move-object v4, p2

    .line 48
    move-object v5, p4

    .line 49
    move v6, v0

    .line 50
    move/from16 v7, p8

    .line 51
    .line 52
    invoke-direct/range {v1 .. v7}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawCharacterAsGlyph(Lcom/airbnb/lottie/model/FontCharacter;FLcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Canvas;II)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v10}, Lcom/airbnb/lottie/model/FontCharacter;->getWidth()D

    .line 56
    .line 57
    .line 58
    move-result-wide v1

    .line 59
    double-to-float v1, v1

    .line 60
    mul-float v1, v1, p6

    .line 61
    .line 62
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    mul-float v2, v2, v1

    .line 67
    .line 68
    add-float v2, v2, p7

    .line 69
    .line 70
    const/4 v1, 0x0

    .line 71
    move-object v3, p4

    .line 72
    invoke-virtual {p4, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 73
    .line 74
    .line 75
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    move-object v9, p0

    .line 79
    return-void
.end method

.method private drawTextWithFont(Lcom/airbnb/lottie/model/DocumentData;Lcom/airbnb/lottie/model/Font;Landroid/graphics/Canvas;I)V
    .locals 20

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    move-object/from16 v9, p2

    .line 6
    .line 7
    invoke-direct {v7, v9}, Lcom/airbnb/lottie/model/layer/TextLayer;->getTypeface(Lcom/airbnb/lottie/model/Font;)Landroid/graphics/Typeface;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v1, v8, Lcom/airbnb/lottie/model/DocumentData;->text:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v2, v7, Lcom/airbnb/lottie/model/layer/TextLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieDrawable;->getTextDelegate()Lcom/airbnb/lottie/TextDelegate;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v2, v3, v1}, Lcom/airbnb/lottie/TextDelegate;->getTextInternal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    :cond_1
    iget-object v2, v7, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    .line 33
    .line 34
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 35
    .line 36
    .line 37
    iget-object v0, v7, Lcom/airbnb/lottie/model/layer/TextLayer;->textSizeCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Ljava/lang/Float;

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    iget v0, v8, Lcom/airbnb/lottie/model/DocumentData;->size:F

    .line 53
    .line 54
    :goto_0
    iget-object v2, v7, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    .line 55
    .line 56
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    mul-float v3, v3, v0

    .line 61
    .line 62
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 63
    .line 64
    .line 65
    iget-object v2, v7, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    .line 66
    .line 67
    iget-object v3, v7, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    .line 68
    .line 69
    invoke-virtual {v3}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 74
    .line 75
    .line 76
    iget-object v2, v7, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    .line 77
    .line 78
    iget-object v3, v7, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    .line 79
    .line 80
    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSize()F

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 85
    .line 86
    .line 87
    iget v2, v8, Lcom/airbnb/lottie/model/DocumentData;->tracking:I

    .line 88
    .line 89
    int-to-float v2, v2

    .line 90
    const/high16 v3, 0x41200000    # 10.0f

    .line 91
    .line 92
    div-float/2addr v2, v3

    .line 93
    iget-object v3, v7, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 94
    .line 95
    if-eqz v3, :cond_3

    .line 96
    .line 97
    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    check-cast v3, Ljava/lang/Float;

    .line 102
    .line 103
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    :goto_1
    add-float/2addr v2, v3

    .line 108
    goto :goto_2

    .line 109
    :cond_3
    iget-object v3, v7, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 110
    .line 111
    if-eqz v3, :cond_4

    .line 112
    .line 113
    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    check-cast v3, Ljava/lang/Float;

    .line 118
    .line 119
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    goto :goto_1

    .line 124
    :cond_4
    :goto_2
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    mul-float v3, v3, v2

    .line 129
    .line 130
    mul-float v3, v3, v0

    .line 131
    .line 132
    const/high16 v0, 0x42c80000    # 100.0f

    .line 133
    .line 134
    div-float v10, v3, v0

    .line 135
    .line 136
    invoke-direct {v7, v1}, Lcom/airbnb/lottie/model/layer/TextLayer;->getTextLines(Ljava/lang/String;)Ljava/util/List;

    .line 137
    .line 138
    .line 139
    move-result-object v11

    .line 140
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 141
    .line 142
    .line 143
    move-result v12

    .line 144
    const/4 v13, 0x0

    .line 145
    const/4 v0, -0x1

    .line 146
    const/4 v14, -0x1

    .line 147
    const/4 v15, 0x0

    .line 148
    const/16 v16, 0x0

    .line 149
    .line 150
    :goto_3
    if-ge v15, v12, :cond_8

    .line 151
    .line 152
    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    move-object v1, v0

    .line 157
    check-cast v1, Ljava/lang/String;

    .line 158
    .line 159
    iget-object v0, v8, Lcom/airbnb/lottie/model/DocumentData;->boxSize:Landroid/graphics/PointF;

    .line 160
    .line 161
    if-nez v0, :cond_5

    .line 162
    .line 163
    const/4 v0, 0x0

    .line 164
    const/4 v2, 0x0

    .line 165
    goto :goto_4

    .line 166
    :cond_5
    iget v0, v0, Landroid/graphics/PointF;->x:F

    .line 167
    .line 168
    move v2, v0

    .line 169
    :goto_4
    const/4 v4, 0x0

    .line 170
    const/4 v6, 0x0

    .line 171
    move-object/from16 v0, p0

    .line 172
    .line 173
    move-object/from16 v3, p2

    .line 174
    .line 175
    move v5, v10

    .line 176
    invoke-direct/range {v0 .. v6}, Lcom/airbnb/lottie/model/layer/TextLayer;->splitGlyphTextIntoLines(Ljava/lang/String;FLcom/airbnb/lottie/model/Font;FFZ)Ljava/util/List;

    .line 177
    .line 178
    .line 179
    move-result-object v6

    .line 180
    const/4 v5, 0x0

    .line 181
    :goto_5
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    if-ge v5, v0, :cond_7

    .line 186
    .line 187
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    move-object/from16 v17, v0

    .line 192
    .line 193
    check-cast v17, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;

    .line 194
    .line 195
    add-int/lit8 v14, v14, 0x1

    .line 196
    .line 197
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Canvas;->save()I

    .line 198
    .line 199
    .line 200
    invoke-static/range {v17 .. v17}, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;->access$000(Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;)F

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    move-object/from16 v4, p3

    .line 205
    .line 206
    invoke-direct {v7, v4, v8, v14, v0}, Lcom/airbnb/lottie/model/layer/TextLayer;->offsetCanvas(Landroid/graphics/Canvas;Lcom/airbnb/lottie/model/DocumentData;IF)Z

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    if-eqz v0, :cond_6

    .line 211
    .line 212
    invoke-static/range {v17 .. v17}, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;->access$100(Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    move-object/from16 v0, p0

    .line 217
    .line 218
    move-object/from16 v2, p1

    .line 219
    .line 220
    move-object/from16 v3, p3

    .line 221
    .line 222
    move v4, v10

    .line 223
    move/from16 v18, v5

    .line 224
    .line 225
    move/from16 v5, v16

    .line 226
    .line 227
    move-object/from16 v19, v6

    .line 228
    .line 229
    move/from16 v6, p4

    .line 230
    .line 231
    invoke-direct/range {v0 .. v6}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawFontTextLine(Ljava/lang/String;Lcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Canvas;FII)V

    .line 232
    .line 233
    .line 234
    goto :goto_6

    .line 235
    :cond_6
    move/from16 v18, v5

    .line 236
    .line 237
    move-object/from16 v19, v6

    .line 238
    .line 239
    :goto_6
    invoke-static/range {v17 .. v17}, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;->access$100(Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 244
    .line 245
    .line 246
    move-result v0

    .line 247
    add-int v16, v0, v16

    .line 248
    .line 249
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Canvas;->restore()V

    .line 250
    .line 251
    .line 252
    add-int/lit8 v5, v18, 0x1

    .line 253
    .line 254
    move-object/from16 v6, v19

    .line 255
    .line 256
    goto :goto_5

    .line 257
    :cond_7
    add-int/lit8 v15, v15, 0x1

    .line 258
    .line 259
    goto :goto_3

    .line 260
    :cond_8
    return-void
.end method

.method private drawTextWithGlyphs(Lcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/Font;Landroid/graphics/Canvas;I)V
    .locals 21

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    move-object/from16 v10, p1

    .line 4
    .line 5
    iget-object v0, v9, Lcom/airbnb/lottie/model/layer/TextLayer;->textSizeCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/Float;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget v0, v10, Lcom/airbnb/lottie/model/DocumentData;->size:F

    .line 21
    .line 22
    :goto_0
    const/high16 v1, 0x42c80000    # 100.0f

    .line 23
    .line 24
    div-float v11, v0, v1

    .line 25
    .line 26
    invoke-static/range {p2 .. p2}, Lcom/airbnb/lottie/utils/Utils;->getScale(Landroid/graphics/Matrix;)F

    .line 27
    .line 28
    .line 29
    move-result v12

    .line 30
    iget-object v0, v10, Lcom/airbnb/lottie/model/DocumentData;->text:Ljava/lang/String;

    .line 31
    .line 32
    invoke-direct {v9, v0}, Lcom/airbnb/lottie/model/layer/TextLayer;->getTextLines(Ljava/lang/String;)Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v13

    .line 36
    invoke-interface {v13}, Ljava/util/List;->size()I

    .line 37
    .line 38
    .line 39
    move-result v14

    .line 40
    iget v0, v10, Lcom/airbnb/lottie/model/DocumentData;->tracking:I

    .line 41
    .line 42
    int-to-float v0, v0

    .line 43
    const/high16 v1, 0x41200000    # 10.0f

    .line 44
    .line 45
    div-float/2addr v0, v1

    .line 46
    iget-object v1, v9, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 47
    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Ljava/lang/Float;

    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    :goto_1
    add-float/2addr v0, v1

    .line 61
    :cond_1
    move v15, v0

    .line 62
    goto :goto_2

    .line 63
    :cond_2
    iget-object v1, v9, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 64
    .line 65
    if-eqz v1, :cond_1

    .line 66
    .line 67
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    check-cast v1, Ljava/lang/Float;

    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    goto :goto_1

    .line 78
    :goto_2
    const/16 v16, 0x0

    .line 79
    .line 80
    const/4 v0, -0x1

    .line 81
    const/4 v7, -0x1

    .line 82
    const/4 v8, 0x0

    .line 83
    :goto_3
    if-ge v8, v14, :cond_6

    .line 84
    .line 85
    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    move-object v1, v0

    .line 90
    check-cast v1, Ljava/lang/String;

    .line 91
    .line 92
    iget-object v0, v10, Lcom/airbnb/lottie/model/DocumentData;->boxSize:Landroid/graphics/PointF;

    .line 93
    .line 94
    if-nez v0, :cond_3

    .line 95
    .line 96
    const/4 v0, 0x0

    .line 97
    const/4 v2, 0x0

    .line 98
    goto :goto_4

    .line 99
    :cond_3
    iget v0, v0, Landroid/graphics/PointF;->x:F

    .line 100
    .line 101
    move v2, v0

    .line 102
    :goto_4
    const/4 v6, 0x1

    .line 103
    move-object/from16 v0, p0

    .line 104
    .line 105
    move-object/from16 v3, p3

    .line 106
    .line 107
    move v4, v11

    .line 108
    move v5, v15

    .line 109
    invoke-direct/range {v0 .. v6}, Lcom/airbnb/lottie/model/layer/TextLayer;->splitGlyphTextIntoLines(Ljava/lang/String;FLcom/airbnb/lottie/model/Font;FFZ)Ljava/util/List;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    const/4 v5, 0x0

    .line 114
    :goto_5
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-ge v5, v0, :cond_5

    .line 119
    .line 120
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    check-cast v0, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;

    .line 125
    .line 126
    add-int/lit8 v7, v7, 0x1

    .line 127
    .line 128
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Canvas;->save()I

    .line 129
    .line 130
    .line 131
    invoke-static {v0}, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;->access$000(Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;)F

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    move-object/from16 v4, p4

    .line 136
    .line 137
    invoke-direct {v9, v4, v10, v7, v1}, Lcom/airbnb/lottie/model/layer/TextLayer;->offsetCanvas(Landroid/graphics/Canvas;Lcom/airbnb/lottie/model/DocumentData;IF)Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-eqz v1, :cond_4

    .line 142
    .line 143
    invoke-static {v0}, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;->access$100(Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    move-object/from16 v0, p0

    .line 148
    .line 149
    move-object/from16 v2, p1

    .line 150
    .line 151
    move-object/from16 v3, p3

    .line 152
    .line 153
    move-object/from16 v4, p4

    .line 154
    .line 155
    move/from16 v17, v5

    .line 156
    .line 157
    move v5, v12

    .line 158
    move-object/from16 v18, v6

    .line 159
    .line 160
    move v6, v11

    .line 161
    move/from16 v19, v7

    .line 162
    .line 163
    move v7, v15

    .line 164
    move/from16 v20, v8

    .line 165
    .line 166
    move/from16 v8, p5

    .line 167
    .line 168
    invoke-direct/range {v0 .. v8}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawGlyphTextLine(Ljava/lang/String;Lcom/airbnb/lottie/model/DocumentData;Lcom/airbnb/lottie/model/Font;Landroid/graphics/Canvas;FFFI)V

    .line 169
    .line 170
    .line 171
    goto :goto_6

    .line 172
    :cond_4
    move/from16 v17, v5

    .line 173
    .line 174
    move-object/from16 v18, v6

    .line 175
    .line 176
    move/from16 v19, v7

    .line 177
    .line 178
    move/from16 v20, v8

    .line 179
    .line 180
    :goto_6
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Canvas;->restore()V

    .line 181
    .line 182
    .line 183
    add-int/lit8 v5, v17, 0x1

    .line 184
    .line 185
    move-object/from16 v6, v18

    .line 186
    .line 187
    move/from16 v7, v19

    .line 188
    .line 189
    move/from16 v8, v20

    .line 190
    .line 191
    goto :goto_5

    .line 192
    :cond_5
    move/from16 v20, v8

    .line 193
    .line 194
    add-int/lit8 v8, v20, 0x1

    .line 195
    .line 196
    goto :goto_3

    .line 197
    :cond_6
    return-void
.end method

.method private ensureEnoughSubLines(I)Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textSubLines:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    :goto_0
    if-ge v0, p1, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textSubLines:Ljava/util/List;

    .line 10
    .line 11
    new-instance v2, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-direct {v2, v3}, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;-><init>(Lcom/airbnb/lottie/model/layer/TextLayer$1;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    add-int/lit8 v0, v0, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textSubLines:Ljava/util/List;

    .line 24
    .line 25
    add-int/lit8 p1, p1, -0x1

    .line 26
    .line 27
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;

    .line 32
    .line 33
    return-object p1
.end method

.method private getContentsForCharacter(Lcom/airbnb/lottie/model/FontCharacter;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/model/FontCharacter;",
            ")",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/animation/content/ContentGroup;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->contentsForCharacter:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->contentsForCharacter:Ljava/util/Map;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Ljava/util/List;

    .line 16
    .line 17
    return-object p1

    .line 18
    :cond_0
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/FontCharacter;->getShapes()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    new-instance v2, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 29
    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    :goto_0
    if-ge v3, v1, :cond_1

    .line 33
    .line 34
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    check-cast v4, Lcom/airbnb/lottie/model/content/ShapeGroup;

    .line 39
    .line 40
    new-instance v5, Lcom/airbnb/lottie/animation/content/ContentGroup;

    .line 41
    .line 42
    iget-object v6, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 43
    .line 44
    iget-object v7, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 45
    .line 46
    invoke-direct {v5, v6, p0, v4, v7}, Lcom/airbnb/lottie/animation/content/ContentGroup;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/ShapeGroup;Lcom/airbnb/lottie/LottieComposition;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    add-int/lit8 v3, v3, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->contentsForCharacter:Ljava/util/Map;

    .line 56
    .line 57
    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    return-object v2
.end method

.method private getTextLines(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v2, v1, [J

    .line 5
    .line 6
    fill-array-data v2, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 17
    .line 18
    new-array v3, v1, [J

    .line 19
    .line 20
    fill-array-data v3, :array_1

    .line 21
    .line 22
    .line 23
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 35
    .line 36
    new-array v2, v1, [J

    .line 37
    .line 38
    fill-array-data v2, :array_2

    .line 39
    .line 40
    .line 41
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 49
    .line 50
    new-array v3, v1, [J

    .line 51
    .line 52
    fill-array-data v3, :array_3

    .line 53
    .line 54
    .line 55
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 67
    .line 68
    new-array v2, v1, [J

    .line 69
    .line 70
    fill-array-data v2, :array_4

    .line 71
    .line 72
    .line 73
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 81
    .line 82
    new-array v3, v1, [J

    .line 83
    .line 84
    fill-array-data v3, :array_5

    .line 85
    .line 86
    .line 87
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 99
    .line 100
    new-array v1, v1, [J

    .line 101
    .line 102
    fill-array-data v1, :array_6

    .line 103
    .line 104
    .line 105
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    return-object p1

    .line 121
    :array_0
    .array-data 8
        -0x20635f8a85e95210L    # -3.7482669553972395E152
        0x228ff93d328ccea6L
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
    :array_1
    .array-data 8
        0x2eb20524c1a7e3e9L    # 9.275946189958778E-84
        -0xb42b86b016dc659L
    .end array-data

    .line 134
    .line 135
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
    :array_2
    .array-data 8
        0x2b4aec1cbe577c3cL    # 3.846483122381918E-100
        0x34103d31786b6784L    # 6.467569267151645E-58
    .end array-data

    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    :array_3
    .array-data 8
        -0x47765751260148eaL    # -2.412953054722054E-36
        0x781f3f656d363c0dL    # 4.126989515261133E270
    .end array-data

    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    :array_4
    .array-data 8
        0xce3d326aa662eddL
        0x7636f1a4eb7fcefbL    # 2.822174900243217E261
    .end array-data

    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    :array_5
    .array-data 8
        -0x2062d7f35731139eL    # -3.817617088930363E152
        0x2a8f295b3d75ae25L
    .end array-data

    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    :array_6
    .array-data 8
        0x42a8c3290834dba9L    # 1.361324304650983E13
        0x2cdaaa404f0e1ec5L    # 1.278331954546324E-92
    .end array-data
.end method

.method private getTypeface(Lcom/airbnb/lottie/model/Font;)Landroid/graphics/Typeface;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->typefaceCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

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
    check-cast v0, Landroid/graphics/Typeface;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->getTypeface(Lcom/airbnb/lottie/model/Font;)Landroid/graphics/Typeface;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_1
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/Font;->getTypeface()Landroid/graphics/Typeface;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1
.end method

.method private isIndexInRangeSelection(I)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/airbnb/lottie/model/DocumentData;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/airbnb/lottie/model/DocumentData;->text:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textRangeStartAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    if-eqz v1, :cond_4

    .line 19
    .line 20
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textRangeEndAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 21
    .line 22
    if-eqz v3, :cond_4

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Ljava/lang/Integer;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textRangeEndAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 35
    .line 36
    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Ljava/lang/Integer;

    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textRangeStartAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 51
    .line 52
    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    check-cast v3, Ljava/lang/Integer;

    .line 57
    .line 58
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textRangeEndAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 63
    .line 64
    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    check-cast v4, Ljava/lang/Integer;

    .line 69
    .line 70
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textRangeOffsetAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 79
    .line 80
    if-eqz v4, :cond_0

    .line 81
    .line 82
    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    check-cast v4, Ljava/lang/Integer;

    .line 87
    .line 88
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    add-int/2addr v1, v4

    .line 93
    add-int/2addr v3, v4

    .line 94
    :cond_0
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textRangeUnits:Lcom/airbnb/lottie/model/content/TextRangeUnits;

    .line 95
    .line 96
    sget-object v5, Lcom/airbnb/lottie/model/content/TextRangeUnits;->INDEX:Lcom/airbnb/lottie/model/content/TextRangeUnits;

    .line 97
    .line 98
    const/4 v6, 0x0

    .line 99
    if-ne v4, v5, :cond_2

    .line 100
    .line 101
    if-lt p1, v1, :cond_1

    .line 102
    .line 103
    if-ge p1, v3, :cond_1

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_1
    const/4 v2, 0x0

    .line 107
    :goto_0
    return v2

    .line 108
    :cond_2
    int-to-float p1, p1

    .line 109
    int-to-float v0, v0

    .line 110
    div-float/2addr p1, v0

    .line 111
    const/high16 v0, 0x42c80000    # 100.0f

    .line 112
    .line 113
    mul-float p1, p1, v0

    .line 114
    .line 115
    int-to-float v0, v1

    .line 116
    cmpl-float v0, p1, v0

    .line 117
    .line 118
    if-ltz v0, :cond_3

    .line 119
    .line 120
    int-to-float v0, v3

    .line 121
    cmpg-float p1, p1, v0

    .line 122
    .line 123
    if-gez p1, :cond_3

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_3
    const/4 v2, 0x0

    .line 127
    :cond_4
    :goto_1
    return v2
.end method

.method private isModifier(I)Z
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/Character;->getType(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x10

    .line 6
    .line 7
    if-eq v0, v1, :cond_1

    .line 8
    .line 9
    invoke-static {p1}, Ljava/lang/Character;->getType(I)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/16 v1, 0x1b

    .line 14
    .line 15
    if-eq v0, v1, :cond_1

    .line 16
    .line 17
    invoke-static {p1}, Ljava/lang/Character;->getType(I)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x6

    .line 22
    if-eq v0, v1, :cond_1

    .line 23
    .line 24
    invoke-static {p1}, Ljava/lang/Character;->getType(I)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/16 v1, 0x1c

    .line 29
    .line 30
    if-eq v0, v1, :cond_1

    .line 31
    .line 32
    invoke-static {p1}, Ljava/lang/Character;->getType(I)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    const/16 v1, 0x8

    .line 37
    .line 38
    if-eq v0, v1, :cond_1

    .line 39
    .line 40
    invoke-static {p1}, Ljava/lang/Character;->getType(I)I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    const/16 v0, 0x13

    .line 45
    .line 46
    if-ne p1, v0, :cond_0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const/4 p1, 0x0

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 52
    :goto_1
    return p1
.end method

.method private offsetCanvas(Landroid/graphics/Canvas;Lcom/airbnb/lottie/model/DocumentData;IF)Z
    .locals 6

    .line 1
    iget-object v0, p2, Lcom/airbnb/lottie/model/DocumentData;->boxPosition:Landroid/graphics/PointF;

    .line 2
    .line 3
    iget-object v1, p2, Lcom/airbnb/lottie/model/DocumentData;->boxSize:Landroid/graphics/PointF;

    .line 4
    .line 5
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget v4, p2, Lcom/airbnb/lottie/model/DocumentData;->lineHeight:F

    .line 15
    .line 16
    mul-float v4, v4, v2

    .line 17
    .line 18
    iget v5, v0, Landroid/graphics/PointF;->y:F

    .line 19
    .line 20
    add-float/2addr v4, v5

    .line 21
    :goto_0
    int-to-float p3, p3

    .line 22
    iget v5, p2, Lcom/airbnb/lottie/model/DocumentData;->lineHeight:F

    .line 23
    .line 24
    mul-float p3, p3, v5

    .line 25
    .line 26
    mul-float p3, p3, v2

    .line 27
    .line 28
    add-float/2addr p3, v4

    .line 29
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieDrawable;->getClipTextToBoundingBox()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    iget v2, v0, Landroid/graphics/PointF;->y:F

    .line 42
    .line 43
    iget v4, v1, Landroid/graphics/PointF;->y:F

    .line 44
    .line 45
    add-float/2addr v2, v4

    .line 46
    iget v4, p2, Lcom/airbnb/lottie/model/DocumentData;->size:F

    .line 47
    .line 48
    add-float/2addr v2, v4

    .line 49
    cmpl-float v2, p3, v2

    .line 50
    .line 51
    if-ltz v2, :cond_1

    .line 52
    .line 53
    const/4 p1, 0x0

    .line 54
    return p1

    .line 55
    :cond_1
    if-nez v0, :cond_2

    .line 56
    .line 57
    const/4 v0, 0x0

    .line 58
    goto :goto_1

    .line 59
    :cond_2
    iget v0, v0, Landroid/graphics/PointF;->x:F

    .line 60
    .line 61
    :goto_1
    if-nez v1, :cond_3

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_3
    iget v3, v1, Landroid/graphics/PointF;->x:F

    .line 65
    .line 66
    :goto_2
    sget-object v1, Lcom/airbnb/lottie/model/layer/TextLayer$3;->$SwitchMap$com$airbnb$lottie$model$DocumentData$Justification:[I

    .line 67
    .line 68
    iget-object p2, p2, Lcom/airbnb/lottie/model/DocumentData;->justification:Lcom/airbnb/lottie/model/DocumentData$Justification;

    .line 69
    .line 70
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    aget p2, v1, p2

    .line 75
    .line 76
    const/4 v1, 0x1

    .line 77
    if-eq p2, v1, :cond_6

    .line 78
    .line 79
    const/4 v2, 0x2

    .line 80
    if-eq p2, v2, :cond_5

    .line 81
    .line 82
    const/4 v2, 0x3

    .line 83
    if-eq p2, v2, :cond_4

    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_4
    const/high16 p2, 0x40000000    # 2.0f

    .line 87
    .line 88
    div-float/2addr v3, p2

    .line 89
    add-float/2addr v3, v0

    .line 90
    div-float/2addr p4, p2

    .line 91
    sub-float/2addr v3, p4

    .line 92
    invoke-virtual {p1, v3, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 93
    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_5
    add-float/2addr v0, v3

    .line 97
    sub-float/2addr v0, p4

    .line 98
    invoke-virtual {p1, v0, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 99
    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_6
    invoke-virtual {p1, v0, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 103
    .line 104
    .line 105
    :goto_3
    return v1
.end method

.method private splitGlyphTextIntoLines(Ljava/lang/String;FLcom/airbnb/lottie/model/Font;FFZ)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "F",
            "Lcom/airbnb/lottie/model/Font;",
            "FFZ)",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x0

    .line 8
    const/4 v5, 0x0

    .line 9
    const/4 v6, 0x0

    .line 10
    const/4 v7, 0x0

    .line 11
    const/4 v8, 0x0

    .line 12
    const/4 v9, 0x0

    .line 13
    const/4 v10, 0x0

    .line 14
    const/4 v11, 0x0

    .line 15
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 16
    .line 17
    .line 18
    move-result v12

    .line 19
    if-ge v4, v12, :cond_7

    .line 20
    .line 21
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 22
    .line 23
    .line 24
    move-result v12

    .line 25
    if-eqz p6, :cond_1

    .line 26
    .line 27
    invoke-virtual/range {p3 .. p3}, Lcom/airbnb/lottie/model/Font;->getFamily()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v13

    .line 31
    invoke-virtual/range {p3 .. p3}, Lcom/airbnb/lottie/model/Font;->getStyle()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v14

    .line 35
    invoke-static {v12, v13, v14}, Lcom/airbnb/lottie/model/FontCharacter;->hashFor(CLjava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v13

    .line 39
    iget-object v14, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 40
    .line 41
    invoke-virtual {v14}, Lcom/airbnb/lottie/LottieComposition;->getCharacters()Landroidx/collection/SparseArrayCompat;

    .line 42
    .line 43
    .line 44
    move-result-object v14

    .line 45
    invoke-virtual {v14, v13}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v13

    .line 49
    check-cast v13, Lcom/airbnb/lottie/model/FontCharacter;

    .line 50
    .line 51
    if-nez v13, :cond_0

    .line 52
    .line 53
    goto/16 :goto_3

    .line 54
    .line 55
    :cond_0
    invoke-virtual {v13}, Lcom/airbnb/lottie/model/FontCharacter;->getWidth()D

    .line 56
    .line 57
    .line 58
    move-result-wide v13

    .line 59
    double-to-float v13, v13

    .line 60
    mul-float v13, v13, p4

    .line 61
    .line 62
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    .line 63
    .line 64
    .line 65
    move-result v14

    .line 66
    mul-float v14, v14, v13

    .line 67
    .line 68
    add-float v14, v14, p5

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_1
    iget-object v13, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    .line 72
    .line 73
    add-int/lit8 v14, v4, 0x1

    .line 74
    .line 75
    invoke-virtual {v1, v4, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v14

    .line 79
    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 80
    .line 81
    .line 82
    move-result v13

    .line 83
    add-float v14, v13, p5

    .line 84
    .line 85
    :goto_1
    const/16 v13, 0x20

    .line 86
    .line 87
    if-ne v12, v13, :cond_2

    .line 88
    .line 89
    const/4 v8, 0x1

    .line 90
    move v11, v14

    .line 91
    goto :goto_2

    .line 92
    :cond_2
    if-eqz v8, :cond_3

    .line 93
    .line 94
    move v10, v4

    .line 95
    move v9, v14

    .line 96
    const/4 v8, 0x0

    .line 97
    goto :goto_2

    .line 98
    :cond_3
    add-float/2addr v9, v14

    .line 99
    :goto_2
    add-float/2addr v5, v14

    .line 100
    cmpl-float v15, p2, v3

    .line 101
    .line 102
    if-lez v15, :cond_6

    .line 103
    .line 104
    cmpl-float v15, v5, p2

    .line 105
    .line 106
    if-ltz v15, :cond_6

    .line 107
    .line 108
    if-ne v12, v13, :cond_4

    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 112
    .line 113
    invoke-direct {v0, v6}, Lcom/airbnb/lottie/model/layer/TextLayer;->ensureEnoughSubLines(I)Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;

    .line 114
    .line 115
    .line 116
    move-result-object v12

    .line 117
    if-ne v10, v7, :cond_5

    .line 118
    .line 119
    invoke-virtual {v1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v7

    .line 123
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v9

    .line 127
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 128
    .line 129
    .line 130
    move-result v10

    .line 131
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 132
    .line 133
    .line 134
    move-result v7

    .line 135
    sub-int/2addr v10, v7

    .line 136
    int-to-float v7, v10

    .line 137
    mul-float v7, v7, v11

    .line 138
    .line 139
    sub-float/2addr v5, v14

    .line 140
    sub-float/2addr v5, v7

    .line 141
    invoke-virtual {v12, v9, v5}, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;->set(Ljava/lang/String;F)V

    .line 142
    .line 143
    .line 144
    move v7, v4

    .line 145
    move v10, v7

    .line 146
    move v5, v14

    .line 147
    move v9, v5

    .line 148
    goto :goto_3

    .line 149
    :cond_5
    add-int/lit8 v13, v10, -0x1

    .line 150
    .line 151
    invoke-virtual {v1, v7, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v7

    .line 155
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v13

    .line 159
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 160
    .line 161
    .line 162
    move-result v7

    .line 163
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    .line 164
    .line 165
    .line 166
    move-result v14

    .line 167
    sub-int/2addr v7, v14

    .line 168
    int-to-float v7, v7

    .line 169
    mul-float v7, v7, v11

    .line 170
    .line 171
    sub-float/2addr v5, v9

    .line 172
    sub-float/2addr v5, v7

    .line 173
    sub-float/2addr v5, v11

    .line 174
    invoke-virtual {v12, v13, v5}, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;->set(Ljava/lang/String;F)V

    .line 175
    .line 176
    .line 177
    move v5, v9

    .line 178
    move v7, v10

    .line 179
    :cond_6
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 180
    .line 181
    goto/16 :goto_0

    .line 182
    .line 183
    :cond_7
    cmpl-float v3, v5, v3

    .line 184
    .line 185
    if-lez v3, :cond_8

    .line 186
    .line 187
    add-int/lit8 v6, v6, 0x1

    .line 188
    .line 189
    invoke-direct {v0, v6}, Lcom/airbnb/lottie/model/layer/TextLayer;->ensureEnoughSubLines(I)Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;

    .line 190
    .line 191
    .line 192
    move-result-object v3

    .line 193
    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    invoke-virtual {v3, v1, v5}, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;->set(Ljava/lang/String;F)V

    .line 198
    .line 199
    .line 200
    :cond_8
    iget-object v1, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->textSubLines:Ljava/util/List;

    .line 201
    .line 202
    invoke-interface {v1, v2, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    return-object v1
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
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->COLOR:Ljava/lang/Integer;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-ne p1, v0, :cond_2

    .line 8
    .line 9
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->colorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->removeAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    if-nez p2, :cond_1

    .line 17
    .line 18
    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->colorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 19
    .line 20
    goto/16 :goto_0

    .line 21
    .line 22
    :cond_1
    new-instance p1, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 23
    .line 24
    invoke-direct {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->colorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 28
    .line 29
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->colorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 35
    .line 36
    .line 37
    goto/16 :goto_0

    .line 38
    .line 39
    :cond_2
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->STROKE_COLOR:Ljava/lang/Integer;

    .line 40
    .line 41
    if-ne p1, v0, :cond_5

    .line 42
    .line 43
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeColorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 44
    .line 45
    if-eqz p1, :cond_3

    .line 46
    .line 47
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->removeAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 48
    .line 49
    .line 50
    :cond_3
    if-nez p2, :cond_4

    .line 51
    .line 52
    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeColorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 53
    .line 54
    goto/16 :goto_0

    .line 55
    .line 56
    :cond_4
    new-instance p1, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 57
    .line 58
    invoke-direct {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 59
    .line 60
    .line 61
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeColorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 62
    .line 63
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeColorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 67
    .line 68
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 69
    .line 70
    .line 71
    goto/16 :goto_0

    .line 72
    .line 73
    :cond_5
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->STROKE_WIDTH:Ljava/lang/Float;

    .line 74
    .line 75
    if-ne p1, v0, :cond_8

    .line 76
    .line 77
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 78
    .line 79
    if-eqz p1, :cond_6

    .line 80
    .line 81
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->removeAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 82
    .line 83
    .line 84
    :cond_6
    if-nez p2, :cond_7

    .line 85
    .line 86
    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 87
    .line 88
    goto/16 :goto_0

    .line 89
    .line 90
    :cond_7
    new-instance p1, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 91
    .line 92
    invoke-direct {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 93
    .line 94
    .line 95
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 96
    .line 97
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 101
    .line 102
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 103
    .line 104
    .line 105
    goto/16 :goto_0

    .line 106
    .line 107
    :cond_8
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->TEXT_TRACKING:Ljava/lang/Float;

    .line 108
    .line 109
    if-ne p1, v0, :cond_b

    .line 110
    .line 111
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 112
    .line 113
    if-eqz p1, :cond_9

    .line 114
    .line 115
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->removeAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 116
    .line 117
    .line 118
    :cond_9
    if-nez p2, :cond_a

    .line 119
    .line 120
    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_a
    new-instance p1, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 124
    .line 125
    invoke-direct {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 126
    .line 127
    .line 128
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 129
    .line 130
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 131
    .line 132
    .line 133
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 134
    .line 135
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_b
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->TEXT_SIZE:Ljava/lang/Float;

    .line 140
    .line 141
    if-ne p1, v0, :cond_e

    .line 142
    .line 143
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textSizeCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 144
    .line 145
    if-eqz p1, :cond_c

    .line 146
    .line 147
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->removeAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 148
    .line 149
    .line 150
    :cond_c
    if-nez p2, :cond_d

    .line 151
    .line 152
    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textSizeCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_d
    new-instance p1, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 156
    .line 157
    invoke-direct {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 158
    .line 159
    .line 160
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textSizeCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 161
    .line 162
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 163
    .line 164
    .line 165
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textSizeCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 166
    .line 167
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 168
    .line 169
    .line 170
    goto :goto_0

    .line 171
    :cond_e
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->TYPEFACE:Landroid/graphics/Typeface;

    .line 172
    .line 173
    if-ne p1, v0, :cond_11

    .line 174
    .line 175
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->typefaceCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 176
    .line 177
    if-eqz p1, :cond_f

    .line 178
    .line 179
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->removeAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 180
    .line 181
    .line 182
    :cond_f
    if-nez p2, :cond_10

    .line 183
    .line 184
    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->typefaceCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 185
    .line 186
    goto :goto_0

    .line 187
    :cond_10
    new-instance p1, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    .line 188
    .line 189
    invoke-direct {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 190
    .line 191
    .line 192
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->typefaceCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 193
    .line 194
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 195
    .line 196
    .line 197
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->typefaceCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 198
    .line 199
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 200
    .line 201
    .line 202
    goto :goto_0

    .line 203
    :cond_11
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->TEXT:Ljava/lang/CharSequence;

    .line 204
    .line 205
    if-ne p1, v0, :cond_12

    .line 206
    .line 207
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 208
    .line 209
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;->setStringValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 210
    .line 211
    .line 212
    :cond_12
    :goto_0
    return-void
.end method

.method public drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;ILcom/airbnb/lottie/utils/DropShadow;)V
    .locals 6
    .param p4    # Lcom/airbnb/lottie/utils/DropShadow;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p4, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    .line 2
    .line 3
    invoke-virtual {p4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p4

    .line 7
    move-object v1, p4

    .line 8
    check-cast v1, Lcom/airbnb/lottie/model/DocumentData;

    .line 9
    .line 10
    iget-object p4, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 11
    .line 12
    invoke-virtual {p4}, Lcom/airbnb/lottie/LottieComposition;->getFonts()Ljava/util/Map;

    .line 13
    .line 14
    .line 15
    move-result-object p4

    .line 16
    iget-object v0, v1, Lcom/airbnb/lottie/model/DocumentData;->fontName:Ljava/lang/String;

    .line 17
    .line 18
    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p4

    .line 22
    move-object v3, p4

    .line 23
    check-cast v3, Lcom/airbnb/lottie/model/Font;

    .line 24
    .line 25
    if-nez v3, :cond_0

    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 32
    .line 33
    .line 34
    const/4 p4, 0x0

    .line 35
    invoke-direct {p0, v1, p3, p4}, Lcom/airbnb/lottie/model/layer/TextLayer;->configurePaint(Lcom/airbnb/lottie/model/DocumentData;II)V

    .line 36
    .line 37
    .line 38
    iget-object p4, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 39
    .line 40
    invoke-virtual {p4}, Lcom/airbnb/lottie/LottieDrawable;->useTextGlyphs()Z

    .line 41
    .line 42
    .line 43
    move-result p4

    .line 44
    if-eqz p4, :cond_1

    .line 45
    .line 46
    move-object v0, p0

    .line 47
    move-object v2, p2

    .line 48
    move-object v4, p1

    .line 49
    move v5, p3

    .line 50
    invoke-direct/range {v0 .. v5}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawTextWithGlyphs(Lcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/Font;Landroid/graphics/Canvas;I)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    invoke-direct {p0, v1, v3, p1, p3}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawTextWithFont(Lcom/airbnb/lottie/model/DocumentData;Lcom/airbnb/lottie/model/Font;Landroid/graphics/Canvas;I)V

    .line 55
    .line 56
    .line 57
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 5
    .line 6
    invoke-virtual {p2}, Lcom/airbnb/lottie/LottieComposition;->getBounds()Landroid/graphics/Rect;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    int-to-float p2, p2

    .line 15
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 16
    .line 17
    invoke-virtual {p3}, Lcom/airbnb/lottie/LottieComposition;->getBounds()Landroid/graphics/Rect;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    .line 22
    .line 23
    .line 24
    move-result p3

    .line 25
    int-to-float p3, p3

    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-virtual {p1, v0, v0, p2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
