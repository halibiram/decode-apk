.class public Lcom/google/android/gms/common/util/WorkSourceUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# static fields
.field private static final zza:I

.field private static final zzb:Ljava/lang/reflect/Method;

.field private static final zzc:Ljava/lang/reflect/Method;

.field private static final zzd:Ljava/lang/reflect/Method;

.field private static final zze:Ljava/lang/reflect/Method;

.field private static final zzf:Ljava/lang/reflect/Method;

.field private static final zzg:Ljava/lang/reflect/Method;

.field private static final zzh:Ljava/lang/reflect/Method;

.field private static final zzi:Ljava/lang/reflect/Method;

.field private static zzj:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "WorkSourceUtil.class"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    const/4 v3, 0x2

    .line 5
    const-class v4, Landroid/os/WorkSource;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 8
    .line 9
    .line 10
    move-result v5

    .line 11
    sput v5, Lcom/google/android/gms/common/util/WorkSourceUtil;->zza:I

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    :try_start_0
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 15
    .line 16
    new-array v7, v3, [J

    .line 17
    .line 18
    fill-array-data v7, :array_0

    .line 19
    .line 20
    .line 21
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    new-array v7, v2, [Ljava/lang/Class;

    .line 29
    .line 30
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 31
    .line 32
    aput-object v8, v7, v1

    .line 33
    .line 34
    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 35
    .line 36
    .line 37
    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    goto :goto_0

    .line 39
    :catch_0
    nop

    .line 40
    move-object v6, v5

    .line 41
    :goto_0
    sput-object v6, Lcom/google/android/gms/common/util/WorkSourceUtil;->zzb:Ljava/lang/reflect/Method;

    .line 42
    .line 43
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastJellyBeanMR2()Z

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    const-class v7, Ljava/lang/String;

    .line 48
    .line 49
    if-eqz v6, :cond_0

    .line 50
    .line 51
    :try_start_1
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 52
    .line 53
    new-array v8, v3, [J

    .line 54
    .line 55
    fill-array-data v8, :array_1

    .line 56
    .line 57
    .line 58
    invoke-direct {v6, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    new-array v8, v3, [Ljava/lang/Class;

    .line 66
    .line 67
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 68
    .line 69
    aput-object v9, v8, v1

    .line 70
    .line 71
    aput-object v7, v8, v2

    .line 72
    .line 73
    invoke-virtual {v4, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 74
    .line 75
    .line 76
    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 77
    goto :goto_1

    .line 78
    :catch_1
    :cond_0
    move-object v6, v5

    .line 79
    :goto_1
    sput-object v6, Lcom/google/android/gms/common/util/WorkSourceUtil;->zzc:Ljava/lang/reflect/Method;

    .line 80
    .line 81
    :try_start_2
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 82
    .line 83
    new-array v8, v3, [J

    .line 84
    .line 85
    fill-array-data v8, :array_2

    .line 86
    .line 87
    .line 88
    invoke-direct {v6, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    invoke-virtual {v4, v6, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 96
    .line 97
    .line 98
    move-result-object v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 99
    goto :goto_2

    .line 100
    :catch_2
    move-object v6, v5

    .line 101
    :goto_2
    sput-object v6, Lcom/google/android/gms/common/util/WorkSourceUtil;->zzd:Ljava/lang/reflect/Method;

    .line 102
    .line 103
    :try_start_3
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 104
    .line 105
    new-array v8, v3, [J

    .line 106
    .line 107
    fill-array-data v8, :array_3

    .line 108
    .line 109
    .line 110
    invoke-direct {v6, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v6

    .line 117
    new-array v8, v2, [Ljava/lang/Class;

    .line 118
    .line 119
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 120
    .line 121
    aput-object v9, v8, v1

    .line 122
    .line 123
    invoke-virtual {v4, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 124
    .line 125
    .line 126
    move-result-object v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 127
    goto :goto_3

    .line 128
    :catch_3
    nop

    .line 129
    move-object v6, v5

    .line 130
    :goto_3
    sput-object v6, Lcom/google/android/gms/common/util/WorkSourceUtil;->zze:Ljava/lang/reflect/Method;

    .line 131
    .line 132
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastJellyBeanMR2()Z

    .line 133
    .line 134
    .line 135
    move-result v6

    .line 136
    if-eqz v6, :cond_1

    .line 137
    .line 138
    :try_start_4
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 139
    .line 140
    new-array v8, v3, [J

    .line 141
    .line 142
    fill-array-data v8, :array_4

    .line 143
    .line 144
    .line 145
    invoke-direct {v6, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    new-array v8, v2, [Ljava/lang/Class;

    .line 153
    .line 154
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 155
    .line 156
    aput-object v9, v8, v1

    .line 157
    .line 158
    invoke-virtual {v4, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 159
    .line 160
    .line 161
    move-result-object v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 162
    goto :goto_4

    .line 163
    :catch_4
    nop

    .line 164
    :cond_1
    move-object v6, v5

    .line 165
    :goto_4
    sput-object v6, Lcom/google/android/gms/common/util/WorkSourceUtil;->zzf:Ljava/lang/reflect/Method;

    .line 166
    .line 167
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastP()Z

    .line 168
    .line 169
    .line 170
    move-result v6

    .line 171
    if-eqz v6, :cond_2

    .line 172
    .line 173
    :try_start_5
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 174
    .line 175
    new-array v8, v0, [J

    .line 176
    .line 177
    fill-array-data v8, :array_5

    .line 178
    .line 179
    .line 180
    invoke-direct {v6, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v6

    .line 187
    invoke-virtual {v4, v6, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 188
    .line 189
    .line 190
    move-result-object v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 191
    goto :goto_5

    .line 192
    :catch_5
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 193
    .line 194
    new-array v8, v0, [J

    .line 195
    .line 196
    fill-array-data v8, :array_6

    .line 197
    .line 198
    .line 199
    invoke-direct {v6, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 206
    .line 207
    const/4 v8, 0x6

    .line 208
    new-array v8, v8, [J

    .line 209
    .line 210
    fill-array-data v8, :array_7

    .line 211
    .line 212
    .line 213
    invoke-direct {v6, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    :cond_2
    move-object v6, v5

    .line 220
    :goto_5
    sput-object v6, Lcom/google/android/gms/common/util/WorkSourceUtil;->zzg:Ljava/lang/reflect/Method;

    .line 221
    .line 222
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastP()Z

    .line 223
    .line 224
    .line 225
    move-result v6

    .line 226
    if-eqz v6, :cond_3

    .line 227
    .line 228
    :try_start_6
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 229
    .line 230
    const/4 v8, 0x5

    .line 231
    new-array v8, v8, [J

    .line 232
    .line 233
    fill-array-data v8, :array_8

    .line 234
    .line 235
    .line 236
    invoke-direct {v6, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v6

    .line 243
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 244
    .line 245
    .line 246
    move-result-object v6

    .line 247
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 248
    .line 249
    new-array v9, v3, [J

    .line 250
    .line 251
    fill-array-data v9, :array_9

    .line 252
    .line 253
    .line 254
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v8

    .line 261
    new-array v9, v3, [Ljava/lang/Class;

    .line 262
    .line 263
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 264
    .line 265
    aput-object v10, v9, v1

    .line 266
    .line 267
    aput-object v7, v9, v2

    .line 268
    .line 269
    invoke-virtual {v6, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 270
    .line 271
    .line 272
    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 273
    goto :goto_6

    .line 274
    :catch_6
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 275
    .line 276
    new-array v0, v0, [J

    .line 277
    .line 278
    fill-array-data v0, :array_a

    .line 279
    .line 280
    .line 281
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 288
    .line 289
    const/4 v1, 0x4

    .line 290
    new-array v1, v1, [J

    .line 291
    .line 292
    fill-array-data v1, :array_b

    .line 293
    .line 294
    .line 295
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    :cond_3
    move-object v0, v5

    .line 302
    :goto_6
    sput-object v0, Lcom/google/android/gms/common/util/WorkSourceUtil;->zzh:Ljava/lang/reflect/Method;

    .line 303
    .line 304
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastP()Z

    .line 305
    .line 306
    .line 307
    move-result v0

    .line 308
    if-eqz v0, :cond_4

    .line 309
    .line 310
    :try_start_7
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 311
    .line 312
    new-array v1, v3, [J

    .line 313
    .line 314
    fill-array-data v1, :array_c

    .line 315
    .line 316
    .line 317
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    invoke-virtual {v4, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 325
    .line 326
    .line 327
    move-result-object v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 328
    :try_start_8
    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 329
    .line 330
    .line 331
    goto :goto_7

    .line 332
    :catch_7
    :cond_4
    move-object v0, v5

    .line 333
    :catch_8
    :goto_7
    sput-object v0, Lcom/google/android/gms/common/util/WorkSourceUtil;->zzi:Ljava/lang/reflect/Method;

    .line 334
    .line 335
    sput-object v5, Lcom/google/android/gms/common/util/WorkSourceUtil;->zzj:Ljava/lang/Boolean;

    .line 336
    .line 337
    return-void

    .line 338
    nop

    .line 339
    :array_0
    .array-data 8
        0x1c13933574cf9ed7L
        0x5b9ae708f92fa950L    # 1.9095473371802621E133
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
    :array_1
    .array-data 8
        0x4f9aa374e1c8cbeL
        0x16242adaa92fb274L    # 5.145917375811058E-202
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
    :array_2
    .array-data 8
        0x14b14bf95a835c7eL
        -0x29c437bcfe9ff0eaL    # -2.5487441338499788E107
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
    :array_3
    .array-data 8
        0x2ec56ff870baf5ccL    # 2.2070034409597002E-83
        0x582946b4cd2567c7L    # 4.979664218078945E116
    .end array-data

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
    :array_4
    .array-data 8
        -0x46edf438683bdb5aL    # -8.688839826891752E-34
        0x278f0fe06a1f90c6L
    .end array-data

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
    :array_5
    .array-data 8
        0x2164761a1b2563adL    # 8.001034102194257E-148
        -0x1b168b7c18053694L    # -1.2893858680680459E178
        -0x31baf93155750f46L    # -1.133751542592974E69
    .end array-data

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
    .line 414
    .line 415
    :array_6
    .array-data 8
        -0x7223b9536311c3f2L
        -0x32db48026ccdd5aaL    # -4.261592082339439E63
        -0x13025df2a37de999L    # -1.0215338365550679E217
    .end array-data

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
    :array_7
    .array-data 8
        -0x5f544bd85acab189L
        -0x3d7b5d3c34c1a477L    # -2.836162766795442E12
        -0x3a76db555d6efdbbL    # -9.726815470204214E26
        0x78fc4cae5ffa4a41L    # 6.123720691880053E274
        0x3a4b78b33a31bdb6L    # 6.934777715423307E-28
        0x17bb0219ac2a58b3L    # 2.312376349012358E-194
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
    .line 456
    .line 457
    .line 458
    .line 459
    :array_8
    .array-data 8
        0x410c46b492ad53cbL    # 231638.57161965812
        0x1633835bdd742c18L
        -0x3836b9c2d4b9c583L    # -6.719080266050361E37
        0x32d73963c8b28448L    # 8.821070537787675E-64
        0x4a8f4082e9b02891L    # 1.4615950598583285E51
    .end array-data

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
    :array_9
    .array-data 8
        -0x7ffeca5ca856b966L    # -1.682049669904466E-309
        -0x764c0d67cf8e3939L    # -6.334833255324721E-262
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
    :array_a
    .array-data 8
        0x7864065f38b9bd83L    # 8.463232095851166E271
        -0xa3976fa7063a4b0L    # -2.165551383399118E259
        -0x2d3545c0f33641eaL    # -6.805616137397566E90
    .end array-data

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
    .line 508
    .line 509
    .line 510
    .line 511
    :array_b
    .array-data 8
        -0x6a863806622adf1cL
        -0x6171cdd51637a6b4L
        0x59c996c117944684L    # 3.383136880971845E124
        0x570d90f906aab140L
    .end array-data

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
    :array_c
    .array-data 8
        0x51ce8694084458c4L    # 1.1860264120594825E86
        0x455e26813caff95fL    # 1.4579843407104552E26
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Landroid/os/WorkSource;ILjava/lang/String;)V
    .locals 8
    .param p0    # Landroid/os/WorkSource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    const/4 v0, 0x7

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x1

    .line 5
    sget-object v4, Lcom/google/android/gms/common/util/WorkSourceUtil;->zzc:Ljava/lang/reflect/Method;

    .line 6
    .line 7
    if-eqz v4, :cond_1

    .line 8
    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 12
    .line 13
    new-array v5, v3, [J

    .line 14
    .line 15
    const-wide v6, -0x36df9cc470691f64L    # -1.8272815350319306E44

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    aput-wide v6, v5, v2

    .line 21
    .line 22
    invoke-direct {p2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const/4 v5, 0x2

    .line 34
    new-array v5, v5, [Ljava/lang/Object;

    .line 35
    .line 36
    aput-object p1, v5, v2

    .line 37
    .line 38
    aput-object p2, v5, v3

    .line 39
    .line 40
    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :catch_0
    move-exception p0

    .line 45
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 46
    .line 47
    new-array p2, v1, [J

    .line 48
    .line 49
    fill-array-data p2, :array_0

    .line 50
    .line 51
    .line 52
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 60
    .line 61
    new-array v0, v0, [J

    .line 62
    .line 63
    fill-array-data v0, :array_1

    .line 64
    .line 65
    .line 66
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    invoke-static {p1, p2, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_1
    sget-object p2, Lcom/google/android/gms/common/util/WorkSourceUtil;->zzb:Ljava/lang/reflect/Method;

    .line 78
    .line 79
    if-eqz p2, :cond_2

    .line 80
    .line 81
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    new-array v3, v3, [Ljava/lang/Object;

    .line 86
    .line 87
    aput-object p1, v3, v2

    .line 88
    .line 89
    invoke-virtual {p2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :catch_1
    move-exception p0

    .line 94
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 95
    .line 96
    new-array p2, v1, [J

    .line 97
    .line 98
    fill-array-data p2, :array_2

    .line 99
    .line 100
    .line 101
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 109
    .line 110
    new-array v0, v0, [J

    .line 111
    .line 112
    fill-array-data v0, :array_3

    .line 113
    .line 114
    .line 115
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    invoke-static {p1, p2, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    .line 124
    .line 125
    :cond_2
    return-void

    .line 126
    nop

    .line 127
    :array_0
    .array-data 8
        0x6b9ebae449a03546L    # 2.525690900852529E210
        0xbb008416d286047L
        -0x7d918e6cc885d004L
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
    :array_1
    .array-data 8
        -0x27ee58deade826d8L    # -1.7388944777635007E116
        0x622e8e00b0751bc6L    # 8.797628953591032E164
        -0x76765e98e67b205bL    # -1.017444020749791E-262
        -0x38ae8a89f285c865L    # -3.6260576645181066E35
        0x379f3ece086b0f2aL    # 8.966970324021475E-41
        0x324a1b182eccd4f4L    # 1.9366386790557684E-66
        -0x1fc88c1b62cc67e4L    # -3.1444939255375294E155
    .end array-data

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
    .line 174
    .line 175
    :array_2
    .array-data 8
        0x2e67d71cf8d81289L    # 3.834976382838449E-85
        0x69d93d9386e919a0L    # 7.728151412478052E201
        0x2eeea44f3b18d23aL    # 1.2618448399277164E-82
    .end array-data

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
    .line 190
    .line 191
    :array_3
    .array-data 8
        -0x5ac73db921233487L
        -0x3648d9e0e19e109aL    # -1.321569268660055E47
        -0x6ad49242bcbbcb3L    # -2.591728081109295E276
        0x6e8d2d0707885640L    # 3.3748220482095065E224
        -0x308028d56381ab24L    # -9.001165323381946E74
        0x52b93a810dccad8dL    # 3.211964169739876E90
        -0x3feca5d18ba00b82L    # -4.838067835194236
    .end array-data
.end method

.method public static fromPackage(Landroid/content/Context;Ljava/lang/String;)Landroid/os/WorkSource;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    if-eqz v2, :cond_1

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {p0, p1, v2}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 19
    .line 20
    .line 21
    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    if-nez p0, :cond_0

    .line 23
    .line 24
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 25
    .line 26
    const/4 v2, 0x7

    .line 27
    new-array v2, v2, [J

    .line 28
    .line 29
    fill-array-data v2, :array_0

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 43
    .line 44
    new-array p1, v0, [J

    .line 45
    .line 46
    fill-array-data p1, :array_1

    .line 47
    .line 48
    .line 49
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    return-object v1

    .line 56
    :cond_0
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 57
    .line 58
    new-instance v0, Landroid/os/WorkSource;

    .line 59
    .line 60
    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-static {v0, p0, p1}, Lcom/google/android/gms/common/util/WorkSourceUtil;->add(Landroid/os/WorkSource;ILjava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-object v0

    .line 67
    :catch_0
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 68
    .line 69
    const/4 v2, 0x4

    .line 70
    new-array v2, v2, [J

    .line 71
    .line 72
    fill-array-data v2, :array_2

    .line 73
    .line 74
    .line 75
    invoke-direct {p0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 86
    .line 87
    new-array p1, v0, [J

    .line 88
    .line 89
    fill-array-data p1, :array_3

    .line 90
    .line 91
    .line 92
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    :cond_1
    return-object v1

    .line 99
    :array_0
    .array-data 8
        -0x1a1946a3aa5f1c9bL    # -7.543508974387624E182
        -0x5d71f0d93dfda133L
        -0x5c93c0b3b603a085L    # -4.744039461653043E-138
        0x1d63f8395bbbc099L    # 4.233137052424794E-167
        0x573fa80c486bc1L
        0x58eaac3a1c39ea39L    # 2.1523667383710343E120
        0x93776d42281b421L
    .end array-data

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
    .line 128
    .line 129
    .line 130
    .line 131
    :array_1
    .array-data 8
        0x16472173de7e0d0bL    # 2.360810903783104E-201
        -0x41d924be5d851b4bL    # -2.660843340663107E-9
        -0x3a612bf51c3978f6L    # -2.3852234984449502E27
    .end array-data

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
    :array_2
    .array-data 8
        0x44c1e5fac01bc16aL    # 1.6904520614777197E23
        -0x56d497253c93ed10L
        -0x2e81bfa2102af057L    # -3.6730324086605312E84
        -0x32efb03c4fe3f0e0L    # -1.6775486719536635E63
    .end array-data

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
    :array_3
    .array-data 8
        -0x1cd3c8a1cd920387L    # -5.324359228585862E169
        -0x2b2f827935fce70fL    # -3.60685036737236E100
        0x28e5403c0c97bd17L
    .end array-data
.end method

.method public static fromPackageAndModuleExperimentalPi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/os/WorkSource;
    .locals 9
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x3

    .line 5
    const/4 v4, 0x0

    .line 6
    if-eqz p0, :cond_6

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 9
    .line 10
    .line 11
    move-result-object v5

    .line 12
    if-eqz v5, :cond_6

    .line 13
    .line 14
    if-eqz p2, :cond_6

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    goto/16 :goto_3

    .line 19
    .line 20
    :cond_0
    const/4 v5, -0x1

    .line 21
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0, p1, v2}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 26
    .line 27
    .line 28
    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    if-nez p0, :cond_1

    .line 30
    .line 31
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 32
    .line 33
    const/4 v6, 0x7

    .line 34
    new-array v6, v6, [J

    .line 35
    .line 36
    fill-array-data v6, :array_0

    .line 37
    .line 38
    .line 39
    invoke-direct {p0, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 50
    .line 51
    new-array v6, v3, [J

    .line 52
    .line 53
    fill-array-data v6, :array_1

    .line 54
    .line 55
    .line 56
    invoke-direct {p0, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    iget v5, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catch_0
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 67
    .line 68
    const/4 v6, 0x4

    .line 69
    new-array v6, v6, [J

    .line 70
    .line 71
    fill-array-data v6, :array_2

    .line 72
    .line 73
    .line 74
    invoke-direct {p0, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 85
    .line 86
    new-array v6, v3, [J

    .line 87
    .line 88
    fill-array-data v6, :array_3

    .line 89
    .line 90
    .line 91
    invoke-direct {p0, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    :goto_0
    if-gez v5, :cond_2

    .line 98
    .line 99
    return-object v4

    .line 100
    :cond_2
    new-instance p0, Landroid/os/WorkSource;

    .line 101
    .line 102
    invoke-direct {p0}, Landroid/os/WorkSource;-><init>()V

    .line 103
    .line 104
    .line 105
    sget-object v6, Lcom/google/android/gms/common/util/WorkSourceUtil;->zzg:Ljava/lang/reflect/Method;

    .line 106
    .line 107
    if-eqz v6, :cond_5

    .line 108
    .line 109
    sget-object v7, Lcom/google/android/gms/common/util/WorkSourceUtil;->zzh:Ljava/lang/reflect/Method;

    .line 110
    .line 111
    if-nez v7, :cond_3

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_3
    :try_start_1
    invoke-virtual {v6, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    sget v6, Lcom/google/android/gms/common/util/WorkSourceUtil;->zza:I

    .line 119
    .line 120
    if-eq v5, v6, :cond_4

    .line 121
    .line 122
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    new-array v8, v1, [Ljava/lang/Object;

    .line 127
    .line 128
    aput-object v5, v8, v2

    .line 129
    .line 130
    aput-object p1, v8, v0

    .line 131
    .line 132
    invoke-virtual {v7, v4, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    :cond_4
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    new-array v1, v1, [Ljava/lang/Object;

    .line 140
    .line 141
    aput-object p1, v1, v2

    .line 142
    .line 143
    aput-object p2, v1, v0

    .line 144
    .line 145
    invoke-virtual {v7, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 146
    .line 147
    .line 148
    goto :goto_2

    .line 149
    :catch_1
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 150
    .line 151
    new-array p2, v3, [J

    .line 152
    .line 153
    fill-array-data p2, :array_4

    .line 154
    .line 155
    .line 156
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 163
    .line 164
    const/16 p2, 0x8

    .line 165
    .line 166
    new-array p2, p2, [J

    .line 167
    .line 168
    fill-array-data p2, :array_5

    .line 169
    .line 170
    .line 171
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    goto :goto_2

    .line 178
    :cond_5
    :goto_1
    invoke-static {p0, v5, p1}, Lcom/google/android/gms/common/util/WorkSourceUtil;->add(Landroid/os/WorkSource;ILjava/lang/String;)V

    .line 179
    .line 180
    .line 181
    :goto_2
    return-object p0

    .line 182
    :cond_6
    :goto_3
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 183
    .line 184
    new-array p1, v3, [J

    .line 185
    .line 186
    fill-array-data p1, :array_6

    .line 187
    .line 188
    .line 189
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 196
    .line 197
    const/4 p1, 0x5

    .line 198
    new-array p1, p1, [J

    .line 199
    .line 200
    fill-array-data p1, :array_7

    .line 201
    .line 202
    .line 203
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    return-object v4

    .line 210
    nop

    .line 211
    :array_0
    .array-data 8
        -0xad1fbebe82b588L    # -2.07112108936133E305
        -0x7e137567546b933bL
        0xdedc7aadb2b519dL    # 1.3956530420059997E-241
        -0x75e46e4065c8d1d9L    # -5.60337856955654E-260
        -0x49c5dedc14148cdeL    # -1.787849818440715E-47
        0x349d790301f634e9L    # 3.0049742965568904E-55
        0x174bdd8012dcc84aL    # 1.863869741200604E-196
    .end array-data

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
    :array_1
    .array-data 8
        -0x10a09de794d43251L    # -2.9738136389136154E228
        -0x13c579585fb32bfdL    # -2.232485440906842E213
        -0xee3d4a511e5b810L    # -7.165286023210354E236
    .end array-data

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
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    :array_2
    .array-data 8
        0x5dde4b7a45e92598L    # 1.4777008695147041E144
        -0x173594c60abdb3afL    # -6.171363765434022E196
        -0x24317a6b0cadac72L
        -0x154601c84cb51c2cL    # -1.3039294178350664E206
    .end array-data

    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    :array_3
    .array-data 8
        -0x12f2ace94f366e5aL    # -2.0218012900040615E217
        0x41ea67e4d55f8f0eL    # 3.5441312429862127E9
        -0x24d6e2e656710507L    # -1.3926383910655E131
    .end array-data

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
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    :array_4
    .array-data 8
        0x7f49c034b5edd72cL    # 1.4127210726568107E305
        -0x52c8f702c86a3f60L    # -7.067595410184355E-91
        -0x1a795cf3aa5034d1L    # -1.1741524734177883E181
    .end array-data

    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
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
    :array_5
    .array-data 8
        -0x7b42ad13fe33d960L    # -7.703109303246243E-286
        0x3d4f9449d33dbf51L    # 2.243840774167316E-13
        -0x4db79d999d62052aL    # -1.8089334578864921E-66
        -0x7a9430efbac047a2L
        0x11cda2a391f4f214L    # 6.405052184867112E-223
        -0x56f9c72589e8e7b9L
        -0x3c7604d898b46d37L    # -2.3401667433819984E17
        0x69e554ea46f02ee2L    # 1.306268850801743E202
    .end array-data

    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
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
    .line 346
    .line 347
    :array_6
    .array-data 8
        0x5e2ade4835767af5L    # 4.193802161622329E145
        -0x73acf50870f2491fL
        0x1408f21bd3ec6e26L    # 3.705010191548402E-212
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
    :array_7
    .array-data 8
        0x7080100873912e44L    # 7.980007061829163E233
        0x7865915eeecee7a3L    # 9.115343795666973E271
        0x6d5c0e6334ef7817L    # 6.189930002329323E218
        -0x2a86d137cdb2ac9eL    # -5.640291456160352E103
        -0x6a506e35b7b9d99dL
    .end array-data
.end method

.method public static get(Landroid/os/WorkSource;I)I
    .locals 3
    .param p0    # Landroid/os/WorkSource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    sget-object v1, Lcom/google/android/gms/common/util/WorkSourceUtil;->zze:Ljava/lang/reflect/Method;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/4 v2, 0x1

    .line 11
    new-array v2, v2, [Ljava/lang/Object;

    .line 12
    .line 13
    aput-object p1, v2, v0

    .line 14
    .line 15
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    check-cast p0, Ljava/lang/Integer;

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    return p0

    .line 29
    :catch_0
    move-exception p0

    .line 30
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 31
    .line 32
    const/4 v1, 0x3

    .line 33
    new-array v1, v1, [J

    .line 34
    .line 35
    fill-array-data v1, :array_0

    .line 36
    .line 37
    .line 38
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 46
    .line 47
    const/4 v2, 0x7

    .line 48
    new-array v2, v2, [J

    .line 49
    .line 50
    fill-array-data v2, :array_1

    .line 51
    .line 52
    .line 53
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-static {p1, v1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    .line 62
    .line 63
    :cond_0
    return v0

    .line 64
    nop

    .line 65
    :array_0
    .array-data 8
        -0x1cb7893f67a418d0L
        -0x37b6fe4c2cae3284L    # -1.7018644216452852E40
        -0x3f58b4c862af1cf6L    # -2981.608622100558
    .end array-data

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
    .line 80
    .line 81
    :array_1
    .array-data 8
        -0x2cd583c2e2b2a0cdL    # -4.3161219430684885E92
        0x6eba9a627189d055L    # 2.461775490448731E225
        0x28e9724ebcb6231cL    # 1.322634697236236E-111
        0x1c7c2ac71f75254fL
        0x57e154e9e7116943L    # 2.134073491134194E115
        0x6f36df5dee8d5486L    # 5.41839783330211E227
        -0x789d536cf62a809aL
    .end array-data
.end method

.method public static getName(Landroid/os/WorkSource;I)Ljava/lang/String;
    .locals 3
    .param p0    # Landroid/os/WorkSource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/common/util/WorkSourceUtil;->zzf:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 v1, 0x1

    .line 10
    new-array v1, v1, [Ljava/lang/Object;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    aput-object p1, v1, v2

    .line 14
    .line 15
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    return-object p0

    .line 22
    :catch_0
    move-exception p0

    .line 23
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 24
    .line 25
    const/4 v0, 0x3

    .line 26
    new-array v0, v0, [J

    .line 27
    .line 28
    fill-array-data v0, :array_0

    .line 29
    .line 30
    .line 31
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 39
    .line 40
    const/4 v1, 0x7

    .line 41
    new-array v1, v1, [J

    .line 42
    .line 43
    fill-array-data v1, :array_1

    .line 44
    .line 45
    .line 46
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {p1, v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    .line 55
    .line 56
    :cond_0
    const/4 p0, 0x0

    .line 57
    return-object p0

    .line 58
    nop

    .line 59
    :array_0
    .array-data 8
        -0x7c4f98ab075c9940L    # -6.57513137896372E-291
        -0x21b0f25dd07fda19L    # -1.9388091383291987E146
        0x143064a0ee486debL    # 1.947796705712699E-211
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
    :array_1
    .array-data 8
        0x2b05d27a8183696bL
        -0x1829701550c07f70L    # -1.6084153517422487E192
        0x302c52985623af27L    # 1.2229953339989403E-76
        0x31b06536b6777fcdL    # 2.375538780572825E-69
        0x444cc3c6bd7f33c7L    # 1.0612320106013586E21
        0x14f645b2f5474ab3L    # 1.083945198730377E-207
        -0x1f8e3c155debf459L    # -3.8110994619365366E156
    .end array-data
.end method

.method public static getNames(Landroid/os/WorkSource;)Ljava/util/List;
    .locals 5
    .param p0    # Landroid/os/WorkSource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/WorkSource;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/common/util/WorkSourceUtil;->size(Landroid/os/WorkSource;)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    :goto_0
    if-eqz v2, :cond_2

    .line 16
    .line 17
    :goto_1
    if-ge v1, v2, :cond_2

    .line 18
    .line 19
    invoke-static {p0, v1}, Lcom/google/android/gms/common/util/WorkSourceUtil;->getName(Landroid/os/WorkSource;I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-static {v3}, Lcom/google/android/gms/common/util/Strings;->isEmptyOrWhitespace(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-nez v4, :cond_1

    .line 28
    .line 29
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    return-object v0
.end method

.method public static declared-synchronized hasWorkSourcePermission(Landroid/content/Context;)Z
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    const-class v0, Lcom/google/android/gms/common/util/WorkSourceUtil;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/google/android/gms/common/util/WorkSourceUtil;->zzj:Ljava/lang/Boolean;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 9
    .line 10
    .line 11
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit v0

    .line 13
    return p0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v1, 0x0

    .line 17
    if-nez p0, :cond_1

    .line 18
    .line 19
    monitor-exit v0

    .line 20
    return v1

    .line 21
    :cond_1
    :try_start_1
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 22
    .line 23
    const/4 v3, 0x6

    .line 24
    new-array v3, v3, [J

    .line 25
    .line 26
    fill-array-data v3, :array_0

    .line 27
    .line 28
    .line 29
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-nez p0, :cond_2

    .line 41
    .line 42
    const/4 v1, 0x1

    .line 43
    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    sput-object p0, Lcom/google/android/gms/common/util/WorkSourceUtil;->zzj:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    .line 49
    monitor-exit v0

    .line 50
    return v1

    .line 51
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    throw p0

    .line 53
    :array_0
    .array-data 8
        -0x631d269689397922L
        -0xd5e9d7f923ec5e9L
        0x1ffce9222916494bL
        -0x777c14c95d243e30L
        -0x12edfd2d1b0eca46L    # -2.483564527311797E217
        -0x364a365545f8fc26L    # -1.2438612836265853E47
    .end array-data
.end method

.method public static isEmpty(Landroid/os/WorkSource;)Z
    .locals 2
    .param p0    # Landroid/os/WorkSource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/common/util/WorkSourceUtil;->zzi:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    check-cast v0, Ljava/lang/Boolean;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 16
    .line 17
    .line 18
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    return p0

    .line 20
    :catch_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 21
    .line 22
    const/4 v1, 0x3

    .line 23
    new-array v1, v1, [J

    .line 24
    .line 25
    fill-array-data v1, :array_0

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 35
    .line 36
    const/4 v1, 0x6

    .line 37
    new-array v1, v1, [J

    .line 38
    .line 39
    fill-array-data v1, :array_1

    .line 40
    .line 41
    .line 42
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/common/util/WorkSourceUtil;->size(Landroid/os/WorkSource;)I

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    if-nez p0, :cond_1

    .line 53
    .line 54
    const/4 p0, 0x1

    .line 55
    return p0

    .line 56
    :cond_1
    const/4 p0, 0x0

    .line 57
    return p0

    .line 58
    nop

    .line 59
    :array_0
    .array-data 8
        0x31c5c939c4bb5395L    # 6.313195713787188E-69
        -0x194845d9c248fcecL    # -6.452423018669157E186
        -0x75a8dcc414e4d423L    # -7.524240462269854E-259
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
    :array_1
    .array-data 8
        0x671f2735a54fa75L
        0x3262c4ad35b6f39fL    # 5.569230000004099E-66
        -0x3fab6c76b68f4d1cL    # -82.30525432592145
        -0x2453aa5827605d10L    # -4.0223982380047836E133
        0x276c33ea41ed422L
        -0x1d03aa6177d8c0d9L    # -6.683321911670463E168
    .end array-data
.end method

.method public static size(Landroid/os/WorkSource;)I
    .locals 3
    .param p0    # Landroid/os/WorkSource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/common/util/WorkSourceUtil;->zzd:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    check-cast p0, Ljava/lang/Integer;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    return p0

    .line 20
    :catch_0
    move-exception p0

    .line 21
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 22
    .line 23
    const/4 v1, 0x3

    .line 24
    new-array v1, v1, [J

    .line 25
    .line 26
    fill-array-data v1, :array_0

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 37
    .line 38
    const/4 v2, 0x7

    .line 39
    new-array v2, v2, [J

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
    invoke-static {v0, v1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    .line 53
    .line 54
    :cond_0
    const/4 p0, 0x0

    .line 55
    return p0

    .line 56
    nop

    .line 57
    :array_0
    .array-data 8
        -0x7b370f3b85d63c69L
        0x657979d47e8c8d11L    # 6.607039881568704E180
        0x16e5bee1d9142f8fL    # 2.272714766036514E-198
    .end array-data

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
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    :array_1
    .array-data 8
        -0x13507d981ab759a2L    # -3.3944312774214224E215
        0x55f3acd109a0a7bL
        0xfb900e0bba53b2cL    # 6.291047145563258E-233
        -0x3cb104026dd8404aL    # -1.7442631597391724E16
        0x7134f20e3b0c9f6dL    # 2.1311202081538224E237
        -0x619b678ceeaa39a7L    # -2.861177543979166E-162
        0x42e095caae1f9bc1L    # 1.4588429264406203E14
    .end array-data
.end method
