.class public final Lcom/google/android/gms/internal/ads/zzapg;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static zza(Ljava/lang/String;)[[Ljava/security/cert/X509Certificate;
    .locals 23

    .line 1
    const/16 v0, 0xb

    .line 2
    .line 3
    const/4 v3, 0x5

    .line 4
    const/16 v7, 0x8

    .line 5
    .line 6
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    const/4 v9, 0x2

    .line 9
    new-array v10, v9, [J

    .line 10
    .line 11
    fill-array-data v10, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {v8, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v8

    .line 21
    new-instance v10, Ljava/io/RandomAccessFile;

    .line 22
    .line 23
    move-object/from16 v11, p0

    .line 24
    .line 25
    invoke-direct {v10, v11, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :try_start_0
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zzaph;->zzc(Ljava/io/RandomAccessFile;)Landroid/util/Pair;

    .line 29
    .line 30
    .line 31
    move-result-object v8

    .line 32
    if-eqz v8, :cond_11

    .line 33
    .line 34
    iget-object v11, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 35
    .line 36
    move-object/from16 v20, v11

    .line 37
    .line 38
    check-cast v20, Ljava/nio/ByteBuffer;

    .line 39
    .line 40
    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v8, Ljava/lang/Long;

    .line 43
    .line 44
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 45
    .line 46
    .line 47
    move-result-wide v14

    .line 48
    const-wide/16 v11, -0x14

    .line 49
    .line 50
    add-long/2addr v11, v14

    .line 51
    const-wide/16 v16, 0x0

    .line 52
    .line 53
    cmp-long v8, v11, v16

    .line 54
    .line 55
    if-gez v8, :cond_0

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {v10, v11, v12}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->readInt()I

    .line 62
    .line 63
    .line 64
    move-result v8

    .line 65
    const v11, 0x504b0607

    .line 66
    .line 67
    .line 68
    if-eq v8, v11, :cond_10

    .line 69
    .line 70
    :goto_0
    invoke-static/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/zzaph;->zza(Ljava/nio/ByteBuffer;)J

    .line 71
    .line 72
    .line 73
    move-result-wide v11

    .line 74
    cmp-long v8, v11, v14

    .line 75
    .line 76
    if-gez v8, :cond_f

    .line 77
    .line 78
    invoke-static/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/zzaph;->zzb(Ljava/nio/ByteBuffer;)J

    .line 79
    .line 80
    .line 81
    move-result-wide v18

    .line 82
    add-long v18, v11, v18

    .line 83
    .line 84
    cmp-long v8, v18, v14

    .line 85
    .line 86
    if-nez v8, :cond_e

    .line 87
    .line 88
    const-wide/16 v18, 0x20

    .line 89
    .line 90
    cmp-long v0, v11, v18

    .line 91
    .line 92
    if-ltz v0, :cond_d

    .line 93
    .line 94
    const/16 v0, 0x18

    .line 95
    .line 96
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    sget-object v8, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 101
    .line 102
    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    .line 106
    .line 107
    .line 108
    move-result v13

    .line 109
    int-to-long v1, v13

    .line 110
    sub-long v1, v11, v1

    .line 111
    .line 112
    invoke-virtual {v10, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    .line 124
    .line 125
    .line 126
    move-result v13

    .line 127
    invoke-virtual {v10, v1, v2, v13}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->getLong(I)J

    .line 131
    .line 132
    .line 133
    move-result-wide v1

    .line 134
    const-wide v21, 0x20676953204b5041L

    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    cmp-long v13, v1, v21

    .line 140
    .line 141
    if-nez v13, :cond_c

    .line 142
    .line 143
    const/16 v1, 0x10

    .line 144
    .line 145
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getLong(I)J

    .line 146
    .line 147
    .line 148
    move-result-wide v1

    .line 149
    const-wide v21, 0x3234206b636f6c42L    # 7.465385175170059E-67

    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    cmp-long v13, v1, v21

    .line 155
    .line 156
    if-nez v13, :cond_c

    .line 157
    .line 158
    const/4 v1, 0x0

    .line 159
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getLong(I)J

    .line 160
    .line 161
    .line 162
    move-result-wide v4

    .line 163
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    move-wide/from16 v21, v14

    .line 168
    .line 169
    int-to-long v13, v0

    .line 170
    cmp-long v0, v4, v13

    .line 171
    .line 172
    if-ltz v0, :cond_b

    .line 173
    .line 174
    const-wide/32 v13, 0x7ffffff7

    .line 175
    .line 176
    .line 177
    cmp-long v0, v4, v13

    .line 178
    .line 179
    if-gtz v0, :cond_b

    .line 180
    .line 181
    const-wide/16 v13, 0x8

    .line 182
    .line 183
    add-long/2addr v13, v4

    .line 184
    long-to-int v0, v13

    .line 185
    int-to-long v13, v0

    .line 186
    sub-long v13, v11, v13

    .line 187
    .line 188
    cmp-long v15, v13, v16

    .line 189
    .line 190
    if-ltz v15, :cond_a

    .line 191
    .line 192
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v10, v13, v14}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    .line 207
    .line 208
    .line 209
    move-result v15

    .line 210
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    .line 211
    .line 212
    .line 213
    move-result v9

    .line 214
    invoke-virtual {v10, v2, v15, v9}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getLong(I)J

    .line 218
    .line 219
    .line 220
    move-result-wide v6

    .line 221
    cmp-long v2, v6, v4

    .line 222
    .line 223
    if-nez v2, :cond_9

    .line 224
    .line 225
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 234
    .line 235
    check-cast v2, Ljava/nio/ByteBuffer;

    .line 236
    .line 237
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 238
    .line 239
    check-cast v0, Ljava/lang/Long;

    .line 240
    .line 241
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 242
    .line 243
    .line 244
    move-result-wide v4

    .line 245
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    if-ne v0, v8, :cond_8

    .line 250
    .line 251
    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    add-int/lit8 v0, v0, -0x18

    .line 256
    .line 257
    const/16 v6, 0x8

    .line 258
    .line 259
    if-lt v0, v6, :cond_7

    .line 260
    .line 261
    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    .line 262
    .line 263
    .line 264
    move-result v6

    .line 265
    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    .line 266
    .line 267
    .line 268
    move-result v7

    .line 269
    if-gt v0, v7, :cond_6

    .line 270
    .line 271
    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    .line 272
    .line 273
    .line 274
    move-result v6

    .line 275
    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    .line 276
    .line 277
    .line 278
    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    :try_start_1
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 283
    .line 284
    .line 285
    const/16 v0, 0x8

    .line 286
    .line 287
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    .line 295
    .line 296
    .line 297
    move-result-object v8

    .line 298
    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 299
    .line 300
    .line 301
    :try_start_2
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 302
    .line 303
    .line 304
    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 308
    .line 309
    .line 310
    :goto_1
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 311
    .line 312
    .line 313
    move-result v2

    .line 314
    if-eqz v2, :cond_5

    .line 315
    .line 316
    add-int/lit8 v1, v1, 0x1

    .line 317
    .line 318
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    .line 319
    .line 320
    .line 321
    move-result v2

    .line 322
    const/16 v6, 0x8

    .line 323
    .line 324
    if-lt v2, v6, :cond_4

    .line 325
    .line 326
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    .line 327
    .line 328
    .line 329
    move-result-wide v6

    .line 330
    const-wide/16 v13, 0x4

    .line 331
    .line 332
    cmp-long v2, v6, v13

    .line 333
    .line 334
    if-ltz v2, :cond_3

    .line 335
    .line 336
    const-wide/32 v13, 0x7fffffff

    .line 337
    .line 338
    .line 339
    cmp-long v2, v6, v13

    .line 340
    .line 341
    if-gtz v2, :cond_3

    .line 342
    .line 343
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 344
    .line 345
    .line 346
    move-result v2

    .line 347
    long-to-int v7, v6

    .line 348
    add-int/2addr v2, v7

    .line 349
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    .line 350
    .line 351
    .line 352
    move-result v6

    .line 353
    if-gt v7, v6, :cond_2

    .line 354
    .line 355
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 356
    .line 357
    .line 358
    move-result v6

    .line 359
    const v8, 0x7109871a

    .line 360
    .line 361
    .line 362
    if-ne v6, v8, :cond_1

    .line 363
    .line 364
    add-int/lit8 v7, v7, -0x4

    .line 365
    .line 366
    invoke-static {v0, v7}, Lcom/google/android/gms/internal/ads/zzapg;->zze(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    .line 367
    .line 368
    .line 369
    move-result-object v13

    .line 370
    new-instance v0, Lcom/google/android/gms/internal/ads/zzapc;

    .line 371
    .line 372
    const/4 v1, 0x0

    .line 373
    move-wide v6, v11

    .line 374
    move-object v12, v0

    .line 375
    move-wide/from16 v2, v21

    .line 376
    .line 377
    move-wide v14, v4

    .line 378
    move-wide/from16 v16, v6

    .line 379
    .line 380
    move-wide/from16 v18, v2

    .line 381
    .line 382
    move-object/from16 v21, v1

    .line 383
    .line 384
    invoke-direct/range {v12 .. v21}, Lcom/google/android/gms/internal/ads/zzapc;-><init>(Ljava/nio/ByteBuffer;JJJLjava/nio/ByteBuffer;Lcom/google/android/gms/internal/ads/zzapb;)V

    .line 385
    .line 386
    .line 387
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    .line 388
    .line 389
    .line 390
    move-result-object v1

    .line 391
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzapg;->zzl(Ljava/nio/channels/FileChannel;Lcom/google/android/gms/internal/ads/zzapc;)[[Ljava/security/cert/X509Certificate;

    .line 392
    .line 393
    .line 394
    move-result-object v0

    .line 395
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 396
    .line 397
    .line 398
    :try_start_3
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 399
    .line 400
    .line 401
    :catch_0
    return-object v0

    .line 402
    :catchall_0
    move-exception v0

    .line 403
    goto/16 :goto_2

    .line 404
    .line 405
    :cond_1
    move-wide v6, v11

    .line 406
    move-wide/from16 v11, v21

    .line 407
    .line 408
    :try_start_4
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 409
    .line 410
    .line 411
    move-wide/from16 v21, v11

    .line 412
    .line 413
    move-wide v11, v6

    .line 414
    goto :goto_1

    .line 415
    :cond_2
    new-instance v2, Lcom/google/android/gms/internal/ads/zzapd;

    .line 416
    .line 417
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    .line 418
    .line 419
    .line 420
    move-result v0

    .line 421
    new-instance v4, Ljava/lang/StringBuilder;

    .line 422
    .line 423
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 424
    .line 425
    .line 426
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 427
    .line 428
    new-array v3, v3, [J

    .line 429
    .line 430
    fill-array-data v3, :array_1

    .line 431
    .line 432
    .line 433
    invoke-direct {v5, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 434
    .line 435
    .line 436
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v3

    .line 440
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 447
    .line 448
    const/4 v3, 0x4

    .line 449
    new-array v3, v3, [J

    .line 450
    .line 451
    fill-array-data v3, :array_2

    .line 452
    .line 453
    .line 454
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 455
    .line 456
    .line 457
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v1

    .line 461
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    .line 463
    .line 464
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 465
    .line 466
    .line 467
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 468
    .line 469
    const/4 v3, 0x3

    .line 470
    new-array v3, v3, [J

    .line 471
    .line 472
    fill-array-data v3, :array_3

    .line 473
    .line 474
    .line 475
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 476
    .line 477
    .line 478
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object v1

    .line 482
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    .line 484
    .line 485
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 486
    .line 487
    .line 488
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object v0

    .line 492
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzapd;-><init>(Ljava/lang/String;)V

    .line 493
    .line 494
    .line 495
    throw v2

    .line 496
    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzapd;

    .line 497
    .line 498
    new-instance v2, Ljava/lang/StringBuilder;

    .line 499
    .line 500
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 501
    .line 502
    .line 503
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 504
    .line 505
    new-array v3, v3, [J

    .line 506
    .line 507
    fill-array-data v3, :array_4

    .line 508
    .line 509
    .line 510
    invoke-direct {v4, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 511
    .line 512
    .line 513
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 514
    .line 515
    .line 516
    move-result-object v3

    .line 517
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    .line 519
    .line 520
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 521
    .line 522
    .line 523
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 524
    .line 525
    const/4 v3, 0x4

    .line 526
    new-array v3, v3, [J

    .line 527
    .line 528
    fill-array-data v3, :array_5

    .line 529
    .line 530
    .line 531
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 532
    .line 533
    .line 534
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object v1

    .line 538
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    .line 540
    .line 541
    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 542
    .line 543
    .line 544
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 545
    .line 546
    .line 547
    move-result-object v1

    .line 548
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzapd;-><init>(Ljava/lang/String;)V

    .line 549
    .line 550
    .line 551
    throw v0

    .line 552
    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzapd;

    .line 553
    .line 554
    new-instance v2, Ljava/lang/StringBuilder;

    .line 555
    .line 556
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 557
    .line 558
    .line 559
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 560
    .line 561
    const/16 v4, 0x9

    .line 562
    .line 563
    new-array v4, v4, [J

    .line 564
    .line 565
    fill-array-data v4, :array_6

    .line 566
    .line 567
    .line 568
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 569
    .line 570
    .line 571
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 572
    .line 573
    .line 574
    move-result-object v3

    .line 575
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    .line 577
    .line 578
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 579
    .line 580
    .line 581
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 582
    .line 583
    .line 584
    move-result-object v1

    .line 585
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzapd;-><init>(Ljava/lang/String;)V

    .line 586
    .line 587
    .line 588
    throw v0

    .line 589
    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzapd;

    .line 590
    .line 591
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 592
    .line 593
    const/16 v2, 0x8

    .line 594
    .line 595
    new-array v2, v2, [J

    .line 596
    .line 597
    fill-array-data v2, :array_7

    .line 598
    .line 599
    .line 600
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 601
    .line 602
    .line 603
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 604
    .line 605
    .line 606
    move-result-object v1

    .line 607
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzapd;-><init>(Ljava/lang/String;)V

    .line 608
    .line 609
    .line 610
    throw v0

    .line 611
    :catchall_1
    move-exception v0

    .line 612
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 613
    .line 614
    .line 615
    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 616
    .line 617
    .line 618
    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 619
    .line 620
    .line 621
    throw v0

    .line 622
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 623
    .line 624
    new-instance v2, Ljava/lang/StringBuilder;

    .line 625
    .line 626
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 627
    .line 628
    .line 629
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 630
    .line 631
    const/4 v4, 0x3

    .line 632
    new-array v4, v4, [J

    .line 633
    .line 634
    fill-array-data v4, :array_8

    .line 635
    .line 636
    .line 637
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 638
    .line 639
    .line 640
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 641
    .line 642
    .line 643
    move-result-object v3

    .line 644
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    .line 646
    .line 647
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 648
    .line 649
    .line 650
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 651
    .line 652
    const/4 v3, 0x2

    .line 653
    new-array v3, v3, [J

    .line 654
    .line 655
    fill-array-data v3, :array_9

    .line 656
    .line 657
    .line 658
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 659
    .line 660
    .line 661
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 662
    .line 663
    .line 664
    move-result-object v0

    .line 665
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    .line 667
    .line 668
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 669
    .line 670
    .line 671
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 672
    .line 673
    .line 674
    move-result-object v0

    .line 675
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 676
    .line 677
    .line 678
    throw v1

    .line 679
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 680
    .line 681
    new-instance v2, Ljava/lang/StringBuilder;

    .line 682
    .line 683
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 684
    .line 685
    .line 686
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 687
    .line 688
    const/4 v4, 0x3

    .line 689
    new-array v4, v4, [J

    .line 690
    .line 691
    fill-array-data v4, :array_a

    .line 692
    .line 693
    .line 694
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 695
    .line 696
    .line 697
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 698
    .line 699
    .line 700
    move-result-object v3

    .line 701
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    .line 703
    .line 704
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 705
    .line 706
    .line 707
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 708
    .line 709
    const/4 v3, 0x2

    .line 710
    new-array v3, v3, [J

    .line 711
    .line 712
    fill-array-data v3, :array_b

    .line 713
    .line 714
    .line 715
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 716
    .line 717
    .line 718
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 719
    .line 720
    .line 721
    move-result-object v0

    .line 722
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    .line 724
    .line 725
    const/16 v0, 0x8

    .line 726
    .line 727
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 728
    .line 729
    .line 730
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 731
    .line 732
    .line 733
    move-result-object v0

    .line 734
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 735
    .line 736
    .line 737
    throw v1

    .line 738
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 739
    .line 740
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 741
    .line 742
    const/4 v2, 0x7

    .line 743
    new-array v2, v2, [J

    .line 744
    .line 745
    fill-array-data v2, :array_c

    .line 746
    .line 747
    .line 748
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 749
    .line 750
    .line 751
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 752
    .line 753
    .line 754
    move-result-object v1

    .line 755
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 756
    .line 757
    .line 758
    throw v0

    .line 759
    :cond_9
    new-instance v0, Lcom/google/android/gms/internal/ads/zzapd;

    .line 760
    .line 761
    new-instance v1, Ljava/lang/StringBuilder;

    .line 762
    .line 763
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 764
    .line 765
    .line 766
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 767
    .line 768
    const/16 v3, 0x9

    .line 769
    .line 770
    new-array v3, v3, [J

    .line 771
    .line 772
    fill-array-data v3, :array_d

    .line 773
    .line 774
    .line 775
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 776
    .line 777
    .line 778
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 779
    .line 780
    .line 781
    move-result-object v2

    .line 782
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    .line 784
    .line 785
    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 786
    .line 787
    .line 788
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 789
    .line 790
    const/4 v3, 0x2

    .line 791
    new-array v3, v3, [J

    .line 792
    .line 793
    fill-array-data v3, :array_e

    .line 794
    .line 795
    .line 796
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 797
    .line 798
    .line 799
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 800
    .line 801
    .line 802
    move-result-object v2

    .line 803
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    .line 805
    .line 806
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 807
    .line 808
    .line 809
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 810
    .line 811
    .line 812
    move-result-object v1

    .line 813
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzapd;-><init>(Ljava/lang/String;)V

    .line 814
    .line 815
    .line 816
    throw v0

    .line 817
    :cond_a
    new-instance v0, Lcom/google/android/gms/internal/ads/zzapd;

    .line 818
    .line 819
    new-instance v1, Ljava/lang/StringBuilder;

    .line 820
    .line 821
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 822
    .line 823
    .line 824
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 825
    .line 826
    const/4 v2, 0x6

    .line 827
    new-array v2, v2, [J

    .line 828
    .line 829
    fill-array-data v2, :array_f

    .line 830
    .line 831
    .line 832
    invoke-direct {v3, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 833
    .line 834
    .line 835
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 836
    .line 837
    .line 838
    move-result-object v2

    .line 839
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 840
    .line 841
    .line 842
    invoke-virtual {v1, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 843
    .line 844
    .line 845
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 846
    .line 847
    .line 848
    move-result-object v1

    .line 849
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzapd;-><init>(Ljava/lang/String;)V

    .line 850
    .line 851
    .line 852
    throw v0

    .line 853
    :cond_b
    new-instance v0, Lcom/google/android/gms/internal/ads/zzapd;

    .line 854
    .line 855
    new-instance v1, Ljava/lang/StringBuilder;

    .line 856
    .line 857
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 858
    .line 859
    .line 860
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 861
    .line 862
    const/4 v2, 0x6

    .line 863
    new-array v2, v2, [J

    .line 864
    .line 865
    fill-array-data v2, :array_10

    .line 866
    .line 867
    .line 868
    invoke-direct {v3, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 869
    .line 870
    .line 871
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 872
    .line 873
    .line 874
    move-result-object v2

    .line 875
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 876
    .line 877
    .line 878
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 879
    .line 880
    .line 881
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 882
    .line 883
    .line 884
    move-result-object v1

    .line 885
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzapd;-><init>(Ljava/lang/String;)V

    .line 886
    .line 887
    .line 888
    throw v0

    .line 889
    :cond_c
    new-instance v0, Lcom/google/android/gms/internal/ads/zzapd;

    .line 890
    .line 891
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 892
    .line 893
    const/16 v2, 0x8

    .line 894
    .line 895
    new-array v2, v2, [J

    .line 896
    .line 897
    fill-array-data v2, :array_11

    .line 898
    .line 899
    .line 900
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 901
    .line 902
    .line 903
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 904
    .line 905
    .line 906
    move-result-object v1

    .line 907
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzapd;-><init>(Ljava/lang/String;)V

    .line 908
    .line 909
    .line 910
    throw v0

    .line 911
    :cond_d
    move-wide v6, v11

    .line 912
    new-instance v0, Lcom/google/android/gms/internal/ads/zzapd;

    .line 913
    .line 914
    new-instance v1, Ljava/lang/StringBuilder;

    .line 915
    .line 916
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 917
    .line 918
    .line 919
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 920
    .line 921
    const/16 v3, 0xa

    .line 922
    .line 923
    new-array v3, v3, [J

    .line 924
    .line 925
    fill-array-data v3, :array_12

    .line 926
    .line 927
    .line 928
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 929
    .line 930
    .line 931
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 932
    .line 933
    .line 934
    move-result-object v2

    .line 935
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 936
    .line 937
    .line 938
    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 939
    .line 940
    .line 941
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 942
    .line 943
    .line 944
    move-result-object v1

    .line 945
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzapd;-><init>(Ljava/lang/String;)V

    .line 946
    .line 947
    .line 948
    throw v0

    .line 949
    :cond_e
    new-instance v1, Lcom/google/android/gms/internal/ads/zzapd;

    .line 950
    .line 951
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 952
    .line 953
    new-array v0, v0, [J

    .line 954
    .line 955
    fill-array-data v0, :array_13

    .line 956
    .line 957
    .line 958
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 959
    .line 960
    .line 961
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 962
    .line 963
    .line 964
    move-result-object v0

    .line 965
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzapd;-><init>(Ljava/lang/String;)V

    .line 966
    .line 967
    .line 968
    throw v1

    .line 969
    :cond_f
    move-wide v6, v11

    .line 970
    move-wide v11, v14

    .line 971
    new-instance v0, Lcom/google/android/gms/internal/ads/zzapd;

    .line 972
    .line 973
    new-instance v1, Ljava/lang/StringBuilder;

    .line 974
    .line 975
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 976
    .line 977
    .line 978
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 979
    .line 980
    const/4 v4, 0x7

    .line 981
    new-array v4, v4, [J

    .line 982
    .line 983
    fill-array-data v4, :array_14

    .line 984
    .line 985
    .line 986
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 987
    .line 988
    .line 989
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 990
    .line 991
    .line 992
    move-result-object v3

    .line 993
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 994
    .line 995
    .line 996
    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 997
    .line 998
    .line 999
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 1000
    .line 1001
    const/4 v2, 0x6

    .line 1002
    new-array v2, v2, [J

    .line 1003
    .line 1004
    fill-array-data v2, :array_15

    .line 1005
    .line 1006
    .line 1007
    invoke-direct {v3, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 1008
    .line 1009
    .line 1010
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 1011
    .line 1012
    .line 1013
    move-result-object v2

    .line 1014
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1015
    .line 1016
    .line 1017
    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1018
    .line 1019
    .line 1020
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1021
    .line 1022
    .line 1023
    move-result-object v1

    .line 1024
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzapd;-><init>(Ljava/lang/String;)V

    .line 1025
    .line 1026
    .line 1027
    throw v0

    .line 1028
    :cond_10
    new-instance v0, Lcom/google/android/gms/internal/ads/zzapd;

    .line 1029
    .line 1030
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 1031
    .line 1032
    const/4 v2, 0x4

    .line 1033
    new-array v2, v2, [J

    .line 1034
    .line 1035
    fill-array-data v2, :array_16

    .line 1036
    .line 1037
    .line 1038
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 1039
    .line 1040
    .line 1041
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 1042
    .line 1043
    .line 1044
    move-result-object v1

    .line 1045
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzapd;-><init>(Ljava/lang/String;)V

    .line 1046
    .line 1047
    .line 1048
    throw v0

    .line 1049
    :cond_11
    new-instance v1, Lcom/google/android/gms/internal/ads/zzapd;

    .line 1050
    .line 1051
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->length()J

    .line 1052
    .line 1053
    .line 1054
    move-result-wide v2

    .line 1055
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1056
    .line 1057
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1058
    .line 1059
    .line 1060
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 1061
    .line 1062
    new-array v0, v0, [J

    .line 1063
    .line 1064
    fill-array-data v0, :array_17

    .line 1065
    .line 1066
    .line 1067
    invoke-direct {v5, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 1068
    .line 1069
    .line 1070
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 1071
    .line 1072
    .line 1073
    move-result-object v0

    .line 1074
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1075
    .line 1076
    .line 1077
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1078
    .line 1079
    .line 1080
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 1081
    .line 1082
    const/4 v2, 0x2

    .line 1083
    new-array v2, v2, [J

    .line 1084
    .line 1085
    fill-array-data v2, :array_18

    .line 1086
    .line 1087
    .line 1088
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 1089
    .line 1090
    .line 1091
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 1092
    .line 1093
    .line 1094
    move-result-object v0

    .line 1095
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1096
    .line 1097
    .line 1098
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1099
    .line 1100
    .line 1101
    move-result-object v0

    .line 1102
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzapd;-><init>(Ljava/lang/String;)V

    .line 1103
    .line 1104
    .line 1105
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1106
    :goto_2
    :try_start_5
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1107
    .line 1108
    .line 1109
    :catch_1
    throw v0

    .line 1110
    nop

    .line 1111
    :array_0
    .array-data 8
        -0x67c05db6bfbe6f6bL    # -6.933554400550413E-192
        -0x6e3daa1f06c9375L
    .end array-data

    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    :array_1
    .array-data 8
        -0x554d1b80da9d4b05L    # -5.27196379200859E-103
        -0x2787a6be0f016ebaL    # -1.535017837063009E118
        -0x795d8cb8a2d07534L
        0x66704f18c8029d17L    # 2.771940668980114E185
        0x2d8f1b6ddbdf30cfL    # 3.0541576510951888E-89
    .end array-data

    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
    .line 1144
    .line 1145
    .line 1146
    .line 1147
    :array_2
    .array-data 8
        -0x1de7bf23806b5495L    # -3.491641481090756E164
        -0x581cd56eba411719L
        0x39297bb0adfbf82bL    # 2.4539394955102426E-33
        0x182118f175735f38L
    .end array-data

    .line 1148
    .line 1149
    .line 1150
    .line 1151
    .line 1152
    .line 1153
    .line 1154
    .line 1155
    .line 1156
    .line 1157
    .line 1158
    .line 1159
    .line 1160
    .line 1161
    .line 1162
    .line 1163
    .line 1164
    .line 1165
    .line 1166
    .line 1167
    :array_3
    .array-data 8
        0x2d1b2124c33983c7L    # 2.080954533778112E-91
        0x670f88a76a0ee41L
        -0x52c1b77741e18d80L    # -9.291483090843884E-91
    .end array-data

    .line 1168
    .line 1169
    .line 1170
    .line 1171
    .line 1172
    .line 1173
    .line 1174
    .line 1175
    .line 1176
    .line 1177
    .line 1178
    .line 1179
    .line 1180
    .line 1181
    .line 1182
    .line 1183
    :array_4
    .array-data 8
        -0x4925aedb38f3fdbfL    # -1.843896302304156E-44
        -0xffc04fccfafd56cL    # -3.877514345803763E231
        -0x28ada7053db9da67L    # -4.412422571723613E112
        -0x267d2aa45615091fL    # -1.556243908312089E123
        0x3d55fba434a99688L    # 3.1239685441637824E-13
    .end array-data

    .line 1184
    .line 1185
    .line 1186
    .line 1187
    .line 1188
    .line 1189
    .line 1190
    .line 1191
    .line 1192
    .line 1193
    .line 1194
    .line 1195
    .line 1196
    .line 1197
    .line 1198
    .line 1199
    .line 1200
    .line 1201
    .line 1202
    .line 1203
    .line 1204
    .line 1205
    .line 1206
    .line 1207
    :array_5
    .array-data 8
        0x3655ca411c57d205L    # 5.963744536191126E-47
        -0x42d94533578a06deL    # -4.0376032000496385E-14
        -0x5080a705909eeb0fL    # -6.609446041269824E-80
        -0x7e8e4641a582d8ceL
    .end array-data

    .line 1208
    .line 1209
    .line 1210
    .line 1211
    .line 1212
    .line 1213
    .line 1214
    .line 1215
    .line 1216
    .line 1217
    .line 1218
    :array_6
    .array-data 8
        -0x77198ac59e96453cL    # -8.706095119395614E-266
        0x55a630b241598496L    # 3.976034278582206E104
        -0x23cda7fc1339bf99L    # -1.3332991378603544E136
        0x2a7dc573344554a3L    # 5.19229249475246E-104
        0x42001950683204a1L    # 8.64302208625226E9
        -0x1dabde5a93f32260L    # -4.637161978248845E165
        0x21d24a3b7565a4cdL    # 9.154509819961589E-146
        0x3ddfbac1668d91d4L    # 1.1543129788669678E-10
        0x5f0a5a1a49d27a52L    # 6.739083612631064E149
    .end array-data

    :array_7
    .array-data 8
        0x2b80cfb560d122c8L    # 3.843034813310494E-99
        0x52fd9643b91aa85cL    # 6.0269724096888426E91
        -0x385815722b9a19a3L    # -1.589505900780563E37
        0x6ad8639e2b71ff1L
        0x58ee251efe033cfaL    # 2.432560415675322E120
        0x3209b1c301aa4d2fL    # 1.1913219882418467E-67
        0x65e1d14d2c2e56c0L    # 5.914747313605176E182
        0x211ed52880f78f72L
    .end array-data

    :array_8
    .array-data 8
        0x78b7e621fb31fd8eL    # 3.232176066873882E273
        -0x36408ab419ef4190L    # -1.7959451279241284E47
        -0x6df396518f98ca60L    # -9.825338317504526E-222
    .end array-data

    :array_9
    .array-data 8
        -0x50326a9f3d85d080L
        -0x7c84ade5ab224f17L
    .end array-data

    :array_a
    .array-data 8
        -0x7b8be0349ca27b45L    # -3.304020321278078E-287
        -0x61520b5977a34992L
        0x17061ce0a24c2560L    # 9.244355690852975E-198
    .end array-data

    :array_b
    .array-data 8
        -0x2dbb0e941bc1fd4bL    # -2.083093334368736E88
        0x69decc850fe09ebeL    # 9.430015217540551E201
    .end array-data

    :array_c
    .array-data 8
        -0x47b1bfe042182fd9L    # -1.7779636726660256E-37
        0x7172038655e67ee4L    # 2.93252120769674E238
        0x1afcc5d6ddf19905L
        -0x13d3e4844231f545L    # -1.1827881367789531E213
        -0x63a8949a1c1445fbL    # -3.787568909175247E-172
        0x76fc169277268a30L    # 1.4151409016284482E265
        0x1772eed7f7afca3dL
    .end array-data

    :array_d
    .array-data 8
        -0x734fa5772c0e68c5L
        0x739571f7625243afL    # 5.997719522167104E248
        -0x4dc083fc90bc2507L    # -1.1678223179366961E-66
        0x4b8fc92cf56913ebL    # 9.742332306548011E55
        0x361b49b548c46451L    # 4.6677885489604895E-48
        0x26f6c92519189a70L    # 5.51498775215378E-121
        -0x5fd15eef078018fcL
        -0x5e9bc620a5b8d55L
        0x78804c43a1d1463dL    # 2.755230441143527E272
    .end array-data

    :array_e
    .array-data 8
        -0x3f2a0cf01e755bd1L    # -22476.248140964828
        0x1b572ee9616ea255L    # 5.7210645863872E-177
    .end array-data

    :array_f
    .array-data 8
        0x10fd000a3bd4ffe6L    # 7.65109535254431E-227
        -0x55d2835418adb6f2L    # -1.60709700428749E-105
        -0x7a686549f9ebef4cL    # -1.015911620741836E-281
        0x47da8303bcf7032eL    # 1.4096077838978352E38
        0x2509f8b37940c1eaL
        0x3cd86bb51aa93ceeL    # 1.3556229572189643E-15
    .end array-data

    :array_10
    .array-data 8
        -0x51fc20553f0c23ecL    # -4.99516657126262E-87
        -0x1e321f35680871cL
        0x8ab4aa324c1383fL
        0x67b742d28301e806L    # 4.145587644161819E191
        -0x48b2c0700400ade6L    # -2.62307743680022E-42
        0x5a6d45ce4331b59L
    .end array-data

    :array_11
    .array-data 8
        0x70af31b2668d62a7L    # 6.198969440837166E234
        0xec0fe5b2fdeb853L    # 1.30484306624674E-237
        0x6fa0cba16facfc54L    # 5.092814874785975E229
        0x4792c7daa034c610L    # 6.240951314277295E36
        -0x4ec788623cd5cc49L    # -1.3847973319458407E-71
        -0x10b6f824e0550bc4L    # -1.1859312413070163E228
        0x2fe185558b3025e5L    # 4.72852805045075E-78
        0x589350c1014d345dL    # 4.870830620906334E118
    .end array-data

    :array_12
    .array-data 8
        0x4d85cc85ac3be8ccL    # 2.869617076691801E65
        0x3f9b5854bb319514L    # 0.026704143453021592
        0x5057bcb46c8d5055L    # 1.0994286598648018E79
        0x68f5d1363cab127bL    # 4.077151594047793E197
        0x7f31fe511066aec9L    # 4.935707944876999E304
        -0x4121edb0dd1a5b9fL    # -7.169609075632472E-6
        0x694aa4164a6bef07L    # 1.5931516046314153E199
        -0x1c0863836b5362a9L    # -3.64986647523874E173
        0x7fbb041e235750dfL    # 1.897133996169999E307
        -0x52c9a5c42bbc8aecL    # -6.858149438733571E-91
    .end array-data

    :array_13
    .array-data 8
        0x50edcbef9221b49eL    # 7.066037004608964E81
        -0x4628c7490aa3a668L
        -0x3625efc235a26b7fL    # -5.951838187018622E47
        -0x65b71facff43791aL    # -4.683578817523772E-182
        0x2cf020283b44f596L    # 3.092271318097423E-92
        0x34d295c8d22e2d3dL    # 3.0318351734058435E-54
        0x31b3a982555d3b9dL    # 2.848865199142482E-69
        -0x3302a5bec88bcc39L    # -7.546838647438059E62
        -0x7bbf676b18fcb23bL    # -3.405949167119604E-288
        0x6a14988b7ed14c85L    # 1.0089680560186324E203
        0x7f469ffd2b60f91bL    # 1.2412332010642924E305
    .end array-data

    :array_14
    .array-data 8
        0x197a5bd48f326902L
        0x1a0929b7292de6ebL    # 2.960971466359241E-183
        -0x4a59bf740cc12458L    # -2.973736120452901E-50
        -0x3dd818b9f1738987L    # -5.133218797423139E10
        0x76316e270362ca0aL    # 2.1439797888810745E261
        0x4063552093c5aeaaL    # 154.6602267132742
        -0x6493d870aec777d5L
    .end array-data

    :array_15
    .array-data 8
        0x40731f608e92b49eL    # 305.96107346827364
        -0x522c29fd01a0a18bL    # -6.232108505828169E-88
        -0x22c525409cb73c30L    # -1.2791891921323639E141
        -0x6ec9da896ac28d26L
        0xd305f0e9f9367e2L
        0x69426dcdf8ee1777L    # 1.1020648058914362E199
    .end array-data

    :array_16
    .array-data 8
        -0xd8379a578168990L
        -0x3a80385f9d4f0b53L    # -6.147105588583871E26
        0x427cb1c13c498dd1L    # 1.9718610464248635E12
        0x6b7cc83e19778c69L    # 5.913994950231405E209
    .end array-data

    :array_17
    .array-data 8
        0x195de2ac9f4ee4dcL    # 1.717127113705493E-186
        -0x1ef2e80f6389daabL    # -3.195537519494195E159
        0x199e1bbcd44e0a2L
        -0x2b8e28aadaf666e9L    # -6.097352009152239E98
        0x682aa6cfb74bc39eL    # 6.079818713859306E193
        0x1c1cfe3470fad829L
        0x45f1747307037eaeL    # 8.64323802170037E28
        -0x16b2413f1b2d9a0bL    # -1.7787832638977846E199
        0x73434004a762be7dL    # 1.6824369328002886E247
        0x51f49af8ef9e3ce4L    # 6.404703000646074E86
        0x7b1cb8b5ecbbd95cL    # 1.0677348681699348E285
    .end array-data

    :array_18
    .array-data 8
        -0x4b099d15e224f983L    # -1.4607797699380193E-53
        0x559ab3bd56ce78f9L    # 2.3922362251586418E104
    .end array-data
.end method

.method private static zzb(I)I
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_1

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-ne p0, v0, :cond_0

    .line 6
    .line 7
    const/16 p0, 0x40

    .line 8
    .line 9
    return p0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 18
    .line 19
    const/4 v3, 0x6

    .line 20
    new-array v3, v3, [J

    .line 21
    .line 22
    fill-array-data v3, :array_0

    .line 23
    .line 24
    .line 25
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 26
    .line 27
    .line 28
    invoke-static {v2, v1, p0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw v0

    .line 36
    :cond_1
    const/16 p0, 0x20

    .line 37
    .line 38
    return p0

    .line 39
    :array_0
    .array-data 8
        0x4623f4e3ebc75109L    # 7.90562484880674E29
        -0x43823a008703bc6dL    # -2.5824333515798203E-17
        0x5fef0ce240a25a89L    # 1.3009900785025895E154
        0x793da3969bb31c77L    # 1.02617124106727E276
        0x39dfecc55aa84f4L
        0x296c65d9a2e424e7L
    .end array-data
.end method

.method private static zzc(I)I
    .locals 3

    .line 1
    const/16 v0, 0x201

    .line 2
    .line 3
    if-eq p0, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x202

    .line 6
    .line 7
    if-eq p0, v0, :cond_0

    .line 8
    .line 9
    const/16 v0, 0x301

    .line 10
    .line 11
    if-eq p0, v0, :cond_1

    .line 12
    .line 13
    packed-switch p0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    int-to-long v0, p0

    .line 17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 18
    .line 19
    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 28
    .line 29
    const/4 v2, 0x5

    .line 30
    new-array v2, v2, [J

    .line 31
    .line 32
    fill-array-data v2, :array_0

    .line 33
    .line 34
    .line 35
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p0

    .line 50
    :cond_0
    :pswitch_0
    const/4 p0, 0x2

    .line 51
    return p0

    .line 52
    :cond_1
    :pswitch_1
    const/4 p0, 0x1

    .line 53
    return p0

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    :array_0
    .array-data 8
        0x159d2bee18ea5ff0L
        -0x551616cc88cd9ebbL    # -5.784351463133818E-102
        -0x5f62dd25d736d99L    # -7.323508592680799E279
        0x33388c57d7eb39a8L    # 5.967340600837446E-62
        0x1572f5656deb2706L
    .end array-data
.end method

.method private static zzd(I)Ljava/lang/String;
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eq p0, v1, :cond_1

    .line 4
    .line 5
    if-ne p0, v0, :cond_0

    .line 6
    .line 7
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    new-array v0, v0, [J

    .line 10
    .line 11
    fill-array-data v0, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 30
    .line 31
    const/4 v3, 0x6

    .line 32
    new-array v3, v3, [J

    .line 33
    .line 34
    fill-array-data v3, :array_1

    .line 35
    .line 36
    .line 37
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 38
    .line 39
    .line 40
    invoke-static {v2, v1, p0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw v0

    .line 48
    :cond_1
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 49
    .line 50
    new-array v0, v0, [J

    .line 51
    .line 52
    fill-array-data v0, :array_2

    .line 53
    .line 54
    .line 55
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :array_0
    .array-data 8
        -0x3d68f4e8d1be80eL
        0x616cd8424270acbaL    # 2.0276577085022273E161
    .end array-data

    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    :array_1
    .array-data 8
        0x50ae7af14931b465L    # 4.517595084744671E80
        -0x7e7998de37b97783L    # -2.613471683421562E-301
        -0x3959d37c7fc4ecd5L    # -2.2486987399436455E32
        0x7fa91dc440a9cd1cL    # 8.818624341270642E306
        0x6f586d2811ab4651L    # 2.3146006180476743E228
        -0x2c28cf49264aa512L    # -7.739712337761214E95
    .end array-data

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    :array_2
    .array-data 8
        0x4081da131f2a6f2cL    # 571.2593367877175
        -0x35d30c09ef824bf5L    # -2.115740901123275E49
    .end array-data
.end method

.method private static zze(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/2addr p1, v1

    .line 10
    if-lt p1, v1, :cond_0

    .line 11
    .line 12
    if-gt p1, v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 15
    .line 16
    .line 17
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 32
    .line 33
    .line 34
    return-object v1

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 37
    .line 38
    .line 39
    throw p1

    .line 40
    :cond_0
    new-instance p0, Ljava/nio/BufferUnderflowException;

    .line 41
    .line 42
    invoke-direct {p0}, Ljava/nio/BufferUnderflowException;-><init>()V

    .line 43
    .line 44
    .line 45
    throw p0
.end method

.method private static zzf(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 6

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const/4 v2, 0x4

    .line 7
    if-lt v1, v2, :cond_2

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-ltz v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-gt v1, v2, :cond_0

    .line 20
    .line 21
    invoke-static {p0, v1}, Lcom/google/android/gms/internal/ads/zzapg;->zze(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    :cond_0
    new-instance v2, Ljava/io/IOException;

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    new-instance v3, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 38
    .line 39
    const/16 v5, 0xa

    .line 40
    .line 41
    new-array v5, v5, [J

    .line 42
    .line 43
    fill-array-data v5, :array_0

    .line 44
    .line 45
    .line 46
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 60
    .line 61
    new-array v0, v0, [J

    .line 62
    .line 63
    fill-array-data v0, :array_1

    .line 64
    .line 65
    .line 66
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 67
    .line 68
    .line 69
    invoke-static {v1, v3, p0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-direct {v2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw v2

    .line 77
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 78
    .line 79
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 80
    .line 81
    new-array v0, v0, [J

    .line 82
    .line 83
    fill-array-data v0, :array_2

    .line 84
    .line 85
    .line 86
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw p0

    .line 97
    :cond_2
    new-instance v0, Ljava/io/IOException;

    .line 98
    .line 99
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    .line 100
    .line 101
    .line 102
    move-result p0

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 109
    .line 110
    const/16 v3, 0xc

    .line 111
    .line 112
    new-array v3, v3, [J

    .line 113
    .line 114
    fill-array-data v3, :array_3

    .line 115
    .line 116
    .line 117
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 118
    .line 119
    .line 120
    invoke-static {v2, v1, p0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    throw v0

    .line 128
    nop

    .line 129
    :array_0
    .array-data 8
        0x62652cfa7605fe26L    # 9.755405735597938E165
        0x5e2bae41e7fdab97L    # 4.3206081854854086E145
        -0xed41324c98cafabL    # -1.420637279281095E237
        -0x5d00c6f9ec7343c6L    # -4.096690611418471E-140
        0x40a3da1f2d138ffaL    # 2541.060890780759
        -0x45e668de381ca1f3L    # -8.074893570734443E-29
        -0x545b9c94e4656b34L    # -1.864290440481531E-98
        0x5442396132dee0c7L    # 7.785305093291654E97
        -0x54a26d6b5943f6c7L    # -8.450271728069322E-100
        -0x7db9e75d90367bd0L
    .end array-data

    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    :array_1
    .array-data 8
        0x1b7ce246bc530c83L    # 2.851138139229672E-176
        -0x7f20eebd3a2ada82L
        -0x42d706f74c9aac10L    # -4.436058456238383E-14
    .end array-data

    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    :array_2
    .array-data 8
        0x5236a1cbd466cc1dL    # 1.1255427664558164E88
        0x3bf8b747c0b593cfL    # 8.374085730126681E-20
        -0x71366344d183542fL
    .end array-data

    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    :array_3
    .array-data 8
        -0xe7c225d3f00bafcL    # -6.468027616640363E238
        0x16634b9ec636acacL    # 7.87746522198029E-201
        0x29fdee00cc5181a5L    # 2.039031348060985E-106
        0x57c4b62a661fde2cL    # 6.375609211575686E114
        -0x46e4772fd30fa744L    # -1.32573441276907E-33
        -0x4d55140f2c95af7aL    # -1.2781814465417362E-64
        0x58789b71d736900cL    # 1.5513172419675812E118
        0x701d46074e2f1803L    # 1.1361928601084596E232
        -0x49b4331dbdf41d56L    # -3.804351184138648E-47
        0x59f4fd63cd07a2ecL
        0x4121b615dea0d2eL    # 4.64504130628423E-289
        -0x49389059890c2a30L    # -8.210254575599112E-45
    .end array-data
.end method

.method private static zzg(I[BI)V
    .locals 1

    .line 1
    and-int/lit16 p2, p0, 0xff

    .line 2
    .line 3
    int-to-byte p2, p2

    .line 4
    const/4 v0, 0x1

    .line 5
    aput-byte p2, p1, v0

    .line 6
    .line 7
    ushr-int/lit8 p2, p0, 0x8

    .line 8
    .line 9
    and-int/lit16 p2, p2, 0xff

    .line 10
    .line 11
    int-to-byte p2, p2

    .line 12
    const/4 v0, 0x2

    .line 13
    aput-byte p2, p1, v0

    .line 14
    .line 15
    ushr-int/lit8 p2, p0, 0x10

    .line 16
    .line 17
    and-int/lit16 p2, p2, 0xff

    .line 18
    .line 19
    int-to-byte p2, p2

    .line 20
    const/4 v0, 0x3

    .line 21
    aput-byte p2, p1, v0

    .line 22
    .line 23
    shr-int/lit8 p0, p0, 0x18

    .line 24
    .line 25
    int-to-byte p0, p0

    .line 26
    const/4 p2, 0x4

    .line 27
    aput-byte p0, p1, p2

    .line 28
    .line 29
    return-void
.end method

.method private static zzh(Ljava/util/Map;Ljava/nio/channels/FileChannel;JJJLjava/nio/ByteBuffer;)V
    .locals 14

    .line 1
    const/4 v1, 0x6

    .line 2
    const/4 v0, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v3

    .line 8
    if-nez v3, :cond_3

    .line 9
    .line 10
    new-instance v3, Lcom/google/android/gms/internal/ads/zzapa;

    .line 11
    .line 12
    const-wide/16 v6, 0x0

    .line 13
    .line 14
    move-object v4, v3

    .line 15
    move-object v5, p1

    .line 16
    move-wide/from16 v8, p2

    .line 17
    .line 18
    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzapa;-><init>(Ljava/nio/channels/FileChannel;JJ)V

    .line 19
    .line 20
    .line 21
    sub-long v12, p6, p4

    .line 22
    .line 23
    new-instance v4, Lcom/google/android/gms/internal/ads/zzapa;

    .line 24
    .line 25
    move-object v8, v4

    .line 26
    move-object v9, p1

    .line 27
    move-wide/from16 v10, p4

    .line 28
    .line 29
    invoke-direct/range {v8 .. v13}, Lcom/google/android/gms/internal/ads/zzapa;-><init>(Ljava/nio/channels/FileChannel;JJ)V

    .line 30
    .line 31
    .line 32
    invoke-virtual/range {p8 .. p8}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 37
    .line 38
    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 39
    .line 40
    .line 41
    move-wide/from16 v6, p2

    .line 42
    .line 43
    invoke-static {v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzaph;->zzd(Ljava/nio/ByteBuffer;J)V

    .line 44
    .line 45
    .line 46
    new-instance v6, Lcom/google/android/gms/internal/ads/zzaoy;

    .line 47
    .line 48
    invoke-direct {v6, v5}, Lcom/google/android/gms/internal/ads/zzaoy;-><init>(Ljava/nio/ByteBuffer;)V

    .line 49
    .line 50
    .line 51
    invoke-interface {p0}, Ljava/util/Map;->size()I

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    new-array v7, v5, [I

    .line 56
    .line 57
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 58
    .line 59
    .line 60
    move-result-object v8

    .line 61
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object v8

    .line 65
    const/4 v9, 0x0

    .line 66
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v10

    .line 70
    if-eqz v10, :cond_0

    .line 71
    .line 72
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v10

    .line 76
    check-cast v10, Ljava/lang/Integer;

    .line 77
    .line 78
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 79
    .line 80
    .line 81
    move-result v10

    .line 82
    aput v10, v7, v9

    .line 83
    .line 84
    add-int/2addr v9, v2

    .line 85
    goto :goto_0

    .line 86
    :cond_0
    const/4 v8, 0x3

    .line 87
    :try_start_0
    new-array v8, v8, [Lcom/google/android/gms/internal/ads/zzaoz;

    .line 88
    .line 89
    aput-object v3, v8, v0

    .line 90
    .line 91
    aput-object v4, v8, v2

    .line 92
    .line 93
    const/4 v3, 0x2

    .line 94
    aput-object v6, v8, v3

    .line 95
    .line 96
    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/zzapg;->zzk([I[Lcom/google/android/gms/internal/ads/zzaoz;)[[B

    .line 97
    .line 98
    .line 99
    move-result-object v3
    :try_end_0
    .catch Ljava/security/DigestException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_1
    if-ge v0, v5, :cond_2

    .line 101
    .line 102
    aget v4, v7, v0

    .line 103
    .line 104
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    move-object v8, p0

    .line 109
    invoke-interface {p0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    check-cast v6, [B

    .line 114
    .line 115
    aget-object v9, v3, v0

    .line 116
    .line 117
    invoke-static {v6, v9}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    .line 118
    .line 119
    .line 120
    move-result v6

    .line 121
    if-eqz v6, :cond_1

    .line 122
    .line 123
    add-int/2addr v0, v2

    .line 124
    goto :goto_1

    .line 125
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    .line 126
    .line 127
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzapg;->zzd(I)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 132
    .line 133
    new-array v1, v1, [J

    .line 134
    .line 135
    fill-array-data v1, :array_0

    .line 136
    .line 137
    .line 138
    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    throw v0

    .line 153
    :cond_2
    return-void

    .line 154
    :catch_0
    move-exception v0

    .line 155
    new-instance v2, Ljava/lang/SecurityException;

    .line 156
    .line 157
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 158
    .line 159
    new-array v1, v1, [J

    .line 160
    .line 161
    fill-array-data v1, :array_1

    .line 162
    .line 163
    .line 164
    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-direct {v2, v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 172
    .line 173
    .line 174
    throw v2

    .line 175
    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    .line 176
    .line 177
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 178
    .line 179
    const/4 v2, 0x4

    .line 180
    new-array v2, v2, [J

    .line 181
    .line 182
    fill-array-data v2, :array_2

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
    move-result-object v1

    .line 192
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    throw v0

    .line 196
    nop

    .line 197
    :array_0
    .array-data 8
        0x5c760e5dc2ac8ecbL    # 2.5649985270754402E137
        0x1630211dec93c0cfL    # 8.231142605954504E-202
        -0x7c67d3e38778f8faL    # -2.42226888740661E-291
        0x334aa49c2bb505c6L    # 1.2953112944087848E-61
        0x7b69a66852d44c8bL    # 3.0513621878397674E286
        0x3d623807e783c411L    # 5.178114466524311E-13
    .end array-data

    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    :array_1
    .array-data 8
        -0x7e4d56a7f4b0bb2bL    # -1.74160987344274E-300
        0x652e81860b29ce0L
        -0x4ddd5357c6fa0335L    # -3.463367733248375E-67
        0x7d30fccb374ecb4aL    # 1.084937248650214E295
        -0x44fb26a3282cb18dL    # -2.1557436139296244E-24
        -0x32e86e2e0c13dfb2L    # -2.4239937790590607E63
    .end array-data

    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
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
    :array_2
    .array-data 8
        -0xe2056d9be025689L    # -3.2986604904894323E240
        0x4446d801134f1e50L    # 8.427862252786224E20
        0xd523a6cc41a6dc9L
        0x4fd3fd6a5cebfd26L    # 3.6166762083005494E76
    .end array-data
.end method

.method private static zzi(Ljava/nio/ByteBuffer;)[B
    .locals 6

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-ltz v1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-gt v1, v2, :cond_0

    .line 13
    .line 14
    new-array v0, v1, [B

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 17
    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_0
    new-instance v2, Ljava/io/IOException;

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 32
    .line 33
    const/16 v5, 0x8

    .line 34
    .line 35
    new-array v5, v5, [J

    .line 36
    .line 37
    fill-array-data v5, :array_0

    .line 38
    .line 39
    .line 40
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 54
    .line 55
    new-array v0, v0, [J

    .line 56
    .line 57
    fill-array-data v0, :array_1

    .line 58
    .line 59
    .line 60
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 61
    .line 62
    .line 63
    invoke-static {v1, v3, p0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-direct {v2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw v2

    .line 71
    :cond_1
    new-instance p0, Ljava/io/IOException;

    .line 72
    .line 73
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 74
    .line 75
    new-array v0, v0, [J

    .line 76
    .line 77
    fill-array-data v0, :array_2

    .line 78
    .line 79
    .line 80
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p0

    .line 91
    :array_0
    .array-data 8
        0x22c81ebe51f4d4cL
        0x2995b4988d467e7bL
        0x5a163e8c3a75bc57L    # 9.411036977386546E125
        0x7ae0e544954dfc07L    # 7.8512530587967E283
        0x185caca30c1bf47eL
        0x4640f0a1d979b1dfL    # 2.68424533328142E30
        -0x442c6877a5643b41L    # -1.6595005421174152E-20
        0x48f20ad21bdd2e14L    # 2.5147252047969393E43
    .end array-data

    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
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
    :array_1
    .array-data 8
        -0x23b0073d0b98b8c5L    # -4.647657529457768E136
        0x3339b6cc8646542cL    # 6.250741313831903E-62
        0x2ead1bc88349a0d3L    # 7.491891296981142E-84
    .end array-data

    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    :array_2
    .array-data 8
        0x1878f34e73869fe0L    # 8.749848745447696E-191
        0x4d21baf1b472f337L    # 3.646901025481356E63
        0x51e53a40bbb0860eL    # 3.2990481222551895E86
    .end array-data
.end method

.method private static zzj(Ljava/nio/ByteBuffer;Ljava/util/Map;Ljava/security/cert/CertificateFactory;)[Ljava/security/cert/X509Certificate;
    .locals 22

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v4, 0x5

    .line 3
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzapg;->zzf(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    .line 6
    move-result-object v5

    .line 7
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzapg;->zzf(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    .line 10
    move-result-object v6

    .line 11
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzapg;->zzi(Ljava/nio/ByteBuffer;)[B

    .line 12
    .line 13
    .line 14
    move-result-object v7

    .line 15
    new-instance v8, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    const/4 v10, -0x1

    .line 21
    const/4 v12, -0x1

    .line 22
    const/4 v13, 0x0

    .line 23
    const/4 v14, 0x0

    .line 24
    :cond_0
    :goto_0
    invoke-virtual {v6}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 25
    .line 26
    .line 27
    move-result v15

    .line 28
    const/16 v11, 0x8

    .line 29
    .line 30
    const/16 v9, 0x301

    .line 31
    .line 32
    const/16 v2, 0x202

    .line 33
    .line 34
    const/16 v3, 0x201

    .line 35
    .line 36
    if-eqz v15, :cond_4

    .line 37
    .line 38
    add-int/2addr v13, v0

    .line 39
    :try_start_0
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzapg;->zzf(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 40
    .line 41
    .line 42
    move-result-object v15

    .line 43
    invoke-virtual {v15}, Ljava/nio/Buffer;->remaining()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-lt v1, v11, :cond_3

    .line 48
    .line 49
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->getInt()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v11

    .line 57
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    if-eq v1, v3, :cond_1

    .line 61
    .line 62
    if-eq v1, v2, :cond_1

    .line 63
    .line 64
    if-eq v1, v9, :cond_1

    .line 65
    .line 66
    packed-switch v1, :pswitch_data_0

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    :pswitch_0
    if-eq v12, v10, :cond_2

    .line 71
    .line 72
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzapg;->zzc(I)I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    invoke-static {v12}, Lcom/google/android/gms/internal/ads/zzapg;->zzc(I)I

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-eq v2, v0, :cond_0

    .line 81
    .line 82
    if-eq v3, v0, :cond_2

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    goto :goto_1

    .line 87
    :catch_1
    move-exception v0

    .line 88
    goto :goto_1

    .line 89
    :cond_2
    invoke-static {v15}, Lcom/google/android/gms/internal/ads/zzapg;->zzi(Ljava/nio/ByteBuffer;)[B

    .line 90
    .line 91
    .line 92
    move-result-object v14

    .line 93
    move v12, v1

    .line 94
    goto :goto_0

    .line 95
    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    .line 96
    .line 97
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 98
    .line 99
    new-array v2, v4, [J

    .line 100
    .line 101
    fill-array-data v2, :array_0

    .line 102
    .line 103
    .line 104
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_1
    new-instance v1, Ljava/lang/SecurityException;

    .line 116
    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 123
    .line 124
    const/4 v4, 0x6

    .line 125
    new-array v4, v4, [J

    .line 126
    .line 127
    fill-array-data v4, :array_1

    .line 128
    .line 129
    .line 130
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 131
    .line 132
    .line 133
    invoke-static {v3, v2, v13}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    .line 139
    .line 140
    throw v1

    .line 141
    :cond_4
    if-ne v12, v10, :cond_6

    .line 142
    .line 143
    if-nez v13, :cond_5

    .line 144
    .line 145
    new-instance v0, Ljava/lang/SecurityException;

    .line 146
    .line 147
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 148
    .line 149
    const/4 v2, 0x4

    .line 150
    new-array v2, v2, [J

    .line 151
    .line 152
    fill-array-data v2, :array_2

    .line 153
    .line 154
    .line 155
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    throw v0

    .line 166
    :cond_5
    new-instance v0, Ljava/lang/SecurityException;

    .line 167
    .line 168
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 169
    .line 170
    new-array v2, v4, [J

    .line 171
    .line 172
    fill-array-data v2, :array_3

    .line 173
    .line 174
    .line 175
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    throw v0

    .line 186
    :cond_6
    if-eq v12, v3, :cond_8

    .line 187
    .line 188
    if-eq v12, v2, :cond_8

    .line 189
    .line 190
    if-eq v12, v9, :cond_7

    .line 191
    .line 192
    packed-switch v12, :pswitch_data_1

    .line 193
    .line 194
    .line 195
    int-to-long v0, v12

    .line 196
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 197
    .line 198
    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 207
    .line 208
    new-array v3, v4, [J

    .line 209
    .line 210
    fill-array-data v3, :array_4

    .line 211
    .line 212
    .line 213
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    throw v2

    .line 228
    :pswitch_1
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 229
    .line 230
    const/4 v6, 0x2

    .line 231
    new-array v10, v6, [J

    .line 232
    .line 233
    fill-array-data v10, :array_5

    .line 234
    .line 235
    .line 236
    invoke-direct {v1, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    goto :goto_2

    .line 244
    :cond_7
    const/4 v6, 0x2

    .line 245
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 246
    .line 247
    new-array v10, v6, [J

    .line 248
    .line 249
    fill-array-data v10, :array_6

    .line 250
    .line 251
    .line 252
    invoke-direct {v1, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    goto :goto_2

    .line 260
    :cond_8
    const/4 v6, 0x2

    .line 261
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 262
    .line 263
    new-array v10, v6, [J

    .line 264
    .line 265
    fill-array-data v10, :array_7

    .line 266
    .line 267
    .line 268
    invoke-direct {v1, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    :goto_2
    if-eq v12, v3, :cond_b

    .line 276
    .line 277
    if-eq v12, v2, :cond_a

    .line 278
    .line 279
    if-eq v12, v9, :cond_9

    .line 280
    .line 281
    packed-switch v12, :pswitch_data_2

    .line 282
    .line 283
    .line 284
    int-to-long v0, v12

    .line 285
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 286
    .line 287
    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 296
    .line 297
    new-array v3, v4, [J

    .line 298
    .line 299
    fill-array-data v3, :array_8

    .line 300
    .line 301
    .line 302
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    throw v2

    .line 317
    :pswitch_2
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 318
    .line 319
    const/4 v3, 0x3

    .line 320
    new-array v6, v3, [J

    .line 321
    .line 322
    fill-array-data v6, :array_9

    .line 323
    .line 324
    .line 325
    invoke-direct {v2, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v2

    .line 332
    const/4 v6, 0x0

    .line 333
    invoke-static {v2, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 334
    .line 335
    .line 336
    move-result-object v2

    .line 337
    goto/16 :goto_4

    .line 338
    .line 339
    :pswitch_3
    const/4 v3, 0x3

    .line 340
    const/4 v6, 0x0

    .line 341
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 342
    .line 343
    new-array v9, v3, [J

    .line 344
    .line 345
    fill-array-data v9, :array_a

    .line 346
    .line 347
    .line 348
    invoke-direct {v2, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v2

    .line 355
    invoke-static {v2, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 356
    .line 357
    .line 358
    move-result-object v2

    .line 359
    goto/16 :goto_4

    .line 360
    .line 361
    :pswitch_4
    new-instance v2, Ljava/security/spec/PSSParameterSpec;

    .line 362
    .line 363
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 364
    .line 365
    const/4 v6, 0x2

    .line 366
    new-array v9, v6, [J

    .line 367
    .line 368
    fill-array-data v9, :array_b

    .line 369
    .line 370
    .line 371
    invoke-direct {v3, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v17

    .line 378
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 379
    .line 380
    new-array v6, v6, [J

    .line 381
    .line 382
    fill-array-data v6, :array_c

    .line 383
    .line 384
    .line 385
    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v18

    .line 392
    sget-object v19, Ljava/security/spec/MGF1ParameterSpec;->SHA512:Ljava/security/spec/MGF1ParameterSpec;

    .line 393
    .line 394
    const/16 v20, 0x40

    .line 395
    .line 396
    const/16 v21, 0x1

    .line 397
    .line 398
    move-object/from16 v16, v2

    .line 399
    .line 400
    invoke-direct/range {v16 .. v21}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    .line 401
    .line 402
    .line 403
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 404
    .line 405
    const/4 v6, 0x4

    .line 406
    new-array v9, v6, [J

    .line 407
    .line 408
    fill-array-data v9, :array_d

    .line 409
    .line 410
    .line 411
    invoke-direct {v3, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 412
    .line 413
    .line 414
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v3

    .line 418
    invoke-static {v3, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 419
    .line 420
    .line 421
    move-result-object v2

    .line 422
    :goto_3
    const/4 v6, 0x0

    .line 423
    goto/16 :goto_4

    .line 424
    .line 425
    :pswitch_5
    new-instance v2, Ljava/security/spec/PSSParameterSpec;

    .line 426
    .line 427
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 428
    .line 429
    const/4 v6, 0x2

    .line 430
    new-array v9, v6, [J

    .line 431
    .line 432
    fill-array-data v9, :array_e

    .line 433
    .line 434
    .line 435
    invoke-direct {v3, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 436
    .line 437
    .line 438
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v17

    .line 442
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 443
    .line 444
    new-array v6, v6, [J

    .line 445
    .line 446
    fill-array-data v6, :array_f

    .line 447
    .line 448
    .line 449
    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 450
    .line 451
    .line 452
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object v18

    .line 456
    sget-object v19, Ljava/security/spec/MGF1ParameterSpec;->SHA256:Ljava/security/spec/MGF1ParameterSpec;

    .line 457
    .line 458
    const/16 v20, 0x20

    .line 459
    .line 460
    const/16 v21, 0x1

    .line 461
    .line 462
    move-object/from16 v16, v2

    .line 463
    .line 464
    invoke-direct/range {v16 .. v21}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    .line 465
    .line 466
    .line 467
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 468
    .line 469
    const/4 v6, 0x4

    .line 470
    new-array v9, v6, [J

    .line 471
    .line 472
    fill-array-data v9, :array_10

    .line 473
    .line 474
    .line 475
    invoke-direct {v3, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 476
    .line 477
    .line 478
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object v3

    .line 482
    invoke-static {v3, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 483
    .line 484
    .line 485
    move-result-object v2

    .line 486
    goto :goto_3

    .line 487
    :cond_9
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 488
    .line 489
    const/4 v3, 0x3

    .line 490
    new-array v6, v3, [J

    .line 491
    .line 492
    fill-array-data v6, :array_11

    .line 493
    .line 494
    .line 495
    invoke-direct {v2, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 496
    .line 497
    .line 498
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v2

    .line 502
    const/4 v6, 0x0

    .line 503
    invoke-static {v2, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 504
    .line 505
    .line 506
    move-result-object v2

    .line 507
    goto :goto_4

    .line 508
    :cond_a
    const/4 v3, 0x3

    .line 509
    const/4 v6, 0x0

    .line 510
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 511
    .line 512
    new-array v9, v3, [J

    .line 513
    .line 514
    fill-array-data v9, :array_12

    .line 515
    .line 516
    .line 517
    invoke-direct {v2, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 518
    .line 519
    .line 520
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object v2

    .line 524
    invoke-static {v2, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 525
    .line 526
    .line 527
    move-result-object v2

    .line 528
    goto :goto_4

    .line 529
    :cond_b
    const/4 v3, 0x3

    .line 530
    const/4 v6, 0x0

    .line 531
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 532
    .line 533
    new-array v9, v3, [J

    .line 534
    .line 535
    fill-array-data v9, :array_13

    .line 536
    .line 537
    .line 538
    invoke-direct {v2, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 539
    .line 540
    .line 541
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 542
    .line 543
    .line 544
    move-result-object v2

    .line 545
    invoke-static {v2, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 546
    .line 547
    .line 548
    move-result-object v2

    .line 549
    :goto_4
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 550
    .line 551
    check-cast v3, Ljava/lang/String;

    .line 552
    .line 553
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 554
    .line 555
    check-cast v2, Ljava/security/spec/AlgorithmParameterSpec;

    .line 556
    .line 557
    :try_start_1
    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    .line 558
    .line 559
    .line 560
    move-result-object v1

    .line 561
    new-instance v9, Ljava/security/spec/X509EncodedKeySpec;

    .line 562
    .line 563
    invoke-direct {v9, v7}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 564
    .line 565
    .line 566
    invoke-virtual {v1, v9}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 567
    .line 568
    .line 569
    move-result-object v1

    .line 570
    invoke-static {v3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    .line 571
    .line 572
    .line 573
    move-result-object v9

    .line 574
    invoke-virtual {v9, v1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 575
    .line 576
    .line 577
    if-eqz v2, :cond_c

    .line 578
    .line 579
    invoke-virtual {v9, v2}, Ljava/security/Signature;->setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 580
    .line 581
    .line 582
    goto :goto_5

    .line 583
    :catch_2
    move-exception v0

    .line 584
    goto/16 :goto_a

    .line 585
    .line 586
    :catch_3
    move-exception v0

    .line 587
    goto/16 :goto_a

    .line 588
    .line 589
    :catch_4
    move-exception v0

    .line 590
    goto/16 :goto_a

    .line 591
    .line 592
    :catch_5
    move-exception v0

    .line 593
    goto/16 :goto_a

    .line 594
    .line 595
    :catch_6
    move-exception v0

    .line 596
    goto/16 :goto_a

    .line 597
    .line 598
    :cond_c
    :goto_5
    invoke-virtual {v9, v5}, Ljava/security/Signature;->update(Ljava/nio/ByteBuffer;)V

    .line 599
    .line 600
    .line 601
    invoke-virtual {v9, v14}, Ljava/security/Signature;->verify([B)Z

    .line 602
    .line 603
    .line 604
    move-result v1
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1} :catch_2

    .line 605
    if-eqz v1, :cond_16

    .line 606
    .line 607
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 608
    .line 609
    .line 610
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzapg;->zzf(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 611
    .line 612
    .line 613
    move-result-object v1

    .line 614
    new-instance v2, Ljava/util/ArrayList;

    .line 615
    .line 616
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 617
    .line 618
    .line 619
    move-object v9, v6

    .line 620
    const/4 v3, 0x0

    .line 621
    :cond_d
    :goto_6
    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 622
    .line 623
    .line 624
    move-result v6

    .line 625
    if-eqz v6, :cond_f

    .line 626
    .line 627
    add-int/2addr v3, v0

    .line 628
    :try_start_2
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzapg;->zzf(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 629
    .line 630
    .line 631
    move-result-object v6

    .line 632
    invoke-virtual {v6}, Ljava/nio/Buffer;->remaining()I

    .line 633
    .line 634
    .line 635
    move-result v10

    .line 636
    if-lt v10, v11, :cond_e

    .line 637
    .line 638
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    .line 639
    .line 640
    .line 641
    move-result v10

    .line 642
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 643
    .line 644
    .line 645
    move-result-object v13

    .line 646
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 647
    .line 648
    .line 649
    if-ne v10, v12, :cond_d

    .line 650
    .line 651
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzapg;->zzi(Ljava/nio/ByteBuffer;)[B

    .line 652
    .line 653
    .line 654
    move-result-object v9

    .line 655
    goto :goto_6

    .line 656
    :catch_7
    move-exception v0

    .line 657
    goto :goto_7

    .line 658
    :catch_8
    move-exception v0

    .line 659
    goto :goto_7

    .line 660
    :cond_e
    new-instance v0, Ljava/io/IOException;

    .line 661
    .line 662
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 663
    .line 664
    const/4 v2, 0x3

    .line 665
    new-array v2, v2, [J

    .line 666
    .line 667
    fill-array-data v2, :array_14

    .line 668
    .line 669
    .line 670
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 671
    .line 672
    .line 673
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 674
    .line 675
    .line 676
    move-result-object v1

    .line 677
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 678
    .line 679
    .line 680
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/nio/BufferUnderflowException; {:try_start_2 .. :try_end_2} :catch_7

    .line 681
    :goto_7
    new-instance v1, Ljava/io/IOException;

    .line 682
    .line 683
    new-instance v2, Ljava/lang/StringBuilder;

    .line 684
    .line 685
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 686
    .line 687
    .line 688
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 689
    .line 690
    new-array v4, v4, [J

    .line 691
    .line 692
    fill-array-data v4, :array_15

    .line 693
    .line 694
    .line 695
    invoke-direct {v5, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 696
    .line 697
    .line 698
    invoke-static {v5, v2, v3}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 699
    .line 700
    .line 701
    move-result-object v2

    .line 702
    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 703
    .line 704
    .line 705
    throw v1

    .line 706
    :cond_f
    invoke-virtual {v8, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 707
    .line 708
    .line 709
    move-result v1

    .line 710
    if-eqz v1, :cond_15

    .line 711
    .line 712
    invoke-static {v12}, Lcom/google/android/gms/internal/ads/zzapg;->zzc(I)I

    .line 713
    .line 714
    .line 715
    move-result v1

    .line 716
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 717
    .line 718
    .line 719
    move-result-object v2

    .line 720
    move-object/from16 v3, p1

    .line 721
    .line 722
    invoke-interface {v3, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    .line 724
    .line 725
    move-result-object v2

    .line 726
    check-cast v2, [B

    .line 727
    .line 728
    if-eqz v2, :cond_11

    .line 729
    .line 730
    invoke-static {v2, v9}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    .line 731
    .line 732
    .line 733
    move-result v2

    .line 734
    if-eqz v2, :cond_10

    .line 735
    .line 736
    goto :goto_8

    .line 737
    :cond_10
    new-instance v0, Ljava/lang/SecurityException;

    .line 738
    .line 739
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzapg;->zzd(I)Ljava/lang/String;

    .line 740
    .line 741
    .line 742
    move-result-object v1

    .line 743
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 744
    .line 745
    const/16 v3, 0xb

    .line 746
    .line 747
    new-array v3, v3, [J

    .line 748
    .line 749
    fill-array-data v3, :array_16

    .line 750
    .line 751
    .line 752
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 753
    .line 754
    .line 755
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 756
    .line 757
    .line 758
    move-result-object v2

    .line 759
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 760
    .line 761
    .line 762
    move-result-object v1

    .line 763
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 764
    .line 765
    .line 766
    throw v0

    .line 767
    :cond_11
    :goto_8
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzapg;->zzf(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 768
    .line 769
    .line 770
    move-result-object v1

    .line 771
    new-instance v2, Ljava/util/ArrayList;

    .line 772
    .line 773
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 774
    .line 775
    .line 776
    const/4 v3, 0x0

    .line 777
    :goto_9
    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 778
    .line 779
    .line 780
    move-result v5

    .line 781
    if-eqz v5, :cond_12

    .line 782
    .line 783
    add-int/2addr v3, v0

    .line 784
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzapg;->zzi(Ljava/nio/ByteBuffer;)[B

    .line 785
    .line 786
    .line 787
    move-result-object v5

    .line 788
    :try_start_3
    new-instance v6, Ljava/io/ByteArrayInputStream;

    .line 789
    .line 790
    invoke-direct {v6, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 791
    .line 792
    .line 793
    move-object/from16 v8, p2

    .line 794
    .line 795
    invoke-virtual {v8, v6}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    .line 796
    .line 797
    .line 798
    move-result-object v6

    .line 799
    check-cast v6, Ljava/security/cert/X509Certificate;
    :try_end_3
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_9

    .line 800
    .line 801
    new-instance v9, Lcom/google/android/gms/internal/ads/zzape;

    .line 802
    .line 803
    invoke-direct {v9, v6, v5}, Lcom/google/android/gms/internal/ads/zzape;-><init>(Ljava/security/cert/X509Certificate;[B)V

    .line 804
    .line 805
    .line 806
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 807
    .line 808
    .line 809
    goto :goto_9

    .line 810
    :catch_9
    move-exception v0

    .line 811
    new-instance v1, Ljava/lang/SecurityException;

    .line 812
    .line 813
    new-instance v2, Ljava/lang/StringBuilder;

    .line 814
    .line 815
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 816
    .line 817
    .line 818
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 819
    .line 820
    new-array v4, v4, [J

    .line 821
    .line 822
    fill-array-data v4, :array_17

    .line 823
    .line 824
    .line 825
    invoke-direct {v5, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 826
    .line 827
    .line 828
    invoke-static {v5, v2, v3}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 829
    .line 830
    .line 831
    move-result-object v2

    .line 832
    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 833
    .line 834
    .line 835
    throw v1

    .line 836
    :cond_12
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 837
    .line 838
    .line 839
    move-result v0

    .line 840
    if-nez v0, :cond_14

    .line 841
    .line 842
    const/4 v0, 0x0

    .line 843
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 844
    .line 845
    .line 846
    move-result-object v0

    .line 847
    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 848
    .line 849
    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    .line 850
    .line 851
    .line 852
    move-result-object v0

    .line 853
    invoke-interface {v0}, Ljava/security/Key;->getEncoded()[B

    .line 854
    .line 855
    .line 856
    move-result-object v0

    .line 857
    invoke-static {v7, v0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 858
    .line 859
    .line 860
    move-result v0

    .line 861
    if-eqz v0, :cond_13

    .line 862
    .line 863
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 864
    .line 865
    .line 866
    move-result v0

    .line 867
    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    .line 868
    .line 869
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 870
    .line 871
    .line 872
    move-result-object v0

    .line 873
    check-cast v0, [Ljava/security/cert/X509Certificate;

    .line 874
    .line 875
    return-object v0

    .line 876
    :cond_13
    new-instance v0, Ljava/lang/SecurityException;

    .line 877
    .line 878
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 879
    .line 880
    const/16 v2, 0x9

    .line 881
    .line 882
    new-array v2, v2, [J

    .line 883
    .line 884
    fill-array-data v2, :array_18

    .line 885
    .line 886
    .line 887
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 888
    .line 889
    .line 890
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 891
    .line 892
    .line 893
    move-result-object v1

    .line 894
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 895
    .line 896
    .line 897
    throw v0

    .line 898
    :cond_14
    new-instance v0, Ljava/lang/SecurityException;

    .line 899
    .line 900
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 901
    .line 902
    const/4 v2, 0x4

    .line 903
    new-array v2, v2, [J

    .line 904
    .line 905
    fill-array-data v2, :array_19

    .line 906
    .line 907
    .line 908
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 909
    .line 910
    .line 911
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 912
    .line 913
    .line 914
    move-result-object v1

    .line 915
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 916
    .line 917
    .line 918
    throw v0

    .line 919
    :cond_15
    new-instance v0, Ljava/lang/SecurityException;

    .line 920
    .line 921
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 922
    .line 923
    const/16 v2, 0xa

    .line 924
    .line 925
    new-array v2, v2, [J

    .line 926
    .line 927
    fill-array-data v2, :array_1a

    .line 928
    .line 929
    .line 930
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 931
    .line 932
    .line 933
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 934
    .line 935
    .line 936
    move-result-object v1

    .line 937
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 938
    .line 939
    .line 940
    throw v0

    .line 941
    :cond_16
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 942
    .line 943
    .line 944
    move-result-object v0

    .line 945
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 946
    .line 947
    new-array v2, v4, [J

    .line 948
    .line 949
    fill-array-data v2, :array_1b

    .line 950
    .line 951
    .line 952
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 953
    .line 954
    .line 955
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 956
    .line 957
    .line 958
    move-result-object v1

    .line 959
    new-instance v2, Ljava/lang/SecurityException;

    .line 960
    .line 961
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 962
    .line 963
    .line 964
    move-result-object v0

    .line 965
    invoke-direct {v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 966
    .line 967
    .line 968
    throw v2

    .line 969
    :goto_a
    new-instance v1, Ljava/lang/SecurityException;

    .line 970
    .line 971
    new-instance v2, Ljava/lang/StringBuilder;

    .line 972
    .line 973
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 974
    .line 975
    .line 976
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 977
    .line 978
    const/4 v5, 0x4

    .line 979
    new-array v5, v5, [J

    .line 980
    .line 981
    fill-array-data v5, :array_1c

    .line 982
    .line 983
    .line 984
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 985
    .line 986
    .line 987
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 988
    .line 989
    .line 990
    move-result-object v4

    .line 991
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 992
    .line 993
    .line 994
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 995
    .line 996
    .line 997
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 998
    .line 999
    const/4 v4, 0x3

    .line 1000
    new-array v4, v4, [J

    .line 1001
    .line 1002
    fill-array-data v4, :array_1d

    .line 1003
    .line 1004
    .line 1005
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 1006
    .line 1007
    .line 1008
    invoke-static {v3, v2}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 1009
    .line 1010
    .line 1011
    move-result-object v2

    .line 1012
    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1013
    .line 1014
    .line 1015
    throw v1

    .line 1016
    nop

    .line 1017
    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    :pswitch_data_1
    .packed-switch 0x101
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    :pswitch_data_2
    .packed-switch 0x101
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    :array_0
    .array-data 8
        0x7b95bff749582fa2L
        0x3338e67dcb587f85L    # 6.052941478209513E-62
        0x463bd9dbdbf5a65bL    # 2.2065844285005638E30
        -0x13fbd2acfd9f7f33L    # -2.122680277888068E212
        -0x25061f94851653a7L    # -1.793684388992702E130
    .end array-data

    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    :array_1
    .array-data 8
        0x2b16b8aed5109745L    # 4.057858433788491E-101
        0xe198d60a4738b65L    # 9.580159188699544E-241
        -0x68768b719f3427f7L
        -0x7289b90653ed32a8L    # -8.15652261730632E-244
        -0x7f6c2ef8b2b112b0L    # -7.054914469273024E-306
        -0x2b2bbf2f4d6ce287L    # -4.429879241555628E100
    .end array-data

    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    :array_2
    .array-data 8
        -0x2e3c71784f373a40L    # -7.598461069653805E85
        0xe7121856470400bL    # 4.110594979176462E-239
        0x78cddc9d2a29cf50L    # 8.077215458031303E273
        0x2f4aeb4f8d3f135cL    # 7.094683789478336E-81
    .end array-data

    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    :array_3
    .array-data 8
        -0x1a707f21ae9801e8L    # -1.6340477104420137E181
        -0x1ea39787183ac3bfL    # -9.984810147195981E160
        -0x6d56292e4c25babeL    # -9.149790930489978E-219
        -0x52229478014a7796L    # -9.24324768659109E-88
        -0x7af0ac7e65e8cd3cL
    .end array-data

    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    :array_4
    .array-data 8
        0x4807469ea21073f3L    # 9.900455086055085E38
        -0x2ebf9f0e0f077976L    # -2.4858105407380166E83
        0x7e19e7fdc78acc4bL    # 2.710813823172482E299
        -0x71984959ca9abb28L    # -2.84504166933753E-239
        -0x6d13747a0d79467L
    .end array-data

    :array_5
    .array-data 8
        -0x719a8821f38a9815L
        0x53423141bb47ed21L    # 1.1858749473942441E93
    .end array-data

    :array_6
    .array-data 8
        -0x4cc24f4ece7eacd5L    # -7.217288733550887E-62
        0x32da531b436b10c5L    # 9.998694108222011E-64
    .end array-data

    :array_7
    .array-data 8
        0xd614d5fc43d0089L
        0x25a493004cd0ef8fL
    .end array-data

    :array_8
    .array-data 8
        -0x73bedf43d816ac44L
        0x3680741b15367caaL    # 3.602549669500106E-46
        -0x7d0a02a1bcd1407L    # -8.287450735648125E270
        0x2e80aacaed8e014fL    # 1.0724395058683225E-84
        0x1a3733285d8b680dL
    .end array-data

    :array_9
    .array-data 8
        -0x2683fb0f64f6e2e2L    # -1.1576451933508568E123
        0x2bfcd8e9cd412a27L    # 8.44086277410938E-97
        0x637e8dabe93f756aL    # 1.8449184028329988E171
    .end array-data

    :array_a
    .array-data 8
        -0x64a5260ef752a2d0L    # -6.626259306222891E-177
        -0x652a61c72cb01afaL
        -0x3e14e163a76d162fL    # -3.639927492591042E9
    .end array-data

    :array_b
    .array-data 8
        0x2f1c7e2bc14e6b5dL    # 9.386791217433697E-82
        0xc7b7a7a41e3d10eL
    .end array-data

    :array_c
    .array-data 8
        -0xec37ead4f18d381L    # -2.9002818563128377E237
        0x3d8c57295f6fdce5L    # 3.2219389878307447E-12
    .end array-data

    :array_d
    .array-data 8
        -0x773c1b4e11f8c52fL
        0x5e44703dc6799a59L    # 1.2760735721546164E146
        0x2d00c429f342e6dcL    # 6.430247069394408E-92
        -0x74561cb73bdec6c1L
    .end array-data

    :array_e
    .array-data 8
        -0x795bb7620a65477bL    # -1.144248419988502E-276
        0x31fdbdbbb93af63cL    # 6.894752531256908E-68
    .end array-data

    :array_f
    .array-data 8
        -0x7be387354475a76dL    # -7.303983078524772E-289
        0x14b6d27f649f2145L    # 6.941951855504809E-209
    .end array-data

    :array_10
    .array-data 8
        -0x313d77738adad1e4L    # -2.5582555780110135E71
        0x7e76031e7569c276L    # 1.4741402560071155E301
        0x122aa799eae0df8dL
        0x6d8f09fed6db99f5L    # 5.4784184843095295E219
    .end array-data

    :array_11
    .array-data 8
        0x16f0fd6798bfd82cL    # 3.551343764452429E-198
        0x3724b7fdc2af173L
        0x6dca341c4b8585e6L    # 7.399921002282865E220
    .end array-data

    :array_12
    .array-data 8
        0x13fe5956faf08a3dL
        -0x5e01eee7a92ae9beL
        -0x311746cfd26aa413L    # -1.3650766095866684E72
    .end array-data

    :array_13
    .array-data 8
        0x2b87791ee6a6f984L    # 5.365897813097231E-99
        -0x4630c0cceb47ec99L    # -3.0811795830775296E-30
        0x548d767b032515e0L    # 2.01383007530449E99
    .end array-data

    :array_14
    .array-data 8
        -0x51410848774f93f2L    # -1.594077322164085E-83
        0x35e6328cce447bf8L    # 4.746287238495113E-49
        -0x5e32c1a85e6c5d9L
    .end array-data

    :array_15
    .array-data 8
        -0x49b6e2462bf6aa40L    # -3.4370288917641637E-47
        0x2eedc8d09b8e6b0fL    # 1.2265366772154376E-82
        -0x21d12885d00068ffL    # -4.814002890507594E145
        -0xa440ae23051dcc6L    # -1.343304304889551E259
        0x1f9ba2048640a2b5L
    .end array-data

    :array_16
    .array-data 8
        -0x404fffb90144eb8cL    # -0.06250423163426594
        0x4f4bc374560fc635L    # 9.810769540760032E73
        0x369614b7c32c57ccL    # 9.669366214635764E-46
        -0x1be38c09ca4b35dfL    # -1.7593214703823257E174
        -0x539a021c98014c61L    # -8.236660924944769E-95
        0x21013524082a70f8L
        -0x2b9972d338811769L    # -3.853570869757216E98
        -0x1f0af4544780feL
        -0x10653e8ef6b9414L
        -0x43e7c6740d1b79e2L    # -3.2830714735366846E-19
        -0x562ada697a0d9fa8L
    .end array-data

    :array_17
    .array-data 8
        -0x12b103ac0bb95cdfL    # -3.4181220771562724E218
        0x46b08ab5af3f467fL    # 3.355082687330008E32
        -0x7bb53c2a439f6a4bL    # -5.49289229037093E-288
        -0x772b3eafa6d1863aL    # -4.022993650439998E-266
        -0x1942f9ea37d02309L    # -7.8928009579236745E186
    .end array-data

    :array_18
    .array-data 8
        0x772bb763c51001acL
        0x13a345bb1746f906L    # 4.472481756090383E-214
        0x41b7397e63e0ccd9L    # 3.896438758781257E8
        -0x4843c8e4d163ae17L    # -3.238952831247817E-40
        0x3927a45d2f62376fL    # 2.276646302763619E-33
        -0x4f51c529e357f1caL    # -3.341694767637458E-74
        0x5f875d914add25aeL    # 1.5296880495331235E152
        0x70cf3b9046a36350L    # 2.482651422551758E235
        -0x2317768627665ae8L    # -3.652495979527564E139
    .end array-data

    :array_19
    .array-data 8
        0x6b0d0feccae2fbb2L    # 4.665257506818263E207
        0x17fc5609d7ee358cL    # 3.881706370888955E-193
        0x7aa27ba9d74bb878L
        0x300de632fa96ff5aL    # 3.22768329562789E-77
    .end array-data

    :array_1a
    .array-data 8
        0x6c4a9b81185fe80eL    # 4.4786797746489155E213
        0x4ff2e20cee7b7a1dL    # 1.366564473850532E77
        0x4a7de1afd87cb666L    # 6.9875187032212024E50
        0x7f3dcc4bad1d8b5aL    # 8.173784404577834E304
        -0x2732f506aa362337L    # -5.859057804999103E119
        -0x25722fdaab9db1afL    # -1.6144881754325947E128
        -0x105c3b3714d9405fL    # -5.994384782737895E229
        -0x22152273d6caa762L    # -2.620846429405017E144
        -0xea0cf06455f4ee2L    # -1.269434259095566E238
        0x40473ab27cf93da7L    # 46.45857202691996
    .end array-data

    :array_1b
    .array-data 8
        -0x1b3dc6ec9a191978L    # -2.3076301279988333E177
        -0x53ba97ba457585efL    # -2.0044423130987153E-95
        -0x3a2cce9724a2aa93L    # -2.375979089777298E28
        0x49cd9d1211ff2d6aL    # 3.381270469903932E47
        -0x5800c72ce0c40c0bL    # -4.952471726720742E-116
    .end array-data

    :array_1c
    .array-data 8
        0x50566803de670444L    # 1.0377893339919292E79
        -0x63336f113dc3797bL    # -5.913492726940734E-170
        -0x31817c7b91288b99L    # -1.3162380639825723E70
        0x7fdcf381627c8690L    # 8.132087642098807E307
    .end array-data

    :array_1d
    .array-data 8
        -0x14f60e537f843470L    # -4.164708493770105E207
        0x363d8585777819fbL    # 2.0199476371285981E-47
        -0x4b1876b6c2d2c2d7L    # -7.679067625449487E-54
    .end array-data
.end method

.method private static zzk([I[Lcom/google/android/gms/internal/ads/zzaoz;)[[B
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    const/4 v2, 0x3

    .line 5
    const/4 v3, 0x4

    .line 6
    const/4 v4, 0x1

    .line 7
    const/4 v5, 0x0

    .line 8
    const-wide/16 v6, 0x0

    .line 9
    .line 10
    move-wide v9, v6

    .line 11
    const/4 v8, 0x0

    .line 12
    :goto_0
    const-wide/32 v11, 0x100000

    .line 13
    .line 14
    .line 15
    if-ge v8, v2, :cond_0

    .line 16
    .line 17
    aget-object v13, p1, v8

    .line 18
    .line 19
    invoke-interface {v13}, Lcom/google/android/gms/internal/ads/zzaoz;->zza()J

    .line 20
    .line 21
    .line 22
    move-result-wide v13

    .line 23
    const-wide/32 v15, 0xfffff

    .line 24
    .line 25
    .line 26
    add-long/2addr v13, v15

    .line 27
    div-long/2addr v13, v11

    .line 28
    add-long/2addr v9, v13

    .line 29
    add-int/2addr v8, v4

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const-wide/32 v13, 0x1fffff

    .line 32
    .line 33
    .line 34
    cmp-long v8, v9, v13

    .line 35
    .line 36
    if-gez v8, :cond_9

    .line 37
    .line 38
    array-length v8, v0

    .line 39
    new-array v8, v8, [[B

    .line 40
    .line 41
    const/4 v13, 0x0

    .line 42
    :goto_1
    array-length v14, v0

    .line 43
    if-ge v13, v14, :cond_1

    .line 44
    .line 45
    long-to-int v14, v9

    .line 46
    aget v15, v0, v13

    .line 47
    .line 48
    invoke-static {v15}, Lcom/google/android/gms/internal/ads/zzapg;->zzb(I)I

    .line 49
    .line 50
    .line 51
    move-result v15

    .line 52
    mul-int v15, v15, v14

    .line 53
    .line 54
    add-int/2addr v15, v1

    .line 55
    new-array v15, v15, [B

    .line 56
    .line 57
    const/16 v16, 0x5a

    .line 58
    .line 59
    aput-byte v16, v15, v5

    .line 60
    .line 61
    invoke-static {v14, v15, v4}, Lcom/google/android/gms/internal/ads/zzapg;->zzg(I[BI)V

    .line 62
    .line 63
    .line 64
    aput-object v15, v8, v13

    .line 65
    .line 66
    add-int/2addr v13, v4

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    new-array v9, v1, [B

    .line 69
    .line 70
    const/16 v10, -0x5b

    .line 71
    .line 72
    aput-byte v10, v9, v5

    .line 73
    .line 74
    new-array v10, v14, [Ljava/security/MessageDigest;

    .line 75
    .line 76
    const/4 v13, 0x0

    .line 77
    :goto_2
    array-length v15, v0

    .line 78
    if-ge v13, v15, :cond_2

    .line 79
    .line 80
    aget v15, v0, v13

    .line 81
    .line 82
    invoke-static {v15}, Lcom/google/android/gms/internal/ads/zzapg;->zzd(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v15

    .line 86
    :try_start_0
    invoke-static {v15}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 87
    .line 88
    .line 89
    move-result-object v16

    .line 90
    aput-object v16, v10, v13
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .line 92
    add-int/2addr v13, v4

    .line 93
    goto :goto_2

    .line 94
    :catch_0
    move-exception v0

    .line 95
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 96
    .line 97
    new-array v2, v3, [J

    .line 98
    .line 99
    fill-array-data v2, :array_0

    .line 100
    .line 101
    .line 102
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {v15, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    new-instance v2, Ljava/lang/RuntimeException;

    .line 114
    .line 115
    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    .line 117
    .line 118
    throw v2

    .line 119
    :cond_2
    const/4 v13, 0x0

    .line 120
    const/4 v15, 0x0

    .line 121
    :goto_3
    if-ge v13, v2, :cond_7

    .line 122
    .line 123
    aget-object v3, p1, v13

    .line 124
    .line 125
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzaoz;->zza()J

    .line 126
    .line 127
    .line 128
    move-result-wide v17

    .line 129
    move-wide/from16 v19, v6

    .line 130
    .line 131
    move-wide/from16 v1, v17

    .line 132
    .line 133
    :goto_4
    cmp-long v21, v1, v6

    .line 134
    .line 135
    if-lez v21, :cond_6

    .line 136
    .line 137
    invoke-static {v1, v2, v11, v12}, Ljava/lang/Math;->min(JJ)J

    .line 138
    .line 139
    .line 140
    move-result-wide v6

    .line 141
    long-to-int v7, v6

    .line 142
    invoke-static {v7, v9, v4}, Lcom/google/android/gms/internal/ads/zzapg;->zzg(I[BI)V

    .line 143
    .line 144
    .line 145
    const/4 v6, 0x0

    .line 146
    :goto_5
    if-ge v6, v14, :cond_3

    .line 147
    .line 148
    aget-object v11, v10, v6

    .line 149
    .line 150
    invoke-virtual {v11, v9}, Ljava/security/MessageDigest;->update([B)V

    .line 151
    .line 152
    .line 153
    add-int/2addr v6, v4

    .line 154
    const-wide/32 v11, 0x100000

    .line 155
    .line 156
    .line 157
    goto :goto_5

    .line 158
    :cond_3
    move-wide/from16 v11, v19

    .line 159
    .line 160
    :try_start_1
    invoke-interface {v3, v10, v11, v12, v7}, Lcom/google/android/gms/internal/ads/zzaoz;->zzb([Ljava/security/MessageDigest;JI)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 161
    .line 162
    .line 163
    const/4 v6, 0x0

    .line 164
    :goto_6
    array-length v4, v0

    .line 165
    if-ge v6, v4, :cond_5

    .line 166
    .line 167
    aget v4, v0, v6

    .line 168
    .line 169
    move-object/from16 v20, v3

    .line 170
    .line 171
    aget-object v3, v8, v6

    .line 172
    .line 173
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzapg;->zzb(I)I

    .line 174
    .line 175
    .line 176
    move-result v4

    .line 177
    move-object/from16 v22, v9

    .line 178
    .line 179
    aget-object v9, v10, v6

    .line 180
    .line 181
    mul-int v23, v15, v4

    .line 182
    .line 183
    move-object/from16 v24, v10

    .line 184
    .line 185
    move/from16 v17, v14

    .line 186
    .line 187
    const/4 v10, 0x5

    .line 188
    add-int/lit8 v14, v23, 0x5

    .line 189
    .line 190
    invoke-virtual {v9, v3, v14, v4}, Ljava/security/MessageDigest;->digest([BII)I

    .line 191
    .line 192
    .line 193
    move-result v3

    .line 194
    if-ne v3, v4, :cond_4

    .line 195
    .line 196
    const/4 v4, 0x1

    .line 197
    add-int/2addr v6, v4

    .line 198
    move/from16 v14, v17

    .line 199
    .line 200
    move-object/from16 v3, v20

    .line 201
    .line 202
    move-object/from16 v9, v22

    .line 203
    .line 204
    move-object/from16 v10, v24

    .line 205
    .line 206
    goto :goto_6

    .line 207
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    .line 208
    .line 209
    invoke-virtual {v9}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    new-instance v2, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    .line 217
    .line 218
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 219
    .line 220
    new-array v5, v10, [J

    .line 221
    .line 222
    fill-array-data v5, :array_1

    .line 223
    .line 224
    .line 225
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v4

    .line 232
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 239
    .line 240
    const/4 v4, 0x3

    .line 241
    new-array v4, v4, [J

    .line 242
    .line 243
    fill-array-data v4, :array_2

    .line 244
    .line 245
    .line 246
    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 247
    .line 248
    .line 249
    invoke-static {v1, v2, v3}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    throw v0

    .line 257
    :cond_5
    move-object/from16 v20, v3

    .line 258
    .line 259
    move-object/from16 v22, v9

    .line 260
    .line 261
    move-object/from16 v24, v10

    .line 262
    .line 263
    move/from16 v17, v14

    .line 264
    .line 265
    const/4 v10, 0x5

    .line 266
    int-to-long v3, v7

    .line 267
    add-long v6, v11, v3

    .line 268
    .line 269
    sub-long/2addr v1, v3

    .line 270
    const/4 v3, 0x1

    .line 271
    add-int/2addr v15, v3

    .line 272
    move-object/from16 v3, v20

    .line 273
    .line 274
    move-object/from16 v10, v24

    .line 275
    .line 276
    const/4 v4, 0x1

    .line 277
    const-wide/32 v11, 0x100000

    .line 278
    .line 279
    .line 280
    move-wide/from16 v19, v6

    .line 281
    .line 282
    const-wide/16 v6, 0x0

    .line 283
    .line 284
    goto/16 :goto_4

    .line 285
    .line 286
    :catch_1
    move-exception v0

    .line 287
    move-object v1, v0

    .line 288
    new-instance v0, Ljava/security/DigestException;

    .line 289
    .line 290
    new-instance v2, Ljava/lang/StringBuilder;

    .line 291
    .line 292
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 293
    .line 294
    .line 295
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 296
    .line 297
    const/4 v4, 0x4

    .line 298
    new-array v4, v4, [J

    .line 299
    .line 300
    fill-array-data v4, :array_3

    .line 301
    .line 302
    .line 303
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v3

    .line 310
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 317
    .line 318
    const/4 v4, 0x3

    .line 319
    new-array v4, v4, [J

    .line 320
    .line 321
    fill-array-data v4, :array_4

    .line 322
    .line 323
    .line 324
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 325
    .line 326
    .line 327
    invoke-static {v3, v2, v5}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v2

    .line 331
    invoke-direct {v0, v2, v1}, Ljava/security/DigestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 332
    .line 333
    .line 334
    throw v0

    .line 335
    :cond_6
    move-object/from16 v22, v9

    .line 336
    .line 337
    move-object/from16 v24, v10

    .line 338
    .line 339
    move/from16 v17, v14

    .line 340
    .line 341
    const/4 v1, 0x1

    .line 342
    const/4 v4, 0x3

    .line 343
    const/4 v10, 0x5

    .line 344
    add-int/2addr v5, v1

    .line 345
    add-int/2addr v13, v1

    .line 346
    move-object/from16 v10, v24

    .line 347
    .line 348
    const/4 v1, 0x5

    .line 349
    const/4 v2, 0x3

    .line 350
    const/4 v3, 0x4

    .line 351
    const/4 v4, 0x1

    .line 352
    const-wide/16 v6, 0x0

    .line 353
    .line 354
    const-wide/32 v11, 0x100000

    .line 355
    .line 356
    .line 357
    goto/16 :goto_3

    .line 358
    .line 359
    :cond_7
    array-length v1, v0

    .line 360
    new-array v1, v1, [[B

    .line 361
    .line 362
    const/4 v5, 0x0

    .line 363
    :goto_7
    array-length v2, v0

    .line 364
    if-ge v5, v2, :cond_8

    .line 365
    .line 366
    aget v2, v0, v5

    .line 367
    .line 368
    aget-object v3, v8, v5

    .line 369
    .line 370
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzapg;->zzd(I)Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v2

    .line 374
    :try_start_2
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 375
    .line 376
    .line 377
    move-result-object v2
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2

    .line 378
    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->digest([B)[B

    .line 379
    .line 380
    .line 381
    move-result-object v2

    .line 382
    aput-object v2, v1, v5

    .line 383
    .line 384
    const/4 v3, 0x1

    .line 385
    add-int/2addr v5, v3

    .line 386
    goto :goto_7

    .line 387
    :catch_2
    move-exception v0

    .line 388
    move-object v1, v0

    .line 389
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 390
    .line 391
    const/4 v3, 0x4

    .line 392
    new-array v3, v3, [J

    .line 393
    .line 394
    fill-array-data v3, :array_5

    .line 395
    .line 396
    .line 397
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 398
    .line 399
    .line 400
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v0

    .line 408
    new-instance v2, Ljava/lang/RuntimeException;

    .line 409
    .line 410
    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 411
    .line 412
    .line 413
    throw v2

    .line 414
    :cond_8
    return-object v1

    .line 415
    :cond_9
    new-instance v0, Ljava/security/DigestException;

    .line 416
    .line 417
    new-instance v1, Ljava/lang/StringBuilder;

    .line 418
    .line 419
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 420
    .line 421
    .line 422
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 423
    .line 424
    const/4 v3, 0x4

    .line 425
    new-array v3, v3, [J

    .line 426
    .line 427
    fill-array-data v3, :array_6

    .line 428
    .line 429
    .line 430
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 431
    .line 432
    .line 433
    invoke-static {v2, v1, v9, v10}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;J)Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v1

    .line 437
    invoke-direct {v0, v1}, Ljava/security/DigestException;-><init>(Ljava/lang/String;)V

    .line 438
    .line 439
    .line 440
    throw v0

    .line 441
    :array_0
    .array-data 8
        0x5903aace3b2270e2L    # 6.348206113529094E120
        -0x49dce97238672b5L
        0x48951a4af9b9d681L    # 4.59576251407439E41
        0x506c7a8d448c1139L    # 2.638088211762483E79
    .end array-data

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
    :array_1
    .array-data 8
        0x44f1d5917b4a5eefL    # 1.3475179160130134E24
        0x153840e8bf54cfd1L
        -0x150fcc0cd18ded3eL    # -1.3005006510748637E207
        -0x46171ebc4cee018cL    # -9.81340570414621E-30
        -0x1b3f2f02dbf84be3L    # -2.1295092318295727E177
    .end array-data

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
    .line 484
    .line 485
    :array_2
    .array-data 8
        -0x56f6c399db2525d0L    # -5.246757410399827E-111
        0x53f3fc6a79193d88L    # 2.6681147594771867E96
        -0xb2f387feb89331fL    # -4.920736828980104E254
    .end array-data

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
    :array_3
    .array-data 8
        -0x4baf4398dad15f7eL    # -1.0664761908926123E-56
        0x63bd07a0f4237204L    # 2.8046687564345234E172
        0x27312e29a39eae7dL    # 6.653237941319161E-120
        0x6ea8eccc1e28c3ecL    # 1.1532454875055724E225
    .end array-data

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
    :array_4
    .array-data 8
        -0x3d83f9f410407b8eL    # -1.9257684776882778E12
        0x728f244f3344c7f6L    # 6.6449342478588604E243
        -0x64703c44ea4c629eL    # -6.270982269543984E-176
    .end array-data

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
    .line 536
    .line 537
    :array_5
    .array-data 8
        0xa123a725add049eL
        -0xab881bdb4812d7fL    # -8.818779372760912E256
        -0x52a8cb5fc2d22581L    # -2.847957807618885E-90
        0x8e36f450a9a0f2aL
    .end array-data

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
    :array_6
    .array-data 8
        0xbe19d569bcd87f5L
        0x189e54684851dafaL
        0x863a0fe4661bf73L
        -0x486f5e54bf630e3eL    # -4.77301197422278E-41
    .end array-data
.end method

.method private static zzl(Ljava/nio/channels/FileChannel;Lcom/google/android/gms/internal/ads/zzapc;)[[Ljava/security/cert/X509Certificate;
    .locals 12

    .line 1
    const/4 v0, 0x5

    .line 2
    const/4 v1, 0x2

    .line 3
    new-instance v2, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v11, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    :try_start_0
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 14
    .line 15
    new-array v4, v1, [J

    .line 16
    .line 17
    fill-array-data v4, :array_0

    .line 18
    .line 19
    .line 20
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    .line 28
    .line 29
    .line 30
    move-result-object v3
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_4

    .line 31
    :try_start_1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzapc;->zze(Lcom/google/android/gms/internal/ads/zzapc;)Ljava/nio/ByteBuffer;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzapg;->zzf(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 36
    .line 37
    .line 38
    move-result-object v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 39
    const/4 v5, 0x0

    .line 40
    :goto_0
    invoke-virtual {v4}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    if-eqz v6, :cond_0

    .line 45
    .line 46
    add-int/lit8 v5, v5, 0x1

    .line 47
    .line 48
    :try_start_2
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzapg;->zzf(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    invoke-static {v6, v2, v3}, Lcom/google/android/gms/internal/ads/zzapg;->zzj(Ljava/nio/ByteBuffer;Ljava/util/Map;Ljava/security/cert/CertificateFactory;)[Ljava/security/cert/X509Certificate;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/nio/BufferUnderflowException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catch_0
    move-exception p0

    .line 61
    goto :goto_1

    .line 62
    :catch_1
    move-exception p0

    .line 63
    goto :goto_1

    .line 64
    :catch_2
    move-exception p0

    .line 65
    :goto_1
    new-instance p1, Ljava/lang/SecurityException;

    .line 66
    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 73
    .line 74
    new-array v0, v0, [J

    .line 75
    .line 76
    fill-array-data v0, :array_1

    .line 77
    .line 78
    .line 79
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 93
    .line 94
    new-array v1, v1, [J

    .line 95
    .line 96
    fill-array-data v1, :array_2

    .line 97
    .line 98
    .line 99
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 100
    .line 101
    .line 102
    invoke-static {v0, v2}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-direct {p1, v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 107
    .line 108
    .line 109
    throw p1

    .line 110
    :cond_0
    if-lez v5, :cond_2

    .line 111
    .line 112
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-nez v0, :cond_1

    .line 117
    .line 118
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzapc;->zza(Lcom/google/android/gms/internal/ads/zzapc;)J

    .line 119
    .line 120
    .line 121
    move-result-wide v4

    .line 122
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzapc;->zzb(Lcom/google/android/gms/internal/ads/zzapc;)J

    .line 123
    .line 124
    .line 125
    move-result-wide v6

    .line 126
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzapc;->zzc(Lcom/google/android/gms/internal/ads/zzapc;)J

    .line 127
    .line 128
    .line 129
    move-result-wide v8

    .line 130
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzapc;->zzd(Lcom/google/android/gms/internal/ads/zzapc;)Ljava/nio/ByteBuffer;

    .line 131
    .line 132
    .line 133
    move-result-object v10

    .line 134
    move-object v3, p0

    .line 135
    invoke-static/range {v2 .. v10}, Lcom/google/android/gms/internal/ads/zzapg;->zzh(Ljava/util/Map;Ljava/nio/channels/FileChannel;JJJLjava/nio/ByteBuffer;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 139
    .line 140
    .line 141
    move-result p0

    .line 142
    new-array p0, p0, [[Ljava/security/cert/X509Certificate;

    .line 143
    .line 144
    invoke-virtual {v11, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    check-cast p0, [[Ljava/security/cert/X509Certificate;

    .line 149
    .line 150
    return-object p0

    .line 151
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 152
    .line 153
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 154
    .line 155
    const/4 v0, 0x4

    .line 156
    new-array v0, v0, [J

    .line 157
    .line 158
    fill-array-data v0, :array_3

    .line 159
    .line 160
    .line 161
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    throw p0

    .line 172
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    .line 173
    .line 174
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 175
    .line 176
    const/4 v0, 0x3

    .line 177
    new-array v0, v0, [J

    .line 178
    .line 179
    fill-array-data v0, :array_4

    .line 180
    .line 181
    .line 182
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    throw p0

    .line 193
    :catch_3
    move-exception p0

    .line 194
    new-instance p1, Ljava/lang/SecurityException;

    .line 195
    .line 196
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 197
    .line 198
    new-array v0, v0, [J

    .line 199
    .line 200
    fill-array-data v0, :array_5

    .line 201
    .line 202
    .line 203
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-direct {p1, v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 211
    .line 212
    .line 213
    throw p1

    .line 214
    :catch_4
    move-exception p0

    .line 215
    new-instance p1, Ljava/lang/RuntimeException;

    .line 216
    .line 217
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 218
    .line 219
    const/4 v1, 0x7

    .line 220
    new-array v1, v1, [J

    .line 221
    .line 222
    fill-array-data v1, :array_6

    .line 223
    .line 224
    .line 225
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 233
    .line 234
    .line 235
    throw p1

    .line 236
    nop

    .line 237
    :array_0
    .array-data 8
        -0x3a472cdf2c96fc54L    # -7.682878599208501E27
        0x425f3a60c7e9192aL    # 5.364936293483932E11
    .end array-data

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
    :array_1
    .array-data 8
        0x677398380963e9d8L    # 2.1825981927494656E190
        0xc29a4871a33dd1eL
        0x6677f1feef2c915aL    # 4.069842106053817E185
        0x3a7ad7f1d826a91cL    # 5.421008520183365E-27
        -0x55927f8317a0061L    # -6.634613210624164E282
    .end array-data

    .line 250
    .line 251
    .line 252
    :array_2
    .array-data 8
        -0x695c4251028aef85L
        -0x5861ff707aca6ff0L    # -7.435919245789423E-118
    .end array-data

    :array_3
    .array-data 8
        -0x5611767306af61d5L
        0x51f6bdb9382de023L    # 7.06855073048127E86
        0x2da37e36dd82499cL    # 7.655446405084012E-89
        0x25e63d8f6c341350L    # 4.10691562494863E-126
    .end array-data

    :array_4
    .array-data 8
        0x66b1f284effe5f53L    # 4.880647504123338E186
        0xe5b27e4f50d1016L
        0x1f8e2ba6e260221bL
    .end array-data

    :array_5
    .array-data 8
        -0x6193384773d6bbeeL
        0x75b0d95d0b081a70L    # 8.095662171617621E258
        0x6edb2209a6ea616aL
        -0x1f680eb97cf8f34eL    # -2.0545036951654607E157
        0x6ac4b97d22ae6a35L    # 2.0792776470693707E206
    .end array-data

    :array_6
    .array-data 8
        0x68aa4c355b9d83c9L    # 1.5357650591813876E196
        0x2b4ef9ac07b24a6eL    # 4.425544484551454E-100
        0x4890eac05b50395bL    # 3.684195836672513E41
        -0x708b71bf1e59ca1bL    # -3.232475022368793E-234
        -0x744c3124250afe98L
        0x6dea381c65c3828dL    # 2.9617335863249595E221
        0x1baba214c97f5375L    # 2.182140007715957E-175
    .end array-data
.end method
