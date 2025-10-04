.class public abstract Lcom/airbnb/lottie/model/layer/BaseLayer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/animation/content/DrawingContent;
.implements Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;
.implements Lcom/airbnb/lottie/model/KeyPathElement;


# static fields
.field private static final CLIP_SAVE_FLAG:I = 0x2

.field private static final CLIP_TO_LAYER_SAVE_FLAG:I = 0x10

.field private static final MATRIX_SAVE_FLAG:I = 0x1

.field private static final SAVE_FLAGS:I = 0x13


# instance fields
.field private final animations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "**>;>;"
        }
    .end annotation
.end field

.field blurMaskFilter:Landroid/graphics/BlurMaskFilter;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field blurMaskFilterRadius:F

.field protected final boundsMatrix:Landroid/graphics/Matrix;

.field private final canvasBounds:Landroid/graphics/RectF;

.field private final canvasMatrix:Landroid/graphics/Matrix;

.field private final clearPaint:Landroid/graphics/Paint;

.field private final contentPaint:Landroid/graphics/Paint;

.field private final drawTraceName:Ljava/lang/String;

.field private final dstInPaint:Landroid/graphics/Paint;

.field private final dstOutPaint:Landroid/graphics/Paint;

.field private inOutAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final layerModel:Lcom/airbnb/lottie/model/layer/Layer;

.field final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field private mask:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final maskBoundsRect:Landroid/graphics/RectF;

.field private final matrix:Landroid/graphics/Matrix;

.field private final matteBoundsRect:Landroid/graphics/RectF;

.field private matteLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mattePaint:Landroid/graphics/Paint;

.field private outlineMasksAndMattes:Z

.field private outlineMasksAndMattesPaint:Landroid/graphics/Paint;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private parentLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private parentLayers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/layer/BaseLayer;",
            ">;"
        }
    .end annotation
.end field

.field private final path:Landroid/graphics/Path;

.field private final rect:Landroid/graphics/RectF;

.field solidWhitePaint:Lcom/airbnb/lottie/animation/LPaint;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final tempMaskBoundsRect:Landroid/graphics/RectF;

.field public final transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

