.class public final Lcom/google/zxing/datamatrix/encoder/ErrorCorrection;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ALOG:[I

.field private static final FACTORS:[[I

.field private static final FACTOR_SETS:[I

.field private static final LOG:[I

.field private static final MODULO_VALUE:I = 0x12d


# direct methods
.method static constructor <clinit>()V
    .locals 22

    .line 1
    const/16 v0, 0x3e

    .line 2
    .line 3
    const/16 v1, 0x44

    .line 4
    .line 5
    const/4 v3, 0x7

    .line 6
    const/16 v4, 0xa

    .line 7
    .line 8
    const/16 v5, 0xb

    .line 9
    .line 10
    const/16 v6, 0xc

    .line 11
    .line 12
    const/16 v7, 0x12

    .line 13
    .line 14
    const/16 v8, 0x1c

    .line 15
    .line 16
    const/16 v9, 0x24

    .line 17
    .line 18
    const/16 v10, 0x30

    .line 19
    .line 20
    const/16 v11, 0x10

    .line 21
    .line 22
    new-array v11, v11, [I

    .line 23
    .line 24
    fill-array-data v11, :array_0

    .line 25
    .line 26
    .line 27
    sput-object v11, Lcom/google/zxing/datamatrix/encoder/ErrorCorrection;->FACTOR_SETS:[I

    .line 28
    .line 29
    new-array v11, v3, [I

    .line 30
    .line 31
    fill-array-data v11, :array_1

    .line 32
    .line 33
    .line 34
    new-array v12, v4, [I

    .line 35
    .line 36
    fill-array-data v12, :array_2

    .line 37
    .line 38
    .line 39
    new-array v13, v5, [I

    .line 40
    .line 41
    fill-array-data v13, :array_3

    .line 42
    .line 43
    .line 44
    new-array v14, v6, [I

    .line 45
    .line 46
    fill-array-data v14, :array_4

    .line 47
    .line 48
    .line 49
    const/16 v6, 0xe

    .line 50
    .line 51
    new-array v6, v6, [I

    .line 52
    .line 53
    fill-array-data v6, :array_5

    .line 54
    .line 55
    .line 56
    new-array v7, v7, [I

    .line 57
    .line 58
    fill-array-data v7, :array_6

    .line 59
    .line 60
    .line 61
    const/16 v16, 0x2

    .line 62
    .line 63
    const/16 v5, 0x14

    .line 64
    .line 65
    new-array v5, v5, [I

    .line 66
    .line 67
    fill-array-data v5, :array_7

    .line 68
    .line 69
    .line 70
    const/16 v4, 0x18

    .line 71
    .line 72
    new-array v4, v4, [I

    .line 73
    .line 74
    fill-array-data v4, :array_8

    .line 75
    .line 76
    .line 77
    new-array v8, v8, [I

    .line 78
    .line 79
    fill-array-data v8, :array_9

    .line 80
    .line 81
    .line 82
    new-array v9, v9, [I

    .line 83
    .line 84
    fill-array-data v9, :array_a

    .line 85
    .line 86
    .line 87
    const/16 v15, 0x2a

    .line 88
    .line 89
    new-array v15, v15, [I

    .line 90
    .line 91
    fill-array-data v15, :array_b

    .line 92
    .line 93
    .line 94
    new-array v3, v10, [I

    .line 95
    .line 96
    fill-array-data v3, :array_c

    .line 97
    .line 98
    .line 99
    const/16 v2, 0x38

    .line 100
    .line 101
    new-array v2, v2, [I

    .line 102
    .line 103
    fill-array-data v2, :array_d

    .line 104
    .line 105
    .line 106
    new-array v10, v0, [I

    .line 107
    .line 108
    fill-array-data v10, :array_e

    .line 109
    .line 110
    .line 111
    new-array v1, v1, [I

    .line 112
    .line 113
    fill-array-data v1, :array_f

    .line 114
    .line 115
    .line 116
    const/16 v0, 0x10

    .line 117
    .line 118
    new-array v0, v0, [[I

    .line 119
    .line 120
    move-object/from16 v18, v1

    .line 121
    .line 122
    const/16 v1, 0xe4

    .line 123
    .line 124
    move-object/from16 v19, v10

    .line 125
    .line 126
    const/16 v10, 0xf

    .line 127
    .line 128
    move-object/from16 v20, v2

    .line 129
    .line 130
    const/16 v2, 0x6f

    .line 131
    .line 132
    move-object/from16 v21, v3

    .line 133
    .line 134
    move-object/from16 v17, v15

    .line 135
    .line 136
    const/16 v3, 0x3e

    .line 137
    .line 138
    const/16 v15, 0x30

    .line 139
    .line 140
    filled-new-array {v1, v15, v10, v2, v3}, [I

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    const/4 v2, 0x0

    .line 145
    aput-object v1, v0, v2

    .line 146
    .line 147
    const/4 v1, 0x1

    .line 148
    aput-object v11, v0, v1

    .line 149
    .line 150
    aput-object v12, v0, v16

    .line 151
    .line 152
    const/4 v1, 0x3

    .line 153
    aput-object v13, v0, v1

    .line 154
    .line 155
    const/4 v1, 0x4

    .line 156
    aput-object v14, v0, v1

    .line 157
    .line 158
    const/4 v1, 0x5

    .line 159
    aput-object v6, v0, v1

    .line 160
    .line 161
    const/4 v1, 0x6

    .line 162
    aput-object v7, v0, v1

    .line 163
    .line 164
    const/4 v1, 0x7

    .line 165
    aput-object v5, v0, v1

    .line 166
    .line 167
    const/16 v1, 0x8

    .line 168
    .line 169
    aput-object v4, v0, v1

    .line 170
    .line 171
    const/16 v1, 0x9

    .line 172
    .line 173
    aput-object v8, v0, v1

    .line 174
    .line 175
    const/16 v1, 0xa

    .line 176
    .line 177
    aput-object v9, v0, v1

    .line 178
    .line 179
    const/16 v1, 0xb

    .line 180
    .line 181
    aput-object v17, v0, v1

    .line 182
    .line 183
    const/16 v1, 0xc

    .line 184
    .line 185
    aput-object v21, v0, v1

    .line 186
    .line 187
    const/16 v1, 0xd

    .line 188
    .line 189
    aput-object v20, v0, v1

    .line 190
    .line 191
    const/16 v1, 0xe

    .line 192
    .line 193
    aput-object v19, v0, v1

    .line 194
    .line 195
    const/16 v1, 0xf

    .line 196
    .line 197
    aput-object v18, v0, v1

    .line 198
    .line 199
    sput-object v0, Lcom/google/zxing/datamatrix/encoder/ErrorCorrection;->FACTORS:[[I

    .line 200
    .line 201
    const/16 v0, 0x100

    .line 202
    .line 203
    new-array v1, v0, [I

    .line 204
    .line 205
    sput-object v1, Lcom/google/zxing/datamatrix/encoder/ErrorCorrection;->LOG:[I

    .line 206
    .line 207
    const/16 v1, 0xff

    .line 208
    .line 209
    new-array v2, v1, [I

    .line 210
    .line 211
    sput-object v2, Lcom/google/zxing/datamatrix/encoder/ErrorCorrection;->ALOG:[I

    .line 212
    .line 213
    const/4 v2, 0x1

    .line 214
    const/4 v3, 0x0

    .line 215
    :goto_0
    if-ge v3, v1, :cond_1

    .line 216
    .line 217
    sget-object v4, Lcom/google/zxing/datamatrix/encoder/ErrorCorrection;->ALOG:[I

    .line 218
    .line 219
    aput v2, v4, v3

    .line 220
    .line 221
    sget-object v4, Lcom/google/zxing/datamatrix/encoder/ErrorCorrection;->LOG:[I

    .line 222
    .line 223
    aput v3, v4, v2

    .line 224
    .line 225
    mul-int/lit8 v2, v2, 0x2

    .line 226
    .line 227
    if-lt v2, v0, :cond_0

    .line 228
    .line 229
    xor-int/lit16 v2, v2, 0x12d

    .line 230
    .line 231
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 232
    .line 233
    goto :goto_0

    .line 234
    :cond_1
    return-void

    .line 235
    :array_0
    .array-data 4
        0x5
        0x7
        0xa
        0xb
        0xc
        0xe
        0x12
        0x14
        0x18
        0x1c
        0x24
        0x2a
        0x30
        0x38
        0x3e
        0x44
    .end array-data

    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    :array_1
    .array-data 4
        0x17
        0x44
        0x90
        0x86
        0xf0
        0x5c
        0xfe
    .end array-data

    .line 272
    .line 273
    .line 274
    .line 275
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
    :array_2
    .array-data 4
        0x1c
        0x18
        0xb9
        0xa6
        0xdf
        0xf8
        0x74
        0xff
        0x6e
        0x3d
    .end array-data

    .line 290
    .line 291
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
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    :array_3
    .array-data 4
        0xaf
        0x8a
        0xcd
        0xc
        0xc2
        0xa8
        0x27
        0xf5
        0x3c
        0x61
        0x78
    .end array-data

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
    .line 338
    .line 339
    :array_4
    .array-data 4
        0x29
        0x99
        0x9e
        0x5b
        0x3d
        0x2a
        0x8e
        0xd5
        0x61
        0xb2
        0x64
        0xf2
    .end array-data

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
    :array_5
    .array-data 4
        0x9c
        0x61
        0xc0
        0xfc
        0x5f
        0x9
        0x9d
        0x77
        0x8a
        0x2d
        0x12
        0xba
        0x53
        0xb9
    .end array-data

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
    :array_6
    .array-data 4
        0x53
        0xc3
        0x64
        0x27
        0xbc
        0x4b
        0x42
        0x3d
        0xf1
        0xd5
        0x6d
        0x81
        0x5e
        0xfe
        0xe1
        0x30
        0x5a
        0xbc
    .end array-data

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
    .line 438
    .line 439
    :array_7
    .array-data 4
        0xf
        0xc3
        0xf4
        0x9
        0xe9
        0x47
        0xa8
        0x2
        0xbc
        0xa0
        0x99
        0x91
        0xfd
        0x4f
        0x6c
        0x52
        0x1b
        0xae
        0xba
        0xac
    .end array-data

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
    :array_8
    .array-data 4
        0x34
        0xbe
        0x58
        0xcd
        0x6d
        0x27
        0xb0
        0x15
        0x9b
        0xc5
        0xfb
        0xdf
        0x9b
        0x15
        0x5
        0xac
        0xfe
        0x7c
        0xc
        0xb5
        0xb8
        0x60
        0x32
        0xc1
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
    :array_9
    .array-data 4
        0xd3
        0xe7
        0x2b
        0x61
        0x47
        0x60
        0x67
        0xae
        0x25
        0x97
        0xaa
        0x35
        0x4b
        0x22
        0xf9
        0x79
        0x11
        0x8a
        0x6e
        0xd5
        0x8d
        0x88
        0x78
        0x97
        0xe9
        0xa8
        0x5d
        0xff
    .end array-data

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
    :array_a
    .array-data 4
        0xf5
        0x7f
        0xf2
        0xda
        0x82
        0xfa
        0xa2
        0xb5
        0x66
        0x78
        0x54
        0xb3
        0xdc
        0xfb
        0x50
        0xb6
        0xe5
        0x12
        0x2
        0x4
        0x44
        0x21
        0x65
        0x89
        0x5f
        0x77
        0x73
        0x2c
        0xaf
        0xb8
        0x3b
        0x19
        0xe1
        0x62
        0x51
        0x70
    .end array-data

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
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    :array_b
    .array-data 4
        0x4d
        0xc1
        0x89
        0x1f
        0x13
        0x26
        0x16
        0x99
        0xf7
        0x69
        0x7a
        0x2
        0xf5
        0x85
        0xf2
        0x8
        0xaf
        0x5f
        0x64
        0x9
        0xa7
        0x69
        0xd6
        0x6f
        0x39
        0x79
        0x15
        0x1
        0xfd
        0x39
        0x36
        0x65
        0xf8
        0xca
        0x45
        0x32
        0x96
        0xb1
        0xe2
        0x5
        0x9
        0x5
    .end array-data

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
    :array_c
    .array-data 4
        0xf5
        0x84
        0xac
        0xdf
        0x60
        0x20
        0x75
        0x16
        0xee
        0x85
        0xee
        0xe7
        0xcd
        0xbc
        0xed
        0x57
        0xbf
        0x6a
        0x10
        0x93
        0x76
        0x17
        0x25
        0x5a
        0xaa
        0xcd
        0x83
        0x58
        0x78
        0x64
        0x42
        0x8a
        0xba
        0xf0
        0x52
        0x2c
        0xb0
        0x57
        0xbb
        0x93
        0xa0
        0xaf
        0x45
        0xd5
        0x5c
        0xfd
        0xe1
        0x13
    .end array-data

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
    :array_d
    .array-data 4
        0xaf
        0x9
        0xdf
        0xee
        0xc
        0x11
        0xdc
        0xd0
        0x64
        0x1d
        0xaf
        0xaa
        0xe6
        0xc0
        0xd7
        0xeb
        0x96
        0x9f
        0x24
        0xdf
        0x26
        0xc8
        0x84
        0x36
        0xe4
        0x92
        0xda
        0xea
        0x75
        0xcb
        0x1d
        0xe8
        0x90
        0xee
        0x16
        0x96
        0xc9
        0x75
        0x3e
        0xcf
        0xa4
        0xd
        0x89
        0xf5
        0x7f
        0x43
        0xf7
        0x1c
        0x9b
        0x2b
        0xcb
        0x6b
        0xe9
        0x35
        0x8f
        0x2e
    .end array-data

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
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    :array_e
    .array-data 4
        0xf2
        0x5d
        0xa9
        0x32
        0x90
        0xd2
        0x27
        0x76
        0xca
        0xbc
        0xc9
        0xbd
        0x8f
        0x6c
        0xc4
        0x25
        0xb9
        0x70
        0x86
        0xe6
        0xf5
        0x3f
        0xc5
        0xbe
        0xfa
        0x6a
        0xb9
        0xdd
        0xaf
        0x40
        0x72
        0x47
        0xa1
        0x2c
        0x93
        0x6
        0x1b
        0xda
        0x33
        0x3f
        0x57
        0xa
        0x28
        0x82
        0xbc
        0x11
        0xa3
        0x1f
        0xb0
        0xaa
        0x4
        0x6b
        0xe8
        0x7
        0x5e
        0xa6
        0xe0
        0x7c
        0x56
        0x2f
        0xb
        0xcc
    .end array-data

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
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    :array_f
    .array-data 4
        0xdc
        0xe4
        0xad
        0x59
        0xfb
        0x95
        0x9f
        0x38
        0x59
        0x21
        0x93
        0xf4
        0x9a
        0x24
        0x49
        0x7f
        0xd5
        0x88
        0xf8
        0xb4
        0xea
        0xc5
        0x9e
        0xb1
        0x44
        0x7a
        0x5d
        0xd5
        0xf
        0xa0
        0xe3
        0xec
        0x42
        0x8b
        0x99
        0xb9
        0xca
        0xa7
        0xb3
        0x19
        0xdc
        0xe8
        0x60
        0xd2
        0xe7
        0x88
        0xdf
        0xef
        0xb5
        0xf1
        0x3b
        0x34
        0xac
        0x19
        0x31
        0xe8
        0xd3
        0xbd
        0x40
        0x36
        0x6c
        0x99
        0x84
        0x3f
        0x60
        0x67
        0x52
        0xba
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

.method private static createECCBlock(Ljava/lang/CharSequence;I)Ljava/lang/String;
    .locals 12

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_0
    sget-object v3, Lcom/google/zxing/datamatrix/encoder/ErrorCorrection;->FACTOR_SETS:[I

    .line 5
    .line 6
    array-length v4, v3

    .line 7
    if-ge v2, v4, :cond_1

    .line 8
    .line 9
    aget v3, v3, v2

    .line 10
    .line 11
    if-ne v3, p1, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 v2, -0x1

    .line 18
    :goto_1
    if-ltz v2, :cond_8

    .line 19
    .line 20
    sget-object v3, Lcom/google/zxing/datamatrix/encoder/ErrorCorrection;->FACTORS:[[I

    .line 21
    .line 22
    aget-object v2, v3, v2

    .line 23
    .line 24
    new-array v3, p1, [C

    .line 25
    .line 26
    const/4 v4, 0x0

    .line 27
    :goto_2
    if-ge v4, p1, :cond_2

    .line 28
    .line 29
    aput-char v1, v3, v4

    .line 30
    .line 31
    add-int/lit8 v4, v4, 0x1

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_2
    const/4 v4, 0x0

    .line 35
    :goto_3
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-ge v4, v5, :cond_6

    .line 40
    .line 41
    add-int/lit8 v5, p1, -0x1

    .line 42
    .line 43
    aget-char v6, v3, v5

    .line 44
    .line 45
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    xor-int/2addr v6, v7

    .line 50
    :goto_4
    if-lez v5, :cond_4

    .line 51
    .line 52
    if-eqz v6, :cond_3

    .line 53
    .line 54
    aget v7, v2, v5

    .line 55
    .line 56
    if-eqz v7, :cond_3

    .line 57
    .line 58
    add-int/lit8 v8, v5, -0x1

    .line 59
    .line 60
    aget-char v8, v3, v8

    .line 61
    .line 62
    sget-object v9, Lcom/google/zxing/datamatrix/encoder/ErrorCorrection;->ALOG:[I

    .line 63
    .line 64
    sget-object v10, Lcom/google/zxing/datamatrix/encoder/ErrorCorrection;->LOG:[I

    .line 65
    .line 66
    aget v11, v10, v6

    .line 67
    .line 68
    aget v7, v10, v7

    .line 69
    .line 70
    add-int/2addr v11, v7

    .line 71
    rem-int/lit16 v11, v11, 0xff

    .line 72
    .line 73
    aget v7, v9, v11

    .line 74
    .line 75
    xor-int/2addr v7, v8

    .line 76
    int-to-char v7, v7

    .line 77
    aput-char v7, v3, v5

    .line 78
    .line 79
    goto :goto_5

    .line 80
    :cond_3
    add-int/lit8 v7, v5, -0x1

    .line 81
    .line 82
    aget-char v7, v3, v7

    .line 83
    .line 84
    aput-char v7, v3, v5

    .line 85
    .line 86
    :goto_5
    add-int/2addr v5, v0

    .line 87
    goto :goto_4

    .line 88
    :cond_4
    if-eqz v6, :cond_5

    .line 89
    .line 90
    aget v5, v2, v1

    .line 91
    .line 92
    if-eqz v5, :cond_5

    .line 93
    .line 94
    sget-object v7, Lcom/google/zxing/datamatrix/encoder/ErrorCorrection;->ALOG:[I

    .line 95
    .line 96
    sget-object v8, Lcom/google/zxing/datamatrix/encoder/ErrorCorrection;->LOG:[I

    .line 97
    .line 98
    aget v6, v8, v6

    .line 99
    .line 100
    aget v5, v8, v5

    .line 101
    .line 102
    add-int/2addr v6, v5

    .line 103
    rem-int/lit16 v6, v6, 0xff

    .line 104
    .line 105
    aget v5, v7, v6

    .line 106
    .line 107
    int-to-char v5, v5

    .line 108
    aput-char v5, v3, v1

    .line 109
    .line 110
    goto :goto_6

    .line 111
    :cond_5
    aput-char v1, v3, v1

    .line 112
    .line 113
    :goto_6
    add-int/lit8 v4, v4, 0x1

    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_6
    new-array p0, p1, [C

    .line 117
    .line 118
    :goto_7
    if-ge v1, p1, :cond_7

    .line 119
    .line 120
    sub-int v0, p1, v1

    .line 121
    .line 122
    add-int/lit8 v0, v0, -0x1

    .line 123
    .line 124
    aget-char v0, v3, v0

    .line 125
    .line 126
    aput-char v0, p0, v1

    .line 127
    .line 128
    add-int/lit8 v1, v1, 0x1

    .line 129
    .line 130
    goto :goto_7

    .line 131
    :cond_7
    invoke-static {p0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    return-object p0

    .line 136
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 137
    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 144
    .line 145
    const/16 v2, 0x8

    .line 146
    .line 147
    new-array v2, v2, [J

    .line 148
    .line 149
    fill-array-data v2, :array_0

    .line 150
    .line 151
    .line 152
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 153
    .line 154
    .line 155
    invoke-static {v1, v0, p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    throw p0

    .line 163
    :array_0
    .array-data 8
        -0x55205e747cc20e9dL
        -0x2c7eaf3dbb3e24a1L    # -1.8059378551203E94
        -0x47b76cf6e6c340dL    # -9.771912508373674E286
        -0x663d63eb64f97357L
        -0x48a638ee875ed07bL    # -4.623632100186294E-42
        0x736bf8a239897ac5L    # 9.778628361514116E247
        -0x146b2b9c9602f124L
        -0x32ab2749d60e850bL    # -3.430305946051242E64
    .end array-data
.end method

.method public static encodeECC200(Ljava/lang/String;Lcom/google/zxing/datamatrix/encoder/SymbolInfo;)Ljava/lang/String;
    .locals 12

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getDataCapacity()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-ne v1, v2, :cond_5

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getDataCapacity()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getErrorCodewords()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    add-int/2addr v3, v2

    .line 23
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getInterleavedBlockCount()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-ne v2, v0, :cond_0

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getErrorCodewords()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    invoke-static {p0, p1}, Lcom/google/zxing/datamatrix/encoder/ErrorCorrection;->createECCBlock(Ljava/lang/CharSequence;I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    goto :goto_4

    .line 47
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->capacity()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 52
    .line 53
    .line 54
    new-array v3, v2, [I

    .line 55
    .line 56
    new-array v4, v2, [I

    .line 57
    .line 58
    const/4 v5, 0x0

    .line 59
    const/4 v6, 0x0

    .line 60
    :goto_0
    if-ge v6, v2, :cond_1

    .line 61
    .line 62
    add-int/lit8 v7, v6, 0x1

    .line 63
    .line 64
    invoke-virtual {p1, v7}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getDataLengthForInterleavedBlock(I)I

    .line 65
    .line 66
    .line 67
    move-result v8

    .line 68
    aput v8, v3, v6

    .line 69
    .line 70
    invoke-virtual {p1, v7}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getErrorLengthForInterleavedBlock(I)I

    .line 71
    .line 72
    .line 73
    move-result v8

    .line 74
    aput v8, v4, v6

    .line 75
    .line 76
    move v6, v7

    .line 77
    goto :goto_0

    .line 78
    :cond_1
    const/4 v6, 0x0

    .line 79
    :goto_1
    if-ge v6, v2, :cond_4

    .line 80
    .line 81
    new-instance v7, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    aget v8, v3, v6

    .line 84
    .line 85
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 86
    .line 87
    .line 88
    move v8, v6

    .line 89
    :goto_2
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getDataCapacity()I

    .line 90
    .line 91
    .line 92
    move-result v9

    .line 93
    if-ge v8, v9, :cond_2

    .line 94
    .line 95
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    .line 96
    .line 97
    .line 98
    move-result v9

    .line 99
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    add-int/2addr v8, v2

    .line 103
    goto :goto_2

    .line 104
    :cond_2
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v7

    .line 108
    aget v8, v4, v6

    .line 109
    .line 110
    invoke-static {v7, v8}, Lcom/google/zxing/datamatrix/encoder/ErrorCorrection;->createECCBlock(Ljava/lang/CharSequence;I)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v7

    .line 114
    move v8, v6

    .line 115
    const/4 v9, 0x0

    .line 116
    :goto_3
    aget v10, v4, v6

    .line 117
    .line 118
    mul-int v10, v10, v2

    .line 119
    .line 120
    if-ge v8, v10, :cond_3

    .line 121
    .line 122
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getDataCapacity()I

    .line 123
    .line 124
    .line 125
    move-result v10

    .line 126
    add-int/2addr v10, v8

    .line 127
    add-int/lit8 v11, v9, 0x1

    .line 128
    .line 129
    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    .line 130
    .line 131
    .line 132
    move-result v9

    .line 133
    invoke-virtual {v1, v10, v9}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 134
    .line 135
    .line 136
    add-int/2addr v8, v2

    .line 137
    move v9, v11

    .line 138
    goto :goto_3

    .line 139
    :cond_3
    add-int/2addr v6, v0

    .line 140
    goto :goto_1

    .line 141
    :cond_4
    :goto_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    return-object p0

    .line 146
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 147
    .line 148
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 149
    .line 150
    const/16 v0, 0x9

    .line 151
    .line 152
    new-array v0, v0, [J

    .line 153
    .line 154
    fill-array-data v0, :array_0

    .line 155
    .line 156
    .line 157
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    throw p0

    .line 168
    nop

    .line 169
    :array_0
    .array-data 8
        -0x70882a088a928d0eL    # -3.748290527983518E-234
        0x1db623294116eb96L
        0xdd8dd8dcd6b13bfL
        0x2a53d6d886c131d8L    # 8.650208590545507E-105
        -0x738ba5180ad38704L    # -1.1372000521645613E-248
        0x58631c53e40c7db8L    # 6.023985196594613E117
        -0x457798a864856bafL    # -9.856568071744414E-27
        0x72f0b30935527020L    # 4.560960247717933E245
        0x7840e2aee6e8b572L    # 1.784101484489223E271
    .end array-data
.end method
