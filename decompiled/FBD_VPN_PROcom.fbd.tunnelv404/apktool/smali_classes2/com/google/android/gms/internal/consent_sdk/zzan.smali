.class public final Lcom/google/android/gms/internal/consent_sdk/zzan;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/consent_sdk/zzd;


# instance fields
.field private final zza:Landroid/app/Application;

.field private final zzb:Lcom/google/android/gms/internal/consent_sdk/zzap;

.field private final zzc:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/app/Application;Lcom/google/android/gms/internal/consent_sdk/zzap;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzan;->zza:Landroid/app/Application;

    iput-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzan;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzap;

    iput-object p3, p0, Lcom/google/android/gms/internal/consent_sdk/zzan;->zzc:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzan;->zzc:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final zzb(Ljava/lang/String;Lorg/json/JSONObject;)Z
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x4

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 5
    .line 6
    .line 7
    move-result v3

    .line 8
    const v4, 0x5a5b64d

    .line 9
    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    if-eq v3, v4, :cond_1

    .line 13
    .line 14
    const v4, 0x6c257df

    .line 15
    .line 16
    .line 17
    if-eq v3, v4, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 21
    .line 22
    new-array v4, v1, [J

    .line 23
    .line 24
    fill-array-data v4, :array_0

    .line 25
    .line 26
    .line 27
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    const/4 p1, 0x0

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 43
    .line 44
    new-array v4, v1, [J

    .line 45
    .line 46
    fill-array-data v4, :array_1

    .line 47
    .line 48
    .line 49
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-eqz p1, :cond_2

    .line 61
    .line 62
    const/4 p1, 0x1

    .line 63
    goto :goto_1

    .line 64
    :cond_2
    :goto_0
    const/4 p1, -0x1

    .line 65
    :goto_1
    if-eqz p1, :cond_8

    .line 66
    .line 67
    if-eq p1, v0, :cond_3

    .line 68
    .line 69
    return v5

    .line 70
    :cond_3
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 71
    .line 72
    new-array v1, v1, [J

    .line 73
    .line 74
    fill-array-data v1, :array_2

    .line 75
    .line 76
    .line 77
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    if-eqz p1, :cond_7

    .line 89
    .line 90
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-nez v1, :cond_4

    .line 95
    .line 96
    goto :goto_4

    .line 97
    :cond_4
    new-instance p2, Ljava/util/HashSet;

    .line 98
    .line 99
    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    :goto_2
    if-ge v5, v1, :cond_6

    .line 107
    .line 108
    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    if-eqz v4, :cond_5

    .line 117
    .line 118
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 119
    .line 120
    const/4 v4, 0x6

    .line 121
    new-array v4, v4, [J

    .line 122
    .line 123
    fill-array-data v4, :array_3

    .line 124
    .line 125
    .line 126
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 133
    .line 134
    new-array v4, v2, [J

    .line 135
    .line 136
    fill-array-data v4, :array_4

    .line 137
    .line 138
    .line 139
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_5
    invoke-virtual {p2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    :goto_3
    add-int/2addr v5, v0

    .line 150
    goto :goto_2

    .line 151
    :cond_6
    iget-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzan;->zza:Landroid/app/Application;

    .line 152
    .line 153
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/consent_sdk/zzco;->zzb(Landroid/content/Context;Ljava/util/Set;)V

    .line 154
    .line 155
    .line 156
    goto :goto_5

    .line 157
    :cond_7
    :goto_4
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 166
    .line 167
    new-array v1, v2, [J

    .line 168
    .line 169
    fill-array-data v1, :array_5

    .line 170
    .line 171
    .line 172
    invoke-direct {p2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 179
    .line 180
    const/4 v1, 0x5

    .line 181
    new-array v1, v1, [J

    .line 182
    .line 183
    fill-array-data v1, :array_6

    .line 184
    .line 185
    .line 186
    invoke-direct {p2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p2

    .line 193
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    :goto_5
    return v0

    .line 197
    :cond_8
    iget-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzan;->zza:Landroid/app/Application;

    .line 198
    .line 199
    new-instance v3, Lcom/google/android/gms/internal/consent_sdk/zzcn;

    .line 200
    .line 201
    invoke-direct {v3, p1}, Lcom/google/android/gms/internal/consent_sdk/zzcn;-><init>(Landroid/content/Context;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 209
    .line 210
    .line 211
    move-result v4

    .line 212
    if-eqz v4, :cond_a

    .line 213
    .line 214
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v4

    .line 218
    check-cast v4, Ljava/lang/String;

    .line 219
    .line 220
    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v5

    .line 224
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 228
    .line 229
    new-array v7, v2, [J

    .line 230
    .line 231
    fill-array-data v7, :array_7

    .line 232
    .line 233
    .line 234
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 241
    .line 242
    new-array v7, v1, [J

    .line 243
    .line 244
    fill-array-data v7, :array_8

    .line 245
    .line 246
    .line 247
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 254
    .line 255
    new-array v7, v2, [J

    .line 256
    .line 257
    fill-array-data v7, :array_9

    .line 258
    .line 259
    .line 260
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/consent_sdk/zzcn;->zzc(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result v5

    .line 270
    if-eqz v5, :cond_9

    .line 271
    .line 272
    iget-object v5, p0, Lcom/google/android/gms/internal/consent_sdk/zzan;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzap;

    .line 273
    .line 274
    invoke-virtual {v5}, Lcom/google/android/gms/internal/consent_sdk/zzap;->zzd()Ljava/util/Set;

    .line 275
    .line 276
    .line 277
    move-result-object v5

    .line 278
    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    goto :goto_6

    .line 282
    :cond_9
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v4

    .line 286
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 287
    .line 288
    new-array v6, v2, [J

    .line 289
    .line 290
    fill-array-data v6, :array_a

    .line 291
    .line 292
    .line 293
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 300
    .line 301
    new-array v6, v2, [J

    .line 302
    .line 303
    fill-array-data v6, :array_b

    .line 304
    .line 305
    .line 306
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v5

    .line 313
    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    goto :goto_6

    .line 317
    :cond_a
    iget-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzan;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzap;

    .line 318
    .line 319
    invoke-virtual {p1}, Lcom/google/android/gms/internal/consent_sdk/zzap;->zzf()V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v3}, Lcom/google/android/gms/internal/consent_sdk/zzcn;->zzb()V

    .line 323
    .line 324
    .line 325
    return v0

    .line 326
    nop

    .line 327
    :array_0
    .array-data 8
        0x5665af3c3599757bL    # 1.591468778983243E108
        -0x756c70e605e1d2efL
    .end array-data

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
    :array_1
    .array-data 8
        0x4dc2e6db23f81045L    # 3.9811798145855056E66
        -0x101bcc79971331f9L    # -9.800886458864711E230
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
    :array_2
    .array-data 8
        -0x66c52681813f7493L
        -0x3fa67287905783dL
    .end array-data

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
    :array_3
    .array-data 8
        -0x1c0ce97f42b5bbd3L    # -2.950636526298976E173
        -0x6b40a72895e75163L    # -9.534974015940604E-209
        0x32aec98540bfee67L    # 1.4617092193390236E-64
        0x43c27070c73566feL    # 2.6573717819420826E18
        -0x7524522edb2051c5L
        0xa11ff615e55759L
    .end array-data

    .line 364
    .line 365
    .line 366
    .line 367
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
    :array_4
    .array-data 8
        -0x51a6582d4a618f71L    # -2.0634916724376546E-85
        0x1355a2fc6378ef87L
        0x4f2596cccad87e57L    # 1.907228575181397E73
        0x573c5798b0892ec8L    # 1.704007721150727E112
    .end array-data

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
    :array_5
    .array-data 8
        0x64df959071179178L    # 7.999223384264307E177
        -0x41da42d8b6b78c73L    # -2.5307387941029627E-9
        0x660320705838c825L    # 2.539731153025735E183
        0xcd9a386edb79deL
    .end array-data

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
    :array_6
    .array-data 8
        0x103a7ef4d40976ebL
        -0x115bc28d7b74f286L    # -9.364786944131587E224
        0x708764dd088b1bc1L    # 1.1622273498556373E234
        -0x14f24cc6216c5ca3L    # -4.7676566036163456E207
        -0x64c8db764cd8fe0L
    .end array-data

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
    .line 454
    .line 455
    :array_7
    .array-data 8
        0x56c2a92d815adf0L
        -0x359e5d46ec2861ebL    # -2.0619609364691847E50
        0x65fc92e347d4082aL    # 1.8970775544983273E183
        0x6d774c25483e419cL    # 2.0560095850875153E219
    .end array-data

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
    :array_8
    .array-data 8
        0x4714a664310d3e20L    # 2.6805188790482263E34
        0xc7f387a1b322b7fL
    .end array-data

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
    :array_9
    .array-data 8
        -0x58ac2438d86c8212L
        0x149b29d59ef21e2L
        0x187068d3c4539816L    # 5.754632726382468E-191
        -0x75e10eb30f0943d9L    # -6.288980981548677E-260
    .end array-data

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
    :array_a
    .array-data 8
        -0xb9d88ee056e907cL
        -0x73b01e95888172c5L
        -0x7750959db3de1cbL
        0x85debcb7f8c509fL
    .end array-data

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
    :array_b
    .array-data 8
        -0x77992f9307b00e6L    # -3.791191197494669E272
        -0x758e007c39949fc8L
        -0x3e72a89d1b527819L    # -6.153327658473187E7
        0x2d71b452c9eb6551L    # 8.691249669483977E-90
    .end array-data
.end method
