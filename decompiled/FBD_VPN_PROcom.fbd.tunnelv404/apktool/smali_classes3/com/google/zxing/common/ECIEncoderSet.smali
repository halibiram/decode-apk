.class public final Lcom/google/zxing/common/ECIEncoderSet;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final ENCODERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/nio/charset/CharsetEncoder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final encoders:[Ljava/nio/charset/CharsetEncoder;

.field private final priorityEncoderIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 23

    .line 1
    const/4 v0, 0x3

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    .line 6
    .line 7
    sput-object v1, Lcom/google/zxing/common/ECIEncoderSet;->ENCODERS:Ljava/util/List;

    .line 8
    .line 9
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    new-array v2, v2, [J

    .line 13
    .line 14
    fill-array-data v2, :array_0

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 25
    .line 26
    new-array v2, v0, [J

    .line 27
    .line 28
    fill-array-data v2, :array_1

    .line 29
    .line 30
    .line 31
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 39
    .line 40
    new-array v2, v0, [J

    .line 41
    .line 42
    fill-array-data v2, :array_2

    .line 43
    .line 44
    .line 45
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 53
    .line 54
    new-array v2, v0, [J

    .line 55
    .line 56
    fill-array-data v2, :array_3

    .line 57
    .line 58
    .line 59
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 67
    .line 68
    new-array v2, v0, [J

    .line 69
    .line 70
    fill-array-data v2, :array_4

    .line 71
    .line 72
    .line 73
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v7

    .line 80
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 81
    .line 82
    new-array v2, v0, [J

    .line 83
    .line 84
    fill-array-data v2, :array_5

    .line 85
    .line 86
    .line 87
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v8

    .line 94
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 95
    .line 96
    new-array v2, v0, [J

    .line 97
    .line 98
    fill-array-data v2, :array_6

    .line 99
    .line 100
    .line 101
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v9

    .line 108
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 109
    .line 110
    new-array v2, v0, [J

    .line 111
    .line 112
    fill-array-data v2, :array_7

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
    move-result-object v10

    .line 122
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 123
    .line 124
    new-array v2, v0, [J

    .line 125
    .line 126
    fill-array-data v2, :array_8

    .line 127
    .line 128
    .line 129
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v11

    .line 136
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 137
    .line 138
    new-array v2, v0, [J

    .line 139
    .line 140
    fill-array-data v2, :array_9

    .line 141
    .line 142
    .line 143
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v12

    .line 150
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 151
    .line 152
    new-array v2, v0, [J

    .line 153
    .line 154
    fill-array-data v2, :array_a

    .line 155
    .line 156
    .line 157
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v13

    .line 164
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 165
    .line 166
    new-array v2, v0, [J

    .line 167
    .line 168
    fill-array-data v2, :array_b

    .line 169
    .line 170
    .line 171
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v14

    .line 178
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 179
    .line 180
    new-array v2, v0, [J

    .line 181
    .line 182
    fill-array-data v2, :array_c

    .line 183
    .line 184
    .line 185
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v15

    .line 192
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 193
    .line 194
    new-array v2, v0, [J

    .line 195
    .line 196
    fill-array-data v2, :array_d

    .line 197
    .line 198
    .line 199
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v16

    .line 206
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 207
    .line 208
    new-array v2, v0, [J

    .line 209
    .line 210
    fill-array-data v2, :array_e

    .line 211
    .line 212
    .line 213
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v17

    .line 220
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 221
    .line 222
    new-array v2, v0, [J

    .line 223
    .line 224
    fill-array-data v2, :array_f

    .line 225
    .line 226
    .line 227
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v18

    .line 234
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 235
    .line 236
    new-array v2, v0, [J

    .line 237
    .line 238
    fill-array-data v2, :array_10

    .line 239
    .line 240
    .line 241
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v19

    .line 248
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 249
    .line 250
    new-array v2, v0, [J

    .line 251
    .line 252
    fill-array-data v2, :array_11

    .line 253
    .line 254
    .line 255
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v20

    .line 262
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 263
    .line 264
    new-array v2, v0, [J

    .line 265
    .line 266
    fill-array-data v2, :array_12

    .line 267
    .line 268
    .line 269
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v21

    .line 276
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 277
    .line 278
    new-array v0, v0, [J

    .line 279
    .line 280
    fill-array-data v0, :array_13

    .line 281
    .line 282
    .line 283
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v22

    .line 290
    filled-new-array/range {v3 .. v22}, [Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    const/4 v1, 0x0

    .line 295
    :goto_0
    const/16 v2, 0x14

    .line 296
    .line 297
    if-ge v1, v2, :cond_1

    .line 298
    .line 299
    aget-object v2, v0, v1

    .line 300
    .line 301
    invoke-static {v2}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECIByName(Ljava/lang/String;)Lcom/google/zxing/common/CharacterSetECI;

    .line 302
    .line 303
    .line 304
    move-result-object v3

    .line 305
    if-eqz v3, :cond_0

    .line 306
    .line 307
    :try_start_0
    sget-object v3, Lcom/google/zxing/common/ECIEncoderSet;->ENCODERS:Ljava/util/List;

    .line 308
    .line 309
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 310
    .line 311
    .line 312
    move-result-object v2

    .line 313
    invoke-virtual {v2}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    .line 314
    .line 315
    .line 316
    move-result-object v2

    .line 317
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    .line 319
    .line 320
    :catch_0
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 321
    .line 322
    goto :goto_0

    .line 323
    :cond_1
    return-void

    .line 324
    nop

    .line 325
    :array_0
    .array-data 8
        -0x6b8084ba9164bec7L    # -5.984926775340045E-210
        0x4f238b859dfe3303L    # 1.7266519642250613E73
    .end array-data

    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    :array_1
    .array-data 8
        0x4837e09f875e4329L    # 8.125069831031442E39
        0x1d913c02978d7121L    # 2.922664316945586E-166
        -0x262bd1332e4b7a75L    # -5.336787545349076E124
    .end array-data

    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    :array_2
    .array-data 8
        0x5ad0553110dd2048L    # 2.8303377468001126E129
        -0x11e68495f223c684L
        -0x31f0b85ae0211225L    # -1.0541293095844438E68
    .end array-data

    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    :array_3
    .array-data 8
        -0x9062d888f44e48dL    # -1.300973197056572E265
        -0x5d6063414a6125d2L    # -6.480939150264026E-142
        -0x75a800853624ea61L    # -7.804016803544469E-259
    .end array-data

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
    :array_4
    .array-data 8
        0xad0045bc2d8c560L
        0x762a5793b9892487L    # 1.6200805820069452E261
        0x5a6c2783301f8855L    # 3.811655301775719E127
    .end array-data

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
    :array_5
    .array-data 8
        -0x7708537d565514bcL
        0x199450498f51ac85L    # 1.867454614108799E-185
        -0x1d72ec7cf1ba798cL    # -5.3580349649669755E166
    .end array-data

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
    .line 414
    .line 415
    .line 416
    .line 417
    :array_6
    .array-data 8
        0x65a4a11f8d47e97dL    # 4.280098270524542E181
        0x3a462a2579412aa4L    # 5.595140313531708E-28
        -0x255e259781e44ba6L    # -3.867258372353897E128
    .end array-data

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
    :array_7
    .array-data 8
        -0x6804e6fb474ee3bfL    # -3.712065888181647E-193
        -0x6ecb0a90e2c7504aL    # -8.847247068861667E-226
        0x2683ea00e122ab45L    # 3.765580536917399E-123
    .end array-data

    .line 434
    .line 435
    .line 436
    .line 437
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
    :array_8
    .array-data 8
        0x2380881b7ca37462L
        -0x31e78729dc213894L    # -1.649410717867242E68
        -0x8913605862c1308L
    .end array-data

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
    :array_9
    .array-data 8
        -0x288dd0bc9624ab9aL    # -1.7492934678264163E113
        0x6e9980e862933453L    # 5.9000725224949345E224
        -0x4aea69937998cec0L    # -5.63462480238477E-53
    .end array-data

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
    :array_a
    .array-data 8
        0x4c3196c6ee3108aaL    # 1.1040777255000472E59
        -0x7c4423bed9856d9fL
        0x68300ace3e10a87cL    # 7.319162826443384E193
    .end array-data

    .line 482
    .line 483
    .line 484
    .line 485
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
    :array_b
    .array-data 8
        0x97979810ea44bf5L
        0x471aeb3fd563828cL    # 3.4942785498402324E34
        0x62473c89283f8e0eL    # 2.6761949634739995E165
    .end array-data

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
    .line 510
    .line 511
    .line 512
    .line 513
    :array_c
    .array-data 8
        0x409b0bd584d38826L    # 1730.958514504609
        -0x52abe6fb2d428618L    # -2.4665408563883193E-90
        -0x227f9e79d45b031fL    # -2.496934469356074E142
    .end array-data

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
    :array_d
    .array-data 8
        -0x522126993c9a4ccaL    # -9.692270424742968E-88
        -0x5fe957cb0243a042L
        0x35c2e04f6fa16819L    # 1.0090334711167015E-49
    .end array-data

    .line 530
    .line 531
    .line 532
    .line 533
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
    :array_e
    .array-data 8
        -0x44a9f63224c1894cL    # -7.291860927163804E-23
        -0x6d9699127cc4ba26L    # -5.621887415049381E-220
        0x7d8b868e48548fe1L    # 5.6255200365634386E296
    .end array-data

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
    .line 558
    .line 559
    .line 560
    .line 561
    :array_f
    .array-data 8
        -0x41bd3ac599276a40L    # -8.740659053375483E-9
        -0x1820bf2eb5a7a59fL    # -2.22798186778086E192
        0x27e8f7b5c05240d8L    # 1.980198746861959E-116
    .end array-data

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
    :array_10
    .array-data 8
        0x55ba11020e1f807eL    # 9.341146653265539E104
        -0x25d8b04bf69bfb98L    # -1.972492932736285E126
        0x444f6e499c343522L    # 1.1595922421010234E21
    .end array-data

    .line 578
    .line 579
    .line 580
    .line 581
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
    :array_11
    .array-data 8
        -0x709ac39afa548499L
        0x26d652a3757f5518L
        -0x274d496ffa49f74bL    # -1.8875777674286416E119
    .end array-data

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
    .line 606
    .line 607
    .line 608
    .line 609
    :array_12
    .array-data 8
        -0x6d69bc618f6f45e5L
        0x45de1a2143fcc7bL
        0x4880a3a21ecedcafL    # 1.8118476195202007E41
    .end array-data

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
    :array_13
    .array-data 8
        0x17212ce9ad2c7c4aL
        0x7e11e002657a681L
        0x60f2720774703c24L    # 1.0129929517874153E159
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;I)V
    .locals 10

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    sget-object v2, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    const/4 v3, 0x1

    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 28
    .line 29
    new-array v6, v0, [J

    .line 30
    .line 31
    fill-array-data v6, :array_0

    .line 32
    .line 33
    .line 34
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-eqz v4, :cond_0

    .line 46
    .line 47
    const/4 v4, 0x1

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const/4 v4, 0x0

    .line 50
    :goto_0
    const/4 v5, 0x0

    .line 51
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    if-ge v5, v6, :cond_7

    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    if-eqz v7, :cond_3

    .line 66
    .line 67
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    check-cast v7, Ljava/nio/charset/CharsetEncoder;

    .line 72
    .line 73
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    .line 74
    .line 75
    .line 76
    move-result v8

    .line 77
    if-eq v8, p3, :cond_2

    .line 78
    .line 79
    invoke-virtual {v7, v8}, Ljava/nio/charset/CharsetEncoder;->canEncode(C)Z

    .line 80
    .line 81
    .line 82
    move-result v7

    .line 83
    if-eqz v7, :cond_1

    .line 84
    .line 85
    :cond_2
    const/4 v6, 0x1

    .line 86
    goto :goto_2

    .line 87
    :cond_3
    const/4 v6, 0x0

    .line 88
    :goto_2
    if-nez v6, :cond_5

    .line 89
    .line 90
    sget-object v7, Lcom/google/zxing/common/ECIEncoderSet;->ENCODERS:Ljava/util/List;

    .line 91
    .line 92
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 97
    .line 98
    .line 99
    move-result v8

    .line 100
    if-eqz v8, :cond_5

    .line 101
    .line 102
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v8

    .line 106
    check-cast v8, Ljava/nio/charset/CharsetEncoder;

    .line 107
    .line 108
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    .line 109
    .line 110
    .line 111
    move-result v9

    .line 112
    invoke-virtual {v8, v9}, Ljava/nio/charset/CharsetEncoder;->canEncode(C)Z

    .line 113
    .line 114
    .line 115
    move-result v9

    .line 116
    if-eqz v9, :cond_4

    .line 117
    .line 118
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    const/4 v6, 0x1

    .line 122
    :cond_5
    if-nez v6, :cond_6

    .line 123
    .line 124
    const/4 v4, 0x1

    .line 125
    :cond_6
    add-int/2addr v5, v3

    .line 126
    goto :goto_1

    .line 127
    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    if-ne p1, v3, :cond_8

    .line 132
    .line 133
    if-nez v4, :cond_8

    .line 134
    .line 135
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    check-cast p1, Ljava/nio/charset/CharsetEncoder;

    .line 140
    .line 141
    new-array p3, v3, [Ljava/nio/charset/CharsetEncoder;

    .line 142
    .line 143
    aput-object p1, p3, v2

    .line 144
    .line 145
    iput-object p3, p0, Lcom/google/zxing/common/ECIEncoderSet;->encoders:[Ljava/nio/charset/CharsetEncoder;

    .line 146
    .line 147
    goto :goto_4

    .line 148
    :cond_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    add-int/2addr p1, v0

    .line 153
    new-array p1, p1, [Ljava/nio/charset/CharsetEncoder;

    .line 154
    .line 155
    iput-object p1, p0, Lcom/google/zxing/common/ECIEncoderSet;->encoders:[Ljava/nio/charset/CharsetEncoder;

    .line 156
    .line 157
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    const/4 p3, 0x0

    .line 162
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    if-eqz v0, :cond_9

    .line 167
    .line 168
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    check-cast v0, Ljava/nio/charset/CharsetEncoder;

    .line 173
    .line 174
    iget-object v1, p0, Lcom/google/zxing/common/ECIEncoderSet;->encoders:[Ljava/nio/charset/CharsetEncoder;

    .line 175
    .line 176
    add-int/lit8 v4, p3, 0x1

    .line 177
    .line 178
    aput-object v0, v1, p3

    .line 179
    .line 180
    move p3, v4

    .line 181
    goto :goto_3

    .line 182
    :cond_9
    iget-object p1, p0, Lcom/google/zxing/common/ECIEncoderSet;->encoders:[Ljava/nio/charset/CharsetEncoder;

    .line 183
    .line 184
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 185
    .line 186
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    aput-object v0, p1, p3

    .line 191
    .line 192
    iget-object p1, p0, Lcom/google/zxing/common/ECIEncoderSet;->encoders:[Ljava/nio/charset/CharsetEncoder;

    .line 193
    .line 194
    add-int/2addr p3, v3

    .line 195
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    .line 196
    .line 197
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    aput-object v0, p1, p3

    .line 202
    .line 203
    :goto_4
    if-eqz p2, :cond_b

    .line 204
    .line 205
    :goto_5
    iget-object p1, p0, Lcom/google/zxing/common/ECIEncoderSet;->encoders:[Ljava/nio/charset/CharsetEncoder;

    .line 206
    .line 207
    array-length p3, p1

    .line 208
    if-ge v2, p3, :cond_b

    .line 209
    .line 210
    aget-object p1, p1, v2

    .line 211
    .line 212
    if-eqz p1, :cond_a

    .line 213
    .line 214
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    iget-object p3, p0, Lcom/google/zxing/common/ECIEncoderSet;->encoders:[Ljava/nio/charset/CharsetEncoder;

    .line 219
    .line 220
    aget-object p3, p3, v2

    .line 221
    .line 222
    invoke-virtual {p3}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    .line 223
    .line 224
    .line 225
    move-result-object p3

    .line 226
    invoke-virtual {p3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object p3

    .line 230
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result p1

    .line 234
    if-eqz p1, :cond_a

    .line 235
    .line 236
    goto :goto_6

    .line 237
    :cond_a
    add-int/2addr v2, v3

    .line 238
    goto :goto_5

    .line 239
    :cond_b
    const/4 v2, -0x1

    .line 240
    :goto_6
    iput v2, p0, Lcom/google/zxing/common/ECIEncoderSet;->priorityEncoderIndex:I

    .line 241
    .line 242
    return-void

    .line 243
    :array_0
    .array-data 8
        0x60efeca4915f58b5L    # 8.7661780417397E158
        -0x3e4a53e1bba710f2L    # -3.636014763473977E8
    .end array-data
.end method


# virtual methods
.method public canEncode(CI)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/zxing/common/ECIEncoderSet;->encoders:[Ljava/nio/charset/CharsetEncoder;

    .line 2
    .line 3
    aget-object p2, v0, p2

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    new-array v2, v2, [J

    .line 14
    .line 15
    const-wide v3, -0x486bdb035d43fba8L    # -5.781182211873241E-41

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    const/4 v5, 0x0

    .line 21
    aput-wide v3, v2, v5

    .line 22
    .line 23
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p2, p1}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    return p1
.end method

.method public encode(CI)[B
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/zxing/common/ECIEncoderSet;->encoders:[Ljava/nio/charset/CharsetEncoder;

    aget-object p2, v0, p2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x1

    new-array v2, v2, [J

    const-wide v3, 0x3ed414e6535e695bL    # 4.7878359533910256E-6

    const/4 v5, 0x0

    aput-wide v3, v2, v5

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    return-object p1
.end method

.method public encode(Ljava/lang/String;I)[B
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/zxing/common/ECIEncoderSet;->encoders:[Ljava/nio/charset/CharsetEncoder;

    aget-object p2, v0, p2

    .line 4
    invoke-virtual {p2}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    return-object p1
.end method

.method public getCharset(I)Ljava/nio/charset/Charset;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/common/ECIEncoderSet;->encoders:[Ljava/nio/charset/CharsetEncoder;

    .line 2
    .line 3
    aget-object p1, v0, p1

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public getCharsetName(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/common/ECIEncoderSet;->encoders:[Ljava/nio/charset/CharsetEncoder;

    .line 2
    .line 3
    aget-object p1, v0, p1

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public getECIValue(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/common/ECIEncoderSet;->encoders:[Ljava/nio/charset/CharsetEncoder;

    .line 2
    .line 3
    aget-object p1, v0, p1

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p1}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECI(Ljava/nio/charset/Charset;)Lcom/google/zxing/common/CharacterSetECI;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lcom/google/zxing/common/CharacterSetECI;->getValue()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public getPriorityEncoderIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/common/ECIEncoderSet;->priorityEncoderIndex:I

    .line 2
    .line 3
    return v0
.end method

.method public length()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/common/ECIEncoderSet;->encoders:[Ljava/nio/charset/CharsetEncoder;

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    return v0
.end method
