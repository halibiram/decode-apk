.class public Lcom/google/zxing/datamatrix/encoder/SymbolInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final PROD_SYMBOLS:[Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

.field private static symbols:[Lcom/google/zxing/datamatrix/encoder/SymbolInfo;


# instance fields
.field private final dataCapacity:I

.field private final dataRegions:I

.field private final errorCodewords:I

.field public final matrixHeight:I

.field public final matrixWidth:I

.field private final rectangular:Z

.field private final rsBlockData:I

.field private final rsBlockError:I


# direct methods
.method static constructor <clinit>()V
    .locals 54

    .line 1
    new-instance v7, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    .line 2
    .line 3
    const/16 v5, 0x8

    .line 4
    .line 5
    const/4 v6, 0x1

    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x3

    .line 8
    const/4 v3, 0x5

    .line 9
    const/16 v4, 0x8

    .line 10
    .line 11
    move-object v0, v7

    .line 12
    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    .line 13
    .line 14
    .line 15
    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    .line 16
    .line 17
    const/16 v13, 0xa

    .line 18
    .line 19
    const/4 v14, 0x1

    .line 20
    const/4 v9, 0x0

    .line 21
    const/4 v10, 0x5

    .line 22
    const/4 v11, 0x7

    .line 23
    const/16 v12, 0xa

    .line 24
    .line 25
    move-object v8, v0

    .line 26
    invoke-direct/range {v8 .. v14}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    .line 27
    .line 28
    .line 29
    new-instance v1, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    .line 30
    .line 31
    const/16 v20, 0x6

    .line 32
    .line 33
    const/16 v21, 0x1

    .line 34
    .line 35
    const/16 v16, 0x1

    .line 36
    .line 37
    const/16 v17, 0x5

    .line 38
    .line 39
    const/16 v18, 0x7

    .line 40
    .line 41
    const/16 v19, 0x10

    .line 42
    .line 43
    move-object v15, v1

    .line 44
    invoke-direct/range {v15 .. v21}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    .line 45
    .line 46
    .line 47
    new-instance v2, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    .line 48
    .line 49
    const/16 v13, 0xc

    .line 50
    .line 51
    const/16 v10, 0x8

    .line 52
    .line 53
    const/16 v11, 0xa

    .line 54
    .line 55
    const/16 v12, 0xc

    .line 56
    .line 57
    move-object v8, v2

    .line 58
    invoke-direct/range {v8 .. v14}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    .line 59
    .line 60
    .line 61
    new-instance v3, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    .line 62
    .line 63
    const/16 v21, 0x2

    .line 64
    .line 65
    const/16 v17, 0xa

    .line 66
    .line 67
    const/16 v18, 0xb

    .line 68
    .line 69
    const/16 v19, 0xe

    .line 70
    .line 71
    move-object v15, v3

    .line 72
    invoke-direct/range {v15 .. v21}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    .line 73
    .line 74
    .line 75
    new-instance v4, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    .line 76
    .line 77
    const/16 v13, 0xe

    .line 78
    .line 79
    const/16 v10, 0xc

    .line 80
    .line 81
    const/16 v11, 0xc

    .line 82
    .line 83
    const/16 v12, 0xe

    .line 84
    .line 85
    move-object v8, v4

    .line 86
    invoke-direct/range {v8 .. v14}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    .line 87
    .line 88
    .line 89
    new-instance v5, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    .line 90
    .line 91
    const/16 v20, 0xa

    .line 92
    .line 93
    const/16 v21, 0x1

    .line 94
    .line 95
    const/16 v17, 0x10

    .line 96
    .line 97
    const/16 v18, 0xe

    .line 98
    .line 99
    const/16 v19, 0x18

    .line 100
    .line 101
    move-object v15, v5

    .line 102
    invoke-direct/range {v15 .. v21}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    .line 103
    .line 104
    .line 105
    new-instance v6, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    .line 106
    .line 107
    const/16 v13, 0x10

    .line 108
    .line 109
    const/16 v10, 0x12

    .line 110
    .line 111
    const/16 v11, 0xe

    .line 112
    .line 113
    const/16 v12, 0x10

    .line 114
    .line 115
    move-object v8, v6

    .line 116
    invoke-direct/range {v8 .. v14}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    .line 117
    .line 118
    .line 119
    new-instance v8, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    .line 120
    .line 121
    const/16 v20, 0x12

    .line 122
    .line 123
    const/16 v16, 0x0

    .line 124
    .line 125
    const/16 v17, 0x16

    .line 126
    .line 127
    const/16 v18, 0x12

    .line 128
    .line 129
    const/16 v19, 0x12

    .line 130
    .line 131
    move-object v15, v8

    .line 132
    invoke-direct/range {v15 .. v21}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    .line 133
    .line 134
    .line 135
    new-instance v16, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    .line 136
    .line 137
    const/16 v14, 0xa

    .line 138
    .line 139
    const/4 v15, 0x2

    .line 140
    const/4 v10, 0x1

    .line 141
    const/16 v11, 0x16

    .line 142
    .line 143
    const/16 v12, 0x12

    .line 144
    .line 145
    move-object/from16 v9, v16

    .line 146
    .line 147
    invoke-direct/range {v9 .. v15}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    .line 148
    .line 149
    .line 150
    new-instance v9, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    .line 151
    .line 152
    const/16 v22, 0x14

    .line 153
    .line 154
    const/16 v23, 0x1

    .line 155
    .line 156
    const/16 v18, 0x0

    .line 157
    .line 158
    const/16 v19, 0x1e

    .line 159
    .line 160
    const/16 v20, 0x14

    .line 161
    .line 162
    const/16 v21, 0x14

    .line 163
    .line 164
    move-object/from16 v17, v9

    .line 165
    .line 166
    invoke-direct/range {v17 .. v23}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    .line 167
    .line 168
    .line 169
    new-instance v10, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    .line 170
    .line 171
    const/16 v29, 0xe

    .line 172
    .line 173
    const/16 v30, 0x2

    .line 174
    .line 175
    const/16 v25, 0x1

    .line 176
    .line 177
    const/16 v26, 0x20

    .line 178
    .line 179
    const/16 v27, 0x18

    .line 180
    .line 181
    const/16 v28, 0x10

    .line 182
    .line 183
    move-object/from16 v24, v10

    .line 184
    .line 185
    invoke-direct/range {v24 .. v30}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    .line 186
    .line 187
    .line 188
    new-instance v11, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    .line 189
    .line 190
    const/16 v22, 0x16

    .line 191
    .line 192
    const/16 v19, 0x24

    .line 193
    .line 194
    const/16 v20, 0x18

    .line 195
    .line 196
    const/16 v21, 0x16

    .line 197
    .line 198
    move-object/from16 v17, v11

    .line 199
    .line 200
    invoke-direct/range {v17 .. v23}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    .line 201
    .line 202
    .line 203
    new-instance v12, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    .line 204
    .line 205
    const/16 v29, 0x18

    .line 206
    .line 207
    const/16 v30, 0x1

    .line 208
    .line 209
    const/16 v25, 0x0

    .line 210
    .line 211
    const/16 v26, 0x2c

    .line 212
    .line 213
    const/16 v27, 0x1c

    .line 214
    .line 215
    const/16 v28, 0x18

    .line 216
    .line 217
    move-object/from16 v24, v12

    .line 218
    .line 219
    invoke-direct/range {v24 .. v30}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    .line 220
    .line 221
    .line 222
    new-instance v13, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    .line 223
    .line 224
    const/16 v22, 0xe

    .line 225
    .line 226
    const/16 v23, 0x2

    .line 227
    .line 228
    const/16 v18, 0x1

    .line 229
    .line 230
    const/16 v19, 0x31

    .line 231
    .line 232
    const/16 v20, 0x1c

    .line 233
    .line 234
    move-object/from16 v17, v13

    .line 235
    .line 236
    invoke-direct/range {v17 .. v23}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    .line 237
    .line 238
    .line 239
    new-instance v14, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    .line 240
    .line 241
    const/16 v29, 0xe

    .line 242
    .line 243
    const/16 v30, 0x4

    .line 244
    .line 245
    const/16 v26, 0x3e

    .line 246
    .line 247
    const/16 v27, 0x24

    .line 248
    .line 249
    const/16 v28, 0xe

    .line 250
    .line 251
    move-object/from16 v24, v14

    .line 252
    .line 253
    invoke-direct/range {v24 .. v30}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    .line 254
    .line 255
    .line 256
    new-instance v15, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    .line 257
    .line 258
    const/16 v22, 0x10

    .line 259
    .line 260
    const/16 v23, 0x4

    .line 261
    .line 262
    const/16 v18, 0x0

    .line 263
    .line 264
    const/16 v19, 0x56

    .line 265
    .line 266
    const/16 v20, 0x2a

    .line 267
    .line 268
    const/16 v21, 0x10

    .line 269
    .line 270
    move-object/from16 v17, v15

    .line 271
    .line 272
    invoke-direct/range {v17 .. v23}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    .line 273
    .line 274
    .line 275
    new-instance v17, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    .line 276
    .line 277
    const/16 v29, 0x12

    .line 278
    .line 279
    const/16 v26, 0x72

    .line 280
    .line 281
    const/16 v27, 0x30

    .line 282
    .line 283
    const/16 v28, 0x12

    .line 284
    .line 285
    move-object/from16 v24, v17

    .line 286
    .line 287
    invoke-direct/range {v24 .. v30}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    .line 288
    .line 289
    .line 290
    new-instance v25, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    .line 291
    .line 292
    const/16 v23, 0x14

    .line 293
    .line 294
    const/16 v24, 0x4

    .line 295
    .line 296
    const/16 v19, 0x0

    .line 297
    .line 298
    const/16 v20, 0x90

    .line 299
    .line 300
    const/16 v21, 0x38

    .line 301
    .line 302
    const/16 v22, 0x14

    .line 303
    .line 304
    move-object/from16 v18, v25

    .line 305
    .line 306
    invoke-direct/range {v18 .. v24}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    .line 307
    .line 308
    .line 309
    new-instance v18, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    .line 310
    .line 311
    const/16 v31, 0x16

    .line 312
    .line 313
    const/16 v32, 0x4

    .line 314
    .line 315
    const/16 v27, 0x0

    .line 316
    .line 317
    const/16 v28, 0xae

    .line 318
    .line 319
    const/16 v29, 0x44

    .line 320
    .line 321
    const/16 v30, 0x16

    .line 322
    .line 323
    move-object/from16 v26, v18

    .line 324
    .line 325
    invoke-direct/range {v26 .. v32}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    .line 326
    .line 327
    .line 328
    new-instance v19, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    .line 329
    .line 330
    const/16 v40, 0x66

    .line 331
    .line 332
    const/16 v41, 0x2a

    .line 333
    .line 334
    const/16 v34, 0x0

    .line 335
    .line 336
    const/16 v35, 0xcc

    .line 337
    .line 338
    const/16 v36, 0x54

    .line 339
    .line 340
    const/16 v37, 0x18

    .line 341
    .line 342
    const/16 v38, 0x18

    .line 343
    .line 344
    const/16 v39, 0x4

    .line 345
    .line 346
    move-object/from16 v33, v19

    .line 347
    .line 348
    invoke-direct/range {v33 .. v41}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    .line 349
    .line 350
    .line 351
    new-instance v20, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    .line 352
    .line 353
    const/16 v49, 0x8c

    .line 354
    .line 355
    const/16 v50, 0x38

    .line 356
    .line 357
    const/16 v43, 0x0

    .line 358
    .line 359
    const/16 v44, 0x118

    .line 360
    .line 361
    const/16 v45, 0x70

    .line 362
    .line 363
    const/16 v46, 0xe

    .line 364
    .line 365
    const/16 v47, 0xe

    .line 366
    .line 367
    const/16 v48, 0x10

    .line 368
    .line 369
    move-object/from16 v42, v20

    .line 370
    .line 371
    invoke-direct/range {v42 .. v50}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    .line 372
    .line 373
    .line 374
    new-instance v21, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    .line 375
    .line 376
    const/16 v33, 0x5c

    .line 377
    .line 378
    const/16 v34, 0x24

    .line 379
    .line 380
    const/16 v28, 0x170

    .line 381
    .line 382
    const/16 v29, 0x90

    .line 383
    .line 384
    const/16 v30, 0x10

    .line 385
    .line 386
    const/16 v31, 0x10

    .line 387
    .line 388
    const/16 v32, 0x10

    .line 389
    .line 390
    move-object/from16 v26, v21

    .line 391
    .line 392
    invoke-direct/range {v26 .. v34}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    .line 393
    .line 394
    .line 395
    new-instance v22, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    .line 396
    .line 397
    const/16 v42, 0x72

    .line 398
    .line 399
    const/16 v43, 0x30

    .line 400
    .line 401
    const/16 v36, 0x0

    .line 402
    .line 403
    const/16 v37, 0x1c8

    .line 404
    .line 405
    const/16 v38, 0xc0

    .line 406
    .line 407
    const/16 v39, 0x12

    .line 408
    .line 409
    const/16 v40, 0x12

    .line 410
    .line 411
    const/16 v41, 0x10

    .line 412
    .line 413
    move-object/from16 v35, v22

    .line 414
    .line 415
    invoke-direct/range {v35 .. v43}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    .line 416
    .line 417
    .line 418
    new-instance v23, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    .line 419
    .line 420
    const/16 v33, 0x90

    .line 421
    .line 422
    const/16 v34, 0x38

    .line 423
    .line 424
    const/16 v28, 0x240

    .line 425
    .line 426
    const/16 v29, 0xe0

    .line 427
    .line 428
    const/16 v30, 0x14

    .line 429
    .line 430
    const/16 v31, 0x14

    .line 431
    .line 432
    move-object/from16 v26, v23

    .line 433
    .line 434
    invoke-direct/range {v26 .. v34}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    .line 435
    .line 436
    .line 437
    new-instance v24, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    .line 438
    .line 439
    const/16 v42, 0xae

    .line 440
    .line 441
    const/16 v43, 0x44

    .line 442
    .line 443
    const/16 v37, 0x2b8

    .line 444
    .line 445
    const/16 v38, 0x110

    .line 446
    .line 447
    const/16 v39, 0x16

    .line 448
    .line 449
    const/16 v40, 0x16

    .line 450
    .line 451
    move-object/from16 v35, v24

    .line 452
    .line 453
    invoke-direct/range {v35 .. v43}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    .line 454
    .line 455
    .line 456
    new-instance v35, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    .line 457
    .line 458
    const/16 v33, 0x88

    .line 459
    .line 460
    const/16 v28, 0x330

    .line 461
    .line 462
    const/16 v29, 0x150

    .line 463
    .line 464
    const/16 v30, 0x18

    .line 465
    .line 466
    const/16 v31, 0x18

    .line 467
    .line 468
    move-object/from16 v26, v35

    .line 469
    .line 470
    invoke-direct/range {v26 .. v34}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    .line 471
    .line 472
    .line 473
    new-instance v26, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    .line 474
    .line 475
    const/16 v43, 0xaf

    .line 476
    .line 477
    const/16 v44, 0x44

    .line 478
    .line 479
    const/16 v37, 0x0

    .line 480
    .line 481
    const/16 v38, 0x41a

    .line 482
    .line 483
    const/16 v39, 0x198

    .line 484
    .line 485
    const/16 v40, 0x12

    .line 486
    .line 487
    const/16 v41, 0x12

    .line 488
    .line 489
    const/16 v42, 0x24

    .line 490
    .line 491
    move-object/from16 v36, v26

    .line 492
    .line 493
    invoke-direct/range {v36 .. v44}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    .line 494
    .line 495
    .line 496
    new-instance v27, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    .line 497
    .line 498
    const/16 v52, 0xa3

    .line 499
    .line 500
    const/16 v53, 0x3e

    .line 501
    .line 502
    const/16 v46, 0x0

    .line 503
    .line 504
    const/16 v47, 0x518

    .line 505
    .line 506
    const/16 v48, 0x1f0

    .line 507
    .line 508
    const/16 v49, 0x14

    .line 509
    .line 510
    const/16 v50, 0x14

    .line 511
    .line 512
    const/16 v51, 0x24

    .line 513
    .line 514
    move-object/from16 v45, v27

    .line 515
    .line 516
    invoke-direct/range {v45 .. v53}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    .line 517
    .line 518
    .line 519
    new-instance v28, Lcom/google/zxing/datamatrix/encoder/DataMatrixSymbolInfo144;

    .line 520
    .line 521
    invoke-direct/range {v28 .. v28}, Lcom/google/zxing/datamatrix/encoder/DataMatrixSymbolInfo144;-><init>()V

    .line 522
    .line 523
    .line 524
    move-object/from16 v29, v15

    .line 525
    .line 526
    const/16 v15, 0x1e

    .line 527
    .line 528
    new-array v15, v15, [Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    .line 529
    .line 530
    const/16 v30, 0x0

    .line 531
    .line 532
    aput-object v7, v15, v30

    .line 533
    .line 534
    const/4 v7, 0x1

    .line 535
    aput-object v0, v15, v7

    .line 536
    .line 537
    const/4 v0, 0x2

    .line 538
    aput-object v1, v15, v0

    .line 539
    .line 540
    const/4 v0, 0x3

    .line 541
    aput-object v2, v15, v0

    .line 542
    .line 543
    const/4 v0, 0x4

    .line 544
    aput-object v3, v15, v0

    .line 545
    .line 546
    const/4 v0, 0x5

    .line 547
    aput-object v4, v15, v0

    .line 548
    .line 549
    const/4 v0, 0x6

    .line 550
    aput-object v5, v15, v0

    .line 551
    .line 552
    const/4 v0, 0x7

    .line 553
    aput-object v6, v15, v0

    .line 554
    .line 555
    const/16 v0, 0x8

    .line 556
    .line 557
    aput-object v8, v15, v0

    .line 558
    .line 559
    const/16 v0, 0x9

    .line 560
    .line 561
    aput-object v16, v15, v0

    .line 562
    .line 563
    const/16 v0, 0xa

    .line 564
    .line 565
    aput-object v9, v15, v0

    .line 566
    .line 567
    const/16 v0, 0xb

    .line 568
    .line 569
    aput-object v10, v15, v0

    .line 570
    .line 571
    const/16 v0, 0xc

    .line 572
    .line 573
    aput-object v11, v15, v0

    .line 574
    .line 575
    const/16 v0, 0xd

    .line 576
    .line 577
    aput-object v12, v15, v0

    .line 578
    .line 579
    const/16 v0, 0xe

    .line 580
    .line 581
    aput-object v13, v15, v0

    .line 582
    .line 583
    const/16 v0, 0xf

    .line 584
    .line 585
    aput-object v14, v15, v0

    .line 586
    .line 587
    const/16 v0, 0x10

    .line 588
    .line 589
    aput-object v29, v15, v0

    .line 590
    .line 591
    const/16 v0, 0x11

    .line 592
    .line 593
    aput-object v17, v15, v0

    .line 594
    .line 595
    const/16 v0, 0x12

    .line 596
    .line 597
    aput-object v25, v15, v0

    .line 598
    .line 599
    const/16 v0, 0x13

    .line 600
    .line 601
    aput-object v18, v15, v0

    .line 602
    .line 603
    const/16 v0, 0x14

    .line 604
    .line 605
    aput-object v19, v15, v0

    .line 606
    .line 607
    const/16 v0, 0x15

    .line 608
    .line 609
    aput-object v20, v15, v0

    .line 610
    .line 611
    const/16 v0, 0x16

    .line 612
    .line 613
    aput-object v21, v15, v0

    .line 614
    .line 615
    const/16 v0, 0x17

    .line 616
    .line 617
    aput-object v22, v15, v0

    .line 618
    .line 619
    const/16 v0, 0x18

    .line 620
    .line 621
    aput-object v23, v15, v0

    .line 622
    .line 623
    const/16 v0, 0x19

    .line 624
    .line 625
    aput-object v24, v15, v0

    .line 626
    .line 627
    const/16 v0, 0x1a

    .line 628
    .line 629
    aput-object v35, v15, v0

    .line 630
    .line 631
    const/16 v0, 0x1b

    .line 632
    .line 633
    aput-object v26, v15, v0

    .line 634
    .line 635
    const/16 v0, 0x1c

    .line 636
    .line 637
    aput-object v27, v15, v0

    .line 638
    .line 639
    const/16 v0, 0x1d

    .line 640
    .line 641
    aput-object v28, v15, v0

    .line 642
    .line 643
    sput-object v15, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->PROD_SYMBOLS:[Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    .line 644
    .line 645
    sput-object v15, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->symbols:[Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    .line 646
    .line 647
    return-void
.end method

.method public constructor <init>(ZIIIII)V
    .locals 9

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p2

    move v8, p3

    .line 1
    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    return-void
.end method

.method public constructor <init>(ZIIIIIII)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->rectangular:Z

    .line 4
    iput p2, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->dataCapacity:I

    .line 5
    iput p3, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->errorCodewords:I

    .line 6
    iput p4, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixWidth:I

    .line 7
    iput p5, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixHeight:I

    .line 8
    iput p6, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->dataRegions:I

    .line 9
    iput p7, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->rsBlockData:I

    .line 10
    iput p8, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->rsBlockError:I

    return-void
.end method

.method private getHorizontalDataRegions()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->dataRegions:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_2

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-eq v0, v1, :cond_2

    .line 8
    .line 9
    const/4 v2, 0x4

    .line 10
    if-eq v0, v2, :cond_2

    .line 11
    .line 12
    const/16 v1, 0x10

    .line 13
    .line 14
    if-eq v0, v1, :cond_1

    .line 15
    .line 16
    const/16 v1, 0x24

    .line 17
    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x6

    .line 21
    return v0

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 25
    .line 26
    const/4 v2, 0x7

    .line 27
    new-array v2, v2, [J

    .line 28
    .line 29
    fill-array-data v2, :array_0

    .line 30
    .line 31
    .line 32
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw v0

    .line 43
    :cond_1
    return v2

    .line 44
    :cond_2
    return v1

    .line 45
    :array_0
    .array-data 8
        -0x3b2ac9a04fa103cdL    # -4.006908617428386E23
        0xef88c43e8d08ac1L    # 1.507918816787568E-236
        0x6de14270d51271e8L    # 1.9496466183085418E221
        -0x1f8526dbd32c8e34L    # -5.759609909143088E156
        0x7162881bc1de79f4L    # 1.5084163409278702E238
        0x163a30682c2c8d1aL    # 1.336482616868335E-201
        0x562bdc092211c385L    # 1.2779151525269268E107
    .end array-data
.end method

.method private getVerticalDataRegions()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->dataRegions:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_3

    .line 5
    .line 6
    const/4 v2, 0x2

    .line 7
    if-eq v0, v2, :cond_3

    .line 8
    .line 9
    const/4 v1, 0x4

    .line 10
    if-eq v0, v1, :cond_2

    .line 11
    .line 12
    const/16 v2, 0x10

    .line 13
    .line 14
    if-eq v0, v2, :cond_1

    .line 15
    .line 16
    const/16 v1, 0x24

    .line 17
    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x6

    .line 21
    return v0

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 25
    .line 26
    const/4 v2, 0x7

    .line 27
    new-array v2, v2, [J

    .line 28
    .line 29
    fill-array-data v2, :array_0

    .line 30
    .line 31
    .line 32
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw v0

    .line 43
    :cond_1
    return v1

    .line 44
    :cond_2
    return v2

    .line 45
    :cond_3
    return v1

    .line 46
    nop

    .line 47
    :array_0
    .array-data 8
        -0x4e0824b85f467ac9L    # -5.530556587911733E-68
        -0x1badaf068b07da6aL    # -1.812071767194615E175
        0x10f07a24f49a1ea7L
        0x70aa9f67a29fc386L    # 5.290519648735551E234
        -0x238a5928f28f07dfL    # -2.5179692437994363E137
        0x42d99471ec36af24L    # 1.1250142864044456E14
        0x749930d3787084d0L
    .end array-data
.end method

.method public static lookup(I)Lcom/google/zxing/datamatrix/encoder/SymbolInfo;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;->FORCE_NONE:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->lookup(ILcom/google/zxing/datamatrix/encoder/SymbolShapeHint;Z)Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    move-result-object p0

    return-object p0
.end method

.method public static lookup(ILcom/google/zxing/datamatrix/encoder/SymbolShapeHint;)Lcom/google/zxing/datamatrix/encoder/SymbolInfo;
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-static {p0, p1, v0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->lookup(ILcom/google/zxing/datamatrix/encoder/SymbolShapeHint;Z)Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    move-result-object p0

    return-object p0
.end method

.method public static lookup(ILcom/google/zxing/datamatrix/encoder/SymbolShapeHint;Lcom/google/zxing/Dimension;Lcom/google/zxing/Dimension;Z)Lcom/google/zxing/datamatrix/encoder/SymbolInfo;
    .locals 6

    .line 6
    sget-object v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->symbols:[Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    aget-object v3, v0, v2

    .line 7
    sget-object v4, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;->FORCE_SQUARE:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    if-ne p1, v4, :cond_0

    iget-boolean v4, v3, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->rectangular:Z

    if-eqz v4, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    sget-object v4, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;->FORCE_RECTANGLE:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    if-ne p1, v4, :cond_1

    iget-boolean v4, v3, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->rectangular:Z

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    .line 9
    invoke-virtual {v3}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolWidth()I

    move-result v4

    invoke-virtual {p2}, Lcom/google/zxing/Dimension;->getWidth()I

    move-result v5

    if-lt v4, v5, :cond_4

    .line 10
    invoke-virtual {v3}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolHeight()I

    move-result v4

    invoke-virtual {p2}, Lcom/google/zxing/Dimension;->getHeight()I

    move-result v5

    if-ge v4, v5, :cond_2

    goto :goto_1

    :cond_2
    if-eqz p3, :cond_3

    .line 11
    invoke-virtual {v3}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolWidth()I

    move-result v4

    invoke-virtual {p3}, Lcom/google/zxing/Dimension;->getWidth()I

    move-result v5

    if-gt v4, v5, :cond_4

    .line 12
    invoke-virtual {v3}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolHeight()I

    move-result v4

    invoke-virtual {p3}, Lcom/google/zxing/Dimension;->getHeight()I

    move-result v5

    if-le v4, v5, :cond_3

    goto :goto_1

    .line 13
    :cond_3
    iget v4, v3, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->dataCapacity:I

    if-gt p0, v4, :cond_4

    return-object v3

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    if-nez p4, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 14
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    const/16 p4, 0xb

    new-array p4, p4, [J

    fill-array-data p4, :array_0

    invoke-direct {p3, p4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    invoke-static {p3, p2, p0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object p0

    .line 16
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :array_0
    .array-data 8
        0x6e5b05f951aa436eL    # 3.9072909732489877E223
        0x6fec1263ad3a76faL    # 1.3619384158728691E231
        -0x48cfec6b4c1d6ba5L    # -7.208946440868974E-43
        0x76d544e38f1fafcL
        -0x55782debee4acb34L    # -8.308919330554746E-104
        0x6c731a4aea53da6eL    # 2.5723603874509145E214
        0x15566e0ea1947541L    # 6.986352913138805E-206
        -0x364e5790e0a521b3L    # -1.0080904843063499E47
        0x639c7375292805b9L    # 6.871873882193143E171
        -0x65143cf7aeed5902L
        -0x1196cba54ad15f9dL    # -7.288615474527273E223
    .end array-data
.end method

.method private static lookup(ILcom/google/zxing/datamatrix/encoder/SymbolShapeHint;Z)Lcom/google/zxing/datamatrix/encoder/SymbolInfo;
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-static {p0, p1, v0, v0, p2}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->lookup(ILcom/google/zxing/datamatrix/encoder/SymbolShapeHint;Lcom/google/zxing/Dimension;Lcom/google/zxing/Dimension;Z)Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    move-result-object p0

    return-object p0
.end method

.method public static lookup(IZZ)Lcom/google/zxing/datamatrix/encoder/SymbolInfo;
    .locals 0

    if-eqz p1, :cond_0

    .line 3
    sget-object p1, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;->FORCE_NONE:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;->FORCE_SQUARE:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    .line 4
    :goto_0
    invoke-static {p0, p1, p2}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->lookup(ILcom/google/zxing/datamatrix/encoder/SymbolShapeHint;Z)Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    move-result-object p0

    return-object p0
.end method

.method public static overrideSymbolSet([Lcom/google/zxing/datamatrix/encoder/SymbolInfo;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->symbols:[Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public getCodewordCount()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->dataCapacity:I

    .line 2
    .line 3
    iget v1, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->errorCodewords:I

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    return v0
.end method

.method public final getDataCapacity()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->dataCapacity:I

    .line 2
    .line 3
    return v0
.end method

.method public getDataLengthForInterleavedBlock(I)I
    .locals 0

    .line 1
    iget p1, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->rsBlockData:I

    .line 2
    .line 3
    return p1
.end method

.method public final getErrorCodewords()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->errorCodewords:I

    .line 2
    .line 3
    return v0
.end method

.method public final getErrorLengthForInterleavedBlock(I)I
    .locals 0

    .line 1
    iget p1, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->rsBlockError:I

    .line 2
    .line 3
    return p1
.end method

.method public getInterleavedBlockCount()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->dataCapacity:I

    .line 2
    .line 3
    iget v1, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->rsBlockData:I

    .line 4
    .line 5
    div-int/2addr v0, v1

    .line 6
    return v0
.end method

.method public final getSymbolDataHeight()I
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getVerticalDataRegions()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixHeight:I

    .line 6
    .line 7
    mul-int v0, v0, v1

    .line 8
    .line 9
    return v0
.end method

.method public final getSymbolDataWidth()I
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getHorizontalDataRegions()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixWidth:I

    .line 6
    .line 7
    mul-int v0, v0, v1

    .line 8
    .line 9
    return v0
.end method

.method public final getSymbolHeight()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolDataHeight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-direct {p0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getVerticalDataRegions()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    mul-int/lit8 v1, v1, 0x2

    .line 10
    .line 11
    add-int/2addr v1, v0

    .line 12
    return v1
.end method

.method public final getSymbolWidth()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolDataWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-direct {p0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getHorizontalDataRegions()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    mul-int/lit8 v1, v1, 0x2

    .line 10
    .line 11
    add-int/2addr v1, v0

    .line 12
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x3

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-boolean v3, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->rectangular:Z

    .line 9
    .line 10
    if-eqz v3, :cond_0

    .line 11
    .line 12
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 13
    .line 14
    new-array v4, v0, [J

    .line 15
    .line 16
    fill-array-data v4, :array_0

    .line 17
    .line 18
    .line 19
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 28
    .line 29
    new-array v4, v1, [J

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
    goto :goto_0

    .line 38
    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 42
    .line 43
    new-array v4, v1, [J

    .line 44
    .line 45
    fill-array-data v4, :array_2

    .line 46
    .line 47
    .line 48
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget v3, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixWidth:I

    .line 59
    .line 60
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const/16 v3, 0x78

    .line 64
    .line 65
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget v4, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixHeight:I

    .line 69
    .line 70
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 74
    .line 75
    new-array v5, v1, [J

    .line 76
    .line 77
    fill-array-data v5, :array_3

    .line 78
    .line 79
    .line 80
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolWidth()I

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolHeight()I

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 108
    .line 109
    new-array v0, v0, [J

    .line 110
    .line 111
    fill-array-data v0, :array_4

    .line 112
    .line 113
    .line 114
    invoke-direct {v4, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolDataWidth()I

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolDataHeight()I

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 142
    .line 143
    new-array v1, v1, [J

    .line 144
    .line 145
    fill-array-data v1, :array_5

    .line 146
    .line 147
    .line 148
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->dataCapacity:I

    .line 159
    .line 160
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const/16 v0, 0x2b

    .line 164
    .line 165
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->errorCodewords:I

    .line 169
    .line 170
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    return-object v0

    .line 178
    nop

    .line 179
    :array_0
    .array-data 8
        0x27262376f7899c8L
        0x2197a762cb687da0L    # 7.399527452245244E-147
        0x2a1a182b55bc9c37L    # 7.110973126468984E-106
        -0x6a4f29b81c1a70baL    # -3.356360096770112E-204
    .end array-data

    :array_1
    .array-data 8
        0x565cbbbf0665e51dL    # 1.0543996068434647E108
        0x1eb3f3df7551b9d1L    # 8.869975893707284E-161
        0x3af01c428593391dL    # 8.328876439514222E-25
    .end array-data

    :array_2
    .array-data 8
        0x1fcef98b2aa12ebdL
        0x2c3747283daa3bcdL    # 1.089798645104855E-95
        0x6392050b8769d753L    # 4.352364656520313E171
    .end array-data

    :array_3
    .array-data 8
        -0x7618c495e4bad4f9L    # -5.902309901748281E-261
        0x598463fc275ff8b5L    # 1.684913195926116E123
        0x783e7ea1bf91585dL    # 1.6110159773558478E271
    .end array-data

    :array_4
    .array-data 8
        0x3d6d03b491e94f8aL    # 8.246409501289981E-13
        -0x601f32908e0a8711L    # -3.916207317375087E-155
        -0x4fd968f70fccfa3bL    # -9.754543806100878E-77
        -0x1463b3ddf25c891bL    # -2.325752208086521E210
    .end array-data

    :array_5
    .array-data 8
        0x7ab50bd59f91ddd8L    # 1.2225038072445458E283
        0x293203b72aa8dcecL    # 2.996292018113475E-110
        0x327b79a1ffbbc82bL    # 1.630574629669988E-65
    .end array-data
.end method
