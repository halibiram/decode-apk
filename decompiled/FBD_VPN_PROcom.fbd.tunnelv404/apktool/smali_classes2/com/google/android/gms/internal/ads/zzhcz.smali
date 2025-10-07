.class final Lcom/google/android/gms/internal/ads/zzhcz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final zza:J

.field static final zzb:Z

.field private static final zzc:Lsun/misc/Unsafe;

.field private static final zzd:Ljava/lang/Class;

.field private static final zze:Z

.field private static final zzf:Lcom/google/android/gms/internal/ads/zzhcy;

.field private static final zzg:Z

.field private static final zzh:Z

.field private static final zzi:J


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x2

    .line 4
    const/4 v3, 0x0

    .line 5
    const/4 v4, 0x1

    .line 6
    const-class v5, Ljava/lang/Class;

    .line 7
    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhcz;->zzi()Lsun/misc/Unsafe;

    .line 9
    .line 10
    .line 11
    move-result-object v6

    .line 12
    sput-object v6, Lcom/google/android/gms/internal/ads/zzhcz;->zzc:Lsun/misc/Unsafe;

    .line 13
    .line 14
    sget v7, Lcom/google/android/gms/internal/ads/zzgxw;->zza:I

    .line 15
    .line 16
    const-class v7, Llibcore/io/Memory;

    .line 17
    .line 18
    sput-object v7, Lcom/google/android/gms/internal/ads/zzhcz;->zzd:Ljava/lang/Class;

    .line 19
    .line 20
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 21
    .line 22
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzhcz;->zzy(Ljava/lang/Class;)Z

    .line 23
    .line 24
    .line 25
    move-result v8

    .line 26
    sput-boolean v8, Lcom/google/android/gms/internal/ads/zzhcz;->zze:Z

    .line 27
    .line 28
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 29
    .line 30
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzhcz;->zzy(Ljava/lang/Class;)Z

    .line 31
    .line 32
    .line 33
    move-result v9

    .line 34
    const/4 v10, 0x0

    .line 35
    if-nez v6, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    if-eqz v8, :cond_1

    .line 39
    .line 40
    new-instance v10, Lcom/google/android/gms/internal/ads/zzhcx;

    .line 41
    .line 42
    invoke-direct {v10, v6}, Lcom/google/android/gms/internal/ads/zzhcx;-><init>(Lsun/misc/Unsafe;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    if-eqz v9, :cond_2

    .line 47
    .line 48
    new-instance v10, Lcom/google/android/gms/internal/ads/zzhcw;

    .line 49
    .line 50
    invoke-direct {v10, v6}, Lcom/google/android/gms/internal/ads/zzhcw;-><init>(Lsun/misc/Unsafe;)V

    .line 51
    .line 52
    .line 53
    :cond_2
    :goto_0
    sput-object v10, Lcom/google/android/gms/internal/ads/zzhcz;->zzf:Lcom/google/android/gms/internal/ads/zzhcy;

    .line 54
    .line 55
    const-class v6, Ljava/lang/reflect/Field;

    .line 56
    .line 57
    const-class v8, Ljava/lang/Object;

    .line 58
    .line 59
    if-nez v10, :cond_3

    .line 60
    .line 61
    :goto_1
    const/4 v7, 0x0

    .line 62
    goto :goto_2

    .line 63
    :cond_3
    iget-object v9, v10, Lcom/google/android/gms/internal/ads/zzhcy;->zza:Lsun/misc/Unsafe;

    .line 64
    .line 65
    :try_start_0
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    move-result-object v9

    .line 69
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 70
    .line 71
    new-array v11, v0, [J

    .line 72
    .line 73
    fill-array-data v11, :array_0

    .line 74
    .line 75
    .line 76
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v10

    .line 83
    new-array v11, v4, [Ljava/lang/Class;

    .line 84
    .line 85
    aput-object v6, v11, v3

    .line 86
    .line 87
    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 88
    .line 89
    .line 90
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 91
    .line 92
    new-array v11, v2, [J

    .line 93
    .line 94
    fill-array-data v11, :array_1

    .line 95
    .line 96
    .line 97
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v10

    .line 104
    new-array v11, v2, [Ljava/lang/Class;

    .line 105
    .line 106
    aput-object v8, v11, v3

    .line 107
    .line 108
    aput-object v7, v11, v4

    .line 109
    .line 110
    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 111
    .line 112
    .line 113
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhcz;->zzE()Ljava/lang/reflect/Field;

    .line 114
    .line 115
    .line 116
    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    if-nez v7, :cond_4

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_4
    const/4 v7, 0x1

    .line 121
    goto :goto_2

    .line 122
    :catchall_0
    move-exception v7

    .line 123
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzhcz;->zzj(Ljava/lang/Throwable;)V

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :goto_2
    sput-boolean v7, Lcom/google/android/gms/internal/ads/zzhcz;->zzg:Z

    .line 128
    .line 129
    sget-object v7, Lcom/google/android/gms/internal/ads/zzhcz;->zzf:Lcom/google/android/gms/internal/ads/zzhcy;

    .line 130
    .line 131
    if-nez v7, :cond_5

    .line 132
    .line 133
    :goto_3
    const/4 v0, 0x0

    .line 134
    goto/16 :goto_4

    .line 135
    .line 136
    :cond_5
    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzhcy;->zza:Lsun/misc/Unsafe;

    .line 137
    .line 138
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    move-result-object v7

    .line 142
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 143
    .line 144
    new-array v0, v0, [J

    .line 145
    .line 146
    fill-array-data v0, :array_2

    .line 147
    .line 148
    .line 149
    invoke-direct {v9, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    new-array v9, v4, [Ljava/lang/Class;

    .line 157
    .line 158
    aput-object v6, v9, v3

    .line 159
    .line 160
    invoke-virtual {v7, v0, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 161
    .line 162
    .line 163
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 164
    .line 165
    new-array v6, v1, [J

    .line 166
    .line 167
    fill-array-data v6, :array_3

    .line 168
    .line 169
    .line 170
    invoke-direct {v0, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    new-array v6, v4, [Ljava/lang/Class;

    .line 178
    .line 179
    aput-object v5, v6, v3

    .line 180
    .line 181
    invoke-virtual {v7, v0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 182
    .line 183
    .line 184
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 185
    .line 186
    new-array v6, v1, [J

    .line 187
    .line 188
    fill-array-data v6, :array_4

    .line 189
    .line 190
    .line 191
    invoke-direct {v0, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    new-array v6, v4, [Ljava/lang/Class;

    .line 199
    .line 200
    aput-object v5, v6, v3

    .line 201
    .line 202
    invoke-virtual {v7, v0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 203
    .line 204
    .line 205
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 206
    .line 207
    new-array v5, v2, [J

    .line 208
    .line 209
    fill-array-data v5, :array_5

    .line 210
    .line 211
    .line 212
    invoke-direct {v0, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 220
    .line 221
    new-array v6, v2, [Ljava/lang/Class;

    .line 222
    .line 223
    aput-object v8, v6, v3

    .line 224
    .line 225
    aput-object v5, v6, v4

    .line 226
    .line 227
    invoke-virtual {v7, v0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 228
    .line 229
    .line 230
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 231
    .line 232
    new-array v6, v2, [J

    .line 233
    .line 234
    fill-array-data v6, :array_6

    .line 235
    .line 236
    .line 237
    invoke-direct {v0, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    new-array v6, v1, [Ljava/lang/Class;

    .line 245
    .line 246
    aput-object v8, v6, v3

    .line 247
    .line 248
    aput-object v5, v6, v4

    .line 249
    .line 250
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 251
    .line 252
    aput-object v9, v6, v2

    .line 253
    .line 254
    invoke-virtual {v7, v0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 255
    .line 256
    .line 257
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 258
    .line 259
    new-array v6, v2, [J

    .line 260
    .line 261
    fill-array-data v6, :array_7

    .line 262
    .line 263
    .line 264
    invoke-direct {v0, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    new-array v6, v2, [Ljava/lang/Class;

    .line 272
    .line 273
    aput-object v8, v6, v3

    .line 274
    .line 275
    aput-object v5, v6, v4

    .line 276
    .line 277
    invoke-virtual {v7, v0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 278
    .line 279
    .line 280
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 281
    .line 282
    new-array v6, v2, [J

    .line 283
    .line 284
    fill-array-data v6, :array_8

    .line 285
    .line 286
    .line 287
    invoke-direct {v0, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    new-array v6, v1, [Ljava/lang/Class;

    .line 295
    .line 296
    aput-object v8, v6, v3

    .line 297
    .line 298
    aput-object v5, v6, v4

    .line 299
    .line 300
    aput-object v5, v6, v2

    .line 301
    .line 302
    invoke-virtual {v7, v0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 303
    .line 304
    .line 305
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 306
    .line 307
    new-array v6, v1, [J

    .line 308
    .line 309
    fill-array-data v6, :array_9

    .line 310
    .line 311
    .line 312
    invoke-direct {v0, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    new-array v6, v2, [Ljava/lang/Class;

    .line 320
    .line 321
    aput-object v8, v6, v3

    .line 322
    .line 323
    aput-object v5, v6, v4

    .line 324
    .line 325
    invoke-virtual {v7, v0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 326
    .line 327
    .line 328
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 329
    .line 330
    new-array v6, v1, [J

    .line 331
    .line 332
    fill-array-data v6, :array_a

    .line 333
    .line 334
    .line 335
    invoke-direct {v0, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    new-array v1, v1, [Ljava/lang/Class;

    .line 343
    .line 344
    aput-object v8, v1, v3

    .line 345
    .line 346
    aput-object v5, v1, v4

    .line 347
    .line 348
    aput-object v8, v1, v2

    .line 349
    .line 350
    invoke-virtual {v7, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 351
    .line 352
    .line 353
    const/4 v0, 0x1

    .line 354
    goto :goto_4

    .line 355
    :catchall_1
    move-exception v0

    .line 356
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhcz;->zzj(Ljava/lang/Throwable;)V

    .line 357
    .line 358
    .line 359
    goto/16 :goto_3

    .line 360
    .line 361
    :goto_4
    sput-boolean v0, Lcom/google/android/gms/internal/ads/zzhcz;->zzh:Z

    .line 362
    .line 363
    const-class v0, [B

    .line 364
    .line 365
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhcz;->zzC(Ljava/lang/Class;)I

    .line 366
    .line 367
    .line 368
    move-result v0

    .line 369
    int-to-long v0, v0

    .line 370
    sput-wide v0, Lcom/google/android/gms/internal/ads/zzhcz;->zza:J

    .line 371
    .line 372
    const-class v0, [Z

    .line 373
    .line 374
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhcz;->zzC(Ljava/lang/Class;)I

    .line 375
    .line 376
    .line 377
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhcz;->zzD(Ljava/lang/Class;)I

    .line 378
    .line 379
    .line 380
    const-class v0, [I

    .line 381
    .line 382
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhcz;->zzC(Ljava/lang/Class;)I

    .line 383
    .line 384
    .line 385
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhcz;->zzD(Ljava/lang/Class;)I

    .line 386
    .line 387
    .line 388
    const-class v0, [J

    .line 389
    .line 390
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhcz;->zzC(Ljava/lang/Class;)I

    .line 391
    .line 392
    .line 393
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhcz;->zzD(Ljava/lang/Class;)I

    .line 394
    .line 395
    .line 396
    const-class v0, [F

    .line 397
    .line 398
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhcz;->zzC(Ljava/lang/Class;)I

    .line 399
    .line 400
    .line 401
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhcz;->zzD(Ljava/lang/Class;)I

    .line 402
    .line 403
    .line 404
    const-class v0, [D

    .line 405
    .line 406
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhcz;->zzC(Ljava/lang/Class;)I

    .line 407
    .line 408
    .line 409
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhcz;->zzD(Ljava/lang/Class;)I

    .line 410
    .line 411
    .line 412
    const-class v0, [Ljava/lang/Object;

    .line 413
    .line 414
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhcz;->zzC(Ljava/lang/Class;)I

    .line 415
    .line 416
    .line 417
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhcz;->zzD(Ljava/lang/Class;)I

    .line 418
    .line 419
    .line 420
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhcz;->zzE()Ljava/lang/reflect/Field;

    .line 421
    .line 422
    .line 423
    move-result-object v0

    .line 424
    const-wide/16 v1, -0x1

    .line 425
    .line 426
    if-eqz v0, :cond_7

    .line 427
    .line 428
    sget-object v5, Lcom/google/android/gms/internal/ads/zzhcz;->zzf:Lcom/google/android/gms/internal/ads/zzhcy;

    .line 429
    .line 430
    if-nez v5, :cond_6

    .line 431
    .line 432
    goto :goto_5

    .line 433
    :cond_6
    iget-object v1, v5, Lcom/google/android/gms/internal/ads/zzhcy;->zza:Lsun/misc/Unsafe;

    .line 434
    .line 435
    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 436
    .line 437
    .line 438
    move-result-wide v1

    .line 439
    :cond_7
    :goto_5
    sput-wide v1, Lcom/google/android/gms/internal/ads/zzhcz;->zzi:J

    .line 440
    .line 441
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 442
    .line 443
    .line 444
    move-result-object v0

    .line 445
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 446
    .line 447
    if-ne v0, v1, :cond_8

    .line 448
    .line 449
    const/4 v3, 0x1

    .line 450
    :cond_8
    sput-boolean v3, Lcom/google/android/gms/internal/ads/zzhcz;->zzb:Z

    .line 451
    .line 452
    return-void

    .line 453
    :array_0
    .array-data 8
        0x162ff753b50ae0bdL    # 8.156481537058778E-202
        0x618536adaa9cfda5L    # 5.964881322805505E161
        0xf91e92e4ac7ba37L
        -0x20b3d217fc6dec6eL    # -1.1530240792645546E151
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
    :array_1
    .array-data 8
        -0x15bf00ccb7de18b2L    # -6.661257070641655E203
        -0x78fa5b02851ee3f7L    # -7.814503333411359E-275
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
    :array_2
    .array-data 8
        -0x232e5d848c2f9dfdL    # -1.3125202036878023E139
        -0x52e210bb9e1c9dfdL    # -2.2961239340224127E-91
        0x733ee1a1a1bf22b3L    # 1.3495005210857193E247
        0x6dac54680cb1d172L    # 2.0000876007076408E220
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
    .line 502
    .line 503
    .line 504
    .line 505
    :array_3
    .array-data 8
        0x6c31a0085d06d746L    # 1.4833690646040808E213
        -0x7e3b8d00433a0cdaL    # -3.816901629315258E-300
        0x6844f44685c0c190L    # 1.9120459630315522E194
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
    :array_4
    .array-data 8
        -0x54e187f9862c1e1bL    # -5.441485940867151E-101
        0x3a75fe80d1456432L    # 4.441683845855664E-27
        -0x24951b6c9918f186L    # -2.3860818308515378E132
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
        0x578603d49f718b37L    # 4.235516177459794E113
        -0x3a3cb0afc45b775eL    # -1.1952198431775092E28
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
    :array_6
    .array-data 8
        -0xaf342052dbbc60L
        0x9cb440e54a64da3L
    .end array-data

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
    :array_7
    .array-data 8
        0x2da4c3585cddd031L    # 8.154226945396038E-89
        -0xb8e1b0a87566265L    # -8.199602562597888E252
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
    :array_8
    .array-data 8
        0x5d6aba38af2094d5L    # 1.0185096171277905E142
        -0xe6ce52d45b1280cL    # -1.2440521006939503E239
    .end array-data

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
    :array_9
    .array-data 8
        0x161b8eaa2153c23aL
        0x7f44fb5984fcd8f8L    # 1.1510894840400376E305
        0x67da24ab1f6c0d92L    # 1.863702537134103E192
    .end array-data

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
    :array_a
    .array-data 8
        0x3fcd858ed5a972bL
        -0x68749b66e9c41621L    # -2.931647843819854E-195
        0x5076adc27ade9887L    # 4.201631523793046E79
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzA()Z
    .locals 1

    sget-boolean v0, Lcom/google/android/gms/internal/ads/zzhcz;->zzh:Z

    return v0
.end method

.method public static zzB()Z
    .locals 1

    sget-boolean v0, Lcom/google/android/gms/internal/ads/zzhcz;->zzg:Z

    return v0
.end method

.method private static zzC(Ljava/lang/Class;)I
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/android/gms/internal/ads/zzhcz;->zzh:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhcz;->zzf:Lcom/google/android/gms/internal/ads/zzhcy;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzhcy;->zza:Lsun/misc/Unsafe;

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_0
    const/4 p0, -0x1

    .line 15
    return p0
.end method

.method private static zzD(Ljava/lang/Class;)I
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/android/gms/internal/ads/zzhcz;->zzh:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhcz;->zzf:Lcom/google/android/gms/internal/ads/zzhcy;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzhcy;->zza:Lsun/misc/Unsafe;

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_0
    const/4 p0, -0x1

    .line 15
    return p0
.end method

.method private static zzE()Ljava/lang/reflect/Field;
    .locals 3

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzgxw;->zza:I

    .line 2
    .line 3
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v1, 0x4

    .line 6
    new-array v1, v1, [J

    .line 7
    .line 8
    fill-array-data v1, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-class v1, Ljava/nio/Buffer;

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzhcz;->zzF(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    const/4 v2, 0x2

    .line 29
    new-array v2, v2, [J

    .line 30
    .line 31
    fill-array-data v2, :array_1

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzhcz;->zzF(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_0

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 52
    .line 53
    if-ne v1, v2, :cond_0

    .line 54
    .line 55
    return-object v0

    .line 56
    :cond_0
    const/4 v0, 0x0

    .line 57
    :cond_1
    return-object v0

    .line 58
    nop

    .line 59
    :array_0
    .array-data 8
        0x2657f2d4af1b2d5aL
        0xc275bab372c8705L
        -0x13d6b7a79860c38dL    # -1.0639192513619572E213
        -0x4938d32cba792f38L    # -8.118807571747947E-45
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
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    :array_1
    .array-data 8
        0x23adc9e6878b7732L    # 8.004664813477679E-137
        0x4af6f022eb8ffe97L    # 1.373141915729933E53
    .end array-data
.end method

.method private static zzF(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    goto :goto_0

    .line 6
    :catchall_0
    const/4 p0, 0x0

    .line 7
    :goto_0
    return-object p0
.end method

.method private static zzG(Ljava/lang/Object;JB)V
    .locals 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhcz;->zzf:Lcom/google/android/gms/internal/ads/zzhcy;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzhcy;->zza:Lsun/misc/Unsafe;

    .line 4
    .line 5
    const-wide/16 v2, -0x4

    .line 6
    .line 7
    and-long/2addr v2, p1

    .line 8
    invoke-virtual {v1, p0, v2, v3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    long-to-int p2, p1

    .line 13
    not-int p1, p2

    .line 14
    and-int/lit8 p1, p1, 0x3

    .line 15
    .line 16
    shl-int/lit8 p1, p1, 0x3

    .line 17
    .line 18
    const/16 p2, 0xff

    .line 19
    .line 20
    shl-int v4, p2, p1

    .line 21
    .line 22
    not-int v4, v4

    .line 23
    and-int/2addr v1, v4

    .line 24
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzhcy;->zza:Lsun/misc/Unsafe;

    .line 25
    .line 26
    and-int/2addr p2, p3

    .line 27
    shl-int p1, p2, p1

    .line 28
    .line 29
    or-int/2addr p1, v1

    .line 30
    invoke-virtual {v0, p0, v2, v3, p1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method private static zzH(Ljava/lang/Object;JB)V
    .locals 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhcz;->zzf:Lcom/google/android/gms/internal/ads/zzhcy;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzhcy;->zza:Lsun/misc/Unsafe;

    .line 4
    .line 5
    const-wide/16 v2, -0x4

    .line 6
    .line 7
    and-long/2addr v2, p1

    .line 8
    invoke-virtual {v1, p0, v2, v3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    long-to-int p2, p1

    .line 13
    and-int/lit8 p1, p2, 0x3

    .line 14
    .line 15
    shl-int/lit8 p1, p1, 0x3

    .line 16
    .line 17
    const/16 p2, 0xff

    .line 18
    .line 19
    shl-int v4, p2, p1

    .line 20
    .line 21
    not-int v4, v4

    .line 22
    and-int/2addr v1, v4

    .line 23
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzhcy;->zza:Lsun/misc/Unsafe;

    .line 24
    .line 25
    and-int/2addr p2, p3

    .line 26
    shl-int p1, p2, p1

    .line 27
    .line 28
    or-int/2addr p1, v1

    .line 29
    invoke-virtual {v0, p0, v2, v3, p1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public static zza(J)B
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhcz;->zzf:Lcom/google/android/gms/internal/ads/zzhcy;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzhcy;->zza(J)B

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public static zzb(Ljava/lang/Object;J)D
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhcz;->zzf:Lcom/google/android/gms/internal/ads/zzhcy;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhcy;->zzb(Ljava/lang/Object;J)D

    .line 4
    .line 5
    .line 6
    move-result-wide p0

    .line 7
    return-wide p0
.end method

.method public static zzc(Ljava/lang/Object;J)F
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhcz;->zzf:Lcom/google/android/gms/internal/ads/zzhcy;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhcy;->zzc(Ljava/lang/Object;J)F

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public static zzd(Ljava/lang/Object;J)I
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhcz;->zzf:Lcom/google/android/gms/internal/ads/zzhcy;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzhcy;->zza:Lsun/misc/Unsafe;

    .line 4
    .line 5
    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static zze(Ljava/nio/ByteBuffer;)J
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhcz;->zzf:Lcom/google/android/gms/internal/ads/zzhcy;

    .line 2
    .line 3
    sget-wide v1, Lcom/google/android/gms/internal/ads/zzhcz;->zzi:J

    .line 4
    .line 5
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzhcy;->zza:Lsun/misc/Unsafe;

    .line 6
    .line 7
    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method public static zzf(Ljava/lang/Object;J)J
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhcz;->zzf:Lcom/google/android/gms/internal/ads/zzhcy;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzhcy;->zza:Lsun/misc/Unsafe;

    .line 4
    .line 5
    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 6
    .line 7
    .line 8
    move-result-wide p0

    .line 9
    return-wide p0
.end method

.method public static zzg(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhcz;->zzc:Lsun/misc/Unsafe;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object p0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    throw v0
.end method

.method public static zzh(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhcz;->zzf:Lcom/google/android/gms/internal/ads/zzhcy;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzhcy;->zza:Lsun/misc/Unsafe;

    .line 4
    .line 5
    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static zzi()Lsun/misc/Unsafe;
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhcv;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhcv;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lsun/misc/Unsafe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return-object v0
.end method

.method public static bridge synthetic zzj(Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzhcz;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 12
    .line 13
    const/16 v2, 0xa

    .line 14
    .line 15
    new-array v2, v2, [J

    .line 16
    .line 17
    fill-array-data v2, :array_0

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 38
    .line 39
    const/4 v3, 0x5

    .line 40
    new-array v3, v3, [J

    .line 41
    .line 42
    fill-array-data v3, :array_1

    .line 43
    .line 44
    .line 45
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 53
    .line 54
    const/4 v4, 0x3

    .line 55
    new-array v4, v4, [J

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
    invoke-virtual {v0, v2, v1, v3, p0}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :array_0
    .array-data 8
        -0x149143c309a90a70L    # -3.1576539527718774E209
        -0x5933c8f3522063a9L    # -8.536353516562311E-122
        0x1c1b476651c32d27L
        -0x4bb3c2808aede907L    # -8.997855151833563E-57
        -0x27f8e0c97854c241L    # -1.1388128301022455E116
        0x22e8e417035d3c23L
        -0xd273e915e84a390L    # -1.690323562148736E245
        -0x1b5610db013e5735L    # -8.21031138829519E176
        0x5e0fb90001046d7fL    # 1.2378769543737375E145
        0x6c948fa12a6559dfL    # 1.1074962714011459E215
    .end array-data

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    :array_1
    .array-data 8
        -0xa2b1d1a54b3e901L    # -4.014192029826237E259
        -0x6f8780d8013b6bcbL    # -2.524590640158854E-229
        0x1a8b89899b6456beL
        0x36166a219dc7bae1L    # 3.8341687193396906E-48
        -0x13bfb7af6df4c48L
    .end array-data

    :array_2
    .array-data 8
        -0x6cee8880ccc8fb23L    # -7.916917091431476E-217
        -0x2548e21e3057ecacL    # -1.0014851246510323E129
        -0x7b132bfd0d30630L    # -3.254480337443028E271
    .end array-data
.end method

.method public static synthetic zzk(Ljava/lang/Object;JZ)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzhcz;->zzG(Ljava/lang/Object;JB)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic zzl(Ljava/lang/Object;JZ)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzhcz;->zzH(Ljava/lang/Object;JB)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static bridge synthetic zzm(Ljava/lang/Object;JB)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzhcz;->zzG(Ljava/lang/Object;JB)V

    return-void
.end method

.method public static bridge synthetic zzn(Ljava/lang/Object;JB)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzhcz;->zzH(Ljava/lang/Object;JB)V

    return-void
.end method

.method public static zzo(J[BJJ)V
    .locals 8

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhcz;->zzf:Lcom/google/android/gms/internal/ads/zzhcy;

    .line 2
    .line 3
    move-wide v1, p0

    .line 4
    move-object v3, p2

    .line 5
    move-wide v4, p3

    .line 6
    move-wide v6, p5

    .line 7
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzhcy;->zzd(J[BJJ)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static zzp(Ljava/lang/Object;JZ)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhcz;->zzf:Lcom/google/android/gms/internal/ads/zzhcy;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzhcy;->zze(Ljava/lang/Object;JZ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static zzq([BJB)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhcz;->zzf:Lcom/google/android/gms/internal/ads/zzhcy;

    .line 2
    .line 3
    sget-wide v1, Lcom/google/android/gms/internal/ads/zzhcz;->zza:J

    .line 4
    .line 5
    add-long/2addr v1, p1

    .line 6
    invoke-virtual {v0, p0, v1, v2, p3}, Lcom/google/android/gms/internal/ads/zzhcy;->zzf(Ljava/lang/Object;JB)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static zzr(Ljava/lang/Object;JD)V
    .locals 6

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhcz;->zzf:Lcom/google/android/gms/internal/ads/zzhcy;

    .line 2
    .line 3
    move-object v1, p0

    .line 4
    move-wide v2, p1

    .line 5
    move-wide v4, p3

    .line 6
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzhcy;->zzg(Ljava/lang/Object;JD)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static zzs(Ljava/lang/Object;JF)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhcz;->zzf:Lcom/google/android/gms/internal/ads/zzhcy;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzhcy;->zzh(Ljava/lang/Object;JF)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static zzt(Ljava/lang/Object;JI)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhcz;->zzf:Lcom/google/android/gms/internal/ads/zzhcy;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzhcy;->zza:Lsun/misc/Unsafe;

    .line 4
    .line 5
    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static zzu(Ljava/lang/Object;JJ)V
    .locals 7

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhcz;->zzf:Lcom/google/android/gms/internal/ads/zzhcy;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzhcy;->zza:Lsun/misc/Unsafe;

    .line 4
    .line 5
    move-object v2, p0

    .line 6
    move-wide v3, p1

    .line 7
    move-wide v5, p3

    .line 8
    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static zzv(Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhcz;->zzf:Lcom/google/android/gms/internal/ads/zzhcy;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzhcy;->zza:Lsun/misc/Unsafe;

    .line 4
    .line 5
    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static bridge synthetic zzw(Ljava/lang/Object;J)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhcz;->zzf:Lcom/google/android/gms/internal/ads/zzhcy;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzhcy;->zza:Lsun/misc/Unsafe;

    .line 4
    .line 5
    const-wide/16 v1, -0x4

    .line 6
    .line 7
    and-long/2addr v1, p1

    .line 8
    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    not-long p1, p1

    .line 13
    const-wide/16 v0, 0x3

    .line 14
    .line 15
    and-long/2addr p1, v0

    .line 16
    const/4 v0, 0x3

    .line 17
    shl-long/2addr p1, v0

    .line 18
    long-to-int p2, p1

    .line 19
    ushr-int/2addr p0, p2

    .line 20
    and-int/lit16 p0, p0, 0xff

    .line 21
    .line 22
    int-to-byte p0, p0

    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    const/4 p0, 0x1

    .line 26
    return p0

    .line 27
    :cond_0
    const/4 p0, 0x0

    .line 28
    return p0
.end method

.method public static bridge synthetic zzx(Ljava/lang/Object;J)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhcz;->zzf:Lcom/google/android/gms/internal/ads/zzhcy;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzhcy;->zza:Lsun/misc/Unsafe;

    .line 4
    .line 5
    const-wide/16 v1, -0x4

    .line 6
    .line 7
    and-long/2addr v1, p1

    .line 8
    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    const-wide/16 v0, 0x3

    .line 13
    .line 14
    and-long/2addr p1, v0

    .line 15
    const/4 v0, 0x3

    .line 16
    shl-long/2addr p1, v0

    .line 17
    long-to-int p2, p1

    .line 18
    ushr-int/2addr p0, p2

    .line 19
    and-int/lit16 p0, p0, 0xff

    .line 20
    .line 21
    int-to-byte p0, p0

    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    const/4 p0, 0x1

    .line 25
    return p0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    return p0
.end method

.method public static zzy(Ljava/lang/Class;)Z
    .locals 11

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x1

    .line 4
    const/4 v3, 0x0

    .line 5
    const/4 v4, 0x2

    .line 6
    const-class v5, [B

    .line 7
    .line 8
    sget v6, Lcom/google/android/gms/internal/ads/zzgxw;->zza:I

    .line 9
    .line 10
    :try_start_0
    sget-object v6, Lcom/google/android/gms/internal/ads/zzhcz;->zzd:Ljava/lang/Class;

    .line 11
    .line 12
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 13
    .line 14
    new-array v8, v4, [J

    .line 15
    .line 16
    fill-array-data v8, :array_0

    .line 17
    .line 18
    .line 19
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v7

    .line 26
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 27
    .line 28
    new-array v9, v4, [Ljava/lang/Class;

    .line 29
    .line 30
    aput-object p0, v9, v3

    .line 31
    .line 32
    aput-object v8, v9, v2

    .line 33
    .line 34
    invoke-virtual {v6, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 35
    .line 36
    .line 37
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 38
    .line 39
    new-array v9, v4, [J

    .line 40
    .line 41
    fill-array-data v9, :array_1

    .line 42
    .line 43
    .line 44
    invoke-direct {v7, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    new-array v9, v1, [Ljava/lang/Class;

    .line 52
    .line 53
    aput-object p0, v9, v3

    .line 54
    .line 55
    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 56
    .line 57
    aput-object v10, v9, v2

    .line 58
    .line 59
    aput-object v8, v9, v4

    .line 60
    .line 61
    invoke-virtual {v6, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 62
    .line 63
    .line 64
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 65
    .line 66
    new-array v9, v4, [J

    .line 67
    .line 68
    fill-array-data v9, :array_2

    .line 69
    .line 70
    .line 71
    invoke-direct {v7, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 79
    .line 80
    new-array v10, v1, [Ljava/lang/Class;

    .line 81
    .line 82
    aput-object p0, v10, v3

    .line 83
    .line 84
    aput-object v9, v10, v2

    .line 85
    .line 86
    aput-object v8, v10, v4

    .line 87
    .line 88
    invoke-virtual {v6, v7, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 89
    .line 90
    .line 91
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 92
    .line 93
    new-array v10, v4, [J

    .line 94
    .line 95
    fill-array-data v10, :array_3

    .line 96
    .line 97
    .line 98
    invoke-direct {v7, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    new-array v10, v4, [Ljava/lang/Class;

    .line 106
    .line 107
    aput-object p0, v10, v3

    .line 108
    .line 109
    aput-object v8, v10, v2

    .line 110
    .line 111
    invoke-virtual {v6, v7, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 112
    .line 113
    .line 114
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 115
    .line 116
    new-array v8, v4, [J

    .line 117
    .line 118
    fill-array-data v8, :array_4

    .line 119
    .line 120
    .line 121
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v7

    .line 128
    new-array v8, v4, [Ljava/lang/Class;

    .line 129
    .line 130
    aput-object p0, v8, v3

    .line 131
    .line 132
    sget-object v10, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 133
    .line 134
    aput-object v10, v8, v2

    .line 135
    .line 136
    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 137
    .line 138
    .line 139
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 140
    .line 141
    new-array v8, v4, [J

    .line 142
    .line 143
    fill-array-data v8, :array_5

    .line 144
    .line 145
    .line 146
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v7

    .line 153
    new-array v8, v2, [Ljava/lang/Class;

    .line 154
    .line 155
    aput-object p0, v8, v3

    .line 156
    .line 157
    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 158
    .line 159
    .line 160
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 161
    .line 162
    new-array v8, v1, [J

    .line 163
    .line 164
    fill-array-data v8, :array_6

    .line 165
    .line 166
    .line 167
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v7

    .line 174
    new-array v8, v0, [Ljava/lang/Class;

    .line 175
    .line 176
    aput-object p0, v8, v3

    .line 177
    .line 178
    aput-object v5, v8, v2

    .line 179
    .line 180
    aput-object v9, v8, v4

    .line 181
    .line 182
    aput-object v9, v8, v1

    .line 183
    .line 184
    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 185
    .line 186
    .line 187
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 188
    .line 189
    new-array v8, v1, [J

    .line 190
    .line 191
    fill-array-data v8, :array_7

    .line 192
    .line 193
    .line 194
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v7

    .line 201
    new-array v0, v0, [Ljava/lang/Class;

    .line 202
    .line 203
    aput-object p0, v0, v3

    .line 204
    .line 205
    aput-object v5, v0, v2

    .line 206
    .line 207
    aput-object v9, v0, v4

    .line 208
    .line 209
    aput-object v9, v0, v1

    .line 210
    .line 211
    invoke-virtual {v6, v7, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    .line 213
    .line 214
    return v2

    .line 215
    :catchall_0
    return v3

    .line 216
    nop

    .line 217
    :array_0
    .array-data 8
        -0x599a4229759b95e9L
        -0x5f93686314ec91e4L    # -1.706005234090886E-152
    .end array-data

    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    :array_1
    .array-data 8
        -0x773340fb84d027dL    # -4.868193553875863E272
        0x6e9292dd23cc956eL    # 4.296896582598958E224
    .end array-data

    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    :array_2
    .array-data 8
        0x2f17c09927cdaa66L    # 7.825057435076876E-82
        0x11f0cfebe7d9209eL
    .end array-data

    :array_3
    .array-data 8
        -0x28b7331c34751421L    # -2.982127621265862E112
        0x73eba691e0fec722L    # 2.474639666881418E250
    .end array-data

    :array_4
    .array-data 8
        -0x1969c211bc2cbb31L    # -1.5121314675749873E186
        0x3a01f0ce9f141b11L    # 2.8305359204084416E-29
    .end array-data

    :array_5
    .array-data 8
        0x1e2799e6932aa16dL    # 2.049207703680808E-163
        -0x5f88338be75143c9L
    .end array-data

    :array_6
    .array-data 8
        0x2ecf346730c43734L    # 3.2125597611469406E-83
        0x5f7546c0efa99f09L    # 6.96459072821072E151
        0x43f0d992b440b637L    # 1.942660603888818E19
    .end array-data

    :array_7
    .array-data 8
        -0x6e302c2e4c7eae45L
        -0x3309be953d55bd14L    # -5.722122615063363E62
        0x19b3df840ec3f04fL    # 7.307830757897108E-185
    .end array-data
.end method

.method public static zzz(Ljava/lang/Object;J)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhcz;->zzf:Lcom/google/android/gms/internal/ads/zzhcy;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhcy;->zzi(Ljava/lang/Object;J)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
