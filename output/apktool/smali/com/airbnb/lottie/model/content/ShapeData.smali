.class public Lcom/airbnb/lottie/model/content/ShapeData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private closed:Z

.field private final curves:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/CubicCurveData;",
            ">;"
        }
    .end annotation
.end field

.field private initialPoint:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/PointF;ZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/PointF;",
            "Z",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/CubicCurveData;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    .line 3
    iput-boolean p2, p0, Lcom/airbnb/lottie/model/content/ShapeData;->closed:Z

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCurves()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/CubicCurveData;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getInitialPoint()Landroid/graphics/PointF;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    .line 2
    .line 3
    return-object v0
.end method

.method public interpolateBetween(Lcom/airbnb/lottie/model/content/ShapeData;Lcom/airbnb/lottie/model/content/ShapeData;F)V
    .locals 10
    .param p3    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    new-instance v1, Landroid/graphics/PointF;

    .line 7
    .line 8
    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v1, p0, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    .line 12
    .line 13
    :cond_0
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/content/ShapeData;->isClosed()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_2

    .line 18
    .line 19
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/content/ShapeData;->isClosed()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v1, 0x0

    .line 27
    goto :goto_1

    .line 28
    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 29
    :goto_1
    iput-boolean v1, p0, Lcom/airbnb/lottie/model/content/ShapeData;->closed:Z

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/content/ShapeData;->getCurves()Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/content/ShapeData;->getCurves()Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eq v1, v2, :cond_3

    .line 48
    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 55
    .line 56
    const/16 v3, 0x9

    .line 57
    .line 58
    new-array v3, v3, [J

    .line 59
    .line 60
    fill-array-data v3, :array_0

    .line 61
    .line 62
    .line 63
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/content/ShapeData;->getCurves()Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 85
    .line 86
    const/4 v3, 0x3

    .line 87
    new-array v3, v3, [J

    .line 88
    .line 89
    fill-array-data v3, :array_1

    .line 90
    .line 91
    .line 92
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/content/ShapeData;->getCurves()Ljava/util/List;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-static {v1}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    :cond_3
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/content/ShapeData;->getCurves()Ljava/util/List;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/content/ShapeData;->getCurves()Ljava/util/List;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    iget-object v2, p0, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    .line 141
    .line 142
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    if-ge v2, v1, :cond_4

    .line 147
    .line 148
    iget-object v2, p0, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    .line 149
    .line 150
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    :goto_2
    if-ge v2, v1, :cond_5

    .line 155
    .line 156
    iget-object v3, p0, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    .line 157
    .line 158
    new-instance v4, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 159
    .line 160
    invoke-direct {v4}, Lcom/airbnb/lottie/model/CubicCurveData;-><init>()V

    .line 161
    .line 162
    .line 163
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    add-int/2addr v2, v0

    .line 167
    goto :goto_2

    .line 168
    :cond_4
    iget-object v2, p0, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    .line 169
    .line 170
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    if-le v2, v1, :cond_5

    .line 175
    .line 176
    iget-object v2, p0, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    .line 177
    .line 178
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 179
    .line 180
    .line 181
    move-result v2

    .line 182
    sub-int/2addr v2, v0

    .line 183
    :goto_3
    if-lt v2, v1, :cond_5

    .line 184
    .line 185
    iget-object v3, p0, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    .line 186
    .line 187
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 188
    .line 189
    .line 190
    move-result v4

    .line 191
    sub-int/2addr v4, v0

    .line 192
    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    add-int/lit8 v2, v2, -0x1

    .line 196
    .line 197
    goto :goto_3

    .line 198
    :cond_5
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/content/ShapeData;->getInitialPoint()Landroid/graphics/PointF;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/content/ShapeData;->getInitialPoint()Landroid/graphics/PointF;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    iget v3, v1, Landroid/graphics/PointF;->x:F

    .line 207
    .line 208
    iget v4, v2, Landroid/graphics/PointF;->x:F

    .line 209
    .line 210
    invoke-static {v3, v4, p3}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    .line 211
    .line 212
    .line 213
    move-result v3

    .line 214
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 215
    .line 216
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 217
    .line 218
    invoke-static {v1, v2, p3}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    .line 219
    .line 220
    .line 221
    move-result v1

    .line 222
    invoke-virtual {p0, v3, v1}, Lcom/airbnb/lottie/model/content/ShapeData;->setInitialPoint(FF)V

    .line 223
    .line 224
    .line 225
    iget-object v1, p0, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    .line 226
    .line 227
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 228
    .line 229
    .line 230
    move-result v1

    .line 231
    sub-int/2addr v1, v0

    .line 232
    :goto_4
    if-ltz v1, :cond_6

    .line 233
    .line 234
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/content/ShapeData;->getCurves()Ljava/util/List;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    check-cast v0, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 243
    .line 244
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/content/ShapeData;->getCurves()Ljava/util/List;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    check-cast v2, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 253
    .line 254
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/CubicCurveData;->getControlPoint1()Landroid/graphics/PointF;

    .line 255
    .line 256
    .line 257
    move-result-object v3

    .line 258
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/CubicCurveData;->getControlPoint2()Landroid/graphics/PointF;

    .line 259
    .line 260
    .line 261
    move-result-object v4

    .line 262
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/CubicCurveData;->getVertex()Landroid/graphics/PointF;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    invoke-virtual {v2}, Lcom/airbnb/lottie/model/CubicCurveData;->getControlPoint1()Landroid/graphics/PointF;

    .line 267
    .line 268
    .line 269
    move-result-object v5

    .line 270
    invoke-virtual {v2}, Lcom/airbnb/lottie/model/CubicCurveData;->getControlPoint2()Landroid/graphics/PointF;

    .line 271
    .line 272
    .line 273
    move-result-object v6

    .line 274
    invoke-virtual {v2}, Lcom/airbnb/lottie/model/CubicCurveData;->getVertex()Landroid/graphics/PointF;

    .line 275
    .line 276
    .line 277
    move-result-object v2

    .line 278
    iget-object v7, p0, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    .line 279
    .line 280
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v7

    .line 284
    check-cast v7, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 285
    .line 286
    iget v8, v3, Landroid/graphics/PointF;->x:F

    .line 287
    .line 288
    iget v9, v5, Landroid/graphics/PointF;->x:F

    .line 289
    .line 290
    invoke-static {v8, v9, p3}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    .line 291
    .line 292
    .line 293
    move-result v8

    .line 294
    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 295
    .line 296
    iget v5, v5, Landroid/graphics/PointF;->y:F

    .line 297
    .line 298
    invoke-static {v3, v5, p3}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    .line 299
    .line 300
    .line 301
    move-result v3

    .line 302
    invoke-virtual {v7, v8, v3}, Lcom/airbnb/lottie/model/CubicCurveData;->setControlPoint1(FF)V

    .line 303
    .line 304
    .line 305
    iget-object v3, p0, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    .line 306
    .line 307
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v3

    .line 311
    check-cast v3, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 312
    .line 313
    iget v5, v4, Landroid/graphics/PointF;->x:F

    .line 314
    .line 315
    iget v7, v6, Landroid/graphics/PointF;->x:F

    .line 316
    .line 317
    invoke-static {v5, v7, p3}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    .line 318
    .line 319
    .line 320
    move-result v5

    .line 321
    iget v4, v4, Landroid/graphics/PointF;->y:F

    .line 322
    .line 323
    iget v6, v6, Landroid/graphics/PointF;->y:F

    .line 324
    .line 325
    invoke-static {v4, v6, p3}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    .line 326
    .line 327
    .line 328
    move-result v4

    .line 329
    invoke-virtual {v3, v5, v4}, Lcom/airbnb/lottie/model/CubicCurveData;->setControlPoint2(FF)V

    .line 330
    .line 331
    .line 332
    iget-object v3, p0, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    .line 333
    .line 334
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    move-result-object v3

    .line 338
    check-cast v3, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 339
    .line 340
    iget v4, v0, Landroid/graphics/PointF;->x:F

    .line 341
    .line 342
    iget v5, v2, Landroid/graphics/PointF;->x:F

    .line 343
    .line 344
    invoke-static {v4, v5, p3}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    .line 345
    .line 346
    .line 347
    move-result v4

    .line 348
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 349
    .line 350
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 351
    .line 352
    invoke-static {v0, v2, p3}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    .line 353
    .line 354
    .line 355
    move-result v0

    .line 356
    invoke-virtual {v3, v4, v0}, Lcom/airbnb/lottie/model/CubicCurveData;->setVertex(FF)V

    .line 357
    .line 358
    .line 359
    add-int/lit8 v1, v1, -0x1

    .line 360
    .line 361
    goto/16 :goto_4

    .line 362
    .line 363
    :cond_6
    return-void

    .line 364
    nop

    .line 365
    :array_0
    .array-data 8
        -0x1610e8022b1ee863L    # -1.9040561355950912E202
        0x4edd8be9d0cacc1aL    # 8.156908011989548E71
        -0x61ea5e522213fc34L    # -9.390964371813973E-164
        -0x2e2d733d692154e4L    # -1.4414482111339245E86
        0x60ebb3170fd4613eL    # 7.606077910199797E158
        -0x29d813583ad937d2L    # -1.097413169791162E107
        0x3a00464331c258d3L    # 2.56765749202732E-29
        -0x279d592abfb8ea7eL    # -5.879312497735027E117
        -0x2f6fbc6a63343b6L
    .end array-data

    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
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
    :array_1
    .array-data 8
        0x23cd541b79283bceL
        0x23869f45af029ebcL
        0x76e1ab8cc701a321L    # 4.451287313579974E264
    .end array-data
.end method

.method public isClosed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/airbnb/lottie/model/content/ShapeData;->closed:Z

    .line 2
    .line 3
    return v0
.end method

.method public setClosed(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/airbnb/lottie/model/content/ShapeData;->closed:Z

    .line 2
    .line 3
    return-void
.end method

.method public setInitialPoint(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/graphics/PointF;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    .line 13
    .line 14
    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    const/4 v2, 0x4

    .line 9
    new-array v2, v2, [J

    .line 10
    .line 11
    fill-array-data v2, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 34
    .line 35
    const/4 v2, 0x2

    .line 36
    new-array v2, v2, [J

    .line 37
    .line 38
    fill-array-data v2, :array_1

    .line 39
    .line 40
    .line 41
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-boolean v1, p0, Lcom/airbnb/lottie/model/content/ShapeData;->closed:Z

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const/16 v1, 0x7d

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    return-object v0

    .line 66
    nop

    .line 67
    :array_0
    .array-data 8
        0x54b9ba8cf2b2cc77L    # 1.4068786646652394E100
        0x78769d878808ee61L    # 1.9116104563494288E272
        -0x36451eb31dfb2e84L    # -1.5345812515503957E47
        -0x49aab00580f6076aL    # -5.8330187185556105E-47
    .end array-data

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    :array_1
    .array-data 8
        0x624c319c92751e5cL    # 3.2471412434822453E165
        -0x2afaa62caeee1afbL    # -3.735978340527811E101
    .end array-data
.end method
