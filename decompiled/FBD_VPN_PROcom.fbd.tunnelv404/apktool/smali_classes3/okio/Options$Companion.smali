.class public final Lokio/Options$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/Options;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001J#\u0010\u0006\u001a\u00020\u00052\u0012\u0010\u0004\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00030\u0002\"\u00020\u0003H\u0007\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lokio/Options$Companion;",
        "",
        "",
        "Lokio/ByteString;",
        "byteStrings",
        "Lokio/Options;",
        "of",
        "([Lokio/ByteString;)Lokio/Options;",
        "okio"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOptions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Options.kt\nokio/Options$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 Util.kt\nokio/-SegmentedByteString\n*L\n1#1,238:1\n1#2:239\n13467#3,3:240\n73#4:243\n73#4:244\n*S KotlinDebug\n*F\n+ 1 Options.kt\nokio/Options$Companion\n*L\n48#1:240,3\n153#1:243\n210#1:244\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(JLokio/Buffer;ILjava/util/List;IILjava/util/ArrayList;)V
    .locals 19

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    move/from16 v1, p3

    .line 4
    .line 5
    move-object/from16 v10, p4

    .line 6
    .line 7
    move/from16 v2, p5

    .line 8
    .line 9
    move/from16 v11, p6

    .line 10
    .line 11
    move-object/from16 v12, p7

    .line 12
    .line 13
    const-string v3, "Failed requirement."

    .line 14
    .line 15
    if-ge v2, v11, :cond_11

    .line 16
    .line 17
    move v4, v2

    .line 18
    :goto_0
    if-ge v4, v11, :cond_1

    .line 19
    .line 20
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    check-cast v5, Lokio/ByteString;

    .line 25
    .line 26
    invoke-virtual {v5}, Lokio/ByteString;->size()I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    if-lt v5, v1, :cond_0

    .line 31
    .line 32
    add-int/lit8 v4, v4, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 36
    .line 37
    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v0

    .line 41
    :cond_1
    invoke-interface/range {p4 .. p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    check-cast v3, Lokio/ByteString;

    .line 46
    .line 47
    add-int/lit8 v4, v11, -0x1

    .line 48
    .line 49
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    check-cast v4, Lokio/ByteString;

    .line 54
    .line 55
    invoke-virtual {v3}, Lokio/ByteString;->size()I

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    const/4 v13, -0x1

    .line 60
    if-ne v1, v5, :cond_2

    .line 61
    .line 62
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    check-cast v3, Ljava/lang/Number;

    .line 67
    .line 68
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    add-int/lit8 v2, v2, 0x1

    .line 73
    .line 74
    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    check-cast v5, Lokio/ByteString;

    .line 79
    .line 80
    move v6, v2

    .line 81
    move v2, v3

    .line 82
    move-object v3, v5

    .line 83
    goto :goto_1

    .line 84
    :cond_2
    move v6, v2

    .line 85
    const/4 v2, -0x1

    .line 86
    :goto_1
    invoke-virtual {v3, v1}, Lokio/ByteString;->getByte(I)B

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    invoke-virtual {v4, v1}, Lokio/ByteString;->getByte(I)B

    .line 91
    .line 92
    .line 93
    move-result v7

    .line 94
    const/4 v8, 0x4

    .line 95
    const/4 v9, 0x2

    .line 96
    if-eq v5, v7, :cond_c

    .line 97
    .line 98
    add-int/lit8 v3, v6, 0x1

    .line 99
    .line 100
    const/4 v4, 0x1

    .line 101
    :goto_2
    if-ge v3, v11, :cond_4

    .line 102
    .line 103
    add-int/lit8 v5, v3, -0x1

    .line 104
    .line 105
    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    check-cast v5, Lokio/ByteString;

    .line 110
    .line 111
    invoke-virtual {v5, v1}, Lokio/ByteString;->getByte(I)B

    .line 112
    .line 113
    .line 114
    move-result v5

    .line 115
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v7

    .line 119
    check-cast v7, Lokio/ByteString;

    .line 120
    .line 121
    invoke-virtual {v7, v1}, Lokio/ByteString;->getByte(I)B

    .line 122
    .line 123
    .line 124
    move-result v7

    .line 125
    if-eq v5, v7, :cond_3

    .line 126
    .line 127
    add-int/lit8 v4, v4, 0x1

    .line 128
    .line 129
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lokio/Buffer;->size()J

    .line 133
    .line 134
    .line 135
    move-result-wide v14

    .line 136
    int-to-long v7, v8

    .line 137
    div-long/2addr v14, v7

    .line 138
    add-long v14, v14, p0

    .line 139
    .line 140
    move-wide/from16 v16, v7

    .line 141
    .line 142
    int-to-long v7, v9

    .line 143
    add-long/2addr v14, v7

    .line 144
    mul-int/lit8 v3, v4, 0x2

    .line 145
    .line 146
    int-to-long v7, v3

    .line 147
    add-long/2addr v14, v7

    .line 148
    invoke-virtual {v0, v4}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v2}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 152
    .line 153
    .line 154
    move v2, v6

    .line 155
    :goto_3
    if-ge v2, v11, :cond_7

    .line 156
    .line 157
    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    check-cast v3, Lokio/ByteString;

    .line 162
    .line 163
    invoke-virtual {v3, v1}, Lokio/ByteString;->getByte(I)B

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    if-eq v2, v6, :cond_5

    .line 168
    .line 169
    add-int/lit8 v4, v2, -0x1

    .line 170
    .line 171
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v4

    .line 175
    check-cast v4, Lokio/ByteString;

    .line 176
    .line 177
    invoke-virtual {v4, v1}, Lokio/ByteString;->getByte(I)B

    .line 178
    .line 179
    .line 180
    move-result v4

    .line 181
    if-eq v3, v4, :cond_6

    .line 182
    .line 183
    :cond_5
    and-int/lit16 v3, v3, 0xff

    .line 184
    .line 185
    invoke-virtual {v0, v3}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 186
    .line 187
    .line 188
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 189
    .line 190
    goto :goto_3

    .line 191
    :cond_7
    new-instance v9, Lokio/Buffer;

    .line 192
    .line 193
    invoke-direct {v9}, Lokio/Buffer;-><init>()V

    .line 194
    .line 195
    .line 196
    move v7, v6

    .line 197
    :goto_4
    if-ge v7, v11, :cond_b

    .line 198
    .line 199
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    check-cast v2, Lokio/ByteString;

    .line 204
    .line 205
    invoke-virtual {v2, v1}, Lokio/ByteString;->getByte(I)B

    .line 206
    .line 207
    .line 208
    move-result v2

    .line 209
    add-int/lit8 v3, v7, 0x1

    .line 210
    .line 211
    move v4, v3

    .line 212
    :goto_5
    if-ge v4, v11, :cond_9

    .line 213
    .line 214
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v5

    .line 218
    check-cast v5, Lokio/ByteString;

    .line 219
    .line 220
    invoke-virtual {v5, v1}, Lokio/ByteString;->getByte(I)B

    .line 221
    .line 222
    .line 223
    move-result v5

    .line 224
    if-eq v2, v5, :cond_8

    .line 225
    .line 226
    move v8, v4

    .line 227
    goto :goto_6

    .line 228
    :cond_8
    add-int/lit8 v4, v4, 0x1

    .line 229
    .line 230
    goto :goto_5

    .line 231
    :cond_9
    move v8, v11

    .line 232
    :goto_6
    if-ne v3, v8, :cond_a

    .line 233
    .line 234
    add-int/lit8 v2, v1, 0x1

    .line 235
    .line 236
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v3

    .line 240
    check-cast v3, Lokio/ByteString;

    .line 241
    .line 242
    invoke-virtual {v3}, Lokio/ByteString;->size()I

    .line 243
    .line 244
    .line 245
    move-result v3

    .line 246
    if-ne v2, v3, :cond_a

    .line 247
    .line 248
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    check-cast v2, Ljava/lang/Number;

    .line 253
    .line 254
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 255
    .line 256
    .line 257
    move-result v2

    .line 258
    invoke-virtual {v0, v2}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 259
    .line 260
    .line 261
    move/from16 v18, v8

    .line 262
    .line 263
    move-object v13, v9

    .line 264
    goto :goto_7

    .line 265
    :cond_a
    invoke-virtual {v9}, Lokio/Buffer;->size()J

    .line 266
    .line 267
    .line 268
    move-result-wide v2

    .line 269
    div-long v2, v2, v16

    .line 270
    .line 271
    add-long/2addr v2, v14

    .line 272
    long-to-int v3, v2

    .line 273
    mul-int/lit8 v3, v3, -0x1

    .line 274
    .line 275
    invoke-virtual {v0, v3}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 276
    .line 277
    .line 278
    add-int/lit8 v5, v1, 0x1

    .line 279
    .line 280
    move-wide v2, v14

    .line 281
    move-object v4, v9

    .line 282
    move-object/from16 v6, p4

    .line 283
    .line 284
    move/from16 v18, v8

    .line 285
    .line 286
    move-object v13, v9

    .line 287
    move-object/from16 v9, p7

    .line 288
    .line 289
    invoke-static/range {v2 .. v9}, Lokio/Options$Companion;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(JLokio/Buffer;ILjava/util/List;IILjava/util/ArrayList;)V

    .line 290
    .line 291
    .line 292
    :goto_7
    move-object v9, v13

    .line 293
    move/from16 v7, v18

    .line 294
    .line 295
    const/4 v13, -0x1

    .line 296
    goto :goto_4

    .line 297
    :cond_b
    move-object v13, v9

    .line 298
    invoke-virtual {v0, v13}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    .line 299
    .line 300
    .line 301
    goto/16 :goto_a

    .line 302
    .line 303
    :cond_c
    invoke-virtual {v3}, Lokio/ByteString;->size()I

    .line 304
    .line 305
    .line 306
    move-result v5

    .line 307
    invoke-virtual {v4}, Lokio/ByteString;->size()I

    .line 308
    .line 309
    .line 310
    move-result v7

    .line 311
    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    .line 312
    .line 313
    .line 314
    move-result v5

    .line 315
    const/4 v7, 0x0

    .line 316
    move v13, v1

    .line 317
    :goto_8
    if-ge v13, v5, :cond_d

    .line 318
    .line 319
    invoke-virtual {v3, v13}, Lokio/ByteString;->getByte(I)B

    .line 320
    .line 321
    .line 322
    move-result v14

    .line 323
    invoke-virtual {v4, v13}, Lokio/ByteString;->getByte(I)B

    .line 324
    .line 325
    .line 326
    move-result v15

    .line 327
    if-ne v14, v15, :cond_d

    .line 328
    .line 329
    add-int/lit8 v7, v7, 0x1

    .line 330
    .line 331
    add-int/lit8 v13, v13, 0x1

    .line 332
    .line 333
    goto :goto_8

    .line 334
    :cond_d
    invoke-virtual/range {p2 .. p2}, Lokio/Buffer;->size()J

    .line 335
    .line 336
    .line 337
    move-result-wide v4

    .line 338
    int-to-long v13, v8

    .line 339
    div-long/2addr v4, v13

    .line 340
    add-long v4, v4, p0

    .line 341
    .line 342
    int-to-long v8, v9

    .line 343
    add-long/2addr v4, v8

    .line 344
    int-to-long v8, v7

    .line 345
    add-long/2addr v4, v8

    .line 346
    const-wide/16 v8, 0x1

    .line 347
    .line 348
    add-long/2addr v4, v8

    .line 349
    neg-int v8, v7

    .line 350
    invoke-virtual {v0, v8}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 351
    .line 352
    .line 353
    invoke-virtual {v0, v2}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 354
    .line 355
    .line 356
    add-int/2addr v7, v1

    .line 357
    :goto_9
    if-ge v1, v7, :cond_e

    .line 358
    .line 359
    invoke-virtual {v3, v1}, Lokio/ByteString;->getByte(I)B

    .line 360
    .line 361
    .line 362
    move-result v2

    .line 363
    and-int/lit16 v2, v2, 0xff

    .line 364
    .line 365
    invoke-virtual {v0, v2}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 366
    .line 367
    .line 368
    add-int/lit8 v1, v1, 0x1

    .line 369
    .line 370
    goto :goto_9

    .line 371
    :cond_e
    add-int/lit8 v1, v6, 0x1

    .line 372
    .line 373
    if-ne v1, v11, :cond_10

    .line 374
    .line 375
    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 376
    .line 377
    .line 378
    move-result-object v1

    .line 379
    check-cast v1, Lokio/ByteString;

    .line 380
    .line 381
    invoke-virtual {v1}, Lokio/ByteString;->size()I

    .line 382
    .line 383
    .line 384
    move-result v1

    .line 385
    if-ne v7, v1, :cond_f

    .line 386
    .line 387
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    move-result-object v1

    .line 391
    check-cast v1, Ljava/lang/Number;

    .line 392
    .line 393
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 394
    .line 395
    .line 396
    move-result v1

    .line 397
    invoke-virtual {v0, v1}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 398
    .line 399
    .line 400
    goto :goto_a

    .line 401
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 402
    .line 403
    const-string v1, "Check failed."

    .line 404
    .line 405
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    throw v0

    .line 409
    :cond_10
    new-instance v9, Lokio/Buffer;

    .line 410
    .line 411
    invoke-direct {v9}, Lokio/Buffer;-><init>()V

    .line 412
    .line 413
    .line 414
    invoke-virtual {v9}, Lokio/Buffer;->size()J

    .line 415
    .line 416
    .line 417
    move-result-wide v1

    .line 418
    div-long/2addr v1, v13

    .line 419
    add-long/2addr v1, v4

    .line 420
    long-to-int v2, v1

    .line 421
    const/4 v1, -0x1

    .line 422
    mul-int/lit8 v2, v2, -0x1

    .line 423
    .line 424
    invoke-virtual {v0, v2}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 425
    .line 426
    .line 427
    move-wide v1, v4

    .line 428
    move-object v3, v9

    .line 429
    move v4, v7

    .line 430
    move-object/from16 v5, p4

    .line 431
    .line 432
    move/from16 v7, p6

    .line 433
    .line 434
    move-object/from16 v8, p7

    .line 435
    .line 436
    invoke-static/range {v1 .. v8}, Lokio/Options$Companion;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(JLokio/Buffer;ILjava/util/List;IILjava/util/ArrayList;)V

    .line 437
    .line 438
    .line 439
    invoke-virtual {v0, v9}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    .line 440
    .line 441
    .line 442
    :goto_a
    return-void

    .line 443
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 444
    .line 445
    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 446
    .line 447
    .line 448
    throw v0
