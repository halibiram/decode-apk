.class final Lcom/google/zxing/qrcode/encoder/MatrixUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final POSITION_ADJUSTMENT_PATTERN:[[I

.field private static final POSITION_ADJUSTMENT_PATTERN_COORDINATE_TABLE:[[I

.field private static final POSITION_DETECTION_PATTERN:[[I

.field private static final TYPE_INFO_COORDINATES:[[I

.field private static final TYPE_INFO_MASK_PATTERN:I = 0x5412

.field private static final TYPE_INFO_POLY:I = 0x537

.field private static final VERSION_INFO_POLY:I = 0x1f25


# direct methods
.method static constructor <clinit>()V
    .locals 44

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x7

    .line 3
    new-array v2, v1, [I

    .line 4
    .line 5
    fill-array-data v2, :array_0

    .line 6
    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    new-array v4, v1, [I

    .line 10
    .line 11
    fill-array-data v4, :array_1

    .line 12
    .line 13
    .line 14
    new-array v5, v1, [I

    .line 15
    .line 16
    fill-array-data v5, :array_2

    .line 17
    .line 18
    .line 19
    new-array v6, v1, [I

    .line 20
    .line 21
    fill-array-data v6, :array_3

    .line 22
    .line 23
    .line 24
    new-array v7, v1, [I

    .line 25
    .line 26
    fill-array-data v7, :array_4

    .line 27
    .line 28
    .line 29
    new-array v8, v1, [I

    .line 30
    .line 31
    fill-array-data v8, :array_5

    .line 32
    .line 33
    .line 34
    new-array v9, v1, [I

    .line 35
    .line 36
    fill-array-data v9, :array_6

    .line 37
    .line 38
    .line 39
    new-array v10, v1, [[I

    .line 40
    .line 41
    aput-object v2, v10, v3

    .line 42
    .line 43
    aput-object v4, v10, v0

    .line 44
    .line 45
    const/4 v2, 0x2

    .line 46
    aput-object v5, v10, v2

    .line 47
    .line 48
    const/4 v4, 0x3

    .line 49
    aput-object v6, v10, v4

    .line 50
    .line 51
    const/4 v5, 0x4

    .line 52
    aput-object v7, v10, v5

    .line 53
    .line 54
    const/4 v6, 0x5

    .line 55
    aput-object v8, v10, v6

    .line 56
    .line 57
    const/4 v7, 0x6

    .line 58
    aput-object v9, v10, v7

    .line 59
    .line 60
    sput-object v10, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_DETECTION_PATTERN:[[I

    .line 61
    .line 62
    new-array v8, v6, [[I

    .line 63
    .line 64
    filled-new-array {v0, v0, v0, v0, v0}, [I

    .line 65
    .line 66
    .line 67
    move-result-object v9

    .line 68
    aput-object v9, v8, v3

    .line 69
    .line 70
    filled-new-array {v0, v3, v3, v3, v0}, [I

    .line 71
    .line 72
    .line 73
    move-result-object v9

    .line 74
    aput-object v9, v8, v0

    .line 75
    .line 76
    filled-new-array {v0, v3, v0, v3, v0}, [I

    .line 77
    .line 78
    .line 79
    move-result-object v9

    .line 80
    aput-object v9, v8, v2

    .line 81
    .line 82
    filled-new-array {v0, v3, v3, v3, v0}, [I

    .line 83
    .line 84
    .line 85
    move-result-object v9

    .line 86
    aput-object v9, v8, v4

    .line 87
    .line 88
    filled-new-array {v0, v0, v0, v0, v0}, [I

    .line 89
    .line 90
    .line 91
    move-result-object v9

    .line 92
    aput-object v9, v8, v5

    .line 93
    .line 94
    sput-object v8, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_ADJUSTMENT_PATTERN:[[I

    .line 95
    .line 96
    new-array v8, v1, [I

    .line 97
    .line 98
    fill-array-data v8, :array_7

    .line 99
    .line 100
    .line 101
    new-array v9, v1, [I

    .line 102
    .line 103
    fill-array-data v9, :array_8

    .line 104
    .line 105
    .line 106
    new-array v10, v1, [I

    .line 107
    .line 108
    fill-array-data v10, :array_9

    .line 109
    .line 110
    .line 111
    new-array v12, v1, [I

    .line 112
    .line 113
    fill-array-data v12, :array_a

    .line 114
    .line 115
    .line 116
    new-array v14, v1, [I

    .line 117
    .line 118
    fill-array-data v14, :array_b

    .line 119
    .line 120
    .line 121
    new-array v15, v1, [I

    .line 122
    .line 123
    fill-array-data v15, :array_c

    .line 124
    .line 125
    .line 126
    new-array v13, v1, [I

    .line 127
    .line 128
    fill-array-data v13, :array_d

    .line 129
    .line 130
    .line 131
    new-array v11, v1, [I

    .line 132
    .line 133
    fill-array-data v11, :array_e

    .line 134
    .line 135
    .line 136
    new-array v7, v1, [I

    .line 137
    .line 138
    fill-array-data v7, :array_f

    .line 139
    .line 140
    .line 141
    const/16 v16, 0x1c

    .line 142
    .line 143
    new-array v6, v1, [I

    .line 144
    .line 145
    fill-array-data v6, :array_10

    .line 146
    .line 147
    .line 148
    new-array v5, v1, [I

    .line 149
    .line 150
    fill-array-data v5, :array_11

    .line 151
    .line 152
    .line 153
    const/16 v17, 0x20

    .line 154
    .line 155
    new-array v4, v1, [I

    .line 156
    .line 157
    fill-array-data v4, :array_12

    .line 158
    .line 159
    .line 160
    new-array v2, v1, [I

    .line 161
    .line 162
    fill-array-data v2, :array_13

    .line 163
    .line 164
    .line 165
    new-array v0, v1, [I

    .line 166
    .line 167
    fill-array-data v0, :array_14

    .line 168
    .line 169
    .line 170
    new-array v3, v1, [I

    .line 171
    .line 172
    fill-array-data v3, :array_15

    .line 173
    .line 174
    .line 175
    move-object/from16 v19, v3

    .line 176
    .line 177
    new-array v3, v1, [I

    .line 178
    .line 179
    fill-array-data v3, :array_16

    .line 180
    .line 181
    .line 182
    move-object/from16 v20, v3

    .line 183
    .line 184
    new-array v3, v1, [I

    .line 185
    .line 186
    fill-array-data v3, :array_17

    .line 187
    .line 188
    .line 189
    move-object/from16 v21, v3

    .line 190
    .line 191
    new-array v3, v1, [I

    .line 192
    .line 193
    fill-array-data v3, :array_18

    .line 194
    .line 195
    .line 196
    move-object/from16 v22, v3

    .line 197
    .line 198
    new-array v3, v1, [I

    .line 199
    .line 200
    fill-array-data v3, :array_19

    .line 201
    .line 202
    .line 203
    move-object/from16 v23, v3

    .line 204
    .line 205
    new-array v3, v1, [I

    .line 206
    .line 207
    fill-array-data v3, :array_1a

    .line 208
    .line 209
    .line 210
    move-object/from16 v24, v3

    .line 211
    .line 212
    new-array v3, v1, [I

    .line 213
    .line 214
    fill-array-data v3, :array_1b

    .line 215
    .line 216
    .line 217
    move-object/from16 v25, v3

    .line 218
    .line 219
    new-array v3, v1, [I

    .line 220
    .line 221
    fill-array-data v3, :array_1c

    .line 222
    .line 223
    .line 224
    move-object/from16 v26, v3

    .line 225
    .line 226
    new-array v3, v1, [I

    .line 227
    .line 228
    fill-array-data v3, :array_1d

    .line 229
    .line 230
    .line 231
    move-object/from16 v27, v3

    .line 232
    .line 233
    new-array v3, v1, [I

    .line 234
    .line 235
    fill-array-data v3, :array_1e

    .line 236
    .line 237
    .line 238
    move-object/from16 v28, v3

    .line 239
    .line 240
    new-array v3, v1, [I

    .line 241
    .line 242
    fill-array-data v3, :array_1f

    .line 243
    .line 244
    .line 245
    move-object/from16 v29, v3

    .line 246
    .line 247
    new-array v3, v1, [I

    .line 248
    .line 249
    fill-array-data v3, :array_20

    .line 250
    .line 251
    .line 252
    move-object/from16 v30, v3

    .line 253
    .line 254
    new-array v3, v1, [I

    .line 255
    .line 256
    fill-array-data v3, :array_21

    .line 257
    .line 258
    .line 259
    move-object/from16 v31, v3

    .line 260
    .line 261
    new-array v3, v1, [I

    .line 262
    .line 263
    fill-array-data v3, :array_22

    .line 264
    .line 265
    .line 266
    move-object/from16 v32, v3

    .line 267
    .line 268
    new-array v3, v1, [I

    .line 269
    .line 270
    fill-array-data v3, :array_23

    .line 271
    .line 272
    .line 273
    move-object/from16 v33, v3

    .line 274
    .line 275
    new-array v3, v1, [I

    .line 276
    .line 277
    fill-array-data v3, :array_24

    .line 278
    .line 279
    .line 280
    move-object/from16 v34, v3

    .line 281
    .line 282
    new-array v3, v1, [I

    .line 283
    .line 284
    fill-array-data v3, :array_25

    .line 285
    .line 286
    .line 287
    move-object/from16 v35, v3

    .line 288
    .line 289
    new-array v3, v1, [I

    .line 290
    .line 291
    fill-array-data v3, :array_26

    .line 292
    .line 293
    .line 294
    move-object/from16 v36, v3

    .line 295
    .line 296
    new-array v3, v1, [I

    .line 297
    .line 298
    fill-array-data v3, :array_27

    .line 299
    .line 300
    .line 301
    move-object/from16 v37, v3

    .line 302
    .line 303
    new-array v3, v1, [I

    .line 304
    .line 305
    fill-array-data v3, :array_28

    .line 306
    .line 307
    .line 308
    move-object/from16 v38, v3

    .line 309
    .line 310
    new-array v3, v1, [I

    .line 311
    .line 312
    fill-array-data v3, :array_29

    .line 313
    .line 314
    .line 315
    move-object/from16 v39, v3

    .line 316
    .line 317
    new-array v3, v1, [I

    .line 318
    .line 319
    fill-array-data v3, :array_2a

    .line 320
    .line 321
    .line 322
    move-object/from16 v40, v3

    .line 323
    .line 324
    new-array v3, v1, [I

    .line 325
    .line 326
    fill-array-data v3, :array_2b

    .line 327
    .line 328
    .line 329
    move-object/from16 v41, v3

    .line 330
    .line 331
    new-array v3, v1, [I

    .line 332
    .line 333
    fill-array-data v3, :array_2c

    .line 334
    .line 335
    .line 336
    move-object/from16 v42, v3

    .line 337
    .line 338
    new-array v3, v1, [I

    .line 339
    .line 340
    fill-array-data v3, :array_2d

    .line 341
    .line 342
    .line 343
    move-object/from16 v43, v3

    .line 344
    .line 345
    new-array v3, v1, [I

    .line 346
    .line 347
    fill-array-data v3, :array_2e

    .line 348
    .line 349
    .line 350
    const/16 v1, 0x28

    .line 351
    .line 352
    new-array v1, v1, [[I

    .line 353
    .line 354
    const/16 v18, 0x0

    .line 355
    .line 356
    aput-object v8, v1, v18

    .line 357
    .line 358
    const/4 v8, 0x1

    .line 359
    aput-object v9, v1, v8

    .line 360
    .line 361
    const/4 v8, 0x2

    .line 362
    aput-object v10, v1, v8

    .line 363
    .line 364
    const/4 v8, 0x3

    .line 365
    aput-object v12, v1, v8

    .line 366
    .line 367
    const/4 v8, 0x4

    .line 368
    aput-object v14, v1, v8

    .line 369
    .line 370
    const/4 v8, 0x5

    .line 371
    aput-object v15, v1, v8

    .line 372
    .line 373
    const/4 v8, 0x6

    .line 374
    aput-object v13, v1, v8

    .line 375
    .line 376
    const/4 v8, 0x7

    .line 377
    aput-object v11, v1, v8

    .line 378
    .line 379
    const/16 v8, 0x8

    .line 380
    .line 381
    aput-object v7, v1, v8

    .line 382
    .line 383
    const/16 v7, 0x9

    .line 384
    .line 385
    aput-object v6, v1, v7

    .line 386
    .line 387
    const/16 v6, 0xa

    .line 388
    .line 389
    aput-object v5, v1, v6

    .line 390
    .line 391
    const/16 v5, 0xb

    .line 392
    .line 393
    aput-object v4, v1, v5

    .line 394
    .line 395
    const/16 v4, 0xc

    .line 396
    .line 397
    aput-object v2, v1, v4

    .line 398
    .line 399
    const/16 v2, 0xd

    .line 400
    .line 401
    aput-object v0, v1, v2

    .line 402
    .line 403
    const/16 v0, 0xe

    .line 404
    .line 405
    aput-object v19, v1, v0

    .line 406
    .line 407
    const/16 v0, 0xf

    .line 408
    .line 409
    aput-object v20, v1, v0

    .line 410
    .line 411
    const/16 v0, 0x10

    .line 412
    .line 413
    aput-object v21, v1, v0

    .line 414
    .line 415
    const/16 v0, 0x11

    .line 416
    .line 417
    aput-object v22, v1, v0

    .line 418
    .line 419
    const/16 v0, 0x12

    .line 420
    .line 421
    aput-object v23, v1, v0

    .line 422
    .line 423
    const/16 v0, 0x13

    .line 424
    .line 425
    aput-object v24, v1, v0

    .line 426
    .line 427
    const/16 v0, 0x14

    .line 428
    .line 429
    aput-object v25, v1, v0

    .line 430
    .line 431
    const/16 v0, 0x15

    .line 432
    .line 433
    aput-object v26, v1, v0

    .line 434
    .line 435
    const/16 v0, 0x16

    .line 436
    .line 437
    aput-object v27, v1, v0

    .line 438
    .line 439
    const/16 v0, 0x17

    .line 440
    .line 441
    aput-object v28, v1, v0

    .line 442
    .line 443
    const/16 v0, 0x18

    .line 444
    .line 445
    aput-object v29, v1, v0

    .line 446
    .line 447
    const/16 v0, 0x19

    .line 448
    .line 449
    aput-object v30, v1, v0

    .line 450
    .line 451
    const/16 v0, 0x1a

    .line 452
    .line 453
    aput-object v31, v1, v0

    .line 454
    .line 455
    const/16 v0, 0x1b

    .line 456
    .line 457
    aput-object v32, v1, v0

    .line 458
    .line 459
    aput-object v33, v1, v16

    .line 460
    .line 461
    const/16 v0, 0x1d

    .line 462
    .line 463
    aput-object v34, v1, v0

    .line 464
    .line 465
    const/16 v0, 0x1e

    .line 466
    .line 467
    aput-object v35, v1, v0

    .line 468
    .line 469
    const/16 v0, 0x1f

    .line 470
    .line 471
    aput-object v36, v1, v0

    .line 472
    .line 473
    aput-object v37, v1, v17

    .line 474
    .line 475
    const/16 v0, 0x21

    .line 476
    .line 477
    aput-object v38, v1, v0

    .line 478
    .line 479
    const/16 v0, 0x22

    .line 480
    .line 481
    aput-object v39, v1, v0

    .line 482
    .line 483
    const/16 v0, 0x23

    .line 484
    .line 485
    aput-object v40, v1, v0

    .line 486
    .line 487
    const/16 v0, 0x24

    .line 488
    .line 489
    aput-object v41, v1, v0

    .line 490
    .line 491
    const/16 v0, 0x25

    .line 492
    .line 493
    aput-object v42, v1, v0

    .line 494
    .line 495
    const/16 v0, 0x26

    .line 496
    .line 497
    aput-object v43, v1, v0

    .line 498
    .line 499
    const/16 v0, 0x27

    .line 500
    .line 501
    aput-object v3, v1, v0

    .line 502
    .line 503
    sput-object v1, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_ADJUSTMENT_PATTERN_COORDINATE_TABLE:[[I

    .line 504
    .line 505
    const/16 v0, 0xf

    .line 506
    .line 507
    new-array v0, v0, [[I

    .line 508
    .line 509
    const/4 v1, 0x0

    .line 510
    filled-new-array {v8, v1}, [I

    .line 511
    .line 512
    .line 513
    move-result-object v2

    .line 514
    aput-object v2, v0, v1

    .line 515
    .line 516
    const/4 v1, 0x1

    .line 517
    filled-new-array {v8, v1}, [I

    .line 518
    .line 519
    .line 520
    move-result-object v2

    .line 521
    aput-object v2, v0, v1

    .line 522
    .line 523
    const/4 v1, 0x2

    .line 524
    filled-new-array {v8, v1}, [I

    .line 525
    .line 526
    .line 527
    move-result-object v2

    .line 528
    aput-object v2, v0, v1

    .line 529
    .line 530
    const/4 v1, 0x3

    .line 531
    filled-new-array {v8, v1}, [I

    .line 532
    .line 533
    .line 534
    move-result-object v2

    .line 535
    aput-object v2, v0, v1

    .line 536
    .line 537
    const/4 v1, 0x4

    .line 538
    filled-new-array {v8, v1}, [I

    .line 539
    .line 540
    .line 541
    move-result-object v2

    .line 542
    aput-object v2, v0, v1

    .line 543
    .line 544
    const/4 v1, 0x5

    .line 545
    filled-new-array {v8, v1}, [I

    .line 546
    .line 547
    .line 548
    move-result-object v2

    .line 549
    aput-object v2, v0, v1

    .line 550
    .line 551
    const/4 v2, 0x7

    .line 552
    filled-new-array {v8, v2}, [I

    .line 553
    .line 554
    .line 555
    move-result-object v3

    .line 556
    const/4 v4, 0x6

    .line 557
    aput-object v3, v0, v4

    .line 558
    .line 559
    filled-new-array {v8, v8}, [I

    .line 560
    .line 561
    .line 562
    move-result-object v3

    .line 563
    aput-object v3, v0, v2

    .line 564
    .line 565
    filled-new-array {v2, v8}, [I

    .line 566
    .line 567
    .line 568
    move-result-object v2

    .line 569
    aput-object v2, v0, v8

    .line 570
    .line 571
    filled-new-array {v1, v8}, [I

    .line 572
    .line 573
    .line 574
    move-result-object v1

    .line 575
    const/16 v2, 0x9

    .line 576
    .line 577
    aput-object v1, v0, v2

    .line 578
    .line 579
    const/4 v1, 0x4

    .line 580
    filled-new-array {v1, v8}, [I

    .line 581
    .line 582
    .line 583
    move-result-object v1

    .line 584
    const/16 v2, 0xa

    .line 585
    .line 586
    aput-object v1, v0, v2

    .line 587
    .line 588
    const/4 v1, 0x3

    .line 589
    filled-new-array {v1, v8}, [I

    .line 590
    .line 591
    .line 592
    move-result-object v1

    .line 593
    const/16 v2, 0xb

    .line 594
    .line 595
    aput-object v1, v0, v2

    .line 596
    .line 597
    const/4 v1, 0x2

    .line 598
    filled-new-array {v1, v8}, [I

    .line 599
    .line 600
    .line 601
    move-result-object v1

    .line 602
    const/16 v2, 0xc

    .line 603
    .line 604
    aput-object v1, v0, v2

    .line 605
    .line 606
    const/4 v1, 0x1

    .line 607
    filled-new-array {v1, v8}, [I

    .line 608
    .line 609
    .line 610
    move-result-object v1

    .line 611
    const/16 v2, 0xd

    .line 612
    .line 613
    aput-object v1, v0, v2

    .line 614
    .line 615
    const/4 v1, 0x0

    .line 616
    filled-new-array {v1, v8}, [I

    .line 617
    .line 618
    .line 619
    move-result-object v1

    .line 620
    const/16 v2, 0xe

    .line 621
    .line 622
    aput-object v1, v0, v2

    .line 623
    .line 624
    sput-object v0, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->TYPE_INFO_COORDINATES:[[I

    .line 625
    .line 626
    return-void

    .line 627
    :array_0
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

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
    .line 644
    .line 645
    :array_1
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
    .end array-data

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
    :array_2
    .array-data 4
        0x1
        0x0
        0x1
        0x1
        0x1
        0x0
        0x1
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
    :array_3
    .array-data 4
        0x1
        0x0
        0x1
        0x1
        0x1
        0x0
        0x1
    .end array-data

    .line 682
    .line 683
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
    :array_4
    .array-data 4
        0x1
        0x0
        0x1
        0x1
        0x1
        0x0
        0x1
    .end array-data

    .line 700
    .line 701
    .line 702
    .line 703
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
    :array_5
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
    .end array-data

    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
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
    :array_6
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
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
    :array_7
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

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
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    :array_8
    .array-data 4
        0x6
        0x12
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

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
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    :array_9
    .array-data 4
        0x6
        0x16
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

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
    .line 804
    .line 805
    .line 806
    .line 807
    :array_a
    .array-data 4
        0x6
        0x1a
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

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
    .line 824
    .line 825
    :array_b
    .array-data 4
        0x6
        0x1e
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

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
    :array_c
    .array-data 4
        0x6
        0x22
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
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
    :array_d
    .array-data 4
        0x6
        0x16
        0x26
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

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
    .line 878
    .line 879
    :array_e
    .array-data 4
        0x6
        0x18
        0x2a
        -0x1
        -0x1
        -0x1
        -0x1
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
    :array_f
    .array-data 4
        0x6
        0x1a
        0x2e
        -0x1
        -0x1
        -0x1
        -0x1
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
    :array_10
    .array-data 4
        0x6
        0x1c
        0x32
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

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
    .line 930
    .line 931
    .line 932
    .line 933
    :array_11
    .array-data 4
        0x6
        0x1e
        0x36
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

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
    .line 950
    .line 951
    :array_12
    .array-data 4
        0x6
        0x20
        0x3a
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

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
    :array_13
    .array-data 4
        0x6
        0x22
        0x3e
        -0x1
        -0x1
        -0x1
        -0x1
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
    .line 986
    .line 987
    :array_14
    .array-data 4
        0x6
        0x1a
        0x2e
        0x42
        -0x1
        -0x1
        -0x1
    .end array-data

    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    :array_15
    .array-data 4
        0x6
        0x1a
        0x30
        0x46
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_16
    .array-data 4
        0x6
        0x1a
        0x32
        0x4a
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_17
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_18
    .array-data 4
        0x6
        0x1e
        0x38
        0x52
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_19
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1a
    .array-data 4
        0x6
        0x22
        0x3e
        0x5a
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1b
    .array-data 4
        0x6
        0x1c
        0x32
        0x48
        0x5e
        -0x1
        -0x1
    .end array-data

    :array_1c
    .array-data 4
        0x6
        0x1a
        0x32
        0x4a
        0x62
        -0x1
        -0x1
    .end array-data

    :array_1d
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        0x66
        -0x1
        -0x1
    .end array-data

    :array_1e
    .array-data 4
        0x6
        0x1c
        0x36
        0x50
        0x6a
        -0x1
        -0x1
    .end array-data

    :array_1f
    .array-data 4
        0x6
        0x20
        0x3a
        0x54
        0x6e
        -0x1
        -0x1
    .end array-data

    :array_20
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
        0x72
        -0x1
        -0x1
    .end array-data

    :array_21
    .array-data 4
        0x6
        0x22
        0x3e
        0x5a
        0x76
        -0x1
        -0x1
    .end array-data

    :array_22
    .array-data 4
        0x6
        0x1a
        0x32
        0x4a
        0x62
        0x7a
        -0x1
    .end array-data

    :array_23
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        0x66
        0x7e
        -0x1
    .end array-data

    :array_24
    .array-data 4
        0x6
        0x1a
        0x34
        0x4e
        0x68
        0x82
        -0x1
    .end array-data

    :array_25
    .array-data 4
        0x6
        0x1e
        0x38
        0x52
        0x6c
        0x86
        -0x1
    .end array-data

    :array_26
    .array-data 4
        0x6
        0x22
        0x3c
        0x56
        0x70
        0x8a
        -0x1
    .end array-data

    :array_27
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
        0x72
        0x8e
        -0x1
    .end array-data

    :array_28
    .array-data 4
        0x6
        0x22
        0x3e
        0x5a
        0x76
        0x92
        -0x1
    .end array-data

    :array_29
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        0x66
        0x7e
        0x96
    .end array-data

    :array_2a
    .array-data 4
        0x6
        0x18
        0x32
        0x4c
        0x66
        0x80
        0x9a
    .end array-data

    :array_2b
    .array-data 4
        0x6
        0x1c
        0x36
        0x50
        0x6a
        0x84
        0x9e
    .end array-data

    :array_2c
    .array-data 4
        0x6
        0x20
        0x3a
        0x54
        0x6e
        0x88
        0xa2
    .end array-data

    :array_2d
    .array-data 4
        0x6
        0x1a
        0x36
        0x52
        0x6e
        0x8a
        0xa6
    .end array-data

    :array_2e
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
        0x72
        0x8e
        0xaa
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static buildMatrix(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 0

    .line 1
    invoke-static {p4}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->clearMatrix(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p2, p4}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedBasicPatterns(Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 5
    .line 6
    .line 7
    invoke-static {p1, p3, p4}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedTypeInfo(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p2, p4}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->maybeEmbedVersionInfo(Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p0, p3, p4}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedDataBits(Lcom/google/zxing/common/BitArray;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static calculateBCHCode(II)I
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->findMSBSet(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v1, v0, -0x1

    .line 8
    .line 9
    shl-int/2addr p0, v1

    .line 10
    :goto_0
    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->findMSBSet(I)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-lt v1, v0, :cond_0

    .line 15
    .line 16
    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->findMSBSet(I)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    sub-int/2addr v1, v0

    .line 21
    shl-int v1, p1, v1

    .line 22
    .line 23
    xor-int/2addr p0, v1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return p0

    .line 26
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 27
    .line 28
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 29
    .line 30
    const/4 v0, 0x3

    .line 31
    new-array v0, v0, [J

    .line 32
    .line 33
    fill-array-data v0, :array_0

    .line 34
    .line 35
    .line 36
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p0

    .line 47
    :array_0
    .array-data 8
        -0x408bf0418ec4efb6L    # -0.004897827067626601
        -0x14a4229e45860231L    # -1.431371973088679E209
        -0x60b097049cd923bbL
    .end array-data
.end method

.method public static clearMatrix(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->clear(B)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public static embedBasicPatterns(Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedPositionDetectionPatternsAndSeparators(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedDarkDotAtLeftBottomCorner(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 5
    .line 6
    .line 7
    invoke-static {p0, p1}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->maybeEmbedPositionAdjustmentPatterns(Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedTimingPatterns(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private static embedDarkDotAtLeftBottomCorner(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    sub-int/2addr v0, v1

    .line 8
    invoke-virtual {p0, v1, v0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    sub-int/2addr v0, v1

    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-virtual {p0, v1, v0, v2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    new-instance p0, Lcom/google/zxing/WriterException;

    .line 25
    .line 26
    invoke-direct {p0}, Lcom/google/zxing/WriterException;-><init>()V

    .line 27
    .line 28
    .line 29
    throw p0
.end method

.method public static embedDataBits(Lcom/google/zxing/common/BitArray;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 10

    .line 1
    invoke-virtual {p2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    invoke-virtual {p2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    add-int/lit8 v1, v1, -0x1

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, -0x1

    .line 15
    const/4 v4, 0x0

    .line 16
    const/4 v5, -0x1

    .line 17
    :goto_0
    if-lez v0, :cond_6

    .line 18
    .line 19
    const/4 v6, 0x6

    .line 20
    if-ne v0, v6, :cond_0

    .line 21
    .line 22
    add-int/2addr v0, v3

    .line 23
    :cond_0
    :goto_1
    if-ltz v1, :cond_5

    .line 24
    .line 25
    invoke-virtual {p2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    if-ge v1, v6, :cond_5

    .line 30
    .line 31
    const/4 v6, 0x0

    .line 32
    :goto_2
    const/4 v7, 0x2

    .line 33
    if-ge v6, v7, :cond_4

    .line 34
    .line 35
    sub-int v7, v0, v6

    .line 36
    .line 37
    invoke-virtual {p2, v7, v1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    .line 38
    .line 39
    .line 40
    move-result v8

    .line 41
    invoke-static {v8}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    .line 42
    .line 43
    .line 44
    move-result v8

    .line 45
    if-nez v8, :cond_1

    .line 46
    .line 47
    goto :goto_4

    .line 48
    :cond_1
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    .line 49
    .line 50
    .line 51
    move-result v8

    .line 52
    if-ge v4, v8, :cond_2

    .line 53
    .line 54
    invoke-virtual {p0, v4}, Lcom/google/zxing/common/BitArray;->get(I)Z

    .line 55
    .line 56
    .line 57
    move-result v8

    .line 58
    add-int/lit8 v4, v4, 0x1

    .line 59
    .line 60
    goto :goto_3

    .line 61
    :cond_2
    const/4 v8, 0x0

    .line 62
    :goto_3
    if-eq p1, v3, :cond_3

    .line 63
    .line 64
    invoke-static {p1, v7, v1}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->getDataMaskBit(III)Z

    .line 65
    .line 66
    .line 67
    move-result v9

    .line 68
    if-eqz v9, :cond_3

    .line 69
    .line 70
    xor-int/lit8 v8, v8, 0x1

    .line 71
    .line 72
    :cond_3
    invoke-virtual {p2, v7, v1, v8}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    .line 73
    .line 74
    .line 75
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_4
    add-int/2addr v1, v5

    .line 79
    goto :goto_1

    .line 80
    :cond_5
    neg-int v5, v5

    .line 81
    add-int/2addr v1, v5

    .line 82
    add-int/lit8 v0, v0, -0x2

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_6
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-ne v4, p1, :cond_7

    .line 90
    .line 91
    return-void

    .line 92
    :cond_7
    new-instance p1, Lcom/google/zxing/WriterException;

    .line 93
    .line 94
    new-instance p2, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 100
    .line 101
    const/4 v1, 0x4

    .line 102
    new-array v1, v1, [J

    .line 103
    .line 104
    fill-array-data v1, :array_0

    .line 105
    .line 106
    .line 107
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const/16 v0, 0x2f

    .line 121
    .line 122
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    .line 126
    .line 127
    .line 128
    move-result p0

    .line 129
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    invoke-direct {p1, p0}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw p1

    .line 140
    nop

    .line 141
    :array_0
    .array-data 8
        0x46ecc9c8767088L
        0x2767581e48fd1214L    # 7.232208567336245E-119
        -0x663b3dcc2c9d22ffL
        0x69f22d0ecd18f5f2L    # 2.226053445646353E202
    .end array-data
.end method

.method private static embedHorizontalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    const/16 v2, 0x8

    .line 4
    .line 5
    if-ge v1, v2, :cond_1

    .line 6
    .line 7
    add-int v2, p0, v1

    .line 8
    .line 9
    invoke-virtual {p2, v2, p1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    invoke-static {v3}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    invoke-virtual {p2, v2, p1, v0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    .line 20
    .line 21
    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance p0, Lcom/google/zxing/WriterException;

    .line 26
    .line 27
    invoke-direct {p0}, Lcom/google/zxing/WriterException;-><init>()V

    .line 28
    .line 29
    .line 30
    throw p0

    .line 31
    :cond_1
    return-void
.end method

.method private static embedPositionAdjustmentPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    const/4 v2, 0x5

    .line 4
    if-ge v1, v2, :cond_1

    .line 5
    .line 6
    sget-object v3, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_ADJUSTMENT_PATTERN:[[I

    .line 7
    .line 8
    aget-object v3, v3, v1

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    :goto_1
    if-ge v4, v2, :cond_0

    .line 12
    .line 13
    add-int v5, p0, v4

    .line 14
    .line 15
    add-int v6, p1, v1

    .line 16
    .line 17
    aget v7, v3, v4

    .line 18
    .line 19
    invoke-virtual {p2, v5, v6, v7}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    .line 20
    .line 21
    .line 22
    add-int/lit8 v4, v4, 0x1

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    return-void
.end method

.method private static embedPositionDetectionPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    const/4 v2, 0x7

    .line 4
    if-ge v1, v2, :cond_1

    .line 5
    .line 6
    sget-object v3, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_DETECTION_PATTERN:[[I

    .line 7
    .line 8
    aget-object v3, v3, v1

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    :goto_1
    if-ge v4, v2, :cond_0

    .line 12
    .line 13
    add-int v5, p0, v4

    .line 14
    .line 15
    add-int v6, p1, v1

    .line 16
    .line 17
    aget v7, v3, v4

    .line 18
    .line 19
    invoke-virtual {p2, v5, v6, v7}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    .line 20
    .line 21
    .line 22
    add-int/lit8 v4, v4, 0x1

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    return-void
.end method

.method private static embedPositionDetectionPatternsAndSeparators(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_DETECTION_PATTERN:[[I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-object v0, v0, v1

    .line 5
    .line 6
    array-length v0, v0

    .line 7
    invoke-static {v1, v1, p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedPositionDetectionPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    sub-int/2addr v2, v0

    .line 15
    invoke-static {v2, v1, p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedPositionDetectionPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    sub-int/2addr v2, v0

    .line 23
    invoke-static {v1, v2, p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedPositionDetectionPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x7

    .line 27
    invoke-static {v1, v0, p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedHorizontalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    add-int/lit8 v2, v2, -0x8

    .line 35
    .line 36
    invoke-static {v2, v0, p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedHorizontalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    add-int/lit8 v2, v2, -0x8

    .line 44
    .line 45
    invoke-static {v1, v2, p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedHorizontalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v0, v1, p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedVerticalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    add-int/lit8 v2, v2, -0x8

    .line 56
    .line 57
    invoke-static {v2, v1, p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedVerticalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    sub-int/2addr v1, v0

    .line 65
    invoke-static {v0, v1, p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedVerticalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method private static embedTimingPatterns(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 6

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    :goto_0
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    sub-int/2addr v2, v0

    .line 10
    if-ge v1, v2, :cond_2

    .line 11
    .line 12
    add-int/lit8 v2, v1, 0x1

    .line 13
    .line 14
    rem-int/lit8 v3, v2, 0x2

    .line 15
    .line 16
    const/4 v4, 0x6

    .line 17
    invoke-virtual {p0, v1, v4}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    invoke-static {v5}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    if-eqz v5, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0, v1, v4, v3}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-virtual {p0, v4, v1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    invoke-static {v5}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    if-eqz v5, :cond_1

    .line 39
    .line 40
    invoke-virtual {p0, v4, v1, v3}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    .line 41
    .line 42
    .line 43
    :cond_1
    move v1, v2

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    return-void
.end method

.method public static embedTypeInfo(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/zxing/common/BitArray;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1, v0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->makeTypeInfoBits(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;ILcom/google/zxing/common/BitArray;)V

    .line 7
    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    const/4 p1, 0x0

    .line 11
    :goto_0
    invoke-virtual {v0}, Lcom/google/zxing/common/BitArray;->getSize()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-ge p1, v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/google/zxing/common/BitArray;->getSize()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x1

    .line 22
    sub-int/2addr v1, v2

    .line 23
    sub-int/2addr v1, p1

    .line 24
    invoke-virtual {v0, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    sget-object v3, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->TYPE_INFO_COORDINATES:[[I

    .line 29
    .line 30
    aget-object v3, v3, p1

    .line 31
    .line 32
    aget v4, v3, p0

    .line 33
    .line 34
    aget v3, v3, v2

    .line 35
    .line 36
    invoke-virtual {p2, v4, v3, v1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    .line 37
    .line 38
    .line 39
    const/16 v3, 0x8

    .line 40
    .line 41
    if-ge p1, v3, :cond_0

    .line 42
    .line 43
    invoke-virtual {p2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    sub-int/2addr v4, p1

    .line 48
    sub-int/2addr v4, v2

    .line 49
    move v3, v4

    .line 50
    const/16 v4, 0x8

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_0
    invoke-virtual {p2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    add-int/lit8 v2, v2, -0x7

    .line 58
    .line 59
    add-int/lit8 v4, p1, -0x8

    .line 60
    .line 61
    add-int/2addr v4, v2

    .line 62
    :goto_1
    invoke-virtual {p2, v3, v4, v1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    .line 63
    .line 64
    .line 65
    add-int/lit8 p1, p1, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    return-void
.end method

.method private static embedVerticalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    const/4 v2, 0x7

    .line 4
    if-ge v1, v2, :cond_1

    .line 5
    .line 6
    add-int v2, p1, v1

    .line 7
    .line 8
    invoke-virtual {p2, p0, v2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    invoke-static {v3}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    invoke-virtual {p2, p0, v2, v0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    .line 19
    .line 20
    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance p0, Lcom/google/zxing/WriterException;

    .line 25
    .line 26
    invoke-direct {p0}, Lcom/google/zxing/WriterException;-><init>()V

    .line 27
    .line 28
    .line 29
    throw p0

    .line 30
    :cond_1
    return-void
.end method

.method public static findMSBSet(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    rsub-int/lit8 p0, p0, 0x20

    .line 6
    .line 7
    return p0
.end method

.method private static isEmpty(I)Z
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static makeTypeInfoBits(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;ILcom/google/zxing/common/BitArray;)V
    .locals 2

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-static {p1}, Lcom/google/zxing/qrcode/encoder/QRCode;->isValidMaskPattern(I)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->getBits()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    shl-int/lit8 p0, p0, 0x3

    .line 13
    .line 14
    or-int/2addr p0, p1

    .line 15
    invoke-virtual {p2, p0, v0}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 16
    .line 17
    .line 18
    const/16 p1, 0x537

    .line 19
    .line 20
    invoke-static {p0, p1}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->calculateBCHCode(II)I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    const/16 p1, 0xa

    .line 25
    .line 26
    invoke-virtual {p2, p0, p1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 27
    .line 28
    .line 29
    new-instance p0, Lcom/google/zxing/common/BitArray;

    .line 30
    .line 31
    invoke-direct {p0}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 32
    .line 33
    .line 34
    const/16 p1, 0x5412

    .line 35
    .line 36
    const/16 v1, 0xf

    .line 37
    .line 38
    invoke-virtual {p0, p1, v1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, p0}, Lcom/google/zxing/common/BitArray;->xor(Lcom/google/zxing/common/BitArray;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    if-ne p0, v1, :cond_0

    .line 49
    .line 50
    return-void

    .line 51
    :cond_0
    new-instance p0, Lcom/google/zxing/WriterException;

    .line 52
    .line 53
    new-instance p1, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 59
    .line 60
    new-array v0, v0, [J

    .line 61
    .line 62
    fill-array-data v0, :array_0

    .line 63
    .line 64
    .line 65
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-direct {p0, p1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p0

    .line 90
    :cond_1
    new-instance p0, Lcom/google/zxing/WriterException;

    .line 91
    .line 92
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 93
    .line 94
    const/4 p2, 0x4

    .line 95
    new-array p2, p2, [J

    .line 96
    .line 97
    fill-array-data p2, :array_1

    .line 98
    .line 99
    .line 100
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-direct {p0, p1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    throw p0

    .line 111
    :array_0
    .array-data 8
        0x4cee7a1929bd3720L    # 3.917965178841353E62
        0x63d7ecb0932cbfbaL    # 9.245739585598584E172
        -0x326254f929298a8cL    # -7.8110319210004785E65
        0x3b201e7e10b9b914L    # 6.666708098548386E-24
        -0x7320c7545d1c929aL
    .end array-data

    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
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
    .line 134
    .line 135
    :array_1
    .array-data 8
        0x7296acdae30860e9L    # 9.676714274776905E243
        0x28eb4dbaa0754be3L
        -0xbe04cda3471461fL
        -0x235b8298b85cea99L    # -1.9062811712259473E138
    .end array-data
.end method

.method public static makeVersionInfoBits(Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/common/BitArray;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionNumber()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x6

    .line 6
    invoke-virtual {p1, v0, v1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionNumber()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    const/16 v0, 0x1f25

    .line 14
    .line 15
    invoke-static {p0, v0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->calculateBCHCode(II)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    const/16 v0, 0xc

    .line 20
    .line 21
    invoke-virtual {p1, p0, v0}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    const/16 v0, 0x12

    .line 29
    .line 30
    if-ne p0, v0, :cond_0

    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    new-instance p0, Lcom/google/zxing/WriterException;

    .line 34
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 41
    .line 42
    const/4 v2, 0x5

    .line 43
    new-array v2, v2, [J

    .line 44
    .line 45
    fill-array-data v2, :array_0

    .line 46
    .line 47
    .line 48
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-direct {p0, p1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw p0

    .line 73
    :array_0
    .array-data 8
        -0x4b7b6a5965297e49L    # -1.0493797580242841E-55
        -0x6926d4b02b9e867eL    # -1.315261341376724E-198
        -0x4b37c63eeb105c38L    # -1.9759928983618378E-54
        -0x65fbe20e952384b2L    # -2.367200856893333E-183
        0x75a939435c08d804L
    .end array-data
.end method

.method private static maybeEmbedPositionAdjustmentPatterns(Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionNumber()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionNumber()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    add-int/lit8 p0, p0, -0x1

    .line 14
    .line 15
    sget-object v0, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_ADJUSTMENT_PATTERN_COORDINATE_TABLE:[[I

    .line 16
    .line 17
    aget-object p0, v0, p0

    .line 18
    .line 19
    array-length v0, p0

    .line 20
    const/4 v1, 0x0

    .line 21
    const/4 v2, 0x0

    .line 22
    :goto_0
    if-ge v2, v0, :cond_3

    .line 23
    .line 24
    aget v3, p0, v2

    .line 25
    .line 26
    if-ltz v3, :cond_2

    .line 27
    .line 28
    array-length v4, p0

    .line 29
    const/4 v5, 0x0

    .line 30
    :goto_1
    if-ge v5, v4, :cond_2

    .line 31
    .line 32
    aget v6, p0, v5

    .line 33
    .line 34
    if-ltz v6, :cond_1

    .line 35
    .line 36
    invoke-virtual {p1, v6, v3}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    invoke-static {v7}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    .line 41
    .line 42
    .line 43
    move-result v7

    .line 44
    if-eqz v7, :cond_1

    .line 45
    .line 46
    add-int/lit8 v6, v6, -0x2

    .line 47
    .line 48
    add-int/lit8 v7, v3, -0x2

    .line 49
    .line 50
    invoke-static {v6, v7, p1}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedPositionAdjustmentPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    return-void
.end method

.method public static maybeEmbedVersionInfo(Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionNumber()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x7

    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance v0, Lcom/google/zxing/common/BitArray;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {p0, v0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->makeVersionInfoBits(Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/common/BitArray;)V

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    const/16 v1, 0x11

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    :goto_0
    const/4 v3, 0x6

    .line 22
    if-ge v2, v3, :cond_2

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    :goto_1
    const/4 v4, 0x3

    .line 26
    if-ge v3, v4, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    add-int/lit8 v1, v1, -0x1

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    add-int/lit8 v5, v5, -0xb

    .line 39
    .line 40
    add-int/2addr v5, v3

    .line 41
    invoke-virtual {p1, v2, v5, v4}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    add-int/lit8 v5, v5, -0xb

    .line 49
    .line 50
    add-int/2addr v5, v3

    .line 51
    invoke-virtual {p1, v5, v2, v4}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    .line 52
    .line 53
    .line 54
    add-int/lit8 v3, v3, 0x1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    return-void
.end method
