.class final Lcom/google/android/gms/internal/measurement/zzmv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final zza:J

.field static final zzb:Z

.field private static final zzc:Lsun/misc/Unsafe;

.field private static final zzd:Ljava/lang/Class;

.field private static final zze:Z

.field private static final zzf:Lcom/google/android/gms/internal/measurement/zzmu;

.field private static final zzg:Z

.field private static final zzh:Z


# direct methods
.method static constructor <clinit>()V
    .locals 13

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
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmv;->zzg()Lsun/misc/Unsafe;

    .line 9
    .line 10
    .line 11
    move-result-object v6

    .line 12
    sput-object v6, Lcom/google/android/gms/internal/measurement/zzmv;->zzc:Lsun/misc/Unsafe;

    .line 13
    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzin;->zza()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-result-object v7

    .line 18
    sput-object v7, Lcom/google/android/gms/internal/measurement/zzmv;->zzd:Ljava/lang/Class;

    .line 19
    .line 20
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 21
    .line 22
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzmv;->zzv(Ljava/lang/Class;)Z

    .line 23
    .line 24
    .line 25
    move-result v8

    .line 26
    sput-boolean v8, Lcom/google/android/gms/internal/measurement/zzmv;->zze:Z

    .line 27
    .line 28
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 29
    .line 30
    invoke-static {v9}, Lcom/google/android/gms/internal/measurement/zzmv;->zzv(Ljava/lang/Class;)Z

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
    new-instance v10, Lcom/google/android/gms/internal/measurement/zzmt;

    .line 41
    .line 42
    invoke-direct {v10, v6}, Lcom/google/android/gms/internal/measurement/zzmt;-><init>(Lsun/misc/Unsafe;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    if-eqz v9, :cond_2

    .line 47
    .line 48
    new-instance v10, Lcom/google/android/gms/internal/measurement/zzms;

    .line 49
    .line 50
    invoke-direct {v10, v6}, Lcom/google/android/gms/internal/measurement/zzms;-><init>(Lsun/misc/Unsafe;)V

    .line 51
    .line 52
    .line 53
    :cond_2
    :goto_0
    sput-object v10, Lcom/google/android/gms/internal/measurement/zzmv;->zzf:Lcom/google/android/gms/internal/measurement/zzmu;

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
    iget-object v9, v10, Lcom/google/android/gms/internal/measurement/zzmu;->zza:Lsun/misc/Unsafe;

    .line 64
    .line 65
    :try_start_0
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    move-result-object v9

    .line 69
    new-array v10, v4, [Ljava/lang/Class;

    .line 70
    .line 71
    aput-object v6, v10, v3

    .line 72
    .line 73
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 74
    .line 75
    new-array v12, v0, [J

    .line 76
    .line 77
    fill-array-data v12, :array_0

    .line 78
    .line 79
    .line 80
    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v11

    .line 87
    invoke-virtual {v9, v11, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 88
    .line 89
    .line 90
    new-array v10, v2, [Ljava/lang/Class;

    .line 91
    .line 92
    aput-object v8, v10, v3

    .line 93
    .line 94
    aput-object v7, v10, v4

    .line 95
    .line 96
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 97
    .line 98
    new-array v11, v2, [J

    .line 99
    .line 100
    fill-array-data v11, :array_1

    .line 101
    .line 102
    .line 103
    invoke-direct {v7, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v7

    .line 110
    invoke-virtual {v9, v7, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 111
    .line 112
    .line 113
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmv;->zzB()Ljava/lang/reflect/Field;

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
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzmv;->zzh(Ljava/lang/Throwable;)V

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :goto_2
    sput-boolean v7, Lcom/google/android/gms/internal/measurement/zzmv;->zzg:Z

    .line 128
    .line 129
    sget-object v7, Lcom/google/android/gms/internal/measurement/zzmv;->zzf:Lcom/google/android/gms/internal/measurement/zzmu;

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
    iget-object v7, v7, Lcom/google/android/gms/internal/measurement/zzmu;->zza:Lsun/misc/Unsafe;

    .line 137
    .line 138
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    move-result-object v7

    .line 142
    new-array v9, v4, [Ljava/lang/Class;

    .line 143
    .line 144
    aput-object v6, v9, v3

    .line 145
    .line 146
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 147
    .line 148
    new-array v0, v0, [J

    .line 149
    .line 150
    fill-array-data v0, :array_2

    .line 151
    .line 152
    .line 153
    invoke-direct {v6, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-virtual {v7, v0, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 161
    .line 162
    .line 163
    new-array v0, v4, [Ljava/lang/Class;

    .line 164
    .line 165
    aput-object v5, v0, v3

    .line 166
    .line 167
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 168
    .line 169
    new-array v9, v1, [J

    .line 170
    .line 171
    fill-array-data v9, :array_3

    .line 172
    .line 173
    .line 174
    invoke-direct {v6, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v6

    .line 181
    invoke-virtual {v7, v6, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 182
    .line 183
    .line 184
    new-array v0, v4, [Ljava/lang/Class;

    .line 185
    .line 186
    aput-object v5, v0, v3

    .line 187
    .line 188
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 189
    .line 190
    new-array v6, v1, [J

    .line 191
    .line 192
    fill-array-data v6, :array_4

    .line 193
    .line 194
    .line 195
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v5

    .line 202
    invoke-virtual {v7, v5, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 203
    .line 204
    .line 205
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 206
    .line 207
    new-array v5, v2, [Ljava/lang/Class;

    .line 208
    .line 209
    aput-object v8, v5, v3

    .line 210
    .line 211
    aput-object v0, v5, v4

    .line 212
    .line 213
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 214
    .line 215
    new-array v9, v2, [J

    .line 216
    .line 217
    fill-array-data v9, :array_5

    .line 218
    .line 219
    .line 220
    invoke-direct {v6, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v6

    .line 227
    invoke-virtual {v7, v6, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 228
    .line 229
    .line 230
    new-array v5, v1, [Ljava/lang/Class;

    .line 231
    .line 232
    aput-object v8, v5, v3

    .line 233
    .line 234
    aput-object v0, v5, v4

    .line 235
    .line 236
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 237
    .line 238
    aput-object v6, v5, v2

    .line 239
    .line 240
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 241
    .line 242
    new-array v9, v2, [J

    .line 243
    .line 244
    fill-array-data v9, :array_6

    .line 245
    .line 246
    .line 247
    invoke-direct {v6, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v6

    .line 254
    invoke-virtual {v7, v6, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 255
    .line 256
    .line 257
    new-array v5, v2, [Ljava/lang/Class;

    .line 258
    .line 259
    aput-object v8, v5, v3

    .line 260
    .line 261
    aput-object v0, v5, v4

    .line 262
    .line 263
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 264
    .line 265
    new-array v9, v2, [J

    .line 266
    .line 267
    fill-array-data v9, :array_7

    .line 268
    .line 269
    .line 270
    invoke-direct {v6, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v6

    .line 277
    invoke-virtual {v7, v6, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 278
    .line 279
    .line 280
    new-array v5, v1, [Ljava/lang/Class;

    .line 281
    .line 282
    aput-object v8, v5, v3

    .line 283
    .line 284
    aput-object v0, v5, v4

    .line 285
    .line 286
    aput-object v0, v5, v2

    .line 287
    .line 288
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 289
    .line 290
    new-array v9, v2, [J

    .line 291
    .line 292
    fill-array-data v9, :array_8

    .line 293
    .line 294
    .line 295
    invoke-direct {v6, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v6

    .line 302
    invoke-virtual {v7, v6, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 303
    .line 304
    .line 305
    new-array v5, v2, [Ljava/lang/Class;

    .line 306
    .line 307
    aput-object v8, v5, v3

    .line 308
    .line 309
    aput-object v0, v5, v4

    .line 310
    .line 311
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 312
    .line 313
    new-array v9, v1, [J

    .line 314
    .line 315
    fill-array-data v9, :array_9

    .line 316
    .line 317
    .line 318
    invoke-direct {v6, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v6

    .line 325
    invoke-virtual {v7, v6, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 326
    .line 327
    .line 328
    new-array v5, v1, [Ljava/lang/Class;

    .line 329
    .line 330
    aput-object v8, v5, v3

    .line 331
    .line 332
    aput-object v0, v5, v4

    .line 333
    .line 334
    aput-object v8, v5, v2

    .line 335
    .line 336
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 337
    .line 338
    new-array v1, v1, [J

    .line 339
    .line 340
    fill-array-data v1, :array_a

    .line 341
    .line 342
    .line 343
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v0

    .line 350
    invoke-virtual {v7, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
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
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzmv;->zzh(Ljava/lang/Throwable;)V

    .line 357
    .line 358
    .line 359
    goto/16 :goto_3

    .line 360
    .line 361
    :goto_4
    sput-boolean v0, Lcom/google/android/gms/internal/measurement/zzmv;->zzh:Z

    .line 362
    .line 363
    const-class v0, [B

    .line 364
    .line 365
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzmv;->zzz(Ljava/lang/Class;)I

    .line 366
    .line 367
    .line 368
    move-result v0

    .line 369
    int-to-long v0, v0

    .line 370
    sput-wide v0, Lcom/google/android/gms/internal/measurement/zzmv;->zza:J

    .line 371
    .line 372
    const-class v0, [Z

    .line 373
    .line 374
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzmv;->zzz(Ljava/lang/Class;)I

    .line 375
    .line 376
    .line 377
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzmv;->zzA(Ljava/lang/Class;)I

    .line 378
    .line 379
    .line 380
    const-class v0, [I

    .line 381
    .line 382
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzmv;->zzz(Ljava/lang/Class;)I

    .line 383
    .line 384
    .line 385
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzmv;->zzA(Ljava/lang/Class;)I

    .line 386
    .line 387
    .line 388
    const-class v0, [J

    .line 389
    .line 390
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzmv;->zzz(Ljava/lang/Class;)I

    .line 391
    .line 392
    .line 393
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzmv;->zzA(Ljava/lang/Class;)I

    .line 394
    .line 395
    .line 396
    const-class v0, [F

    .line 397
    .line 398
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzmv;->zzz(Ljava/lang/Class;)I

    .line 399
    .line 400
    .line 401
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzmv;->zzA(Ljava/lang/Class;)I

    .line 402
    .line 403
    .line 404
    const-class v0, [D

    .line 405
    .line 406
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzmv;->zzz(Ljava/lang/Class;)I

    .line 407
    .line 408
    .line 409
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzmv;->zzA(Ljava/lang/Class;)I

    .line 410
    .line 411
    .line 412
    const-class v0, [Ljava/lang/Object;

    .line 413
    .line 414
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzmv;->zzz(Ljava/lang/Class;)I

    .line 415
    .line 416
    .line 417
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzmv;->zzA(Ljava/lang/Class;)I

    .line 418
    .line 419
    .line 420
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmv;->zzB()Ljava/lang/reflect/Field;

    .line 421
    .line 422
    .line 423
    move-result-object v0

    .line 424
    if-eqz v0, :cond_6

    .line 425
    .line 426
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzmv;->zzf:Lcom/google/android/gms/internal/measurement/zzmu;

    .line 427
    .line 428
    if-eqz v1, :cond_6

    .line 429
    .line 430
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/zzmu;->zzl(Ljava/lang/reflect/Field;)J

    .line 431
    .line 432
    .line 433
    :cond_6
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 434
    .line 435
    .line 436
    move-result-object v0

    .line 437
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 438
    .line 439
    if-ne v0, v1, :cond_7

    .line 440
    .line 441
    const/4 v3, 0x1

    .line 442
    :cond_7
    sput-boolean v3, Lcom/google/android/gms/internal/measurement/zzmv;->zzb:Z

    .line 443
    .line 444
    return-void

    .line 445
    :array_0
    .array-data 8
        0x1ce02e32b656c781L
        0x7d0acb2a83521436L    # 2.1390312695158707E294
        0x5f07177edf4e6f22L    # 5.905344897130118E149
        0x6d856f0324291a94L    # 3.783056455942759E219
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
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    :array_1
    .array-data 8
        0x44d6af08550c69cdL    # 4.2848337294322096E23
        0x3246194acd0c7182L    # 1.639379921264184E-66
    .end array-data

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
    :array_2
    .array-data 8
        -0x79eae83b042251d9L
        0x7d7199469f118798L    # 1.7983622352653606E296
        -0x5a6049fb3a419b0dL
        0x5e598d9c0b3d47edL    # 3.1908218935183555E146
    .end array-data

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
    :array_3
    .array-data 8
        -0x5ba760ff687d525dL    # -1.35496923637843E-133
        0x34c8a38019c134c0L
        0x6c47d82c0f7844c4L    # 4.0135968588208194E213
    .end array-data

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
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    :array_4
    .array-data 8
        0x22647b7e93e97fecL    # 5.248955793469594E-143
        0x52117d4ed28fd5b9L    # 2.174481694765086E87
        -0x2368dd4a881579ddL    # -1.0762135382303548E138
    .end array-data

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
    :array_5
    .array-data 8
        -0x731b8155574ea791L    # -1.46560543000741E-246
        -0x4bb70fe6e553e855L    # -7.945667956576302E-57
    .end array-data

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
    :array_6
    .array-data 8
        -0x4d019156435975d6L    # -4.6235480394752684E-63
        0x43996e04ffc226ffL    # 4.5810189872671942E17
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
    :array_7
    .array-data 8
        0x1321dadd67adad6L
        -0x48b597a7667a0d5L
    .end array-data

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
    :array_8
    .array-data 8
        0x6997ba835ec478beL    # 4.5407609807346106E200
        -0x442de511ef3f2ca5L    # -1.5335696758007565E-20
    .end array-data

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
    :array_9
    .array-data 8
        0x3a89ec68e20134ceL    # 1.047040832444429E-26
        0x37324ea6fb6d1074L    # 8.20924829290008E-43
        -0x26e0f0e95e7f4636L
    .end array-data

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
    :array_a
    .array-data 8
        0x12f61a84e911cc15L
        0x3e84ebf3ac48ceddL    # 1.5587871450702128E-7
        0x6660ff809dfd3283L    # 1.4445301601050024E185
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static zzA(Ljava/lang/Class;)I
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/android/gms/internal/measurement/zzmv;->zzh:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzmv;->zzf:Lcom/google/android/gms/internal/measurement/zzmu;

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/measurement/zzmu;->zzi(Ljava/lang/Class;)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    const/4 p0, -0x1

    .line 13
    return p0
.end method

.method private static zzB()Ljava/lang/reflect/Field;
    .locals 3

    .line 1
    sget v0, Lcom/google/android/gms/internal/measurement/zzin;->zza:I

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
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzmv;->zzC(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

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
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzmv;->zzC(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

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
        -0x335b0f7486a79a5L
        0x65b30e8535afc69dL    # 7.907615682525576E181
        -0x7831e8795cfe994bL    # -4.450035735589356E-271
        -0x7798f5cba750a405L
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
        0x7bf2dba761aef2b6L    # 1.1486084607763751E289
        -0x3ce47d59b8d0f2a8L    # -1.935868760408918E15
    .end array-data
.end method

.method private static zzC(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
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

.method private static zzD(Ljava/lang/Object;JB)V
    .locals 5

    .line 1
    const-wide/16 v0, -0x4

    .line 2
    .line 3
    and-long/2addr v0, p1

    .line 4
    sget-object v2, Lcom/google/android/gms/internal/measurement/zzmv;->zzf:Lcom/google/android/gms/internal/measurement/zzmu;

    .line 5
    .line 6
    invoke-virtual {v2, p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzmu;->zzj(Ljava/lang/Object;J)I

    .line 7
    .line 8
    .line 9
    move-result v3

    .line 10
    long-to-int p2, p1

    .line 11
    not-int p1, p2

    .line 12
    and-int/lit8 p1, p1, 0x3

    .line 13
    .line 14
    shl-int/lit8 p1, p1, 0x3

    .line 15
    .line 16
    const/16 p2, 0xff

    .line 17
    .line 18
    shl-int v4, p2, p1

    .line 19
    .line 20
    not-int v4, v4

    .line 21
    and-int/2addr v3, v4

    .line 22
    and-int/2addr p2, p3

    .line 23
    shl-int p1, p2, p1

    .line 24
    .line 25
    or-int/2addr p1, v3

    .line 26
    invoke-virtual {v2, p0, v0, v1, p1}, Lcom/google/android/gms/internal/measurement/zzmu;->zzn(Ljava/lang/Object;JI)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private static zzE(Ljava/lang/Object;JB)V
    .locals 5

    .line 1
    const-wide/16 v0, -0x4

    .line 2
    .line 3
    and-long/2addr v0, p1

    .line 4
    sget-object v2, Lcom/google/android/gms/internal/measurement/zzmv;->zzf:Lcom/google/android/gms/internal/measurement/zzmu;

    .line 5
    .line 6
    invoke-virtual {v2, p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzmu;->zzj(Ljava/lang/Object;J)I

    .line 7
    .line 8
    .line 9
    move-result v3

    .line 10
    long-to-int p2, p1

    .line 11
    and-int/lit8 p1, p2, 0x3

    .line 12
    .line 13
    shl-int/lit8 p1, p1, 0x3

    .line 14
    .line 15
    const/16 p2, 0xff

    .line 16
    .line 17
    shl-int v4, p2, p1

    .line 18
    .line 19
    not-int v4, v4

    .line 20
    and-int/2addr v3, v4

    .line 21
    and-int/2addr p2, p3

    .line 22
    shl-int p1, p2, p1

    .line 23
    .line 24
    or-int/2addr p1, v3

    .line 25
    invoke-virtual {v2, p0, v0, v1, p1}, Lcom/google/android/gms/internal/measurement/zzmu;->zzn(Ljava/lang/Object;JI)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public static zza(Ljava/lang/Object;J)D
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzmv;->zzf:Lcom/google/android/gms/internal/measurement/zzmu;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzmu;->zza(Ljava/lang/Object;J)D

    .line 4
    .line 5
    .line 6
    move-result-wide p0

    .line 7
    return-wide p0
.end method

.method public static zzb(Ljava/lang/Object;J)F
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzmv;->zzf:Lcom/google/android/gms/internal/measurement/zzmu;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzmu;->zzb(Ljava/lang/Object;J)F

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public static zzc(Ljava/lang/Object;J)I
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzmv;->zzf:Lcom/google/android/gms/internal/measurement/zzmu;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzmu;->zzj(Ljava/lang/Object;J)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public static zzd(Ljava/lang/Object;J)J
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzmv;->zzf:Lcom/google/android/gms/internal/measurement/zzmu;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzmu;->zzk(Ljava/lang/Object;J)J

    .line 4
    .line 5
    .line 6
    move-result-wide p0

    .line 7
    return-wide p0
.end method

.method public static zze(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzmv;->zzc:Lsun/misc/Unsafe;

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

.method public static zzf(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzmv;->zzf:Lcom/google/android/gms/internal/measurement/zzmu;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzmu;->zzm(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static zzg()Lsun/misc/Unsafe;
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzmr;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzmr;-><init>()V

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

.method public static bridge synthetic zzh(Ljava/lang/Throwable;)V
    .locals 6

    .line 1
    const-class v0, Lcom/google/android/gms/internal/measurement/zzmv;

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
    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 12
    .line 13
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 14
    .line 15
    const/4 v3, 0x5

    .line 16
    new-array v3, v3, [J

    .line 17
    .line 18
    fill-array-data v3, :array_0

    .line 19
    .line 20
    .line 21
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 29
    .line 30
    const/4 v4, 0x3

    .line 31
    new-array v4, v4, [J

    .line 32
    .line 33
    fill-array-data v4, :array_1

    .line 34
    .line 35
    .line 36
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 44
    .line 45
    const/16 v5, 0xa

    .line 46
    .line 47
    new-array v5, v5, [J

    .line 48
    .line 49
    fill-array-data v5, :array_2

    .line 50
    .line 51
    .line 52
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {v4, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {v0, v1, v2, v3, p0}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :array_0
    .array-data 8
        0x638ed7afe1ec81bdL    # 3.7247532763956654E171
        0x5ae22b57c0c2f205L    # 6.297186121628647E129
        -0x14e05dbc12facb83L    # -1.0156148965589219E208
        0x1ccef2a4164b33b7L    # 6.406524162002204E-170
        0x58a6c149d083b054L    # 1.1476402359339972E119
    .end array-data

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    :array_1
    .array-data 8
        0x110b92a9e09240c5L
        -0x708734105f9b5732L    # -3.899383585069025E-234
        -0x3f969189a5fcce78L    # -203.45194721816756
    .end array-data

    :array_2
    .array-data 8
        -0x17f0798aa776232fL    # -1.7978997620099815E193
        0x47e7364bbc08b20eL    # 2.4683331209375926E38
        -0x149662b82d42ff47L    # -2.6315450200516343E209
        -0x2ea12422d86cc059L    # -9.366955458031676E83
        0x1ea0082203c09863L
        0x3d666834d13cc953L    # 6.368468327922002E-13
        -0x324aca8d3c8ae283L    # -2.233545478267747E66
        -0x21c77cc82c37c203L    # -7.652208175567505E145
        -0x13e7d0dee066c7d7L    # -5.088465932356346E212
        0x393a3d597b5399ccL    # 5.053572118075515E-33
    .end array-data
.end method

.method public static synthetic zzi(Ljava/lang/Object;JZ)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzmv;->zzD(Ljava/lang/Object;JB)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic zzj(Ljava/lang/Object;JZ)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzmv;->zzE(Ljava/lang/Object;JB)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static bridge synthetic zzk(Ljava/lang/Object;JB)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzmv;->zzD(Ljava/lang/Object;JB)V

    return-void
.end method

.method public static bridge synthetic zzl(Ljava/lang/Object;JB)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzmv;->zzE(Ljava/lang/Object;JB)V

    return-void
.end method

.method public static zzm(Ljava/lang/Object;JZ)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzmv;->zzf:Lcom/google/android/gms/internal/measurement/zzmu;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzmu;->zzc(Ljava/lang/Object;JZ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static zzn([BJB)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzmv;->zzf:Lcom/google/android/gms/internal/measurement/zzmu;

    .line 2
    .line 3
    sget-wide v1, Lcom/google/android/gms/internal/measurement/zzmv;->zza:J

    .line 4
    .line 5
    add-long/2addr v1, p1

    .line 6
    invoke-virtual {v0, p0, v1, v2, p3}, Lcom/google/android/gms/internal/measurement/zzmu;->zzd(Ljava/lang/Object;JB)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static zzo(Ljava/lang/Object;JD)V
    .locals 6

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzmv;->zzf:Lcom/google/android/gms/internal/measurement/zzmu;

    .line 2
    .line 3
    move-object v1, p0

    .line 4
    move-wide v2, p1

    .line 5
    move-wide v4, p3

    .line 6
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzmu;->zze(Ljava/lang/Object;JD)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static zzp(Ljava/lang/Object;JF)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzmv;->zzf:Lcom/google/android/gms/internal/measurement/zzmu;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzmu;->zzf(Ljava/lang/Object;JF)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static zzq(Ljava/lang/Object;JI)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzmv;->zzf:Lcom/google/android/gms/internal/measurement/zzmu;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzmu;->zzn(Ljava/lang/Object;JI)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static zzr(Ljava/lang/Object;JJ)V
    .locals 6

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzmv;->zzf:Lcom/google/android/gms/internal/measurement/zzmu;

    .line 2
    .line 3
    move-object v1, p0

    .line 4
    move-wide v2, p1

    .line 5
    move-wide v4, p3

    .line 6
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzmu;->zzo(Ljava/lang/Object;JJ)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static zzs(Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzmv;->zzf:Lcom/google/android/gms/internal/measurement/zzmu;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzmu;->zzp(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static bridge synthetic zzt(Ljava/lang/Object;J)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzmv;->zzf:Lcom/google/android/gms/internal/measurement/zzmu;

    .line 2
    .line 3
    const-wide/16 v1, -0x4

    .line 4
    .line 5
    and-long/2addr v1, p1

    .line 6
    invoke-virtual {v0, p0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzmu;->zzj(Ljava/lang/Object;J)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    not-long p1, p1

    .line 11
    const-wide/16 v0, 0x3

    .line 12
    .line 13
    and-long/2addr p1, v0

    .line 14
    const/4 v0, 0x3

    .line 15
    shl-long/2addr p1, v0

    .line 16
    long-to-int p2, p1

    .line 17
    ushr-int/2addr p0, p2

    .line 18
    and-int/lit16 p0, p0, 0xff

    .line 19
    .line 20
    int-to-byte p0, p0

    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    const/4 p0, 0x1

    .line 24
    return p0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    return p0
.end method

.method public static bridge synthetic zzu(Ljava/lang/Object;J)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzmv;->zzf:Lcom/google/android/gms/internal/measurement/zzmu;

    .line 2
    .line 3
    const-wide/16 v1, -0x4

    .line 4
    .line 5
    and-long/2addr v1, p1

    .line 6
    invoke-virtual {v0, p0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzmu;->zzj(Ljava/lang/Object;J)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    const-wide/16 v0, 0x3

    .line 11
    .line 12
    and-long/2addr p1, v0

    .line 13
    const/4 v0, 0x3

    .line 14
    shl-long/2addr p1, v0

    .line 15
    long-to-int p2, p1

    .line 16
    ushr-int/2addr p0, p2

    .line 17
    and-int/lit16 p0, p0, 0xff

    .line 18
    .line 19
    int-to-byte p0, p0

    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    return p0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    return p0
.end method

.method public static zzv(Ljava/lang/Class;)Z
    .locals 12

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
    sget v6, Lcom/google/android/gms/internal/measurement/zzin;->zza:I

    .line 9
    .line 10
    :try_start_0
    sget-object v6, Lcom/google/android/gms/internal/measurement/zzmv;->zzd:Ljava/lang/Class;

    .line 11
    .line 12
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 13
    .line 14
    new-array v8, v4, [Ljava/lang/Class;

    .line 15
    .line 16
    aput-object p0, v8, v3

    .line 17
    .line 18
    aput-object v7, v8, v2

    .line 19
    .line 20
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 21
    .line 22
    new-array v10, v4, [J

    .line 23
    .line 24
    fill-array-data v10, :array_0

    .line 25
    .line 26
    .line 27
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v9

    .line 34
    invoke-virtual {v6, v9, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 35
    .line 36
    .line 37
    new-array v8, v1, [Ljava/lang/Class;

    .line 38
    .line 39
    aput-object p0, v8, v3

    .line 40
    .line 41
    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 42
    .line 43
    aput-object v9, v8, v2

    .line 44
    .line 45
    aput-object v7, v8, v4

    .line 46
    .line 47
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 48
    .line 49
    new-array v10, v4, [J

    .line 50
    .line 51
    fill-array-data v10, :array_1

    .line 52
    .line 53
    .line 54
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v9

    .line 61
    invoke-virtual {v6, v9, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 62
    .line 63
    .line 64
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 65
    .line 66
    new-array v9, v1, [Ljava/lang/Class;

    .line 67
    .line 68
    aput-object p0, v9, v3

    .line 69
    .line 70
    aput-object v8, v9, v2

    .line 71
    .line 72
    aput-object v7, v9, v4

    .line 73
    .line 74
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 75
    .line 76
    new-array v11, v4, [J

    .line 77
    .line 78
    fill-array-data v11, :array_2

    .line 79
    .line 80
    .line 81
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v10

    .line 88
    invoke-virtual {v6, v10, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 89
    .line 90
    .line 91
    new-array v9, v4, [Ljava/lang/Class;

    .line 92
    .line 93
    aput-object p0, v9, v3

    .line 94
    .line 95
    aput-object v7, v9, v2

    .line 96
    .line 97
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 98
    .line 99
    new-array v10, v4, [J

    .line 100
    .line 101
    fill-array-data v10, :array_3

    .line 102
    .line 103
    .line 104
    invoke-direct {v7, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v7

    .line 111
    invoke-virtual {v6, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 112
    .line 113
    .line 114
    new-array v7, v4, [Ljava/lang/Class;

    .line 115
    .line 116
    aput-object p0, v7, v3

    .line 117
    .line 118
    sget-object v9, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 119
    .line 120
    aput-object v9, v7, v2

    .line 121
    .line 122
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 123
    .line 124
    new-array v10, v4, [J

    .line 125
    .line 126
    fill-array-data v10, :array_4

    .line 127
    .line 128
    .line 129
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v9

    .line 136
    invoke-virtual {v6, v9, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 137
    .line 138
    .line 139
    new-array v7, v2, [Ljava/lang/Class;

    .line 140
    .line 141
    aput-object p0, v7, v3

    .line 142
    .line 143
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 144
    .line 145
    new-array v10, v4, [J

    .line 146
    .line 147
    fill-array-data v10, :array_5

    .line 148
    .line 149
    .line 150
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v9

    .line 157
    invoke-virtual {v6, v9, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 158
    .line 159
    .line 160
    new-array v7, v0, [Ljava/lang/Class;

    .line 161
    .line 162
    aput-object p0, v7, v3

    .line 163
    .line 164
    aput-object v5, v7, v2

    .line 165
    .line 166
    aput-object v8, v7, v4

    .line 167
    .line 168
    aput-object v8, v7, v1

    .line 169
    .line 170
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 171
    .line 172
    new-array v10, v1, [J

    .line 173
    .line 174
    fill-array-data v10, :array_6

    .line 175
    .line 176
    .line 177
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v9

    .line 184
    invoke-virtual {v6, v9, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 185
    .line 186
    .line 187
    new-array v0, v0, [Ljava/lang/Class;

    .line 188
    .line 189
    aput-object p0, v0, v3

    .line 190
    .line 191
    aput-object v5, v0, v2

    .line 192
    .line 193
    aput-object v8, v0, v4

    .line 194
    .line 195
    aput-object v8, v0, v1

    .line 196
    .line 197
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 198
    .line 199
    new-array v1, v1, [J

    .line 200
    .line 201
    fill-array-data v1, :array_7

    .line 202
    .line 203
    .line 204
    invoke-direct {p0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object p0

    .line 211
    invoke-virtual {v6, p0, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
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
        0x6c04fa9472df5aa8L
        -0x456b39887ee1122aL
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
        0x2fb41ae6cbef717dL    # 6.782456865888113E-79
        -0x7fa1de4d4552ac03L    # -6.704510988429825E-307
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
        -0x36c704af4766f003L    # -5.571105364956574E44
        0x20cae8247d264daL
    .end array-data

    :array_3
    .array-data 8
        -0x645545ed4a88cb44L
        -0x46b8f6dab943553dL    # -8.873038529599088E-33
    .end array-data

    :array_4
    .array-data 8
        0x7ab3118dbb7ff905L    # 1.1076282967680002E283
        -0x42b1170769fe7331L    # -2.1962906601476896E-13
    .end array-data

    :array_5
    .array-data 8
        -0x7e38bce21ed82e0L
        -0x6a659a572a71d504L
    .end array-data

    :array_6
    .array-data 8
        0x79d2cd9d5ab5fd30L    # 6.666338442200037E278
        0x4fd3103892a91dbL
        0x64b8da9b81ac4f92L    # 1.573666254382274E177
    .end array-data

    :array_7
    .array-data 8
        -0x6b8774d3ee4378b7L
        -0x1391c712fdebe7ffL    # -2.034864061819745E214
        0x602cd19340800816L    # 1.9319748302690906E155
    .end array-data
.end method

.method public static zzw(Ljava/lang/Object;J)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzmv;->zzf:Lcom/google/android/gms/internal/measurement/zzmu;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzmu;->zzg(Ljava/lang/Object;J)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public static zzx()Z
    .locals 1

    sget-boolean v0, Lcom/google/android/gms/internal/measurement/zzmv;->zzh:Z

    return v0
.end method

.method public static zzy()Z
    .locals 1

    sget-boolean v0, Lcom/google/android/gms/internal/measurement/zzmv;->zzg:Z

    return v0
.end method

.method private static zzz(Ljava/lang/Class;)I
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/android/gms/internal/measurement/zzmv;->zzh:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzmv;->zzf:Lcom/google/android/gms/internal/measurement/zzmu;

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/measurement/zzmu;->zzh(Ljava/lang/Class;)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    const/4 p0, -0x1

    .line 13
    return p0
.end method
