.class final Lcom/google/android/gms/internal/ads/zzajk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzfxr;

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzfxr;


# instance fields
.field private final zzc:Ljava/util/List;

.field private zzd:I

.field private zze:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x3a

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfwp;->zzc(C)Lcom/google/android/gms/internal/ads/zzfwp;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfxr;->zzc(Lcom/google/android/gms/internal/ads/zzfwp;)Lcom/google/android/gms/internal/ads/zzfxr;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzajk;->zza:Lcom/google/android/gms/internal/ads/zzfxr;

    const/16 v0, 0x2a

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfwp;->zzc(C)Lcom/google/android/gms/internal/ads/zzfwp;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfxr;->zzc(Lcom/google/android/gms/internal/ads/zzfwp;)Lcom/google/android/gms/internal/ads/zzfxr;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzajk;->zzb:Lcom/google/android/gms/internal/ads/zzfxr;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzajk;->zzc:Ljava/util/List;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzajk;->zzd:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzacv;Lcom/google/android/gms/internal/ads/zzadr;Ljava/util/List;)I
    .locals 30

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const/4 v3, 0x5

    .line 8
    const/16 v4, 0x8

    .line 9
    .line 10
    const/4 v5, 0x4

    .line 11
    const/4 v6, 0x3

    .line 12
    const/4 v7, 0x1

    .line 13
    iget v8, v1, Lcom/google/android/gms/internal/ads/zzajk;->zzd:I

    .line 14
    .line 15
    if-eqz v8, :cond_13

    .line 16
    .line 17
    const/4 v11, 0x2

    .line 18
    const/4 v12, 0x0

    .line 19
    if-eq v8, v7, :cond_11

    .line 20
    .line 21
    if-eq v8, v11, :cond_c

    .line 22
    .line 23
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacv;->zzf()J

    .line 24
    .line 25
    .line 26
    move-result-wide v16

    .line 27
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacv;->zzd()J

    .line 28
    .line 29
    .line 30
    move-result-wide v18

    .line 31
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacv;->zzf()J

    .line 32
    .line 33
    .line 34
    move-result-wide v20

    .line 35
    sub-long v18, v18, v20

    .line 36
    .line 37
    iget v8, v1, Lcom/google/android/gms/internal/ads/zzajk;->zze:I

    .line 38
    .line 39
    int-to-long v13, v8

    .line 40
    new-instance v8, Lcom/google/android/gms/internal/ads/zzfp;

    .line 41
    .line 42
    sub-long v13, v18, v13

    .line 43
    .line 44
    long-to-int v14, v13

    .line 45
    invoke-direct {v8, v14}, Lcom/google/android/gms/internal/ads/zzfp;-><init>(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzfp;->zzM()[B

    .line 49
    .line 50
    .line 51
    move-result-object v13

    .line 52
    invoke-interface {v0, v13, v12, v14}, Lcom/google/android/gms/internal/ads/zzacv;->zzi([BII)V

    .line 53
    .line 54
    .line 55
    const/4 v0, 0x0

    .line 56
    :goto_0
    iget-object v13, v1, Lcom/google/android/gms/internal/ads/zzajk;->zzc:Ljava/util/List;

    .line 57
    .line 58
    invoke-interface {v13}, Ljava/util/List;->size()I

    .line 59
    .line 60
    .line 61
    move-result v13

    .line 62
    if-ge v0, v13, :cond_b

    .line 63
    .line 64
    iget-object v13, v1, Lcom/google/android/gms/internal/ads/zzajk;->zzc:Ljava/util/List;

    .line 65
    .line 66
    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v13

    .line 70
    check-cast v13, Lcom/google/android/gms/internal/ads/zzajj;

    .line 71
    .line 72
    iget-wide v9, v13, Lcom/google/android/gms/internal/ads/zzajj;->zza:J

    .line 73
    .line 74
    sub-long v9, v9, v16

    .line 75
    .line 76
    long-to-int v10, v9

    .line 77
    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/ads/zzfp;->zzK(I)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/ads/zzfp;->zzL(I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzfp;->zzi()I

    .line 84
    .line 85
    .line 86
    move-result v9

    .line 87
    sget-object v10, Lcom/google/android/gms/internal/ads/zzfwq;->zzc:Ljava/nio/charset/Charset;

    .line 88
    .line 89
    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/internal/ads/zzfp;->zzA(ILjava/nio/charset/Charset;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v14

    .line 93
    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    .line 94
    .line 95
    .line 96
    move-result v19

    .line 97
    const/16 v22, -0x1

    .line 98
    .line 99
    sparse-switch v19, :sswitch_data_0

    .line 100
    .line 101
    .line 102
    goto/16 :goto_1

    .line 103
    .line 104
    :sswitch_0
    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    .line 105
    .line 106
    new-array v15, v5, [J

    .line 107
    .line 108
    fill-array-data v15, :array_0

    .line 109
    .line 110
    .line 111
    invoke-direct {v12, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v12

    .line 118
    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v12

    .line 122
    if-eqz v12, :cond_0

    .line 123
    .line 124
    const/4 v12, 0x2

    .line 125
    goto :goto_2

    .line 126
    :sswitch_1
    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    .line 127
    .line 128
    new-array v15, v3, [J

    .line 129
    .line 130
    fill-array-data v15, :array_1

    .line 131
    .line 132
    .line 133
    invoke-direct {v12, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v12

    .line 140
    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v12

    .line 144
    if-eqz v12, :cond_0

    .line 145
    .line 146
    const/4 v12, 0x4

    .line 147
    goto :goto_2

    .line 148
    :sswitch_2
    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    .line 149
    .line 150
    new-array v15, v5, [J

    .line 151
    .line 152
    fill-array-data v15, :array_2

    .line 153
    .line 154
    .line 155
    invoke-direct {v12, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v12

    .line 162
    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v12

    .line 166
    if-eqz v12, :cond_0

    .line 167
    .line 168
    const/4 v12, 0x1

    .line 169
    goto :goto_2

    .line 170
    :sswitch_3
    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    .line 171
    .line 172
    new-array v15, v3, [J

    .line 173
    .line 174
    fill-array-data v15, :array_3

    .line 175
    .line 176
    .line 177
    invoke-direct {v12, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v12

    .line 184
    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v12

    .line 188
    if-eqz v12, :cond_0

    .line 189
    .line 190
    const/4 v12, 0x3

    .line 191
    goto :goto_2

    .line 192
    :sswitch_4
    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    .line 193
    .line 194
    new-array v15, v6, [J

    .line 195
    .line 196
    fill-array-data v15, :array_4

    .line 197
    .line 198
    .line 199
    invoke-direct {v12, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v12

    .line 206
    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result v12

    .line 210
    if-eqz v12, :cond_0

    .line 211
    .line 212
    const/4 v12, 0x0

    .line 213
    goto :goto_2

    .line 214
    :cond_0
    :goto_1
    const/4 v12, -0x1

    .line 215
    :goto_2
    const/4 v15, 0x0

    .line 216
    if-eqz v12, :cond_5

    .line 217
    .line 218
    if-eq v12, v7, :cond_4

    .line 219
    .line 220
    if-eq v12, v11, :cond_3

    .line 221
    .line 222
    if-eq v12, v6, :cond_2

    .line 223
    .line 224
    if-ne v12, v5, :cond_1

    .line 225
    .line 226
    const/16 v12, 0xb04

    .line 227
    .line 228
    goto :goto_3

    .line 229
    :cond_1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 230
    .line 231
    new-array v2, v6, [J

    .line 232
    .line 233
    fill-array-data v2, :array_5

    .line 234
    .line 235
    .line 236
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    invoke-static {v0, v15}, Lcom/google/android/gms/internal/ads/zzcc;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzcc;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    throw v0

    .line 248
    :cond_2
    const/16 v12, 0xb03

    .line 249
    .line 250
    goto :goto_3

    .line 251
    :cond_3
    const/16 v12, 0xb01

    .line 252
    .line 253
    goto :goto_3

    .line 254
    :cond_4
    const/16 v12, 0xb00

    .line 255
    .line 256
    goto :goto_3

    .line 257
    :cond_5
    const/16 v12, 0x890

    .line 258
    .line 259
    :goto_3
    iget v13, v13, Lcom/google/android/gms/internal/ads/zzajj;->zzb:I

    .line 260
    .line 261
    add-int/2addr v9, v4

    .line 262
    sub-int/2addr v13, v9

    .line 263
    const/16 v9, 0x890

    .line 264
    .line 265
    if-eq v12, v9, :cond_8

    .line 266
    .line 267
    const/16 v9, 0xb00

    .line 268
    .line 269
    if-eq v12, v9, :cond_7

    .line 270
    .line 271
    const/16 v9, 0xb01

    .line 272
    .line 273
    if-eq v12, v9, :cond_7

    .line 274
    .line 275
    const/16 v9, 0xb03

    .line 276
    .line 277
    if-eq v12, v9, :cond_7

    .line 278
    .line 279
    const/16 v9, 0xb04

    .line 280
    .line 281
    if-ne v12, v9, :cond_6

    .line 282
    .line 283
    goto :goto_4

    .line 284
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 285
    .line 286
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 287
    .line 288
    .line 289
    throw v0

    .line 290
    :cond_7
    :goto_4
    move-object/from16 v9, p3

    .line 291
    .line 292
    goto :goto_6

    .line 293
    :cond_8
    new-instance v9, Ljava/util/ArrayList;

    .line 294
    .line 295
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v8, v13, v10}, Lcom/google/android/gms/internal/ads/zzfp;->zzA(ILjava/nio/charset/Charset;)Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v10

    .line 302
    sget-object v12, Lcom/google/android/gms/internal/ads/zzajk;->zzb:Lcom/google/android/gms/internal/ads/zzfxr;

    .line 303
    .line 304
    invoke-virtual {v12, v10}, Lcom/google/android/gms/internal/ads/zzfxr;->zzf(Ljava/lang/CharSequence;)Ljava/util/List;

    .line 305
    .line 306
    .line 307
    move-result-object v10

    .line 308
    const/4 v12, 0x0

    .line 309
    :goto_5
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 310
    .line 311
    .line 312
    move-result v13

    .line 313
    if-ge v12, v13, :cond_a

    .line 314
    .line 315
    sget-object v13, Lcom/google/android/gms/internal/ads/zzajk;->zza:Lcom/google/android/gms/internal/ads/zzfxr;

    .line 316
    .line 317
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v23

    .line 321
    move-object/from16 v3, v23

    .line 322
    .line 323
    check-cast v3, Ljava/lang/CharSequence;

    .line 324
    .line 325
    invoke-virtual {v13, v3}, Lcom/google/android/gms/internal/ads/zzfxr;->zzf(Ljava/lang/CharSequence;)Ljava/util/List;

    .line 326
    .line 327
    .line 328
    move-result-object v3

    .line 329
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 330
    .line 331
    .line 332
    move-result v13

    .line 333
    if-ne v13, v6, :cond_9

    .line 334
    .line 335
    const/4 v13, 0x0

    .line 336
    :try_start_0
    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object v23

    .line 340
    check-cast v23, Ljava/lang/String;

    .line 341
    .line 342
    invoke-static/range {v23 .. v23}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 343
    .line 344
    .line 345
    move-result-wide v25

    .line 346
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object v13

    .line 350
    check-cast v13, Ljava/lang/String;

    .line 351
    .line 352
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 353
    .line 354
    .line 355
    move-result-wide v27

    .line 356
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    move-result-object v3

    .line 360
    check-cast v3, Ljava/lang/String;

    .line 361
    .line 362
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 363
    .line 364
    .line 365
    move-result v3

    .line 366
    add-int/lit8 v3, v3, -0x1

    .line 367
    .line 368
    shl-int v29, v7, v3

    .line 369
    .line 370
    new-instance v3, Lcom/google/android/gms/internal/ads/zzahi;

    .line 371
    .line 372
    move-object/from16 v24, v3

    .line 373
    .line 374
    invoke-direct/range {v24 .. v29}, Lcom/google/android/gms/internal/ads/zzahi;-><init>(JJI)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    .line 379
    .line 380
    add-int/2addr v12, v7

    .line 381
    const/4 v3, 0x5

    .line 382
    goto :goto_5

    .line 383
    :catch_0
    move-exception v0

    .line 384
    invoke-static {v15, v0}, Lcom/google/android/gms/internal/ads/zzcc;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzcc;

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    throw v0

    .line 389
    :cond_9
    invoke-static {v15, v15}, Lcom/google/android/gms/internal/ads/zzcc;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzcc;

    .line 390
    .line 391
    .line 392
    move-result-object v0

    .line 393
    throw v0

    .line 394
    :cond_a
    new-instance v3, Lcom/google/android/gms/internal/ads/zzahj;

    .line 395
    .line 396
    invoke-direct {v3, v9}, Lcom/google/android/gms/internal/ads/zzahj;-><init>(Ljava/util/List;)V

    .line 397
    .line 398
    .line 399
    move-object/from16 v9, p3

    .line 400
    .line 401
    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    .line 403
    .line 404
    :goto_6
    add-int/2addr v0, v7

    .line 405
    const/4 v3, 0x5

    .line 406
    const/4 v12, 0x0

    .line 407
    goto/16 :goto_0

    .line 408
    .line 409
    :cond_b
    const-wide/16 v12, 0x0

    .line 410
    .line 411
    iput-wide v12, v2, Lcom/google/android/gms/internal/ads/zzadr;->zza:J

    .line 412
    .line 413
    goto/16 :goto_a

    .line 414
    .line 415
    :cond_c
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacv;->zzd()J

    .line 416
    .line 417
    .line 418
    move-result-wide v8

    .line 419
    iget v3, v1, Lcom/google/android/gms/internal/ads/zzajk;->zze:I

    .line 420
    .line 421
    add-int/lit8 v3, v3, -0x14

    .line 422
    .line 423
    new-instance v5, Lcom/google/android/gms/internal/ads/zzfp;

    .line 424
    .line 425
    invoke-direct {v5, v3}, Lcom/google/android/gms/internal/ads/zzfp;-><init>(I)V

    .line 426
    .line 427
    .line 428
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzfp;->zzM()[B

    .line 429
    .line 430
    .line 431
    move-result-object v10

    .line 432
    const/4 v12, 0x0

    .line 433
    invoke-interface {v0, v10, v12, v3}, Lcom/google/android/gms/internal/ads/zzacv;->zzi([BII)V

    .line 434
    .line 435
    .line 436
    const/4 v13, 0x0

    .line 437
    :goto_7
    div-int/lit8 v0, v3, 0xc

    .line 438
    .line 439
    if-ge v13, v0, :cond_f

    .line 440
    .line 441
    invoke-virtual {v5, v11}, Lcom/google/android/gms/internal/ads/zzfp;->zzL(I)V

    .line 442
    .line 443
    .line 444
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzfp;->zzC()S

    .line 445
    .line 446
    .line 447
    move-result v0

    .line 448
    const/16 v10, 0x890

    .line 449
    .line 450
    const/16 v12, 0xb00

    .line 451
    .line 452
    const/16 v14, 0xb01

    .line 453
    .line 454
    if-eq v0, v10, :cond_d

    .line 455
    .line 456
    if-eq v0, v12, :cond_d

    .line 457
    .line 458
    const/16 v15, 0xb03

    .line 459
    .line 460
    if-eq v0, v14, :cond_e

    .line 461
    .line 462
    if-eq v0, v15, :cond_e

    .line 463
    .line 464
    const/16 v10, 0xb04

    .line 465
    .line 466
    if-eq v0, v10, :cond_e

    .line 467
    .line 468
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzfp;->zzL(I)V

    .line 469
    .line 470
    .line 471
    goto :goto_8

    .line 472
    :cond_d
    const/16 v15, 0xb03

    .line 473
    .line 474
    :cond_e
    iget v10, v1, Lcom/google/android/gms/internal/ads/zzajk;->zze:I

    .line 475
    .line 476
    int-to-long v14, v10

    .line 477
    sub-long v14, v8, v14

    .line 478
    .line 479
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzfp;->zzi()I

    .line 480
    .line 481
    .line 482
    move-result v10

    .line 483
    int-to-long v11, v10

    .line 484
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzfp;->zzi()I

    .line 485
    .line 486
    .line 487
    move-result v10

    .line 488
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzajk;->zzc:Ljava/util/List;

    .line 489
    .line 490
    new-instance v6, Lcom/google/android/gms/internal/ads/zzajj;

    .line 491
    .line 492
    sub-long/2addr v14, v11

    .line 493
    invoke-direct {v6, v0, v14, v15, v10}, Lcom/google/android/gms/internal/ads/zzajj;-><init>(IJI)V

    .line 494
    .line 495
    .line 496
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 497
    .line 498
    .line 499
    :goto_8
    add-int/2addr v13, v7

    .line 500
    const/16 v4, 0x8

    .line 501
    .line 502
    const/4 v6, 0x3

    .line 503
    const/4 v11, 0x2

    .line 504
    goto :goto_7

    .line 505
    :cond_f
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzajk;->zzc:Ljava/util/List;

    .line 506
    .line 507
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 508
    .line 509
    .line 510
    move-result v0

    .line 511
    if-eqz v0, :cond_10

    .line 512
    .line 513
    const-wide/16 v3, 0x0

    .line 514
    .line 515
    iput-wide v3, v2, Lcom/google/android/gms/internal/ads/zzadr;->zza:J

    .line 516
    .line 517
    goto :goto_a

    .line 518
    :cond_10
    const/4 v0, 0x3

    .line 519
    iput v0, v1, Lcom/google/android/gms/internal/ads/zzajk;->zzd:I

    .line 520
    .line 521
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzajk;->zzc:Ljava/util/List;

    .line 522
    .line 523
    const/4 v3, 0x0

    .line 524
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 525
    .line 526
    .line 527
    move-result-object v0

    .line 528
    check-cast v0, Lcom/google/android/gms/internal/ads/zzajj;

    .line 529
    .line 530
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzajj;->zza:J

    .line 531
    .line 532
    iput-wide v3, v2, Lcom/google/android/gms/internal/ads/zzadr;->zza:J

    .line 533
    .line 534
    goto :goto_a

    .line 535
    :cond_11
    const/4 v3, 0x0

    .line 536
    new-instance v4, Lcom/google/android/gms/internal/ads/zzfp;

    .line 537
    .line 538
    const/16 v5, 0x8

    .line 539
    .line 540
    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/ads/zzfp;-><init>(I)V

    .line 541
    .line 542
    .line 543
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfp;->zzM()[B

    .line 544
    .line 545
    .line 546
    move-result-object v6

    .line 547
    invoke-interface {v0, v6, v3, v5}, Lcom/google/android/gms/internal/ads/zzacv;->zzi([BII)V

    .line 548
    .line 549
    .line 550
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfp;->zzi()I

    .line 551
    .line 552
    .line 553
    move-result v3

    .line 554
    add-int/2addr v3, v5

    .line 555
    iput v3, v1, Lcom/google/android/gms/internal/ads/zzajk;->zze:I

    .line 556
    .line 557
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfp;->zzg()I

    .line 558
    .line 559
    .line 560
    move-result v3

    .line 561
    const v4, 0x53454654

    .line 562
    .line 563
    .line 564
    if-eq v3, v4, :cond_12

    .line 565
    .line 566
    const-wide/16 v3, 0x0

    .line 567
    .line 568
    iput-wide v3, v2, Lcom/google/android/gms/internal/ads/zzadr;->zza:J

    .line 569
    .line 570
    goto :goto_a

    .line 571
    :cond_12
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacv;->zzf()J

    .line 572
    .line 573
    .line 574
    move-result-wide v3

    .line 575
    iget v0, v1, Lcom/google/android/gms/internal/ads/zzajk;->zze:I

    .line 576
    .line 577
    add-int/lit8 v0, v0, -0xc

    .line 578
    .line 579
    int-to-long v5, v0

    .line 580
    sub-long/2addr v3, v5

    .line 581
    iput-wide v3, v2, Lcom/google/android/gms/internal/ads/zzadr;->zza:J

    .line 582
    .line 583
    const/4 v0, 0x2

    .line 584
    iput v0, v1, Lcom/google/android/gms/internal/ads/zzajk;->zzd:I

    .line 585
    .line 586
    goto :goto_a

    .line 587
    :cond_13
    const-wide/16 v3, 0x0

    .line 588
    .line 589
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacv;->zzd()J

    .line 590
    .line 591
    .line 592
    move-result-wide v5

    .line 593
    const-wide/16 v8, -0x1

    .line 594
    .line 595
    cmp-long v0, v5, v8

    .line 596
    .line 597
    if-eqz v0, :cond_14

    .line 598
    .line 599
    const-wide/16 v8, 0x8

    .line 600
    .line 601
    cmp-long v0, v5, v8

    .line 602
    .line 603
    if-gez v0, :cond_15

    .line 604
    .line 605
    :cond_14
    move-wide v9, v3

    .line 606
    goto :goto_9

    .line 607
    :cond_15
    const-wide/16 v3, -0x8

    .line 608
    .line 609
    add-long v9, v5, v3

    .line 610
    .line 611
    :goto_9
    iput-wide v9, v2, Lcom/google/android/gms/internal/ads/zzadr;->zza:J

    .line 612
    .line 613
    iput v7, v1, Lcom/google/android/gms/internal/ads/zzajk;->zzd:I

    .line 614
    .line 615
    :goto_a
    return v7

    .line 616
    nop

    .line 617
    :sswitch_data_0
    .sparse-switch
        -0x6604662e -> :sswitch_4
        -0x4f6659e5 -> :sswitch_3
        -0x4a96a712 -> :sswitch_2
        -0x3182f331 -> :sswitch_1
        0x68f2d704 -> :sswitch_0
    .end sparse-switch

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
    .line 638
    .line 639
    :array_0
    .array-data 8
        -0x42ce659636dec8e4L    # -6.253904651429812E-14
        0xda8418a88661574L
        -0x5d81ce1d33036705L
        -0x75b1714a981a61d3L
    .end array-data

    .line 640
    .line 641
    .line 642
    .line 643
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
    :array_1
    .array-data 8
        0x2e6dca34efd7edb9L    # 4.7920335221609884E-85
        0x77529d464e3fe60fL    # 6.002112691826607E266
        -0x529bc4ef98b1be15L    # -4.965724533871026E-90
        -0x1e9251433d5e7fa2L    # -2.0865517737898034E161
        0x60ae303c724fd951L    # 5.180935276215035E157
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
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    :array_2
    .array-data 8
        -0x23e2dc19afffbbL
        0x3091e366edbfdcf6L    # 9.887122029302547E-75
        0x3144fed69eb10ff7L    # 2.3766021132397506E-71
        0x4c4b0154431b50efL    # 3.390286749865649E59
    .end array-data

    .line 684
    .line 685
    .line 686
    .line 687
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
    .line 700
    .line 701
    .line 702
    .line 703
    :array_3
    .array-data 8
        -0x545f7e081c800906L    # -1.509446406294786E-98
        -0x5f335353b3c726aL    # -8.166203222683253E279
        0x2cd7ff96328f5fcbL    # 1.1504913851382947E-92
        -0x1226f283dde0cbf5L    # -1.4149820991644105E221
        -0x5c127de63c6243cL    # -6.99858709567438E280
    .end array-data

    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
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
    .line 724
    .line 725
    .line 726
    .line 727
    :array_4
    .array-data 8
        -0x18018f210d892272L    # -8.680300455005132E192
        0x6985f1f0245a9ab4L    # 2.099733198284845E200
        -0x35576a8f16ade7d1L    # -4.598937206957386E51
    .end array-data

    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    :array_5
    .array-data 8
        0x48efc32b4e264fd0L    # 2.2135147904113435E43
        0x5bc57269908c0287L    # 1.2178479971166321E134
        0x218e66811d0008e0L
    .end array-data
.end method

.method public final zzb()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajk;->zzc:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzajk;->zzd:I

    .line 8
    .line 9
    return-void
.end method
