.class final Lcom/google/android/gms/internal/ads/zzgbp;
.super Lcom/google/android/gms/internal/ads/zzgad;
.source "SourceFile"


# static fields
.field static final zza:Lcom/google/android/gms/internal/ads/zzgad;


# instance fields
.field final transient zzb:[Ljava/lang/Object;

.field private final transient zzc:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private final transient zzd:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgbp;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2, v1}, Lcom/google/android/gms/internal/ads/zzgbp;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgbp;->zza:Lcom/google/android/gms/internal/ads/zzgad;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;[Ljava/lang/Object;I)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgad;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgbp;->zzc:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgbp;->zzb:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzgbp;->zzd:I

    return-void
.end method

.method public static zzj(I[Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgac;)Lcom/google/android/gms/internal/ads/zzgbp;
    .locals 16

    .line 1
    move/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const/4 v3, -0x1

    .line 8
    const/4 v4, 0x2

    .line 9
    const/4 v5, 0x1

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgbp;->zza:Lcom/google/android/gms/internal/ads/zzgad;

    .line 13
    .line 14
    check-cast v0, Lcom/google/android/gms/internal/ads/zzgbp;

    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_0
    const/4 v6, 0x0

    .line 18
    const/4 v7, 0x0

    .line 19
    if-ne v0, v5, :cond_1

    .line 20
    .line 21
    aget-object v0, v1, v7

    .line 22
    .line 23
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    aget-object v2, v1, v5

    .line 27
    .line 28
    invoke-static {v2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzfyx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgbp;

    .line 35
    .line 36
    invoke-direct {v0, v6, v1, v5}, Lcom/google/android/gms/internal/ads/zzgbp;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    .line 37
    .line 38
    .line 39
    return-object v0

    .line 40
    :cond_1
    array-length v8, v1

    .line 41
    shr-int/2addr v8, v5

    .line 42
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 43
    .line 44
    new-array v10, v4, [J

    .line 45
    .line 46
    fill-array-data v10, :array_0

    .line 47
    .line 48
    .line 49
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v9

    .line 56
    invoke-static {v0, v8, v9}, Lcom/google/android/gms/internal/ads/zzfxe;->zzb(IILjava/lang/String;)I

    .line 57
    .line 58
    .line 59
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzgaf;->zzh(I)I

    .line 60
    .line 61
    .line 62
    move-result v8

    .line 63
    if-ne v0, v5, :cond_2

    .line 64
    .line 65
    aget-object v0, v1, v7

    .line 66
    .line 67
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    aget-object v3, v1, v5

    .line 71
    .line 72
    invoke-static {v3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/zzfyx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    const/4 v0, 0x1

    .line 79
    goto/16 :goto_c

    .line 80
    .line 81
    :cond_2
    add-int/lit8 v9, v8, -0x1

    .line 82
    .line 83
    const/16 v10, 0x80

    .line 84
    .line 85
    const/4 v11, 0x3

    .line 86
    if-gt v8, v10, :cond_8

    .line 87
    .line 88
    new-array v8, v8, [B

    .line 89
    .line 90
    invoke-static {v8, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 91
    .line 92
    .line 93
    const/4 v3, 0x0

    .line 94
    const/4 v10, 0x0

    .line 95
    :goto_0
    if-ge v3, v0, :cond_6

    .line 96
    .line 97
    add-int v12, v10, v10

    .line 98
    .line 99
    add-int v13, v3, v3

    .line 100
    .line 101
    aget-object v14, v1, v13

    .line 102
    .line 103
    invoke-static {v14}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    xor-int/2addr v13, v5

    .line 107
    aget-object v13, v1, v13

    .line 108
    .line 109
    invoke-static {v13}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    invoke-static {v14, v13}, Lcom/google/android/gms/internal/ads/zzfyx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v14}, Ljava/lang/Object;->hashCode()I

    .line 116
    .line 117
    .line 118
    move-result v15

    .line 119
    invoke-static {v15}, Lcom/google/android/gms/internal/ads/zzfzs;->zza(I)I

    .line 120
    .line 121
    .line 122
    move-result v15

    .line 123
    :goto_1
    and-int/2addr v15, v9

    .line 124
    aget-byte v4, v8, v15

    .line 125
    .line 126
    const/16 v7, 0xff

    .line 127
    .line 128
    and-int/2addr v4, v7

    .line 129
    if-ne v4, v7, :cond_4

    .line 130
    .line 131
    int-to-byte v4, v12

    .line 132
    aput-byte v4, v8, v15

    .line 133
    .line 134
    if-ge v10, v3, :cond_3

    .line 135
    .line 136
    aput-object v14, v1, v12

    .line 137
    .line 138
    xor-int/lit8 v4, v12, 0x1

    .line 139
    .line 140
    aput-object v13, v1, v4

    .line 141
    .line 142
    :cond_3
    add-int/2addr v10, v5

    .line 143
    goto :goto_2

    .line 144
    :cond_4
    aget-object v7, v1, v4

    .line 145
    .line 146
    invoke-virtual {v14, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v7

    .line 150
    if-eqz v7, :cond_5

    .line 151
    .line 152
    xor-int/2addr v4, v5

    .line 153
    new-instance v6, Lcom/google/android/gms/internal/ads/zzgab;

    .line 154
    .line 155
    aget-object v7, v1, v4

    .line 156
    .line 157
    invoke-static {v7}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    invoke-direct {v6, v14, v13, v7}, Lcom/google/android/gms/internal/ads/zzgab;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    aput-object v13, v1, v4

    .line 164
    .line 165
    :goto_2
    add-int/2addr v3, v5

    .line 166
    const/4 v4, 0x2

    .line 167
    const/4 v7, 0x0

    .line 168
    goto :goto_0

    .line 169
    :cond_5
    add-int/2addr v15, v5

    .line 170
    const/4 v4, 0x2

    .line 171
    const/4 v7, 0x0

    .line 172
    goto :goto_1

    .line 173
    :cond_6
    if-ne v10, v0, :cond_7

    .line 174
    .line 175
    move-object v6, v8

    .line 176
    :goto_3
    const/4 v4, 0x2

    .line 177
    goto/16 :goto_c

    .line 178
    .line 179
    :cond_7
    new-array v3, v11, [Ljava/lang/Object;

    .line 180
    .line 181
    const/4 v4, 0x0

    .line 182
    aput-object v8, v3, v4

    .line 183
    .line 184
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    aput-object v4, v3, v5

    .line 189
    .line 190
    const/4 v4, 0x2

    .line 191
    aput-object v6, v3, v4

    .line 192
    .line 193
    :goto_4
    move-object v6, v3

    .line 194
    goto/16 :goto_c

    .line 195
    .line 196
    :cond_8
    const v4, 0x8000

    .line 197
    .line 198
    .line 199
    if-gt v8, v4, :cond_e

    .line 200
    .line 201
    new-array v4, v8, [S

    .line 202
    .line 203
    invoke-static {v4, v3}, Ljava/util/Arrays;->fill([SS)V

    .line 204
    .line 205
    .line 206
    const/4 v3, 0x0

    .line 207
    const/4 v7, 0x0

    .line 208
    :goto_5
    if-ge v3, v0, :cond_c

    .line 209
    .line 210
    add-int v8, v7, v7

    .line 211
    .line 212
    add-int v10, v3, v3

    .line 213
    .line 214
    aget-object v12, v1, v10

    .line 215
    .line 216
    invoke-static {v12}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    xor-int/2addr v10, v5

    .line 220
    aget-object v10, v1, v10

    .line 221
    .line 222
    invoke-static {v10}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    invoke-static {v12, v10}, Lcom/google/android/gms/internal/ads/zzfyx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    .line 229
    .line 230
    .line 231
    move-result v13

    .line 232
    invoke-static {v13}, Lcom/google/android/gms/internal/ads/zzfzs;->zza(I)I

    .line 233
    .line 234
    .line 235
    move-result v13

    .line 236
    :goto_6
    and-int/2addr v13, v9

    .line 237
    aget-short v14, v4, v13

    .line 238
    .line 239
    int-to-char v14, v14

    .line 240
    const v15, 0xffff

    .line 241
    .line 242
    .line 243
    if-ne v14, v15, :cond_a

    .line 244
    .line 245
    int-to-short v14, v8

    .line 246
    aput-short v14, v4, v13

    .line 247
    .line 248
    if-ge v7, v3, :cond_9

    .line 249
    .line 250
    aput-object v12, v1, v8

    .line 251
    .line 252
    xor-int/2addr v8, v5

    .line 253
    aput-object v10, v1, v8

    .line 254
    .line 255
    :cond_9
    add-int/2addr v7, v5

    .line 256
    goto :goto_7

    .line 257
    :cond_a
    aget-object v15, v1, v14

    .line 258
    .line 259
    invoke-virtual {v12, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    move-result v15

    .line 263
    if-eqz v15, :cond_b

    .line 264
    .line 265
    xor-int/lit8 v6, v14, 0x1

    .line 266
    .line 267
    new-instance v8, Lcom/google/android/gms/internal/ads/zzgab;

    .line 268
    .line 269
    aget-object v13, v1, v6

    .line 270
    .line 271
    invoke-static {v13}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    invoke-direct {v8, v12, v10, v13}, Lcom/google/android/gms/internal/ads/zzgab;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 275
    .line 276
    .line 277
    aput-object v10, v1, v6

    .line 278
    .line 279
    move-object v6, v8

    .line 280
    :goto_7
    add-int/2addr v3, v5

    .line 281
    goto :goto_5

    .line 282
    :cond_b
    add-int/2addr v13, v5

    .line 283
    goto :goto_6

    .line 284
    :cond_c
    if-ne v7, v0, :cond_d

    .line 285
    .line 286
    :goto_8
    move-object v6, v4

    .line 287
    goto :goto_3

    .line 288
    :cond_d
    new-array v3, v11, [Ljava/lang/Object;

    .line 289
    .line 290
    const/4 v8, 0x0

    .line 291
    aput-object v4, v3, v8

    .line 292
    .line 293
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 294
    .line 295
    .line 296
    move-result-object v4

    .line 297
    aput-object v4, v3, v5

    .line 298
    .line 299
    const/4 v4, 0x2

    .line 300
    aput-object v6, v3, v4

    .line 301
    .line 302
    goto :goto_4

    .line 303
    :cond_e
    new-array v4, v8, [I

    .line 304
    .line 305
    invoke-static {v4, v3}, Ljava/util/Arrays;->fill([II)V

    .line 306
    .line 307
    .line 308
    move-object v7, v6

    .line 309
    const/4 v6, 0x0

    .line 310
    const/4 v8, 0x0

    .line 311
    :goto_9
    if-ge v8, v0, :cond_12

    .line 312
    .line 313
    add-int v10, v6, v6

    .line 314
    .line 315
    add-int v12, v8, v8

    .line 316
    .line 317
    aget-object v13, v1, v12

    .line 318
    .line 319
    invoke-static {v13}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    xor-int/2addr v12, v5

    .line 323
    aget-object v12, v1, v12

    .line 324
    .line 325
    invoke-static {v12}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    invoke-static {v13, v12}, Lcom/google/android/gms/internal/ads/zzfyx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v13}, Ljava/lang/Object;->hashCode()I

    .line 332
    .line 333
    .line 334
    move-result v14

    .line 335
    invoke-static {v14}, Lcom/google/android/gms/internal/ads/zzfzs;->zza(I)I

    .line 336
    .line 337
    .line 338
    move-result v14

    .line 339
    :goto_a
    and-int/2addr v14, v9

    .line 340
    aget v15, v4, v14

    .line 341
    .line 342
    if-ne v15, v3, :cond_10

    .line 343
    .line 344
    aput v10, v4, v14

    .line 345
    .line 346
    if-ge v6, v8, :cond_f

    .line 347
    .line 348
    aput-object v13, v1, v10

    .line 349
    .line 350
    xor-int/2addr v10, v5

    .line 351
    aput-object v12, v1, v10

    .line 352
    .line 353
    :cond_f
    add-int/2addr v6, v5

    .line 354
    goto :goto_b

    .line 355
    :cond_10
    aget-object v3, v1, v15

    .line 356
    .line 357
    invoke-virtual {v13, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 358
    .line 359
    .line 360
    move-result v3

    .line 361
    if-eqz v3, :cond_11

    .line 362
    .line 363
    xor-int/lit8 v3, v15, 0x1

    .line 364
    .line 365
    new-instance v7, Lcom/google/android/gms/internal/ads/zzgab;

    .line 366
    .line 367
    aget-object v10, v1, v3

    .line 368
    .line 369
    invoke-static {v10}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    invoke-direct {v7, v13, v12, v10}, Lcom/google/android/gms/internal/ads/zzgab;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 373
    .line 374
    .line 375
    aput-object v12, v1, v3

    .line 376
    .line 377
    :goto_b
    add-int/2addr v8, v5

    .line 378
    const/4 v3, -0x1

    .line 379
    goto :goto_9

    .line 380
    :cond_11
    add-int/2addr v14, v5

    .line 381
    const/4 v3, -0x1

    .line 382
    goto :goto_a

    .line 383
    :cond_12
    if-ne v6, v0, :cond_13

    .line 384
    .line 385
    goto :goto_8

    .line 386
    :cond_13
    new-array v3, v11, [Ljava/lang/Object;

    .line 387
    .line 388
    const/4 v8, 0x0

    .line 389
    aput-object v4, v3, v8

    .line 390
    .line 391
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 392
    .line 393
    .line 394
    move-result-object v4

    .line 395
    aput-object v4, v3, v5

    .line 396
    .line 397
    const/4 v4, 0x2

    .line 398
    aput-object v7, v3, v4

    .line 399
    .line 400
    goto/16 :goto_4

    .line 401
    .line 402
    :goto_c
    instance-of v3, v6, [Ljava/lang/Object;

    .line 403
    .line 404
    if-eqz v3, :cond_15

    .line 405
    .line 406
    check-cast v6, [Ljava/lang/Object;

    .line 407
    .line 408
    aget-object v0, v6, v4

    .line 409
    .line 410
    check-cast v0, Lcom/google/android/gms/internal/ads/zzgab;

    .line 411
    .line 412
    if-eqz v2, :cond_14

    .line 413
    .line 414
    iput-object v0, v2, Lcom/google/android/gms/internal/ads/zzgac;->zzc:Lcom/google/android/gms/internal/ads/zzgab;

    .line 415
    .line 416
    const/4 v0, 0x0

    .line 417
    aget-object v0, v6, v0

    .line 418
    .line 419
    aget-object v2, v6, v5

    .line 420
    .line 421
    check-cast v2, Ljava/lang/Integer;

    .line 422
    .line 423
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 424
    .line 425
    .line 426
    move-result v2

    .line 427
    add-int v3, v2, v2

    .line 428
    .line 429
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 430
    .line 431
    .line 432
    move-result-object v1

    .line 433
    move-object v6, v0

    .line 434
    move v0, v2

    .line 435
    goto :goto_d

    .line 436
    :cond_14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgab;->zza()Ljava/lang/IllegalArgumentException;

    .line 437
    .line 438
    .line 439
    move-result-object v0

    .line 440
    throw v0

    .line 441
    :cond_15
    :goto_d
    new-instance v2, Lcom/google/android/gms/internal/ads/zzgbp;

    .line 442
    .line 443
    invoke-direct {v2, v6, v1, v0}, Lcom/google/android/gms/internal/ads/zzgbp;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    .line 444
    .line 445
    .line 446
    return-object v2

    .line 447
    :array_0
    .array-data 8
        0x21436f1d58d050daL
        0x4e09d6ce74cf5cbeL    # 8.707755353587331E67
    .end array-data
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_1

    .line 3
    .line 4
    :cond_0
    :goto_0
    move-object p1, v0

    .line 5
    goto/16 :goto_4

    .line 6
    .line 7
    :cond_1
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgbp;->zzd:I

    .line 8
    .line 9
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgbp;->zzb:[Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    if-ne v1, v3, :cond_2

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    aget-object v1, v2, v1

    .line 16
    .line 17
    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    aget-object p1, v2, v3

    .line 27
    .line 28
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    goto/16 :goto_4

    .line 32
    .line 33
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgbp;->zzc:Ljava/lang/Object;

    .line 34
    .line 35
    if-nez v1, :cond_3

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_3
    instance-of v4, v1, [B

    .line 39
    .line 40
    const/4 v5, -0x1

    .line 41
    if-eqz v4, :cond_6

    .line 42
    .line 43
    move-object v4, v1

    .line 44
    check-cast v4, [B

    .line 45
    .line 46
    array-length v1, v4

    .line 47
    add-int/lit8 v6, v1, -0x1

    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfzs;->zza(I)I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    :goto_1
    and-int/2addr v1, v6

    .line 58
    aget-byte v5, v4, v1

    .line 59
    .line 60
    const/16 v7, 0xff

    .line 61
    .line 62
    and-int/2addr v5, v7

    .line 63
    if-ne v5, v7, :cond_4

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_4
    aget-object v7, v2, v5

    .line 67
    .line 68
    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    if-eqz v7, :cond_5

    .line 73
    .line 74
    xor-int/lit8 p1, v5, 0x1

    .line 75
    .line 76
    aget-object p1, v2, p1

    .line 77
    .line 78
    goto :goto_4

    .line 79
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_6
    instance-of v4, v1, [S

    .line 83
    .line 84
    if-eqz v4, :cond_9

    .line 85
    .line 86
    move-object v4, v1

    .line 87
    check-cast v4, [S

    .line 88
    .line 89
    array-length v1, v4

    .line 90
    add-int/lit8 v6, v1, -0x1

    .line 91
    .line 92
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfzs;->zza(I)I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    :goto_2
    and-int/2addr v1, v6

    .line 101
    aget-short v5, v4, v1

    .line 102
    .line 103
    int-to-char v5, v5

    .line 104
    const v7, 0xffff

    .line 105
    .line 106
    .line 107
    if-ne v5, v7, :cond_7

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_7
    aget-object v7, v2, v5

    .line 111
    .line 112
    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v7

    .line 116
    if-eqz v7, :cond_8

    .line 117
    .line 118
    xor-int/lit8 p1, v5, 0x1

    .line 119
    .line 120
    aget-object p1, v2, p1

    .line 121
    .line 122
    goto :goto_4

    .line 123
    :cond_8
    add-int/lit8 v1, v1, 0x1

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_9
    check-cast v1, [I

    .line 127
    .line 128
    array-length v4, v1

    .line 129
    add-int/2addr v4, v5

    .line 130
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 131
    .line 132
    .line 133
    move-result v6

    .line 134
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzfzs;->zza(I)I

    .line 135
    .line 136
    .line 137
    move-result v6

    .line 138
    :goto_3
    and-int/2addr v6, v4

    .line 139
    aget v7, v1, v6

    .line 140
    .line 141
    if-ne v7, v5, :cond_a

    .line 142
    .line 143
    goto/16 :goto_0

    .line 144
    .line 145
    :cond_a
    aget-object v8, v2, v7

    .line 146
    .line 147
    invoke-virtual {p1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v8

    .line 151
    if-eqz v8, :cond_c

    .line 152
    .line 153
    xor-int/lit8 p1, v7, 0x1

    .line 154
    .line 155
    aget-object p1, v2, p1

    .line 156
    .line 157
    :goto_4
    if-nez p1, :cond_b

    .line 158
    .line 159
    return-object v0

    .line 160
    :cond_b
    return-object p1

    .line 161
    :cond_c
    add-int/lit8 v6, v6, 0x1

    .line 162
    .line 163
    goto :goto_3
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgbp;->zzd:I

    return v0
.end method

.method public final zza()Lcom/google/android/gms/internal/ads/zzfzv;
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgbp;->zzd:I

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgbo;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgbp;->zzb:[Ljava/lang/Object;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzgbo;-><init>([Ljava/lang/Object;II)V

    .line 9
    .line 10
    .line 11
    return-object v1
.end method

.method public final zzf()Lcom/google/android/gms/internal/ads/zzgaf;
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgbp;->zzd:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgbp;->zzb:[Ljava/lang/Object;

    .line 4
    .line 5
    new-instance v2, Lcom/google/android/gms/internal/ads/zzgbm;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v2, p0, v1, v3, v0}, Lcom/google/android/gms/internal/ads/zzgbm;-><init>(Lcom/google/android/gms/internal/ads/zzgad;[Ljava/lang/Object;II)V

    .line 9
    .line 10
    .line 11
    return-object v2
.end method

.method public final zzg()Lcom/google/android/gms/internal/ads/zzgaf;
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgbp;->zzd:I

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgbo;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgbp;->zzb:[Ljava/lang/Object;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzgbo;-><init>([Ljava/lang/Object;II)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgbn;

    .line 12
    .line 13
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzgbn;-><init>(Lcom/google/android/gms/internal/ads/zzgad;Lcom/google/android/gms/internal/ads/zzgaa;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method
