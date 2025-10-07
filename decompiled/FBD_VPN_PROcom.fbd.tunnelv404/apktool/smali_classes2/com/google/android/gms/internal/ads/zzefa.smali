.class public final Lcom/google/android/gms/internal/ads/zzefa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfkp;


# instance fields
.field protected final zza:Landroid/content/Context;

.field protected final zzb:Ljava/lang/String;

.field protected final zzc:Lcom/google/android/gms/internal/ads/zzbzq;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbzq;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzefa;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzefa;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzefa;->zzc:Lcom/google/android/gms/internal/ads/zzbzq;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzeey;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzefa;->zzb(Lcom/google/android/gms/internal/ads/zzeey;)Lcom/google/android/gms/internal/ads/zzeez;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzeey;)Lcom/google/android/gms/internal/ads/zzeez;
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x1

    .line 7
    const/4 v5, 0x3

    .line 8
    const/4 v6, 0x6

    .line 9
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzeey;->zza:Ljava/lang/String;

    .line 10
    .line 11
    iget v15, v0, Lcom/google/android/gms/internal/ads/zzeey;->zzb:I

    .line 12
    .line 13
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzeey;->zzc:Ljava/util/Map;

    .line 14
    .line 15
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzeey;->zzd:[B

    .line 16
    .line 17
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeey;->zze:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzB()Lcom/google/android/gms/common/util/Clock;

    .line 20
    .line 21
    .line 22
    move-result-object v8

    .line 23
    invoke-interface {v8}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 24
    .line 25
    .line 26
    move-result-wide v16

    .line 27
    :try_start_0
    new-instance v12, Lcom/google/android/gms/internal/ads/zzeez;

    .line 28
    .line 29
    invoke-direct {v12}, Lcom/google/android/gms/internal/ads/zzeez;-><init>()V

    .line 30
    .line 31
    .line 32
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzefa;->zzb:Ljava/lang/String;

    .line 33
    .line 34
    new-instance v9, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 40
    .line 41
    new-array v11, v5, [J

    .line 42
    .line 43
    fill-array-data v11, :array_0

    .line 44
    .line 45
    .line 46
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v10

    .line 53
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v8

    .line 63
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzcec;->zzi(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    new-instance v8, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 72
    .line 73
    new-array v10, v6, [J

    .line 74
    .line 75
    fill-array-data v10, :array_1

    .line 76
    .line 77
    .line 78
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v9

    .line 85
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v8

    .line 95
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzcec;->zze(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    new-instance v8, Ljava/net/URL;

    .line 99
    .line 100
    invoke-direct {v8, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    new-instance v7, Ljava/util/HashMap;

    .line 104
    .line 105
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 106
    .line 107
    .line 108
    const/16 v18, 0x0

    .line 109
    .line 110
    :goto_0
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 111
    .line 112
    .line 113
    move-result-object v8

    .line 114
    move-object v11, v8

    .line 115
    check-cast v11, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 116
    .line 117
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzp()Lcom/google/android/gms/ads/internal/util/zzt;

    .line 118
    .line 119
    .line 120
    move-result-object v8

    .line 121
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzefa;->zza:Landroid/content/Context;

    .line 122
    .line 123
    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzefa;->zzb:Ljava/lang/String;
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzead; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    .line 125
    const/16 v19, 0x0

    .line 126
    .line 127
    const/16 v20, 0x0

    .line 128
    .line 129
    move-object/from16 p1, v11

    .line 130
    .line 131
    move/from16 v11, v19

    .line 132
    .line 133
    move-object v6, v12

    .line 134
    move-object/from16 v12, p1

    .line 135
    .line 136
    move-object v2, v13

    .line 137
    move/from16 v13, v20

    .line 138
    .line 139
    move-object/from16 v20, v14

    .line 140
    .line 141
    move v14, v15

    .line 142
    :try_start_2
    invoke-virtual/range {v8 .. v14}, Lcom/google/android/gms/ads/internal/util/zzt;->zzf(Landroid/content/Context;Ljava/lang/String;ZLjava/net/HttpURLConnection;ZI)V

    .line 143
    .line 144
    .line 145
    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 146
    .line 147
    .line 148
    move-result-object v8

    .line 149
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 150
    .line 151
    .line 152
    move-result-object v8

    .line 153
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 154
    .line 155
    .line 156
    move-result v9

    .line 157
    if-eqz v9, :cond_0

    .line 158
    .line 159
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v9

    .line 163
    check-cast v9, Ljava/util/Map$Entry;

    .line 164
    .line 165
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v10

    .line 169
    check-cast v10, Ljava/lang/String;

    .line 170
    .line 171
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v9

    .line 175
    check-cast v9, Ljava/lang/String;
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzead; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 176
    .line 177
    move-object/from16 v11, p1

    .line 178
    .line 179
    :try_start_3
    invoke-virtual {v11, v10, v9}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    move-object/from16 p1, v11

    .line 183
    .line 184
    goto :goto_1

    .line 185
    :catchall_0
    move-exception v0

    .line 186
    goto/16 :goto_a

    .line 187
    .line 188
    :catch_0
    move-exception v0

    .line 189
    goto/16 :goto_8

    .line 190
    .line 191
    :catchall_1
    move-exception v0

    .line 192
    move-object/from16 v11, p1

    .line 193
    .line 194
    goto/16 :goto_a

    .line 195
    .line 196
    :catch_1
    move-exception v0

    .line 197
    move-object/from16 v11, p1

    .line 198
    .line 199
    goto/16 :goto_8

    .line 200
    .line 201
    :cond_0
    move-object/from16 v11, p1

    .line 202
    .line 203
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 204
    .line 205
    .line 206
    move-result v8

    .line 207
    if-nez v8, :cond_1

    .line 208
    .line 209
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 210
    .line 211
    new-array v9, v5, [J

    .line 212
    .line 213
    fill-array-data v9, :array_2

    .line 214
    .line 215
    .line 216
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v8

    .line 223
    invoke-virtual {v11, v8, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    :cond_1
    array-length v8, v2

    .line 227
    const/4 v9, 0x0

    .line 228
    if-lez v8, :cond_2

    .line 229
    .line 230
    invoke-virtual {v11, v4}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v11, v8}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V
    :try_end_3
    .catch Lcom/google/android/gms/internal/ads/zzead; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 234
    .line 235
    .line 236
    :try_start_4
    new-instance v8, Ljava/io/BufferedOutputStream;

    .line 237
    .line 238
    invoke-virtual {v11}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 239
    .line 240
    .line 241
    move-result-object v10

    .line 242
    invoke-direct {v8, v10}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 243
    .line 244
    .line 245
    :try_start_5
    invoke-virtual {v8, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 246
    .line 247
    .line 248
    :try_start_6
    invoke-static {v8}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 249
    .line 250
    .line 251
    goto :goto_3

    .line 252
    :catchall_2
    move-exception v0

    .line 253
    move-object v9, v8

    .line 254
    goto :goto_2

    .line 255
    :catchall_3
    move-exception v0

    .line 256
    :goto_2
    invoke-static {v9}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 257
    .line 258
    .line 259
    throw v0

    .line 260
    :cond_2
    :goto_3
    new-instance v8, Lcom/google/android/gms/internal/ads/zzceb;

    .line 261
    .line 262
    invoke-direct {v8, v9}, Lcom/google/android/gms/internal/ads/zzceb;-><init>(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v8, v11, v2}, Lcom/google/android/gms/internal/ads/zzceb;->zzc(Ljava/net/HttpURLConnection;[B)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 269
    .line 270
    .line 271
    move-result v10

    .line 272
    invoke-virtual {v11}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    .line 273
    .line 274
    .line 275
    move-result-object v12

    .line 276
    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 277
    .line 278
    .line 279
    move-result-object v12

    .line 280
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 281
    .line 282
    .line 283
    move-result-object v12

    .line 284
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 285
    .line 286
    .line 287
    move-result v13

    .line 288
    if-eqz v13, :cond_4

    .line 289
    .line 290
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v13

    .line 294
    check-cast v13, Ljava/util/Map$Entry;

    .line 295
    .line 296
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v14

    .line 300
    check-cast v14, Ljava/lang/String;

    .line 301
    .line 302
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v13

    .line 306
    check-cast v13, Ljava/util/List;

    .line 307
    .line 308
    invoke-virtual {v7, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 309
    .line 310
    .line 311
    move-result v21

    .line 312
    if-eqz v21, :cond_3

    .line 313
    .line 314
    invoke-virtual {v7, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v14

    .line 318
    check-cast v14, Ljava/util/List;

    .line 319
    .line 320
    invoke-interface {v14, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 321
    .line 322
    .line 323
    goto :goto_4

    .line 324
    :cond_3
    new-instance v9, Ljava/util/ArrayList;

    .line 325
    .line 326
    invoke-direct {v9, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v7, v14, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    const/4 v9, 0x0

    .line 333
    goto :goto_4

    .line 334
    :cond_4
    invoke-virtual {v8, v11, v10}, Lcom/google/android/gms/internal/ads/zzceb;->zze(Ljava/net/HttpURLConnection;I)V

    .line 335
    .line 336
    .line 337
    iput v10, v6, Lcom/google/android/gms/internal/ads/zzeez;->zza:I

    .line 338
    .line 339
    iput-object v7, v6, Lcom/google/android/gms/internal/ads/zzeez;->zzb:Ljava/util/Map;

    .line 340
    .line 341
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 342
    .line 343
    new-array v12, v4, [J

    .line 344
    .line 345
    const-wide v13, -0x345b6b0a6814aab0L    # -2.5233302212152495E56

    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    aput-wide v13, v12, v3

    .line 351
    .line 352
    invoke-direct {v9, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v9

    .line 359
    iput-object v9, v6, Lcom/google/android/gms/internal/ads/zzeez;->zzc:Ljava/lang/String;
    :try_end_6
    .catch Lcom/google/android/gms/internal/ads/zzead; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 360
    .line 361
    const/16 v9, 0xc8

    .line 362
    .line 363
    const/16 v12, 0x12c

    .line 364
    .line 365
    if-lt v10, v9, :cond_7

    .line 366
    .line 367
    if-ge v10, v12, :cond_7

    .line 368
    .line 369
    :try_start_7
    new-instance v2, Ljava/io/InputStreamReader;

    .line 370
    .line 371
    invoke-virtual {v11}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 372
    .line 373
    .line 374
    move-result-object v0

    .line 375
    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 376
    .line 377
    .line 378
    :try_start_8
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzp()Lcom/google/android/gms/ads/internal/util/zzt;

    .line 379
    .line 380
    .line 381
    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/zzt;->zzM(Ljava/io/InputStreamReader;)Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 385
    :try_start_9
    invoke-static {v2}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/ads/zzceb;->zzg(Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    iput-object v0, v6, Lcom/google/android/gms/internal/ads/zzeez;->zzc:Ljava/lang/String;

    .line 392
    .line 393
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 394
    .line 395
    .line 396
    move-result v0

    .line 397
    if-eqz v0, :cond_6

    .line 398
    .line 399
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgc;->zzft:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 400
    .line 401
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 402
    .line 403
    .line 404
    move-result-object v2

    .line 405
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    check-cast v0, Ljava/lang/Boolean;

    .line 410
    .line 411
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 412
    .line 413
    .line 414
    move-result v0

    .line 415
    if-eqz v0, :cond_5

    .line 416
    .line 417
    goto :goto_5

    .line 418
    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzead;

    .line 419
    .line 420
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/ads/zzead;-><init>(I)V

    .line 421
    .line 422
    .line 423
    throw v0

    .line 424
    :cond_6
    :goto_5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzB()Lcom/google/android/gms/common/util/Clock;

    .line 425
    .line 426
    .line 427
    move-result-object v0

    .line 428
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 429
    .line 430
    .line 431
    move-result-wide v2

    .line 432
    sub-long v2, v2, v16

    .line 433
    .line 434
    iput-wide v2, v6, Lcom/google/android/gms/internal/ads/zzeez;->zzd:J
    :try_end_9
    .catch Lcom/google/android/gms/internal/ads/zzead; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 435
    .line 436
    :goto_6
    :try_start_a
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    .line 437
    .line 438
    .line 439
    goto/16 :goto_9

    .line 440
    .line 441
    :catch_2
    move-exception v0

    .line 442
    goto/16 :goto_b

    .line 443
    .line 444
    :catchall_4
    move-exception v0

    .line 445
    move-object v9, v2

    .line 446
    goto :goto_7

    .line 447
    :catchall_5
    move-exception v0

    .line 448
    const/4 v9, 0x0

    .line 449
    :goto_7
    :try_start_b
    invoke-static {v9}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 450
    .line 451
    .line 452
    throw v0

    .line 453
    :cond_7
    if-lt v10, v12, :cond_a

    .line 454
    .line 455
    const/16 v8, 0x190

    .line 456
    .line 457
    if-ge v10, v8, :cond_a

    .line 458
    .line 459
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 460
    .line 461
    const/4 v9, 0x2

    .line 462
    new-array v9, v9, [J

    .line 463
    .line 464
    fill-array-data v9, :array_3

    .line 465
    .line 466
    .line 467
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 468
    .line 469
    .line 470
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v8

    .line 474
    invoke-virtual {v11, v8}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v8

    .line 478
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 479
    .line 480
    .line 481
    move-result v9

    .line 482
    if-nez v9, :cond_9

    .line 483
    .line 484
    new-instance v9, Ljava/net/URL;

    .line 485
    .line 486
    invoke-direct {v9, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 487
    .line 488
    .line 489
    add-int/lit8 v8, v18, 0x1

    .line 490
    .line 491
    sget-object v10, Lcom/google/android/gms/internal/ads/zzbgc;->zzeT:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 492
    .line 493
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 494
    .line 495
    .line 496
    move-result-object v12

    .line 497
    invoke-virtual {v12, v10}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 498
    .line 499
    .line 500
    move-result-object v10

    .line 501
    check-cast v10, Ljava/lang/Integer;

    .line 502
    .line 503
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 504
    .line 505
    .line 506
    move-result v10
    :try_end_b
    .catch Lcom/google/android/gms/internal/ads/zzead; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 507
    if-gt v8, v10, :cond_8

    .line 508
    .line 509
    :try_start_c
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    .line 510
    .line 511
    .line 512
    move-object v13, v2

    .line 513
    move-object v12, v6

    .line 514
    move/from16 v18, v8

    .line 515
    .line 516
    move-object v8, v9

    .line 517
    move-object/from16 v14, v20

    .line 518
    .line 519
    const/4 v6, 0x6

    .line 520
    goto/16 :goto_0

    .line 521
    .line 522
    :cond_8
    :try_start_d
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 523
    .line 524
    const/4 v2, 0x4

    .line 525
    new-array v3, v2, [J

    .line 526
    .line 527
    fill-array-data v3, :array_4

    .line 528
    .line 529
    .line 530
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 531
    .line 532
    .line 533
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 534
    .line 535
    .line 536
    move-result-object v0

    .line 537
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcec;->zzj(Ljava/lang/String;)V

    .line 538
    .line 539
    .line 540
    new-instance v0, Lcom/google/android/gms/internal/ads/zzead;

    .line 541
    .line 542
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 543
    .line 544
    const/4 v3, 0x4

    .line 545
    new-array v3, v3, [J

    .line 546
    .line 547
    fill-array-data v3, :array_5

    .line 548
    .line 549
    .line 550
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 551
    .line 552
    .line 553
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 554
    .line 555
    .line 556
    move-result-object v2

    .line 557
    invoke-direct {v0, v4, v2}, Lcom/google/android/gms/internal/ads/zzead;-><init>(ILjava/lang/String;)V

    .line 558
    .line 559
    .line 560
    throw v0

    .line 561
    :cond_9
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 562
    .line 563
    const/4 v2, 0x6

    .line 564
    new-array v3, v2, [J

    .line 565
    .line 566
    fill-array-data v3, :array_6

    .line 567
    .line 568
    .line 569
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 570
    .line 571
    .line 572
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 573
    .line 574
    .line 575
    move-result-object v0

    .line 576
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcec;->zzj(Ljava/lang/String;)V

    .line 577
    .line 578
    .line 579
    new-instance v0, Lcom/google/android/gms/internal/ads/zzead;

    .line 580
    .line 581
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 582
    .line 583
    const/4 v3, 0x6

    .line 584
    new-array v5, v3, [J

    .line 585
    .line 586
    fill-array-data v5, :array_7

    .line 587
    .line 588
    .line 589
    invoke-direct {v2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 590
    .line 591
    .line 592
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 593
    .line 594
    .line 595
    move-result-object v2

    .line 596
    invoke-direct {v0, v4, v2}, Lcom/google/android/gms/internal/ads/zzead;-><init>(ILjava/lang/String;)V

    .line 597
    .line 598
    .line 599
    throw v0

    .line 600
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    .line 601
    .line 602
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 603
    .line 604
    .line 605
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 606
    .line 607
    const/4 v3, 0x6

    .line 608
    new-array v5, v3, [J

    .line 609
    .line 610
    fill-array-data v5, :array_8

    .line 611
    .line 612
    .line 613
    invoke-direct {v2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 614
    .line 615
    .line 616
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 617
    .line 618
    .line 619
    move-result-object v2

    .line 620
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    .line 622
    .line 623
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 624
    .line 625
    .line 626
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 627
    .line 628
    .line 629
    move-result-object v0

    .line 630
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcec;->zzj(Ljava/lang/String;)V

    .line 631
    .line 632
    .line 633
    new-instance v0, Lcom/google/android/gms/internal/ads/zzead;

    .line 634
    .line 635
    new-instance v2, Ljava/lang/StringBuilder;

    .line 636
    .line 637
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 638
    .line 639
    .line 640
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 641
    .line 642
    const/4 v5, 0x6

    .line 643
    new-array v7, v5, [J

    .line 644
    .line 645
    fill-array-data v7, :array_9

    .line 646
    .line 647
    .line 648
    invoke-direct {v3, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 649
    .line 650
    .line 651
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 652
    .line 653
    .line 654
    move-result-object v3

    .line 655
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    .line 657
    .line 658
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 659
    .line 660
    .line 661
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 662
    .line 663
    .line 664
    move-result-object v2

    .line 665
    invoke-direct {v0, v4, v2}, Lcom/google/android/gms/internal/ads/zzead;-><init>(ILjava/lang/String;)V

    .line 666
    .line 667
    .line 668
    throw v0
    :try_end_d
    .catch Lcom/google/android/gms/internal/ads/zzead; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 669
    :catch_3
    move-exception v0

    .line 670
    move-object v6, v12

    .line 671
    :goto_8
    :try_start_e
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbgc;->zzih:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 672
    .line 673
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 674
    .line 675
    .line 676
    move-result-object v3

    .line 677
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 678
    .line 679
    .line 680
    move-result-object v2

    .line 681
    check-cast v2, Ljava/lang/Boolean;

    .line 682
    .line 683
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 684
    .line 685
    .line 686
    move-result v2

    .line 687
    if-eqz v2, :cond_b

    .line 688
    .line 689
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzB()Lcom/google/android/gms/common/util/Clock;

    .line 690
    .line 691
    .line 692
    move-result-object v0

    .line 693
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 694
    .line 695
    .line 696
    move-result-wide v2

    .line 697
    sub-long v2, v2, v16

    .line 698
    .line 699
    iput-wide v2, v6, Lcom/google/android/gms/internal/ads/zzeez;->zzd:J

    .line 700
    .line 701
    goto/16 :goto_6

    .line 702
    .line 703
    :goto_9
    return-object v6

    .line 704
    :cond_b
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 705
    :goto_a
    :try_start_f
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 706
    .line 707
    .line 708
    throw v0
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2

    .line 709
    :goto_b
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 710
    .line 711
    .line 712
    move-result-object v2

    .line 713
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 714
    .line 715
    .line 716
    move-result-object v2

    .line 717
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 718
    .line 719
    const/4 v5, 0x6

    .line 720
    new-array v5, v5, [J

    .line 721
    .line 722
    fill-array-data v5, :array_a

    .line 723
    .line 724
    .line 725
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 726
    .line 727
    .line 728
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 729
    .line 730
    .line 731
    move-result-object v3

    .line 732
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 733
    .line 734
    .line 735
    move-result-object v2

    .line 736
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzcec;->zzj(Ljava/lang/String;)V

    .line 737
    .line 738
    .line 739
    new-instance v3, Lcom/google/android/gms/internal/ads/zzead;

    .line 740
    .line 741
    invoke-direct {v3, v4, v2, v0}, Lcom/google/android/gms/internal/ads/zzead;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 742
    .line 743
    .line 744
    throw v3

    .line 745
    :array_0
    .array-data 8
        0x34446d874ed9efc6L    # 6.508687208705774E-57
        0x7eb72591a134ec3cL    # 2.480194547839227E302
        -0x6de17b3d596d4cd3L
    .end array-data

    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    :array_1
    .array-data 8
        -0x7abdc94ee00de5efL
        -0xaf2d1d9423945ffL    # -6.845982281266905E255
        0x44ed682b0b0d9ca1L    # 1.110961527796962E24
        -0xc41a6cdfaeab02bL
        -0x16e73e8c34b271c8L    # -1.8505119923935657E198
        -0x3306b64ac13ab14eL    # -6.501779784397763E62
    .end array-data

    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    :array_2
    .array-data 8
        -0x417df912c4cb5835L    # -1.3431204380051534E-7
        -0x36b9308c2f53320eL    # -1.0173760948088385E45
        0x52c686f2a27c1351L    # 5.736074280067695E90
    .end array-data

    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    :array_3
    .array-data 8
        0x274191ab9bbed4abL    # 1.360753266767281E-119
        -0x56b776aeca2aeb94L    # -8.162108306199559E-110
    .end array-data

    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    :array_4
    .array-data 8
        0x594e68674ed94b9aL    # 1.570412117963217E122
        -0x6522ac4b77322b37L    # -2.827026239508281E-179
        0xb94f8703879d878L
        0x66708b2f405c15fdL    # 2.811834293499507E185
    .end array-data

    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    :array_5
    .array-data 8
        0x41695c4fcc8cdfeL
        -0x7e793082d8f0217dL
        0xc5311924b4584bbL
        -0x1ff6140b895ccc66L    # -4.3444145119034913E154
    .end array-data

    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    :array_6
    .array-data 8
        0x6c6a4d6119e372e3L    # 1.7709245100694215E214
        0x1ed7bb6ff8480dd1L    # 4.220072374465027E-160
        -0x6577390c9a4c6ec1L    # -7.463868684285294E-181
        0x336ed68435c06593L    # 5.9970332580204266E-61
        0xc27eb859a0290bL
        -0x1d02c4f3d3e989afL    # -6.894711979557929E168
    .end array-data

    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    :array_7
    .array-data 8
        0x319024d3cb873ae1L    # 5.847743427729689E-70
        -0x164c5cb2be35283aL    # -1.5031838875101532E201
        0x3df7628b8f9b8dbfL    # 3.402956940606463E-10
        -0x4ff439645a921187L    # -2.998457478358032E-77
        -0x410c6686c5024a2bL    # -1.869154556237935E-5
        -0x3bb14fc57c49c0eaL    # -1.1322018582587536E21
    .end array-data

    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    :array_8
    .array-data 8
        0x5042b816411830f1L    # 4.335044980624286E78
        -0x6174ba49b45e70d2L
        -0x627ee341f860cfa6L
        -0x1ded0438b06edea4L    # -2.7329655990391383E164
        0x688651e85a5bb36eL    # 3.258670531347677E195
        -0x1ed093a00058f849L    # -1.3805751660202258E160
    .end array-data

    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    :array_9
    .array-data 8
        -0x79f6b555e484dc8eL
        0x32b66122fd172192L    # 2.1250548990636637E-64
        -0x50cb5c2d6ce9b58dL    # -2.719878090402177E-81
        -0x699f20589e4729dfL    # -6.888773102944323E-201
        0x208dfe44d242d17bL
        0x7f5068d51806fdbaL    # 1.8004912286691273E305
    .end array-data

    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    :array_a
    .array-data 8
        0x395454e8c2d81e36L    # 1.5662953954000014E-32
        -0x6dcfa81efff5d802L    # -4.521289670391828E-221
        -0x36cb26e9d71e6b82L    # -4.649258105702751E44
        0x68dd4d7c8e3fae81L    # 1.3690034763174121E197
        -0x6dd94a185cee847L    # -3.188612713545126E275
        -0x6caba1129ca0021fL
    .end array-data
.end method
