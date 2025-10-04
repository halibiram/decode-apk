.class abstract Lcom/google/common/math/ToDoubleRounder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation runtime Lcom/google/common/math/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<X:",
        "Ljava/lang/Number;",
        ":",
        "Ljava/lang/Comparable<",
        "TX;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public abstract minus(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TX;TX;)TX;"
        }
    .end annotation
.end method

.method public final roundToDouble(Ljava/lang/Number;Ljava/math/RoundingMode;)D
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TX;",
            "Ljava/math/RoundingMode;",
            ")D"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    const/4 v4, 0x2

    .line 9
    new-array v5, v4, [J

    .line 10
    .line 11
    fill-array-data v5, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-static {v1, v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 25
    .line 26
    new-array v5, v4, [J

    .line 27
    .line 28
    fill-array-data v5, :array_1

    .line 29
    .line 30
    .line 31
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    move-object/from16 v5, p2

    .line 39
    .line 40
    invoke-static {v5, v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    invoke-virtual/range {p0 .. p1}, Lcom/google/common/math/ToDoubleRounder;->roundToDoubleArbitrarily(Ljava/lang/Number;)D

    .line 44
    .line 45
    .line 46
    move-result-wide v6

    .line 47
    invoke-static {v6, v7}, Ljava/lang/Double;->isInfinite(D)Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    const-wide/high16 v8, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 52
    .line 53
    const-wide/high16 v10, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 54
    .line 55
    if-eqz v3, :cond_2

    .line 56
    .line 57
    sget-object v3, Lcom/google/common/math/ToDoubleRounder$1;->$SwitchMap$java$math$RoundingMode:[I

    .line 58
    .line 59
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    .line 60
    .line 61
    .line 62
    move-result v12

    .line 63
    aget v3, v3, v12

    .line 64
    .line 65
    const-wide v12, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    packed-switch v3, :pswitch_data_0

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :pswitch_0
    new-instance v2, Ljava/lang/ArithmeticException;

    .line 75
    .line 76
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    add-int/lit8 v3, v3, 0x2c

    .line 85
    .line 86
    invoke-static {v3, v1}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 91
    .line 92
    const/4 v4, 0x7

    .line 93
    new-array v4, v4, [J

    .line 94
    .line 95
    fill-array-data v4, :array_2

    .line 96
    .line 97
    .line 98
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 99
    .line 100
    .line 101
    invoke-static {v3, v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-direct {v2, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw v2

    .line 109
    :pswitch_1
    return-wide v6

    .line 110
    :pswitch_2
    cmpl-double v1, v6, v10

    .line 111
    .line 112
    if-nez v1, :cond_0

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_0
    const-wide v10, -0x10000000000001L

    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    :goto_0
    return-wide v10

    .line 121
    :pswitch_3
    cmpl-double v1, v6, v10

    .line 122
    .line 123
    if-nez v1, :cond_1

    .line 124
    .line 125
    move-wide v8, v12

    .line 126
    :cond_1
    return-wide v8

    .line 127
    :pswitch_4
    invoke-virtual/range {p0 .. p1}, Lcom/google/common/math/ToDoubleRounder;->sign(Ljava/lang/Number;)I

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    int-to-double v1, v1

    .line 132
    mul-double v1, v1, v12

    .line 133
    .line 134
    return-wide v1

    .line 135
    :cond_2
    :goto_1
    sget-object v3, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    .line 136
    .line 137
    invoke-virtual {v0, v6, v7, v3}, Lcom/google/common/math/ToDoubleRounder;->toX(DLjava/math/RoundingMode;)Ljava/lang/Number;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    move-object v12, v1

    .line 142
    check-cast v12, Ljava/lang/Comparable;

    .line 143
    .line 144
    invoke-interface {v12, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 145
    .line 146
    .line 147
    move-result v12

    .line 148
    sget-object v13, Lcom/google/common/math/ToDoubleRounder$1;->$SwitchMap$java$math$RoundingMode:[I

    .line 149
    .line 150
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    .line 151
    .line 152
    .line 153
    move-result v14

    .line 154
    aget v14, v13, v14

    .line 155
    .line 156
    packed-switch v14, :pswitch_data_1

    .line 157
    .line 158
    .line 159
    new-instance v1, Ljava/lang/AssertionError;

    .line 160
    .line 161
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 162
    .line 163
    new-array v2, v2, [J

    .line 164
    .line 165
    fill-array-data v2, :array_3

    .line 166
    .line 167
    .line 168
    invoke-direct {v3, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    throw v1

    .line 179
    :pswitch_5
    if-nez v12, :cond_3

    .line 180
    .line 181
    const/4 v1, 0x1

    .line 182
    goto :goto_2

    .line 183
    :cond_3
    const/4 v1, 0x0

    .line 184
    :goto_2
    invoke-static {v1}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 185
    .line 186
    .line 187
    return-wide v6

    .line 188
    :pswitch_6
    invoke-virtual/range {p0 .. p1}, Lcom/google/common/math/ToDoubleRounder;->sign(Ljava/lang/Number;)I

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    if-ltz v1, :cond_5

    .line 193
    .line 194
    if-gtz v12, :cond_4

    .line 195
    .line 196
    goto :goto_3

    .line 197
    :cond_4
    invoke-static {v6, v7}, Ljava/lang/Math;->nextUp(D)D

    .line 198
    .line 199
    .line 200
    move-result-wide v6

    .line 201
    :goto_3
    return-wide v6

    .line 202
    :cond_5
    if-ltz v12, :cond_6

    .line 203
    .line 204
    goto :goto_4

    .line 205
    :cond_6
    invoke-static {v6, v7}, Lcom/google/common/math/DoubleUtils;->nextDown(D)D

    .line 206
    .line 207
    .line 208
    move-result-wide v6

    .line 209
    :goto_4
    return-wide v6

    .line 210
    :pswitch_7
    if-gtz v12, :cond_7

    .line 211
    .line 212
    goto :goto_5

    .line 213
    :cond_7
    invoke-static {v6, v7}, Ljava/lang/Math;->nextUp(D)D

    .line 214
    .line 215
    .line 216
    move-result-wide v6

    .line 217
    :goto_5
    return-wide v6

    .line 218
    :pswitch_8
    if-ltz v12, :cond_8

    .line 219
    .line 220
    goto :goto_6

    .line 221
    :cond_8
    invoke-static {v6, v7}, Lcom/google/common/math/DoubleUtils;->nextDown(D)D

    .line 222
    .line 223
    .line 224
    move-result-wide v6

    .line 225
    :goto_6
    return-wide v6

    .line 226
    :pswitch_9
    if-ltz v12, :cond_a

    .line 227
    .line 228
    invoke-static {v6, v7}, Ljava/lang/Math;->nextUp(D)D

    .line 229
    .line 230
    .line 231
    move-result-wide v8

    .line 232
    cmpl-double v12, v8, v10

    .line 233
    .line 234
    if-nez v12, :cond_9

    .line 235
    .line 236
    return-wide v6

    .line 237
    :cond_9
    sget-object v10, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    .line 238
    .line 239
    invoke-virtual {v0, v8, v9, v10}, Lcom/google/common/math/ToDoubleRounder;->toX(DLjava/math/RoundingMode;)Ljava/lang/Number;

    .line 240
    .line 241
    .line 242
    move-result-object v10

    .line 243
    goto :goto_7

    .line 244
    :cond_a
    invoke-static {v6, v7}, Lcom/google/common/math/DoubleUtils;->nextDown(D)D

    .line 245
    .line 246
    .line 247
    move-result-wide v10

    .line 248
    cmpl-double v12, v10, v8

    .line 249
    .line 250
    if-nez v12, :cond_b

    .line 251
    .line 252
    return-wide v6

    .line 253
    :cond_b
    sget-object v8, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    .line 254
    .line 255
    invoke-virtual {v0, v10, v11, v8}, Lcom/google/common/math/ToDoubleRounder;->toX(DLjava/math/RoundingMode;)Ljava/lang/Number;

    .line 256
    .line 257
    .line 258
    move-result-object v8

    .line 259
    move-wide v15, v10

    .line 260
    move-object v10, v3

    .line 261
    move-object v3, v8

    .line 262
    move-wide v8, v6

    .line 263
    move-wide v6, v15

    .line 264
    :goto_7
    invoke-virtual {v0, v1, v3}, Lcom/google/common/math/ToDoubleRounder;->minus(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    .line 265
    .line 266
    .line 267
    move-result-object v3

    .line 268
    invoke-virtual {v0, v10, v1}, Lcom/google/common/math/ToDoubleRounder;->minus(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    .line 269
    .line 270
    .line 271
    move-result-object v10

    .line 272
    check-cast v3, Ljava/lang/Comparable;

    .line 273
    .line 274
    invoke-interface {v3, v10}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 275
    .line 276
    .line 277
    move-result v3

    .line 278
    if-gez v3, :cond_c

    .line 279
    .line 280
    return-wide v6

    .line 281
    :cond_c
    if-lez v3, :cond_d

    .line 282
    .line 283
    return-wide v8

    .line 284
    :cond_d
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    .line 285
    .line 286
    .line 287
    move-result v3

    .line 288
    aget v3, v13, v3

    .line 289
    .line 290
    if-eq v3, v4, :cond_12

    .line 291
    .line 292
    if-eq v3, v2, :cond_10

    .line 293
    .line 294
    const/4 v4, 0x4

    .line 295
    if-ne v3, v4, :cond_f

    .line 296
    .line 297
    invoke-virtual/range {p0 .. p1}, Lcom/google/common/math/ToDoubleRounder;->sign(Ljava/lang/Number;)I

    .line 298
    .line 299
    .line 300
    move-result v1

    .line 301
    if-ltz v1, :cond_e

    .line 302
    .line 303
    move-wide v6, v8

    .line 304
    :cond_e
    return-wide v6

    .line 305
    :cond_f
    new-instance v1, Ljava/lang/AssertionError;

    .line 306
    .line 307
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 308
    .line 309
    new-array v2, v2, [J

    .line 310
    .line 311
    fill-array-data v2, :array_4

    .line 312
    .line 313
    .line 314
    invoke-direct {v3, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v2

    .line 321
    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 322
    .line 323
    .line 324
    throw v1

    .line 325
    :cond_10
    invoke-virtual/range {p0 .. p1}, Lcom/google/common/math/ToDoubleRounder;->sign(Ljava/lang/Number;)I

    .line 326
    .line 327
    .line 328
    move-result v1

    .line 329
    if-ltz v1, :cond_11

    .line 330
    .line 331
    goto :goto_8

    .line 332
    :cond_11
    move-wide v6, v8

    .line 333
    :goto_8
    return-wide v6

    .line 334
    :cond_12
    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 335
    .line 336
    .line 337
    move-result-wide v1

    .line 338
    const-wide/16 v3, 0x1

    .line 339
    .line 340
    and-long/2addr v1, v3

    .line 341
    const-wide/16 v3, 0x0

    .line 342
    .line 343
    cmp-long v5, v1, v3

    .line 344
    .line 345
    if-nez v5, :cond_13

    .line 346
    .line 347
    goto :goto_9

    .line 348
    :cond_13
    move-wide v6, v8

    .line 349
    :goto_9
    return-wide v6

    .line 350
    :pswitch_a
    invoke-virtual/range {p0 .. p1}, Lcom/google/common/math/ToDoubleRounder;->sign(Ljava/lang/Number;)I

    .line 351
    .line 352
    .line 353
    move-result v1

    .line 354
    if-ltz v1, :cond_15

    .line 355
    .line 356
    if-ltz v12, :cond_14

    .line 357
    .line 358
    goto :goto_a

    .line 359
    :cond_14
    invoke-static {v6, v7}, Lcom/google/common/math/DoubleUtils;->nextDown(D)D

    .line 360
    .line 361
    .line 362
    move-result-wide v6

    .line 363
    :goto_a
    return-wide v6

    .line 364
    :cond_15
    if-gtz v12, :cond_16

    .line 365
    .line 366
    goto :goto_b

    .line 367
    :cond_16
    invoke-static {v6, v7}, Ljava/lang/Math;->nextUp(D)D

    .line 368
    .line 369
    .line 370
    move-result-wide v6

    .line 371
    :goto_b
    return-wide v6

    .line 372
    nop

    .line 373
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

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
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

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
    :array_0
    .array-data 8
        -0x1632e306cbed4102L    # -4.4569393619404095E201
        -0x7f074c9cd1cc8693L    # -5.62800162149517E-304
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
    :array_1
    .array-data 8
        -0x659be0b956674e2bL
        -0x59092f07f77ef3c2L    # -5.522384975257185E-121
    .end array-data

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
        -0x436b0509584eaac3L    # -7.279012863769252E-17
        0x1d51e6d0de73e1bdL
        -0x1ece7e6c5b8dd0d6L    # -1.5382558718025888E160
        0x1d26892e93a28a27L
        -0x21aadad55f7b2c11L    # -2.6403976110787187E146
        -0x524a0f016a5a4240L    # -1.7233969282436082E-88
        0x454d6b3db512c276L    # 7.113056056316935E25
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
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    :array_3
    .array-data 8
        0x78b5eaeefc4001beL    # 2.964225501914468E273
        -0x2b4440e6a9cc4bd2L    # -1.5172127318174364E100
        -0x735bf0b69d204219L    # -8.965578221090027E-248
    .end array-data

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
        -0x40a068db308c23eL    # -1.338421447002276E289
        -0x545f08023945975aL    # -1.5516022810267946E-98
        -0x65c141f7fb1103acL    # -2.894004032863433E-182
    .end array-data
.end method

.method public abstract roundToDoubleArbitrarily(Ljava/lang/Number;)D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TX;)D"
        }
    .end annotation
.end method

.method public abstract sign(Ljava/lang/Number;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TX;)I"
        }
    .end annotation
.end method

.method public abstract toX(DLjava/math/RoundingMode;)Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Ljava/math/RoundingMode;",
            ")TX;"
        }
    .end annotation
.end method
