.class public final Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;
.super Lcom/google/zxing/oned/rss/AbstractRSSReader;
.source "SourceFile"


# static fields
.field private static final DATA_CHARACTER_MODULES:F = 17.0f

.field private static final EVEN_TOTAL_SUBSET:[I

.field private static final FINDER_PATTERNS:[[I

.field private static final FINDER_PATTERN_MODULES:F = 15.0f

.field private static final FINDER_PATTERN_SEQUENCES:[[I

.field private static final FINDER_PAT_A:I = 0x0

.field private static final FINDER_PAT_B:I = 0x1

.field private static final FINDER_PAT_C:I = 0x2

.field private static final FINDER_PAT_D:I = 0x3

.field private static final FINDER_PAT_E:I = 0x4

.field private static final FINDER_PAT_F:I = 0x5

.field private static final GSUM:[I

.field private static final MAX_FINDER_PATTERN_DISTANCE_VARIANCE:F = 0.1f

.field private static final MAX_PAIRS:I = 0xb

.field private static final SYMBOL_WIDEST:[I

.field private static final WEIGHTS:[[I


# instance fields
.field private final pairs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;"
        }
    .end annotation
.end field

.field private final rows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedRow;",
            ">;"
        }
    .end annotation
.end field

.field private final startEnd:[I

.field private startFromEven:Z


# direct methods
.method static constructor <clinit>()V
    .locals 31

    .line 1
    const/4 v0, 0x7

    .line 2
    const/4 v1, 0x5

    .line 3
    const/4 v2, 0x4

    .line 4
    const/4 v3, 0x3

    .line 5
    const/4 v4, 0x1

    .line 6
    filled-new-array {v0, v1, v2, v3, v4}, [I

    .line 7
    .line 8
    .line 9
    move-result-object v5

    .line 10
    sput-object v5, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->SYMBOL_WIDEST:[I

    .line 11
    .line 12
    const/16 v5, 0x68

    .line 13
    .line 14
    const/16 v6, 0xcc

    .line 15
    .line 16
    const/16 v7, 0x14

    .line 17
    .line 18
    const/16 v8, 0x34

    .line 19
    .line 20
    filled-new-array {v2, v7, v8, v5, v6}, [I

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    sput-object v5, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->EVEN_TOTAL_SUBSET:[I

    .line 25
    .line 26
    const/16 v5, 0xb84

    .line 27
    .line 28
    const/16 v6, 0xf94

    .line 29
    .line 30
    const/4 v8, 0x0

    .line 31
    const/16 v9, 0x15c

    .line 32
    .line 33
    const/16 v10, 0x56c

    .line 34
    .line 35
    filled-new-array {v8, v9, v10, v5, v6}, [I

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    sput-object v5, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->GSUM:[I

    .line 40
    .line 41
    const/4 v5, 0x6

    .line 42
    new-array v6, v5, [[I

    .line 43
    .line 44
    const/16 v9, 0x8

    .line 45
    .line 46
    filled-new-array {v4, v9, v2, v4}, [I

    .line 47
    .line 48
    .line 49
    move-result-object v10

    .line 50
    aput-object v10, v6, v8

    .line 51
    .line 52
    filled-new-array {v3, v5, v2, v4}, [I

    .line 53
    .line 54
    .line 55
    move-result-object v10

    .line 56
    aput-object v10, v6, v4

    .line 57
    .line 58
    filled-new-array {v3, v2, v5, v4}, [I

    .line 59
    .line 60
    .line 61
    move-result-object v10

    .line 62
    const/4 v11, 0x2

    .line 63
    aput-object v10, v6, v11

    .line 64
    .line 65
    filled-new-array {v3, v11, v9, v4}, [I

    .line 66
    .line 67
    .line 68
    move-result-object v10

    .line 69
    aput-object v10, v6, v3

    .line 70
    .line 71
    filled-new-array {v11, v5, v1, v4}, [I

    .line 72
    .line 73
    .line 74
    move-result-object v10

    .line 75
    aput-object v10, v6, v2

    .line 76
    .line 77
    const/16 v10, 0x9

    .line 78
    .line 79
    filled-new-array {v11, v11, v10, v4}, [I

    .line 80
    .line 81
    .line 82
    move-result-object v12

    .line 83
    aput-object v12, v6, v1

    .line 84
    .line 85
    sput-object v6, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->FINDER_PATTERNS:[[I

    .line 86
    .line 87
    new-array v6, v9, [I

    .line 88
    .line 89
    fill-array-data v6, :array_0

    .line 90
    .line 91
    .line 92
    new-array v13, v9, [I

    .line 93
    .line 94
    fill-array-data v13, :array_1

    .line 95
    .line 96
    .line 97
    new-array v15, v9, [I

    .line 98
    .line 99
    fill-array-data v15, :array_2

    .line 100
    .line 101
    .line 102
    const/16 v16, 0x13

    .line 103
    .line 104
    new-array v12, v9, [I

    .line 105
    .line 106
    fill-array-data v12, :array_3

    .line 107
    .line 108
    .line 109
    new-array v7, v9, [I

    .line 110
    .line 111
    fill-array-data v7, :array_4

    .line 112
    .line 113
    .line 114
    const/16 v17, 0xc

    .line 115
    .line 116
    new-array v14, v9, [I

    .line 117
    .line 118
    fill-array-data v14, :array_5

    .line 119
    .line 120
    .line 121
    new-array v10, v9, [I

    .line 122
    .line 123
    fill-array-data v10, :array_6

    .line 124
    .line 125
    .line 126
    new-array v0, v9, [I

    .line 127
    .line 128
    fill-array-data v0, :array_7

    .line 129
    .line 130
    .line 131
    new-array v5, v9, [I

    .line 132
    .line 133
    fill-array-data v5, :array_8

    .line 134
    .line 135
    .line 136
    const/16 v18, 0x11

    .line 137
    .line 138
    new-array v1, v9, [I

    .line 139
    .line 140
    fill-array-data v1, :array_9

    .line 141
    .line 142
    .line 143
    new-array v2, v9, [I

    .line 144
    .line 145
    fill-array-data v2, :array_a

    .line 146
    .line 147
    .line 148
    const/16 v19, 0x10

    .line 149
    .line 150
    new-array v3, v9, [I

    .line 151
    .line 152
    fill-array-data v3, :array_b

    .line 153
    .line 154
    .line 155
    new-array v11, v9, [I

    .line 156
    .line 157
    fill-array-data v11, :array_c

    .line 158
    .line 159
    .line 160
    new-array v4, v9, [I

    .line 161
    .line 162
    fill-array-data v4, :array_d

    .line 163
    .line 164
    .line 165
    new-array v8, v9, [I

    .line 166
    .line 167
    fill-array-data v8, :array_e

    .line 168
    .line 169
    .line 170
    const/16 v21, 0x16

    .line 171
    .line 172
    move-object/from16 v22, v8

    .line 173
    .line 174
    new-array v8, v9, [I

    .line 175
    .line 176
    fill-array-data v8, :array_f

    .line 177
    .line 178
    .line 179
    const/16 v23, 0x12

    .line 180
    .line 181
    move-object/from16 v24, v8

    .line 182
    .line 183
    new-array v8, v9, [I

    .line 184
    .line 185
    fill-array-data v8, :array_10

    .line 186
    .line 187
    .line 188
    move-object/from16 v25, v8

    .line 189
    .line 190
    new-array v8, v9, [I

    .line 191
    .line 192
    fill-array-data v8, :array_11

    .line 193
    .line 194
    .line 195
    move-object/from16 v26, v8

    .line 196
    .line 197
    new-array v8, v9, [I

    .line 198
    .line 199
    fill-array-data v8, :array_12

    .line 200
    .line 201
    .line 202
    move-object/from16 v27, v8

    .line 203
    .line 204
    new-array v8, v9, [I

    .line 205
    .line 206
    fill-array-data v8, :array_13

    .line 207
    .line 208
    .line 209
    move-object/from16 v28, v8

    .line 210
    .line 211
    new-array v8, v9, [I

    .line 212
    .line 213
    fill-array-data v8, :array_14

    .line 214
    .line 215
    .line 216
    move-object/from16 v29, v8

    .line 217
    .line 218
    new-array v8, v9, [I

    .line 219
    .line 220
    fill-array-data v8, :array_15

    .line 221
    .line 222
    .line 223
    move-object/from16 v30, v8

    .line 224
    .line 225
    new-array v8, v9, [I

    .line 226
    .line 227
    fill-array-data v8, :array_16

    .line 228
    .line 229
    .line 230
    const/16 v9, 0x17

    .line 231
    .line 232
    new-array v9, v9, [[I

    .line 233
    .line 234
    const/16 v20, 0x0

    .line 235
    .line 236
    aput-object v6, v9, v20

    .line 237
    .line 238
    const/4 v6, 0x1

    .line 239
    aput-object v13, v9, v6

    .line 240
    .line 241
    const/4 v6, 0x2

    .line 242
    aput-object v15, v9, v6

    .line 243
    .line 244
    const/4 v6, 0x3

    .line 245
    aput-object v12, v9, v6

    .line 246
    .line 247
    const/4 v6, 0x4

    .line 248
    aput-object v7, v9, v6

    .line 249
    .line 250
    const/4 v6, 0x5

    .line 251
    aput-object v14, v9, v6

    .line 252
    .line 253
    const/4 v6, 0x6

    .line 254
    aput-object v10, v9, v6

    .line 255
    .line 256
    const/4 v6, 0x7

    .line 257
    aput-object v0, v9, v6

    .line 258
    .line 259
    const/16 v0, 0x8

    .line 260
    .line 261
    aput-object v5, v9, v0

    .line 262
    .line 263
    const/16 v0, 0x9

    .line 264
    .line 265
    aput-object v1, v9, v0

    .line 266
    .line 267
    const/16 v0, 0xa

    .line 268
    .line 269
    aput-object v2, v9, v0

    .line 270
    .line 271
    const/16 v0, 0xb

    .line 272
    .line 273
    aput-object v3, v9, v0

    .line 274
    .line 275
    aput-object v11, v9, v17

    .line 276
    .line 277
    const/16 v0, 0xd

    .line 278
    .line 279
    aput-object v4, v9, v0

    .line 280
    .line 281
    const/16 v0, 0xe

    .line 282
    .line 283
    aput-object v22, v9, v0

    .line 284
    .line 285
    const/16 v0, 0xf

    .line 286
    .line 287
    aput-object v24, v9, v0

    .line 288
    .line 289
    aput-object v25, v9, v19

    .line 290
    .line 291
    aput-object v26, v9, v18

    .line 292
    .line 293
    aput-object v27, v9, v23

    .line 294
    .line 295
    aput-object v28, v9, v16

    .line 296
    .line 297
    const/16 v0, 0x14

    .line 298
    .line 299
    aput-object v29, v9, v0

    .line 300
    .line 301
    const/16 v0, 0x15

    .line 302
    .line 303
    aput-object v30, v9, v0

    .line 304
    .line 305
    aput-object v8, v9, v21

    .line 306
    .line 307
    sput-object v9, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->WEIGHTS:[[I

    .line 308
    .line 309
    const/4 v0, 0x6

    .line 310
    new-array v1, v0, [I

    .line 311
    .line 312
    fill-array-data v1, :array_17

    .line 313
    .line 314
    .line 315
    const/4 v0, 0x7

    .line 316
    new-array v2, v0, [I

    .line 317
    .line 318
    fill-array-data v2, :array_18

    .line 319
    .line 320
    .line 321
    const/16 v0, 0x8

    .line 322
    .line 323
    new-array v3, v0, [I

    .line 324
    .line 325
    fill-array-data v3, :array_19

    .line 326
    .line 327
    .line 328
    const/16 v0, 0x9

    .line 329
    .line 330
    new-array v4, v0, [I

    .line 331
    .line 332
    fill-array-data v4, :array_1a

    .line 333
    .line 334
    .line 335
    const/16 v0, 0xa

    .line 336
    .line 337
    new-array v5, v0, [I

    .line 338
    .line 339
    fill-array-data v5, :array_1b

    .line 340
    .line 341
    .line 342
    const/16 v6, 0xb

    .line 343
    .line 344
    new-array v6, v6, [I

    .line 345
    .line 346
    fill-array-data v6, :array_1c

    .line 347
    .line 348
    .line 349
    new-array v0, v0, [[I

    .line 350
    .line 351
    const/4 v7, 0x0

    .line 352
    filled-new-array {v7, v7}, [I

    .line 353
    .line 354
    .line 355
    move-result-object v8

    .line 356
    aput-object v8, v0, v7

    .line 357
    .line 358
    const/4 v8, 0x1

    .line 359
    filled-new-array {v7, v8, v8}, [I

    .line 360
    .line 361
    .line 362
    move-result-object v9

    .line 363
    aput-object v9, v0, v8

    .line 364
    .line 365
    const/4 v9, 0x3

    .line 366
    const/4 v10, 0x2

    .line 367
    filled-new-array {v7, v10, v8, v9}, [I

    .line 368
    .line 369
    .line 370
    move-result-object v11

    .line 371
    aput-object v11, v0, v10

    .line 372
    .line 373
    const/4 v11, 0x4

    .line 374
    filled-new-array {v7, v11, v8, v9, v10}, [I

    .line 375
    .line 376
    .line 377
    move-result-object v7

    .line 378
    aput-object v7, v0, v9

    .line 379
    .line 380
    aput-object v1, v0, v11

    .line 381
    .line 382
    const/4 v1, 0x5

    .line 383
    aput-object v2, v0, v1

    .line 384
    .line 385
    const/4 v1, 0x6

    .line 386
    aput-object v3, v0, v1

    .line 387
    .line 388
    const/4 v1, 0x7

    .line 389
    aput-object v4, v0, v1

    .line 390
    .line 391
    const/16 v1, 0x8

    .line 392
    .line 393
    aput-object v5, v0, v1

    .line 394
    .line 395
    const/16 v1, 0x9

    .line 396
    .line 397
    aput-object v6, v0, v1

    .line 398
    .line 399
    sput-object v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->FINDER_PATTERN_SEQUENCES:[[I

    .line 400
    .line 401
    return-void

    .line 402
    nop

    .line 403
    :array_0
    .array-data 4
        0x1
        0x3
        0x9
        0x1b
        0x51
        0x20
        0x60
        0x4d
    .end array-data

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
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    :array_1
    .array-data 4
        0x14
        0x3c
        0xb4
        0x76
        0x8f
        0x7
        0x15
        0x3f
    .end array-data

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
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    :array_2
    .array-data 4
        0xbd
        0x91
        0xd
        0x27
        0x75
        0x8c
        0xd1
        0xcd
    .end array-data

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
    :array_3
    .array-data 4
        0xc1
        0x9d
        0x31
        0x93
        0x13
        0x39
        0xab
        0x5b
    .end array-data

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
    :array_4
    .array-data 4
        0x3e
        0xba
        0x88
        0xc5
        0xa9
        0x55
        0x2c
        0x84
    .end array-data

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
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    :array_5
    .array-data 4
        0xb9
        0x85
        0xbc
        0x8e
        0x4
        0xc
        0x24
        0x6c
    .end array-data

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
    :array_6
    .array-data 4
        0x71
        0x80
        0xad
        0x61
        0x50
        0x1d
        0x57
        0x32
    .end array-data

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
    :array_7
    .array-data 4
        0x96
        0x1c
        0x54
        0x29
        0x7b
        0x9e
        0x34
        0x9c
    .end array-data

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
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    :array_8
    .array-data 4
        0x2e
        0x8a
        0xcb
        0xbb
        0x8b
        0xce
        0xc4
        0xa6
    .end array-data

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
    .line 582
    .line 583
    :array_9
    .array-data 4
        0x4c
        0x11
        0x33
        0x99
        0x25
        0x6f
        0x7a
        0x9b
    .end array-data

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
    :array_a
    .array-data 4
        0x2b
        0x81
        0xb0
        0x6a
        0x6b
        0x6e
        0x77
        0x92
    .end array-data

    .line 604
    .line 605
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
    :array_b
    .array-data 4
        0x10
        0x30
        0x90
        0xa
        0x1e
        0x5a
        0x3b
        0xb1
    .end array-data

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
    :array_c
    .array-data 4
        0x6d
        0x74
        0x89
        0xc8
        0xb2
        0x70
        0x7d
        0xa4
    .end array-data

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
    .line 662
    .line 663
    :array_d
    .array-data 4
        0x46
        0xd2
        0xd0
        0xca
        0xb8
        0x82
        0xb3
        0x73
    .end array-data

    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    :array_e
    .array-data 4
        0x86
        0xbf
        0x97
        0x1f
        0x5d
        0x44
        0xcc
        0xbe
    .end array-data

    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    :array_f
    .array-data 4
        0x94
        0x16
        0x42
        0xc6
        0xac
        0x5e
        0x47
        0x2
    .end array-data

    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    :array_10
    .array-data 4
        0x6
        0x12
        0x36
        0xa2
        0x40
        0xc0
        0x9a
        0x28
    .end array-data

    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    :array_11
    .array-data 4
        0x78
        0x95
        0x19
        0x4b
        0xe
        0x2a
        0x7e
        0xa7
    .end array-data

    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    :array_12
    .array-data 4
        0x4f
        0x1a
        0x4e
        0x17
        0x45
        0xcf
        0xc7
        0xaf
    .end array-data

    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    :array_13
    .array-data 4
        0x67
        0x62
        0x53
        0x26
        0x72
        0x83
        0xb6
        0x7c
    .end array-data

    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    :array_14
    .array-data 4
        0xa1
        0x3d
        0xb7
        0x7f
        0xaa
        0x58
        0x35
        0x9f
    .end array-data

    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    :array_15
    .array-data 4
        0x37
        0xa5
        0x49
        0x8
        0x18
        0x48
        0x5
        0xf
    .end array-data

    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    :array_16
    .array-data 4
        0x2d
        0x87
        0xc2
        0xa0
        0x3a
        0xae
        0x64
        0x59
    .end array-data

    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    :array_17
    .array-data 4
        0x0
        0x4
        0x1
        0x3
        0x3
        0x5
    .end array-data

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
    .line 878
    .line 879
    :array_18
    .array-data 4
        0x0
        0x4
        0x1
        0x3
        0x4
        0x5
        0x5
    .end array-data

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
    :array_19
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
        0x3
        0x3
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
    .line 914
    .line 915
    .line 916
    .line 917
    :array_1a
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
        0x3
        0x4
        0x4
    .end array-data

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
    :array_1b
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
        0x3
        0x4
        0x5
        0x5
    .end array-data

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
    :array_1c
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
        0x5
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    const/16 v1, 0xb

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    .line 12
    .line 13
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    .line 19
    .line 20
    const/4 v0, 0x2

    .line 21
    new-array v0, v0, [I

    .line 22
    .line 23
    iput-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    .line 24
    .line 25
    return-void
.end method

.method private adjustOddEvenCounts(I)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getOddCounts()[I

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/google/zxing/common/detector/MathUtils;->sum([I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getEvenCounts()[I

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Lcom/google/zxing/common/detector/MathUtils;->sum([I)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x4

    .line 18
    const/4 v3, 0x1

    .line 19
    const/4 v4, 0x0

    .line 20
    const/16 v5, 0xd

    .line 21
    .line 22
    if-le v0, v5, :cond_0

    .line 23
    .line 24
    const/4 v6, 0x0

    .line 25
    const/4 v7, 0x1

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    if-ge v0, v2, :cond_1

    .line 28
    .line 29
    const/4 v6, 0x1

    .line 30
    :goto_0
    const/4 v7, 0x0

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    const/4 v6, 0x0

    .line 33
    goto :goto_0

    .line 34
    :goto_1
    if-le v1, v5, :cond_2

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    const/4 v5, 0x1

    .line 38
    goto :goto_3

    .line 39
    :cond_2
    if-ge v1, v2, :cond_3

    .line 40
    .line 41
    const/4 v2, 0x1

    .line 42
    :goto_2
    const/4 v5, 0x0

    .line 43
    goto :goto_3

    .line 44
    :cond_3
    const/4 v2, 0x0

    .line 45
    goto :goto_2

    .line 46
    :goto_3
    add-int v8, v0, v1

    .line 47
    .line 48
    sub-int/2addr v8, p1

    .line 49
    and-int/lit8 p1, v0, 0x1

    .line 50
    .line 51
    if-ne p1, v3, :cond_4

    .line 52
    .line 53
    const/4 p1, 0x1

    .line 54
    goto :goto_4

    .line 55
    :cond_4
    const/4 p1, 0x0

    .line 56
    :goto_4
    and-int/lit8 v9, v1, 0x1

    .line 57
    .line 58
    if-nez v9, :cond_5

    .line 59
    .line 60
    const/4 v4, 0x1

    .line 61
    :cond_5
    const/4 v9, -0x1

    .line 62
    if-eq v8, v9, :cond_f

    .line 63
    .line 64
    if-eqz v8, :cond_a

    .line 65
    .line 66
    if-ne v8, v3, :cond_9

    .line 67
    .line 68
    if-eqz p1, :cond_7

    .line 69
    .line 70
    if-nez v4, :cond_6

    .line 71
    .line 72
    move v3, v6

    .line 73
    :goto_5
    const/4 v7, 0x1

    .line 74
    goto :goto_7

    .line 75
    :cond_6
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    throw p1

    .line 80
    :cond_7
    if-eqz v4, :cond_8

    .line 81
    .line 82
    move v3, v6

    .line 83
    :goto_6
    const/4 v5, 0x1

    .line 84
    goto :goto_7

    .line 85
    :cond_8
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    throw p1

    .line 90
    :cond_9
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    throw p1

    .line 95
    :cond_a
    if-eqz p1, :cond_d

    .line 96
    .line 97
    if-eqz v4, :cond_c

    .line 98
    .line 99
    if-ge v0, v1, :cond_b

    .line 100
    .line 101
    goto :goto_6

    .line 102
    :cond_b
    move v3, v6

    .line 103
    const/4 v2, 0x1

    .line 104
    goto :goto_5

    .line 105
    :cond_c
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    throw p1

    .line 110
    :cond_d
    if-nez v4, :cond_e

    .line 111
    .line 112
    move v3, v6

    .line 113
    goto :goto_7

    .line 114
    :cond_e
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    throw p1

    .line 119
    :cond_f
    if-eqz p1, :cond_11

    .line 120
    .line 121
    if-nez v4, :cond_10

    .line 122
    .line 123
    goto :goto_7

    .line 124
    :cond_10
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    throw p1

    .line 129
    :cond_11
    if-eqz v4, :cond_18

    .line 130
    .line 131
    move v3, v6

    .line 132
    const/4 v2, 0x1

    .line 133
    :goto_7
    if-eqz v3, :cond_13

    .line 134
    .line 135
    if-nez v7, :cond_12

    .line 136
    .line 137
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getOddCounts()[I

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getOddRoundingErrors()[F

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-static {p1, v0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->increment([I[F)V

    .line 146
    .line 147
    .line 148
    goto :goto_8

    .line 149
    :cond_12
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    throw p1

    .line 154
    :cond_13
    :goto_8
    if-eqz v7, :cond_14

    .line 155
    .line 156
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getOddCounts()[I

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getOddRoundingErrors()[F

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-static {p1, v0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->decrement([I[F)V

    .line 165
    .line 166
    .line 167
    :cond_14
    if-eqz v2, :cond_16

    .line 168
    .line 169
    if-nez v5, :cond_15

    .line 170
    .line 171
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getEvenCounts()[I

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getOddRoundingErrors()[F

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-static {p1, v0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->increment([I[F)V

    .line 180
    .line 181
    .line 182
    goto :goto_9

    .line 183
    :cond_15
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    throw p1

    .line 188
    :cond_16
    :goto_9
    if-eqz v5, :cond_17

    .line 189
    .line 190
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getEvenCounts()[I

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getEvenRoundingErrors()[F

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-static {p1, v0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->decrement([I[F)V

    .line 199
    .line 200
    .line 201
    :cond_17
    return-void

    .line 202
    :cond_18
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    throw p1
.end method

.method private checkChecksum()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getLeftChar()Lcom/google/zxing/oned/rss/DataCharacter;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    return v1

    .line 21
    :cond_0
    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v3, 0x2

    .line 26
    const/4 v4, 0x1

    .line 27
    const/4 v5, 0x1

    .line 28
    :goto_0
    iget-object v6, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    .line 29
    .line 30
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    if-ge v5, v6, :cond_2

    .line 35
    .line 36
    iget-object v6, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    .line 37
    .line 38
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    check-cast v6, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 43
    .line 44
    invoke-virtual {v6}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getLeftChar()Lcom/google/zxing/oned/rss/DataCharacter;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    invoke-virtual {v7}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    .line 49
    .line 50
    .line 51
    move-result v7

    .line 52
    add-int/2addr v7, v0

    .line 53
    add-int/lit8 v0, v3, 0x1

    .line 54
    .line 55
    invoke-virtual {v6}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    if-eqz v6, :cond_1

    .line 60
    .line 61
    invoke-virtual {v6}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    add-int/2addr v0, v7

    .line 66
    add-int/lit8 v3, v3, 0x2

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    move v3, v0

    .line 70
    move v0, v7

    .line 71
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    rem-int/lit16 v0, v0, 0xd3

    .line 75
    .line 76
    add-int/lit8 v3, v3, -0x4

    .line 77
    .line 78
    mul-int/lit16 v3, v3, 0xd3

    .line 79
    .line 80
    add-int/2addr v3, v0

    .line 81
    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-ne v3, v0, :cond_3

    .line 86
    .line 87
    const/4 v1, 0x1

    .line 88
    :cond_3
    return v1
.end method

.method private checkRows(Ljava/util/List;I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedRow;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;"
        }
    .end annotation

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;

    .line 9
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 10
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;

    .line 11
    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->getPairs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->getPairs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 13
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->isValidSequence(Ljava/util/List;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 14
    invoke-direct {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->checkChecksum()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 15
    iget-object p1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    return-object p1

    .line 16
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 17
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, p2, 0x1

    .line 18
    :try_start_0
    invoke-direct {p0, v1, v0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->checkRows(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 19
    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1
.end method

.method private checkRows(Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x19

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-object v2

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 5
    :cond_1
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->checkRows(Ljava/util/List;I)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :cond_2
    return-object v2
.end method

.method public static constructResult(Ljava/util/List;)Lcom/google/zxing/Result;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/zxing/oned/rss/expanded/BitArrayBuilder;->buildBitArray(Ljava/util/List;)Lcom/google/zxing/common/BitArray;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;->createDecoder(Lcom/google/zxing/common/BitArray;)Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;->parseInformation()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 19
    .line 20
    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/FinderPattern;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const/4 v3, 0x1

    .line 29
    invoke-static {v3, p0}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(ILjava/util/List;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/FinderPattern;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    new-instance v4, Lcom/google/zxing/Result;

    .line 44
    .line 45
    aget-object v5, v2, v1

    .line 46
    .line 47
    aget-object v2, v2, v3

    .line 48
    .line 49
    aget-object v6, p0, v1

    .line 50
    .line 51
    aget-object p0, p0, v3

    .line 52
    .line 53
    const/4 v7, 0x4

    .line 54
    new-array v7, v7, [Lcom/google/zxing/ResultPoint;

    .line 55
    .line 56
    aput-object v5, v7, v1

    .line 57
    .line 58
    aput-object v2, v7, v3

    .line 59
    .line 60
    const/4 v1, 0x2

    .line 61
    aput-object v6, v7, v1

    .line 62
    .line 63
    const/4 v2, 0x3

    .line 64
    aput-object p0, v7, v2

    .line 65
    .line 66
    sget-object p0, Lcom/google/zxing/BarcodeFormat;->RSS_EXPANDED:Lcom/google/zxing/BarcodeFormat;

    .line 67
    .line 68
    const/4 v2, 0x0

    .line 69
    invoke-direct {v4, v0, v2, v7, p0}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 70
    .line 71
    .line 72
    sget-object p0, Lcom/google/zxing/ResultMetadataType;->SYMBOLOGY_IDENTIFIER:Lcom/google/zxing/ResultMetadataType;

    .line 73
    .line 74
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 75
    .line 76
    new-array v1, v1, [J

    .line 77
    .line 78
    fill-array-data v1, :array_0

    .line 79
    .line 80
    .line 81
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v4, p0, v0}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    return-object v4

    .line 92
    nop

    .line 93
    :array_0
    .array-data 8
        -0x784b6b60a26d0655L    # -1.521742039121121E-271
        0x4e9e4bc69516f73bL    # 5.227382489236322E70
    .end array-data
.end method

.method private findNextPair(Lcom/google/zxing/common/BitArray;Ljava/util/List;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getDecodeFinderCounters()[I

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    aput v1, v0, v1

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    aput v1, v0, v2

    .line 10
    .line 11
    const/4 v3, 0x2

    .line 12
    aput v1, v0, v3

    .line 13
    .line 14
    const/4 v4, 0x3

    .line 15
    aput v1, v0, v4

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    if-ltz p3, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result p3

    .line 28
    if-eqz p3, :cond_1

    .line 29
    .line 30
    const/4 p3, 0x0

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-static {v2, p2}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(ILjava/util/List;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    check-cast p3, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 37
    .line 38
    invoke-virtual {p3}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    .line 39
    .line 40
    .line 41
    move-result-object p3

    .line 42
    invoke-virtual {p3}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    .line 43
    .line 44
    .line 45
    move-result-object p3

    .line 46
    aget p3, p3, v2

    .line 47
    .line 48
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    rem-int/2addr p2, v3

    .line 53
    if-eqz p2, :cond_2

    .line 54
    .line 55
    const/4 p2, 0x1

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    const/4 p2, 0x0

    .line 58
    :goto_1
    iget-boolean v6, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startFromEven:Z

    .line 59
    .line 60
    if-eqz v6, :cond_3

    .line 61
    .line 62
    xor-int/lit8 p2, p2, 0x1

    .line 63
    .line 64
    :cond_3
    const/4 v6, 0x0

    .line 65
    :goto_2
    if-ge p3, v5, :cond_5

    .line 66
    .line 67
    invoke-virtual {p1, p3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    xor-int/lit8 v7, v6, 0x1

    .line 72
    .line 73
    if-eqz v6, :cond_4

    .line 74
    .line 75
    move v6, v7

    .line 76
    goto :goto_3

    .line 77
    :cond_4
    add-int/lit8 p3, p3, 0x1

    .line 78
    .line 79
    move v6, v7

    .line 80
    goto :goto_2

    .line 81
    :cond_5
    :goto_3
    move v7, v6

    .line 82
    const/4 v8, 0x0

    .line 83
    move v6, p3

    .line 84
    :goto_4
    if-ge p3, v5, :cond_b

    .line 85
    .line 86
    invoke-virtual {p1, p3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    .line 87
    .line 88
    .line 89
    move-result v9

    .line 90
    if-eq v9, v7, :cond_6

    .line 91
    .line 92
    aget v9, v0, v8

    .line 93
    .line 94
    add-int/2addr v9, v2

    .line 95
    aput v9, v0, v8

    .line 96
    .line 97
    goto :goto_6

    .line 98
    :cond_6
    if-ne v8, v4, :cond_a

    .line 99
    .line 100
    if-eqz p2, :cond_7

    .line 101
    .line 102
    invoke-static {v0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->reverseCounters([I)V

    .line 103
    .line 104
    .line 105
    :cond_7
    invoke-static {v0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->isFinderPattern([I)Z

    .line 106
    .line 107
    .line 108
    move-result v9

    .line 109
    if-eqz v9, :cond_8

    .line 110
    .line 111
    iget-object p1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    .line 112
    .line 113
    aput v6, p1, v1

    .line 114
    .line 115
    aput p3, p1, v2

    .line 116
    .line 117
    return-void

    .line 118
    :cond_8
    if-eqz p2, :cond_9

    .line 119
    .line 120
    invoke-static {v0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->reverseCounters([I)V

    .line 121
    .line 122
    .line 123
    :cond_9
    aget v9, v0, v1

    .line 124
    .line 125
    aget v10, v0, v2

    .line 126
    .line 127
    add-int/2addr v9, v10

    .line 128
    add-int/2addr v6, v9

    .line 129
    aget v9, v0, v3

    .line 130
    .line 131
    aput v9, v0, v1

    .line 132
    .line 133
    aget v9, v0, v4

    .line 134
    .line 135
    aput v9, v0, v2

    .line 136
    .line 137
    aput v1, v0, v3

    .line 138
    .line 139
    aput v1, v0, v4

    .line 140
    .line 141
    add-int/lit8 v8, v8, -0x1

    .line 142
    .line 143
    goto :goto_5

    .line 144
    :cond_a
    add-int/lit8 v8, v8, 0x1

    .line 145
    .line 146
    :goto_5
    aput v2, v0, v8

    .line 147
    .line 148
    xor-int/lit8 v7, v7, 0x1

    .line 149
    .line 150
    :goto_6
    add-int/lit8 p3, p3, 0x1

    .line 151
    .line 152
    goto :goto_4

    .line 153
    :cond_b
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    throw p1
.end method

.method private static getNextSecondBar(Lcom/google/zxing/common/BitArray;I)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    :goto_0
    return p0
.end method

.method private static isNotA1left(Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-nez p0, :cond_1

    .line 6
    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 15
    :goto_1
    return p0
.end method

.method private static isPartialRow(Ljava/lang/Iterable;Ljava/lang/Iterable;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;",
            "Ljava/lang/Iterable<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedRow;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;

    .line 16
    .line 17
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_2

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->getPairs()Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-eqz v4, :cond_0

    .line 46
    .line 47
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    check-cast v4, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 52
    .line 53
    invoke-virtual {v2, v4}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-eqz v4, :cond_1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    const/4 p0, 0x1

    .line 61
    return p0

    .line 62
    :cond_3
    const/4 p0, 0x0

    .line 63
    return p0
.end method

.method private static isValidSequence(Ljava/util/List;Z)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;Z)Z"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->FINDER_PATTERN_SEQUENCES:[[I

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    :goto_0
    if-ge v3, v1, :cond_4

    .line 7
    .line 8
    aget-object v4, v0, v3

    .line 9
    .line 10
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v5

    .line 14
    array-length v6, v4

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    if-ne v5, v6, :cond_3

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    if-gt v5, v6, :cond_3

    .line 21
    .line 22
    :goto_1
    const/4 v5, 0x0

    .line 23
    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    if-ge v5, v6, :cond_2

    .line 28
    .line 29
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    check-cast v6, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 34
    .line 35
    invoke-virtual {v6}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    invoke-virtual {v6}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    aget v7, v4, v5

    .line 44
    .line 45
    if-eq v6, v7, :cond_1

    .line 46
    .line 47
    goto :goto_3

    .line 48
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_2
    const/4 p0, 0x1

    .line 52
    return p0

    .line 53
    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_4
    return v2
.end method

.method private static mayFollow(Ljava/util/List;I)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;I)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    sget-object v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->FINDER_PATTERN_SEQUENCES:[[I

    .line 10
    .line 11
    array-length v2, v0

    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    :goto_0
    if-ge v4, v2, :cond_5

    .line 15
    .line 16
    aget-object v5, v0, v4

    .line 17
    .line 18
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result v6

    .line 22
    add-int/2addr v6, v1

    .line 23
    array-length v7, v5

    .line 24
    if-gt v6, v7, :cond_4

    .line 25
    .line 26
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    :goto_1
    array-length v7, v5

    .line 31
    if-ge v6, v7, :cond_4

    .line 32
    .line 33
    aget v7, v5, v6

    .line 34
    .line 35
    if-ne v7, p1, :cond_3

    .line 36
    .line 37
    const/4 v7, 0x0

    .line 38
    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 39
    .line 40
    .line 41
    move-result v8

    .line 42
    if-ge v7, v8, :cond_2

    .line 43
    .line 44
    sub-int v8, v6, v7

    .line 45
    .line 46
    sub-int/2addr v8, v1

    .line 47
    aget v8, v5, v8

    .line 48
    .line 49
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 50
    .line 51
    .line 52
    move-result v9

    .line 53
    sub-int/2addr v9, v7

    .line 54
    sub-int/2addr v9, v1

    .line 55
    invoke-interface {p0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v9

    .line 59
    check-cast v9, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 60
    .line 61
    invoke-virtual {v9}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    .line 62
    .line 63
    .line 64
    move-result-object v9

    .line 65
    invoke-virtual {v9}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    .line 66
    .line 67
    .line 68
    move-result v9

    .line 69
    if-eq v8, v9, :cond_1

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_1
    add-int/lit8 v7, v7, 0x1

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_2
    return v1

    .line 76
    :cond_3
    :goto_3
    add-int/lit8 v6, v6, 0x1

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_5
    return v3
.end method

.method private parseFoundFinderPattern(Lcom/google/zxing/common/BitArray;IZLjava/util/List;)Lcom/google/zxing/oned/rss/FinderPattern;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitArray;",
            "IZ",
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;)",
            "Lcom/google/zxing/oned/rss/FinderPattern;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p3, :cond_1

    .line 4
    .line 5
    iget-object p3, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    .line 6
    .line 7
    aget p3, p3, v0

    .line 8
    .line 9
    sub-int/2addr p3, v1

    .line 10
    :goto_0
    if-ltz p3, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1, p3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    add-int/lit8 p3, p3, -0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    add-int/2addr p3, v1

    .line 22
    iget-object p1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    .line 23
    .line 24
    aget v2, p1, v0

    .line 25
    .line 26
    sub-int/2addr v2, p3

    .line 27
    aget p1, p1, v1

    .line 28
    .line 29
    move v7, p1

    .line 30
    move v6, p3

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    iget-object p3, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    .line 33
    .line 34
    aget v2, p3, v0

    .line 35
    .line 36
    aget p3, p3, v1

    .line 37
    .line 38
    add-int/2addr p3, v1

    .line 39
    invoke-virtual {p1, p3}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    iget-object p3, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    .line 44
    .line 45
    aget p3, p3, v1

    .line 46
    .line 47
    sub-int p3, p1, p3

    .line 48
    .line 49
    move v7, p1

    .line 50
    move v6, v2

    .line 51
    move v2, p3

    .line 52
    :goto_1
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getDecodeFinderCounters()[I

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    array-length p3, p1

    .line 57
    sub-int/2addr p3, v1

    .line 58
    invoke-static {p1, v0, p1, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    .line 60
    .line 61
    aput v2, p1, v0

    .line 62
    .line 63
    const/4 p3, 0x0

    .line 64
    :try_start_0
    sget-object v2, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->FINDER_PATTERNS:[[I

    .line 65
    .line 66
    invoke-static {p1, v2}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->parseFinderValue([I[[I)I

    .line 67
    .line 68
    .line 69
    move-result v4
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    invoke-static {p4, v4}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->mayFollow(Ljava/util/List;I)Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-nez p1, :cond_2

    .line 75
    .line 76
    return-object p3

    .line 77
    :cond_2
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-nez p1, :cond_4

    .line 82
    .line 83
    invoke-static {v1, p4}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(ILjava/util/List;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    check-cast p1, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    .line 90
    .line 91
    .line 92
    move-result-object p4

    .line 93
    invoke-virtual {p4}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    .line 94
    .line 95
    .line 96
    move-result-object p4

    .line 97
    aget p4, p4, v0

    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {p1}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    aget p1, p1, v1

    .line 108
    .line 109
    sub-int p4, p1, p4

    .line 110
    .line 111
    int-to-float p4, p4

    .line 112
    const/high16 v0, 0x41700000    # 15.0f

    .line 113
    .line 114
    div-float/2addr p4, v0

    .line 115
    const/high16 v0, 0x41880000    # 17.0f

    .line 116
    .line 117
    mul-float p4, p4, v0

    .line 118
    .line 119
    int-to-float p1, p1

    .line 120
    const/high16 v0, 0x40000000    # 2.0f

    .line 121
    .line 122
    mul-float p4, p4, v0

    .line 123
    .line 124
    const v0, 0x3f666666    # 0.9f

    .line 125
    .line 126
    .line 127
    mul-float v0, v0, p4

    .line 128
    .line 129
    add-float/2addr v0, p1

    .line 130
    const v1, 0x3f8ccccd    # 1.1f

    .line 131
    .line 132
    .line 133
    mul-float p4, p4, v1

    .line 134
    .line 135
    add-float/2addr p4, p1

    .line 136
    int-to-float p1, v6

    .line 137
    cmpg-float v0, p1, v0

    .line 138
    .line 139
    if-ltz v0, :cond_3

    .line 140
    .line 141
    cmpl-float p1, p1, p4

    .line 142
    .line 143
    if-lez p1, :cond_4

    .line 144
    .line 145
    :cond_3
    return-object p3

    .line 146
    :cond_4
    new-instance p1, Lcom/google/zxing/oned/rss/FinderPattern;

    .line 147
    .line 148
    filled-new-array {v6, v7}, [I

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    move-object v3, p1

    .line 153
    move v8, p2

    .line 154
    invoke-direct/range {v3 .. v8}, Lcom/google/zxing/oned/rss/FinderPattern;-><init>(I[IIII)V

    .line 155
    .line 156
    .line 157
    return-object p1

    .line 158
    :catch_0
    return-object p3
.end method

.method private static removePartialRows(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;",
            "Ljava/util/Collection<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedRow;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->getPairs()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eq v1, v2, :cond_0

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->getPairs()Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 50
    .line 51
    invoke-interface {p0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-nez v1, :cond_1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    return-void
.end method

.method private static reverseCounters([I)V
    .locals 5

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    div-int/lit8 v2, v0, 0x2

    .line 4
    .line 5
    if-ge v1, v2, :cond_0

    .line 6
    .line 7
    aget v2, p0, v1

    .line 8
    .line 9
    sub-int v3, v0, v1

    .line 10
    .line 11
    add-int/lit8 v3, v3, -0x1

    .line 12
    .line 13
    aget v4, p0, v3

    .line 14
    .line 15
    aput v4, p0, v1

    .line 16
    .line 17
    aput v2, p0, v3

    .line 18
    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-void
.end method

.method private storeRow(I)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_0
    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v3

    .line 10
    if-ge v1, v3, :cond_1

    .line 11
    .line 12
    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;

    .line 19
    .line 20
    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->getRowNumber()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-le v4, p1, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    .line 27
    .line 28
    invoke-virtual {v3, v0}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->isEquivalent(Ljava/util/List;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    .line 34
    .line 35
    invoke-virtual {v3, v2}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->isEquivalent(Ljava/util/List;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    add-int/lit8 v1, v1, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    :goto_1
    if-nez v0, :cond_4

    .line 43
    .line 44
    if-eqz v2, :cond_2

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_2
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    .line 48
    .line 49
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    .line 50
    .line 51
    invoke-static {v0, v2}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->isPartialRow(Ljava/lang/Iterable;Ljava/lang/Iterable;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    return-void

    .line 58
    :cond_3
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    .line 59
    .line 60
    new-instance v2, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;

    .line 61
    .line 62
    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    .line 63
    .line 64
    invoke-direct {v2, v3, p1}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;-><init>(Ljava/util/List;I)V

    .line 65
    .line 66
    .line 67
    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    .line 71
    .line 72
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    .line 73
    .line 74
    invoke-static {p1, v0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->removePartialRows(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 75
    .line 76
    .line 77
    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Lcom/google/zxing/oned/rss/DataCharacter;
    .locals 15

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getDataCharacterCounters()[I

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 9
    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    if-eqz p4, :cond_0

    .line 13
    .line 14
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    aget v4, v4, v2

    .line 19
    .line 20
    invoke-static {v0, v4, v1}, Lcom/google/zxing/oned/OneDReader;->recordPatternInReverse(Lcom/google/zxing/common/BitArray;I[I)V

    .line 21
    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    aget v4, v4, v3

    .line 29
    .line 30
    invoke-static {v0, v4, v1}, Lcom/google/zxing/oned/OneDReader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 31
    .line 32
    .line 33
    array-length v0, v1

    .line 34
    sub-int/2addr v0, v3

    .line 35
    const/4 v4, 0x0

    .line 36
    :goto_0
    if-ge v4, v0, :cond_1

    .line 37
    .line 38
    aget v5, v1, v4

    .line 39
    .line 40
    aget v6, v1, v0

    .line 41
    .line 42
    aput v6, v1, v4

    .line 43
    .line 44
    aput v5, v1, v0

    .line 45
    .line 46
    add-int/lit8 v4, v4, 0x1

    .line 47
    .line 48
    add-int/lit8 v0, v0, -0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    :goto_1
    invoke-static {v1}, Lcom/google/zxing/common/detector/MathUtils;->sum([I)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    int-to-float v0, v0

    .line 56
    const/16 v4, 0x11

    .line 57
    .line 58
    int-to-float v5, v4

    .line 59
    div-float/2addr v0, v5

    .line 60
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    aget v5, v5, v3

    .line 65
    .line 66
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    aget v6, v6, v2

    .line 71
    .line 72
    sub-int/2addr v5, v6

    .line 73
    int-to-float v5, v5

    .line 74
    const/high16 v6, 0x41700000    # 15.0f

    .line 75
    .line 76
    div-float/2addr v5, v6

    .line 77
    sub-float v6, v0, v5

    .line 78
    .line 79
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    div-float/2addr v6, v5

    .line 84
    const v5, 0x3e99999a    # 0.3f

    .line 85
    .line 86
    .line 87
    cmpl-float v6, v6, v5

    .line 88
    .line 89
    if-gtz v6, :cond_e

    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getOddCounts()[I

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getEvenCounts()[I

    .line 96
    .line 97
    .line 98
    move-result-object v7

    .line 99
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getOddRoundingErrors()[F

    .line 100
    .line 101
    .line 102
    move-result-object v8

    .line 103
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getEvenRoundingErrors()[F

    .line 104
    .line 105
    .line 106
    move-result-object v9

    .line 107
    const/4 v10, 0x0

    .line 108
    :goto_2
    array-length v11, v1

    .line 109
    if-ge v10, v11, :cond_7

    .line 110
    .line 111
    aget v11, v1, v10

    .line 112
    .line 113
    int-to-float v11, v11

    .line 114
    const/high16 v12, 0x3f800000    # 1.0f

    .line 115
    .line 116
    mul-float v11, v11, v12

    .line 117
    .line 118
    div-float/2addr v11, v0

    .line 119
    const/high16 v12, 0x3f000000    # 0.5f

    .line 120
    .line 121
    add-float/2addr v12, v11

    .line 122
    float-to-int v12, v12

    .line 123
    if-ge v12, v3, :cond_3

    .line 124
    .line 125
    cmpg-float v12, v11, v5

    .line 126
    .line 127
    if-ltz v12, :cond_2

    .line 128
    .line 129
    const/4 v12, 0x1

    .line 130
    goto :goto_3

    .line 131
    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    throw v0

    .line 136
    :cond_3
    const/16 v13, 0x8

    .line 137
    .line 138
    if-le v12, v13, :cond_5

    .line 139
    .line 140
    const v12, 0x410b3333    # 8.7f

    .line 141
    .line 142
    .line 143
    cmpl-float v12, v11, v12

    .line 144
    .line 145
    if-gtz v12, :cond_4

    .line 146
    .line 147
    const/16 v12, 0x8

    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_4
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    throw v0

    .line 155
    :cond_5
    :goto_3
    div-int/lit8 v13, v10, 0x2

    .line 156
    .line 157
    and-int/lit8 v14, v10, 0x1

    .line 158
    .line 159
    if-nez v14, :cond_6

    .line 160
    .line 161
    aput v12, v6, v13

    .line 162
    .line 163
    int-to-float v12, v12

    .line 164
    sub-float/2addr v11, v12

    .line 165
    aput v11, v8, v13

    .line 166
    .line 167
    goto :goto_4

    .line 168
    :cond_6
    aput v12, v7, v13

    .line 169
    .line 170
    int-to-float v12, v12

    .line 171
    sub-float/2addr v11, v12

    .line 172
    aput v11, v9, v13

    .line 173
    .line 174
    :goto_4
    add-int/lit8 v10, v10, 0x1

    .line 175
    .line 176
    goto :goto_2

    .line 177
    :cond_7
    move-object v10, p0

    .line 178
    invoke-direct {p0, v4}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->adjustOddEvenCounts(I)V

    .line 179
    .line 180
    .line 181
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    const/4 v1, 0x4

    .line 186
    mul-int/lit8 v0, v0, 0x4

    .line 187
    .line 188
    const/4 v4, 0x2

    .line 189
    if-eqz p3, :cond_8

    .line 190
    .line 191
    const/4 v5, 0x0

    .line 192
    goto :goto_5

    .line 193
    :cond_8
    const/4 v5, 0x2

    .line 194
    :goto_5
    add-int/2addr v0, v5

    .line 195
    xor-int/lit8 v5, p4, 0x1

    .line 196
    .line 197
    add-int/2addr v0, v5

    .line 198
    sub-int/2addr v0, v3

    .line 199
    array-length v5, v6

    .line 200
    sub-int/2addr v5, v3

    .line 201
    const/4 v8, 0x0

    .line 202
    const/4 v9, 0x0

    .line 203
    :goto_6
    if-ltz v5, :cond_a

    .line 204
    .line 205
    invoke-static/range {p2 .. p4}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->isNotA1left(Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Z

    .line 206
    .line 207
    .line 208
    move-result v11

    .line 209
    if-eqz v11, :cond_9

    .line 210
    .line 211
    sget-object v11, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->WEIGHTS:[[I

    .line 212
    .line 213
    aget-object v11, v11, v0

    .line 214
    .line 215
    mul-int/lit8 v12, v5, 0x2

    .line 216
    .line 217
    aget v11, v11, v12

    .line 218
    .line 219
    aget v12, v6, v5

    .line 220
    .line 221
    mul-int v12, v12, v11

    .line 222
    .line 223
    add-int/2addr v8, v12

    .line 224
    :cond_9
    aget v11, v6, v5

    .line 225
    .line 226
    add-int/2addr v9, v11

    .line 227
    add-int/lit8 v5, v5, -0x1

    .line 228
    .line 229
    goto :goto_6

    .line 230
    :cond_a
    array-length v5, v7

    .line 231
    sub-int/2addr v5, v3

    .line 232
    const/4 v11, 0x0

    .line 233
    :goto_7
    if-ltz v5, :cond_c

    .line 234
    .line 235
    invoke-static/range {p2 .. p4}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->isNotA1left(Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Z

    .line 236
    .line 237
    .line 238
    move-result v12

    .line 239
    if-eqz v12, :cond_b

    .line 240
    .line 241
    sget-object v12, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->WEIGHTS:[[I

    .line 242
    .line 243
    aget-object v12, v12, v0

    .line 244
    .line 245
    mul-int/lit8 v13, v5, 0x2

    .line 246
    .line 247
    add-int/2addr v13, v3

    .line 248
    aget v12, v12, v13

    .line 249
    .line 250
    aget v13, v7, v5

    .line 251
    .line 252
    mul-int v13, v13, v12

    .line 253
    .line 254
    add-int/2addr v11, v13

    .line 255
    :cond_b
    add-int/lit8 v5, v5, -0x1

    .line 256
    .line 257
    goto :goto_7

    .line 258
    :cond_c
    add-int/2addr v8, v11

    .line 259
    and-int/lit8 v0, v9, 0x1

    .line 260
    .line 261
    if-nez v0, :cond_d

    .line 262
    .line 263
    const/16 v0, 0xd

    .line 264
    .line 265
    if-gt v9, v0, :cond_d

    .line 266
    .line 267
    if-lt v9, v1, :cond_d

    .line 268
    .line 269
    sub-int/2addr v0, v9

    .line 270
    div-int/2addr v0, v4

    .line 271
    sget-object v1, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->SYMBOL_WIDEST:[I

    .line 272
    .line 273
    aget v1, v1, v0

    .line 274
    .line 275
    rsub-int/lit8 v4, v1, 0x9

    .line 276
    .line 277
    invoke-static {v6, v1, v3}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    .line 278
    .line 279
    .line 280
    move-result v1

    .line 281
    invoke-static {v7, v4, v2}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    .line 282
    .line 283
    .line 284
    move-result v2

    .line 285
    sget-object v3, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->EVEN_TOTAL_SUBSET:[I

    .line 286
    .line 287
    aget v3, v3, v0

    .line 288
    .line 289
    sget-object v4, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->GSUM:[I

    .line 290
    .line 291
    aget v0, v4, v0

    .line 292
    .line 293
    mul-int v1, v1, v3

    .line 294
    .line 295
    add-int/2addr v1, v2

    .line 296
    add-int/2addr v1, v0

    .line 297
    new-instance v0, Lcom/google/zxing/oned/rss/DataCharacter;

    .line 298
    .line 299
    invoke-direct {v0, v1, v8}, Lcom/google/zxing/oned/rss/DataCharacter;-><init>(II)V

    .line 300
    .line 301
    .line 302
    return-object v0

    .line 303
    :cond_d
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    throw v0

    .line 308
    :cond_e
    move-object v10, p0

    .line 309
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    throw v0
.end method

.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .line 1
    const/4 p3, 0x0

    .line 2
    iput-boolean p3, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startFromEven:Z

    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->decodeRow2pairs(ILcom/google/zxing/common/BitArray;)Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object p3

    .line 8
    invoke-static {p3}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->constructResult(Ljava/util/List;)Lcom/google/zxing/Result;

    .line 9
    .line 10
    .line 11
    move-result-object p1
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    return-object p1

    .line 13
    :catch_0
    const/4 p3, 0x1

    .line 14
    iput-boolean p3, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startFromEven:Z

    .line 15
    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->decodeRow2pairs(ILcom/google/zxing/common/BitArray;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {p1}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->constructResult(Ljava/util/List;)Lcom/google/zxing/Result;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method public decodeRow2pairs(ILcom/google/zxing/common/BitArray;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    const/4 v2, 0x1

    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    :try_start_0
    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    .line 12
    .line 13
    invoke-virtual {p0, p2, v3, p1}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->retrieveNextPair(Lcom/google/zxing/common/BitArray;Ljava/util/List;I)Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception v1

    .line 22
    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    .line 23
    .line 24
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-nez v3, :cond_0

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    throw v1

    .line 33
    :cond_1
    invoke-direct {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->checkChecksum()Z

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    if-eqz p2, :cond_2

    .line 38
    .line 39
    iget-object p2, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    .line 40
    .line 41
    invoke-static {p2, v2}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->isValidSequence(Ljava/util/List;Z)Z

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    if-eqz p2, :cond_2

    .line 46
    .line 47
    iget-object p1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    .line 48
    .line 49
    return-object p1

    .line 50
    :cond_2
    iget-object p2, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    .line 51
    .line 52
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    invoke-direct {p0, p1}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->storeRow(I)V

    .line 57
    .line 58
    .line 59
    if-nez p2, :cond_4

    .line 60
    .line 61
    invoke-direct {p0, v0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->checkRows(Z)Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    if-eqz p1, :cond_3

    .line 66
    .line 67
    return-object p1

    .line 68
    :cond_3
    invoke-direct {p0, v2}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->checkRows(Z)Ljava/util/List;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    if-eqz p1, :cond_4

    .line 73
    .line 74
    return-object p1

    .line 75
    :cond_4
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    throw p1
.end method

.method public getRows()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedRow;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public reset()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public retrieveNextPair(Lcom/google/zxing/common/BitArray;Ljava/util/List;I)Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;I)",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    rem-int/lit8 v0, v0, 0x2

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    iget-boolean v3, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startFromEven:Z

    .line 15
    .line 16
    if-eqz v3, :cond_1

    .line 17
    .line 18
    xor-int/lit8 v0, v0, 0x1

    .line 19
    .line 20
    :cond_1
    const/4 v3, 0x0

    .line 21
    const/4 v4, -0x1

    .line 22
    move-object v6, v3

    .line 23
    const/4 v5, 0x1

    .line 24
    :cond_2
    invoke-direct {p0, p1, p2, v4}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->findNextPair(Lcom/google/zxing/common/BitArray;Ljava/util/List;I)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, p1, p3, v0, p2}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->parseFoundFinderPattern(Lcom/google/zxing/common/BitArray;IZLjava/util/List;)Lcom/google/zxing/oned/rss/FinderPattern;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    if-nez v7, :cond_3

    .line 32
    .line 33
    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    .line 34
    .line 35
    aget v4, v4, v1

    .line 36
    .line 37
    invoke-static {p1, v4}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getNextSecondBar(Lcom/google/zxing/common/BitArray;I)I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    goto :goto_1

    .line 42
    :cond_3
    :try_start_0
    invoke-virtual {p0, p1, v7, v0, v2}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Lcom/google/zxing/oned/rss/DataCharacter;

    .line 43
    .line 44
    .line 45
    move-result-object v6
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    const/4 v5, 0x0

    .line 47
    goto :goto_1

    .line 48
    :catch_0
    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    .line 49
    .line 50
    aget v4, v4, v1

    .line 51
    .line 52
    invoke-static {p1, v4}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getNextSecondBar(Lcom/google/zxing/common/BitArray;I)I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    :goto_1
    if-nez v5, :cond_2

    .line 57
    .line 58
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 59
    .line 60
    .line 61
    move-result p3

    .line 62
    if-nez p3, :cond_5

    .line 63
    .line 64
    invoke-static {v2, p2}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(ILjava/util/List;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    check-cast p2, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 69
    .line 70
    invoke-virtual {p2}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->mustBeLast()Z

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    if-nez p2, :cond_4

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_4
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    throw p1

    .line 82
    :cond_5
    :goto_2
    :try_start_1
    invoke-virtual {p0, p1, v7, v0, v1}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Lcom/google/zxing/oned/rss/DataCharacter;

    .line 83
    .line 84
    .line 85
    move-result-object v3
    :try_end_1
    .catch Lcom/google/zxing/NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 86
    :catch_1
    new-instance p1, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 87
    .line 88
    invoke-direct {p1, v6, v3, v7}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;-><init>(Lcom/google/zxing/oned/rss/DataCharacter;Lcom/google/zxing/oned/rss/DataCharacter;Lcom/google/zxing/oned/rss/FinderPattern;)V

    .line 89
    .line 90
    .line 91
    return-object p1
.end method
