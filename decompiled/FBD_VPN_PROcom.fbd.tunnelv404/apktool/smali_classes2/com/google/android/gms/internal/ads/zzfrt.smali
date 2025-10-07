.class public final Lcom/google/android/gms/internal/ads/zzfrt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static zza(I)Z
    .locals 1

    add-int/lit8 p0, p0, -0x1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static final zzb(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfqr;)I
    .locals 14

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    new-instance v1, Ljava/io/File;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 15
    .line 16
    const/4 v3, 0x2

    .line 17
    new-array v4, v3, [J

    .line 18
    .line 19
    fill-array-data v4, :array_0

    .line 20
    .line 21
    .line 22
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    const/16 v2, 0x1399

    .line 37
    .line 38
    const/4 v4, 0x7

    .line 39
    const/4 v5, 0x6

    .line 40
    const/16 v6, 0x8

    .line 41
    .line 42
    const/16 v7, 0x3e8

    .line 43
    .line 44
    const/4 v8, 0x3

    .line 45
    const/4 v9, 0x0

    .line 46
    const/4 v10, 0x5

    .line 47
    const/4 v11, 0x1

    .line 48
    if-nez v1, :cond_0

    .line 49
    .line 50
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 51
    .line 52
    new-array v1, v3, [J

    .line 53
    .line 54
    fill-array-data v1, :array_1

    .line 55
    .line 56
    .line 57
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzfqr;->zzb(ILjava/lang/String;)Lcom/google/android/gms/tasks/Task;

    .line 65
    .line 66
    .line 67
    :goto_0
    const/16 v0, 0x3e8

    .line 68
    .line 69
    goto/16 :goto_7

    .line 70
    .line 71
    :cond_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 72
    .line 73
    new-array v12, v3, [J

    .line 74
    .line 75
    fill-array-data v12, :array_2

    .line 76
    .line 77
    .line 78
    invoke-direct {v1, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    new-instance v12, Lcom/google/android/gms/internal/ads/zzgcj;

    .line 86
    .line 87
    invoke-static {v1, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-direct {v12, v1}, Lcom/google/android/gms/internal/ads/zzgcj;-><init>(Ljava/util/regex/Pattern;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v12}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    if-eqz v0, :cond_9

    .line 99
    .line 100
    array-length v1, v0

    .line 101
    if-nez v1, :cond_1

    .line 102
    .line 103
    goto/16 :goto_6

    .line 104
    .line 105
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    .line 106
    .line 107
    const/4 v2, 0x0

    .line 108
    aget-object v0, v0, v2

    .line 109
    .line 110
    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .line 112
    .line 113
    const/16 v0, 0x14

    .line 114
    .line 115
    :try_start_1
    new-array v12, v0, [B

    .line 116
    .line 117
    invoke-virtual {v1, v12}, Ljava/io/FileInputStream;->read([B)I

    .line 118
    .line 119
    .line 120
    move-result v13

    .line 121
    if-ne v13, v0, :cond_2

    .line 122
    .line 123
    new-array v0, v3, [B

    .line 124
    .line 125
    aput-byte v2, v0, v2

    .line 126
    .line 127
    aput-byte v2, v0, v11

    .line 128
    .line 129
    aget-byte v13, v12, v10

    .line 130
    .line 131
    if-ne v13, v3, :cond_3

    .line 132
    .line 133
    invoke-static {v12, v9, p0, p1}, Lcom/google/android/gms/internal/ads/zzfrt;->zzd([BLjava/lang/String;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfqr;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    .line 135
    .line 136
    :cond_2
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 137
    .line 138
    .line 139
    :goto_2
    const/4 v0, 0x1

    .line 140
    goto/16 :goto_7

    .line 141
    .line 142
    :catch_0
    move-exception v0

    .line 143
    goto :goto_5

    .line 144
    :catchall_0
    move-exception v0

    .line 145
    goto :goto_3

    .line 146
    :cond_3
    const/16 v13, 0x13

    .line 147
    .line 148
    :try_start_3
    aget-byte v13, v12, v13

    .line 149
    .line 150
    aput-byte v13, v0, v2

    .line 151
    .line 152
    const/16 v2, 0x12

    .line 153
    .line 154
    aget-byte v2, v12, v2

    .line 155
    .line 156
    aput-byte v2, v0, v11

    .line 157
    .line 158
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    if-eq v0, v8, :cond_8

    .line 167
    .line 168
    const/16 v2, 0x28

    .line 169
    .line 170
    if-eq v0, v2, :cond_7

    .line 171
    .line 172
    const/16 v2, 0x3e

    .line 173
    .line 174
    if-eq v0, v2, :cond_6

    .line 175
    .line 176
    const/16 v2, 0xb7

    .line 177
    .line 178
    if-eq v0, v2, :cond_5

    .line 179
    .line 180
    const/16 v2, 0xf3

    .line 181
    .line 182
    if-eq v0, v2, :cond_4

    .line 183
    .line 184
    invoke-static {v12, v9, p0, p1}, Lcom/google/android/gms/internal/ads/zzfrt;->zzd([BLjava/lang/String;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfqr;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 185
    .line 186
    .line 187
    goto :goto_1

    .line 188
    :cond_4
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 189
    .line 190
    .line 191
    const/16 v0, 0x8

    .line 192
    .line 193
    goto :goto_7

    .line 194
    :cond_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 195
    .line 196
    .line 197
    const/4 v0, 0x6

    .line 198
    goto :goto_7

    .line 199
    :cond_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 200
    .line 201
    .line 202
    const/4 v0, 0x7

    .line 203
    goto :goto_7

    .line 204
    :cond_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 205
    .line 206
    .line 207
    const/4 v0, 0x3

    .line 208
    goto :goto_7

    .line 209
    :cond_8
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 210
    .line 211
    .line 212
    const/4 v0, 0x5

    .line 213
    goto :goto_7

    .line 214
    :goto_3
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 215
    .line 216
    .line 217
    goto :goto_4

    .line 218
    :catchall_1
    move-exception v1

    .line 219
    :try_start_6
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 220
    .line 221
    .line 222
    :goto_4
    throw v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 223
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    invoke-static {v9, v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzfrt;->zzd([BLjava/lang/String;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfqr;)V

    .line 228
    .line 229
    .line 230
    goto :goto_2

    .line 231
    :cond_9
    :goto_6
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 232
    .line 233
    new-array v1, v3, [J

    .line 234
    .line 235
    fill-array-data v1, :array_3

    .line 236
    .line 237
    .line 238
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzfqr;->zzb(ILjava/lang/String;)Lcom/google/android/gms/tasks/Task;

    .line 246
    .line 247
    .line 248
    goto/16 :goto_0

    .line 249
    .line 250
    :goto_7
    if-ne v0, v7, :cond_12

    .line 251
    .line 252
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzfrt;->zzc(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfqr;)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 257
    .line 258
    .line 259
    move-result v1

    .line 260
    if-eqz v1, :cond_a

    .line 261
    .line 262
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 263
    .line 264
    new-array v1, v8, [J

    .line 265
    .line 266
    fill-array-data v1, :array_4

    .line 267
    .line 268
    .line 269
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    invoke-static {v9, v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzfrt;->zzd([BLjava/lang/String;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfqr;)V

    .line 277
    .line 278
    .line 279
    :goto_8
    const/4 v0, 0x1

    .line 280
    goto/16 :goto_9

    .line 281
    .line 282
    :cond_a
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 283
    .line 284
    new-array v2, v3, [J

    .line 285
    .line 286
    fill-array-data v2, :array_5

    .line 287
    .line 288
    .line 289
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 297
    .line 298
    .line 299
    move-result v1

    .line 300
    if-nez v1, :cond_b

    .line 301
    .line 302
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 303
    .line 304
    new-array v2, v3, [J

    .line 305
    .line 306
    fill-array-data v2, :array_6

    .line 307
    .line 308
    .line 309
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v1

    .line 316
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 317
    .line 318
    .line 319
    move-result v1

    .line 320
    if-eqz v1, :cond_c

    .line 321
    .line 322
    :cond_b
    const/4 v0, 0x5

    .line 323
    goto/16 :goto_9

    .line 324
    .line 325
    :cond_c
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 326
    .line 327
    new-array v2, v3, [J

    .line 328
    .line 329
    fill-array-data v2, :array_7

    .line 330
    .line 331
    .line 332
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v1

    .line 339
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 340
    .line 341
    .line 342
    move-result v1

    .line 343
    if-eqz v1, :cond_d

    .line 344
    .line 345
    const/4 v0, 0x7

    .line 346
    goto :goto_9

    .line 347
    :cond_d
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 348
    .line 349
    new-array v2, v8, [J

    .line 350
    .line 351
    fill-array-data v2, :array_8

    .line 352
    .line 353
    .line 354
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v1

    .line 361
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 362
    .line 363
    .line 364
    move-result v1

    .line 365
    if-eqz v1, :cond_e

    .line 366
    .line 367
    const/4 v0, 0x6

    .line 368
    goto :goto_9

    .line 369
    :cond_e
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 370
    .line 371
    new-array v2, v8, [J

    .line 372
    .line 373
    fill-array-data v2, :array_9

    .line 374
    .line 375
    .line 376
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v1

    .line 383
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 384
    .line 385
    .line 386
    move-result v1

    .line 387
    if-nez v1, :cond_f

    .line 388
    .line 389
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 390
    .line 391
    new-array v2, v3, [J

    .line 392
    .line 393
    fill-array-data v2, :array_a

    .line 394
    .line 395
    .line 396
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v1

    .line 403
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 404
    .line 405
    .line 406
    move-result v1

    .line 407
    if-eqz v1, :cond_10

    .line 408
    .line 409
    :cond_f
    const/4 v0, 0x3

    .line 410
    goto :goto_9

    .line 411
    :cond_10
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 412
    .line 413
    new-array v2, v3, [J

    .line 414
    .line 415
    fill-array-data v2, :array_b

    .line 416
    .line 417
    .line 418
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v1

    .line 425
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 426
    .line 427
    .line 428
    move-result v1

    .line 429
    if-eqz v1, :cond_11

    .line 430
    .line 431
    const/16 v0, 0x8

    .line 432
    .line 433
    goto :goto_9

    .line 434
    :cond_11
    invoke-static {v9, v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzfrt;->zzd([BLjava/lang/String;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfqr;)V

    .line 435
    .line 436
    .line 437
    goto/16 :goto_8

    .line 438
    .line 439
    :cond_12
    :goto_9
    if-eq v0, v11, :cond_18

    .line 440
    .line 441
    if-eq v0, v8, :cond_17

    .line 442
    .line 443
    if-eq v0, v10, :cond_16

    .line 444
    .line 445
    if-eq v0, v5, :cond_15

    .line 446
    .line 447
    if-eq v0, v4, :cond_14

    .line 448
    .line 449
    if-eq v0, v6, :cond_13

    .line 450
    .line 451
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 452
    .line 453
    new-array v1, v3, [J

    .line 454
    .line 455
    fill-array-data v1, :array_c

    .line 456
    .line 457
    .line 458
    invoke-direct {p0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 459
    .line 460
    .line 461
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object p0

    .line 465
    goto :goto_b

    .line 466
    :cond_13
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 467
    .line 468
    new-array v1, v3, [J

    .line 469
    .line 470
    fill-array-data v1, :array_d

    .line 471
    .line 472
    .line 473
    invoke-direct {p0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 474
    .line 475
    .line 476
    :goto_a
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object p0

    .line 480
    goto :goto_b

    .line 481
    :cond_14
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 482
    .line 483
    new-array v1, v3, [J

    .line 484
    .line 485
    fill-array-data v1, :array_e

    .line 486
    .line 487
    .line 488
    invoke-direct {p0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 489
    .line 490
    .line 491
    goto :goto_a

    .line 492
    :cond_15
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 493
    .line 494
    new-array v1, v3, [J

    .line 495
    .line 496
    fill-array-data v1, :array_f

    .line 497
    .line 498
    .line 499
    invoke-direct {p0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 500
    .line 501
    .line 502
    goto :goto_a

    .line 503
    :cond_16
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 504
    .line 505
    new-array v1, v3, [J

    .line 506
    .line 507
    fill-array-data v1, :array_10

    .line 508
    .line 509
    .line 510
    invoke-direct {p0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 511
    .line 512
    .line 513
    goto :goto_a

    .line 514
    :cond_17
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 515
    .line 516
    new-array v1, v3, [J

    .line 517
    .line 518
    fill-array-data v1, :array_11

    .line 519
    .line 520
    .line 521
    invoke-direct {p0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 522
    .line 523
    .line 524
    goto :goto_a

    .line 525
    :cond_18
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 526
    .line 527
    new-array v1, v8, [J

    .line 528
    .line 529
    fill-array-data v1, :array_12

    .line 530
    .line 531
    .line 532
    invoke-direct {p0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 533
    .line 534
    .line 535
    goto :goto_a

    .line 536
    :goto_b
    const/16 v1, 0x139a

    .line 537
    .line 538
    invoke-virtual {p1, v1, p0}, Lcom/google/android/gms/internal/ads/zzfqr;->zzb(ILjava/lang/String;)Lcom/google/android/gms/tasks/Task;

    .line 539
    .line 540
    .line 541
    return v0

    .line 542
    nop

    .line 543
    :array_0
    .array-data 8
        -0x6ed99055125d135bL    # -4.735464712325168E-226
        0x24e4564a34943ff0L    # 5.730338454202664E-131
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
    :array_1
    .array-data 8
        0x655b5575cab846e6L    # 1.772221052812174E180
        0x56df58004b224607L    # 2.944485683854481E110
    .end array-data

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
    :array_2
    .array-data 8
        -0x1e28c5cb0af753faL
        -0x28a8bf3febd2760aL    # -5.59211503307999E112
    .end array-data

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
    :array_3
    .array-data 8
        -0x2d9a70caccf48f00L    # -8.577594657975387E88
        0x984135010aecfbbL
    .end array-data

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
    :array_4
    .array-data 8
        0x5e0961c1bb5d3ff6L    # 9.904474004919078E144
        0x2bc93b6715a9bf85L    # 9.228769764928237E-98
        0x5f023cd7c960878eL    # 4.663985154016016E149
    .end array-data

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
    :array_5
    .array-data 8
        -0x361707ddc886bab7L    # -1.1403947520276475E48
        -0x32057d881ed671fcL
    .end array-data

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
    :array_6
    .array-data 8
        0x506e0a440d8ed47L
        0xa6dd4e871600fceL
    .end array-data

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
    :array_7
    .array-data 8
        0x44a6075af1c1eb7L
        -0xb8cb3ecd5a094fcL    # -8.842395588599121E252
    .end array-data

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
    :array_8
    .array-data 8
        0x2f9d64832dd50347L    # 2.4789031043069578E-79
        -0x346e908a76a09c3fL    # -1.068786126494058E56
        -0x78526aaac8870042L
    .end array-data

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
    :array_9
    .array-data 8
        0x71c28b2a143fb300L    # 9.660083173898922E239
        0x30f2e3578ddac173L    # 6.681412576802983E-73
        -0x638a79d0a5e7ab6L
    .end array-data

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
    .line 672
    .line 673
    .line 674
    .line 675
    :array_a
    .array-data 8
        -0x7062fee407c4782eL
        0xec8f8ad17ecad97L    # 1.91741520977732E-237
    .end array-data

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
    :array_b
    .array-data 8
        -0x9079e7bc3d903cdL
        0xf26c0134e051028L
    .end array-data

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
    :array_c
    .array-data 8
        0x33d9816b9c5171f1L    # 6.348856659119946E-59
        0x1235ccbece2b9333L    # 6.030807007268024E-221
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
    :array_d
    .array-data 8
        -0x64283e2aab7aa77fL
        -0x160553b79b3bb530L    # -3.2666953699725343E202
    .end array-data

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
    :array_e
    .array-data 8
        0x2add8a09caee1119L
        0x7bb5d2b306a17ad7L    # 8.307516351313796E287
    .end array-data

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
    :array_f
    .array-data 8
        -0x3344ab91af802016L    # -4.391730864323844E61
        -0x30dceb1a54cae0d2L    # -1.6857160507883403E73
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
    :array_10
    .array-data 8
        -0x53dff88ef4a59e1bL    # -3.752145588970808E-96
        0x1835dddb6475e80eL
    .end array-data

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
    :array_11
    .array-data 8
        -0x242f8b971f1555L
        0x7006d122df0deb9fL    # 4.427963698727787E231
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
    :array_12
    .array-data 8
        0x7f698ce442e0da2bL    # 5.606897357445638E305
        0x163e3b437caaf98L
        0x442f0fd5c33905aeL    # 2.864950495076401E20
    .end array-data
.end method

.method private static final zzc(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfqr;)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    new-array v1, v0, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    new-instance v1, Ljava/util/HashSet;

    .line 17
    .line 18
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 19
    .line 20
    new-array v0, v0, [J

    .line 21
    .line 22
    fill-array-data v0, :array_1

    .line 23
    .line 24
    .line 25
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    filled-new-array {p0, v0}, [Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-direct {v1, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 41
    .line 42
    .line 43
    sget-object p0, Lcom/google/android/gms/internal/ads/zzfxs;->zzu:Lcom/google/android/gms/internal/ads/zzfxs;

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfxs;->zza()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_1

    .line 54
    .line 55
    invoke-virtual {v1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_0

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    return-object p0

    .line 63
    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    .line 64
    .line 65
    const/16 p0, 0x7e8

    .line 66
    .line 67
    :try_start_0
    const-class v2, Landroid/os/Build;

    .line 68
    .line 69
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 70
    .line 71
    const/4 v4, 0x3

    .line 72
    new-array v4, v4, [J

    .line 73
    .line 74
    fill-array-data v4, :array_2

    .line 75
    .line 76
    .line 77
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    const/4 v3, 0x0

    .line 89
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    check-cast v2, [Ljava/lang/String;

    .line 94
    .line 95
    if-eqz v2, :cond_2

    .line 96
    .line 97
    array-length v3, v2

    .line 98
    if-lez v3, :cond_2

    .line 99
    .line 100
    const/4 v3, 0x0

    .line 101
    aget-object p0, v2, v3
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .line 103
    return-object p0

    .line 104
    :catch_0
    move-exception v2

    .line 105
    goto :goto_1

    .line 106
    :catch_1
    move-exception v2

    .line 107
    goto :goto_2

    .line 108
    :goto_1
    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfqr;->zzc(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    .line 109
    .line 110
    .line 111
    goto :goto_3

    .line 112
    :goto_2
    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfqr;->zzc(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    .line 113
    .line 114
    .line 115
    :cond_2
    :goto_3
    sget-object p0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 116
    .line 117
    if-eqz p0, :cond_3

    .line 118
    .line 119
    return-object p0

    .line 120
    :cond_3
    sget-object p0, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    .line 121
    .line 122
    return-object p0

    .line 123
    :array_0
    .array-data 8
        0x4c0c41d096d92650L    # 2.2171577854298287E58
        -0x69dcd82b02478f0bL    # -4.887744951621845E-202
    .end array-data

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
        -0x1df13e81b0cfd5e5L    # -2.2138855031048493E164
        0x55d27a4b949cd99bL    # 2.648663471168775E105
    .end array-data

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
    :array_2
    .array-data 8
        -0x156e18acca7115f2L    # -2.245317452610084E205
        -0x60273894f55c9fadL
        0x131537b0ca95c2a0L    # 9.61696838369454E-217
    .end array-data
.end method

.method private static final zzd([BLjava/lang/String;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfqr;)V
    .locals 5

    .line 1
    const/4 p2, 0x3

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    .line 6
    .line 7
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    new-array v3, v2, [J

    .line 11
    .line 12
    fill-array-data v3, :array_0

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    sget-object v1, Lcom/google/android/gms/internal/ads/zzfxs;->zzu:Lcom/google/android/gms/internal/ads/zzfxs;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfxs;->zza()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 35
    .line 36
    new-array v3, v2, [J

    .line 37
    .line 38
    fill-array-data v3, :array_1

    .line 39
    .line 40
    .line 41
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    :try_start_0
    const-class v1, Landroid/os/Build;

    .line 52
    .line 53
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 54
    .line 55
    new-array v4, p2, [J

    .line 56
    .line 57
    fill-array-data v4, :array_2

    .line 58
    .line 59
    .line 60
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    const/4 v3, 0x0

    .line 72
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    check-cast v1, [Ljava/lang/String;

    .line 77
    .line 78
    if-eqz v1, :cond_0

    .line 79
    .line 80
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 81
    .line 82
    new-array v4, p2, [J

    .line 83
    .line 84
    fill-array-data v4, :array_3

    .line 85
    .line 86
    .line 87
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 105
    .line 106
    new-array v3, v2, [J

    .line 107
    .line 108
    fill-array-data v3, :array_4

    .line 109
    .line 110
    .line 111
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :catch_0
    nop

    .line 123
    :cond_0
    :goto_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 124
    .line 125
    new-array v3, v2, [J

    .line 126
    .line 127
    fill-array-data v3, :array_5

    .line 128
    .line 129
    .line 130
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 141
    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 146
    .line 147
    new-array p2, p2, [J

    .line 148
    .line 149
    fill-array-data p2, :array_6

    .line 150
    .line 151
    .line 152
    invoke-direct {v1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p2

    .line 159
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    sget-object p2, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    .line 163
    .line 164
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 168
    .line 169
    new-array v1, v2, [J

    .line 170
    .line 171
    fill-array-data v1, :array_7

    .line 172
    .line 173
    .line 174
    invoke-direct {p2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p2

    .line 181
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    if-eqz p0, :cond_1

    .line 185
    .line 186
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 187
    .line 188
    new-array v1, v2, [J

    .line 189
    .line 190
    fill-array-data v1, :array_8

    .line 191
    .line 192
    .line 193
    invoke-direct {p2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p2

    .line 200
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p0

    .line 207
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 211
    .line 212
    new-array p2, v2, [J

    .line 213
    .line 214
    fill-array-data p2, :array_9

    .line 215
    .line 216
    .line 217
    invoke-direct {p0, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object p0

    .line 224
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    :cond_1
    if-eqz p1, :cond_2

    .line 228
    .line 229
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 230
    .line 231
    new-array p2, v2, [J

    .line 232
    .line 233
    fill-array-data p2, :array_a

    .line 234
    .line 235
    .line 236
    invoke-direct {p0, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object p0

    .line 243
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 250
    .line 251
    new-array p1, v2, [J

    .line 252
    .line 253
    fill-array-data p1, :array_b

    .line 254
    .line 255
    .line 256
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object p0

    .line 263
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    :cond_2
    const/16 p0, 0xfa7

    .line 267
    .line 268
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    invoke-virtual {p3, p0, p1}, Lcom/google/android/gms/internal/ads/zzfqr;->zzb(ILjava/lang/String;)Lcom/google/android/gms/tasks/Task;

    .line 273
    .line 274
    .line 275
    return-void

    .line 276
    nop

    .line 277
    :array_0
    .array-data 8
        -0x5f3674ad7bf42481L    # -9.754498813729516E-151
        0x6f313e9967a70747L    # 4.085150472543261E227
    .end array-data

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
    :array_1
    .array-data 8
        0x5549b5990c462257L    # 7.197802326751982E102
        0x59c4507895100599L    # 2.6857831338094384E124
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
    :array_2
    .array-data 8
        0x37455efc257708a9L    # 1.916620701028273E-42
        -0x658be32714d79d5bL
        -0x623708b2cd598cd2L
    .end array-data

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
    .line 314
    .line 315
    .line 316
    .line 317
    :array_3
    .array-data 8
        -0x7c18706beb6cf240L    # -7.555186667648497E-290
        0x36c41ddf3b33d3c9L    # 7.047370821305079E-45
        -0x47b9d264abfbebf0L    # -1.3035145823584395E-37
    .end array-data

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
    :array_4
    .array-data 8
        0x4916c5fa44913145L    # 1.269656691073367E44
        -0x4cff203e466754f7L    # -5.12731784412807E-63
    .end array-data

    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    :array_5
    .array-data 8
        -0x49cc2e1bf634f9fbL    # -1.3561316204759522E-47
        -0x566dc2c806ac06f2L
    .end array-data

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
    :array_6
    .array-data 8
        -0x640356162f96ed45L    # -7.243277564990052E-174
        -0x72366ce9d369b02cL
        -0x845492ba06f6a81L    # -5.512872723655487E268
    .end array-data

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
    .line 370
    .line 371
    .line 372
    .line 373
    :array_7
    .array-data 8
        -0x4c04cbb924db77ebL    # -2.708675050600544E-58
        -0x3b5a8fca62326b78L    # -5.06197974733056E22
    .end array-data

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
    :array_8
    .array-data 8
        -0x3af10c49d2bfab06L    # -4.677333776487147E24
        0x53927e2f508f25d8L    # 3.8574819212151885E94
    .end array-data

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
    :array_9
    .array-data 8
        0x247df9c61b4b8b48L    # 6.598587139659903E-133
        -0x3b58b78c6593de3aL    # -5.497546238433101E22
    .end array-data

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
    :array_a
    .array-data 8
        0x1a352321138e60d1L
        0x708935506bea033eL    # 1.252360870994581E234
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
    :array_b
    .array-data 8
        0x795a522008adec5bL    # 3.6451478093560004E276
        0x1678e6a4f875cbbaL
    .end array-data
.end method
