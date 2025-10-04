.class public final Lcom/google/android/gms/internal/ads/zzeug;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzexq;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgey;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzgey;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeug;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeug;->zzb:Lcom/google/android/gms/internal/ads/zzgey;

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    const/16 v0, 0x12

    return v0
.end method

.method public final zzb()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeud;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzeud;-><init>(Lcom/google/android/gms/internal/ads/zzeug;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeug;->zzb:Lcom/google/android/gms/internal/ads/zzgey;

    .line 7
    .line 8
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzgey;->zzb(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public final synthetic zzc()Lcom/google/android/gms/internal/ads/zzeuf;
    .locals 14

    .line 1
    const/4 v0, 0x5

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x1

    .line 4
    const/4 v3, 0x4

    .line 5
    new-instance v4, Lcom/google/android/gms/internal/ads/zzeuf;

    .line 6
    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzp()Lcom/google/android/gms/ads/internal/util/zzt;

    .line 8
    .line 9
    .line 10
    sget-object v5, Lcom/google/android/gms/internal/ads/zzbgc;->zzgc:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 11
    .line 12
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 13
    .line 14
    .line 15
    move-result-object v6

    .line 16
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    check-cast v5, Ljava/lang/Boolean;

    .line 21
    .line 22
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    const/4 v6, 0x0

    .line 27
    if-nez v5, :cond_0

    .line 28
    .line 29
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 30
    .line 31
    new-array v7, v2, [J

    .line 32
    .line 33
    const-wide v8, -0x4dffd7b3378071e8L    # -7.491400955868474E-68

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    aput-wide v8, v7, v6

    .line 39
    .line 40
    invoke-direct {v5, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzeug;->zza:Landroid/content/Context;

    .line 49
    .line 50
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 51
    .line 52
    new-array v8, v3, [J

    .line 53
    .line 54
    fill-array-data v8, :array_0

    .line 55
    .line 56
    .line 57
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    invoke-virtual {v5, v7, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 69
    .line 70
    new-array v8, v1, [J

    .line 71
    .line 72
    fill-array-data v8, :array_1

    .line 73
    .line 74
    .line 75
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 83
    .line 84
    new-array v9, v2, [J

    .line 85
    .line 86
    const-wide v10, 0x4c9697de4bd34ab6L    # 9.07648250563221E60

    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    aput-wide v10, v9, v6

    .line 92
    .line 93
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v8

    .line 100
    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    :goto_0
    sget-object v7, Lcom/google/android/gms/internal/ads/zzbgc;->zzge:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 105
    .line 106
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 107
    .line 108
    .line 109
    move-result-object v8

    .line 110
    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v7

    .line 114
    check-cast v7, Ljava/lang/Boolean;

    .line 115
    .line 116
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 117
    .line 118
    .line 119
    move-result v7

    .line 120
    if-nez v7, :cond_1

    .line 121
    .line 122
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 123
    .line 124
    new-array v7, v2, [J

    .line 125
    .line 126
    const-wide v8, 0xf16c93693c399dbL    # 5.598752793035125E-236

    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    aput-wide v8, v7, v6

    .line 132
    .line 133
    invoke-direct {v1, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    goto :goto_1

    .line 141
    :cond_1
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzeug;->zza:Landroid/content/Context;

    .line 142
    .line 143
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 144
    .line 145
    new-array v9, v3, [J

    .line 146
    .line 147
    fill-array-data v9, :array_2

    .line 148
    .line 149
    .line 150
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v8

    .line 157
    invoke-virtual {v7, v8, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 158
    .line 159
    .line 160
    move-result-object v7

    .line 161
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 162
    .line 163
    new-array v1, v1, [J

    .line 164
    .line 165
    fill-array-data v1, :array_3

    .line 166
    .line 167
    .line 168
    invoke-direct {v8, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 176
    .line 177
    new-array v9, v2, [J

    .line 178
    .line 179
    const-wide v10, 0x59536c3e2d08407fL    # 2.0061833682579417E122

    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    aput-wide v10, v9, v6

    .line 185
    .line 186
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v8

    .line 193
    invoke-interface {v7, v1, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    :goto_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzp()Lcom/google/android/gms/ads/internal/util/zzt;

    .line 198
    .line 199
    .line 200
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzeug;->zza:Landroid/content/Context;

    .line 201
    .line 202
    sget-object v8, Lcom/google/android/gms/internal/ads/zzbgc;->zzgd:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 203
    .line 204
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 205
    .line 206
    .line 207
    move-result-object v9

    .line 208
    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v8

    .line 212
    check-cast v8, Ljava/lang/Boolean;

    .line 213
    .line 214
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 215
    .line 216
    .line 217
    move-result v8

    .line 218
    const/4 v9, 0x0

    .line 219
    if-nez v8, :cond_2

    .line 220
    .line 221
    move-object v8, v9

    .line 222
    goto/16 :goto_3

    .line 223
    .line 224
    :cond_2
    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 225
    .line 226
    .line 227
    move-result-object v7

    .line 228
    new-instance v8, Landroid/os/Bundle;

    .line 229
    .line 230
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 231
    .line 232
    .line 233
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 234
    .line 235
    new-array v11, v3, [J

    .line 236
    .line 237
    fill-array-data v11, :array_4

    .line 238
    .line 239
    .line 240
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v10

    .line 247
    invoke-interface {v7, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 248
    .line 249
    .line 250
    move-result v10

    .line 251
    if-eqz v10, :cond_3

    .line 252
    .line 253
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 254
    .line 255
    new-array v11, v3, [J

    .line 256
    .line 257
    fill-array-data v11, :array_5

    .line 258
    .line 259
    .line 260
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v10

    .line 267
    invoke-interface {v7, v10, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 268
    .line 269
    .line 270
    move-result v10

    .line 271
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 272
    .line 273
    new-array v12, v3, [J

    .line 274
    .line 275
    fill-array-data v12, :array_6

    .line 276
    .line 277
    .line 278
    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v11

    .line 285
    invoke-virtual {v8, v11, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 286
    .line 287
    .line 288
    :cond_3
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 289
    .line 290
    new-array v11, v3, [J

    .line 291
    .line 292
    fill-array-data v11, :array_7

    .line 293
    .line 294
    .line 295
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v10

    .line 302
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 303
    .line 304
    new-array v12, v3, [J

    .line 305
    .line 306
    fill-array-data v12, :array_8

    .line 307
    .line 308
    .line 309
    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v11

    .line 316
    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    .line 317
    .line 318
    new-array v13, v0, [J

    .line 319
    .line 320
    fill-array-data v13, :array_9

    .line 321
    .line 322
    .line 323
    invoke-direct {v12, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v12

    .line 330
    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    .line 331
    .line 332
    new-array v0, v0, [J

    .line 333
    .line 334
    fill-array-data v0, :array_a

    .line 335
    .line 336
    .line 337
    invoke-direct {v13, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    filled-new-array {v10, v11, v12, v0}, [Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    :goto_2
    if-ge v6, v3, :cond_5

    .line 349
    .line 350
    aget-object v10, v0, v6

    .line 351
    .line 352
    invoke-interface {v7, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 353
    .line 354
    .line 355
    move-result v11

    .line 356
    if-eqz v11, :cond_4

    .line 357
    .line 358
    invoke-interface {v7, v10, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v11

    .line 362
    invoke-virtual {v8, v10, v11}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    :cond_4
    add-int/2addr v6, v2

    .line 366
    goto :goto_2

    .line 367
    :cond_5
    :goto_3
    invoke-direct {v4, v5, v1, v8, v9}, Lcom/google/android/gms/internal/ads/zzeuf;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzeue;)V

    .line 368
    .line 369
    .line 370
    return-object v4

    .line 371
    :array_0
    .array-data 8
        -0x34b54cef2af37882L    # -5.114603410513528E54
        -0xe9607d014836ab3L    # -2.1138290460273754E238
        0x2d3d256d644b5a86L    # 8.942588881169275E-91
        0x690fcf6d3f652110L    # 1.1889248308594939E198
    .end array-data

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
    :array_1
    .array-data 8
        -0x61dc06b65a2da7e4L
        -0x3bf6f761676fe227L    # -5.772371292326325E19
        -0x59c3c672cc9ea58cL
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
    :array_2
    .array-data 8
        0x40d34b809470add0L    # 19758.00906006788
        -0x2ea3724003ce048dL    # -8.667250868019696E83
        0x29264e43fd3018cfL    # 1.855017206140276E-110
        -0x95db67318bad331L    # -2.879227366785222E263
    .end array-data

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
    :array_3
    .array-data 8
        -0x6abf7c1ee794711dL    # -2.57202740492078E-206
        0x4a78d8101fbd3a6bL    # 5.8095265406775485E50
        -0x26ccb65d63b05767L    # -4.980549955894371E121
    .end array-data

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
    :array_4
    .array-data 8
        0x376634453dcd3122L    # 7.96535948639658E-42
        0x195675c3cdf31851L
        -0x45313f9b2e9c59f0L    # -1.9872715888391537E-25
        -0x56fdbc84f77043d5L
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
    :array_5
    .array-data 8
        0x6b059a8e63699260L    # 3.4679743345215645E207
        0x6ac3b47e827f6e1aL
        -0x6b840db645050780L    # -5.312873670863304E-210
        0x49d17f5c2eb3cafaL    # 3.9957227186599595E47
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
    :array_6
    .array-data 8
        0x710cdc00f3688eebL    # 3.6704030182889202E236
        0x4d1888a0d34e949bL    # 2.5231451088638956E63
        0x5341b6637091a90fL    # 1.1545890469569133E93
        -0x229cb4785d46230eL    # -7.352814710572275E141
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
    :array_7
    .array-data 8
        -0x23d5128f9da59dc0L    # -9.785973455690842E135
        -0x2ce3a262c056efa6L    # -2.3112764810737506E92
        -0x6a457cc4a590d23eL
        -0x603ff2a99696e162L    # -9.353283568458E-156
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
    :array_8
    .array-data 8
        0x5618f2842e0e8180L    # 5.721666546381249E106
        0xb44202e6ecc94b0L
        -0x1fb395a46aa5f48cL    # -7.619780585510814E155
        -0x3eabe9bb27a776fL
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
    :array_9
    .array-data 8
        0xe145da0d13bd41bL    # 7.63560702085752E-241
        0x3a8680d2dfc21ee3L    # 9.088977239853423E-27
        -0x57baed2c6a726882L
        0xefb94e1bbe4a92dL
        0x3bf25c565617e3feL    # 6.22084455461882E-20
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
    .line 564
    .line 565
    .line 566
    .line 567
    :array_a
    .array-data 8
        0x771fd5f489435ee7L    # 6.415809350380924E265
        -0x25ce9145c02d1a84L    # -2.9501126750047115E126
        0x720b86585d2c2dcdL    # 2.2941958644508406E241
        -0x55a308b71f600b96L
        0x7aad20d5da5379beL    # 8.45980855406421E282
    .end array-data
.end method
