.class public final Lcom/google/android/gms/internal/ads/zzceh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcdu;


# instance fields
.field private final zza:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzceh;->zza:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzceh;->zza:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Z
    .locals 8
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x5

    .line 3
    const/4 v2, 0x3

    .line 4
    const/4 v3, 0x0

    .line 5
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/util/ClientLibraryUtils;->isPackageSide()Z

    .line 6
    .line 7
    .line 8
    move-result v4

    .line 9
    if-eqz v4, :cond_0

    .line 10
    .line 11
    const/16 v4, 0x107

    .line 12
    .line 13
    invoke-static {v4}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto/16 :goto_8

    .line 19
    .line 20
    :cond_0
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 26
    .line 27
    new-array v6, v2, [J

    .line 28
    .line 29
    fill-array-data v6, :array_0

    .line 30
    .line 31
    .line 32
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzcec;->zze(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    new-instance v4, Ljava/net/URL;

    .line 53
    .line 54
    invoke-direct {v4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    check-cast v4, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .line 63
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->zzb()Lcom/google/android/gms/internal/ads/zzcdv;

    .line 64
    .line 65
    .line 66
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzceh;->zza:Ljava/lang/String;

    .line 67
    .line 68
    const v6, 0xea60

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4, v6}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 72
    .line 73
    .line 74
    const/4 v7, 0x1

    .line 75
    invoke-virtual {v4, v7}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4, v6}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 79
    .line 80
    .line 81
    if-eqz v5, :cond_1

    .line 82
    .line 83
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 84
    .line 85
    new-array v2, v2, [J

    .line 86
    .line 87
    fill-array-data v2, :array_1

    .line 88
    .line 89
    .line 90
    invoke-direct {v6, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-virtual {v4, v2, v5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :catchall_1
    move-exception v2

    .line 102
    goto :goto_4

    .line 103
    :cond_1
    :goto_1
    invoke-virtual {v4, v3}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 104
    .line 105
    .line 106
    new-instance v2, Lcom/google/android/gms/internal/ads/zzceb;

    .line 107
    .line 108
    const/4 v5, 0x0

    .line 109
    invoke-direct {v2, v5}, Lcom/google/android/gms/internal/ads/zzceb;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/ads/zzceb;->zzc(Ljava/net/HttpURLConnection;[B)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 116
    .line 117
    .line 118
    move-result v5

    .line 119
    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/ads/zzceb;->zze(Ljava/net/HttpURLConnection;I)V

    .line 120
    .line 121
    .line 122
    const/16 v2, 0xc8

    .line 123
    .line 124
    if-lt v5, v2, :cond_3

    .line 125
    .line 126
    const/16 v2, 0x12c

    .line 127
    .line 128
    if-lt v5, v2, :cond_2

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_2
    const/4 v3, 0x1

    .line 132
    goto :goto_3

    .line 133
    :cond_3
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 139
    .line 140
    const/4 v7, 0x6

    .line 141
    new-array v7, v7, [J

    .line 142
    .line 143
    fill-array-data v7, :array_2

    .line 144
    .line 145
    .line 146
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v6

    .line 153
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 160
    .line 161
    const/4 v6, 0x4

    .line 162
    new-array v6, v6, [J

    .line 163
    .line 164
    fill-array-data v6, :array_3

    .line 165
    .line 166
    .line 167
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v5

    .line 174
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzcec;->zzj(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 185
    .line 186
    .line 187
    :goto_3
    :try_start_2
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 188
    .line 189
    .line 190
    invoke-static {}, Lcom/google/android/gms/common/util/ClientLibraryUtils;->isPackageSide()Z

    .line 191
    .line 192
    .line 193
    move-result p1

    .line 194
    if-eqz p1, :cond_4

    .line 195
    .line 196
    goto/16 :goto_7

    .line 197
    .line 198
    :catch_0
    move-exception v2

    .line 199
    goto :goto_5

    .line 200
    :catch_1
    move-exception v2

    .line 201
    goto :goto_5

    .line 202
    :catch_2
    move-exception v2

    .line 203
    goto :goto_6

    .line 204
    :goto_4
    :try_start_3
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 205
    .line 206
    .line 207
    throw v2
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 208
    :goto_5
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    new-instance v4, Ljava/lang/StringBuilder;

    .line 213
    .line 214
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    .line 216
    .line 217
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 218
    .line 219
    new-array v1, v1, [J

    .line 220
    .line 221
    fill-array-data v1, :array_4

    .line 222
    .line 223
    .line 224
    invoke-direct {v5, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 238
    .line 239
    new-array v0, v0, [J

    .line 240
    .line 241
    fill-array-data v0, :array_5

    .line 242
    .line 243
    .line 244
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzj(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 262
    .line 263
    .line 264
    invoke-static {}, Lcom/google/android/gms/common/util/ClientLibraryUtils;->isPackageSide()Z

    .line 265
    .line 266
    .line 267
    move-result p1

    .line 268
    if-eqz p1, :cond_4

    .line 269
    .line 270
    goto :goto_7

    .line 271
    :goto_6
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v2

    .line 275
    new-instance v4, Ljava/lang/StringBuilder;

    .line 276
    .line 277
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 278
    .line 279
    .line 280
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 281
    .line 282
    new-array v1, v1, [J

    .line 283
    .line 284
    fill-array-data v1, :array_6

    .line 285
    .line 286
    .line 287
    invoke-direct {v5, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 301
    .line 302
    new-array v0, v0, [J

    .line 303
    .line 304
    fill-array-data v0, :array_7

    .line 305
    .line 306
    .line 307
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object p1

    .line 314
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object p1

    .line 324
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzj(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 325
    .line 326
    .line 327
    invoke-static {}, Lcom/google/android/gms/common/util/ClientLibraryUtils;->isPackageSide()Z

    .line 328
    .line 329
    .line 330
    move-result p1

    .line 331
    if-eqz p1, :cond_4

    .line 332
    .line 333
    :goto_7
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 334
    .line 335
    .line 336
    :cond_4
    return v3

    .line 337
    :goto_8
    invoke-static {}, Lcom/google/android/gms/common/util/ClientLibraryUtils;->isPackageSide()Z

    .line 338
    .line 339
    .line 340
    move-result v0

    .line 341
    if-eqz v0, :cond_5

    .line 342
    .line 343
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 344
    .line 345
    .line 346
    :cond_5
    throw p1

    .line 347
    :array_0
    .array-data 8
        0x6f6d3f951976b019L    # 5.54304465023185E228
        -0x72e560c43b09e3f5L
        -0x86d5cf9f4a96ea4L
    .end array-data

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
    :array_1
    .array-data 8
        0x2b0830bb49061789L
        -0x1beac459ee919ad5L    # -1.312891773533535E174
        0x40dc65850b5f3d3cL    # 29078.078819093513
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
    :array_2
    .array-data 8
        -0x7c6e2fa2598732d2L    # -1.785105642448218E-291
        -0x2bf1f8213207bd6aL    # -8.018159843489709E96
        0x387c5ee35383680dL    # 1.3339818447655182E-36
        0x3aeb04b87c9b79baL    # 6.984103058163552E-25
        -0x1eb316fe05b724ceL    # -5.080642051517823E160
        0x1ad20b5e5b50892aL    # 1.739423141753563E-179
    .end array-data

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
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    :array_3
    .array-data 8
        0x4061b52ab2c94b8L
        -0x71a043ea9ccfa1a7L
        -0x3bc37504b923f755L    # -5.2652351017110805E20
        -0x748ab2c7c6cc38fL    # -3.155411430845227E273
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
    :array_4
    .array-data 8
        -0x5733863f6067d666L
        -0x522e64ca5013286dL    # -5.531578440462065E-88
        -0x636f134bf68226b2L    # -4.379468965425009E-171
        0x218860ef1438c076L
        -0x16dcd099e9ac4659L    # -2.868219555190484E198
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
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    :array_5
    .array-data 8
        -0x515ddd681d5ad277L    # -4.6675813255750145E-84
        -0x5746593593e12a39L
    .end array-data

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
    :array_6
    .array-data 8
        -0x11c022777ea9d719L    # -1.1518493845922289E223
        -0x36bf74dcd30d1225L    # -7.378650011024776E44
        0xded9d981088abe0L
        0x1cbb5020c5879858L
        -0x334ec8c06c2d9b37L    # -2.76647462618747E61
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
    .line 484
    .line 485
    .line 486
    .line 487
    :array_7
    .array-data 8
        0x7609ca6635367a86L    # 3.9654098780664786E260
        0x4a547b35922cf37L
    .end array-data
.end method
