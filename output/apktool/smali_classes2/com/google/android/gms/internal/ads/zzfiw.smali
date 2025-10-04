.class final Lcom/google/android/gms/internal/ads/zzfiw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfiv;


# instance fields
.field private final zza:Lj$/util/concurrent/ConcurrentHashMap;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfjc;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfiy;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfjc;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    iget v1, p1, Lcom/google/android/gms/internal/ads/zzfjc;->zzd:I

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfiw;->zza:Lj$/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfiw;->zzb:Lcom/google/android/gms/internal/ads/zzfjc;

    .line 14
    .line 15
    new-instance p1, Lcom/google/android/gms/internal/ads/zzfiy;

    .line 16
    .line 17
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzfiy;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfiw;->zzc:Lcom/google/android/gms/internal/ads/zzfiy;

    .line 21
    .line 22
    return-void
.end method

.method private final zzf()V
    .locals 9

    .line 1
    const/4 v0, 0x2

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzfjc;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3
    .line 4
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbgc;->zzgs:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 5
    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_4

    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfiw;->zzb:Lcom/google/android/gms/internal/ads/zzfjc;

    .line 28
    .line 29
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfjc;->zzb:Lcom/google/android/gms/internal/ads/zzfiz;

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 35
    .line 36
    const/4 v3, 0x3

    .line 37
    new-array v3, v3, [J

    .line 38
    .line 39
    fill-array-data v3, :array_0

    .line 40
    .line 41
    .line 42
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfiw;->zzc:Lcom/google/android/gms/internal/ads/zzfiy;

    .line 53
    .line 54
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfiy;->zzb()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfiw;->zza:Lj$/util/concurrent/ConcurrentHashMap;

    .line 62
    .line 63
    invoke-virtual {v2}, Lj$/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    const/4 v3, 0x0

    .line 72
    const/4 v4, 0x0

    .line 73
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    if-eqz v5, :cond_2

    .line 78
    .line 79
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    check-cast v5, Ljava/util/Map$Entry;

    .line 84
    .line 85
    add-int/lit8 v4, v4, 0x1

    .line 86
    .line 87
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 91
    .line 92
    new-array v7, v0, [J

    .line 93
    .line 94
    fill-array-data v7, :array_1

    .line 95
    .line 96
    .line 97
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 115
    .line 116
    new-array v7, v0, [J

    .line 117
    .line 118
    fill-array-data v7, :array_2

    .line 119
    .line 120
    .line 121
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    check-cast v6, Lcom/google/android/gms/internal/ads/zzfjf;

    .line 136
    .line 137
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    .line 138
    .line 139
    .line 140
    move-result v6

    .line 141
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 145
    .line 146
    new-array v7, v0, [J

    .line 147
    .line 148
    fill-array-data v7, :array_3

    .line 149
    .line 150
    .line 151
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v6

    .line 158
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    const/4 v6, 0x0

    .line 162
    :goto_1
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v7

    .line 166
    check-cast v7, Lcom/google/android/gms/internal/ads/zzfiu;

    .line 167
    .line 168
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzfiu;->zzb()I

    .line 169
    .line 170
    .line 171
    move-result v7

    .line 172
    if-ge v6, v7, :cond_0

    .line 173
    .line 174
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 175
    .line 176
    new-array v8, v0, [J

    .line 177
    .line 178
    fill-array-data v8, :array_4

    .line 179
    .line 180
    .line 181
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v7

    .line 188
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    add-int/lit8 v6, v6, 0x1

    .line 192
    .line 193
    goto :goto_1

    .line 194
    :cond_0
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v6

    .line 198
    check-cast v6, Lcom/google/android/gms/internal/ads/zzfiu;

    .line 199
    .line 200
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzfiu;->zzb()I

    .line 201
    .line 202
    .line 203
    move-result v6

    .line 204
    :goto_2
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzfiw;->zzb:Lcom/google/android/gms/internal/ads/zzfjc;

    .line 205
    .line 206
    iget v7, v7, Lcom/google/android/gms/internal/ads/zzfjc;->zzd:I

    .line 207
    .line 208
    if-ge v6, v7, :cond_1

    .line 209
    .line 210
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 211
    .line 212
    new-array v8, v0, [J

    .line 213
    .line 214
    fill-array-data v8, :array_5

    .line 215
    .line 216
    .line 217
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v7

    .line 224
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    add-int/lit8 v6, v6, 0x1

    .line 228
    .line 229
    goto :goto_2

    .line 230
    :cond_1
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 231
    .line 232
    new-array v7, v0, [J

    .line 233
    .line 234
    fill-array-data v7, :array_6

    .line 235
    .line 236
    .line 237
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v6

    .line 244
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v5

    .line 251
    check-cast v5, Lcom/google/android/gms/internal/ads/zzfiu;

    .line 252
    .line 253
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzfiu;->zzg()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v5

    .line 257
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 261
    .line 262
    new-array v6, v0, [J

    .line 263
    .line 264
    fill-array-data v6, :array_7

    .line 265
    .line 266
    .line 267
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v5

    .line 274
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    goto/16 :goto_0

    .line 278
    .line 279
    :cond_2
    :goto_3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfiw;->zzb:Lcom/google/android/gms/internal/ads/zzfjc;

    .line 280
    .line 281
    iget v2, v2, Lcom/google/android/gms/internal/ads/zzfjc;->zzc:I

    .line 282
    .line 283
    if-ge v4, v2, :cond_3

    .line 284
    .line 285
    add-int/lit8 v4, v4, 0x1

    .line 286
    .line 287
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 291
    .line 292
    new-array v3, v0, [J

    .line 293
    .line 294
    fill-array-data v3, :array_8

    .line 295
    .line 296
    .line 297
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v2

    .line 304
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    goto :goto_3

    .line 308
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcec;->zze(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    :cond_4
    return-void

    .line 316
    nop

    .line 317
    :array_0
    .array-data 8
        0x4be9761f1ffd1800L    # 4.994496129509568E57
        -0x71a4cd2967982a81L    # -1.631585368551417E-239
        0x2fc9697d23733c71L    # 1.7145537720213837E-78
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
    :array_1
    .array-data 8
        -0x319b65c4899dc57eL    # -4.443531901499767E69
        -0x6febf25a6dabeed7L    # -3.22915845095393E-231
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
    :array_2
    .array-data 8
        0x20274697bc5988c3L    # 8.67992475924721E-154
        0xfa5f5182fc20008L
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
    :array_3
    .array-data 8
        -0x202dec066cda7241L    # -3.787292394062144E153
        -0x536668c76681af1fL    # -7.667674220339132E-94
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
    :array_4
    .array-data 8
        0x136c5bf50c52dad8L    # 4.113269877810326E-215
        -0xd916d9a4a4acad8L
    .end array-data

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
    :array_5
    .array-data 8
        -0x292a4815d2f843eeL    # -2.0402650853192574E110
        -0x5fc322692654d37bL
    .end array-data

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
    :array_6
    .array-data 8
        0x196ab29cff63a2fdL
        0x23b21659504de694L    # 9.720659412930073E-137
    .end array-data

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
    :array_7
    .array-data 8
        -0x7281b3a9f6ed9efL
        -0x384ef3627410234L
    .end array-data

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
    .line 416
    .line 417
    :array_8
    .array-data 8
        -0x31410530c2fd9d1eL    # -2.1381420181265904E71
        -0x61337286001a561fL    # -2.538625465619337E-160
    .end array-data
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzfjc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfiw;->zzb:Lcom/google/android/gms/internal/ads/zzfjc;

    return-object v0
.end method

.method public final declared-synchronized zzb(Lcom/google/android/gms/internal/ads/zzfjf;)Lcom/google/android/gms/internal/ads/zzfje;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfiw;->zza:Lj$/util/concurrent/ConcurrentHashMap;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfiu;

    .line 9
    .line 10
    if-eqz p1, :cond_2

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfiu;->zze()Lcom/google/android/gms/internal/ads/zzfje;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfiw;->zzc:Lcom/google/android/gms/internal/ads/zzfiy;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfiy;->zze()V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_2

    .line 26
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfiu;->zzf()Lcom/google/android/gms/internal/ads/zzfjs;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbck;->zza()Lcom/google/android/gms/internal/ads/zzbce;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbcd;->zza()Lcom/google/android/gms/internal/ads/zzbcc;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    const/4 v3, 0x2

    .line 41
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzbcc;->zzd(I)Lcom/google/android/gms/internal/ads/zzbcc;

    .line 42
    .line 43
    .line 44
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbch;->zza()Lcom/google/android/gms/internal/ads/zzbcg;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    iget-boolean v4, p1, Lcom/google/android/gms/internal/ads/zzfjs;->zza:Z

    .line 49
    .line 50
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzbcg;->zza(Z)Lcom/google/android/gms/internal/ads/zzbcg;

    .line 51
    .line 52
    .line 53
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzfjs;->zzb:I

    .line 54
    .line 55
    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(I)Lcom/google/android/gms/internal/ads/zzbcg;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzbcc;->zza(Lcom/google/android/gms/internal/ads/zzbcg;)Lcom/google/android/gms/internal/ads/zzbcc;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbce;->zza(Lcom/google/android/gms/internal/ads/zzbcc;)Lcom/google/android/gms/internal/ads/zzbce;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgzp;->zzal()Lcom/google/android/gms/internal/ads/zzgzu;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbck;

    .line 69
    .line 70
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfje;->zza:Lcom/google/android/gms/internal/ads/zzdae;

    .line 71
    .line 72
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdae;->zzb()Lcom/google/android/gms/internal/ads/zzcxp;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcxp;->zzc()Lcom/google/android/gms/internal/ads/zzdgc;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzdgc;->zzi(Lcom/google/android/gms/internal/ads/zzbck;)V

    .line 81
    .line 82
    .line 83
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfiw;->zzf()V

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfiw;->zzc:Lcom/google/android/gms/internal/ads/zzfiy;

    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfiy;->zzf()V

    .line 90
    .line 91
    .line 92
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfiw;->zzf()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    .line 94
    .line 95
    const/4 v0, 0x0

    .line 96
    :goto_1
    monitor-exit p0

    .line 97
    return-object v0

    .line 98
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    throw p1
.end method

.method public final zzc(Lcom/google/android/gms/ads/internal/client/zzl;Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzw;)Lcom/google/android/gms/internal/ads/zzfjf;
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbzi;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfiw;->zzb:Lcom/google/android/gms/internal/ads/zzfjc;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfjc;->zza:Landroid/content/Context;

    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzbzi;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbzi;->zza()Lcom/google/android/gms/internal/ads/zzbzj;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzbzj;->zzk:I

    .line 15
    .line 16
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfjg;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfiw;->zzb:Lcom/google/android/gms/internal/ads/zzfjc;

    .line 19
    .line 20
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzfjc;->zzf:Ljava/lang/String;

    .line 21
    .line 22
    move-object v1, v0

    .line 23
    move-object v2, p1

    .line 24
    move-object v3, p2

    .line 25
    move-object v6, p3

    .line 26
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzfjg;-><init>(Lcom/google/android/gms/ads/internal/client/zzl;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zzw;)V

    .line 27
    .line 28
    .line 29
    return-object v0
.end method

.method public final declared-synchronized zzd(Lcom/google/android/gms/internal/ads/zzfjf;Lcom/google/android/gms/internal/ads/zzfje;)Z
    .locals 10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfiw;->zza:Lj$/util/concurrent/ConcurrentHashMap;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/google/android/gms/internal/ads/zzfiu;

    .line 9
    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzB()Lcom/google/android/gms/common/util/Clock;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    iput-wide v1, p2, Lcom/google/android/gms/internal/ads/zzfje;->zzd:J

    .line 19
    .line 20
    const/4 v1, 0x2

    .line 21
    if-nez v0, :cond_c

    .line 22
    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfiw;->zzb:Lcom/google/android/gms/internal/ads/zzfjc;

    .line 24
    .line 25
    new-instance v2, Lcom/google/android/gms/internal/ads/zzfiu;

    .line 26
    .line 27
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzfjc;->zzd:I

    .line 28
    .line 29
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfjc;->zze:I

    .line 30
    .line 31
    mul-int/lit16 v0, v0, 0x3e8

    .line 32
    .line 33
    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzfiu;-><init>(II)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfiw;->zza:Lj$/util/concurrent/ConcurrentHashMap;

    .line 37
    .line 38
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfiw;->zzb:Lcom/google/android/gms/internal/ads/zzfjc;

    .line 39
    .line 40
    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->size()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    iget v3, v3, Lcom/google/android/gms/internal/ads/zzfjc;->zzc:I

    .line 45
    .line 46
    if-ne v0, v3, :cond_b

    .line 47
    .line 48
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfiw;->zzb:Lcom/google/android/gms/internal/ads/zzfjc;

    .line 49
    .line 50
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfjc;->zzg:I

    .line 51
    .line 52
    add-int/lit8 v3, v0, -0x1

    .line 53
    .line 54
    const/4 v4, 0x0

    .line 55
    if-eqz v0, :cond_a

    .line 56
    .line 57
    const-wide v5, 0x7fffffffffffffffL

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    if-eqz v3, :cond_6

    .line 63
    .line 64
    const/4 v0, 0x1

    .line 65
    if-eq v3, v0, :cond_3

    .line 66
    .line 67
    if-eq v3, v1, :cond_0

    .line 68
    .line 69
    goto/16 :goto_3

    .line 70
    .line 71
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfiw;->zza:Lj$/util/concurrent/ConcurrentHashMap;

    .line 72
    .line 73
    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    const v3, 0x7fffffff

    .line 82
    .line 83
    .line 84
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    if-eqz v5, :cond_2

    .line 89
    .line 90
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    check-cast v5, Ljava/util/Map$Entry;

    .line 95
    .line 96
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    check-cast v6, Lcom/google/android/gms/internal/ads/zzfiu;

    .line 101
    .line 102
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzfiu;->zza()I

    .line 103
    .line 104
    .line 105
    move-result v6

    .line 106
    if-ge v6, v3, :cond_1

    .line 107
    .line 108
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    check-cast v3, Lcom/google/android/gms/internal/ads/zzfiu;

    .line 113
    .line 114
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfiu;->zza()I

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    check-cast v4, Lcom/google/android/gms/internal/ads/zzfjf;

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :catchall_0
    move-exception p1

    .line 126
    goto/16 :goto_5

    .line 127
    .line 128
    :cond_2
    if-eqz v4, :cond_9

    .line 129
    .line 130
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfiw;->zza:Lj$/util/concurrent/ConcurrentHashMap;

    .line 131
    .line 132
    invoke-virtual {v0, v4}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    goto/16 :goto_3

    .line 136
    .line 137
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfiw;->zza:Lj$/util/concurrent/ConcurrentHashMap;

    .line 138
    .line 139
    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 148
    .line 149
    .line 150
    move-result v3

    .line 151
    if-eqz v3, :cond_5

    .line 152
    .line 153
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    check-cast v3, Ljava/util/Map$Entry;

    .line 158
    .line 159
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v7

    .line 163
    check-cast v7, Lcom/google/android/gms/internal/ads/zzfiu;

    .line 164
    .line 165
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzfiu;->zzd()J

    .line 166
    .line 167
    .line 168
    move-result-wide v7

    .line 169
    cmp-long v9, v7, v5

    .line 170
    .line 171
    if-gez v9, :cond_4

    .line 172
    .line 173
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    check-cast v4, Lcom/google/android/gms/internal/ads/zzfiu;

    .line 178
    .line 179
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfiu;->zzd()J

    .line 180
    .line 181
    .line 182
    move-result-wide v4

    .line 183
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    check-cast v3, Lcom/google/android/gms/internal/ads/zzfjf;

    .line 188
    .line 189
    move-wide v5, v4

    .line 190
    move-object v4, v3

    .line 191
    goto :goto_1

    .line 192
    :cond_5
    if-eqz v4, :cond_9

    .line 193
    .line 194
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfiw;->zza:Lj$/util/concurrent/ConcurrentHashMap;

    .line 195
    .line 196
    invoke-virtual {v0, v4}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    goto :goto_3

    .line 200
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfiw;->zza:Lj$/util/concurrent/ConcurrentHashMap;

    .line 201
    .line 202
    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    :cond_7
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 211
    .line 212
    .line 213
    move-result v3

    .line 214
    if-eqz v3, :cond_8

    .line 215
    .line 216
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v3

    .line 220
    check-cast v3, Ljava/util/Map$Entry;

    .line 221
    .line 222
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v7

    .line 226
    check-cast v7, Lcom/google/android/gms/internal/ads/zzfiu;

    .line 227
    .line 228
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzfiu;->zzc()J

    .line 229
    .line 230
    .line 231
    move-result-wide v7

    .line 232
    cmp-long v9, v7, v5

    .line 233
    .line 234
    if-gez v9, :cond_7

    .line 235
    .line 236
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v4

    .line 240
    check-cast v4, Lcom/google/android/gms/internal/ads/zzfiu;

    .line 241
    .line 242
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfiu;->zzc()J

    .line 243
    .line 244
    .line 245
    move-result-wide v4

    .line 246
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v3

    .line 250
    check-cast v3, Lcom/google/android/gms/internal/ads/zzfjf;

    .line 251
    .line 252
    move-wide v5, v4

    .line 253
    move-object v4, v3

    .line 254
    goto :goto_2

    .line 255
    :cond_8
    if-eqz v4, :cond_9

    .line 256
    .line 257
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfiw;->zza:Lj$/util/concurrent/ConcurrentHashMap;

    .line 258
    .line 259
    invoke-virtual {v0, v4}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfiw;->zzc:Lcom/google/android/gms/internal/ads/zzfiy;

    .line 263
    .line 264
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfiy;->zzg()V

    .line 265
    .line 266
    .line 267
    goto :goto_4

    .line 268
    :cond_a
    throw v4

    .line 269
    :cond_b
    :goto_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfiw;->zza:Lj$/util/concurrent/ConcurrentHashMap;

    .line 270
    .line 271
    invoke-virtual {v0, p1, v2}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfiw;->zzc:Lcom/google/android/gms/internal/ads/zzfiy;

    .line 275
    .line 276
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfiy;->zzd()V

    .line 277
    .line 278
    .line 279
    move-object v0, v2

    .line 280
    :cond_c
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzfiu;->zzh(Lcom/google/android/gms/internal/ads/zzfje;)Z

    .line 281
    .line 282
    .line 283
    move-result p1

    .line 284
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfiw;->zzc:Lcom/google/android/gms/internal/ads/zzfiy;

    .line 285
    .line 286
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfiy;->zzc()V

    .line 287
    .line 288
    .line 289
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfiw;->zzc:Lcom/google/android/gms/internal/ads/zzfiy;

    .line 290
    .line 291
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfiy;->zza()Lcom/google/android/gms/internal/ads/zzfix;

    .line 292
    .line 293
    .line 294
    move-result-object v2

    .line 295
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfiu;->zzf()Lcom/google/android/gms/internal/ads/zzfjs;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbck;->zza()Lcom/google/android/gms/internal/ads/zzbce;

    .line 300
    .line 301
    .line 302
    move-result-object v3

    .line 303
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbcd;->zza()Lcom/google/android/gms/internal/ads/zzbcc;

    .line 304
    .line 305
    .line 306
    move-result-object v4

    .line 307
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzbcc;->zzd(I)Lcom/google/android/gms/internal/ads/zzbcc;

    .line 308
    .line 309
    .line 310
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbcj;->zza()Lcom/google/android/gms/internal/ads/zzbci;

    .line 311
    .line 312
    .line 313
    move-result-object v1

    .line 314
    iget-boolean v5, v2, Lcom/google/android/gms/internal/ads/zzfix;->zza:Z

    .line 315
    .line 316
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzbci;->zza(Z)Lcom/google/android/gms/internal/ads/zzbci;

    .line 317
    .line 318
    .line 319
    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzfix;->zzb:Z

    .line 320
    .line 321
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbci;->zzb(Z)Lcom/google/android/gms/internal/ads/zzbci;

    .line 322
    .line 323
    .line 324
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfjs;->zzb:I

    .line 325
    .line 326
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbci;->zzc(I)Lcom/google/android/gms/internal/ads/zzbci;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzbcc;->zzc(Lcom/google/android/gms/internal/ads/zzbci;)Lcom/google/android/gms/internal/ads/zzbcc;

    .line 330
    .line 331
    .line 332
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzbce;->zza(Lcom/google/android/gms/internal/ads/zzbcc;)Lcom/google/android/gms/internal/ads/zzbce;

    .line 333
    .line 334
    .line 335
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgzp;->zzal()Lcom/google/android/gms/internal/ads/zzgzu;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbck;

    .line 340
    .line 341
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzfje;->zza:Lcom/google/android/gms/internal/ads/zzdae;

    .line 342
    .line 343
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzdae;->zzb()Lcom/google/android/gms/internal/ads/zzcxp;

    .line 344
    .line 345
    .line 346
    move-result-object p2

    .line 347
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzcxp;->zzc()Lcom/google/android/gms/internal/ads/zzdgc;

    .line 348
    .line 349
    .line 350
    move-result-object p2

    .line 351
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzdgc;->zzj(Lcom/google/android/gms/internal/ads/zzbck;)V

    .line 352
    .line 353
    .line 354
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfiw;->zzf()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    .line 356
    .line 357
    monitor-exit p0

    .line 358
    return p1

    .line 359
    :goto_5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 360
    throw p1
.end method

.method public final declared-synchronized zze(Lcom/google/android/gms/internal/ads/zzfjf;)Z
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfiw;->zza:Lj$/util/concurrent/ConcurrentHashMap;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfiu;

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfiw;->zzb:Lcom/google/android/gms/internal/ads/zzfjc;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfiu;->zzb()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzfjc;->zzd:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    monitor-exit p0

    .line 22
    if-ge p1, v1, :cond_0

    .line 23
    .line 24
    return v0

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    return p1

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    monitor-exit p0

    .line 30
    return v0

    .line 31
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    throw p1
.end method
