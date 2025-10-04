.class abstract Lcom/google/android/gms/internal/measurement/zzjw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Ljava/util/logging/Logger;

.field private static final zzb:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lcom/google/android/gms/internal/measurement/zzjj;

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
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzjw;->zza:Ljava/util/logging/Logger;

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
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzjw;->zzb:Ljava/lang/String;

    .line 30
    .line 31
    return-void

    .line 32
    nop

    .line 33
    :array_0
    .array-data 8
        -0x1694f9e15471f95eL    # -6.464207011206077E199
        -0x7dd017fbf8de0b9L    # -5.017251322565179E270
        -0x4e2432e73acf57c6L    # -1.611253605534746E-68
        -0x5bfab293939839e0L    # -3.66354236308177E-135
        0x649f4078e42a9980L    # 4.946900022504912E176
        0x271e28bd17813b38L    # 2.9198505892149E-120
        0x3fe3010b810da2a9L    # 0.593877555901675
        0x4880b67991aa0e2fL    # 1.8198619482593032E41
        -0x43bde4630f7bfd3bL    # -1.9632584899090277E-18
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzjo;
    .locals 13

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    const-class v3, Lcom/google/android/gms/internal/measurement/zzjw;

    .line 5
    .line 6
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 7
    .line 8
    .line 9
    move-result-object v4

    .line 10
    const-class v5, Lcom/google/android/gms/internal/measurement/zzjo;

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
    sget-object v5, Lcom/google/android/gms/internal/measurement/zzjw;->zzb:Ljava/lang/String;

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
    check-cast v5, Lcom/google/android/gms/internal/measurement/zzjw;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_4

    .line 86
    .line 87
    :try_start_2
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzjw;->zza()Lcom/google/android/gms/internal/measurement/zzjo;

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
    check-cast v5, Lcom/google/android/gms/internal/measurement/zzjo;

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
    check-cast v5, Lcom/google/android/gms/internal/measurement/zzjw;

    .line 154
    .line 155
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzjw;->zza()Lcom/google/android/gms/internal/measurement/zzjo;

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
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/util/ServiceConfigurationError; {:try_start_3 .. :try_end_3} :catch_5

    .line 164
    .line 165
    .line 166
    goto :goto_5

    .line 167
    :catch_5
    move-exception v5

    .line 168
    move-object v12, v5

    .line 169
    sget-object v7, Lcom/google/android/gms/internal/measurement/zzjw;->zza:Ljava/util/logging/Logger;

    .line 170
    .line 171
    sget-object v8, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 172
    .line 173
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 174
    .line 175
    const/16 v9, 0x8

    .line 176
    .line 177
    new-array v9, v9, [J

    .line 178
    .line 179
    fill-array-data v9, :array_1

    .line 180
    .line 181
    .line 182
    invoke-direct {v5, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v9

    .line 189
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 190
    .line 191
    new-array v10, v0, [J

    .line 192
    .line 193
    fill-array-data v10, :array_2

    .line 194
    .line 195
    .line 196
    invoke-direct {v5, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v10

    .line 203
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 204
    .line 205
    const/4 v11, 0x3

    .line 206
    new-array v11, v11, [J

    .line 207
    .line 208
    fill-array-data v11, :array_3

    .line 209
    .line 210
    .line 211
    invoke-direct {v5, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v5

    .line 218
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v11

    .line 222
    invoke-virtual {v5, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v11

    .line 226
    invoke-virtual/range {v7 .. v12}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 227
    .line 228
    .line 229
    goto :goto_5

    .line 230
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 231
    .line 232
    .line 233
    move-result v3

    .line 234
    if-ne v3, v1, :cond_2

    .line 235
    .line 236
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object p0

    .line 240
    check-cast p0, Lcom/google/android/gms/internal/measurement/zzjo;

    .line 241
    .line 242
    return-object p0

    .line 243
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 244
    .line 245
    .line 246
    move-result v3

    .line 247
    if-nez v3, :cond_3

    .line 248
    .line 249
    return-object v6

    .line 250
    :cond_3
    :try_start_4
    new-array v3, v1, [Ljava/lang/Class;

    .line 251
    .line 252
    const-class v5, Ljava/util/Collection;

    .line 253
    .line 254
    aput-object v5, v3, v2

    .line 255
    .line 256
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 257
    .line 258
    new-array v0, v0, [J

    .line 259
    .line 260
    fill-array-data v0, :array_4

    .line 261
    .line 262
    .line 263
    invoke-direct {v5, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    invoke-virtual {p0, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 271
    .line 272
    .line 273
    move-result-object p0

    .line 274
    new-array v0, v1, [Ljava/lang/Object;

    .line 275
    .line 276
    aput-object v4, v0, v2

    .line 277
    .line 278
    invoke-virtual {p0, v6, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object p0

    .line 282
    check-cast p0, Lcom/google/android/gms/internal/measurement/zzjo;
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_6

    .line 283
    .line 284
    return-object p0

    .line 285
    :catch_6
    move-exception p0

    .line 286
    goto :goto_6

    .line 287
    :catch_7
    move-exception p0

    .line 288
    goto :goto_7

    .line 289
    :catch_8
    move-exception p0

    .line 290
    goto :goto_8

    .line 291
    :goto_6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 292
    .line 293
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 294
    .line 295
    .line 296
    throw v0

    .line 297
    :goto_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 298
    .line 299
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 300
    .line 301
    .line 302
    throw v0

    .line 303
    :goto_8
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 304
    .line 305
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 306
    .line 307
    .line 308
    throw v0

    .line 309
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 310
    .line 311
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object p0

    .line 315
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    throw v0

    .line 319
    :array_0
    .array-data 8
        0x11e5da6b01cf6963L
        -0x694f67020bcd7641L
        -0x44bfa00958481528L    # -2.708992916393577E-23
        -0x51fc89ea3e6a0d6L    # -7.535611226596248E283
        -0x7aeb63478676829eL
    .end array-data

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
    :array_1
    .array-data 8
        0x7d946ccb7f00e4a9L    # 8.348671716016577E296
        -0x6fd1103033d59f0bL    # -9.96341512603718E-231
        -0x22d7c17fff1cc5b5L    # -5.774239426796623E140
        0x2825afd89118becaL
        -0x7c65a602ab6942a0L
        0x393f869e40b8743aL    # 6.0716582863506985E-33
        0x76d6c2201fe4ac49L    # 2.866527281988968E264
        0x4d81ae886f742052L    # 2.32763456223583E65
    .end array-data

    .line 344
    .line 345
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
    :array_2
    .array-data 8
        -0xc0c8aabe1056f45L    # -3.482905056050777E250
        0x4854199c35652925L    # 2.7358756478423242E40
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
    :array_3
    .array-data 8
        0x2cff06a69aa1a4e9L    # 5.9495872687739326E-92
        -0x4d82d2c55bbecc5eL    # -1.7315569001868185E-65
        0x3fc2b763ddab532aL    # 0.14622162173932313
    .end array-data

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
    :array_4
    .array-data 8
        -0x2e780ab9fefe505L    # -3.911428872407474E294
        0xaf3e4876d18936cL
    .end array-data
.end method


# virtual methods
.method public abstract zza()Lcom/google/android/gms/internal/measurement/zzjo;
.end method
