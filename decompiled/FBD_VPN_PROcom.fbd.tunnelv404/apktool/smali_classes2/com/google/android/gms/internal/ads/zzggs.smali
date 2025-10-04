.class public final Lcom/google/android/gms/internal/ads/zzggs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/lang/Class;

.field private zzb:Ljava/util/concurrent/ConcurrentMap;

.field private final zzc:Ljava/util/List;

.field private zzd:Lcom/google/android/gms/internal/ads/zzggt;

.field private zze:Lcom/google/android/gms/internal/ads/zzgrw;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzggr;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p2, Lj$/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {p2}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzggs;->zzb:Ljava/util/concurrent/ConcurrentMap;

    .line 10
    .line 11
    new-instance p2, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzggs;->zzc:Ljava/util/List;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzggs;->zza:Ljava/lang/Class;

    .line 19
    .line 20
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgrw;->zza:Lcom/google/android/gms/internal/ads/zzgrw;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzggs;->zze:Lcom/google/android/gms/internal/ads/zzgrw;

    .line 23
    .line 24
    return-void
.end method

.method private final zze(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgvf;Z)Lcom/google/android/gms/internal/ads/zzggs;
    .locals 13
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    move-object v0, p0

    .line 2
    const/4 v1, 0x5

    .line 3
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzggs;->zzb:Ljava/util/concurrent/ConcurrentMap;

    .line 4
    .line 5
    if-eqz v2, :cond_b

    .line 6
    .line 7
    if-nez p1, :cond_1

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v1, Ljava/security/GeneralSecurityException;

    .line 13
    .line 14
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 15
    .line 16
    const/16 v3, 0x9

    .line 17
    .line 18
    new-array v3, v3, [J

    .line 19
    .line 20
    fill-array-data v3, :array_0

    .line 21
    .line 22
    .line 23
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw v1

    .line 34
    :cond_1
    :goto_0
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzgvf;->zzk()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    const/4 v3, 0x3

    .line 39
    if-ne v2, v3, :cond_a

    .line 40
    .line 41
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzgvf;->zza()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzgvf;->zzf()Lcom/google/android/gms/internal/ads/zzgvz;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    sget-object v5, Lcom/google/android/gms/internal/ads/zzgvz;->zzd:Lcom/google/android/gms/internal/ads/zzgvz;

    .line 54
    .line 55
    const/4 v12, 0x0

    .line 56
    if-ne v4, v5, :cond_2

    .line 57
    .line 58
    move-object v2, v12

    .line 59
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgoe;->zzd()Lcom/google/android/gms/internal/ads/zzgoe;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzgvf;->zzc()Lcom/google/android/gms/internal/ads/zzgut;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzgut;->zzg()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzgvf;->zzc()Lcom/google/android/gms/internal/ads/zzgut;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzgut;->zzf()Lcom/google/android/gms/internal/ads/zzgyl;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzgvf;->zzc()Lcom/google/android/gms/internal/ads/zzgut;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzgut;->zzc()Lcom/google/android/gms/internal/ads/zzgus;

    .line 84
    .line 85
    .line 86
    move-result-object v7

    .line 87
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzgvf;->zzf()Lcom/google/android/gms/internal/ads/zzgvz;

    .line 88
    .line 89
    .line 90
    move-result-object v8

    .line 91
    invoke-static {v5, v6, v7, v8, v2}, Lcom/google/android/gms/internal/ads/zzgox;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzgyl;Lcom/google/android/gms/internal/ads/zzgus;Lcom/google/android/gms/internal/ads/zzgvz;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzgox;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzghc;->zza()Lcom/google/android/gms/internal/ads/zzghc;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    invoke-virtual {v4, v2, v5}, Lcom/google/android/gms/internal/ads/zzgoe;->zzb(Lcom/google/android/gms/internal/ads/zzgox;Lcom/google/android/gms/internal/ads/zzghc;)Lcom/google/android/gms/internal/ads/zzggc;

    .line 100
    .line 101
    .line 102
    move-result-object v11

    .line 103
    new-instance v2, Lcom/google/android/gms/internal/ads/zzggt;

    .line 104
    .line 105
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzgvf;->zzf()Lcom/google/android/gms/internal/ads/zzgvz;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    const/4 v5, 0x1

    .line 114
    if-eq v4, v5, :cond_6

    .line 115
    .line 116
    const/4 v5, 0x2

    .line 117
    if-eq v4, v5, :cond_5

    .line 118
    .line 119
    if-eq v4, v3, :cond_4

    .line 120
    .line 121
    const/4 v3, 0x4

    .line 122
    if-ne v4, v3, :cond_3

    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_3
    new-instance v2, Ljava/security/GeneralSecurityException;

    .line 126
    .line 127
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 128
    .line 129
    new-array v1, v1, [J

    .line 130
    .line 131
    fill-array-data v1, :array_1

    .line 132
    .line 133
    .line 134
    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-direct {v2, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    throw v2

    .line 145
    :cond_4
    sget-object v1, Lcom/google/android/gms/internal/ads/zzgfx;->zza:[B

    .line 146
    .line 147
    :goto_1
    move-object v6, v1

    .line 148
    goto :goto_3

    .line 149
    :cond_5
    :goto_2
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    const/4 v3, 0x0

    .line 154
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzgvf;->zza()I

    .line 159
    .line 160
    .line 161
    move-result v3

    .line 162
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    goto :goto_1

    .line 171
    :cond_6
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzgvf;->zza()I

    .line 180
    .line 181
    .line 182
    move-result v3

    .line 183
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    goto :goto_1

    .line 192
    :goto_3
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzgvf;->zzk()I

    .line 193
    .line 194
    .line 195
    move-result v7

    .line 196
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzgvf;->zzf()Lcom/google/android/gms/internal/ads/zzgvz;

    .line 197
    .line 198
    .line 199
    move-result-object v8

    .line 200
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzgvf;->zza()I

    .line 201
    .line 202
    .line 203
    move-result v9

    .line 204
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzgvf;->zzc()Lcom/google/android/gms/internal/ads/zzgut;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgut;->zzg()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v10

    .line 212
    move-object v3, v2

    .line 213
    move-object v4, p1

    .line 214
    move-object v5, p2

    .line 215
    invoke-direct/range {v3 .. v11}, Lcom/google/android/gms/internal/ads/zzggt;-><init>(Ljava/lang/Object;Ljava/lang/Object;[BILcom/google/android/gms/internal/ads/zzgvz;ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzggc;)V

    .line 216
    .line 217
    .line 218
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzggs;->zzb:Ljava/util/concurrent/ConcurrentMap;

    .line 219
    .line 220
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzggs;->zzc:Ljava/util/List;

    .line 221
    .line 222
    new-instance v4, Ljava/util/ArrayList;

    .line 223
    .line 224
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    new-instance v5, Lcom/google/android/gms/internal/ads/zzggv;

    .line 231
    .line 232
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzggt;->zzg()[B

    .line 233
    .line 234
    .line 235
    move-result-object v6

    .line 236
    invoke-direct {v5, v6, v12}, Lcom/google/android/gms/internal/ads/zzggv;-><init>([BLcom/google/android/gms/internal/ads/zzggu;)V

    .line 237
    .line 238
    .line 239
    invoke-static {v4}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 240
    .line 241
    .line 242
    move-result-object v4

    .line 243
    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v4

    .line 247
    check-cast v4, Ljava/util/List;

    .line 248
    .line 249
    if-eqz v4, :cond_7

    .line 250
    .line 251
    new-instance v6, Ljava/util/ArrayList;

    .line 252
    .line 253
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 257
    .line 258
    .line 259
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    invoke-static {v6}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 263
    .line 264
    .line 265
    move-result-object v4

    .line 266
    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    :cond_7
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    if-eqz p4, :cond_9

    .line 273
    .line 274
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzggs;->zzd:Lcom/google/android/gms/internal/ads/zzggt;

    .line 275
    .line 276
    if-nez v1, :cond_8

    .line 277
    .line 278
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzggs;->zzd:Lcom/google/android/gms/internal/ads/zzggt;

    .line 279
    .line 280
    goto :goto_4

    .line 281
    :cond_8
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 282
    .line 283
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 284
    .line 285
    const/4 v3, 0x6

    .line 286
    new-array v3, v3, [J

    .line 287
    .line 288
    fill-array-data v3, :array_2

    .line 289
    .line 290
    .line 291
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v2

    .line 298
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    throw v1

    .line 302
    :cond_9
    :goto_4
    return-object v0

    .line 303
    :cond_a
    new-instance v2, Ljava/security/GeneralSecurityException;

    .line 304
    .line 305
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 306
    .line 307
    new-array v1, v1, [J

    .line 308
    .line 309
    fill-array-data v1, :array_3

    .line 310
    .line 311
    .line 312
    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    invoke-direct {v2, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    throw v2

    .line 323
    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 324
    .line 325
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 326
    .line 327
    const/4 v3, 0x7

    .line 328
    new-array v3, v3, [J

    .line 329
    .line 330
    fill-array-data v3, :array_4

    .line 331
    .line 332
    .line 333
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v2

    .line 340
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    throw v1

    .line 344
    nop

    .line 345
    :array_0
    .array-data 8
        -0x2abcd54e7bbb52fbL    # -5.366084374516721E102
        0x41bce02224c5c947L    # 4.844508527726025E8
        0x21f26e372c2755edL    # 3.689945127726527E-145
        0x3a4f7b1b861f2886L    # 7.946893562226395E-28
        0xe202e109c2a946L
        -0x152283cbc9453429L    # -5.916443264898137E206
        0x737b978c26c5926dL    # 1.9292093011840487E248
        -0x75cd8765807822cfL
        -0x16b26dc4660348efL    # -1.7683833700126685E199
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
    :array_1
    .array-data 8
        0x138217fef50c5bc0L    # 1.04973893061265E-214
        -0x34f8f206a5d58e2fL    # -2.760238307633954E53
        -0x5d8106a76b424241L
        -0x35ec81386bf6669dL    # -7.123078672647553E48
        -0x7b97c96a14b2c5eeL
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
    :array_2
    .array-data 8
        0x4dce7943d11ca308L    # 6.418508480762167E66
        -0x6c5ca85d06ab1ad7L
        0x33dba127652ef8baL    # 6.877553860272148E-59
        0x589217441c0c435aL    # 4.562029342913809E118
        -0xc8ab297573bd6ccL
        -0x715cd8d3d938354bL    # -3.676636063177258E-238
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
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    :array_3
    .array-data 8
        0x17f9a85212e22951L
        -0x2ef1f911a26c514aL    # -2.848274603750461E82
        -0x6ab0c1186301b24bL    # -4.866128108621199E-206
        0x46df829d9174f83bL    # 2.556412495332862E33
        0x5f94bed71de69992L    # 2.7163210559461515E152
    .end array-data

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
    .line 460
    .line 461
    :array_4
    .array-data 8
        0x51f507f1c0672fe5L    # 6.537013244280588E86
        0x6ec1388643d5a003L    # 3.187132069849565E225
        0x51c5599f73275f42L    # 8.29523085078045E85
        0x7ae3f30a9b5568f0L    # 9.270333206452831E283
        -0xfb53cd4ae590ceeL    # -8.309815749357625E232
        0x2a98b0c4a1386c81L    # 1.722468906499529E-103
        -0x216d9704f31b33baL    # -3.6781851400424315E147
    .end array-data
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgvf;)Lcom/google/android/gms/internal/ads/zzggs;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzggs;->zze(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgvf;Z)Lcom/google/android/gms/internal/ads/zzggs;

    .line 3
    .line 4
    .line 5
    return-object p0
.end method

.method public final zzb(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgvf;)Lcom/google/android/gms/internal/ads/zzggs;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzggs;->zze(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgvf;Z)Lcom/google/android/gms/internal/ads/zzggs;

    .line 3
    .line 4
    .line 5
    return-object p0
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzgrw;)Lcom/google/android/gms/internal/ads/zzggs;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzggs;->zzb:Ljava/util/concurrent/ConcurrentMap;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzggs;->zze:Lcom/google/android/gms/internal/ads/zzgrw;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 11
    .line 12
    const/4 v1, 0x7

    .line 13
    new-array v1, v1, [J

    .line 14
    .line 15
    fill-array-data v1, :array_0

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p1

    .line 29
    :array_0
    .array-data 8
        -0x7845c01c29179be7L
        -0x3222c39ed75f1c14L    # -1.2315580619069433E67
        0x1cec5c88c536740bL
        0x5494d01e0d782399L    # 2.8451974193415843E99
        -0x3f8b8472d1379c27L    # -327.7219684436546
        -0xc120c9db280bb22L
        -0x6495d549790b3589L
    .end array-data
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzggx;
    .locals 8

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzggs;->zzb:Ljava/util/concurrent/ConcurrentMap;

    .line 2
    .line 3
    if-eqz v1, :cond_0

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzggs;->zzc:Ljava/util/List;

    .line 6
    .line 7
    new-instance v7, Lcom/google/android/gms/internal/ads/zzggx;

    .line 8
    .line 9
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzggs;->zzd:Lcom/google/android/gms/internal/ads/zzggt;

    .line 10
    .line 11
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzggs;->zze:Lcom/google/android/gms/internal/ads/zzgrw;

    .line 12
    .line 13
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzggs;->zza:Ljava/lang/Class;

    .line 14
    .line 15
    const/4 v6, 0x0

    .line 16
    move-object v0, v7

    .line 17
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzggx;-><init>(Ljava/util/concurrent/ConcurrentMap;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzggt;Lcom/google/android/gms/internal/ads/zzgrw;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzggw;)V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzggs;->zzb:Ljava/util/concurrent/ConcurrentMap;

    .line 22
    .line 23
    return-object v7

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    const/4 v2, 0x5

    .line 29
    new-array v2, v2, [J

    .line 30
    .line 31
    fill-array-data v2, :array_0

    .line 32
    .line 33
    .line 34
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw v0

    .line 45
    :array_0
    .array-data 8
        -0x6329af797c09da13L    # -9.238695149563549E-170
        0x482aca6dbf2d6aa9L    # 4.5582077164945223E39
        0x2457aac85917c576L
        -0x722e67b785962be5L
        -0x712bd2d99e5b3373L
    .end array-data
.end method
