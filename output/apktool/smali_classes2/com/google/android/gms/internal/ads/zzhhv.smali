.class public final Lcom/google/android/gms/internal/ads/zzhhv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static zza:Ljava/lang/String;


# direct methods
.method public static zza(Landroid/content/Context;)Ljava/lang/String;
    .locals 15

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    const/4 v2, 0x4

    .line 5
    const/4 v3, 0x3

    .line 6
    sget-object v4, Lcom/google/android/gms/internal/ads/zzhhv;->zza:Ljava/lang/String;

    .line 7
    .line 8
    if-eqz v4, :cond_0

    .line 9
    .line 10
    return-object v4

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    new-instance v5, Landroid/content/Intent;

    .line 16
    .line 17
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 18
    .line 19
    new-array v7, v2, [J

    .line 20
    .line 21
    fill-array-data v7, :array_0

    .line 22
    .line 23
    .line 24
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 32
    .line 33
    new-array v8, v1, [J

    .line 34
    .line 35
    fill-array-data v8, :array_1

    .line 36
    .line 37
    .line 38
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    invoke-direct {v5, v7, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 50
    .line 51
    .line 52
    const/4 v6, 0x0

    .line 53
    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    const/4 v8, 0x0

    .line 58
    if-eqz v7, :cond_1

    .line 59
    .line 60
    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 61
    .line 62
    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    move-object v7, v8

    .line 66
    :goto_0
    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object v9

    .line 70
    new-instance v10, Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object v9

    .line 79
    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v11

    .line 83
    if-eqz v11, :cond_3

    .line 84
    .line 85
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v11

    .line 89
    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 90
    .line 91
    new-instance v12, Landroid/content/Intent;

    .line 92
    .line 93
    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 94
    .line 95
    .line 96
    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    .line 97
    .line 98
    new-array v14, v0, [J

    .line 99
    .line 100
    fill-array-data v14, :array_2

    .line 101
    .line 102
    .line 103
    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v13

    .line 110
    invoke-virtual {v12, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    .line 112
    .line 113
    iget-object v13, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 114
    .line 115
    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 116
    .line 117
    invoke-virtual {v12, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v4, v12, v6}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 121
    .line 122
    .line 123
    move-result-object v12

    .line 124
    if-eqz v12, :cond_2

    .line 125
    .line 126
    iget-object v11, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 127
    .line 128
    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_3
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 135
    .line 136
    .line 137
    move-result v4

    .line 138
    if-eqz v4, :cond_4

    .line 139
    .line 140
    sput-object v8, Lcom/google/android/gms/internal/ads/zzhhv;->zza:Ljava/lang/String;

    .line 141
    .line 142
    goto/16 :goto_4

    .line 143
    .line 144
    :cond_4
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 145
    .line 146
    .line 147
    move-result v4

    .line 148
    const/4 v8, 0x1

    .line 149
    if-ne v4, v8, :cond_5

    .line 150
    .line 151
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    check-cast p0, Ljava/lang/String;

    .line 156
    .line 157
    sput-object p0, Lcom/google/android/gms/internal/ads/zzhhv;->zza:Ljava/lang/String;

    .line 158
    .line 159
    goto/16 :goto_4

    .line 160
    .line 161
    :cond_5
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 162
    .line 163
    .line 164
    move-result v4

    .line 165
    if-nez v4, :cond_9

    .line 166
    .line 167
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    const/16 v4, 0x40

    .line 172
    .line 173
    invoke-virtual {p0, v5, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    if-eqz p0, :cond_8

    .line 178
    .line 179
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 180
    .line 181
    .line 182
    move-result v4

    .line 183
    if-nez v4, :cond_6

    .line 184
    .line 185
    goto :goto_2

    .line 186
    :cond_6
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 187
    .line 188
    .line 189
    move-result-object p0

    .line 190
    :cond_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 191
    .line 192
    .line 193
    move-result v4

    .line 194
    if-eqz v4, :cond_8

    .line 195
    .line 196
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v4

    .line 200
    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 201
    .line 202
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 203
    .line 204
    if-eqz v5, :cond_7

    .line 205
    .line 206
    invoke-virtual {v5}, Landroid/content/IntentFilter;->countDataAuthorities()I

    .line 207
    .line 208
    .line 209
    move-result v6

    .line 210
    if-eqz v6, :cond_7

    .line 211
    .line 212
    invoke-virtual {v5}, Landroid/content/IntentFilter;->countDataPaths()I

    .line 213
    .line 214
    .line 215
    move-result v5

    .line 216
    if-eqz v5, :cond_7

    .line 217
    .line 218
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    .line 220
    if-eqz v4, :cond_7

    .line 221
    .line 222
    goto :goto_3

    .line 223
    :catch_0
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 224
    .line 225
    new-array v4, v3, [J

    .line 226
    .line 227
    fill-array-data v4, :array_3

    .line 228
    .line 229
    .line 230
    invoke-direct {p0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 237
    .line 238
    new-array v0, v0, [J

    .line 239
    .line 240
    fill-array-data v0, :array_4

    .line 241
    .line 242
    .line 243
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    :cond_8
    :goto_2
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    move-result p0

    .line 253
    if-eqz p0, :cond_9

    .line 254
    .line 255
    sput-object v7, Lcom/google/android/gms/internal/ads/zzhhv;->zza:Ljava/lang/String;

    .line 256
    .line 257
    goto/16 :goto_4

    .line 258
    .line 259
    :cond_9
    :goto_3
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 260
    .line 261
    new-array v0, v2, [J

    .line 262
    .line 263
    fill-array-data v0, :array_5

    .line 264
    .line 265
    .line 266
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object p0

    .line 273
    invoke-virtual {v10, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    move-result p0

    .line 277
    if-eqz p0, :cond_a

    .line 278
    .line 279
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 280
    .line 281
    new-array v0, v2, [J

    .line 282
    .line 283
    fill-array-data v0, :array_6

    .line 284
    .line 285
    .line 286
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object p0

    .line 293
    sput-object p0, Lcom/google/android/gms/internal/ads/zzhhv;->zza:Ljava/lang/String;

    .line 294
    .line 295
    goto :goto_4

    .line 296
    :cond_a
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 297
    .line 298
    new-array v0, v3, [J

    .line 299
    .line 300
    fill-array-data v0, :array_7

    .line 301
    .line 302
    .line 303
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object p0

    .line 310
    invoke-virtual {v10, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    move-result p0

    .line 314
    if-eqz p0, :cond_b

    .line 315
    .line 316
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 317
    .line 318
    new-array v0, v3, [J

    .line 319
    .line 320
    fill-array-data v0, :array_8

    .line 321
    .line 322
    .line 323
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object p0

    .line 330
    sput-object p0, Lcom/google/android/gms/internal/ads/zzhhv;->zza:Ljava/lang/String;

    .line 331
    .line 332
    goto :goto_4

    .line 333
    :cond_b
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 334
    .line 335
    new-array v0, v3, [J

    .line 336
    .line 337
    fill-array-data v0, :array_9

    .line 338
    .line 339
    .line 340
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object p0

    .line 347
    invoke-virtual {v10, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    move-result p0

    .line 351
    if-eqz p0, :cond_c

    .line 352
    .line 353
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 354
    .line 355
    new-array v0, v3, [J

    .line 356
    .line 357
    fill-array-data v0, :array_a

    .line 358
    .line 359
    .line 360
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object p0

    .line 367
    sput-object p0, Lcom/google/android/gms/internal/ads/zzhhv;->zza:Ljava/lang/String;

    .line 368
    .line 369
    goto :goto_4

    .line 370
    :cond_c
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 371
    .line 372
    new-array v0, v1, [J

    .line 373
    .line 374
    fill-array-data v0, :array_b

    .line 375
    .line 376
    .line 377
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 378
    .line 379
    .line 380
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object p0

    .line 384
    invoke-virtual {v10, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 385
    .line 386
    .line 387
    move-result p0

    .line 388
    if-eqz p0, :cond_d

    .line 389
    .line 390
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 391
    .line 392
    new-array v0, v1, [J

    .line 393
    .line 394
    fill-array-data v0, :array_c

    .line 395
    .line 396
    .line 397
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 398
    .line 399
    .line 400
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object p0

    .line 404
    sput-object p0, Lcom/google/android/gms/internal/ads/zzhhv;->zza:Ljava/lang/String;

    .line 405
    .line 406
    :cond_d
    :goto_4
    sget-object p0, Lcom/google/android/gms/internal/ads/zzhhv;->zza:Ljava/lang/String;

    .line 407
    .line 408
    return-object p0

    .line 409
    :array_0
    .array-data 8
        -0x79aa2e89b8664f09L    # -3.846299989023308E-278
        -0x7c8ff47e454657e8L
        0x45bbdfee1f8cdf5dL    # 8.626810228173303E27
        -0x16a56af0f3859d63L    # -3.179282084056429E199
    .end array-data

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
    :array_1
    .array-data 8
        0x3a1b7acba957c496L    # 8.671054980876352E-29
        0xf586c11d0a6f70cL    # 9.601237856687901E-235
        0x8569b5dc246e738L
        -0x49605f330a6a6b4eL    # -1.3850139499511578E-45
        0x34f852ea412b6feL
    .end array-data

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
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    :array_2
    .array-data 8
        -0x630f4a3a89d1267bL    # -2.767324232913435E-169
        -0x1137ef6fe83fe8c8L    # -4.4537639723319554E225
        0x31ed57cc74c3e731L    # 3.4012218969901486E-68
        0x57dd6ce4e8a02a53L    # 1.811591448631641E115
        -0x4ce3f5fb00b57344L    # -1.703984265916854E-62
        -0x7d9440871e1cf736L    # -5.303529733028078E-297
        0x26aa44cd5ac404e9L
        0x1cb908b4648b1ab5L
    .end array-data

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
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    :array_3
    .array-data 8
        0x10f38bf09f8c9388L
        0x499fa8762364167aL    # 4.5183882595388616E46
        0x5f8163dae7153e2aL    # 1.1384891120752015E152
    .end array-data

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
    :array_4
    .array-data 8
        -0x16e835fcc1e355b5L    # -1.7782605536953105E198
        0x4f37bca8cc2d0aa4L    # 4.193956157637607E73
        0x6a812b8cb1d828e6L    # 1.0766642260599579E205
        0x7238b26863edfdcbL    # 1.6467932145685522E242
        -0x5f83536ad38284c7L    # -3.42178543860013E-152
        0x650504178805f13bL    # 4.258112941960164E178
        0x5274587d920ab6aL
        0x53efc9c65875ef54L    # 2.1218483211575982E96
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
    :array_5
    .array-data 8
        -0x44edb17ce28c861bL    # -3.785734380837345E-24
        0x162ddbca745f1082L
        -0x3f7ea02eaa8c662L
        -0x2890d5ce6ea1417L
    .end array-data

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
    :array_6
    .array-data 8
        -0x4d2c9b69dbc97f49L    # -7.365869897827548E-64
        0x1d4f8a3dea5bb6e5L
        0x784cb59848fe4287L    # 3.033399041095244E271
        -0x796381bf494898bL
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
    :array_7
    .array-data 8
        0x3f7417191118f531L    # 0.00490484039033605
        0x17c31d7cfdb835e8L    # 3.27319131098614E-194
        0x71d09c2f359a8894L    # 1.730568055928174E240
    .end array-data

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
    :array_8
    .array-data 8
        -0x23c11ad4a7453d93L    # -2.2455822424674347E136
        -0x30ac509992a01a77L    # -1.391226450981083E74
        -0x14c6215e4b621c4cL    # -3.3222143716140045E208
    .end array-data

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
    :array_9
    .array-data 8
        0x3fa07d124b084ff3L    # 0.03220421949313836
        0x52ddcc04fbe7dfb4L    # 1.5174365318435784E91
        -0x3aef2e98414946a0L    # -5.082925366442137E24
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
    :array_a
    .array-data 8
        -0x3d84bc8b99cbaf14L    # -1.8735331008690576E12
        -0x5a8212b40647900eL
        0x3362392973f01e63L    # 3.543868888547449E-61
    .end array-data

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
    :array_b
    .array-data 8
        -0x497a5585d7fbac80L    # -4.743817105158012E-46
        -0x12ade19cd3a25d08L    # -3.9974581150523656E218
        0x2339420f8259c11bL    # 5.302513903672629E-139
        0x260240661b49506aL
        -0x7c7bb2e635518846L
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
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    :array_c
    .array-data 8
        0x4e3f6666acfa1c12L    # 8.465424387613817E68
        -0x772cd771368c11a0L
        -0x7502b9da72f33f88L    # -9.748233387270364E-256
        -0x500428043f4185f8L    # -1.5028922408415562E-77
        0x27453080da753ce2L
    .end array-data
.end method