.field private visible:Z


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V
    .locals 6

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
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/Matrix;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    .line 17
    .line 18
    new-instance v0, Landroid/graphics/Matrix;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->canvasMatrix:Landroid/graphics/Matrix;

    .line 24
    .line 25
    new-instance v0, Lcom/airbnb/lottie/animation/LPaint;

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/animation/LPaint;-><init>(I)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    .line 32
    .line 33
    new-instance v0, Lcom/airbnb/lottie/animation/LPaint;

    .line 34
    .line 35
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    .line 36
    .line 37
    invoke-direct {v0, v1, v2}, Lcom/airbnb/lottie/animation/LPaint;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->dstInPaint:Landroid/graphics/Paint;

    .line 41
    .line 42
    new-instance v0, Lcom/airbnb/lottie/animation/LPaint;

    .line 43
    .line 44
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    .line 45
    .line 46
    invoke-direct {v0, v1, v3}, Lcom/airbnb/lottie/animation/LPaint;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->dstOutPaint:Landroid/graphics/Paint;

    .line 50
    .line 51
    new-instance v0, Lcom/airbnb/lottie/animation/LPaint;

    .line 52
    .line 53
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/animation/LPaint;-><init>(I)V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->mattePaint:Landroid/graphics/Paint;

    .line 57
    .line 58
    new-instance v4, Lcom/airbnb/lottie/animation/LPaint;

    .line 59
    .line 60
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 61
    .line 62
    invoke-direct {v4, v5}, Lcom/airbnb/lottie/animation/LPaint;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 63
    .line 64
    .line 65
    iput-object v4, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->clearPaint:Landroid/graphics/Paint;

    .line 66
    .line 67
    new-instance v4, Landroid/graphics/RectF;

    .line 68
    .line 69
    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 70
    .line 71
    .line 72
    iput-object v4, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 73
    .line 74
    new-instance v4, Landroid/graphics/RectF;

    .line 75
    .line 76
    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 77
    .line 78
    .line 79
    iput-object v4, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->canvasBounds:Landroid/graphics/RectF;

    .line 80
    .line 81
    new-instance v4, Landroid/graphics/RectF;

    .line 82
    .line 83
    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 84
    .line 85
    .line 86
    iput-object v4, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    .line 87
    .line 88
    new-instance v4, Landroid/graphics/RectF;

    .line 89
    .line 90
    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 91
    .line 92
    .line 93
    iput-object v4, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteBoundsRect:Landroid/graphics/RectF;

    .line 94
    .line 95
    new-instance v4, Landroid/graphics/RectF;

    .line 96
    .line 97
    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 98
    .line 99
    .line 100
    iput-object v4, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    .line 101
    .line 102
    new-instance v4, Landroid/graphics/Matrix;

    .line 103
    .line 104
    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 105
    .line 106
    .line 107
    iput-object v4, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->boundsMatrix:Landroid/graphics/Matrix;

    .line 108
    .line 109
    new-instance v4, Ljava/util/ArrayList;

    .line 110
    .line 111
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .line 113
    .line 114
    iput-object v4, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->animations:Ljava/util/List;

    .line 115
    .line 116
    iput-boolean v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->visible:Z

    .line 117
    .line 118
    const/4 v1, 0x0

    .line 119
    iput v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->blurMaskFilterRadius:F

    .line 120
    .line 121
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 122
    .line 123
    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 124
    .line 125
    new-instance p1, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/Layer;->getName()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 138
    .line 139
    const/4 v4, 0x2

    .line 140
    new-array v4, v4, [J

    .line 141
    .line 142
    fill-array-data v4, :array_0

    .line 143
    .line 144
    .line 145
    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 146
    .line 147
    .line 148
    invoke-static {v1, p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->drawTraceName:Ljava/lang/String;

    .line 153
    .line 154
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/Layer;->getMatteType()Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    sget-object v1, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->INVERT:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    .line 159
    .line 160
    if-ne p1, v1, :cond_0

    .line 161
    .line 162
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    .line 163
    .line 164
    invoke-direct {p1, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 168
    .line 169
    .line 170
    goto :goto_0

    .line 171
    :cond_0
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    .line 172
    .line 173
    invoke-direct {p1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 177
    .line 178
    .line 179
    :goto_0
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/Layer;->getTransform()Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    .line 188
    .line 189
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->addListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/Layer;->getMasks()Ljava/util/List;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    if-eqz p1, :cond_2

    .line 197
    .line 198
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/Layer;->getMasks()Ljava/util/List;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 203
    .line 204
    .line 205
    move-result p1

    .line 206
    if-nez p1, :cond_2

    .line 207
    .line 208
    new-instance p1, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    .line 209
    .line 210
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/Layer;->getMasks()Ljava/util/List;

    .line 211
    .line 212
    .line 213
    move-result-object p2

    .line 214
    invoke-direct {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;-><init>(Ljava/util/List;)V

    .line 215
    .line 216
    .line 217
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    .line 218
    .line 219
    invoke-virtual {p1}, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->getMaskAnimations()Ljava/util/List;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 228
    .line 229
    .line 230
    move-result p2

    .line 231
    if-eqz p2, :cond_1

    .line 232
    .line 233
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object p2

    .line 237
    check-cast p2, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 238
    .line 239
    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 240
    .line 241
    .line 242
    goto :goto_1

    .line 243
    :cond_1
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    .line 244
    .line 245
    invoke-virtual {p1}, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->getOpacityAnimations()Ljava/util/List;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 254
    .line 255
    .line 256
    move-result p2

    .line 257
    if-eqz p2, :cond_2

    .line 258
    .line 259
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object p2

    .line 263
    check-cast p2, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 264
    .line 265
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 269
    .line 270
    .line 271
    goto :goto_2

    .line 272
    :cond_2
    invoke-direct {p0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->setupInOutAnimations()V

    .line 273
    .line 274
    .line 275
    return-void

    .line 276
    nop

    .line 277
    :array_0
    .array-data 8
        0x5e262086c69870edL    # 3.453755329914792E145
        0x3647e6ad8bf6fdc3L    # 3.270757281765406E-47
    .end array-data
.end method

.method private applyAddMask(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Matrix;",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "Lcom/airbnb/lottie/model/content/ShapeData;",
            "Landroid/graphics/Path;",
            ">;",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    check-cast p3, Landroid/graphics/Path;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    .line 8
    .line 9
    invoke-virtual {v0, p3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 10
    .line 11
    .line 12
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    .line 13
    .line 14
    invoke-virtual {p3, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 15
    .line 16
    .line 17
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    .line 18
    .line 19
    invoke-virtual {p4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p3

    .line 23
    check-cast p3, Ljava/lang/Integer;

    .line 24
    .line 25
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result p3

    .line 29
    int-to-float p3, p3

    .line 30
    const p4, 0x40233333    # 2.55f

    .line 31
    .line 32
    .line 33
    mul-float p3, p3, p4

    .line 34
    .line 35
    float-to-int p3, p3

    .line 36
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 37
    .line 38
    .line 39
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    .line 40
    .line 41
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    .line 42
    .line 43
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method private applyIntersectMask(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Matrix;",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "Lcom/airbnb/lottie/model/content/ShapeData;",
            "Landroid/graphics/Path;",
            ">;",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->dstInPaint:Landroid/graphics/Paint;

    .line 4
    .line 5
    invoke-static {p1, v0, v1}, Lcom/airbnb/lottie/utils/Utils;->saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p3

    .line 12
    check-cast p3, Landroid/graphics/Path;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    .line 15
    .line 16
    invoke-virtual {v0, p3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 17
    .line 18
    .line 19
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    .line 20
    .line 21
    invoke-virtual {p3, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 22
    .line 23
    .line 24
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    .line 25
    .line 26
    invoke-virtual {p4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p3

    .line 30
    check-cast p3, Ljava/lang/Integer;

    .line 31
    .line 32
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 33
    .line 34
    .line 35
    move-result p3

    .line 36
    int-to-float p3, p3

    .line 37
    const p4, 0x40233333    # 2.55f

    .line 38
    .line 39
    .line 40
    mul-float p3, p3, p4

    .line 41
    .line 42
    float-to-int p3, p3

    .line 43
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 44
    .line 45
    .line 46
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    .line 47
    .line 48
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    .line 49
    .line 50
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method private applyInvertedAddMask(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Matrix;",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "Lcom/airbnb/lottie/model/content/ShapeData;",
            "Landroid/graphics/Path;",
            ">;",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    .line 4
    .line 5
    invoke-static {p1, v0, v1}, Lcom/airbnb/lottie/utils/Utils;->saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    .line 11
    .line 12
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p3

    .line 19
    check-cast p3, Landroid/graphics/Path;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    .line 22
    .line 23
    invoke-virtual {v0, p3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 24
    .line 25
    .line 26
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    .line 27
    .line 28
    invoke-virtual {p3, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 29
    .line 30
    .line 31
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    .line 32
    .line 33
    invoke-virtual {p4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    check-cast p3, Ljava/lang/Integer;

    .line 38
    .line 39
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 40
    .line 41
    .line 42
    move-result p3

    .line 43
    int-to-float p3, p3

    .line 44
    const p4, 0x40233333    # 2.55f

    .line 45
    .line 46
    .line 47
    mul-float p3, p3, p4

    .line 48
    .line 49
    float-to-int p3, p3

    .line 50
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 51
    .line 52
    .line 53
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    .line 54
    .line 55
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->dstOutPaint:Landroid/graphics/Paint;

    .line 56
    .line 57
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method private applyInvertedIntersectMask(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Matrix;",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "Lcom/airbnb/lottie/model/content/ShapeData;",
            "Landroid/graphics/Path;",
            ">;",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->dstInPaint:Landroid/graphics/Paint;

    .line 4
    .line 5
    invoke-static {p1, v0, v1}, Lcom/airbnb/lottie/utils/Utils;->saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    .line 11
    .line 12
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->dstOutPaint:Landroid/graphics/Paint;

    .line 16
    .line 17
    invoke-virtual {p4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p4

    .line 21
    check-cast p4, Ljava/lang/Integer;

    .line 22
    .line 23
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result p4

    .line 27
    int-to-float p4, p4

    .line 28
    const v1, 0x40233333    # 2.55f

    .line 29
    .line 30
    .line 31
    mul-float p4, p4, v1

    .line 32
    .line 33
    float-to-int p4, p4

    .line 34
    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p3

    .line 41
    check-cast p3, Landroid/graphics/Path;

    .line 42
    .line 43
    iget-object p4, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    .line 44
    .line 45
    invoke-virtual {p4, p3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 46
    .line 47
    .line 48
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    .line 49
    .line 50
    invoke-virtual {p3, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 51
    .line 52
    .line 53
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    .line 54
    .line 55
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->dstOutPaint:Landroid/graphics/Paint;

    .line 56
    .line 57
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method private applyInvertedSubtractMask(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Matrix;",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "Lcom/airbnb/lottie/model/content/ShapeData;",
            "Landroid/graphics/Path;",
            ">;",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->dstOutPaint:Landroid/graphics/Paint;

    .line 4
    .line 5
    invoke-static {p1, v0, v1}, Lcom/airbnb/lottie/utils/Utils;->saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    .line 11
    .line 12
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->dstOutPaint:Landroid/graphics/Paint;

    .line 16
    .line 17
    invoke-virtual {p4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p4

    .line 21
    check-cast p4, Ljava/lang/Integer;

    .line 22
    .line 23
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result p4

    .line 27
    int-to-float p4, p4

    .line 28
    const v1, 0x40233333    # 2.55f

    .line 29
    .line 30
    .line 31
    mul-float p4, p4, v1

    .line 32
    .line 33
    float-to-int p4, p4

    .line 34
    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p3

    .line 41
    check-cast p3, Landroid/graphics/Path;

    .line 42
    .line 43
    iget-object p4, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    .line 44
    .line 45
    invoke-virtual {p4, p3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 46
    .line 47
    .line 48
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    .line 49
    .line 50
    invoke-virtual {p3, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 51
    .line 52
    .line 53
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    .line 54
    .line 55
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->dstOutPaint:Landroid/graphics/Paint;

    .line 56
    .line 57
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method private applyMasks(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x4

    .line 3
    const/4 v2, 0x3

    .line 4
    invoke-static {}, Lcom/airbnb/lottie/L;->isTraceEnabled()Z

    .line 5
    .line 6
    .line 7
    move-result v3

    .line 8
    if-eqz v3, :cond_0

    .line 9
    .line 10
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 11
    .line 12
    new-array v4, v2, [J

    .line 13
    .line 14
    fill-array-data v4, :array_0

    .line 15
    .line 16
    .line 17
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-static {v3}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 28
    .line 29
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->dstInPaint:Landroid/graphics/Paint;

    .line 30
    .line 31
    const/16 v5, 0x13

    .line 32
    .line 33
    invoke-static {p1, v3, v4, v5}, Lcom/airbnb/lottie/utils/Utils;->saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;I)V

    .line 34
    .line 35
    .line 36
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 37
    .line 38
    const/16 v4, 0x1c

    .line 39
    .line 40
    if-ge v3, v4, :cond_1

    .line 41
    .line 42
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->clearCanvas(Landroid/graphics/Canvas;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    invoke-static {}, Lcom/airbnb/lottie/L;->isTraceEnabled()Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_2

    .line 50
    .line 51
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 52
    .line 53
    new-array v4, v2, [J

    .line 54
    .line 55
    fill-array-data v4, :array_1

    .line 56
    .line 57
    .line 58
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-static {v3}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 66
    .line 67
    .line 68
    :cond_2
    const/4 v3, 0x0

    .line 69
    :goto_0
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    .line 70
    .line 71
    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->getMasks()Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    if-ge v3, v4, :cond_c

    .line 80
    .line 81
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    .line 82
    .line 83
    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->getMasks()Ljava/util/List;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    check-cast v4, Lcom/airbnb/lottie/model/content/Mask;

    .line 92
    .line 93
    iget-object v5, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    .line 94
    .line 95
    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->getMaskAnimations()Ljava/util/List;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    check-cast v5, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 104
    .line 105
    iget-object v6, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    .line 106
    .line 107
    invoke-virtual {v6}, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->getOpacityAnimations()Ljava/util/List;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    check-cast v6, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 116
    .line 117
    sget-object v7, Lcom/airbnb/lottie/model/layer/BaseLayer$1;->$SwitchMap$com$airbnb$lottie$model$content$Mask$MaskMode:[I

    .line 118
    .line 119
    invoke-virtual {v4}, Lcom/airbnb/lottie/model/content/Mask;->getMaskMode()Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    .line 120
    .line 121
    .line 122
    move-result-object v8

    .line 123
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    .line 124
    .line 125
    .line 126
    move-result v8

    .line 127
    aget v7, v7, v8

    .line 128
    .line 129
    const/16 v8, 0xff

    .line 130
    .line 131
    if-eq v7, v0, :cond_a

    .line 132
    .line 133
    const/4 v9, 0x2

    .line 134
    if-eq v7, v9, :cond_7

    .line 135
    .line 136
    if-eq v7, v2, :cond_5

    .line 137
    .line 138
    if-eq v7, v1, :cond_3

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_3
    invoke-virtual {v4}, Lcom/airbnb/lottie/model/content/Mask;->isInverted()Z

    .line 142
    .line 143
    .line 144
    move-result v4

    .line 145
    if-eqz v4, :cond_4

    .line 146
    .line 147
    invoke-direct {p0, p1, p2, v5, v6}, Lcom/airbnb/lottie/model/layer/BaseLayer;->applyInvertedAddMask(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 148
    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_4
    invoke-direct {p0, p1, p2, v5, v6}, Lcom/airbnb/lottie/model/layer/BaseLayer;->applyAddMask(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 152
    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_5
    invoke-virtual {v4}, Lcom/airbnb/lottie/model/content/Mask;->isInverted()Z

    .line 156
    .line 157
    .line 158
    move-result v4

    .line 159
    if-eqz v4, :cond_6

    .line 160
    .line 161
    invoke-direct {p0, p1, p2, v5, v6}, Lcom/airbnb/lottie/model/layer/BaseLayer;->applyInvertedIntersectMask(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 162
    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_6
    invoke-direct {p0, p1, p2, v5, v6}, Lcom/airbnb/lottie/model/layer/BaseLayer;->applyIntersectMask(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 166
    .line 167
    .line 168
    goto :goto_1

    .line 169
    :cond_7
    if-nez v3, :cond_8

    .line 170
    .line 171
    iget-object v7, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    .line 172
    .line 173
    const/high16 v9, -0x1000000

    .line 174
    .line 175
    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 176
    .line 177
    .line 178
    iget-object v7, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    .line 179
    .line 180
    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 181
    .line 182
    .line 183
    iget-object v7, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 184
    .line 185
    iget-object v8, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    .line 186
    .line 187
    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 188
    .line 189
    .line 190
    :cond_8
    invoke-virtual {v4}, Lcom/airbnb/lottie/model/content/Mask;->isInverted()Z

    .line 191
    .line 192
    .line 193
    move-result v4

    .line 194
    if-eqz v4, :cond_9

    .line 195
    .line 196
    invoke-direct {p0, p1, p2, v5, v6}, Lcom/airbnb/lottie/model/layer/BaseLayer;->applyInvertedSubtractMask(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 197
    .line 198
    .line 199
    goto :goto_1

    .line 200
    :cond_9
    invoke-direct {p0, p1, p2, v5}, Lcom/airbnb/lottie/model/layer/BaseLayer;->applySubtractMask(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 201
    .line 202
    .line 203
    goto :goto_1

    .line 204
    :cond_a
    invoke-direct {p0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->areAllMasksNone()Z

    .line 205
    .line 206
    .line 207
    move-result v4

    .line 208
    if-eqz v4, :cond_b

    .line 209
    .line 210
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    .line 211
    .line 212
    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 213
    .line 214
    .line 215
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 216
    .line 217
    iget-object v5, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    .line 218
    .line 219
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 220
    .line 221
    .line 222
    :cond_b
    :goto_1
    add-int/2addr v3, v0

    .line 223
    goto/16 :goto_0

    .line 224
    .line 225
    :cond_c
    invoke-static {}, Lcom/airbnb/lottie/L;->isTraceEnabled()Z

    .line 226
    .line 227
    .line 228
    move-result p2

    .line 229
    if-eqz p2, :cond_d

    .line 230
    .line 231
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 232
    .line 233
    new-array v0, v1, [J

    .line 234
    .line 235
    fill-array-data v0, :array_2

    .line 236
    .line 237
    .line 238
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object p2

    .line 245
    invoke-static {p2}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    :cond_d
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 249
    .line 250
    .line 251
    invoke-static {}, Lcom/airbnb/lottie/L;->isTraceEnabled()Z

    .line 252
    .line 253
    .line 254
    move-result p1

    .line 255
    if-eqz p1, :cond_e

    .line 256
    .line 257
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 258
    .line 259
    new-array p2, v1, [J

    .line 260
    .line 261
    fill-array-data p2, :array_3

    .line 262
    .line 263
    .line 264
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    invoke-static {p1}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 272
    .line 273
    .line 274
    :cond_e
    return-void

    .line 275
    :array_0
    .array-data 8
        0x5e582d68d1599e5bL    # 3.0190281188214195E146
        -0x18a8bc86436ab63eL    # -6.478191250006467E189
        0x57c38ab9fca2fcc3L    # 6.015547515636212E114
    .end array-data

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
    .line 288
    .line 289
    .line 290
    .line 291
    :array_1
    .array-data 8
        -0x37d151ba3f04e01dL    # -5.2200594307483747E39
        0x55ecae206c96284eL    # 8.222244788096853E105
        -0x608115b33aca5eaL    # -3.393896981218982E279
    .end array-data

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
    :array_2
    .array-data 8
        -0x5d4b81653995f5a5L
        0x717f1c014a9c15b2L    # 5.064401682053822E238
        -0x6f3ba33d7de25227L    # -6.715232271704728E-228
        -0x449a7b7f0c4ccbbcL    # -1.4239148375546874E-22
    .end array-data

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
    .line 324
    .line 325
    .line 326
    .line 327
    :array_3
    .array-data 8
        -0x4c13fa918fae419fL    # -1.3950116626666082E-58
        0x6b8935bab9d1788bL    # 1.0359952912771297E210
        0x5f7b6868c4db7c67L    # 8.971659434594136E151
        -0x141c5480b3e716f5L    # -5.173320291535583E211
    .end array-data
.end method

.method private applySubtractMask(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Matrix;",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "Lcom/airbnb/lottie/model/content/ShapeData;",
            "Landroid/graphics/Path;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    check-cast p3, Landroid/graphics/Path;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    .line 8
    .line 9
    invoke-virtual {v0, p3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 10
    .line 11
    .line 12
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    .line 13
    .line 14
    invoke-virtual {p3, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 15
    .line 16
    .line 17
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    .line 18
    .line 19
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->dstOutPaint:Landroid/graphics/Paint;

    .line 20
    .line 21
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private areAllMasksNone()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->getMaskAnimations()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->getMasks()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-ge v0, v2, :cond_2

    .line 27
    .line 28
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    .line 29
    .line 30
    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->getMasks()Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Lcom/airbnb/lottie/model/content/Mask;

    .line 39
    .line 40
    invoke-virtual {v2}, Lcom/airbnb/lottie/model/content/Mask;->getMaskMode()Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    sget-object v3, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MASK_MODE_NONE:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    .line 45
    .line 46
    if-eq v2, v3, :cond_1

    .line 47
    .line 48
    return v1

    .line 49
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    const/4 v0, 0x1

    .line 53
    return v0
.end method

.method private buildParentLayerListIfNeeded()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 25
    .line 26
    :goto_0
    if-eqz v0, :cond_2

    .line 27
    .line 28
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    .line 29
    .line 30
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    iget-object v0, v0, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    return-void
.end method

.method private clearCanvas(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    const/4 v0, 0x3

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
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 26
    .line 27
    iget v2, v1, Landroid/graphics/RectF;->left:F

    .line 28
    .line 29
    const/high16 v3, 0x3f800000    # 1.0f

    .line 30
    .line 31
    sub-float v5, v2, v3

    .line 32
    .line 33
    iget v2, v1, Landroid/graphics/RectF;->top:F

    .line 34
    .line 35
    sub-float v6, v2, v3

    .line 36
    .line 37
    iget v2, v1, Landroid/graphics/RectF;->right:F

    .line 38
    .line 39
    add-float v7, v2, v3

    .line 40
    .line 41
    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    .line 42
    .line 43
    add-float v8, v1, v3

    .line 44
    .line 45
    iget-object v9, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->clearPaint:Landroid/graphics/Paint;

    .line 46
    .line 47
    move-object v4, p1

    .line 48
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 49
    .line 50
    .line 51
    invoke-static {}, Lcom/airbnb/lottie/L;->isTraceEnabled()Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_1

    .line 56
    .line 57
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 58
    .line 59
    new-array v0, v0, [J

    .line 60
    .line 61
    fill-array-data v0, :array_1

    .line 62
    .line 63
    .line 64
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-static {p1}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 72
    .line 73
    .line 74
    :cond_1
    return-void

    .line 75
    :array_0
    .array-data 8
        -0x484e45066915fe2dL    # -2.035346764697056E-40
        0x5c48653f4eab821cL    # 3.546318418903564E136
        0x323da769e9749384L    # 1.099926502228886E-66
    .end array-data

    .line 76
    .line 77
    .line 78
    :array_1
    .array-data 8
        -0x63936d3d30a2aca0L    # -9.242142460380333E-172
        0x20de7c3cd451b14fL    # 2.328266531116978E-150
        0x1022e87262d6da98L    # 6.089460563133512E-231
    .end array-data
.end method

.method public static forModel(Lcom/airbnb/lottie/model/layer/CompositionLayer;Lcom/airbnb/lottie/model/layer/Layer;Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/layer/BaseLayer;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/airbnb/lottie/model/layer/BaseLayer$1;->$SwitchMap$com$airbnb$lottie$model$layer$Layer$LayerType:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/layer/Layer;->getLayerType()Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    aget v0, v0, v1

    .line 12
    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    new-instance p0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 22
    .line 23
    const/4 p3, 0x4

    .line 24
    new-array p3, p3, [J

    .line 25
    .line 26
    fill-array-data p3, :array_0

    .line 27
    .line 28
    .line 29
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/layer/Layer;->getLayerType()Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-static {p0}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const/4 p0, 0x0

    .line 54
    return-object p0

    .line 55
    :pswitch_0
    new-instance p0, Lcom/airbnb/lottie/model/layer/TextLayer;

    .line 56
    .line 57
    invoke-direct {p0, p2, p1}, Lcom/airbnb/lottie/model/layer/TextLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V

    .line 58
    .line 59
    .line 60
    return-object p0

    .line 61
    :pswitch_1
    new-instance p0, Lcom/airbnb/lottie/model/layer/NullLayer;

    .line 62
    .line 63
    invoke-direct {p0, p2, p1}, Lcom/airbnb/lottie/model/layer/NullLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V

    .line 64
    .line 65
    .line 66
    return-object p0

    .line 67
    :pswitch_2
    new-instance p0, Lcom/airbnb/lottie/model/layer/ImageLayer;

    .line 68
    .line 69
    invoke-direct {p0, p2, p1}, Lcom/airbnb/lottie/model/layer/ImageLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V

    .line 70
    .line 71
    .line 72
    return-object p0

    .line 73
    :pswitch_3
    new-instance p0, Lcom/airbnb/lottie/model/layer/SolidLayer;

    .line 74
    .line 75
    invoke-direct {p0, p2, p1}, Lcom/airbnb/lottie/model/layer/SolidLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V

    .line 76
    .line 77
    .line 78
    return-object p0

    .line 79
    :pswitch_4
    new-instance p0, Lcom/airbnb/lottie/model/layer/CompositionLayer;

    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/layer/Layer;->getRefId()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {p3, v0}, Lcom/airbnb/lottie/LottieComposition;->getPrecomps(Ljava/lang/String;)Ljava/util/List;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-direct {p0, p2, p1, v0, p3}, Lcom/airbnb/lottie/model/layer/CompositionLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;Ljava/util/List;Lcom/airbnb/lottie/LottieComposition;)V

    .line 90
    .line 91
    .line 92
    return-object p0

    .line 93
    :pswitch_5
    new-instance v0, Lcom/airbnb/lottie/model/layer/ShapeLayer;

    .line 94
    .line 95
    invoke-direct {v0, p2, p1, p0, p3}, Lcom/airbnb/lottie/model/layer/ShapeLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;Lcom/airbnb/lottie/model/layer/CompositionLayer;Lcom/airbnb/lottie/LottieComposition;)V

    .line 96
    .line 97
    .line 98
    return-object v0

    .line 99
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
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
    :array_0
    .array-data 8
        -0x38f62d22a2d1e4a8L    # -1.6760533217737353E34
        -0x127e24ce4168e542L    # -3.151639783180648E219
        0x41d0ec6afc25d6a6L    # 1.135717360591226E9
        -0x225755692eaefed5L    # -1.5039489339322207E143
    .end array-data
.end method

.method private intersectBoundsWithMask(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->hasMasksOnThisLayer()Z

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
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->getMasks()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v2, 0x0

    .line 25
    const/4 v3, 0x0

    .line 26
    :goto_0
    if-ge v3, v0, :cond_6

    .line 27
    .line 28
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    .line 29
    .line 30
    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->getMasks()Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    check-cast v4, Lcom/airbnb/lottie/model/content/Mask;

    .line 39
    .line 40
    iget-object v5, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    .line 41
    .line 42
    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->getMaskAnimations()Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    check-cast v5, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 51
    .line 52
    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    check-cast v5, Landroid/graphics/Path;

    .line 57
    .line 58
    if-nez v5, :cond_1

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_1
    iget-object v6, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    .line 62
    .line 63
    invoke-virtual {v6, v5}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 64
    .line 65
    .line 66
    iget-object v5, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    .line 67
    .line 68
    invoke-virtual {v5, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 69
    .line 70
    .line 71
    sget-object v5, Lcom/airbnb/lottie/model/layer/BaseLayer$1;->$SwitchMap$com$airbnb$lottie$model$content$Mask$MaskMode:[I

    .line 72
    .line 73
    invoke-virtual {v4}, Lcom/airbnb/lottie/model/content/Mask;->getMaskMode()Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    aget v5, v5, v6

    .line 82
    .line 83
    const/4 v6, 0x1

    .line 84
    if-eq v5, v6, :cond_5

    .line 85
    .line 86
    const/4 v6, 0x2

    .line 87
    if-eq v5, v6, :cond_5

    .line 88
    .line 89
    const/4 v6, 0x3

    .line 90
    if-eq v5, v6, :cond_2

    .line 91
    .line 92
    const/4 v6, 0x4

    .line 93
    if-eq v5, v6, :cond_2

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_2
    invoke-virtual {v4}, Lcom/airbnb/lottie/model/content/Mask;->isInverted()Z

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    if-eqz v4, :cond_3

    .line 101
    .line 102
    return-void

    .line 103
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->path:Landroid/graphics/Path;

    .line 104
    .line 105
    iget-object v5, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    .line 106
    .line 107
    invoke-virtual {v4, v5, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 108
    .line 109
    .line 110
    if-nez v3, :cond_4

    .line 111
    .line 112
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    .line 113
    .line 114
    iget-object v5, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    .line 115
    .line 116
    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_4
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    .line 121
    .line 122
    iget v5, v4, Landroid/graphics/RectF;->left:F

    .line 123
    .line 124
    iget-object v6, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    .line 125
    .line 126
    iget v6, v6, Landroid/graphics/RectF;->left:F

    .line 127
    .line 128
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    .line 129
    .line 130
    .line 131
    move-result v5

    .line 132
    iget-object v6, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    .line 133
    .line 134
    iget v6, v6, Landroid/graphics/RectF;->top:F

    .line 135
    .line 136
    iget-object v7, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    .line 137
    .line 138
    iget v7, v7, Landroid/graphics/RectF;->top:F

    .line 139
    .line 140
    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    .line 141
    .line 142
    .line 143
    move-result v6

    .line 144
    iget-object v7, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    .line 145
    .line 146
    iget v7, v7, Landroid/graphics/RectF;->right:F

    .line 147
    .line 148
    iget-object v8, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    .line 149
    .line 150
    iget v8, v8, Landroid/graphics/RectF;->right:F

    .line 151
    .line 152
    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    .line 153
    .line 154
    .line 155
    move-result v7

    .line 156
    iget-object v8, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    .line 157
    .line 158
    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    .line 159
    .line 160
    iget-object v9, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    .line 161
    .line 162
    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    .line 163
    .line 164
    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    .line 165
    .line 166
    .line 167
    move-result v8

    .line 168
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 169
    .line 170
    .line 171
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 172
    .line 173
    goto/16 :goto_0

    .line 174
    .line 175
    :cond_5
    return-void

    .line 176
    :cond_6
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    .line 177
    .line 178
    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    .line 179
    .line 180
    .line 181
    move-result p2

    .line 182
    if-nez p2, :cond_7

    .line 183
    .line 184
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 185
    .line 186
    .line 187
    :cond_7
    return-void
.end method

.method private intersectBoundsWithMatte(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->hasMatteOnThisLayer()Z

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
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/Layer;->getMatteType()Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sget-object v1, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->INVERT:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    .line 15
    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteBoundsRect:Landroid/graphics/RectF;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 26
    .line 27
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteBoundsRect:Landroid/graphics/RectF;

    .line 28
    .line 29
    const/4 v3, 0x1

    .line 30
    invoke-virtual {v0, v2, p2, v3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 31
    .line 32
    .line 33
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteBoundsRect:Landroid/graphics/RectF;

    .line 34
    .line 35
    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    if-nez p2, :cond_2

    .line 40
    .line 41
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 42
    .line 43
    .line 44
    :cond_2
    return-void
.end method

.method private invalidateSelf()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$setupInOutAnimations$0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->inOutAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;->getFloatValue()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/high16 v1, 0x3f800000    # 1.0f

    .line 8
    .line 9
    cmpl-float v0, v0, v1

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    invoke-direct {p0, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->setVisible(Z)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private recordRenderTime(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->getComposition()Lcom/airbnb/lottie/LottieComposition;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getPerformanceTracker()Lcom/airbnb/lottie/PerformanceTracker;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/airbnb/lottie/model/layer/Layer;->getName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1, p1}, Lcom/airbnb/lottie/PerformanceTracker;->recordRenderTime(Ljava/lang/String;F)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private setVisible(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->visible:Z

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->visible:Z

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->invalidateSelf()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private setupInOutAnimations()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/Layer;->getInOutKeyframes()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    new-instance v0, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/airbnb/lottie/model/layer/Layer;->getInOutKeyframes()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-direct {v0, v2}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;-><init>(Ljava/util/List;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->inOutAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setIsDiscrete()V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->inOutAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 31
    .line 32
    new-instance v2, L돠땵땰듰돸뒋딌뒛땐땭됩돷두딨딠둠뒈딞뒼듽둔땃둬뒉땯됫돤듻땦딤듽디땥땩딞딅뒤땀딠땔땄딻딅듔득듌땥됨딸땍딄둑뒾둬땠둑땃돨딃됨딝딟땃땡뎸된돝뎻땐됩딟듻땨딞돨됫뒙땮딅땲뒼둬뒨딁뒉돛땁돰듔뒾땜돸딝뎡둥땩뒀듨딝듔딠땦돨땄땹돷딃돴뒛둔뎹딀땄땬땲둠뒨땻돸될돝땐둣뒹돼딎딽뒻뒀돼;

    .line 33
    .line 34
    invoke-direct {v2, p0}, L돠땵땰듰돸뒋딌뒛땐땭됩돷두딨딠둠뒈딞뒼듽둔땃둬뒉땯됫돤듻땦딤듽디땥땩딞딅뒤땀딠땔땄딻딅듔득듌땥됨딸땍딄둑뒾둬땠둑땃돨딃됨딝딟땃땡뎸된돝뎻땐됩딟듻땨딞돨됫뒙땮딅땲뒼둬뒨딁뒉돛땁돰듔뒾땜돸딝뎡둥땩뒀듨딝듔딠땦돨땄땹돷딃돴뒛둔뎹딀땄땬땲둠뒨땻돸될돝땐둣뒹돼딎딽뒻뒀돼;-><init>(Lcom/airbnb/lottie/model/layer/BaseLayer;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->inOutAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Ljava/lang/Float;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    const/high16 v2, 0x3f800000    # 1.0f

    .line 53
    .line 54
    cmpl-float v0, v0, v2

    .line 55
    .line 56
    if-nez v0, :cond_0

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    const/4 v1, 0x0

    .line 60
    :goto_0
    invoke-direct {p0, v1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->setVisible(Z)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->inOutAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 64
    .line 65
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    invoke-direct {p0, v1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->setVisible(Z)V

    .line 70
    .line 71
    .line 72
    :goto_1
    return-void
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lcom/airbnb/lottie/model/layer/BaseLayer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->lambda$setupInOutAnimations$0()V

    return-void
.end method


# virtual methods
.method public addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V
    .locals 1
    .param p1    # Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "**>;)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->animations:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public addValueCallback(Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V
    .locals 1
    .param p2    # Lcom/airbnb/lottie/value/LottieValueCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

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
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->applyValueCallback(Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;ILcom/airbnb/lottie/utils/DropShadow;)V
    .locals 11
    .param p4    # Lcom/airbnb/lottie/utils/DropShadow;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x4

    .line 3
    const/4 v2, 0x3

    .line 4
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->drawTraceName:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {v3}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-boolean v3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->visible:Z

    .line 10
    .line 11
    if-eqz v3, :cond_1a

    .line 12
    .line 13
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 14
    .line 15
    invoke-virtual {v3}, Lcom/airbnb/lottie/model/layer/Layer;->isHidden()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    goto/16 :goto_3

    .line 22
    .line 23
    :cond_0
    invoke-direct {p0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->buildParentLayerListIfNeeded()V

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lcom/airbnb/lottie/L;->isTraceEnabled()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 33
    .line 34
    new-array v4, v1, [J

    .line 35
    .line 36
    fill-array-data v4, :array_0

    .line 37
    .line 38
    .line 39
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-static {v3}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    .line 50
    .line 51
    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 52
    .line 53
    .line 54
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    .line 55
    .line 56
    invoke-virtual {v3, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 57
    .line 58
    .line 59
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    .line 60
    .line 61
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    add-int/lit8 v3, v3, -0x1

    .line 66
    .line 67
    :goto_0
    if-ltz v3, :cond_2

    .line 68
    .line 69
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    .line 70
    .line 71
    iget-object v5, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    .line 72
    .line 73
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    check-cast v5, Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 78
    .line 79
    iget-object v5, v5, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    .line 80
    .line 81
    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 86
    .line 87
    .line 88
    add-int/2addr v3, v0

    .line 89
    goto :goto_0

    .line 90
    :cond_2
    invoke-static {}, Lcom/airbnb/lottie/L;->isTraceEnabled()Z

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    if-eqz v3, :cond_3

    .line 95
    .line 96
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 97
    .line 98
    new-array v4, v1, [J

    .line 99
    .line 100
    fill-array-data v4, :array_1

    .line 101
    .line 102
    .line 103
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-static {v3}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 111
    .line 112
    .line 113
    :cond_3
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    .line 114
    .line 115
    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getOpacity()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    if-eqz v3, :cond_4

    .line 120
    .line 121
    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    check-cast v3, Ljava/lang/Integer;

    .line 126
    .line 127
    if-eqz v3, :cond_4

    .line 128
    .line 129
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    goto :goto_1

    .line 134
    :cond_4
    const/16 v3, 0x64

    .line 135
    .line 136
    :goto_1
    int-to-float p3, p3

    .line 137
    const/high16 v4, 0x437f0000    # 255.0f

    .line 138
    .line 139
    div-float/2addr p3, v4

    .line 140
    int-to-float v3, v3

    .line 141
    mul-float p3, p3, v3

    .line 142
    .line 143
    const/high16 v3, 0x42c80000    # 100.0f

    .line 144
    .line 145
    div-float/2addr p3, v3

    .line 146
    mul-float p3, p3, v4

    .line 147
    .line 148
    float-to-int p3, p3

    .line 149
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->hasMatteOnThisLayer()Z

    .line 150
    .line 151
    .line 152
    move-result v3

    .line 153
    if-nez v3, :cond_7

    .line 154
    .line 155
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->hasMasksOnThisLayer()Z

    .line 156
    .line 157
    .line 158
    move-result v3

    .line 159
    if-nez v3, :cond_7

    .line 160
    .line 161
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getBlendMode()Lcom/airbnb/lottie/model/content/LBlendMode;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    sget-object v4, Lcom/airbnb/lottie/model/content/LBlendMode;->NORMAL:Lcom/airbnb/lottie/model/content/LBlendMode;

    .line 166
    .line 167
    if-ne v3, v4, :cond_7

    .line 168
    .line 169
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    .line 170
    .line 171
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    .line 172
    .line 173
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 178
    .line 179
    .line 180
    invoke-static {}, Lcom/airbnb/lottie/L;->isTraceEnabled()Z

    .line 181
    .line 182
    .line 183
    move-result p2

    .line 184
    if-eqz p2, :cond_5

    .line 185
    .line 186
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 187
    .line 188
    new-array v0, v2, [J

    .line 189
    .line 190
    fill-array-data v0, :array_2

    .line 191
    .line 192
    .line 193
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p2

    .line 200
    invoke-static {p2}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    :cond_5
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    .line 204
    .line 205
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/airbnb/lottie/model/layer/BaseLayer;->drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;ILcom/airbnb/lottie/utils/DropShadow;)V

    .line 206
    .line 207
    .line 208
    invoke-static {}, Lcom/airbnb/lottie/L;->isTraceEnabled()Z

    .line 209
    .line 210
    .line 211
    move-result p1

    .line 212
    if-eqz p1, :cond_6

    .line 213
    .line 214
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 215
    .line 216
    new-array p2, v2, [J

    .line 217
    .line 218
    fill-array-data p2, :array_3

    .line 219
    .line 220
    .line 221
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    invoke-static {p1}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 229
    .line 230
    .line 231
    :cond_6
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->drawTraceName:Ljava/lang/String;

    .line 232
    .line 233
    invoke-static {p1}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 234
    .line 235
    .line 236
    move-result p1

    .line 237
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->recordRenderTime(F)V

    .line 238
    .line 239
    .line 240
    return-void

    .line 241
    :cond_7
    invoke-static {}, Lcom/airbnb/lottie/L;->isTraceEnabled()Z

    .line 242
    .line 243
    .line 244
    move-result v3

    .line 245
    if-eqz v3, :cond_8

    .line 246
    .line 247
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 248
    .line 249
    new-array v4, v1, [J

    .line 250
    .line 251
    fill-array-data v4, :array_4

    .line 252
    .line 253
    .line 254
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v3

    .line 261
    invoke-static {v3}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    :cond_8
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 265
    .line 266
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    .line 267
    .line 268
    const/4 v5, 0x0

    .line 269
    invoke-virtual {p0, v3, v4, v5}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 270
    .line 271
    .line 272
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 273
    .line 274
    invoke-direct {p0, v3, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->intersectBoundsWithMatte(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 275
    .line 276
    .line 277
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    .line 278
    .line 279
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    .line 280
    .line 281
    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    .line 282
    .line 283
    .line 284
    move-result-object v4

    .line 285
    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 286
    .line 287
    .line 288
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 289
    .line 290
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    .line 291
    .line 292
    invoke-direct {p0, v3, v4}, Lcom/airbnb/lottie/model/layer/BaseLayer;->intersectBoundsWithMask(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 293
    .line 294
    .line 295
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->canvasBounds:Landroid/graphics/RectF;

    .line 296
    .line 297
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    .line 298
    .line 299
    .line 300
    move-result v4

    .line 301
    int-to-float v4, v4

    .line 302
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    .line 303
    .line 304
    .line 305
    move-result v5

    .line 306
    int-to-float v5, v5

    .line 307
    const/4 v6, 0x0

    .line 308
    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 309
    .line 310
    .line 311
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->canvasMatrix:Landroid/graphics/Matrix;

    .line 312
    .line 313
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    .line 314
    .line 315
    .line 316
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->canvasMatrix:Landroid/graphics/Matrix;

    .line 317
    .line 318
    invoke-virtual {v3}, Landroid/graphics/Matrix;->isIdentity()Z

    .line 319
    .line 320
    .line 321
    move-result v3

    .line 322
    if-nez v3, :cond_9

    .line 323
    .line 324
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->canvasMatrix:Landroid/graphics/Matrix;

    .line 325
    .line 326
    invoke-virtual {v3, v3}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 327
    .line 328
    .line 329
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->canvasMatrix:Landroid/graphics/Matrix;

    .line 330
    .line 331
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->canvasBounds:Landroid/graphics/RectF;

    .line 332
    .line 333
    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 334
    .line 335
    .line 336
    :cond_9
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 337
    .line 338
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->canvasBounds:Landroid/graphics/RectF;

    .line 339
    .line 340
    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    .line 341
    .line 342
    .line 343
    move-result v3

    .line 344
    if-nez v3, :cond_a

    .line 345
    .line 346
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 347
    .line 348
    invoke-virtual {v3, v6, v6, v6, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 349
    .line 350
    .line 351
    :cond_a
    invoke-static {}, Lcom/airbnb/lottie/L;->isTraceEnabled()Z

    .line 352
    .line 353
    .line 354
    move-result v3

    .line 355
    if-eqz v3, :cond_b

    .line 356
    .line 357
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 358
    .line 359
    new-array v4, v1, [J

    .line 360
    .line 361
    fill-array-data v4, :array_5

    .line 362
    .line 363
    .line 364
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v3

    .line 371
    invoke-static {v3}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 372
    .line 373
    .line 374
    :cond_b
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 375
    .line 376
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    .line 377
    .line 378
    .line 379
    move-result v3

    .line 380
    const/high16 v4, 0x3f800000    # 1.0f

    .line 381
    .line 382
    cmpl-float v3, v3, v4

    .line 383
    .line 384
    if-ltz v3, :cond_18

    .line 385
    .line 386
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 387
    .line 388
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    .line 389
    .line 390
    .line 391
    move-result v3

    .line 392
    cmpl-float v3, v3, v4

    .line 393
    .line 394
    if-ltz v3, :cond_18

    .line 395
    .line 396
    invoke-static {}, Lcom/airbnb/lottie/L;->isTraceEnabled()Z

    .line 397
    .line 398
    .line 399
    move-result v3

    .line 400
    if-eqz v3, :cond_c

    .line 401
    .line 402
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 403
    .line 404
    new-array v5, v2, [J

    .line 405
    .line 406
    fill-array-data v5, :array_6

    .line 407
    .line 408
    .line 409
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 410
    .line 411
    .line 412
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v3

    .line 416
    invoke-static {v3}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 417
    .line 418
    .line 419
    :cond_c
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    .line 420
    .line 421
    const/16 v5, 0xff

    .line 422
    .line 423
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 424
    .line 425
    .line 426
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    .line 427
    .line 428
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getBlendMode()Lcom/airbnb/lottie/model/content/LBlendMode;

    .line 429
    .line 430
    .line 431
    move-result-object v5

    .line 432
    invoke-virtual {v5}, Lcom/airbnb/lottie/model/content/LBlendMode;->toNativeBlendMode()Landroidx/core/graphics/BlendModeCompat;

    .line 433
    .line 434
    .line 435
    move-result-object v5

    .line 436
    invoke-static {v3, v5}, Landroidx/core/graphics/PaintCompat;->setBlendMode(Landroid/graphics/Paint;Landroidx/core/graphics/BlendModeCompat;)Z

    .line 437
    .line 438
    .line 439
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 440
    .line 441
    iget-object v5, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    .line 442
    .line 443
    invoke-static {p1, v3, v5}, Lcom/airbnb/lottie/utils/Utils;->saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 444
    .line 445
    .line 446
    invoke-static {}, Lcom/airbnb/lottie/L;->isTraceEnabled()Z

    .line 447
    .line 448
    .line 449
    move-result v3

    .line 450
    if-eqz v3, :cond_d

    .line 451
    .line 452
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 453
    .line 454
    new-array v5, v2, [J

    .line 455
    .line 456
    fill-array-data v5, :array_7

    .line 457
    .line 458
    .line 459
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 460
    .line 461
    .line 462
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v3

    .line 466
    invoke-static {v3}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 467
    .line 468
    .line 469
    :cond_d
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getBlendMode()Lcom/airbnb/lottie/model/content/LBlendMode;

    .line 470
    .line 471
    .line 472
    move-result-object v3

    .line 473
    sget-object v5, Lcom/airbnb/lottie/model/content/LBlendMode;->MULTIPLY:Lcom/airbnb/lottie/model/content/LBlendMode;

    .line 474
    .line 475
    if-eq v3, v5, :cond_e

    .line 476
    .line 477
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->clearCanvas(Landroid/graphics/Canvas;)V

    .line 478
    .line 479
    .line 480
    goto :goto_2

    .line 481
    :cond_e
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->solidWhitePaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 482
    .line 483
    if-nez v3, :cond_f

    .line 484
    .line 485
    new-instance v3, Lcom/airbnb/lottie/animation/LPaint;

    .line 486
    .line 487
    invoke-direct {v3}, Lcom/airbnb/lottie/animation/LPaint;-><init>()V

    .line 488
    .line 489
    .line 490
    iput-object v3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->solidWhitePaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 491
    .line 492
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 493
    .line 494
    .line 495
    :cond_f
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 496
    .line 497
    iget v3, v0, Landroid/graphics/RectF;->left:F

    .line 498
    .line 499
    sub-float v6, v3, v4

    .line 500
    .line 501
    iget v3, v0, Landroid/graphics/RectF;->top:F

    .line 502
    .line 503
    sub-float v7, v3, v4

    .line 504
    .line 505
    iget v3, v0, Landroid/graphics/RectF;->right:F

    .line 506
    .line 507
    add-float v8, v3, v4

    .line 508
    .line 509
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    .line 510
    .line 511
    add-float v9, v0, v4

    .line 512
    .line 513
    iget-object v10, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->solidWhitePaint:Lcom/airbnb/lottie/animation/LPaint;

    .line 514
    .line 515
    move-object v5, p1

    .line 516
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 517
    .line 518
    .line 519
    :goto_2
    invoke-static {}, Lcom/airbnb/lottie/L;->isTraceEnabled()Z

    .line 520
    .line 521
    .line 522
    move-result v0

    .line 523
    if-eqz v0, :cond_10

    .line 524
    .line 525
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 526
    .line 527
    new-array v3, v2, [J

    .line 528
    .line 529
    fill-array-data v3, :array_8

    .line 530
    .line 531
    .line 532
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 533
    .line 534
    .line 535
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 536
    .line 537
    .line 538
    move-result-object v0

    .line 539
    invoke-static {v0}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 540
    .line 541
    .line 542
    :cond_10
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    .line 543
    .line 544
    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/airbnb/lottie/model/layer/BaseLayer;->drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;ILcom/airbnb/lottie/utils/DropShadow;)V

    .line 545
    .line 546
    .line 547
    invoke-static {}, Lcom/airbnb/lottie/L;->isTraceEnabled()Z

    .line 548
    .line 549
    .line 550
    move-result p4

    .line 551
    if-eqz p4, :cond_11

    .line 552
    .line 553
    new-instance p4, Lcom/panda912/muddy/ObfuscatedString;

    .line 554
    .line 555
    new-array v0, v2, [J

    .line 556
    .line 557
    fill-array-data v0, :array_9

    .line 558
    .line 559
    .line 560
    invoke-direct {p4, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 561
    .line 562
    .line 563
    invoke-virtual {p4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 564
    .line 565
    .line 566
    move-result-object p4

    .line 567
    invoke-static {p4}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 568
    .line 569
    .line 570
    :cond_11
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->hasMasksOnThisLayer()Z

    .line 571
    .line 572
    .line 573
    move-result p4

    .line 574
    if-eqz p4, :cond_12

    .line 575
    .line 576
    iget-object p4, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matrix:Landroid/graphics/Matrix;

    .line 577
    .line 578
    invoke-direct {p0, p1, p4}, Lcom/airbnb/lottie/model/layer/BaseLayer;->applyMasks(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V

    .line 579
    .line 580
    .line 581
    :cond_12
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->hasMatteOnThisLayer()Z

    .line 582
    .line 583
    .line 584
    move-result p4

    .line 585
    if-eqz p4, :cond_16

    .line 586
    .line 587
    invoke-static {}, Lcom/airbnb/lottie/L;->isTraceEnabled()Z

    .line 588
    .line 589
    .line 590
    move-result p4

    .line 591
    if-eqz p4, :cond_13

    .line 592
    .line 593
    new-instance p4, Lcom/panda912/muddy/ObfuscatedString;

    .line 594
    .line 595
    new-array v0, v2, [J

    .line 596
    .line 597
    fill-array-data v0, :array_a

    .line 598
    .line 599
    .line 600
    invoke-direct {p4, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 601
    .line 602
    .line 603
    invoke-virtual {p4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 604
    .line 605
    .line 606
    move-result-object p4

    .line 607
    invoke-static {p4}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 608
    .line 609
    .line 610
    new-instance p4, Lcom/panda912/muddy/ObfuscatedString;

    .line 611
    .line 612
    new-array v0, v2, [J

    .line 613
    .line 614
    fill-array-data v0, :array_b

    .line 615
    .line 616
    .line 617
    invoke-direct {p4, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 618
    .line 619
    .line 620
    invoke-virtual {p4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 621
    .line 622
    .line 623
    move-result-object p4

    .line 624
    invoke-static {p4}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 625
    .line 626
    .line 627
    :cond_13
    iget-object p4, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 628
    .line 629
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->mattePaint:Landroid/graphics/Paint;

    .line 630
    .line 631
    const/16 v3, 0x13

    .line 632
    .line 633
    invoke-static {p1, p4, v0, v3}, Lcom/airbnb/lottie/utils/Utils;->saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;I)V

    .line 634
    .line 635
    .line 636
    invoke-static {}, Lcom/airbnb/lottie/L;->isTraceEnabled()Z

    .line 637
    .line 638
    .line 639
    move-result p4

    .line 640
    if-eqz p4, :cond_14

    .line 641
    .line 642
    new-instance p4, Lcom/panda912/muddy/ObfuscatedString;

    .line 643
    .line 644
    new-array v0, v2, [J

    .line 645
    .line 646
    fill-array-data v0, :array_c

    .line 647
    .line 648
    .line 649
    invoke-direct {p4, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 650
    .line 651
    .line 652
    invoke-virtual {p4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 653
    .line 654
    .line 655
    move-result-object p4

    .line 656
    invoke-static {p4}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 657
    .line 658
    .line 659
    :cond_14
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->clearCanvas(Landroid/graphics/Canvas;)V

    .line 660
    .line 661
    .line 662
    iget-object p4, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 663
    .line 664
    const/4 v0, 0x0

    .line 665
    invoke-virtual {p4, p1, p2, p3, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;ILcom/airbnb/lottie/utils/DropShadow;)V

    .line 666
    .line 667
    .line 668
    invoke-static {}, Lcom/airbnb/lottie/L;->isTraceEnabled()Z

    .line 669
    .line 670
    .line 671
    move-result p2

    .line 672
    if-eqz p2, :cond_15

    .line 673
    .line 674
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 675
    .line 676
    new-array p3, v1, [J

    .line 677
    .line 678
    fill-array-data p3, :array_d

    .line 679
    .line 680
    .line 681
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 682
    .line 683
    .line 684
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 685
    .line 686
    .line 687
    move-result-object p2

    .line 688
    invoke-static {p2}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 689
    .line 690
    .line 691
    :cond_15
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 692
    .line 693
    .line 694
    invoke-static {}, Lcom/airbnb/lottie/L;->isTraceEnabled()Z

    .line 695
    .line 696
    .line 697
    move-result p2

    .line 698
    if-eqz p2, :cond_16

    .line 699
    .line 700
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 701
    .line 702
    new-array p3, v1, [J

    .line 703
    .line 704
    fill-array-data p3, :array_e

    .line 705
    .line 706
    .line 707
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 708
    .line 709
    .line 710
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 711
    .line 712
    .line 713
    move-result-object p2

    .line 714
    invoke-static {p2}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 715
    .line 716
    .line 717
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 718
    .line 719
    new-array p3, v2, [J

    .line 720
    .line 721
    fill-array-data p3, :array_f

    .line 722
    .line 723
    .line 724
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 725
    .line 726
    .line 727
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 728
    .line 729
    .line 730
    move-result-object p2

    .line 731
    invoke-static {p2}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 732
    .line 733
    .line 734
    :cond_16
    invoke-static {}, Lcom/airbnb/lottie/L;->isTraceEnabled()Z

    .line 735
    .line 736
    .line 737
    move-result p2

    .line 738
    if-eqz p2, :cond_17

    .line 739
    .line 740
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 741
    .line 742
    new-array p3, v1, [J

    .line 743
    .line 744
    fill-array-data p3, :array_10

    .line 745
    .line 746
    .line 747
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 748
    .line 749
    .line 750
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 751
    .line 752
    .line 753
    move-result-object p2

    .line 754
    invoke-static {p2}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 755
    .line 756
    .line 757
    :cond_17
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 758
    .line 759
    .line 760
    invoke-static {}, Lcom/airbnb/lottie/L;->isTraceEnabled()Z

    .line 761
    .line 762
    .line 763
    move-result p2

    .line 764
    if-eqz p2, :cond_18

    .line 765
    .line 766
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 767
    .line 768
    new-array p3, v1, [J

    .line 769
    .line 770
    fill-array-data p3, :array_11

    .line 771
    .line 772
    .line 773
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 774
    .line 775
    .line 776
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 777
    .line 778
    .line 779
    move-result-object p2

    .line 780
    invoke-static {p2}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 781
    .line 782
    .line 783
    :cond_18
    iget-boolean p2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->outlineMasksAndMattes:Z

    .line 784
    .line 785
    if-eqz p2, :cond_19

    .line 786
    .line 787
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->outlineMasksAndMattesPaint:Landroid/graphics/Paint;

    .line 788
    .line 789
    if-eqz p2, :cond_19

    .line 790
    .line 791
    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 792
    .line 793
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 794
    .line 795
    .line 796
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->outlineMasksAndMattesPaint:Landroid/graphics/Paint;

    .line 797
    .line 798
    const p3, -0x3d7fd

    .line 799
    .line 800
    .line 801
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 802
    .line 803
    .line 804
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->outlineMasksAndMattesPaint:Landroid/graphics/Paint;

    .line 805
    .line 806
    const/high16 p3, 0x40800000    # 4.0f

    .line 807
    .line 808
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 809
    .line 810
    .line 811
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 812
    .line 813
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->outlineMasksAndMattesPaint:Landroid/graphics/Paint;

    .line 814
    .line 815
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 816
    .line 817
    .line 818
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->outlineMasksAndMattesPaint:Landroid/graphics/Paint;

    .line 819
    .line 820
    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 821
    .line 822
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 823
    .line 824
    .line 825
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->outlineMasksAndMattesPaint:Landroid/graphics/Paint;

    .line 826
    .line 827
    const p3, 0x50ebebeb

    .line 828
    .line 829
    .line 830
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 831
    .line 832
    .line 833
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 834
    .line 835
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->outlineMasksAndMattesPaint:Landroid/graphics/Paint;

    .line 836
    .line 837
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 838
    .line 839
    .line 840
    :cond_19
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->drawTraceName:Ljava/lang/String;

    .line 841
    .line 842
    invoke-static {p1}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 843
    .line 844
    .line 845
    move-result p1

    .line 846
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->recordRenderTime(F)V

    .line 847
    .line 848
    .line 849
    return-void

    .line 850
    :cond_1a
    :goto_3
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->drawTraceName:Ljava/lang/String;

    .line 851
    .line 852
    invoke-static {p1}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 853
    .line 854
    .line 855
    return-void

    .line 856
    nop

    .line 857
    :array_0
    .array-data 8
        -0x15eabd72e3697aabL    # -1.0415009111973037E203
        -0x13651652761f2bf4L    # -1.449625679741769E215
        0x75f3a1b1da66bb25L    # 1.5092195131158252E260
        0x7c7e55b83183bc4dL    # 4.72996094411689E291
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
    :array_1
    .array-data 8
        -0x77b9ab1a0551b43bL    # -8.454236373195853E-269
        0x492b3c3a1ccc2c03L    # 3.0368331608600948E44
        -0x4ff4a45fb67110fL    # -3.105982340135407E284
        -0x36427eca588955e6L    # -1.6844220242054358E47
    .end array-data

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
    :array_2
    .array-data 8
        -0x4b4007dd341b07eL    # -8.326723690676039E285
        0x27b17f408aac9914L
        0x1b946c483688f104L
    .end array-data

    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    :array_3
    .array-data 8
        0x666f1862b6d8a9adL    # 2.6425395193541422E185
        0x35ac419e4514258cL    # 3.776124914514348E-50
        -0x7df5715f85a23549L    # -7.931138888626825E-299
    .end array-data

    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    :array_4
    .array-data 8
        0x7fb27c483d7d99cL
        0x55bdfea5e1f8f116L    # 1.0748882149191492E105
        0x6a314af593bed5b7L    # 3.3886182752362225E203
        0x6be8a727df3cad16L    # 6.483893933836144E211
    .end array-data

    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    :array_5
    .array-data 8
        -0xecc6ebb744ffe7aL    # -1.9909065781981537E237
        0x3abe44fd78d30d34L    # 9.780600583143909E-26
        -0x7506e3213c313df7L    # -8.362543399791317E-256
        0x6f967f536938d77dL    # 3.4108953635014883E229
    .end array-data

    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    :array_6
    .array-data 8
        0x27d12a0cc5f959d9L    # 6.806544840035863E-117
        -0x398838e3e4fb63a6L    # -3.01419077167108E31
        -0x439b18faa0466bc4L    # -9.064982163171162E-18
    .end array-data

    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    :array_7
    .array-data 8
        -0x1ef8f849ad811a6cL
        -0x7f247dc56a891f2bL
        -0x3138e5c83f60fc36L    # -3.188939920106327E71
    .end array-data

    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    :array_8
    .array-data 8
        0xf44897c62e33e57L    # 4.036933032547957E-235
        0x4f6ed30956b85393L    # 4.356954575578315E74
        -0x18ea2bd762227a9aL    # -3.7991467182009585E188
    .end array-data

    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    :array_9
    .array-data 8
        -0x6d701dc6c7cd64cbL
        0x31842d0a47a9b618L    # 3.654136412648041E-70
        0x3386a07d4675bb4fL    # 1.7600952032039503E-60
    .end array-data

    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    :array_a
    .array-data 8
        -0x89d060dbba390c5L
        0x318884a73724857fL    # 4.440574760461461E-70
        0x7ce4c3d54c7ca65dL    # 4.144357100009833E293
    .end array-data

    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    :array_b
    .array-data 8
        0x686b0605cc4425c1L    # 9.863458601044981E194
        -0x60e7c0baa3e7bd3aL    # -6.898632892270073E-159
        0x485e3951184c8250L    # 4.1138632289091744E40
    .end array-data

    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    :array_c
    .array-data 8
        0x6c127402c24e8d4aL    # 3.8826466702243E212
        0x4059942dd51024d7L    # 102.31529738022378
        0x784582cb8a944973L    # 2.2728200989007357E271
    .end array-data

    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    :array_d
    .array-data 8
        0x40f1d1b996f19fedL    # 72987.59935152503
        -0x4573ed394f4041b1L    # -1.1338733454126485E-26
        0x4ab96d4fe8e8fba3L    # 9.513370361726306E51
        -0x4a70f5ada56f7850L
    .end array-data

    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    :array_e
    .array-data 8
        0xabbc37bae57234cL
        0x14a228084ed02609L
        0x1b5902256c9a363L
        0x71b37c5ba9839169L    # 5.075446092116652E239
    .end array-data

    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    :array_f
    .array-data 8
        0x467ac0d6748d29fL
        -0x251ee11ec4a5bbebL    # -5.933729505579008E129
        -0x51bc82ef6f1ec675L    # -7.837371190142754E-86
    .end array-data

    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    :array_10
    .array-data 8
        0x68177cfb027a3136L    # 2.6790885250056508E193
        -0xbc43f14ff452e27L    # -7.94832278806957E251
        -0x4636d3f90102efdcL    # -2.482149038810752E-30
        0x70374fa4a0e12eebL    # 3.619091347588451E232
    .end array-data

    .line 1138
    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
    .line 1144
    .line 1145
    .line 1146
    .line 1147
    .line 1148
    .line 1149
    .line 1150
    .line 1151
    .line 1152
    .line 1153
    .line 1154
    .line 1155
    .line 1156
    .line 1157
    :array_11
    .array-data 8
        -0x632128199686789L    # -5.305172295685491E278
        -0x7fac97559beb3d33L    # -4.318612466843602E-307
        0xddd2348bcf43e48L
        -0x15929a0928cb71a9L    # -4.608602565024352E204
    .end array-data
.end method

.method public abstract drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;ILcom/airbnb/lottie/utils/DropShadow;)V
    .param p4    # Lcom/airbnb/lottie/utils/DropShadow;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public getBlendMode()Lcom/airbnb/lottie/model/content/LBlendMode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/Layer;->getBlendMode()Lcom/airbnb/lottie/model/content/LBlendMode;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getBlurEffect()Lcom/airbnb/lottie/model/content/BlurEffect;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/Layer;->getBlurEffect()Lcom/airbnb/lottie/model/content/BlurEffect;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getBlurMaskFilter(F)Landroid/graphics/BlurMaskFilter;
    .locals 3

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->blurMaskFilterRadius:F

    .line 2
    .line 3
    cmpl-float v0, v0, p1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->blurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    new-instance v0, Landroid/graphics/BlurMaskFilter;

    .line 11
    .line 12
    const/high16 v1, 0x40000000    # 2.0f

    .line 13
    .line 14
    div-float v1, p1, v1

    .line 15
    .line 16
    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    .line 17
    .line 18
    invoke-direct {v0, v1, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->blurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 22
    .line 23
    iput p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->blurMaskFilterRadius:F

    .line 24
    .line 25
    return-object v0
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->buildParentLayerListIfNeeded()V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->boundsMatrix:Landroid/graphics/Matrix;

    .line 11
    .line 12
    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 13
    .line 14
    .line 15
    if-eqz p3, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    add-int/lit8 p1, p1, -0x1

    .line 26
    .line 27
    :goto_0
    if-ltz p1, :cond_1

    .line 28
    .line 29
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->boundsMatrix:Landroid/graphics/Matrix;

    .line 30
    .line 31
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayers:Ljava/util/List;

    .line 32
    .line 33
    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    check-cast p3, Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 38
    .line 39
    iget-object p3, p3, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    .line 40
    .line 41
    invoke-virtual {p3}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    .line 42
    .line 43
    .line 44
    move-result-object p3

    .line 45
    invoke-virtual {p2, p3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 46
    .line 47
    .line 48
    add-int/lit8 p1, p1, -0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 52
    .line 53
    if-eqz p1, :cond_1

    .line 54
    .line 55
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->boundsMatrix:Landroid/graphics/Matrix;

    .line 56
    .line 57
    iget-object p1, p1, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 64
    .line 65
    .line 66
    :cond_1
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->boundsMatrix:Landroid/graphics/Matrix;

    .line 67
    .line 68
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    .line 69
    .line 70
    invoke-virtual {p2}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public getDropShadowEffect()Lcom/airbnb/lottie/parser/DropShadowEffect;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/Layer;->getDropShadowEffect()Lcom/airbnb/lottie/parser/DropShadowEffect;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getLayerModel()Lcom/airbnb/lottie/model/layer/Layer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/Layer;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public hasMasksOnThisLayer()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->getMaskAnimations()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method public hasMatteOnThisLayer()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public onValueChanged()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->invalidateSelf()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public removeAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "**>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->animations:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public resolveChildKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;)V
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
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p4, v0}, Lcom/airbnb/lottie/model/KeyPath;->addKey(Ljava/lang/String;)Lcom/airbnb/lottie/model/KeyPath;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p1, v1, p2}, Lcom/airbnb/lottie/model/KeyPath;->fullyResolvesTo(Ljava/lang/String;I)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/model/KeyPath;->resolve(Lcom/airbnb/lottie/model/KeyPathElement;)Lcom/airbnb/lottie/model/KeyPath;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {p1, v1, p2}, Lcom/airbnb/lottie/model/KeyPath;->matches(Ljava/lang/String;I)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {p1, v1, p2}, Lcom/airbnb/lottie/model/KeyPath;->propagateToChildren(Ljava/lang/String;I)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_1

    .line 55
    .line 56
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 57
    .line 58
    invoke-virtual {v1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getName()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {p1, v1, p2}, Lcom/airbnb/lottie/model/KeyPath;->incrementDepthBy(Ljava/lang/String;I)I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    add-int/2addr v1, p2

    .line 67
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 68
    .line 69
    invoke-virtual {v2, p1, v1, p3, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->resolveChildKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;)V

    .line 70
    .line 71
    .line 72
    :cond_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getName()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {p1, v0, p2}, Lcom/airbnb/lottie/model/KeyPath;->matches(Ljava/lang/String;I)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-nez v0, :cond_2

    .line 81
    .line 82
    return-void

    .line 83
    :cond_2
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 84
    .line 85
    const/4 v1, 0x3

    .line 86
    new-array v1, v1, [J

    .line 87
    .line 88
    fill-array-data v1, :array_0

    .line 89
    .line 90
    .line 91
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getName()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-nez v0, :cond_3

    .line 107
    .line 108
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getName()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {p4, v0}, Lcom/airbnb/lottie/model/KeyPath;->addKey(Ljava/lang/String;)Lcom/airbnb/lottie/model/KeyPath;

    .line 113
    .line 114
    .line 115
    move-result-object p4

    .line 116
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getName()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {p1, v0, p2}, Lcom/airbnb/lottie/model/KeyPath;->fullyResolvesTo(Ljava/lang/String;I)Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-eqz v0, :cond_3

    .line 125
    .line 126
    invoke-virtual {p4, p0}, Lcom/airbnb/lottie/model/KeyPath;->resolve(Lcom/airbnb/lottie/model/KeyPathElement;)Lcom/airbnb/lottie/model/KeyPath;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    :cond_3
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getName()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {p1, v0, p2}, Lcom/airbnb/lottie/model/KeyPath;->propagateToChildren(Ljava/lang/String;I)Z

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    if-eqz v0, :cond_4

    .line 142
    .line 143
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getName()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {p1, v0, p2}, Lcom/airbnb/lottie/model/KeyPath;->incrementDepthBy(Ljava/lang/String;I)I

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    add-int/2addr v0, p2

    .line 152
    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/airbnb/lottie/model/layer/BaseLayer;->resolveChildKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/List;Lcom/airbnb/lottie/model/KeyPath;)V

    .line 153
    .line 154
    .line 155
    :cond_4
    return-void

    .line 156
    nop

    .line 157
    :array_0
    .array-data 8
        -0x416fef7dd9178f8cL    # -2.3937949481120126E-7
        -0x29074e4bc98bf9edL    # -9.27924433506115E110
        -0x457b7b8ed7419184L    # -8.28689234558247E-27
    .end array-data
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .locals 0
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

    return-void
.end method

.method public setMatteLayer(Lcom/airbnb/lottie/model/layer/BaseLayer;)V
    .locals 0
    .param p1    # Lcom/airbnb/lottie/model/layer/BaseLayer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 2
    .line 3
    return-void
.end method

.method public setOutlineMasksAndMattes(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->outlineMasksAndMattesPaint:Landroid/graphics/Paint;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/airbnb/lottie/animation/LPaint;

    .line 8
    .line 9
    invoke-direct {v0}, Lcom/airbnb/lottie/animation/LPaint;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->outlineMasksAndMattesPaint:Landroid/graphics/Paint;

    .line 13
    .line 14
    :cond_0
    iput-boolean p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->outlineMasksAndMattes:Z

    .line 15
    .line 16
    return-void
.end method

.method public setParentLayer(Lcom/airbnb/lottie/model/layer/BaseLayer;)V
    .locals 0
    .param p1    # Lcom/airbnb/lottie/model/layer/BaseLayer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->parentLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 2
    .line 3
    return-void
.end method

.method public setProgress(F)V
    .locals 6
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x6

    .line 2
    const/4 v1, 0x4

    .line 3
    const/4 v2, 0x5

    .line 4
    invoke-static {}, Lcom/airbnb/lottie/L;->isTraceEnabled()Z

    .line 5
    .line 6
    .line 7
    move-result v3

    .line 8
    if-eqz v3, :cond_0

    .line 9
    .line 10
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 11
    .line 12
    new-array v4, v1, [J

    .line 13
    .line 14
    fill-array-data v4, :array_0

    .line 15
    .line 16
    .line 17
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-static {v3}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 28
    .line 29
    new-array v4, v2, [J

    .line 30
    .line 31
    fill-array-data v4, :array_1

    .line 32
    .line 33
    .line 34
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-static {v3}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    .line 45
    .line 46
    invoke-virtual {v3, p1}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->setProgress(F)V

    .line 47
    .line 48
    .line 49
    invoke-static {}, Lcom/airbnb/lottie/L;->isTraceEnabled()Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_1

    .line 54
    .line 55
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 56
    .line 57
    new-array v4, v2, [J

    .line 58
    .line 59
    fill-array-data v4, :array_2

    .line 60
    .line 61
    .line 62
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-static {v3}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 70
    .line 71
    .line 72
    :cond_1
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    .line 73
    .line 74
    const/4 v4, 0x0

    .line 75
    if-eqz v3, :cond_4

    .line 76
    .line 77
    invoke-static {}, Lcom/airbnb/lottie/L;->isTraceEnabled()Z

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    if-eqz v3, :cond_2

    .line 82
    .line 83
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 84
    .line 85
    new-array v5, v2, [J

    .line 86
    .line 87
    fill-array-data v5, :array_3

    .line 88
    .line 89
    .line 90
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-static {v3}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    :cond_2
    const/4 v3, 0x0

    .line 101
    :goto_0
    iget-object v5, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    .line 102
    .line 103
    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->getMaskAnimations()Ljava/util/List;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    if-ge v3, v5, :cond_3

    .line 112
    .line 113
    iget-object v5, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->mask:Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;

    .line 114
    .line 115
    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation;->getMaskAnimations()Ljava/util/List;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    check-cast v5, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 124
    .line 125
    invoke-virtual {v5, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    .line 126
    .line 127
    .line 128
    add-int/lit8 v3, v3, 0x1

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_3
    invoke-static {}, Lcom/airbnb/lottie/L;->isTraceEnabled()Z

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    if-eqz v3, :cond_4

    .line 136
    .line 137
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 138
    .line 139
    new-array v5, v2, [J

    .line 140
    .line 141
    fill-array-data v5, :array_4

    .line 142
    .line 143
    .line 144
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    invoke-static {v3}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 152
    .line 153
    .line 154
    :cond_4
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->inOutAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 155
    .line 156
    if-eqz v3, :cond_6

    .line 157
    .line 158
    invoke-static {}, Lcom/airbnb/lottie/L;->isTraceEnabled()Z

    .line 159
    .line 160
    .line 161
    move-result v3

    .line 162
    if-eqz v3, :cond_5

    .line 163
    .line 164
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 165
    .line 166
    new-array v5, v2, [J

    .line 167
    .line 168
    fill-array-data v5, :array_5

    .line 169
    .line 170
    .line 171
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    invoke-static {v3}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    :cond_5
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->inOutAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    .line 182
    .line 183
    invoke-virtual {v3, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    .line 184
    .line 185
    .line 186
    invoke-static {}, Lcom/airbnb/lottie/L;->isTraceEnabled()Z

    .line 187
    .line 188
    .line 189
    move-result v3

    .line 190
    if-eqz v3, :cond_6

    .line 191
    .line 192
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 193
    .line 194
    new-array v5, v2, [J

    .line 195
    .line 196
    fill-array-data v5, :array_6

    .line 197
    .line 198
    .line 199
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v3

    .line 206
    invoke-static {v3}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 207
    .line 208
    .line 209
    :cond_6
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 210
    .line 211
    if-eqz v3, :cond_8

    .line 212
    .line 213
    invoke-static {}, Lcom/airbnb/lottie/L;->isTraceEnabled()Z

    .line 214
    .line 215
    .line 216
    move-result v3

    .line 217
    if-eqz v3, :cond_7

    .line 218
    .line 219
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 220
    .line 221
    new-array v5, v2, [J

    .line 222
    .line 223
    fill-array-data v5, :array_7

    .line 224
    .line 225
    .line 226
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v3

    .line 233
    invoke-static {v3}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    :cond_7
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->matteLayer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    .line 237
    .line 238
    invoke-virtual {v3, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->setProgress(F)V

    .line 239
    .line 240
    .line 241
    invoke-static {}, Lcom/airbnb/lottie/L;->isTraceEnabled()Z

    .line 242
    .line 243
    .line 244
    move-result v3

    .line 245
    if-eqz v3, :cond_8

    .line 246
    .line 247
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 248
    .line 249
    new-array v2, v2, [J

    .line 250
    .line 251
    fill-array-data v2, :array_8

    .line 252
    .line 253
    .line 254
    invoke-direct {v3, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    invoke-static {v2}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 262
    .line 263
    .line 264
    :cond_8
    invoke-static {}, Lcom/airbnb/lottie/L;->isTraceEnabled()Z

    .line 265
    .line 266
    .line 267
    move-result v2

    .line 268
    if-eqz v2, :cond_9

    .line 269
    .line 270
    new-instance v2, Ljava/lang/StringBuilder;

    .line 271
    .line 272
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 273
    .line 274
    .line 275
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 276
    .line 277
    new-array v5, v0, [J

    .line 278
    .line 279
    fill-array-data v5, :array_9

    .line 280
    .line 281
    .line 282
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v3

    .line 289
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->animations:Ljava/util/List;

    .line 293
    .line 294
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 295
    .line 296
    .line 297
    move-result v3

    .line 298
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v2

    .line 305
    invoke-static {v2}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    :cond_9
    :goto_1
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->animations:Ljava/util/List;

    .line 309
    .line 310
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 311
    .line 312
    .line 313
    move-result v2

    .line 314
    if-ge v4, v2, :cond_a

    .line 315
    .line 316
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->animations:Ljava/util/List;

    .line 317
    .line 318
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v2

    .line 322
    check-cast v2, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 323
    .line 324
    invoke-virtual {v2, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    .line 325
    .line 326
    .line 327
    add-int/lit8 v4, v4, 0x1

    .line 328
    .line 329
    goto :goto_1

    .line 330
    :cond_a
    invoke-static {}, Lcom/airbnb/lottie/L;->isTraceEnabled()Z

    .line 331
    .line 332
    .line 333
    move-result p1

    .line 334
    if-eqz p1, :cond_b

    .line 335
    .line 336
    new-instance p1, Ljava/lang/StringBuilder;

    .line 337
    .line 338
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 339
    .line 340
    .line 341
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 342
    .line 343
    new-array v0, v0, [J

    .line 344
    .line 345
    fill-array-data v0, :array_a

    .line 346
    .line 347
    .line 348
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->animations:Ljava/util/List;

    .line 359
    .line 360
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 361
    .line 362
    .line 363
    move-result v0

    .line 364
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object p1

    .line 371
    invoke-static {p1}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 372
    .line 373
    .line 374
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 375
    .line 376
    new-array v0, v1, [J

    .line 377
    .line 378
    fill-array-data v0, :array_b

    .line 379
    .line 380
    .line 381
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object p1

    .line 388
    invoke-static {p1}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 389
    .line 390
    .line 391
    :cond_b
    return-void

    .line 392
    nop

    .line 393
    :array_0
    .array-data 8
        -0x7874c2e3be5dbedbL
        0x3a7d446af96a39bbL    # 5.910475541857564E-27
        0x76628fb92b1a5303L    # 1.8264905085583656E262
        0x74181a9b066aadf7L    # 1.7257751947502012E251
    .end array-data

    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    :array_1
    .array-data 8
        -0x3dbdeb7fb9040e79L    # -1.5530672485588693E11
        0x12661844b6c53d17L    # 4.889936543933456E-220
        -0x5e80939f3fe0dde9L
        -0x24b66d3a235205abL    # -5.672512128159601E131
        0x3eb594137c196c20L    # 1.2861741968326119E-6
    .end array-data

    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    :array_2
    .array-data 8
        0x5a1fdde7a209d7d1L    # 1.348207917902933E126
        -0x483d6726f9fd061eL    # -4.269675928402439E-40
        -0x3138764dcc3e604dL    # -3.249048910976484E71
        -0x74577bfd788f8ffcL
        -0x33f1e52a8bee3da9L    # -2.3621376872524506E58
    .end array-data

    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    :array_3
    .array-data 8
        -0xcbaf3a314f17241L    # -1.839599718302556E247
        -0x133c416e4f6603c0L    # -8.508070526366816E215
        0x2b6d5850ff80109aL    # 1.6770474458888357E-99
        -0x20cd004cfafce644L    # -3.886911033357636E150
        -0x2a3023e4cb8d4f91L    # -2.283449516591572E105
    .end array-data

    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    :array_4
    .array-data 8
        -0xc1f88f54d7f68afL
        -0x5bd79d8bc914712aL
        0x507aec77e6a61c3fL    # 4.988083198586506E79
        0x2b28debf02a5a0bbL    # 8.8831915952355E-101
        0x55ab5900b4ef51e6L    # 4.900143476118277E104
    .end array-data

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
    :array_5
    .array-data 8
        0x3563bbd2e57869b1L    # 1.648234425232156E-51
        -0x71aba0fc6ab4ea87L    # -1.222021855531166E-239
        0x2f646d67bd88a4a6L    # 2.153493168798038E-80
        0x2b0283874ac4ea1bL
        0x45cc83184558d388L    # 1.7648128346777435E28
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
    :array_6
    .array-data 8
        -0x5a7530be7d62aabfL    # -7.735387569135134E-128
        -0x67b049424f898eeeL
        0x23ef69e37b3a2b2dL
        -0x557aa47de5969ef6L    # -7.449737730097438E-104
        -0x46f689d1da878c78L    # -6.129667257916157E-34
    .end array-data

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
    :array_7
    .array-data 8
        0x28768e87717aaef1L    # 9.159636831883681E-114
        -0x29729eba8313fc9bL    # -8.625012816089684E108
        -0x671a24b4d15b3c0dL    # -9.811053599450336E-189
        0x77bc61de24e40e09L    # 5.857113947290581E268
        -0x29c5c5ca89c82b15L    # -2.406098229813191E107
    .end array-data

    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    :array_8
    .array-data 8
        -0x76c4d8b6c429664cL    # -3.3684415205243E-264
        0x38c0539cd0c006c8L    # 2.456555476613862E-35
        0x1a793471cd601916L
        0x513829e2357fd6f1L    # 1.8336675562541863E83
        -0x13c48ad1177dec62L    # -2.3109036934076642E213
    .end array-data

    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    :array_9
    .array-data 8
        -0x2442226e52562270L    # -8.47945504651276E133
        0x54f79ad6801b9389L    # 2.0651877436892047E101
        0x7266a7651191946eL    # 1.2084515069962014E243
        0x15ef724eb6714261L    # 5.014936498951664E-203
        -0x21a452dfe27e7dcdL    # -3.455934391100676E146
        0x62b68fa6aef725d7L    # 3.3259720241821113E167
    .end array-data

    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    :array_a
    .array-data 8
        0x55dae185cdeced7eL
        -0x431b4ec9733f7c7dL    # -2.2972999740392393E-15
        -0xebaee064dd3aba9L    # -4.2876131118309214E237
        -0x46924afb5e28bc90L    # -4.5771037736862817E-32
        -0x5963322227dab7abL    # -1.089324039323745E-122
        -0x5210c99ac0680af0L    # -1.9612799171051628E-87
    .end array-data

    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    :array_b
    .array-data 8
        0x7c8bde24525d8e0dL    # 8.690556604998993E291
        0x2be6a283721fba47L    # 3.311527911779477E-97
        -0x2a983aee0c47ed46L    # -2.661914808299304E103
        0x30272ceabe0b1a0aL    # 1.0007357599624008E-76
    .end array-data
.end method
