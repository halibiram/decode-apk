.class public abstract Lcom/google/android/gms/internal/ads/zzgzn;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Ljava/util/logging/Logger;

.field private static final zzb:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzgza;

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
    sput-object v0, Lcom/google/android/gms/internal/ads/zzgzn;->zza:Ljava/util/logging/Logger;

    .line 12
    .line 13
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 14
    .line 15
    const/16 v1, 0x9

    .line 16
    .line 17
    new-array v1, v1, [J

    .line 18
    .line 19
    fill-array-data v1, :array_0

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lcom/google/android/gms/internal/ads/zzgzn;->zzb:Ljava/lang/String;

    .line 30
    .line 31
    return-void

    .line 32
    nop

    .line 33
    :array_0
    .array-data 8
        -0x6ed750d5470166f1L    # -5.209944833034255E-226
        -0x55c1ee32aefc47e2L
        -0x30ce6c3112481190L    # -3.105653559790229E73
        0x3bf34eadcc625e12L    # 6.541581056123639E-20
        -0x54744034cc0c89e0L    # -6.343395859076635E-99
        0x57705e4d33ec9948L    # 1.5745762688236555E113
        0x1cfca369231c0735L
        -0x5110ad24e1a1e225L    # -1.2899225847579013E-82
        0x771933993c26bb75L    # 5.0788286980573414E265
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgzf;
    .locals 14

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    const-class v3, Lcom/google/android/gms/internal/ads/zzgzn;

    .line 5
    .line 6
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 7
    .line 8
    .line 9
    move-result-object v4

    .line 10
    const-class v5, Lcom/google/android/gms/internal/ads/zzgzf;

    .line 11
    .line 12
    invoke-virtual {p0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v5

    .line 16
    if-eqz v5, :cond_0

    .line 17
    .line 18
    sget-object v5, Lcom/google/android/gms/internal/ads/zzgzn;->zzb:Ljava/lang/String;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    invoke-virtual {v3}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    if-eqz v5, :cond_4

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    invoke-virtual {v5}, Ljava/lang/Package;->getName()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    new-array v7, v0, [Ljava/lang/Object;

    .line 48
    .line 49
    aput-object v5, v7, v2

    .line 50
    .line 51
    aput-object v6, v7, v1

    .line 52
    .line 53
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 54
    .line 55
    const/4 v6, 0x5

    .line 56
    new-array v6, v6, [J

    .line 57
    .line 58
    fill-array-data v6, :array_0

    .line 59
    .line 60
    .line 61
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    :goto_0
    const/4 v6, 0x0

    .line 73
    :try_start_0
    invoke-static {v5, v1, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    move-result-object v5
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    .line 77
    :try_start_1
    invoke-virtual {v5, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    check-cast v5, Lcom/google/android/gms/internal/ads/zzgzn;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_4

    .line 86
    .line 87
    :try_start_2
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzgzn;->zza()Lcom/google/android/gms/internal/ads/zzgzf;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    invoke-virtual {p0, v5}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    check-cast v5, Lcom/google/android/gms/internal/ads/zzgzf;

    .line 96
    .line 97
    return-object v5

    .line 98
    :catch_0
    move-exception v5

    .line 99
    goto :goto_1

    .line 100
    :catch_1
    move-exception v5

    .line 101
    goto :goto_2

    .line 102
    :catch_2
    move-exception v5

    .line 103
    goto :goto_3

    .line 104
    :catch_3
    move-exception v5

    .line 105
    goto :goto_4

    .line 106
    :goto_1
    new-instance v7, Ljava/lang/IllegalStateException;

    .line 107
    .line 108
    invoke-direct {v7, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 109
    .line 110
    .line 111
    throw v7

    .line 112
    :goto_2
    new-instance v7, Ljava/lang/IllegalStateException;

    .line 113
    .line 114
    invoke-direct {v7, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 115
    .line 116
    .line 117
    throw v7

    .line 118
    :goto_3
    new-instance v7, Ljava/lang/IllegalStateException;

    .line 119
    .line 120
    invoke-direct {v7, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 121
    .line 122
    .line 123
    throw v7

    .line 124
    :goto_4
    new-instance v7, Ljava/lang/IllegalStateException;

    .line 125
    .line 126
    invoke-direct {v7, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 127
    .line 128
    .line 129
    throw v7
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_4

    .line 130
    :catch_4
    invoke-static {v3, v4}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    invoke-virtual {v3}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    new-instance v4, Ljava/util/ArrayList;

    .line 139
    .line 140
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .line 142
    .line 143
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 144
    .line 145
    .line 146
    move-result v5

    .line 147
    if-eqz v5, :cond_1

    .line 148
    .line 149
    :try_start_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v5

    .line 153
    check-cast v5, Lcom/google/android/gms/internal/ads/zzgzn;

    .line 154
    .line 155
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzgzn;->zza()Lcom/google/android/gms/internal/ads/zzgzf;

    .line 156
    .line 157
    .line 158
    move-result-object v5

    .line 159
    invoke-virtual {p0, v5}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v5

    .line 163
    check-cast v5, Lcom/google/android/gms/internal/ads/zzgzf;

    .line 164
    .line 165
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/util/ServiceConfigurationError; {:try_start_3 .. :try_end_3} :catch_5

    .line 166
    .line 167
    .line 168
    goto :goto_5

    .line 169
    :catch_5
    move-exception v5

    .line 170
    move-object v12, v5

    .line 171
    sget-object v7, Lcom/google/android/gms/internal/ads/zzgzn;->zza:Ljava/util/logging/Logger;

    .line 172
    .line 173
    sget-object v8, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 174
    .line 175
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v5

    .line 179
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 180
    .line 181
    const/4 v10, 0x3

    .line 182
    new-array v10, v10, [J

    .line 183
    .line 184
    fill-array-data v10, :array_1

    .line 185
    .line 186
    .line 187
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v9

    .line 194
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 195
    .line 196
    const/16 v11, 0x8

    .line 197
    .line 198
    new-array v11, v11, [J

    .line 199
    .line 200
    fill-array-data v11, :array_2

    .line 201
    .line 202
    .line 203
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v10

    .line 210
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 211
    .line 212
    new-array v13, v0, [J

    .line 213
    .line 214
    fill-array-data v13, :array_3

    .line 215
    .line 216
    .line 217
    invoke-direct {v11, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v11

    .line 224
    invoke-virtual {v9, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v5

    .line 228
    move-object v9, v10

    .line 229
    move-object v10, v11

    .line 230
    move-object v11, v5

    .line 231
    invoke-virtual/range {v7 .. v12}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 232
    .line 233
    .line 234
    goto :goto_5

    .line 235
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 236
    .line 237
    .line 238
    move-result v3

    .line 239
    if-ne v3, v1, :cond_2

    .line 240
    .line 241
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object p0

    .line 245
    check-cast p0, Lcom/google/android/gms/internal/ads/zzgzf;

    .line 246
    .line 247
    return-object p0

    .line 248
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 249
    .line 250
    .line 251
    move-result v3

    .line 252
    if-nez v3, :cond_3

    .line 253
    .line 254
    return-object v6

    .line 255
    :cond_3
    :try_start_4
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 256
    .line 257
    new-array v0, v0, [J

    .line 258
    .line 259
    fill-array-data v0, :array_4

    .line 260
    .line 261
    .line 262
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    new-array v3, v1, [Ljava/lang/Class;

    .line 270
    .line 271
    const-class v5, Ljava/util/Collection;

    .line 272
    .line 273
    aput-object v5, v3, v2

    .line 274
    .line 275
    invoke-virtual {p0, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 276
    .line 277
    .line 278
    move-result-object p0

    .line 279
    new-array v0, v1, [Ljava/lang/Object;

    .line 280
    .line 281
    aput-object v4, v0, v2

    .line 282
    .line 283
    invoke-virtual {p0, v6, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object p0

    .line 287
    check-cast p0, Lcom/google/android/gms/internal/ads/zzgzf;
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_6

    .line 288
    .line 289
    return-object p0

    .line 290
    :catch_6
    move-exception p0

    .line 291
    goto :goto_6

    .line 292
    :catch_7
    move-exception p0

    .line 293
    goto :goto_7

    .line 294
    :catch_8
    move-exception p0

    .line 295
    goto :goto_8

    .line 296
    :goto_6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 297
    .line 298
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 299
    .line 300
    .line 301
    throw v0

    .line 302
    :goto_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 303
    .line 304
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 305
    .line 306
    .line 307
    throw v0

    .line 308
    :goto_8
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 309
    .line 310
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 311
    .line 312
    .line 313
    throw v0

    .line 314
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 315
    .line 316
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object p0

    .line 320
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    throw v0

    .line 324
    nop

    .line 325
    :array_0
    .array-data 8
        -0x1c8ebb066886408aL    # -1.0427870880461392E171
        0x457870e4df8c8d2fL    # 4.727575469261841E26
        0x5717c5ee049c523L
        0x51fa3c36bf5e831bL    # 8.154612334138252E86
        -0x4f49f0d42186d698L    # -4.8769923754023315E-74
    .end array-data

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
    .line 348
    .line 349
    :array_1
    .array-data 8
        -0x36bcff65cceb73ddL    # -8.475332603078074E44
        -0x5f42bcbd315509d3L    # -5.587237679077288E-151
        0x564de701adb0d871L    # 5.4864834196463467E107
    .end array-data

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
    :array_2
    .array-data 8
        0x3662d2ad7652303eL
        0x11bcb335f1ca9690L
        -0x69af51ce4797fafL    # -5.828327455229741E276
        -0x2e3f89265137891dL    # -6.396920787751885E85
        -0x2c4b785d1cda8dddL    # -1.7129472284458352E95
        -0x1374b74dcd9a34cdL    # -7.348090123947668E214
        0x5f45fc8fa1487d2L
        -0x5f5380e37197257fL
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
        0x7c8bd4c7bda68c70L    # 8.679152584689265E291
        0x5f291ac0b9610bd4L    # 2.5680264097420476E150
    .end array-data

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
    :array_4
    .array-data 8
        0x6f54b1be0e3e63ffL    # 1.9609548883117647E228
        0x1833a2528be35d1dL    # 4.303414269733262E-192
    .end array-data
.end method


# virtual methods
.method public abstract zza()Lcom/google/android/gms/internal/ads/zzgzf;
.end method
