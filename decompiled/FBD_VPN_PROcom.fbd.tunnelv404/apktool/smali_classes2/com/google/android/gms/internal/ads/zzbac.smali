.class public final Lcom/google/android/gms/internal/ads/zzbac;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzazr;

.field private final zzb:I

.field private zzc:Ljava/lang/String;

.field private final zzd:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbac;->zzb:I

    const/16 p1, 0x40

    if-gt p2, p1, :cond_0

    if-gez p2, :cond_1

    :cond_0
    const/16 p2, 0x40

    :cond_1
    if-gtz p3, :cond_2

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbac;->zzd:I

    goto :goto_0

    :cond_2
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzbac;->zzd:I

    :goto_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbaa;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzbaa;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbac;->zza:Lcom/google/android/gms/internal/ads/zzazr;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x1

    .line 7
    new-instance v4, Lcom/google/android/gms/internal/ads/zzbab;

    .line 8
    .line 9
    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/ads/zzbab;-><init>(Lcom/google/android/gms/internal/ads/zzbac;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 13
    .line 14
    .line 15
    new-instance v4, Ljava/util/HashSet;

    .line 16
    .line 17
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 18
    .line 19
    .line 20
    const/4 v6, 0x0

    .line 21
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result v7

    .line 25
    if-ge v6, v7, :cond_f

    .line 26
    .line 27
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    check-cast v7, Lcom/google/android/gms/internal/ads/zzazq;

    .line 32
    .line 33
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzazq;->zze()I

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    move-object/from16 v8, p1

    .line 38
    .line 39
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    check-cast v7, Ljava/lang/CharSequence;

    .line 44
    .line 45
    sget-object v9, Ljava/text/Normalizer$Form;->NFKC:Ljava/text/Normalizer$Form;

    .line 46
    .line 47
    invoke-static {v7, v9}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 52
    .line 53
    invoke-virtual {v7, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 58
    .line 59
    new-array v10, v2, [J

    .line 60
    .line 61
    fill-array-data v10, :array_0

    .line 62
    .line 63
    .line 64
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v9

    .line 71
    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    array-length v9, v7

    .line 76
    if-nez v9, :cond_1

    .line 77
    .line 78
    :cond_0
    const/4 v15, 0x2

    .line 79
    goto/16 :goto_a

    .line 80
    .line 81
    :cond_1
    const/4 v9, 0x0

    .line 82
    :goto_1
    array-length v10, v7

    .line 83
    if-ge v9, v10, :cond_0

    .line 84
    .line 85
    aget-object v10, v7, v9

    .line 86
    .line 87
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 88
    .line 89
    new-array v12, v2, [J

    .line 90
    .line 91
    fill-array-data v12, :array_1

    .line 92
    .line 93
    .line 94
    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v11

    .line 101
    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 102
    .line 103
    .line 104
    move-result v11

    .line 105
    if-eqz v11, :cond_8

    .line 106
    .line 107
    new-instance v11, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    const/4 v12, 0x1

    .line 113
    const/4 v13, 0x0

    .line 114
    :goto_2
    add-int/lit8 v14, v12, 0x2

    .line 115
    .line 116
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    .line 117
    .line 118
    .line 119
    move-result v15

    .line 120
    if-gt v14, v15, :cond_6

    .line 121
    .line 122
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 123
    .line 124
    .line 125
    move-result v15

    .line 126
    const/16 v2, 0x27

    .line 127
    .line 128
    if-ne v15, v2, :cond_5

    .line 129
    .line 130
    add-int/lit8 v2, v12, -0x1

    .line 131
    .line 132
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    const/16 v13, 0x20

    .line 137
    .line 138
    if-eq v2, v13, :cond_4

    .line 139
    .line 140
    add-int/lit8 v2, v12, 0x1

    .line 141
    .line 142
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 143
    .line 144
    .line 145
    move-result v15

    .line 146
    const/16 v5, 0x73

    .line 147
    .line 148
    if-eq v15, v5, :cond_2

    .line 149
    .line 150
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    const/16 v5, 0x53

    .line 155
    .line 156
    if-ne v2, v5, :cond_4

    .line 157
    .line 158
    :cond_2
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    if-eq v14, v2, :cond_3

    .line 163
    .line 164
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    if-ne v2, v13, :cond_4

    .line 169
    .line 170
    :cond_3
    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    move v12, v14

    .line 174
    goto :goto_3

    .line 175
    :cond_4
    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 176
    .line 177
    .line 178
    :goto_3
    const/4 v13, 0x1

    .line 179
    :cond_5
    add-int/2addr v12, v3

    .line 180
    const/4 v2, 0x2

    .line 181
    goto :goto_2

    .line 182
    :cond_6
    if-eqz v13, :cond_7

    .line 183
    .line 184
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    goto :goto_4

    .line 189
    :cond_7
    const/4 v2, 0x0

    .line 190
    :goto_4
    if-eqz v2, :cond_8

    .line 191
    .line 192
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzbac;->zzc:Ljava/lang/String;

    .line 193
    .line 194
    move-object v10, v2

    .line 195
    :cond_8
    invoke-static {v10, v3}, Lcom/google/android/gms/internal/ads/zzazv;->zzb(Ljava/lang/String;Z)[Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    array-length v5, v2

    .line 200
    iget v10, v1, Lcom/google/android/gms/internal/ads/zzbac;->zzd:I

    .line 201
    .line 202
    if-ge v5, v10, :cond_9

    .line 203
    .line 204
    const/4 v15, 0x2

    .line 205
    goto :goto_9

    .line 206
    :cond_9
    const/4 v5, 0x0

    .line 207
    :goto_5
    array-length v10, v2

    .line 208
    if-ge v5, v10, :cond_a

    .line 209
    .line 210
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 211
    .line 212
    new-array v11, v3, [J

    .line 213
    .line 214
    const-wide v12, -0x41812fb4f2257ddL    # -7.286404649732287E288

    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    const/4 v14, 0x0

    .line 220
    aput-wide v12, v11, v14

    .line 221
    .line 222
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v10

    .line 229
    const/4 v11, 0x0

    .line 230
    :goto_6
    iget v12, v1, Lcom/google/android/gms/internal/ads/zzbac;->zzd:I

    .line 231
    .line 232
    if-ge v11, v12, :cond_d

    .line 233
    .line 234
    add-int v12, v5, v11

    .line 235
    .line 236
    array-length v13, v2

    .line 237
    if-lt v12, v13, :cond_b

    .line 238
    .line 239
    :cond_a
    const/4 v15, 0x2

    .line 240
    goto :goto_8

    .line 241
    :cond_b
    if-lez v11, :cond_c

    .line 242
    .line 243
    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    .line 244
    .line 245
    const/4 v15, 0x2

    .line 246
    new-array v14, v15, [J

    .line 247
    .line 248
    fill-array-data v14, :array_2

    .line 249
    .line 250
    .line 251
    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v13

    .line 258
    invoke-virtual {v10, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v10

    .line 262
    goto :goto_7

    .line 263
    :cond_c
    const/4 v15, 0x2

    .line 264
    :goto_7
    aget-object v12, v2, v12

    .line 265
    .line 266
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v12

    .line 270
    invoke-virtual {v10, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v10

    .line 274
    add-int/2addr v11, v3

    .line 275
    const/4 v14, 0x0

    .line 276
    goto :goto_6

    .line 277
    :cond_d
    const/4 v15, 0x2

    .line 278
    invoke-virtual {v4, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    .line 282
    .line 283
    .line 284
    move-result v10

    .line 285
    iget v11, v1, Lcom/google/android/gms/internal/ads/zzbac;->zzb:I

    .line 286
    .line 287
    if-ge v10, v11, :cond_f

    .line 288
    .line 289
    add-int/2addr v5, v3

    .line 290
    goto :goto_5

    .line 291
    :goto_8
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    .line 292
    .line 293
    .line 294
    move-result v2

    .line 295
    iget v5, v1, Lcom/google/android/gms/internal/ads/zzbac;->zzb:I

    .line 296
    .line 297
    if-lt v2, v5, :cond_e

    .line 298
    .line 299
    goto :goto_b

    .line 300
    :cond_e
    :goto_9
    add-int/2addr v9, v3

    .line 301
    const/4 v2, 0x2

    .line 302
    goto/16 :goto_1

    .line 303
    .line 304
    :goto_a
    add-int/2addr v6, v3

    .line 305
    const/4 v2, 0x2

    .line 306
    goto/16 :goto_0

    .line 307
    .line 308
    :cond_f
    :goto_b
    new-instance v2, Lcom/google/android/gms/internal/ads/zzazt;

    .line 309
    .line 310
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzazt;-><init>()V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 318
    .line 319
    .line 320
    move-result v3

    .line 321
    if-eqz v3, :cond_10

    .line 322
    .line 323
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object v3

    .line 327
    check-cast v3, Ljava/lang/String;

    .line 328
    .line 329
    :try_start_0
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzbac;->zza:Lcom/google/android/gms/internal/ads/zzazr;

    .line 330
    .line 331
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzazr;->zzb(Ljava/lang/String;)[B

    .line 332
    .line 333
    .line 334
    move-result-object v3

    .line 335
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzazt;->zzb:Landroid/util/Base64OutputStream;

    .line 336
    .line 337
    invoke-virtual {v4, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    .line 339
    .line 340
    goto :goto_c

    .line 341
    :catch_0
    move-exception v0

    .line 342
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 343
    .line 344
    const/4 v4, 0x6

    .line 345
    new-array v4, v4, [J

    .line 346
    .line 347
    fill-array-data v4, :array_3

    .line 348
    .line 349
    .line 350
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v3

    .line 357
    invoke-static {v3, v0}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 358
    .line 359
    .line 360
    :cond_10
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzazt;->toString()Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v0

    .line 364
    return-object v0

    .line 365
    :array_0
    .array-data 8
        -0x5335bd66a762ace8L    # -6.294606563941368E-93
        0x14e7254cf38e79cdL    # 5.632269491016182E-208
    .end array-data

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
    :array_1
    .array-data 8
        0x8a0eef8890b9498L
        0x5cafceaff4d80c5eL    # 2.9592102355547462E138
    .end array-data

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
    :array_2
    .array-data 8
        0x1affc00c719bbb6cL
        -0x728571b2c5a435fbL    # -9.723082882877406E-244
    .end array-data

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
    :array_3
    .array-data 8
        0x41fdd51fe960dbddL    # 8.008105622053678E9
        0x393e04104b51cb59L    # 5.7808469830994065E-33
        -0x55a8df0714700ab0L
        -0x15eca31d70b4cdacL    # -9.48562546656034E202
        0x65ec0a8508dfb64fL    # 9.308555974469262E182
        -0x6755fb37880743c6L    # -7.29958331391179E-190
    .end array-data
.end method
