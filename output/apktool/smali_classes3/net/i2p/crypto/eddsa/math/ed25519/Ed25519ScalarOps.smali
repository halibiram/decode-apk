.class public Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519ScalarOps;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/i2p/crypto/eddsa/math/ScalarOps;


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
.method public multiplyAndAdd([B[B[B)[B
    .locals 88

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-static {v0, v3}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    .line 9
    .line 10
    .line 11
    move-result v4

    .line 12
    const v5, 0x1fffff

    .line 13
    .line 14
    .line 15
    and-int/2addr v4, v5

    .line 16
    int-to-long v6, v4

    .line 17
    const/4 v4, 0x2

    .line 18
    invoke-static {v0, v4}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    .line 19
    .line 20
    .line 21
    move-result-wide v8

    .line 22
    const/4 v10, 0x5

    .line 23
    shr-long/2addr v8, v10

    .line 24
    const-wide/32 v11, 0x1fffff

    .line 25
    .line 26
    .line 27
    and-long/2addr v8, v11

    .line 28
    invoke-static {v0, v10}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    .line 29
    .line 30
    .line 31
    move-result v13

    .line 32
    shr-int/2addr v13, v4

    .line 33
    and-int/2addr v13, v5

    .line 34
    int-to-long v13, v13

    .line 35
    const/4 v15, 0x7

    .line 36
    invoke-static {v0, v15}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    .line 37
    .line 38
    .line 39
    move-result-wide v16

    .line 40
    shr-long v16, v16, v15

    .line 41
    .line 42
    and-long v16, v16, v11

    .line 43
    .line 44
    const/16 v3, 0xa

    .line 45
    .line 46
    invoke-static {v0, v3}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    .line 47
    .line 48
    .line 49
    move-result-wide v19

    .line 50
    const/16 v21, 0x4

    .line 51
    .line 52
    shr-long v19, v19, v21

    .line 53
    .line 54
    and-long v19, v19, v11

    .line 55
    .line 56
    const/16 v3, 0xd

    .line 57
    .line 58
    invoke-static {v0, v3}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    .line 59
    .line 60
    .line 61
    move-result v22

    .line 62
    const/16 v23, 0x1

    .line 63
    .line 64
    shr-int/lit8 v22, v22, 0x1

    .line 65
    .line 66
    and-int v3, v22, v5

    .line 67
    .line 68
    int-to-long v4, v3

    .line 69
    const/16 v3, 0xf

    .line 70
    .line 71
    invoke-static {v0, v3}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    .line 72
    .line 73
    .line 74
    move-result-wide v25

    .line 75
    const/16 v27, 0x6

    .line 76
    .line 77
    shr-long v25, v25, v27

    .line 78
    .line 79
    and-long v25, v25, v11

    .line 80
    .line 81
    const/16 v3, 0x12

    .line 82
    .line 83
    invoke-static {v0, v3}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    .line 84
    .line 85
    .line 86
    move-result v28

    .line 87
    const/16 v29, 0x3

    .line 88
    .line 89
    shr-int/lit8 v28, v28, 0x3

    .line 90
    .line 91
    const v22, 0x1fffff

    .line 92
    .line 93
    .line 94
    and-int v3, v28, v22

    .line 95
    .line 96
    int-to-long v11, v3

    .line 97
    const/16 v3, 0x15

    .line 98
    .line 99
    invoke-static {v0, v3}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    .line 100
    .line 101
    .line 102
    move-result v28

    .line 103
    and-int v3, v28, v22

    .line 104
    .line 105
    move-wide/from16 v33, v11

    .line 106
    .line 107
    int-to-long v10, v3

    .line 108
    const/16 v3, 0x17

    .line 109
    .line 110
    invoke-static {v0, v3}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    .line 111
    .line 112
    .line 113
    move-result-wide v35

    .line 114
    const/4 v12, 0x5

    .line 115
    shr-long v35, v35, v12

    .line 116
    .line 117
    const-wide/32 v30, 0x1fffff

    .line 118
    .line 119
    .line 120
    and-long v35, v35, v30

    .line 121
    .line 122
    const/16 v12, 0x1a

    .line 123
    .line 124
    invoke-static {v0, v12}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    .line 125
    .line 126
    .line 127
    move-result v37

    .line 128
    const/4 v12, 0x2

    .line 129
    shr-int/lit8 v24, v37, 0x2

    .line 130
    .line 131
    and-int v3, v24, v22

    .line 132
    .line 133
    move-wide/from16 v38, v13

    .line 134
    .line 135
    int-to-long v12, v3

    .line 136
    const/16 v3, 0x1c

    .line 137
    .line 138
    invoke-static {v0, v3}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    .line 139
    .line 140
    .line 141
    move-result-wide v40

    .line 142
    shr-long v40, v40, v15

    .line 143
    .line 144
    const/4 v0, 0x0

    .line 145
    invoke-static {v1, v0}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    .line 146
    .line 147
    .line 148
    move-result v14

    .line 149
    and-int v0, v14, v22

    .line 150
    .line 151
    move-wide/from16 v42, v4

    .line 152
    .line 153
    int-to-long v3, v0

    .line 154
    const/4 v0, 0x2

    .line 155
    invoke-static {v1, v0}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    .line 156
    .line 157
    .line 158
    move-result-wide v44

    .line 159
    const/4 v14, 0x5

    .line 160
    shr-long v44, v44, v14

    .line 161
    .line 162
    const-wide/32 v30, 0x1fffff

    .line 163
    .line 164
    .line 165
    and-long v44, v44, v30

    .line 166
    .line 167
    invoke-static {v1, v14}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    .line 168
    .line 169
    .line 170
    move-result v24

    .line 171
    shr-int/lit8 v14, v24, 0x2

    .line 172
    .line 173
    and-int v0, v14, v22

    .line 174
    .line 175
    move-wide/from16 v46, v6

    .line 176
    .line 177
    int-to-long v5, v0

    .line 178
    invoke-static {v1, v15}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    .line 179
    .line 180
    .line 181
    move-result-wide v48

    .line 182
    shr-long v48, v48, v15

    .line 183
    .line 184
    and-long v48, v48, v30

    .line 185
    .line 186
    const/16 v0, 0xa

    .line 187
    .line 188
    invoke-static {v1, v0}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    .line 189
    .line 190
    .line 191
    move-result-wide v50

    .line 192
    shr-long v50, v50, v21

    .line 193
    .line 194
    and-long v50, v50, v30

    .line 195
    .line 196
    const/16 v0, 0xd

    .line 197
    .line 198
    invoke-static {v1, v0}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    .line 199
    .line 200
    .line 201
    move-result v7

    .line 202
    shr-int/lit8 v0, v7, 0x1

    .line 203
    .line 204
    and-int v0, v0, v22

    .line 205
    .line 206
    move-wide/from16 v52, v12

    .line 207
    .line 208
    int-to-long v12, v0

    .line 209
    const/16 v0, 0xf

    .line 210
    .line 211
    invoke-static {v1, v0}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    .line 212
    .line 213
    .line 214
    move-result-wide v54

    .line 215
    shr-long v54, v54, v27

    .line 216
    .line 217
    and-long v54, v54, v30

    .line 218
    .line 219
    const/16 v0, 0x12

    .line 220
    .line 221
    invoke-static {v1, v0}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    .line 222
    .line 223
    .line 224
    move-result v7

    .line 225
    shr-int/lit8 v0, v7, 0x3

    .line 226
    .line 227
    and-int v0, v0, v22

    .line 228
    .line 229
    move-wide/from16 v56, v10

    .line 230
    .line 231
    int-to-long v10, v0

    .line 232
    const/16 v0, 0x15

    .line 233
    .line 234
    invoke-static {v1, v0}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    .line 235
    .line 236
    .line 237
    move-result v7

    .line 238
    and-int v0, v7, v22

    .line 239
    .line 240
    move-wide/from16 v58, v10

    .line 241
    .line 242
    int-to-long v10, v0

    .line 243
    const/16 v0, 0x17

    .line 244
    .line 245
    invoke-static {v1, v0}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    .line 246
    .line 247
    .line 248
    move-result-wide v60

    .line 249
    const/4 v0, 0x5

    .line 250
    shr-long v60, v60, v0

    .line 251
    .line 252
    and-long v60, v60, v30

    .line 253
    .line 254
    const/16 v0, 0x1a

    .line 255
    .line 256
    invoke-static {v1, v0}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    .line 257
    .line 258
    .line 259
    move-result v7

    .line 260
    const/4 v0, 0x2

    .line 261
    shr-int/2addr v7, v0

    .line 262
    and-int v7, v7, v22

    .line 263
    .line 264
    move-wide/from16 v62, v10

    .line 265
    .line 266
    int-to-long v10, v7

    .line 267
    const/16 v7, 0x1c

    .line 268
    .line 269
    invoke-static {v1, v7}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    .line 270
    .line 271
    .line 272
    move-result-wide v64

    .line 273
    shr-long v64, v64, v15

    .line 274
    .line 275
    const/4 v7, 0x0

    .line 276
    invoke-static {v2, v7}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    .line 277
    .line 278
    .line 279
    move-result v14

    .line 280
    and-int v7, v14, v22

    .line 281
    .line 282
    move-wide/from16 v66, v10

    .line 283
    .line 284
    int-to-long v10, v7

    .line 285
    invoke-static {v2, v0}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    .line 286
    .line 287
    .line 288
    move-result-wide v68

    .line 289
    const/4 v7, 0x5

    .line 290
    shr-long v68, v68, v7

    .line 291
    .line 292
    const-wide/32 v30, 0x1fffff

    .line 293
    .line 294
    .line 295
    and-long v68, v68, v30

    .line 296
    .line 297
    invoke-static {v2, v7}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    .line 298
    .line 299
    .line 300
    move-result v14

    .line 301
    shr-int/lit8 v7, v14, 0x2

    .line 302
    .line 303
    and-int v0, v7, v22

    .line 304
    .line 305
    int-to-long v0, v0

    .line 306
    invoke-static {v2, v15}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    .line 307
    .line 308
    .line 309
    move-result-wide v70

    .line 310
    shr-long v70, v70, v15

    .line 311
    .line 312
    and-long v70, v70, v30

    .line 313
    .line 314
    const/16 v14, 0xa

    .line 315
    .line 316
    invoke-static {v2, v14}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    .line 317
    .line 318
    .line 319
    move-result-wide v72

    .line 320
    shr-long v72, v72, v21

    .line 321
    .line 322
    and-long v72, v72, v30

    .line 323
    .line 324
    const/16 v14, 0xd

    .line 325
    .line 326
    invoke-static {v2, v14}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    .line 327
    .line 328
    .line 329
    move-result v74

    .line 330
    shr-int/lit8 v14, v74, 0x1

    .line 331
    .line 332
    and-int v14, v14, v22

    .line 333
    .line 334
    move-wide/from16 v74, v8

    .line 335
    .line 336
    int-to-long v7, v14

    .line 337
    const/16 v9, 0xf

    .line 338
    .line 339
    invoke-static {v2, v9}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    .line 340
    .line 341
    .line 342
    move-result-wide v76

    .line 343
    shr-long v76, v76, v27

    .line 344
    .line 345
    and-long v76, v76, v30

    .line 346
    .line 347
    const/16 v9, 0x12

    .line 348
    .line 349
    invoke-static {v2, v9}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    .line 350
    .line 351
    .line 352
    move-result v14

    .line 353
    shr-int/lit8 v9, v14, 0x3

    .line 354
    .line 355
    and-int v9, v9, v22

    .line 356
    .line 357
    move-wide/from16 v78, v7

    .line 358
    .line 359
    int-to-long v7, v9

    .line 360
    const/16 v9, 0x15

    .line 361
    .line 362
    invoke-static {v2, v9}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    .line 363
    .line 364
    .line 365
    move-result v14

    .line 366
    and-int v9, v14, v22

    .line 367
    .line 368
    move-wide/from16 v80, v7

    .line 369
    .line 370
    int-to-long v7, v9

    .line 371
    const/16 v9, 0x17

    .line 372
    .line 373
    invoke-static {v2, v9}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    .line 374
    .line 375
    .line 376
    move-result-wide v82

    .line 377
    const/4 v9, 0x5

    .line 378
    shr-long v82, v82, v9

    .line 379
    .line 380
    and-long v30, v82, v30

    .line 381
    .line 382
    const/16 v9, 0x1a

    .line 383
    .line 384
    invoke-static {v2, v9}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    .line 385
    .line 386
    .line 387
    move-result v14

    .line 388
    const/4 v9, 0x2

    .line 389
    shr-int/2addr v14, v9

    .line 390
    and-int v9, v14, v22

    .line 391
    .line 392
    move-wide/from16 v82, v7

    .line 393
    .line 394
    int-to-long v7, v9

    .line 395
    const/16 v9, 0x1c

    .line 396
    .line 397
    invoke-static {v2, v9}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    .line 398
    .line 399
    .line 400
    move-result-wide v84

    .line 401
    shr-long v84, v84, v15

    .line 402
    .line 403
    mul-long v86, v46, v3

    .line 404
    .line 405
    add-long v86, v86, v10

    .line 406
    .line 407
    mul-long v9, v46, v44

    .line 408
    .line 409
    add-long v9, v9, v68

    .line 410
    .line 411
    mul-long v68, v74, v3

    .line 412
    .line 413
    add-long v68, v68, v9

    .line 414
    .line 415
    mul-long v9, v46, v5

    .line 416
    .line 417
    add-long/2addr v9, v0

    .line 418
    mul-long v0, v74, v44

    .line 419
    .line 420
    add-long/2addr v0, v9

    .line 421
    mul-long v9, v38, v3

    .line 422
    .line 423
    add-long/2addr v9, v0

    .line 424
    mul-long v0, v46, v48

    .line 425
    .line 426
    add-long v0, v0, v70

    .line 427
    .line 428
    mul-long v70, v74, v5

    .line 429
    .line 430
    add-long v70, v70, v0

    .line 431
    .line 432
    mul-long v0, v38, v44

    .line 433
    .line 434
    add-long v0, v0, v70

    .line 435
    .line 436
    mul-long v70, v16, v3

    .line 437
    .line 438
    add-long v70, v70, v0

    .line 439
    .line 440
    mul-long v0, v46, v50

    .line 441
    .line 442
    add-long v0, v0, v72

    .line 443
    .line 444
    mul-long v72, v74, v48

    .line 445
    .line 446
    add-long v72, v72, v0

    .line 447
    .line 448
    mul-long v0, v38, v5

    .line 449
    .line 450
    add-long v0, v0, v72

    .line 451
    .line 452
    mul-long v72, v16, v44

    .line 453
    .line 454
    add-long v72, v72, v0

    .line 455
    .line 456
    mul-long v0, v19, v3

    .line 457
    .line 458
    add-long v0, v0, v72

    .line 459
    .line 460
    mul-long v72, v46, v12

    .line 461
    .line 462
    add-long v72, v72, v78

    .line 463
    .line 464
    mul-long v78, v74, v50

    .line 465
    .line 466
    add-long v78, v78, v72

    .line 467
    .line 468
    mul-long v72, v38, v48

    .line 469
    .line 470
    add-long v72, v72, v78

    .line 471
    .line 472
    mul-long v78, v16, v5

    .line 473
    .line 474
    add-long v78, v78, v72

    .line 475
    .line 476
    mul-long v72, v19, v44

    .line 477
    .line 478
    add-long v72, v72, v78

    .line 479
    .line 480
    mul-long v78, v42, v3

    .line 481
    .line 482
    add-long v78, v78, v72

    .line 483
    .line 484
    mul-long v72, v46, v54

    .line 485
    .line 486
    add-long v72, v72, v76

    .line 487
    .line 488
    mul-long v76, v74, v12

    .line 489
    .line 490
    add-long v76, v76, v72

    .line 491
    .line 492
    mul-long v72, v38, v50

    .line 493
    .line 494
    add-long v72, v72, v76

    .line 495
    .line 496
    mul-long v76, v16, v48

    .line 497
    .line 498
    add-long v76, v76, v72

    .line 499
    .line 500
    mul-long v72, v19, v5

    .line 501
    .line 502
    add-long v72, v72, v76

    .line 503
    .line 504
    mul-long v76, v42, v44

    .line 505
    .line 506
    add-long v76, v76, v72

    .line 507
    .line 508
    mul-long v72, v25, v3

    .line 509
    .line 510
    add-long v72, v72, v76

    .line 511
    .line 512
    mul-long v76, v46, v58

    .line 513
    .line 514
    add-long v76, v76, v80

    .line 515
    .line 516
    mul-long v80, v74, v54

    .line 517
    .line 518
    add-long v80, v80, v76

    .line 519
    .line 520
    mul-long v76, v38, v12

    .line 521
    .line 522
    add-long v76, v76, v80

    .line 523
    .line 524
    mul-long v80, v16, v50

    .line 525
    .line 526
    add-long v80, v80, v76

    .line 527
    .line 528
    mul-long v76, v19, v48

    .line 529
    .line 530
    add-long v76, v76, v80

    .line 531
    .line 532
    mul-long v80, v42, v5

    .line 533
    .line 534
    add-long v80, v80, v76

    .line 535
    .line 536
    mul-long v76, v25, v44

    .line 537
    .line 538
    add-long v76, v76, v80

    .line 539
    .line 540
    mul-long v80, v33, v3

    .line 541
    .line 542
    add-long v80, v80, v76

    .line 543
    .line 544
    mul-long v76, v46, v62

    .line 545
    .line 546
    add-long v76, v76, v82

    .line 547
    .line 548
    mul-long v82, v74, v58

    .line 549
    .line 550
    add-long v82, v82, v76

    .line 551
    .line 552
    mul-long v76, v38, v54

    .line 553
    .line 554
    add-long v76, v76, v82

    .line 555
    .line 556
    mul-long v82, v16, v12

    .line 557
    .line 558
    add-long v82, v82, v76

    .line 559
    .line 560
    mul-long v76, v19, v50

    .line 561
    .line 562
    add-long v76, v76, v82

    .line 563
    .line 564
    mul-long v82, v42, v48

    .line 565
    .line 566
    add-long v82, v82, v76

    .line 567
    .line 568
    mul-long v76, v25, v5

    .line 569
    .line 570
    add-long v76, v76, v82

    .line 571
    .line 572
    mul-long v82, v33, v44

    .line 573
    .line 574
    add-long v82, v82, v76

    .line 575
    .line 576
    mul-long v76, v56, v3

    .line 577
    .line 578
    add-long v76, v76, v82

    .line 579
    .line 580
    mul-long v82, v46, v60

    .line 581
    .line 582
    add-long v82, v82, v30

    .line 583
    .line 584
    mul-long v30, v74, v62

    .line 585
    .line 586
    add-long v30, v30, v82

    .line 587
    .line 588
    mul-long v82, v38, v58

    .line 589
    .line 590
    add-long v82, v82, v30

    .line 591
    .line 592
    mul-long v30, v16, v54

    .line 593
    .line 594
    add-long v30, v30, v82

    .line 595
    .line 596
    mul-long v82, v19, v12

    .line 597
    .line 598
    add-long v82, v82, v30

    .line 599
    .line 600
    mul-long v30, v42, v50

    .line 601
    .line 602
    add-long v30, v30, v82

    .line 603
    .line 604
    mul-long v82, v25, v48

    .line 605
    .line 606
    add-long v82, v82, v30

    .line 607
    .line 608
    mul-long v30, v33, v5

    .line 609
    .line 610
    add-long v30, v30, v82

    .line 611
    .line 612
    mul-long v82, v56, v44

    .line 613
    .line 614
    add-long v82, v82, v30

    .line 615
    .line 616
    mul-long v30, v35, v3

    .line 617
    .line 618
    add-long v30, v30, v82

    .line 619
    .line 620
    mul-long v82, v46, v66

    .line 621
    .line 622
    add-long v82, v82, v7

    .line 623
    .line 624
    mul-long v7, v74, v60

    .line 625
    .line 626
    add-long v7, v7, v82

    .line 627
    .line 628
    mul-long v82, v38, v62

    .line 629
    .line 630
    add-long v82, v82, v7

    .line 631
    .line 632
    mul-long v7, v16, v58

    .line 633
    .line 634
    add-long v7, v7, v82

    .line 635
    .line 636
    mul-long v82, v19, v54

    .line 637
    .line 638
    add-long v82, v82, v7

    .line 639
    .line 640
    mul-long v7, v42, v12

    .line 641
    .line 642
    add-long v7, v7, v82

    .line 643
    .line 644
    mul-long v82, v25, v50

    .line 645
    .line 646
    add-long v82, v82, v7

    .line 647
    .line 648
    mul-long v7, v33, v48

    .line 649
    .line 650
    add-long v7, v7, v82

    .line 651
    .line 652
    mul-long v82, v56, v5

    .line 653
    .line 654
    add-long v82, v82, v7

    .line 655
    .line 656
    mul-long v7, v35, v44

    .line 657
    .line 658
    add-long v7, v7, v82

    .line 659
    .line 660
    mul-long v82, v52, v3

    .line 661
    .line 662
    add-long v82, v82, v7

    .line 663
    .line 664
    mul-long v7, v46, v64

    .line 665
    .line 666
    add-long v7, v7, v84

    .line 667
    .line 668
    mul-long v46, v74, v66

    .line 669
    .line 670
    add-long v46, v46, v7

    .line 671
    .line 672
    mul-long v7, v38, v60

    .line 673
    .line 674
    add-long v7, v7, v46

    .line 675
    .line 676
    mul-long v46, v16, v62

    .line 677
    .line 678
    add-long v46, v46, v7

    .line 679
    .line 680
    mul-long v7, v19, v58

    .line 681
    .line 682
    add-long v7, v7, v46

    .line 683
    .line 684
    mul-long v46, v42, v54

    .line 685
    .line 686
    add-long v46, v46, v7

    .line 687
    .line 688
    mul-long v7, v25, v12

    .line 689
    .line 690
    add-long v7, v7, v46

    .line 691
    .line 692
    mul-long v46, v33, v50

    .line 693
    .line 694
    add-long v46, v46, v7

    .line 695
    .line 696
    mul-long v7, v56, v48

    .line 697
    .line 698
    add-long v7, v7, v46

    .line 699
    .line 700
    mul-long v46, v35, v5

    .line 701
    .line 702
    add-long v46, v46, v7

    .line 703
    .line 704
    mul-long v7, v52, v44

    .line 705
    .line 706
    add-long v7, v7, v46

    .line 707
    .line 708
    mul-long v3, v3, v40

    .line 709
    .line 710
    add-long/2addr v3, v7

    .line 711
    mul-long v7, v74, v64

    .line 712
    .line 713
    mul-long v46, v38, v66

    .line 714
    .line 715
    add-long v46, v46, v7

    .line 716
    .line 717
    mul-long v7, v16, v60

    .line 718
    .line 719
    add-long v7, v7, v46

    .line 720
    .line 721
    mul-long v46, v19, v62

    .line 722
    .line 723
    add-long v46, v46, v7

    .line 724
    .line 725
    mul-long v7, v42, v58

    .line 726
    .line 727
    add-long v7, v7, v46

    .line 728
    .line 729
    mul-long v46, v25, v54

    .line 730
    .line 731
    add-long v46, v46, v7

    .line 732
    .line 733
    mul-long v7, v33, v12

    .line 734
    .line 735
    add-long v7, v7, v46

    .line 736
    .line 737
    mul-long v46, v56, v50

    .line 738
    .line 739
    add-long v46, v46, v7

    .line 740
    .line 741
    mul-long v7, v35, v48

    .line 742
    .line 743
    add-long v7, v7, v46

    .line 744
    .line 745
    mul-long v46, v52, v5

    .line 746
    .line 747
    add-long v46, v46, v7

    .line 748
    .line 749
    mul-long v44, v44, v40

    .line 750
    .line 751
    add-long v44, v44, v46

    .line 752
    .line 753
    mul-long v7, v38, v64

    .line 754
    .line 755
    mul-long v38, v16, v66

    .line 756
    .line 757
    add-long v38, v38, v7

    .line 758
    .line 759
    mul-long v7, v19, v60

    .line 760
    .line 761
    add-long v7, v7, v38

    .line 762
    .line 763
    mul-long v38, v42, v62

    .line 764
    .line 765
    add-long v38, v38, v7

    .line 766
    .line 767
    mul-long v7, v25, v58

    .line 768
    .line 769
    add-long v7, v7, v38

    .line 770
    .line 771
    mul-long v38, v33, v54

    .line 772
    .line 773
    add-long v38, v38, v7

    .line 774
    .line 775
    mul-long v7, v56, v12

    .line 776
    .line 777
    add-long v7, v7, v38

    .line 778
    .line 779
    mul-long v38, v35, v50

    .line 780
    .line 781
    add-long v38, v38, v7

    .line 782
    .line 783
    mul-long v7, v52, v48

    .line 784
    .line 785
    add-long v7, v7, v38

    .line 786
    .line 787
    mul-long v5, v5, v40

    .line 788
    .line 789
    add-long/2addr v5, v7

    .line 790
    mul-long v16, v16, v64

    .line 791
    .line 792
    mul-long v7, v19, v66

    .line 793
    .line 794
    add-long v7, v7, v16

    .line 795
    .line 796
    mul-long v16, v42, v60

    .line 797
    .line 798
    add-long v16, v16, v7

    .line 799
    .line 800
    mul-long v7, v25, v62

    .line 801
    .line 802
    add-long v7, v7, v16

    .line 803
    .line 804
    mul-long v16, v33, v58

    .line 805
    .line 806
    add-long v16, v16, v7

    .line 807
    .line 808
    mul-long v7, v56, v54

    .line 809
    .line 810
    add-long v7, v7, v16

    .line 811
    .line 812
    mul-long v16, v35, v12

    .line 813
    .line 814
    add-long v16, v16, v7

    .line 815
    .line 816
    mul-long v7, v52, v50

    .line 817
    .line 818
    add-long v7, v7, v16

    .line 819
    .line 820
    mul-long v48, v48, v40

    .line 821
    .line 822
    add-long v48, v48, v7

    .line 823
    .line 824
    mul-long v19, v19, v64

    .line 825
    .line 826
    mul-long v7, v42, v66

    .line 827
    .line 828
    add-long v7, v7, v19

    .line 829
    .line 830
    mul-long v16, v25, v60

    .line 831
    .line 832
    add-long v16, v16, v7

    .line 833
    .line 834
    mul-long v7, v33, v62

    .line 835
    .line 836
    add-long v7, v7, v16

    .line 837
    .line 838
    mul-long v16, v56, v58

    .line 839
    .line 840
    add-long v16, v16, v7

    .line 841
    .line 842
    mul-long v7, v35, v54

    .line 843
    .line 844
    add-long v7, v7, v16

    .line 845
    .line 846
    mul-long v16, v52, v12

    .line 847
    .line 848
    add-long v16, v16, v7

    .line 849
    .line 850
    mul-long v50, v50, v40

    .line 851
    .line 852
    add-long v50, v50, v16

    .line 853
    .line 854
    mul-long v7, v42, v64

    .line 855
    .line 856
    mul-long v16, v25, v66

    .line 857
    .line 858
    add-long v16, v16, v7

    .line 859
    .line 860
    mul-long v7, v33, v60

    .line 861
    .line 862
    add-long v7, v7, v16

    .line 863
    .line 864
    mul-long v16, v56, v62

    .line 865
    .line 866
    add-long v16, v16, v7

    .line 867
    .line 868
    mul-long v7, v35, v58

    .line 869
    .line 870
    add-long v7, v7, v16

    .line 871
    .line 872
    mul-long v16, v52, v54

    .line 873
    .line 874
    add-long v16, v16, v7

    .line 875
    .line 876
    mul-long v12, v12, v40

    .line 877
    .line 878
    add-long v12, v12, v16

    .line 879
    .line 880
    mul-long v25, v25, v64

    .line 881
    .line 882
    mul-long v7, v33, v66

    .line 883
    .line 884
    add-long v7, v7, v25

    .line 885
    .line 886
    mul-long v16, v56, v60

    .line 887
    .line 888
    add-long v16, v16, v7

    .line 889
    .line 890
    mul-long v7, v35, v62

    .line 891
    .line 892
    add-long v7, v7, v16

    .line 893
    .line 894
    mul-long v16, v52, v58

    .line 895
    .line 896
    add-long v16, v16, v7

    .line 897
    .line 898
    mul-long v54, v54, v40

    .line 899
    .line 900
    add-long v54, v54, v16

    .line 901
    .line 902
    mul-long v7, v33, v64

    .line 903
    .line 904
    mul-long v16, v56, v66

    .line 905
    .line 906
    add-long v16, v16, v7

    .line 907
    .line 908
    mul-long v7, v35, v60

    .line 909
    .line 910
    add-long v7, v7, v16

    .line 911
    .line 912
    mul-long v16, v52, v62

    .line 913
    .line 914
    add-long v16, v16, v7

    .line 915
    .line 916
    mul-long v7, v40, v58

    .line 917
    .line 918
    add-long v7, v7, v16

    .line 919
    .line 920
    mul-long v16, v56, v64

    .line 921
    .line 922
    mul-long v19, v35, v66

    .line 923
    .line 924
    add-long v19, v19, v16

    .line 925
    .line 926
    mul-long v16, v52, v60

    .line 927
    .line 928
    add-long v16, v16, v19

    .line 929
    .line 930
    mul-long v19, v40, v62

    .line 931
    .line 932
    add-long v19, v19, v16

    .line 933
    .line 934
    mul-long v35, v35, v64

    .line 935
    .line 936
    mul-long v16, v52, v66

    .line 937
    .line 938
    add-long v16, v16, v35

    .line 939
    .line 940
    mul-long v60, v60, v40

    .line 941
    .line 942
    add-long v60, v60, v16

    .line 943
    .line 944
    mul-long v16, v52, v64

    .line 945
    .line 946
    mul-long v25, v40, v66

    .line 947
    .line 948
    add-long v25, v25, v16

    .line 949
    .line 950
    mul-long v40, v40, v64

    .line 951
    .line 952
    const-wide/32 v16, 0x100000

    .line 953
    .line 954
    .line 955
    add-long v33, v86, v16

    .line 956
    .line 957
    const/16 v11, 0x15

    .line 958
    .line 959
    shr-long v32, v33, v11

    .line 960
    .line 961
    add-long v68, v68, v32

    .line 962
    .line 963
    shl-long v32, v32, v11

    .line 964
    .line 965
    sub-long v86, v86, v32

    .line 966
    .line 967
    add-long v32, v9, v16

    .line 968
    .line 969
    shr-long v32, v32, v11

    .line 970
    .line 971
    add-long v70, v70, v32

    .line 972
    .line 973
    shl-long v32, v32, v11

    .line 974
    .line 975
    sub-long v9, v9, v32

    .line 976
    .line 977
    add-long v32, v0, v16

    .line 978
    .line 979
    shr-long v32, v32, v11

    .line 980
    .line 981
    add-long v78, v78, v32

    .line 982
    .line 983
    shl-long v32, v32, v11

    .line 984
    .line 985
    sub-long v0, v0, v32

    .line 986
    .line 987
    add-long v32, v72, v16

    .line 988
    .line 989
    shr-long v32, v32, v11

    .line 990
    .line 991
    add-long v80, v80, v32

    .line 992
    .line 993
    shl-long v32, v32, v11

    .line 994
    .line 995
    sub-long v72, v72, v32

    .line 996
    .line 997
    add-long v32, v76, v16

    .line 998
    .line 999
    shr-long v32, v32, v11

    .line 1000
    .line 1001
    add-long v30, v30, v32

    .line 1002
    .line 1003
    shl-long v32, v32, v11

    .line 1004
    .line 1005
    sub-long v76, v76, v32

    .line 1006
    .line 1007
    add-long v32, v82, v16

    .line 1008
    .line 1009
    shr-long v32, v32, v11

    .line 1010
    .line 1011
    add-long v3, v3, v32

    .line 1012
    .line 1013
    shl-long v32, v32, v11

    .line 1014
    .line 1015
    sub-long v82, v82, v32

    .line 1016
    .line 1017
    add-long v32, v44, v16

    .line 1018
    .line 1019
    shr-long v32, v32, v11

    .line 1020
    .line 1021
    add-long v5, v5, v32

    .line 1022
    .line 1023
    shl-long v32, v32, v11

    .line 1024
    .line 1025
    sub-long v44, v44, v32

    .line 1026
    .line 1027
    add-long v32, v48, v16

    .line 1028
    .line 1029
    shr-long v32, v32, v11

    .line 1030
    .line 1031
    add-long v50, v50, v32

    .line 1032
    .line 1033
    shl-long v32, v32, v11

    .line 1034
    .line 1035
    sub-long v48, v48, v32

    .line 1036
    .line 1037
    add-long v32, v12, v16

    .line 1038
    .line 1039
    shr-long v32, v32, v11

    .line 1040
    .line 1041
    add-long v54, v54, v32

    .line 1042
    .line 1043
    shl-long v32, v32, v11

    .line 1044
    .line 1045
    sub-long v12, v12, v32

    .line 1046
    .line 1047
    add-long v32, v7, v16

    .line 1048
    .line 1049
    shr-long v32, v32, v11

    .line 1050
    .line 1051
    add-long v19, v19, v32

    .line 1052
    .line 1053
    shl-long v32, v32, v11

    .line 1054
    .line 1055
    sub-long v7, v7, v32

    .line 1056
    .line 1057
    add-long v32, v60, v16

    .line 1058
    .line 1059
    shr-long v32, v32, v11

    .line 1060
    .line 1061
    add-long v25, v25, v32

    .line 1062
    .line 1063
    shl-long v32, v32, v11

    .line 1064
    .line 1065
    sub-long v60, v60, v32

    .line 1066
    .line 1067
    add-long v32, v40, v16

    .line 1068
    .line 1069
    shr-long v33, v32, v11

    .line 1070
    .line 1071
    shl-long v35, v33, v11

    .line 1072
    .line 1073
    sub-long v40, v40, v35

    .line 1074
    .line 1075
    add-long v35, v68, v16

    .line 1076
    .line 1077
    shr-long v35, v35, v11

    .line 1078
    .line 1079
    add-long v9, v9, v35

    .line 1080
    .line 1081
    shl-long v35, v35, v11

    .line 1082
    .line 1083
    sub-long v68, v68, v35

    .line 1084
    .line 1085
    add-long v35, v70, v16

    .line 1086
    .line 1087
    shr-long v35, v35, v11

    .line 1088
    .line 1089
    add-long v0, v0, v35

    .line 1090
    .line 1091
    shl-long v35, v35, v11

    .line 1092
    .line 1093
    sub-long v70, v70, v35

    .line 1094
    .line 1095
    add-long v35, v78, v16

    .line 1096
    .line 1097
    shr-long v35, v35, v11

    .line 1098
    .line 1099
    add-long v72, v72, v35

    .line 1100
    .line 1101
    shl-long v35, v35, v11

    .line 1102
    .line 1103
    sub-long v78, v78, v35

    .line 1104
    .line 1105
    add-long v35, v80, v16

    .line 1106
    .line 1107
    shr-long v35, v35, v11

    .line 1108
    .line 1109
    add-long v76, v76, v35

    .line 1110
    .line 1111
    shl-long v35, v35, v11

    .line 1112
    .line 1113
    sub-long v80, v80, v35

    .line 1114
    .line 1115
    add-long v35, v30, v16

    .line 1116
    .line 1117
    shr-long v35, v35, v11

    .line 1118
    .line 1119
    add-long v82, v82, v35

    .line 1120
    .line 1121
    shl-long v35, v35, v11

    .line 1122
    .line 1123
    sub-long v30, v30, v35

    .line 1124
    .line 1125
    add-long v35, v3, v16

    .line 1126
    .line 1127
    shr-long v35, v35, v11

    .line 1128
    .line 1129
    add-long v44, v44, v35

    .line 1130
    .line 1131
    shl-long v35, v35, v11

    .line 1132
    .line 1133
    sub-long v3, v3, v35

    .line 1134
    .line 1135
    add-long v35, v5, v16

    .line 1136
    .line 1137
    shr-long v35, v35, v11

    .line 1138
    .line 1139
    add-long v48, v48, v35

    .line 1140
    .line 1141
    shl-long v35, v35, v11

    .line 1142
    .line 1143
    sub-long v5, v5, v35

    .line 1144
    .line 1145
    add-long v35, v50, v16

    .line 1146
    .line 1147
    shr-long v35, v35, v11

    .line 1148
    .line 1149
    add-long v12, v12, v35

    .line 1150
    .line 1151
    shl-long v35, v35, v11

    .line 1152
    .line 1153
    sub-long v50, v50, v35

    .line 1154
    .line 1155
    add-long v35, v54, v16

    .line 1156
    .line 1157
    shr-long v35, v35, v11

    .line 1158
    .line 1159
    add-long v7, v7, v35

    .line 1160
    .line 1161
    shl-long v35, v35, v11

    .line 1162
    .line 1163
    sub-long v54, v54, v35

    .line 1164
    .line 1165
    add-long v35, v19, v16

    .line 1166
    .line 1167
    shr-long v35, v35, v11

    .line 1168
    .line 1169
    add-long v60, v60, v35

    .line 1170
    .line 1171
    shl-long v35, v35, v11

    .line 1172
    .line 1173
    sub-long v19, v19, v35

    .line 1174
    .line 1175
    add-long v35, v25, v16

    .line 1176
    .line 1177
    shr-long v35, v35, v11

    .line 1178
    .line 1179
    add-long v40, v40, v35

    .line 1180
    .line 1181
    shl-long v35, v35, v11

    .line 1182
    .line 1183
    sub-long v25, v25, v35

    .line 1184
    .line 1185
    const-wide/32 v35, 0xa2c13

    .line 1186
    .line 1187
    .line 1188
    mul-long v38, v33, v35

    .line 1189
    .line 1190
    add-long v38, v38, v3

    .line 1191
    .line 1192
    const-wide/32 v3, 0x72d18

    .line 1193
    .line 1194
    .line 1195
    mul-long v42, v33, v3

    .line 1196
    .line 1197
    add-long v42, v42, v44

    .line 1198
    .line 1199
    const-wide/32 v44, 0x9fb67

    .line 1200
    .line 1201
    .line 1202
    mul-long v46, v33, v44

    .line 1203
    .line 1204
    add-long v46, v46, v5

    .line 1205
    .line 1206
    const-wide/32 v5, 0xf39ad

    .line 1207
    .line 1208
    .line 1209
    mul-long v52, v33, v5

    .line 1210
    .line 1211
    sub-long v48, v48, v52

    .line 1212
    .line 1213
    const-wide/32 v52, 0x215d1

    .line 1214
    .line 1215
    .line 1216
    mul-long v56, v33, v52

    .line 1217
    .line 1218
    add-long v56, v56, v50

    .line 1219
    .line 1220
    const-wide/32 v50, 0xa6f7d

    .line 1221
    .line 1222
    .line 1223
    mul-long v33, v33, v50

    .line 1224
    .line 1225
    sub-long v12, v12, v33

    .line 1226
    .line 1227
    mul-long v33, v40, v35

    .line 1228
    .line 1229
    add-long v33, v33, v82

    .line 1230
    .line 1231
    mul-long v58, v40, v3

    .line 1232
    .line 1233
    add-long v58, v58, v38

    .line 1234
    .line 1235
    mul-long v38, v40, v44

    .line 1236
    .line 1237
    add-long v38, v38, v42

    .line 1238
    .line 1239
    mul-long v42, v40, v5

    .line 1240
    .line 1241
    sub-long v46, v46, v42

    .line 1242
    .line 1243
    mul-long v42, v40, v52

    .line 1244
    .line 1245
    add-long v42, v42, v48

    .line 1246
    .line 1247
    mul-long v40, v40, v50

    .line 1248
    .line 1249
    sub-long v56, v56, v40

    .line 1250
    .line 1251
    mul-long v40, v25, v35

    .line 1252
    .line 1253
    add-long v40, v40, v30

    .line 1254
    .line 1255
    mul-long v30, v25, v3

    .line 1256
    .line 1257
    add-long v30, v30, v33

    .line 1258
    .line 1259
    mul-long v33, v25, v44

    .line 1260
    .line 1261
    add-long v33, v33, v58

    .line 1262
    .line 1263
    mul-long v48, v25, v5

    .line 1264
    .line 1265
    sub-long v38, v38, v48

    .line 1266
    .line 1267
    mul-long v48, v25, v52

    .line 1268
    .line 1269
    add-long v48, v48, v46

    .line 1270
    .line 1271
    mul-long v25, v25, v50

    .line 1272
    .line 1273
    sub-long v42, v42, v25

    .line 1274
    .line 1275
    mul-long v25, v60, v35

    .line 1276
    .line 1277
    add-long v25, v25, v76

    .line 1278
    .line 1279
    mul-long v46, v60, v3

    .line 1280
    .line 1281
    add-long v46, v46, v40

    .line 1282
    .line 1283
    mul-long v40, v60, v44

    .line 1284
    .line 1285
    add-long v40, v40, v30

    .line 1286
    .line 1287
    mul-long v30, v60, v5

    .line 1288
    .line 1289
    sub-long v33, v33, v30

    .line 1290
    .line 1291
    mul-long v30, v60, v52

    .line 1292
    .line 1293
    add-long v30, v30, v38

    .line 1294
    .line 1295
    mul-long v60, v60, v50

    .line 1296
    .line 1297
    sub-long v48, v48, v60

    .line 1298
    .line 1299
    mul-long v38, v19, v35

    .line 1300
    .line 1301
    add-long v38, v38, v80

    .line 1302
    .line 1303
    mul-long v58, v19, v3

    .line 1304
    .line 1305
    add-long v58, v58, v25

    .line 1306
    .line 1307
    mul-long v25, v19, v44

    .line 1308
    .line 1309
    add-long v25, v25, v46

    .line 1310
    .line 1311
    mul-long v46, v19, v5

    .line 1312
    .line 1313
    sub-long v40, v40, v46

    .line 1314
    .line 1315
    mul-long v46, v19, v52

    .line 1316
    .line 1317
    add-long v46, v46, v33

    .line 1318
    .line 1319
    mul-long v19, v19, v50

    .line 1320
    .line 1321
    sub-long v30, v30, v19

    .line 1322
    .line 1323
    mul-long v19, v7, v35

    .line 1324
    .line 1325
    add-long v19, v19, v72

    .line 1326
    .line 1327
    mul-long v33, v7, v3

    .line 1328
    .line 1329
    add-long v33, v33, v38

    .line 1330
    .line 1331
    mul-long v38, v7, v44

    .line 1332
    .line 1333
    add-long v38, v38, v58

    .line 1334
    .line 1335
    mul-long v58, v7, v5

    .line 1336
    .line 1337
    sub-long v25, v25, v58

    .line 1338
    .line 1339
    mul-long v58, v7, v52

    .line 1340
    .line 1341
    add-long v58, v58, v40

    .line 1342
    .line 1343
    mul-long v7, v7, v50

    .line 1344
    .line 1345
    sub-long v46, v46, v7

    .line 1346
    .line 1347
    add-long v7, v19, v16

    .line 1348
    .line 1349
    const/16 v11, 0x15

    .line 1350
    .line 1351
    shr-long/2addr v7, v11

    .line 1352
    add-long v33, v33, v7

    .line 1353
    .line 1354
    shl-long/2addr v7, v11

    .line 1355
    sub-long v19, v19, v7

    .line 1356
    .line 1357
    add-long v7, v38, v16

    .line 1358
    .line 1359
    shr-long/2addr v7, v11

    .line 1360
    add-long v25, v25, v7

    .line 1361
    .line 1362
    shl-long/2addr v7, v11

    .line 1363
    sub-long v38, v38, v7

    .line 1364
    .line 1365
    add-long v7, v58, v16

    .line 1366
    .line 1367
    shr-long/2addr v7, v11

    .line 1368
    add-long v46, v46, v7

    .line 1369
    .line 1370
    shl-long/2addr v7, v11

    .line 1371
    sub-long v58, v58, v7

    .line 1372
    .line 1373
    add-long v7, v30, v16

    .line 1374
    .line 1375
    shr-long/2addr v7, v11

    .line 1376
    add-long v48, v48, v7

    .line 1377
    .line 1378
    shl-long/2addr v7, v11

    .line 1379
    sub-long v30, v30, v7

    .line 1380
    .line 1381
    add-long v7, v42, v16

    .line 1382
    .line 1383
    shr-long/2addr v7, v11

    .line 1384
    add-long v56, v56, v7

    .line 1385
    .line 1386
    shl-long/2addr v7, v11

    .line 1387
    sub-long v42, v42, v7

    .line 1388
    .line 1389
    add-long v7, v12, v16

    .line 1390
    .line 1391
    shr-long/2addr v7, v11

    .line 1392
    add-long v54, v54, v7

    .line 1393
    .line 1394
    shl-long/2addr v7, v11

    .line 1395
    sub-long/2addr v12, v7

    .line 1396
    add-long v7, v33, v16

    .line 1397
    .line 1398
    shr-long/2addr v7, v11

    .line 1399
    add-long v38, v38, v7

    .line 1400
    .line 1401
    shl-long/2addr v7, v11

    .line 1402
    sub-long v33, v33, v7

    .line 1403
    .line 1404
    add-long v7, v25, v16

    .line 1405
    .line 1406
    shr-long/2addr v7, v11

    .line 1407
    add-long v58, v58, v7

    .line 1408
    .line 1409
    shl-long/2addr v7, v11

    .line 1410
    sub-long v25, v25, v7

    .line 1411
    .line 1412
    add-long v7, v46, v16

    .line 1413
    .line 1414
    shr-long/2addr v7, v11

    .line 1415
    add-long v30, v30, v7

    .line 1416
    .line 1417
    shl-long/2addr v7, v11

    .line 1418
    sub-long v46, v46, v7

    .line 1419
    .line 1420
    add-long v7, v48, v16

    .line 1421
    .line 1422
    shr-long/2addr v7, v11

    .line 1423
    add-long v42, v42, v7

    .line 1424
    .line 1425
    shl-long/2addr v7, v11

    .line 1426
    sub-long v48, v48, v7

    .line 1427
    .line 1428
    add-long v7, v56, v16

    .line 1429
    .line 1430
    shr-long/2addr v7, v11

    .line 1431
    add-long/2addr v12, v7

    .line 1432
    shl-long/2addr v7, v11

    .line 1433
    sub-long v56, v56, v7

    .line 1434
    .line 1435
    mul-long v7, v54, v35

    .line 1436
    .line 1437
    add-long v7, v7, v78

    .line 1438
    .line 1439
    mul-long v40, v54, v3

    .line 1440
    .line 1441
    add-long v40, v40, v19

    .line 1442
    .line 1443
    mul-long v19, v54, v44

    .line 1444
    .line 1445
    add-long v19, v19, v33

    .line 1446
    .line 1447
    mul-long v33, v54, v5

    .line 1448
    .line 1449
    sub-long v38, v38, v33

    .line 1450
    .line 1451
    mul-long v33, v54, v52

    .line 1452
    .line 1453
    add-long v33, v33, v25

    .line 1454
    .line 1455
    mul-long v54, v54, v50

    .line 1456
    .line 1457
    sub-long v58, v58, v54

    .line 1458
    .line 1459
    mul-long v25, v12, v35

    .line 1460
    .line 1461
    add-long v25, v25, v0

    .line 1462
    .line 1463
    mul-long v0, v12, v3

    .line 1464
    .line 1465
    add-long/2addr v0, v7

    .line 1466
    mul-long v7, v12, v44

    .line 1467
    .line 1468
    add-long v7, v7, v40

    .line 1469
    .line 1470
    mul-long v40, v12, v5

    .line 1471
    .line 1472
    sub-long v19, v19, v40

    .line 1473
    .line 1474
    mul-long v40, v12, v52

    .line 1475
    .line 1476
    add-long v40, v40, v38

    .line 1477
    .line 1478
    mul-long v12, v12, v50

    .line 1479
    .line 1480
    sub-long v33, v33, v12

    .line 1481
    .line 1482
    mul-long v11, v56, v35

    .line 1483
    .line 1484
    add-long v11, v11, v70

    .line 1485
    .line 1486
    mul-long v13, v56, v3

    .line 1487
    .line 1488
    add-long v13, v13, v25

    .line 1489
    .line 1490
    mul-long v25, v56, v44

    .line 1491
    .line 1492
    add-long v25, v25, v0

    .line 1493
    .line 1494
    mul-long v0, v56, v5

    .line 1495
    .line 1496
    sub-long/2addr v7, v0

    .line 1497
    mul-long v0, v56, v52

    .line 1498
    .line 1499
    add-long v0, v0, v19

    .line 1500
    .line 1501
    mul-long v56, v56, v50

    .line 1502
    .line 1503
    sub-long v40, v40, v56

    .line 1504
    .line 1505
    mul-long v19, v42, v35

    .line 1506
    .line 1507
    add-long v19, v19, v9

    .line 1508
    .line 1509
    mul-long v9, v42, v3

    .line 1510
    .line 1511
    add-long/2addr v9, v11

    .line 1512
    mul-long v11, v42, v44

    .line 1513
    .line 1514
    add-long/2addr v11, v13

    .line 1515
    mul-long v13, v42, v5

    .line 1516
    .line 1517
    sub-long v25, v25, v13

    .line 1518
    .line 1519
    mul-long v13, v42, v52

    .line 1520
    .line 1521
    add-long/2addr v13, v7

    .line 1522
    mul-long v42, v42, v50

    .line 1523
    .line 1524
    sub-long v0, v0, v42

    .line 1525
    .line 1526
    mul-long v7, v48, v35

    .line 1527
    .line 1528
    add-long v7, v7, v68

    .line 1529
    .line 1530
    mul-long v38, v48, v3

    .line 1531
    .line 1532
    add-long v38, v38, v19

    .line 1533
    .line 1534
    mul-long v19, v48, v44

    .line 1535
    .line 1536
    add-long v19, v19, v9

    .line 1537
    .line 1538
    mul-long v9, v48, v5

    .line 1539
    .line 1540
    sub-long/2addr v11, v9

    .line 1541
    mul-long v9, v48, v52

    .line 1542
    .line 1543
    add-long v9, v9, v25

    .line 1544
    .line 1545
    mul-long v48, v48, v50

    .line 1546
    .line 1547
    sub-long v13, v13, v48

    .line 1548
    .line 1549
    mul-long v25, v30, v35

    .line 1550
    .line 1551
    add-long v25, v25, v86

    .line 1552
    .line 1553
    mul-long v42, v30, v3

    .line 1554
    .line 1555
    add-long v42, v42, v7

    .line 1556
    .line 1557
    mul-long v7, v30, v44

    .line 1558
    .line 1559
    add-long v7, v7, v38

    .line 1560
    .line 1561
    mul-long v38, v30, v5

    .line 1562
    .line 1563
    sub-long v19, v19, v38

    .line 1564
    .line 1565
    mul-long v38, v30, v52

    .line 1566
    .line 1567
    add-long v38, v38, v11

    .line 1568
    .line 1569
    mul-long v30, v30, v50

    .line 1570
    .line 1571
    sub-long v9, v9, v30

    .line 1572
    .line 1573
    add-long v11, v25, v16

    .line 1574
    .line 1575
    const/16 v22, 0x15

    .line 1576
    .line 1577
    shr-long v11, v11, v22

    .line 1578
    .line 1579
    add-long v42, v42, v11

    .line 1580
    .line 1581
    shl-long v11, v11, v22

    .line 1582
    .line 1583
    sub-long v25, v25, v11

    .line 1584
    .line 1585
    add-long v11, v7, v16

    .line 1586
    .line 1587
    shr-long v11, v11, v22

    .line 1588
    .line 1589
    add-long v19, v19, v11

    .line 1590
    .line 1591
    shl-long v11, v11, v22

    .line 1592
    .line 1593
    sub-long/2addr v7, v11

    .line 1594
    add-long v11, v38, v16

    .line 1595
    .line 1596
    shr-long v11, v11, v22

    .line 1597
    .line 1598
    add-long/2addr v9, v11

    .line 1599
    shl-long v11, v11, v22

    .line 1600
    .line 1601
    sub-long v38, v38, v11

    .line 1602
    .line 1603
    add-long v11, v13, v16

    .line 1604
    .line 1605
    shr-long v11, v11, v22

    .line 1606
    .line 1607
    add-long/2addr v0, v11

    .line 1608
    shl-long v11, v11, v22

    .line 1609
    .line 1610
    sub-long/2addr v13, v11

    .line 1611
    add-long v11, v40, v16

    .line 1612
    .line 1613
    shr-long v11, v11, v22

    .line 1614
    .line 1615
    add-long v33, v33, v11

    .line 1616
    .line 1617
    shl-long v11, v11, v22

    .line 1618
    .line 1619
    sub-long v40, v40, v11

    .line 1620
    .line 1621
    add-long v11, v58, v16

    .line 1622
    .line 1623
    shr-long v11, v11, v22

    .line 1624
    .line 1625
    add-long v46, v46, v11

    .line 1626
    .line 1627
    shl-long v11, v11, v22

    .line 1628
    .line 1629
    sub-long v58, v58, v11

    .line 1630
    .line 1631
    add-long v11, v42, v16

    .line 1632
    .line 1633
    shr-long v11, v11, v22

    .line 1634
    .line 1635
    add-long/2addr v7, v11

    .line 1636
    shl-long v11, v11, v22

    .line 1637
    .line 1638
    sub-long v42, v42, v11

    .line 1639
    .line 1640
    add-long v11, v19, v16

    .line 1641
    .line 1642
    shr-long v11, v11, v22

    .line 1643
    .line 1644
    add-long v38, v38, v11

    .line 1645
    .line 1646
    shl-long v11, v11, v22

    .line 1647
    .line 1648
    sub-long v19, v19, v11

    .line 1649
    .line 1650
    add-long v11, v9, v16

    .line 1651
    .line 1652
    shr-long v11, v11, v22

    .line 1653
    .line 1654
    add-long/2addr v13, v11

    .line 1655
    shl-long v11, v11, v22

    .line 1656
    .line 1657
    sub-long/2addr v9, v11

    .line 1658
    add-long v11, v0, v16

    .line 1659
    .line 1660
    shr-long v11, v11, v22

    .line 1661
    .line 1662
    add-long v40, v40, v11

    .line 1663
    .line 1664
    shl-long v11, v11, v22

    .line 1665
    .line 1666
    sub-long/2addr v0, v11

    .line 1667
    add-long v11, v33, v16

    .line 1668
    .line 1669
    shr-long v11, v11, v22

    .line 1670
    .line 1671
    add-long v58, v58, v11

    .line 1672
    .line 1673
    shl-long v11, v11, v22

    .line 1674
    .line 1675
    sub-long v33, v33, v11

    .line 1676
    .line 1677
    add-long v16, v46, v16

    .line 1678
    .line 1679
    shr-long v11, v16, v22

    .line 1680
    .line 1681
    shl-long v16, v11, v22

    .line 1682
    .line 1683
    sub-long v46, v46, v16

    .line 1684
    .line 1685
    mul-long v16, v11, v35

    .line 1686
    .line 1687
    add-long v16, v16, v25

    .line 1688
    .line 1689
    mul-long v25, v11, v3

    .line 1690
    .line 1691
    add-long v25, v25, v42

    .line 1692
    .line 1693
    mul-long v30, v11, v44

    .line 1694
    .line 1695
    add-long v30, v30, v7

    .line 1696
    .line 1697
    mul-long v7, v11, v5

    .line 1698
    .line 1699
    sub-long v19, v19, v7

    .line 1700
    .line 1701
    mul-long v7, v11, v52

    .line 1702
    .line 1703
    add-long v7, v7, v38

    .line 1704
    .line 1705
    mul-long v11, v11, v50

    .line 1706
    .line 1707
    sub-long/2addr v9, v11

    .line 1708
    const/16 v11, 0x15

    .line 1709
    .line 1710
    shr-long v38, v16, v11

    .line 1711
    .line 1712
    add-long v25, v25, v38

    .line 1713
    .line 1714
    shl-long v38, v38, v11

    .line 1715
    .line 1716
    sub-long v16, v16, v38

    .line 1717
    .line 1718
    shr-long v38, v25, v11

    .line 1719
    .line 1720
    add-long v30, v30, v38

    .line 1721
    .line 1722
    shl-long v38, v38, v11

    .line 1723
    .line 1724
    sub-long v25, v25, v38

    .line 1725
    .line 1726
    shr-long v38, v30, v11

    .line 1727
    .line 1728
    add-long v19, v19, v38

    .line 1729
    .line 1730
    shl-long v38, v38, v11

    .line 1731
    .line 1732
    sub-long v30, v30, v38

    .line 1733
    .line 1734
    shr-long v38, v19, v11

    .line 1735
    .line 1736
    add-long v7, v7, v38

    .line 1737
    .line 1738
    shl-long v38, v38, v11

    .line 1739
    .line 1740
    sub-long v19, v19, v38

    .line 1741
    .line 1742
    shr-long v38, v7, v11

    .line 1743
    .line 1744
    add-long v9, v9, v38

    .line 1745
    .line 1746
    shl-long v38, v38, v11

    .line 1747
    .line 1748
    sub-long v7, v7, v38

    .line 1749
    .line 1750
    shr-long v38, v9, v11

    .line 1751
    .line 1752
    add-long v13, v13, v38

    .line 1753
    .line 1754
    shl-long v38, v38, v11

    .line 1755
    .line 1756
    sub-long v9, v9, v38

    .line 1757
    .line 1758
    shr-long v38, v13, v11

    .line 1759
    .line 1760
    add-long v0, v0, v38

    .line 1761
    .line 1762
    shl-long v38, v38, v11

    .line 1763
    .line 1764
    sub-long v13, v13, v38

    .line 1765
    .line 1766
    shr-long v38, v0, v11

    .line 1767
    .line 1768
    add-long v40, v40, v38

    .line 1769
    .line 1770
    shl-long v38, v38, v11

    .line 1771
    .line 1772
    sub-long v0, v0, v38

    .line 1773
    .line 1774
    shr-long v38, v40, v11

    .line 1775
    .line 1776
    add-long v33, v33, v38

    .line 1777
    .line 1778
    shl-long v38, v38, v11

    .line 1779
    .line 1780
    sub-long v40, v40, v38

    .line 1781
    .line 1782
    shr-long v38, v33, v11

    .line 1783
    .line 1784
    add-long v58, v58, v38

    .line 1785
    .line 1786
    shl-long v38, v38, v11

    .line 1787
    .line 1788
    sub-long v33, v33, v38

    .line 1789
    .line 1790
    shr-long v38, v58, v11

    .line 1791
    .line 1792
    add-long v46, v46, v38

    .line 1793
    .line 1794
    shl-long v38, v38, v11

    .line 1795
    .line 1796
    sub-long v58, v58, v38

    .line 1797
    .line 1798
    shr-long v38, v46, v11

    .line 1799
    .line 1800
    shl-long v42, v38, v11

    .line 1801
    .line 1802
    sub-long v46, v46, v42

    .line 1803
    .line 1804
    mul-long v35, v35, v38

    .line 1805
    .line 1806
    add-long v35, v35, v16

    .line 1807
    .line 1808
    mul-long v3, v3, v38

    .line 1809
    .line 1810
    add-long v3, v3, v25

    .line 1811
    .line 1812
    mul-long v44, v44, v38

    .line 1813
    .line 1814
    add-long v44, v44, v30

    .line 1815
    .line 1816
    mul-long v5, v5, v38

    .line 1817
    .line 1818
    sub-long v19, v19, v5

    .line 1819
    .line 1820
    mul-long v52, v52, v38

    .line 1821
    .line 1822
    add-long v52, v52, v7

    .line 1823
    .line 1824
    mul-long v38, v38, v50

    .line 1825
    .line 1826
    sub-long v9, v9, v38

    .line 1827
    .line 1828
    const/16 v5, 0x15

    .line 1829
    .line 1830
    shr-long v6, v35, v5

    .line 1831
    .line 1832
    add-long/2addr v3, v6

    .line 1833
    shl-long/2addr v6, v5

    .line 1834
    sub-long v6, v35, v6

    .line 1835
    .line 1836
    shr-long v11, v3, v5

    .line 1837
    .line 1838
    add-long v44, v44, v11

    .line 1839
    .line 1840
    shl-long/2addr v11, v5

    .line 1841
    sub-long/2addr v3, v11

    .line 1842
    shr-long v11, v44, v5

    .line 1843
    .line 1844
    add-long v19, v19, v11

    .line 1845
    .line 1846
    shl-long/2addr v11, v5

    .line 1847
    sub-long v44, v44, v11

    .line 1848
    .line 1849
    shr-long v11, v19, v5

    .line 1850
    .line 1851
    add-long v52, v52, v11

    .line 1852
    .line 1853
    shl-long/2addr v11, v5

    .line 1854
    sub-long v19, v19, v11

    .line 1855
    .line 1856
    shr-long v11, v52, v5

    .line 1857
    .line 1858
    add-long/2addr v9, v11

    .line 1859
    shl-long/2addr v11, v5

    .line 1860
    sub-long v52, v52, v11

    .line 1861
    .line 1862
    shr-long v11, v9, v5

    .line 1863
    .line 1864
    add-long/2addr v13, v11

    .line 1865
    shl-long/2addr v11, v5

    .line 1866
    sub-long/2addr v9, v11

    .line 1867
    shr-long v11, v13, v5

    .line 1868
    .line 1869
    add-long/2addr v0, v11

    .line 1870
    shl-long/2addr v11, v5

    .line 1871
    sub-long/2addr v13, v11

    .line 1872
    shr-long v11, v0, v5

    .line 1873
    .line 1874
    add-long v40, v40, v11

    .line 1875
    .line 1876
    shl-long/2addr v11, v5

    .line 1877
    sub-long/2addr v0, v11

    .line 1878
    shr-long v11, v40, v5

    .line 1879
    .line 1880
    add-long v33, v33, v11

    .line 1881
    .line 1882
    shl-long/2addr v11, v5

    .line 1883
    sub-long v11, v40, v11

    .line 1884
    .line 1885
    shr-long v16, v33, v5

    .line 1886
    .line 1887
    add-long v58, v58, v16

    .line 1888
    .line 1889
    shl-long v16, v16, v5

    .line 1890
    .line 1891
    sub-long v33, v33, v16

    .line 1892
    .line 1893
    shr-long v16, v58, v5

    .line 1894
    .line 1895
    add-long v46, v46, v16

    .line 1896
    .line 1897
    shl-long v16, v16, v5

    .line 1898
    .line 1899
    sub-long v58, v58, v16

    .line 1900
    .line 1901
    long-to-int v5, v6

    .line 1902
    int-to-byte v5, v5

    .line 1903
    const/16 v8, 0x8

    .line 1904
    .line 1905
    move-wide/from16 p2, v3

    .line 1906
    .line 1907
    shr-long v2, v6, v8

    .line 1908
    .line 1909
    long-to-int v3, v2

    .line 1910
    int-to-byte v2, v3

    .line 1911
    const/16 v3, 0x10

    .line 1912
    .line 1913
    shr-long/2addr v6, v3

    .line 1914
    move-wide/from16 v16, p2

    .line 1915
    .line 1916
    const/4 v4, 0x5

    .line 1917
    shl-long v25, v16, v4

    .line 1918
    .line 1919
    or-long v6, v6, v25

    .line 1920
    .line 1921
    long-to-int v4, v6

    .line 1922
    int-to-byte v4, v4

    .line 1923
    shr-long v6, v16, v29

    .line 1924
    .line 1925
    long-to-int v7, v6

    .line 1926
    int-to-byte v6, v7

    .line 1927
    const/16 v7, 0xb

    .line 1928
    .line 1929
    move/from16 v22, v4

    .line 1930
    .line 1931
    shr-long v3, v16, v7

    .line 1932
    .line 1933
    long-to-int v4, v3

    .line 1934
    int-to-byte v3, v4

    .line 1935
    const/16 v4, 0x13

    .line 1936
    .line 1937
    shr-long v16, v16, v4

    .line 1938
    .line 1939
    const/16 v24, 0x2

    .line 1940
    .line 1941
    shl-long v25, v44, v24

    .line 1942
    .line 1943
    move/from16 v30, v5

    .line 1944
    .line 1945
    or-long v4, v16, v25

    .line 1946
    .line 1947
    long-to-int v5, v4

    .line 1948
    int-to-byte v4, v5

    .line 1949
    shr-long v7, v44, v27

    .line 1950
    .line 1951
    long-to-int v8, v7

    .line 1952
    int-to-byte v7, v8

    .line 1953
    const/16 v8, 0xe

    .line 1954
    .line 1955
    shr-long v25, v44, v8

    .line 1956
    .line 1957
    shl-long v31, v19, v15

    .line 1958
    .line 1959
    move/from16 v17, v6

    .line 1960
    .line 1961
    or-long v5, v25, v31

    .line 1962
    .line 1963
    long-to-int v6, v5

    .line 1964
    int-to-byte v6, v6

    .line 1965
    move-wide/from16 v25, v9

    .line 1966
    .line 1967
    shr-long v8, v19, v23

    .line 1968
    .line 1969
    long-to-int v5, v8

    .line 1970
    int-to-byte v8, v5

    .line 1971
    const/16 v9, 0x9

    .line 1972
    .line 1973
    move-wide/from16 v31, v11

    .line 1974
    .line 1975
    shr-long v10, v19, v9

    .line 1976
    .line 1977
    long-to-int v5, v10

    .line 1978
    int-to-byte v11, v5

    .line 1979
    const/16 v36, 0x11

    .line 1980
    .line 1981
    shr-long v19, v19, v36

    .line 1982
    .line 1983
    shl-long v38, v52, v21

    .line 1984
    .line 1985
    or-long v9, v19, v38

    .line 1986
    .line 1987
    long-to-int v5, v9

    .line 1988
    int-to-byte v9, v5

    .line 1989
    move-wide/from16 v19, v13

    .line 1990
    .line 1991
    shr-long v12, v52, v21

    .line 1992
    .line 1993
    long-to-int v5, v12

    .line 1994
    int-to-byte v12, v5

    .line 1995
    const/16 v5, 0xc

    .line 1996
    .line 1997
    shr-long v13, v52, v5

    .line 1998
    .line 1999
    long-to-int v5, v13

    .line 2000
    int-to-byte v13, v5

    .line 2001
    const/16 v5, 0x14

    .line 2002
    .line 2003
    shr-long v38, v52, v5

    .line 2004
    .line 2005
    shl-long v41, v25, v23

    .line 2006
    .line 2007
    move v14, v11

    .line 2008
    or-long v10, v38, v41

    .line 2009
    .line 2010
    long-to-int v5, v10

    .line 2011
    int-to-byte v11, v5

    .line 2012
    move/from16 v38, v11

    .line 2013
    .line 2014
    shr-long v10, v25, v15

    .line 2015
    .line 2016
    long-to-int v5, v10

    .line 2017
    int-to-byte v11, v5

    .line 2018
    const/16 v5, 0xf

    .line 2019
    .line 2020
    shr-long v25, v25, v5

    .line 2021
    .line 2022
    shl-long v41, v19, v27

    .line 2023
    .line 2024
    move/from16 v39, v11

    .line 2025
    .line 2026
    or-long v10, v25, v41

    .line 2027
    .line 2028
    long-to-int v5, v10

    .line 2029
    int-to-byte v11, v5

    .line 2030
    move/from16 v25, v11

    .line 2031
    .line 2032
    const/4 v5, 0x2

    .line 2033
    shr-long v10, v19, v5

    .line 2034
    .line 2035
    long-to-int v5, v10

    .line 2036
    int-to-byte v11, v5

    .line 2037
    move/from16 v26, v11

    .line 2038
    .line 2039
    const/16 v5, 0xa

    .line 2040
    .line 2041
    shr-long v10, v19, v5

    .line 2042
    .line 2043
    long-to-int v5, v10

    .line 2044
    int-to-byte v11, v5

    .line 2045
    const/16 v5, 0x12

    .line 2046
    .line 2047
    shr-long v19, v19, v5

    .line 2048
    .line 2049
    shl-long v41, v0, v29

    .line 2050
    .line 2051
    move/from16 v44, v11

    .line 2052
    .line 2053
    or-long v10, v19, v41

    .line 2054
    .line 2055
    long-to-int v5, v10

    .line 2056
    int-to-byte v11, v5

    .line 2057
    move/from16 v19, v11

    .line 2058
    .line 2059
    const/4 v5, 0x5

    .line 2060
    shr-long v10, v0, v5

    .line 2061
    .line 2062
    long-to-int v5, v10

    .line 2063
    int-to-byte v11, v5

    .line 2064
    const/16 v5, 0xd

    .line 2065
    .line 2066
    shr-long/2addr v0, v5

    .line 2067
    long-to-int v1, v0

    .line 2068
    int-to-byte v0, v1

    .line 2069
    move/from16 v20, v0

    .line 2070
    .line 2071
    move-wide/from16 v0, v31

    .line 2072
    .line 2073
    long-to-int v5, v0

    .line 2074
    int-to-byte v10, v5

    .line 2075
    move/from16 v32, v10

    .line 2076
    .line 2077
    move/from16 v31, v11

    .line 2078
    .line 2079
    const/16 v5, 0x8

    .line 2080
    .line 2081
    shr-long v10, v0, v5

    .line 2082
    .line 2083
    long-to-int v11, v10

    .line 2084
    int-to-byte v11, v11

    .line 2085
    const/16 v10, 0x10

    .line 2086
    .line 2087
    shr-long/2addr v0, v10

    .line 2088
    const/4 v10, 0x5

    .line 2089
    shl-long v41, v33, v10

    .line 2090
    .line 2091
    or-long v0, v0, v41

    .line 2092
    .line 2093
    long-to-int v1, v0

    .line 2094
    int-to-byte v0, v1

    .line 2095
    move v1, v6

    .line 2096
    shr-long v5, v33, v29

    .line 2097
    .line 2098
    long-to-int v6, v5

    .line 2099
    int-to-byte v5, v6

    .line 2100
    move/from16 v41, v11

    .line 2101
    .line 2102
    const/16 v6, 0xb

    .line 2103
    .line 2104
    shr-long v10, v33, v6

    .line 2105
    .line 2106
    long-to-int v6, v10

    .line 2107
    int-to-byte v6, v6

    .line 2108
    const/16 v10, 0x13

    .line 2109
    .line 2110
    shr-long v33, v33, v10

    .line 2111
    .line 2112
    const/4 v10, 0x2

    .line 2113
    shl-long v48, v58, v10

    .line 2114
    .line 2115
    or-long v10, v33, v48

    .line 2116
    .line 2117
    long-to-int v11, v10

    .line 2118
    int-to-byte v11, v11

    .line 2119
    move/from16 v33, v11

    .line 2120
    .line 2121
    shr-long v10, v58, v27

    .line 2122
    .line 2123
    long-to-int v11, v10

    .line 2124
    int-to-byte v11, v11

    .line 2125
    const/16 v10, 0xe

    .line 2126
    .line 2127
    shr-long v42, v58, v10

    .line 2128
    .line 2129
    shl-long v48, v46, v15

    .line 2130
    .line 2131
    move/from16 v34, v11

    .line 2132
    .line 2133
    or-long v10, v42, v48

    .line 2134
    .line 2135
    long-to-int v11, v10

    .line 2136
    int-to-byte v10, v11

    .line 2137
    move/from16 v42, v10

    .line 2138
    .line 2139
    shr-long v10, v46, v23

    .line 2140
    .line 2141
    long-to-int v11, v10

    .line 2142
    int-to-byte v10, v11

    .line 2143
    move/from16 v43, v5

    .line 2144
    .line 2145
    move/from16 v48, v6

    .line 2146
    .line 2147
    const/16 v11, 0x9

    .line 2148
    .line 2149
    shr-long v5, v46, v11

    .line 2150
    .line 2151
    long-to-int v6, v5

    .line 2152
    int-to-byte v5, v6

    .line 2153
    move v11, v5

    .line 2154
    shr-long v5, v46, v36

    .line 2155
    .line 2156
    long-to-int v6, v5

    .line 2157
    int-to-byte v5, v6

    .line 2158
    const/16 v6, 0x20

    .line 2159
    .line 2160
    new-array v6, v6, [B

    .line 2161
    .line 2162
    const/16 v18, 0x0

    .line 2163
    .line 2164
    aput-byte v30, v6, v18

    .line 2165
    .line 2166
    aput-byte v2, v6, v23

    .line 2167
    .line 2168
    const/4 v2, 0x2

    .line 2169
    aput-byte v22, v6, v2

    .line 2170
    .line 2171
    aput-byte v17, v6, v29

    .line 2172
    .line 2173
    aput-byte v3, v6, v21

    .line 2174
    .line 2175
    const/4 v2, 0x5

    .line 2176
    aput-byte v4, v6, v2

    .line 2177
    .line 2178
    aput-byte v7, v6, v27

    .line 2179
    .line 2180
    aput-byte v1, v6, v15

    .line 2181
    .line 2182
    const/16 v1, 0x8

    .line 2183
    .line 2184
    aput-byte v8, v6, v1

    .line 2185
    .line 2186
    const/16 v1, 0x9

    .line 2187
    .line 2188
    aput-byte v14, v6, v1

    .line 2189
    .line 2190
    const/16 v1, 0xa

    .line 2191
    .line 2192
    aput-byte v9, v6, v1

    .line 2193
    .line 2194
    const/16 v1, 0xb

    .line 2195
    .line 2196
    aput-byte v12, v6, v1

    .line 2197
    .line 2198
    const/16 v1, 0xc

    .line 2199
    .line 2200
    aput-byte v13, v6, v1

    .line 2201
    .line 2202
    const/16 v1, 0xd

    .line 2203
    .line 2204
    aput-byte v38, v6, v1

    .line 2205
    .line 2206
    const/16 v1, 0xe

    .line 2207
    .line 2208
    aput-byte v39, v6, v1

    .line 2209
    .line 2210
    const/16 v1, 0xf

    .line 2211
    .line 2212
    aput-byte v25, v6, v1

    .line 2213
    .line 2214
    const/16 v1, 0x10

    .line 2215
    .line 2216
    aput-byte v26, v6, v1

    .line 2217
    .line 2218
    aput-byte v44, v6, v36

    .line 2219
    .line 2220
    const/16 v1, 0x12

    .line 2221
    .line 2222
    aput-byte v19, v6, v1

    .line 2223
    .line 2224
    const/16 v1, 0x13

    .line 2225
    .line 2226
    aput-byte v31, v6, v1

    .line 2227
    .line 2228
    const/16 v1, 0x14

    .line 2229
    .line 2230
    aput-byte v20, v6, v1

    .line 2231
    .line 2232
    const/16 v1, 0x15

    .line 2233
    .line 2234
    aput-byte v32, v6, v1

    .line 2235
    .line 2236
    const/16 v1, 0x16

    .line 2237
    .line 2238
    aput-byte v41, v6, v1

    .line 2239
    .line 2240
    const/16 v1, 0x17

    .line 2241
    .line 2242
    aput-byte v0, v6, v1

    .line 2243
    .line 2244
    const/16 v0, 0x18

    .line 2245
    .line 2246
    aput-byte v43, v6, v0

    .line 2247
    .line 2248
    const/16 v0, 0x19

    .line 2249
    .line 2250
    aput-byte v48, v6, v0

    .line 2251
    .line 2252
    const/16 v0, 0x1a

    .line 2253
    .line 2254
    aput-byte v33, v6, v0

    .line 2255
    .line 2256
    const/16 v0, 0x1b

    .line 2257
    .line 2258
    aput-byte v34, v6, v0

    .line 2259
    .line 2260
    const/16 v0, 0x1c

    .line 2261
    .line 2262
    aput-byte v42, v6, v0

    .line 2263
    .line 2264
    const/16 v0, 0x1d

    .line 2265
    .line 2266
    aput-byte v10, v6, v0

    .line 2267
    .line 2268
    const/16 v0, 0x1e

    .line 2269
    .line 2270
    aput-byte v11, v6, v0

    .line 2271
    .line 2272
    const/16 v0, 0x1f

    .line 2273
    .line 2274
    aput-byte v5, v6, v0

    .line 2275
    .line 2276
    return-object v6
.end method

.method public reduce([B)[B
    .locals 70

    move-object/from16 v0, p1

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v2

    const v3, 0x1fffff

    and-int/2addr v2, v3

    int-to-long v4, v2

    const/4 v2, 0x2

    .line 2
    invoke-static {v0, v2}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v6

    const/4 v8, 0x5

    shr-long/2addr v6, v8

    const-wide/32 v9, 0x1fffff

    and-long/2addr v6, v9

    .line 3
    invoke-static {v0, v8}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v11

    shr-int/2addr v11, v2

    and-int/2addr v11, v3

    int-to-long v11, v11

    const/4 v13, 0x7

    .line 4
    invoke-static {v0, v13}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v14

    shr-long/2addr v14, v13

    and-long/2addr v14, v9

    const/16 v1, 0xa

    .line 5
    invoke-static {v0, v1}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v16

    const/16 v18, 0x4

    shr-long v16, v16, v18

    and-long v16, v16, v9

    const/16 v1, 0xd

    .line 6
    invoke-static {v0, v1}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v19

    const/16 v20, 0x1

    shr-int/lit8 v19, v19, 0x1

    and-int v1, v19, v3

    move-wide/from16 v21, v14

    int-to-long v13, v1

    const/16 v1, 0xf

    .line 7
    invoke-static {v0, v1}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v23

    const/4 v15, 0x6

    shr-long v23, v23, v15

    and-long v23, v23, v9

    const/16 v1, 0x12

    .line 8
    invoke-static {v0, v1}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v25

    const/16 v26, 0x3

    shr-int/lit8 v25, v25, 0x3

    and-int v1, v25, v3

    int-to-long v9, v1

    const/16 v1, 0x15

    .line 9
    invoke-static {v0, v1}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v25

    and-int v1, v25, v3

    move-wide/from16 v29, v4

    int-to-long v3, v1

    const/16 v1, 0x17

    .line 10
    invoke-static {v0, v1}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v31

    shr-long v31, v31, v8

    const-wide/32 v27, 0x1fffff

    and-long v31, v31, v27

    const/16 v5, 0x1a

    .line 11
    invoke-static {v0, v5}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v33

    shr-int/lit8 v33, v33, 0x2

    const v25, 0x1fffff

    and-int v5, v33, v25

    int-to-long v1, v5

    const/16 v5, 0x1c

    .line 12
    invoke-static {v0, v5}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v34

    const/16 v19, 0x7

    shr-long v34, v34, v19

    and-long v34, v34, v27

    const/16 v5, 0x1f

    .line 13
    invoke-static {v0, v5}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v36

    shr-long v36, v36, v18

    and-long v36, v36, v27

    const/16 v5, 0x22

    .line 14
    invoke-static {v0, v5}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v5

    shr-int/lit8 v5, v5, 0x1

    const v25, 0x1fffff

    and-int v5, v5, v25

    move-wide/from16 v38, v9

    int-to-long v8, v5

    const/16 v5, 0x24

    .line 15
    invoke-static {v0, v5}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v40

    shr-long v40, v40, v15

    and-long v40, v40, v27

    const/16 v5, 0x27

    .line 16
    invoke-static {v0, v5}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v5

    shr-int/lit8 v5, v5, 0x3

    and-int v5, v5, v25

    move-wide/from16 v42, v6

    int-to-long v5, v5

    const/16 v7, 0x2a

    .line 17
    invoke-static {v0, v7}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v7

    and-int v7, v7, v25

    move-wide/from16 v44, v11

    int-to-long v10, v7

    const/16 v7, 0x2c

    .line 18
    invoke-static {v0, v7}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v46

    const/4 v7, 0x5

    shr-long v46, v46, v7

    const-wide/32 v27, 0x1fffff

    and-long v46, v46, v27

    const/16 v7, 0x2f

    .line 19
    invoke-static {v0, v7}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v7

    const/4 v12, 0x2

    shr-int/2addr v7, v12

    and-int v7, v7, v25

    move-wide/from16 v48, v13

    int-to-long v12, v7

    const/16 v7, 0x31

    .line 20
    invoke-static {v0, v7}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v50

    const/4 v7, 0x7

    shr-long v50, v50, v7

    and-long v50, v50, v27

    const/16 v7, 0x34

    .line 21
    invoke-static {v0, v7}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v52

    shr-long v52, v52, v18

    and-long v52, v52, v27

    const/16 v7, 0x37

    .line 22
    invoke-static {v0, v7}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v7

    shr-int/lit8 v7, v7, 0x1

    const v14, 0x1fffff

    and-int/2addr v7, v14

    move-wide/from16 v54, v12

    int-to-long v12, v7

    const/16 v7, 0x39

    .line 23
    invoke-static {v0, v7}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v56

    shr-long v56, v56, v15

    and-long v27, v56, v27

    const/16 v7, 0x3c

    .line 24
    invoke-static {v0, v7}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v56

    shr-long v56, v56, v26

    const-wide/32 v58, 0xa2c13

    mul-long v60, v56, v58

    add-long v60, v60, v34

    const-wide/32 v34, 0x72d18

    mul-long v62, v56, v34

    add-long v62, v62, v36

    const-wide/32 v36, 0x9fb67

    mul-long v64, v56, v36

    add-long v64, v64, v8

    const-wide/32 v7, 0xf39ad

    mul-long v66, v56, v7

    sub-long v40, v40, v66

    const-wide/32 v66, 0x215d1

    mul-long v68, v56, v66

    add-long v68, v68, v5

    const-wide/32 v5, 0xa6f7d

    mul-long v56, v56, v5

    sub-long v10, v10, v56

    mul-long v56, v27, v58

    add-long v56, v56, v1

    mul-long v0, v27, v34

    add-long v0, v0, v60

    mul-long v60, v27, v36

    add-long v60, v60, v62

    mul-long v62, v27, v7

    sub-long v64, v64, v62

    mul-long v62, v27, v66

    add-long v62, v62, v40

    mul-long v27, v27, v5

    sub-long v68, v68, v27

    mul-long v27, v12, v58

    add-long v27, v27, v31

    mul-long v31, v12, v34

    add-long v31, v31, v56

    mul-long v40, v12, v36

    add-long v40, v40, v0

    mul-long v0, v12, v7

    sub-long v60, v60, v0

    mul-long v0, v12, v66

    add-long v0, v0, v64

    mul-long v12, v12, v5

    sub-long v62, v62, v12

    mul-long v12, v52, v58

    add-long/2addr v12, v3

    mul-long v2, v52, v34

    add-long v2, v2, v27

    mul-long v27, v52, v36

    add-long v27, v27, v31

    mul-long v31, v52, v7

    sub-long v40, v40, v31

    mul-long v31, v52, v66

    add-long v31, v31, v60

    mul-long v52, v52, v5

    sub-long v0, v0, v52

    mul-long v52, v50, v58

    add-long v52, v52, v38

    mul-long v38, v50, v34

    add-long v38, v38, v12

    mul-long v12, v50, v36

    add-long/2addr v12, v2

    mul-long v2, v50, v7

    sub-long v27, v27, v2

    mul-long v2, v50, v66

    add-long v2, v2, v40

    mul-long v50, v50, v5

    sub-long v31, v31, v50

    mul-long v40, v54, v58

    add-long v40, v40, v23

    mul-long v23, v54, v34

    add-long v23, v23, v52

    mul-long v50, v54, v36

    add-long v50, v50, v38

    mul-long v38, v54, v7

    sub-long v12, v12, v38

    mul-long v38, v54, v66

    add-long v38, v38, v27

    mul-long v27, v54, v5

    sub-long v2, v2, v27

    const-wide/32 v27, 0x100000

    add-long v52, v40, v27

    const/16 v4, 0x15

    shr-long v52, v52, v4

    add-long v23, v23, v52

    shl-long v52, v52, v4

    sub-long v40, v40, v52

    add-long v52, v50, v27

    shr-long v52, v52, v4

    add-long v12, v12, v52

    shl-long v52, v52, v4

    sub-long v50, v50, v52

    add-long v52, v38, v27

    shr-long v52, v52, v4

    add-long v2, v2, v52

    shl-long v52, v52, v4

    sub-long v38, v38, v52

    add-long v52, v31, v27

    shr-long v52, v52, v4

    add-long v0, v0, v52

    shl-long v52, v52, v4

    sub-long v31, v31, v52

    add-long v52, v62, v27

    shr-long v52, v52, v4

    add-long v68, v68, v52

    shl-long v52, v52, v4

    sub-long v62, v62, v52

    add-long v52, v10, v27

    shr-long v52, v52, v4

    add-long v46, v46, v52

    shl-long v52, v52, v4

    sub-long v10, v10, v52

    add-long v52, v23, v27

    shr-long v52, v52, v4

    add-long v50, v50, v52

    shl-long v52, v52, v4

    sub-long v23, v23, v52

    add-long v52, v12, v27

    shr-long v52, v52, v4

    add-long v38, v38, v52

    shl-long v52, v52, v4

    sub-long v12, v12, v52

    add-long v52, v2, v27

    shr-long v52, v52, v4

    add-long v31, v31, v52

    shl-long v52, v52, v4

    sub-long v2, v2, v52

    add-long v52, v0, v27

    shr-long v52, v52, v4

    add-long v62, v62, v52

    shl-long v52, v52, v4

    sub-long v0, v0, v52

    add-long v52, v68, v27

    shr-long v52, v52, v4

    add-long v10, v10, v52

    shl-long v52, v52, v4

    sub-long v68, v68, v52

    mul-long v52, v46, v58

    add-long v52, v52, v48

    mul-long v48, v46, v34

    add-long v48, v48, v40

    mul-long v40, v46, v36

    add-long v40, v40, v23

    mul-long v23, v46, v7

    sub-long v50, v50, v23

    mul-long v23, v46, v66

    add-long v23, v23, v12

    mul-long v46, v46, v5

    sub-long v38, v38, v46

    mul-long v12, v10, v58

    add-long v12, v12, v16

    mul-long v16, v10, v34

    add-long v16, v16, v52

    mul-long v46, v10, v36

    add-long v46, v46, v48

    mul-long v48, v10, v7

    sub-long v40, v40, v48

    mul-long v48, v10, v66

    add-long v48, v48, v50

    mul-long v10, v10, v5

    sub-long v23, v23, v10

    mul-long v9, v68, v58

    add-long v9, v9, v21

    mul-long v21, v68, v34

    add-long v21, v21, v12

    mul-long v11, v68, v36

    add-long v11, v11, v16

    mul-long v13, v68, v7

    sub-long v46, v46, v13

    mul-long v13, v68, v66

    add-long v13, v13, v40

    mul-long v68, v68, v5

    sub-long v48, v48, v68

    mul-long v16, v62, v58

    add-long v16, v16, v44

    mul-long v40, v62, v34

    add-long v40, v40, v9

    mul-long v9, v62, v36

    add-long v9, v9, v21

    mul-long v21, v62, v7

    sub-long v11, v11, v21

    mul-long v21, v62, v66

    add-long v21, v21, v46

    mul-long v62, v62, v5

    sub-long v13, v13, v62

    mul-long v44, v0, v58

    add-long v44, v44, v42

    mul-long v42, v0, v34

    add-long v42, v42, v16

    mul-long v16, v0, v36

    add-long v16, v16, v40

    mul-long v40, v0, v7

    sub-long v9, v9, v40

    mul-long v40, v0, v66

    add-long v40, v40, v11

    mul-long v0, v0, v5

    sub-long v21, v21, v0

    mul-long v0, v31, v58

    add-long v0, v0, v29

    mul-long v11, v31, v34

    add-long v11, v11, v44

    mul-long v29, v31, v36

    add-long v29, v29, v42

    mul-long v42, v31, v7

    sub-long v16, v16, v42

    mul-long v42, v31, v66

    add-long v42, v42, v9

    mul-long v31, v31, v5

    sub-long v40, v40, v31

    add-long v9, v0, v27

    const/16 v4, 0x15

    shr-long/2addr v9, v4

    add-long/2addr v11, v9

    shl-long/2addr v9, v4

    sub-long/2addr v0, v9

    add-long v9, v29, v27

    shr-long/2addr v9, v4

    add-long v16, v16, v9

    shl-long/2addr v9, v4

    sub-long v29, v29, v9

    add-long v9, v42, v27

    shr-long/2addr v9, v4

    add-long v40, v40, v9

    shl-long/2addr v9, v4

    sub-long v42, v42, v9

    add-long v9, v21, v27

    shr-long/2addr v9, v4

    add-long/2addr v13, v9

    shl-long/2addr v9, v4

    sub-long v21, v21, v9

    add-long v9, v48, v27

    shr-long/2addr v9, v4

    add-long v23, v23, v9

    shl-long/2addr v9, v4

    sub-long v48, v48, v9

    add-long v9, v38, v27

    shr-long/2addr v9, v4

    add-long/2addr v2, v9

    shl-long/2addr v9, v4

    sub-long v38, v38, v9

    add-long v9, v11, v27

    shr-long/2addr v9, v4

    add-long v29, v29, v9

    shl-long/2addr v9, v4

    sub-long/2addr v11, v9

    add-long v9, v16, v27

    shr-long/2addr v9, v4

    add-long v42, v42, v9

    shl-long/2addr v9, v4

    sub-long v16, v16, v9

    add-long v9, v40, v27

    shr-long/2addr v9, v4

    add-long v21, v21, v9

    shl-long/2addr v9, v4

    sub-long v40, v40, v9

    add-long v9, v13, v27

    shr-long/2addr v9, v4

    add-long v48, v48, v9

    shl-long/2addr v9, v4

    sub-long/2addr v13, v9

    add-long v9, v23, v27

    shr-long/2addr v9, v4

    add-long v38, v38, v9

    shl-long/2addr v9, v4

    sub-long v23, v23, v9

    add-long v27, v2, v27

    shr-long v9, v27, v4

    shl-long v27, v9, v4

    sub-long v2, v2, v27

    mul-long v27, v9, v58

    add-long v27, v27, v0

    mul-long v0, v9, v34

    add-long/2addr v0, v11

    mul-long v11, v9, v36

    add-long v11, v11, v29

    mul-long v29, v9, v7

    sub-long v16, v16, v29

    mul-long v29, v9, v66

    add-long v29, v29, v42

    mul-long v9, v9, v5

    sub-long v40, v40, v9

    const/16 v4, 0x15

    shr-long v9, v27, v4

    add-long/2addr v0, v9

    shl-long/2addr v9, v4

    sub-long v27, v27, v9

    shr-long v9, v0, v4

    add-long/2addr v11, v9

    shl-long/2addr v9, v4

    sub-long/2addr v0, v9

    shr-long v9, v11, v4

    add-long v16, v16, v9

    shl-long/2addr v9, v4

    sub-long/2addr v11, v9

    shr-long v9, v16, v4

    add-long v29, v29, v9

    shl-long/2addr v9, v4

    sub-long v16, v16, v9

    shr-long v9, v29, v4

    add-long v40, v40, v9

    shl-long/2addr v9, v4

    sub-long v29, v29, v9

    shr-long v9, v40, v4

    add-long v21, v21, v9

    shl-long/2addr v9, v4

    sub-long v40, v40, v9

    shr-long v9, v21, v4

    add-long/2addr v13, v9

    shl-long/2addr v9, v4

    sub-long v21, v21, v9

    shr-long v9, v13, v4

    add-long v48, v48, v9

    shl-long/2addr v9, v4

    sub-long/2addr v13, v9

    shr-long v9, v48, v4

    add-long v23, v23, v9

    shl-long/2addr v9, v4

    sub-long v48, v48, v9

    shr-long v9, v23, v4

    add-long v38, v38, v9

    shl-long/2addr v9, v4

    sub-long v23, v23, v9

    shr-long v9, v38, v4

    add-long/2addr v2, v9

    shl-long/2addr v9, v4

    sub-long v38, v38, v9

    shr-long v9, v2, v4

    shl-long v31, v9, v4

    sub-long v2, v2, v31

    mul-long v58, v58, v9

    add-long v58, v58, v27

    mul-long v34, v34, v9

    add-long v34, v34, v0

    mul-long v36, v36, v9

    add-long v36, v36, v11

    mul-long v7, v7, v9

    sub-long v16, v16, v7

    mul-long v66, v66, v9

    add-long v66, v66, v29

    mul-long v9, v9, v5

    sub-long v40, v40, v9

    const/16 v0, 0x15

    shr-long v4, v58, v0

    add-long v34, v34, v4

    shl-long/2addr v4, v0

    sub-long v4, v58, v4

    shr-long v6, v34, v0

    add-long v36, v36, v6

    shl-long/2addr v6, v0

    sub-long v34, v34, v6

    shr-long v6, v36, v0

    add-long v16, v16, v6

    shl-long/2addr v6, v0

    sub-long v36, v36, v6

    shr-long v6, v16, v0

    add-long v66, v66, v6

    shl-long/2addr v6, v0

    sub-long v16, v16, v6

    shr-long v6, v66, v0

    add-long v40, v40, v6

    shl-long/2addr v6, v0

    sub-long v66, v66, v6

    shr-long v6, v40, v0

    add-long v21, v21, v6

    shl-long/2addr v6, v0

    sub-long v40, v40, v6

    shr-long v6, v21, v0

    add-long/2addr v13, v6

    shl-long/2addr v6, v0

    sub-long v21, v21, v6

    shr-long v6, v13, v0

    add-long v48, v48, v6

    shl-long/2addr v6, v0

    sub-long/2addr v13, v6

    shr-long v6, v48, v0

    add-long v23, v23, v6

    shl-long/2addr v6, v0

    sub-long v6, v48, v6

    shr-long v8, v23, v0

    add-long v38, v38, v8

    shl-long/2addr v8, v0

    sub-long v23, v23, v8

    shr-long v8, v38, v0

    add-long/2addr v2, v8

    shl-long/2addr v8, v0

    sub-long v38, v38, v8

    long-to-int v0, v4

    int-to-byte v0, v0

    const/16 v1, 0x8

    shr-long v8, v4, v1

    long-to-int v9, v8

    int-to-byte v8, v9

    const/16 v9, 0x10

    shr-long/2addr v4, v9

    const/4 v10, 0x5

    shl-long v11, v34, v10

    or-long/2addr v4, v11

    long-to-int v5, v4

    int-to-byte v4, v5

    shr-long v10, v34, v26

    long-to-int v5, v10

    int-to-byte v5, v5

    const/16 v10, 0xb

    shr-long v11, v34, v10

    long-to-int v12, v11

    int-to-byte v11, v12

    const/16 v12, 0x13

    shr-long v27, v34, v12

    const/16 v25, 0x2

    shl-long v29, v36, v25

    move/from16 v25, v11

    or-long v10, v27, v29

    long-to-int v11, v10

    int-to-byte v10, v11

    move/from16 v27, v10

    shr-long v9, v36, v15

    long-to-int v10, v9

    int-to-byte v9, v10

    const/16 v10, 0xe

    shr-long v29, v36, v10

    const/16 v19, 0x7

    shl-long v31, v16, v19

    or-long v10, v29, v31

    long-to-int v11, v10

    int-to-byte v10, v11

    move-wide/from16 v29, v2

    shr-long v1, v16, v20

    long-to-int v2, v1

    int-to-byte v1, v2

    const/16 v2, 0x9

    move/from16 v31, v4

    shr-long v3, v16, v2

    long-to-int v4, v3

    int-to-byte v3, v4

    const/16 v4, 0x11

    shr-long v16, v16, v4

    shl-long v36, v66, v18

    move/from16 v32, v5

    or-long v4, v16, v36

    long-to-int v5, v4

    int-to-byte v4, v5

    move/from16 v16, v3

    shr-long v2, v66, v18

    long-to-int v3, v2

    int-to-byte v2, v3

    const/16 v3, 0xc

    shr-long v11, v66, v3

    long-to-int v3, v11

    int-to-byte v3, v3

    const/16 v11, 0x14

    shr-long v11, v66, v11

    shl-long v42, v40, v20

    or-long v11, v11, v42

    long-to-int v12, v11

    int-to-byte v12, v12

    move-wide/from16 v42, v6

    const/4 v11, 0x7

    shr-long v5, v40, v11

    long-to-int v6, v5

    int-to-byte v6, v6

    const/16 v5, 0xf

    shr-long v40, v40, v5

    shl-long v44, v21, v15

    move/from16 v37, v8

    or-long v7, v40, v44

    long-to-int v8, v7

    int-to-byte v7, v8

    move/from16 v40, v6

    const/4 v8, 0x2

    shr-long v5, v21, v8

    long-to-int v6, v5

    int-to-byte v6, v6

    move/from16 v44, v6

    move v8, v7

    const/16 v5, 0xa

    shr-long v6, v21, v5

    long-to-int v5, v6

    int-to-byte v6, v5

    const/16 v5, 0x12

    shr-long v21, v21, v5

    shl-long v45, v13, v26

    move v7, v6

    or-long v5, v21, v45

    long-to-int v6, v5

    int-to-byte v6, v6

    move/from16 v22, v6

    move/from16 v21, v7

    const/4 v5, 0x5

    shr-long v6, v13, v5

    long-to-int v5, v6

    int-to-byte v6, v5

    const/16 v5, 0xd

    shr-long/2addr v13, v5

    long-to-int v5, v13

    int-to-byte v7, v5

    move-wide/from16 v13, v42

    long-to-int v5, v13

    int-to-byte v5, v5

    move/from16 v42, v5

    move/from16 v36, v6

    const/16 v11, 0x8

    shr-long v5, v13, v11

    long-to-int v6, v5

    int-to-byte v6, v6

    const/16 v5, 0x10

    shr-long/2addr v13, v5

    const/4 v5, 0x5

    shl-long v45, v23, v5

    or-long v13, v13, v45

    long-to-int v5, v13

    int-to-byte v13, v5

    move v14, v12

    shr-long v11, v23, v26

    long-to-int v5, v11

    int-to-byte v11, v5

    move/from16 v43, v11

    const/16 v5, 0xb

    shr-long v11, v23, v5

    long-to-int v5, v11

    int-to-byte v11, v5

    const/16 v5, 0x13

    shr-long v23, v23, v5

    const/4 v5, 0x2

    shl-long v45, v38, v5

    move/from16 v47, v11

    or-long v11, v23, v45

    long-to-int v5, v11

    int-to-byte v11, v5

    move/from16 v23, v11

    shr-long v11, v38, v15

    long-to-int v5, v11

    int-to-byte v11, v5

    const/16 v5, 0xe

    shr-long v38, v38, v5

    const/4 v5, 0x7

    shl-long v45, v29, v5

    move/from16 v24, v11

    or-long v11, v38, v45

    long-to-int v5, v11

    int-to-byte v11, v5

    move/from16 v38, v11

    shr-long v11, v29, v20

    long-to-int v5, v11

    int-to-byte v11, v5

    move/from16 v39, v11

    const/16 v5, 0x9

    shr-long v11, v29, v5

    move/from16 v41, v42

    long-to-int v12, v11

    int-to-byte v11, v12

    move/from16 v42, v6

    const/16 v12, 0x11

    shr-long v5, v29, v12

    long-to-int v6, v5

    int-to-byte v5, v6

    const/16 v6, 0x20

    .line 25
    new-array v6, v6, [B

    const/4 v12, 0x0

    aput-byte v0, v6, v12

    aput-byte v37, v6, v20

    const/4 v0, 0x2

    aput-byte v31, v6, v0

    aput-byte v32, v6, v26

    aput-byte v25, v6, v18

    const/4 v0, 0x5

    aput-byte v27, v6, v0

    aput-byte v9, v6, v15

    const/4 v0, 0x7

    aput-byte v10, v6, v0

    const/16 v0, 0x8

    aput-byte v1, v6, v0

    const/16 v0, 0x9

    aput-byte v16, v6, v0

    const/16 v0, 0xa

    aput-byte v4, v6, v0

    const/16 v0, 0xb

    aput-byte v2, v6, v0

    const/16 v0, 0xc

    aput-byte v3, v6, v0

    const/16 v0, 0xd

    aput-byte v14, v6, v0

    const/16 v0, 0xe

    aput-byte v40, v6, v0

    const/16 v0, 0xf

    aput-byte v8, v6, v0

    const/16 v0, 0x10

    aput-byte v44, v6, v0

    const/16 v0, 0x11

    aput-byte v21, v6, v0

    const/16 v0, 0x12

    aput-byte v22, v6, v0

    const/16 v0, 0x13

    aput-byte v36, v6, v0

    const/16 v0, 0x14

    aput-byte v7, v6, v0

    const/16 v0, 0x15

    aput-byte v41, v6, v0

    const/16 v0, 0x16

    aput-byte v42, v6, v0

    const/16 v0, 0x17

    aput-byte v13, v6, v0

    const/16 v0, 0x18

    aput-byte v43, v6, v0

    const/16 v0, 0x19

    aput-byte v47, v6, v0

    const/16 v0, 0x1a

    aput-byte v23, v6, v0

    const/16 v0, 0x1b

    aput-byte v24, v6, v0

    const/16 v0, 0x1c

    aput-byte v38, v6, v0

    const/16 v0, 0x1d

    aput-byte v39, v6, v0

    const/16 v0, 0x1e

    aput-byte v11, v6, v0

    const/16 v0, 0x1f

    aput-byte v5, v6, v0

    return-object v6
.end method
