.class public final Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;
.super Lcom/google/zxing/qrcode/detector/FinderPatternFinder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder$ModuleSizeComparator;
    }
.end annotation


# static fields
.field private static final DIFF_MODSIZE_CUTOFF:F = 0.5f

.field private static final DIFF_MODSIZE_CUTOFF_PERCENT:F = 0.05f

.field private static final EMPTY_FP_2D_ARRAY:[[Lcom/google/zxing/qrcode/detector/FinderPattern;

.field private static final EMPTY_FP_ARRAY:[Lcom/google/zxing/qrcode/detector/FinderPattern;

.field private static final EMPTY_RESULT_ARRAY:[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

.field private static final MAX_MODULE_COUNT_PER_EDGE:F = 180.0f

.field private static final MIN_MODULE_COUNT_PER_EDGE:F = 9.0f


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    .line 3
    .line 4
    sput-object v1, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->EMPTY_RESULT_ARRAY:[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    .line 5
    .line 6
    new-array v1, v0, [Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 7
    .line 8
    sput-object v1, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->EMPTY_FP_ARRAY:[Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 9
    .line 10
    new-array v0, v0, [[Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 11
    .line 12
    sput-object v0, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->EMPTY_FP_2D_ARRAY:[[Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPointCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;-><init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPointCallback;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private selectMultipleBestPatterns()[[Lcom/google/zxing/qrcode/detector/FinderPattern;
    .locals 19

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x2

    .line 4
    const/4 v3, 0x1

    .line 5
    new-instance v4, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->getPossibleCenters()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v5

    .line 14
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v6

    .line 22
    if-eqz v6, :cond_1

    .line 23
    .line 24
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    check-cast v6, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 29
    .line 30
    invoke-virtual {v6}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getCount()I

    .line 31
    .line 32
    .line 33
    move-result v7

    .line 34
    if-lt v7, v2, :cond_0

    .line 35
    .line 36
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    if-lt v5, v0, :cond_10

    .line 45
    .line 46
    if-ne v5, v0, :cond_2

    .line 47
    .line 48
    sget-object v0, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->EMPTY_FP_ARRAY:[Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 49
    .line 50
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, [Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 55
    .line 56
    new-array v2, v3, [[Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 57
    .line 58
    aput-object v0, v2, v1

    .line 59
    .line 60
    return-object v2

    .line 61
    :cond_2
    new-instance v6, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder$ModuleSizeComparator;

    .line 62
    .line 63
    const/4 v7, 0x0

    .line 64
    invoke-direct {v6, v7}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder$ModuleSizeComparator;-><init>(Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder$1;)V

    .line 65
    .line 66
    .line 67
    invoke-static {v4, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 68
    .line 69
    .line 70
    new-instance v6, Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .line 74
    .line 75
    const/4 v7, 0x0

    .line 76
    :goto_1
    add-int/lit8 v8, v5, -0x2

    .line 77
    .line 78
    if-ge v7, v8, :cond_e

    .line 79
    .line 80
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v8

    .line 84
    check-cast v8, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 85
    .line 86
    if-nez v8, :cond_4

    .line 87
    .line 88
    :cond_3
    :goto_2
    move-object v15, v4

    .line 89
    const/4 v1, 0x1

    .line 90
    goto/16 :goto_a

    .line 91
    .line 92
    :cond_4
    add-int/lit8 v9, v7, 0x1

    .line 93
    .line 94
    :goto_3
    add-int/lit8 v10, v5, -0x1

    .line 95
    .line 96
    if-ge v9, v10, :cond_3

    .line 97
    .line 98
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v10

    .line 102
    check-cast v10, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 103
    .line 104
    if-nez v10, :cond_6

    .line 105
    .line 106
    :cond_5
    :goto_4
    move-object v15, v4

    .line 107
    const/4 v1, 0x1

    .line 108
    goto/16 :goto_9

    .line 109
    .line 110
    :cond_6
    invoke-virtual {v8}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    .line 111
    .line 112
    .line 113
    move-result v11

    .line 114
    invoke-virtual {v10}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    .line 115
    .line 116
    .line 117
    move-result v12

    .line 118
    sub-float/2addr v11, v12

    .line 119
    invoke-virtual {v8}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    .line 120
    .line 121
    .line 122
    move-result v12

    .line 123
    invoke-virtual {v10}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    .line 124
    .line 125
    .line 126
    move-result v13

    .line 127
    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    .line 128
    .line 129
    .line 130
    move-result v12

    .line 131
    div-float/2addr v11, v12

    .line 132
    invoke-virtual {v8}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    .line 133
    .line 134
    .line 135
    move-result v12

    .line 136
    invoke-virtual {v10}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    .line 137
    .line 138
    .line 139
    move-result v13

    .line 140
    sub-float/2addr v12, v13

    .line 141
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    .line 142
    .line 143
    .line 144
    move-result v12

    .line 145
    const v13, 0x3d4ccccd    # 0.05f

    .line 146
    .line 147
    .line 148
    const/high16 v14, 0x3f000000    # 0.5f

    .line 149
    .line 150
    cmpl-float v12, v12, v14

    .line 151
    .line 152
    if-lez v12, :cond_7

    .line 153
    .line 154
    cmpl-float v11, v11, v13

    .line 155
    .line 156
    if-ltz v11, :cond_7

    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_7
    add-int/lit8 v11, v9, 0x1

    .line 160
    .line 161
    :goto_5
    if-ge v11, v5, :cond_5

    .line 162
    .line 163
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v12

    .line 167
    check-cast v12, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 168
    .line 169
    if-nez v12, :cond_9

    .line 170
    .line 171
    :cond_8
    :goto_6
    move-object v15, v4

    .line 172
    :goto_7
    const/4 v1, 0x1

    .line 173
    goto/16 :goto_8

    .line 174
    .line 175
    :cond_9
    invoke-virtual {v10}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    .line 176
    .line 177
    .line 178
    move-result v15

    .line 179
    invoke-virtual {v12}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    .line 180
    .line 181
    .line 182
    move-result v16

    .line 183
    sub-float v15, v15, v16

    .line 184
    .line 185
    invoke-virtual {v10}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    .line 186
    .line 187
    .line 188
    move-result v2

    .line 189
    invoke-virtual {v12}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    .line 190
    .line 191
    .line 192
    move-result v3

    .line 193
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    .line 194
    .line 195
    .line 196
    move-result v2

    .line 197
    div-float/2addr v15, v2

    .line 198
    invoke-virtual {v10}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    .line 199
    .line 200
    .line 201
    move-result v2

    .line 202
    invoke-virtual {v12}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    .line 203
    .line 204
    .line 205
    move-result v3

    .line 206
    sub-float/2addr v2, v3

    .line 207
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 208
    .line 209
    .line 210
    move-result v2

    .line 211
    cmpl-float v2, v2, v14

    .line 212
    .line 213
    if-lez v2, :cond_a

    .line 214
    .line 215
    cmpl-float v2, v15, v13

    .line 216
    .line 217
    if-ltz v2, :cond_a

    .line 218
    .line 219
    goto :goto_4

    .line 220
    :cond_a
    new-array v2, v0, [Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 221
    .line 222
    aput-object v8, v2, v1

    .line 223
    .line 224
    const/4 v3, 0x1

    .line 225
    aput-object v10, v2, v3

    .line 226
    .line 227
    const/4 v3, 0x2

    .line 228
    aput-object v12, v2, v3

    .line 229
    .line 230
    invoke-static {v2}, Lcom/google/zxing/ResultPoint;->orderBestPatterns([Lcom/google/zxing/ResultPoint;)V

    .line 231
    .line 232
    .line 233
    new-instance v12, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    .line 234
    .line 235
    invoke-direct {v12, v2}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;-><init>([Lcom/google/zxing/qrcode/detector/FinderPattern;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v12}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 239
    .line 240
    .line 241
    move-result-object v15

    .line 242
    invoke-virtual {v12}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getBottomLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    invoke-static {v15, v0}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    .line 247
    .line 248
    .line 249
    move-result v0

    .line 250
    invoke-virtual {v12}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopRight()Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 251
    .line 252
    .line 253
    move-result-object v15

    .line 254
    invoke-virtual {v12}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getBottomLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    invoke-static {v15, v1}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    .line 259
    .line 260
    .line 261
    move-result v1

    .line 262
    invoke-virtual {v12}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 263
    .line 264
    .line 265
    move-result-object v15

    .line 266
    invoke-virtual {v12}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopRight()Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 267
    .line 268
    .line 269
    move-result-object v12

    .line 270
    invoke-static {v15, v12}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    .line 271
    .line 272
    .line 273
    move-result v12

    .line 274
    add-float v15, v0, v12

    .line 275
    .line 276
    invoke-virtual {v8}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    .line 277
    .line 278
    .line 279
    move-result v17

    .line 280
    const/high16 v18, 0x40000000    # 2.0f

    .line 281
    .line 282
    mul-float v17, v17, v18

    .line 283
    .line 284
    div-float v15, v15, v17

    .line 285
    .line 286
    const/high16 v17, 0x43340000    # 180.0f

    .line 287
    .line 288
    cmpl-float v17, v15, v17

    .line 289
    .line 290
    if-gtz v17, :cond_8

    .line 291
    .line 292
    const/high16 v17, 0x41100000    # 9.0f

    .line 293
    .line 294
    cmpg-float v15, v15, v17

    .line 295
    .line 296
    if-gez v15, :cond_b

    .line 297
    .line 298
    goto :goto_6

    .line 299
    :cond_b
    sub-float v15, v0, v12

    .line 300
    .line 301
    invoke-static {v0, v12}, Ljava/lang/Math;->min(FF)F

    .line 302
    .line 303
    .line 304
    move-result v17

    .line 305
    div-float v15, v15, v17

    .line 306
    .line 307
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    .line 308
    .line 309
    .line 310
    move-result v15

    .line 311
    const v17, 0x3dcccccd    # 0.1f

    .line 312
    .line 313
    .line 314
    cmpl-float v15, v15, v17

    .line 315
    .line 316
    if-ltz v15, :cond_c

    .line 317
    .line 318
    goto/16 :goto_6

    .line 319
    .line 320
    :cond_c
    move-object v15, v4

    .line 321
    float-to-double v3, v0

    .line 322
    mul-double v3, v3, v3

    .line 323
    .line 324
    float-to-double v13, v12

    .line 325
    mul-double v13, v13, v13

    .line 326
    .line 327
    add-double/2addr v13, v3

    .line 328
    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    .line 329
    .line 330
    .line 331
    move-result-wide v3

    .line 332
    double-to-float v3, v3

    .line 333
    sub-float v4, v1, v3

    .line 334
    .line 335
    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    .line 336
    .line 337
    .line 338
    move-result v1

    .line 339
    div-float/2addr v4, v1

    .line 340
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 341
    .line 342
    .line 343
    move-result v1

    .line 344
    cmpl-float v1, v1, v17

    .line 345
    .line 346
    if-ltz v1, :cond_d

    .line 347
    .line 348
    goto/16 :goto_7

    .line 349
    .line 350
    :cond_d
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    .line 352
    .line 353
    goto/16 :goto_7

    .line 354
    .line 355
    :goto_8
    add-int/2addr v11, v1

    .line 356
    move-object v4, v15

    .line 357
    const/4 v0, 0x3

    .line 358
    const/4 v1, 0x0

    .line 359
    const/4 v2, 0x2

    .line 360
    const/4 v3, 0x1

    .line 361
    const v13, 0x3d4ccccd    # 0.05f

    .line 362
    .line 363
    .line 364
    const/high16 v14, 0x3f000000    # 0.5f

    .line 365
    .line 366
    goto/16 :goto_5

    .line 367
    .line 368
    :goto_9
    add-int/2addr v9, v1

    .line 369
    move-object v4, v15

    .line 370
    const/4 v0, 0x3

    .line 371
    const/4 v1, 0x0

    .line 372
    const/4 v2, 0x2

    .line 373
    const/4 v3, 0x1

    .line 374
    goto/16 :goto_3

    .line 375
    .line 376
    :goto_a
    add-int/2addr v7, v1

    .line 377
    move-object v4, v15

    .line 378
    const/4 v0, 0x3

    .line 379
    const/4 v1, 0x0

    .line 380
    const/4 v2, 0x2

    .line 381
    const/4 v3, 0x1

    .line 382
    goto/16 :goto_1

    .line 383
    .line 384
    :cond_e
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 385
    .line 386
    .line 387
    move-result v0

    .line 388
    if-nez v0, :cond_f

    .line 389
    .line 390
    sget-object v0, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->EMPTY_FP_2D_ARRAY:[[Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 391
    .line 392
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 393
    .line 394
    .line 395
    move-result-object v0

    .line 396
    check-cast v0, [[Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 397
    .line 398
    return-object v0

    .line 399
    :cond_f
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 400
    .line 401
    .line 402
    move-result-object v0

    .line 403
    throw v0

    .line 404
    :cond_10
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 405
    .line 406
    .line 407
    move-result-object v0

    .line 408
    throw v0
.end method


# virtual methods
.method public findMulti(Ljava/util/Map;)[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)[",
            "Lcom/google/zxing/qrcode/detector/FinderPatternInfo;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    sget-object v2, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    .line 6
    .line 7
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->getImage()Lcom/google/zxing/common/BitMatrix;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    invoke-virtual {v2}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    mul-int/lit8 v5, v3, 0x3

    .line 29
    .line 30
    div-int/lit16 v5, v5, 0x184

    .line 31
    .line 32
    const/4 v6, 0x3

    .line 33
    if-lt v5, v6, :cond_1

    .line 34
    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    :cond_1
    const/4 v5, 0x3

    .line 38
    :cond_2
    const/4 p1, 0x5

    .line 39
    new-array p1, p1, [I

    .line 40
    .line 41
    add-int/lit8 v7, v5, -0x1

    .line 42
    .line 43
    :goto_1
    if-ge v7, v3, :cond_a

    .line 44
    .line 45
    invoke-static {p1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->doClearCounts([I)V

    .line 46
    .line 47
    .line 48
    const/4 v8, 0x0

    .line 49
    const/4 v9, 0x0

    .line 50
    :goto_2
    if-ge v8, v4, :cond_8

    .line 51
    .line 52
    invoke-virtual {v2, v8, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    .line 53
    .line 54
    .line 55
    move-result v10

    .line 56
    if-eqz v10, :cond_4

    .line 57
    .line 58
    and-int/lit8 v10, v9, 0x1

    .line 59
    .line 60
    if-ne v10, v1, :cond_3

    .line 61
    .line 62
    add-int/lit8 v9, v9, 0x1

    .line 63
    .line 64
    :cond_3
    aget v10, p1, v9

    .line 65
    .line 66
    add-int/2addr v10, v1

    .line 67
    aput v10, p1, v9

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_4
    and-int/lit8 v10, v9, 0x1

    .line 71
    .line 72
    if-nez v10, :cond_7

    .line 73
    .line 74
    const/4 v10, 0x4

    .line 75
    if-ne v9, v10, :cond_6

    .line 76
    .line 77
    invoke-static {p1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    .line 78
    .line 79
    .line 80
    move-result v9

    .line 81
    if-eqz v9, :cond_5

    .line 82
    .line 83
    invoke-virtual {p0, p1, v7, v8}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->handlePossibleCenter([III)Z

    .line 84
    .line 85
    .line 86
    move-result v9

    .line 87
    if-eqz v9, :cond_5

    .line 88
    .line 89
    invoke-static {p1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->doClearCounts([I)V

    .line 90
    .line 91
    .line 92
    const/4 v9, 0x0

    .line 93
    goto :goto_3

    .line 94
    :cond_5
    invoke-static {p1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->doShiftCounts2([I)V

    .line 95
    .line 96
    .line 97
    const/4 v9, 0x3

    .line 98
    goto :goto_3

    .line 99
    :cond_6
    add-int/lit8 v9, v9, 0x1

    .line 100
    .line 101
    aget v10, p1, v9

    .line 102
    .line 103
    add-int/2addr v10, v1

    .line 104
    aput v10, p1, v9

    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_7
    aget v10, p1, v9

    .line 108
    .line 109
    add-int/2addr v10, v1

    .line 110
    aput v10, p1, v9

    .line 111
    .line 112
    :goto_3
    add-int/lit8 v8, v8, 0x1

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_8
    invoke-static {p1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    .line 116
    .line 117
    .line 118
    move-result v8

    .line 119
    if-eqz v8, :cond_9

    .line 120
    .line 121
    invoke-virtual {p0, p1, v7, v4}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->handlePossibleCenter([III)Z

    .line 122
    .line 123
    .line 124
    :cond_9
    add-int/2addr v7, v5

    .line 125
    goto :goto_1

    .line 126
    :cond_a
    invoke-direct {p0}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->selectMultipleBestPatterns()[[Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    new-instance v1, Ljava/util/ArrayList;

    .line 131
    .line 132
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .line 134
    .line 135
    array-length v2, p1

    .line 136
    :goto_4
    if-ge v0, v2, :cond_b

    .line 137
    .line 138
    aget-object v3, p1, v0

    .line 139
    .line 140
    invoke-static {v3}, Lcom/google/zxing/ResultPoint;->orderBestPatterns([Lcom/google/zxing/ResultPoint;)V

    .line 141
    .line 142
    .line 143
    new-instance v4, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    .line 144
    .line 145
    invoke-direct {v4, v3}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;-><init>([Lcom/google/zxing/qrcode/detector/FinderPattern;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    add-int/lit8 v0, v0, 0x1

    .line 152
    .line 153
    goto :goto_4

    .line 154
    :cond_b
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    if-eqz p1, :cond_c

    .line 159
    .line 160
    sget-object p1, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->EMPTY_RESULT_ARRAY:[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    .line 161
    .line 162
    return-object p1

    .line 163
    :cond_c
    sget-object p1, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->EMPTY_RESULT_ARRAY:[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    .line 164
    .line 165
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    check-cast p1, [Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    .line 170
    .line 171
    return-object p1
.end method