.end method


# virtual methods
.method public final varargs of([Lokio/ByteString;)Lokio/Options;
    .locals 14
    .param p1    # [Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "byteStrings"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    array-length v0, p1

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, -0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance p1, Lokio/Options;

    .line 13
    .line 14
    new-array v0, v3, [Lokio/ByteString;

    .line 15
    .line 16
    filled-new-array {v3, v2}, [I

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-direct {p1, v0, v2, v1}, Lokio/Options;-><init>([Lokio/ByteString;[ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 21
    .line 22
    .line 23
    return-object p1

    .line 24
    :cond_0
    invoke-static {p1}, Lkotlin/collections/ArraysKt___ArraysKt;->toMutableList([Ljava/lang/Object;)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, L됴뒉듌땁땡딐둑딌뒷땲딐돶돠뒻땭땍돸땟둡딽뒬딀들땲둡땻들땩딹듐땤둘딤뒛돳든듻땩뒵땅뎠뒋뎹딻뎰딜땐뎹드딠딁디땯됫뎽됩땥듰딤땧돝뎠딅들둣뎻돛돴돛듼땍될듨될딅땟땻땣딃디딄뒻따뎹땧듸뎽딟딌뒝뒙땩듼된땵땦디듰됩돶돼땐땝땻도땱딁드듽돼돴도돼돠돷둠딎둣딌둥뒨돴돷둔둡땩땩뒤드뎽;->sort(Ljava/util/List;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    new-instance v11, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v11, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 38
    .line 39
    .line 40
    const/4 v5, 0x0

    .line 41
    :goto_0
    if-ge v5, v4, :cond_1

    .line 42
    .line 43
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    add-int/lit8 v5, v5, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    array-length v2, p1

    .line 54
    const/4 v10, 0x0

    .line 55
    const/4 v12, 0x0

    .line 56
    :goto_1
    if-ge v10, v2, :cond_2

    .line 57
    .line 58
    aget-object v5, p1, v10

    .line 59
    .line 60
    add-int/lit8 v13, v12, 0x1

    .line 61
    .line 62
    const/4 v6, 0x0

    .line 63
    const/4 v7, 0x0

    .line 64
    const/4 v8, 0x6

    .line 65
    const/4 v9, 0x0

    .line 66
    move-object v4, v0

    .line 67
    invoke-static/range {v4 .. v9}, Lkotlin/collections/CollectionsKt__CollectionsKt;->binarySearch$default(Ljava/util/List;Ljava/lang/Comparable;IIILjava/lang/Object;)I

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    invoke-virtual {v11, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    add-int/lit8 v10, v10, 0x1

    .line 79
    .line 80
    move v12, v13

    .line 81
    goto :goto_1

    .line 82
    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    check-cast v2, Lokio/ByteString;

    .line 87
    .line 88
    invoke-virtual {v2}, Lokio/ByteString;->size()I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-lez v2, :cond_8

    .line 93
    .line 94
    const/4 v2, 0x0

    .line 95
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    if-ge v2, v4, :cond_6

    .line 100
    .line 101
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    check-cast v4, Lokio/ByteString;

    .line 106
    .line 107
    add-int/lit8 v5, v2, 0x1

    .line 108
    .line 109
    move v6, v5

    .line 110
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 111
    .line 112
    .line 113
    move-result v7

    .line 114
    if-ge v6, v7, :cond_5

    .line 115
    .line 116
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v7

    .line 120
    check-cast v7, Lokio/ByteString;

    .line 121
    .line 122
    invoke-virtual {v7, v4}, Lokio/ByteString;->startsWith(Lokio/ByteString;)Z

    .line 123
    .line 124
    .line 125
    move-result v8

    .line 126
    if-eqz v8, :cond_5

    .line 127
    .line 128
    invoke-virtual {v7}, Lokio/ByteString;->size()I

    .line 129
    .line 130
    .line 131
    move-result v8

    .line 132
    invoke-virtual {v4}, Lokio/ByteString;->size()I

    .line 133
    .line 134
    .line 135
    move-result v9

    .line 136
    if-eq v8, v9, :cond_4

    .line 137
    .line 138
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v7

    .line 142
    check-cast v7, Ljava/lang/Number;

    .line 143
    .line 144
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    .line 145
    .line 146
    .line 147
    move-result v7

    .line 148
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v8

    .line 152
    check-cast v8, Ljava/lang/Number;

    .line 153
    .line 154
    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    .line 155
    .line 156
    .line 157
    move-result v8

    .line 158
    if-le v7, v8, :cond_3

    .line 159
    .line 160
    invoke-interface {v0, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v7

    .line 167
    check-cast v7, Ljava/lang/Number;

    .line 168
    .line 169
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    .line 170
    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 174
    .line 175
    goto :goto_3

    .line 176
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    const-string v0, "duplicate option: "

    .line 179
    .line 180
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 191
    .line 192
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    throw v0

    .line 200
    :cond_5
    move v2, v5

    .line 201
    goto :goto_2

    .line 202
    :cond_6
    new-instance v2, Lokio/Buffer;

    .line 203
    .line 204
    invoke-direct {v2}, Lokio/Buffer;-><init>()V

    .line 205
    .line 206
    .line 207
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 208
    .line 209
    .line 210
    move-result v10

    .line 211
    const/4 v7, 0x0

    .line 212
    const/4 v9, 0x0

    .line 213
    const-wide/16 v4, 0x0

    .line 214
    .line 215
    move-object v6, v2

    .line 216
    move-object v8, v0

    .line 217
    invoke-static/range {v4 .. v11}, Lokio/Options$Companion;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(JLokio/Buffer;ILjava/util/List;IILjava/util/ArrayList;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v2}, Lokio/Buffer;->size()J

    .line 221
    .line 222
    .line 223
    move-result-wide v4

    .line 224
    const/4 v0, 0x4

    .line 225
    int-to-long v6, v0

    .line 226
    div-long/2addr v4, v6

    .line 227
    long-to-int v0, v4

    .line 228
    new-array v4, v0, [I

    .line 229
    .line 230
    :goto_4
    if-ge v3, v0, :cond_7

    .line 231
    .line 232
    invoke-virtual {v2}, Lokio/Buffer;->readInt()I

    .line 233
    .line 234
    .line 235
    move-result v5

    .line 236
    aput v5, v4, v3

    .line 237
    .line 238
    add-int/lit8 v3, v3, 0x1

    .line 239
    .line 240
    goto :goto_4

    .line 241
    :cond_7
    new-instance v0, Lokio/Options;

    .line 242
    .line 243
    array-length v2, p1

    .line 244
    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    const-string v2, "copyOf(...)"

    .line 249
    .line 250
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    check-cast p1, [Lokio/ByteString;

    .line 254
    .line 255
    invoke-direct {v0, p1, v4, v1}, Lokio/Options;-><init>([Lokio/ByteString;[ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 256
    .line 257
    .line 258
    return-object v0

    .line 259
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 260
    .line 261
    const-string v0, "the empty byte string is not a supported option"

    .line 262
    .line 263
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    throw p1
.end method
