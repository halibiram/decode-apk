.class public final Lcom/google/android/play/core/review/internal/zzw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/play/core/review/internal/zzi;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/play/core/review/internal/zzi;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x5

    .line 6
    new-array v2, v2, [J

    .line 7
    .line 8
    fill-array-data v2, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v0, v1}, Lcom/google/android/play/core/review/internal/zzi;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcom/google/android/play/core/review/internal/zzw;->zza:Lcom/google/android/play/core/review/internal/zzi;

    .line 22
    .line 23
    return-void

    .line 24
    nop

    :array_0
    .array-data 8
        -0x4afd6c66d843a631L    # -2.4243536399023316E-53
        0x5f6ab8052caaad8L
        -0x7cc415e8bd58adc0L
        -0x4f7eec9c8c6487adL    # -4.719005969633108E-75
        -0xd51c4cbddef2100L
    .end array-data
.end method

.method public static zza(Landroid/content/Context;)Z
    .locals 11

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x7

    .line 3
    const/4 v2, 0x4

    .line 4
    const/4 v3, 0x0

    .line 5
    const/4 v4, 0x1

    .line 6
    const/4 v5, 0x5

    .line 7
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    .line 9
    .line 10
    move-result-object v6

    .line 11
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 12
    .line 13
    new-array v8, v2, [J

    .line 14
    .line 15
    fill-array-data v8, :array_0

    .line 16
    .line 17
    .line 18
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v7

    .line 25
    invoke-virtual {v6, v7, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    iget-boolean v6, v6, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 30
    .line 31
    if-nez v6, :cond_0

    .line 32
    .line 33
    sget-object p0, Lcom/google/android/play/core/review/internal/zzw;->zza:Lcom/google/android/play/core/review/internal/zzi;

    .line 34
    .line 35
    new-array v0, v3, [Ljava/lang/Object;

    .line 36
    .line 37
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 38
    .line 39
    new-array v2, v5, [J

    .line 40
    .line 41
    fill-array-data v2, :array_1

    .line 42
    .line 43
    .line 44
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {p0, v1, v0}, Lcom/google/android/play/core/review/internal/zzi;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 52
    .line 53
    .line 54
    goto/16 :goto_3

    .line 55
    .line 56
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 61
    .line 62
    new-array v2, v2, [J

    .line 63
    .line 64
    fill-array-data v2, :array_2

    .line 65
    .line 66
    .line 67
    invoke-direct {v6, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    const/16 v6, 0x40

    .line 75
    .line 76
    invoke-virtual {p0, v2, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 81
    .line 82
    if-eqz p0, :cond_7

    .line 83
    .line 84
    array-length v2, p0

    .line 85
    if-nez v2, :cond_1

    .line 86
    .line 87
    goto/16 :goto_2

    .line 88
    .line 89
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    .line 90
    .line 91
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .line 93
    .line 94
    const/4 v6, 0x0

    .line 95
    :goto_0
    if-ge v6, v2, :cond_5

    .line 96
    .line 97
    aget-object v7, p0, v6

    .line 98
    .line 99
    invoke-virtual {v7}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 100
    .line 101
    .line 102
    move-result-object v7

    .line 103
    invoke-static {v7}, Lcom/google/android/play/core/review/internal/zzv;->zza([B)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v7

    .line 107
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 111
    .line 112
    new-array v9, v1, [J

    .line 113
    .line 114
    fill-array-data v9, :array_3

    .line 115
    .line 116
    .line 117
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v8

    .line 124
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v8

    .line 128
    if-nez v8, :cond_4

    .line 129
    .line 130
    sget-object v8, Landroid/os/Build;->TAGS:Ljava/lang/String;

    .line 131
    .line 132
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 133
    .line 134
    new-array v10, v0, [J

    .line 135
    .line 136
    fill-array-data v10, :array_4

    .line 137
    .line 138
    .line 139
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v9

    .line 146
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 147
    .line 148
    .line 149
    move-result v9

    .line 150
    if-nez v9, :cond_2

    .line 151
    .line 152
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 153
    .line 154
    const/4 v10, 0x3

    .line 155
    new-array v10, v10, [J

    .line 156
    .line 157
    fill-array-data v10, :array_5

    .line 158
    .line 159
    .line 160
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v9

    .line 167
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 168
    .line 169
    .line 170
    move-result v8

    .line 171
    if-eqz v8, :cond_3

    .line 172
    .line 173
    :cond_2
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 174
    .line 175
    new-array v9, v1, [J

    .line 176
    .line 177
    fill-array-data v9, :array_6

    .line 178
    .line 179
    .line 180
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v8

    .line 187
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v7

    .line 191
    if-nez v7, :cond_4

    .line 192
    .line 193
    :cond_3
    add-int/2addr v6, v4

    .line 194
    goto :goto_0

    .line 195
    :cond_4
    return v4

    .line 196
    :cond_5
    sget-object p0, Lcom/google/android/play/core/review/internal/zzw;->zza:Lcom/google/android/play/core/review/internal/zzi;

    .line 197
    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 208
    .line 209
    .line 210
    move-result v5

    .line 211
    if-eqz v5, :cond_6

    .line 212
    .line 213
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v5

    .line 217
    check-cast v5, Ljava/lang/CharSequence;

    .line 218
    .line 219
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 223
    .line 224
    .line 225
    move-result v5

    .line 226
    if-eqz v5, :cond_6

    .line 227
    .line 228
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 229
    .line 230
    new-array v6, v0, [J

    .line 231
    .line 232
    fill-array-data v6, :array_7

    .line 233
    .line 234
    .line 235
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v5

    .line 242
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    goto :goto_1

    .line 246
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    new-array v1, v4, [Ljava/lang/Object;

    .line 251
    .line 252
    aput-object v0, v1, v3

    .line 253
    .line 254
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 255
    .line 256
    const/16 v2, 0xa

    .line 257
    .line 258
    new-array v2, v2, [J

    .line 259
    .line 260
    fill-array-data v2, :array_8

    .line 261
    .line 262
    .line 263
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    new-array v1, v3, [Ljava/lang/Object;

    .line 275
    .line 276
    invoke-virtual {p0, v0, v1}, Lcom/google/android/play/core/review/internal/zzi;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 277
    .line 278
    .line 279
    goto :goto_3

    .line 280
    :cond_7
    :goto_2
    sget-object p0, Lcom/google/android/play/core/review/internal/zzw;->zza:Lcom/google/android/play/core/review/internal/zzi;

    .line 281
    .line 282
    new-array v0, v3, [Ljava/lang/Object;

    .line 283
    .line 284
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 285
    .line 286
    const/16 v2, 0xc

    .line 287
    .line 288
    new-array v2, v2, [J

    .line 289
    .line 290
    fill-array-data v2, :array_9

    .line 291
    .line 292
    .line 293
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v1

    .line 300
    invoke-virtual {p0, v1, v0}, Lcom/google/android/play/core/review/internal/zzi;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 301
    .line 302
    .line 303
    goto :goto_3

    .line 304
    :catch_0
    sget-object p0, Lcom/google/android/play/core/review/internal/zzw;->zza:Lcom/google/android/play/core/review/internal/zzi;

    .line 305
    .line 306
    new-array v0, v3, [Ljava/lang/Object;

    .line 307
    .line 308
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 309
    .line 310
    new-array v2, v5, [J

    .line 311
    .line 312
    fill-array-data v2, :array_a

    .line 313
    .line 314
    .line 315
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v1

    .line 322
    invoke-virtual {p0, v1, v0}, Lcom/google/android/play/core/review/internal/zzi;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 323
    .line 324
    .line 325
    goto :goto_3

    .line 326
    :catch_1
    sget-object p0, Lcom/google/android/play/core/review/internal/zzw;->zza:Lcom/google/android/play/core/review/internal/zzi;

    .line 327
    .line 328
    new-array v0, v3, [Ljava/lang/Object;

    .line 329
    .line 330
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 331
    .line 332
    new-array v2, v5, [J

    .line 333
    .line 334
    fill-array-data v2, :array_b

    .line 335
    .line 336
    .line 337
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v1

    .line 344
    invoke-virtual {p0, v1, v0}, Lcom/google/android/play/core/review/internal/zzi;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 345
    .line 346
    .line 347
    :goto_3
    return v3

    .line 348
    nop

    .line 349
    :array_0
    .array-data 8
        -0xfe5893251e063a4L    # -1.0271489169462693E232
        0x225694fe0555de53L
        -0x533a166316888325L    # -5.2524784496188146E-93
        -0x6915d2024543107fL
    .end array-data

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
    .line 368
    .line 369
    :array_1
    .array-data 8
        0x43efefcfc11a9061L    # 1.8410290903127362E19
        0x5ee2162f75356930L    # 1.1563419603691331E149
        -0xe6584f9501f7d8dL    # -1.7243440253002328E239
        -0x65fe751708531617L
        0x2729980a3c909b1eL    # 4.955737710557965E-120
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
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    :array_2
    .array-data 8
        0x144790752c6c13d7L    # 5.599733630254699E-211
        0x58f69f45f41d6d08L    # 3.651004555580399E120
        0x257c15941abc7212L    # 4.051588431745479E-128
        0x3b732d9ba0511744L    # 2.538207801572704E-22
    .end array-data

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
    :array_3
    .array-data 8
        -0x194c9769a9d6c078L    # -5.27801092055231E186
        -0x513fbcb41fec8e71L    # -1.6742818686425448E-83
        0x271521817434b86aL
        0x5734deb61fc19318L    # 1.2547585282181004E112
        -0x406d113bfdcd3159L    # -0.018488943704780294
        0xd55f596385665aeL
        0x297544c20fe60ed1L
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
    .line 444
    .line 445
    :array_4
    .array-data 8
        -0x31693f9fe80e9ae3L    # -3.925621230476087E70
        -0x62e1ea739fded8f1L    # -1.992877102615573E-168
    .end array-data

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
    :array_5
    .array-data 8
        -0x63a4d9a479a8778aL
        -0x102a834f73f20bf1L    # -5.212353626507577E230
        -0x50f32d28a67a03cL
    .end array-data

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
    :array_6
    .array-data 8
        -0x69a106ea9e49f8eL    # -6.075747769898376E276
        -0x32df9db1672e232aL    # -3.369995759343784E63
        -0x14106ef868d36bc8L    # -8.302209801951011E211
        0x4f77a71f52f06710L    # 6.686546979626776E74
        0x35bcb58f498e183bL    # 7.673298376537879E-50
        0x7b37206cbce26a64L    # 3.438973327831718E285
        0x1a4e0253ca79a29L
    .end array-data

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
    :array_7
    .array-data 8
        0x225704dfe29d05e9L
        0x111844961f4dd36bL
    .end array-data

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
    :array_8
    .array-data 8
        -0x41b81cc51e647a69L    # -1.1123538579335878E-8
        -0x313ecc00f631863L    # -5.603360467227857E293
        0x478a7567cf5538b6L    # 4.3961915172062487E36
        -0x2c071edfe616dd93L    # -3.3213792174452183E96
        0x6455cc24a6843219L    # 2.156467264819105E175
        0x6013df7b56775fd0L    # 6.661326041231338E154
        0x51250fd63a550eeL    # 3.07938099233405E-284
        -0xaa9d7d5af907b83L
        0x2ff33e8098bc5d54L    # 1.0387232547317045E-77
        -0x7758f5a7d06a24a8L    # -5.582439461767362E-267
    .end array-data

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
    :array_9
    .array-data 8
        0x45e79bee9dc015f5L    # 5.845332448907348E28
        0x3580e3e12e07071L
        -0x27d1651b1c9c84ccL    # -6.0295028450481556E116
        -0x4dd806670208a3faL    # -4.446409152715022E-67
        0x467c4e20392255ddL    # 3.588107738559936E31
        -0x29e00cd10c11907L    # -9.195233404601248E295
        -0x691a685a25b9e93fL
        0x79683dcad0dd6131L    # 6.71433954670039E276
        0x5e77bd337c4e7a42L    # 1.1857183607715873E147
        -0x43b74c0f73693ee5L    # -2.678292617972865E-18
        0x76067b552f11f73bL    # 3.456660597769713E260
        -0x16c20b0f6454ff25L    # -8.957205191985551E198
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
    :array_a
    .array-data 8
        0x475b74f5f9552716L    # 5.702570510359626E35
        0x652b866e9b00475dL    # 2.2307799917179685E179
        0x646b63f2ae8f1179L    # 5.4195872125833074E175
        -0x20ec4023f66741c8L    # -1.0101198164246847E150
        0x6e0cc6c5199e3e0bL    # 1.3002413181717666E222
    .end array-data

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
    :array_b
    .array-data 8
        -0x72d86146dc2bca30L    # -2.70254955350828E-245
        0x53dea48897199ff2L    # 1.0226942125010854E96
        0x6d82ce9b624dffebL    # 3.3194622278987866E219
        0xf93a6aa9cf0aed4L
        -0x5bd5020fb7a7ee4bL
    .end array-data
.end method
