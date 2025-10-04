.class public final Lcom/google/android/gms/ads/internal/util/zzcn;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Ljava/util/Map;

.field private static zzb:Ljava/util/List;

.field private static final zzc:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/ads/internal/util/zzcn;->zza:Ljava/util/Map;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/Object;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/google/android/gms/ads/internal/util/zzcn;->zzc:Ljava/lang/Object;

    .line 14
    .line 15
    return-void
.end method

.method public static zza(Ljava/lang/String;)Ljava/util/List;
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x2

    .line 6
    const/4 v4, 0x3

    .line 7
    sget-object v5, Lcom/google/android/gms/ads/internal/util/zzcn;->zzc:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v5

    .line 10
    :try_start_0
    sget-object v6, Lcom/google/android/gms/ads/internal/util/zzcn;->zza:Ljava/util/Map;

    .line 11
    .line 12
    invoke-interface {v6, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v7

    .line 16
    if-eqz v7, :cond_0

    .line 17
    .line 18
    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Ljava/util/List;

    .line 23
    .line 24
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    return-object v0

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    goto/16 :goto_6

    .line 28
    .line 29
    :cond_0
    :try_start_1
    monitor-enter v5
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    :try_start_2
    sget-object v6, Lcom/google/android/gms/ads/internal/util/zzcn;->zzb:Ljava/util/List;

    .line 31
    .line 32
    if-eqz v6, :cond_1

    .line 33
    .line 34
    monitor-exit v5

    .line 35
    goto :goto_0

    .line 36
    :catchall_1
    move-exception v0

    .line 37
    goto/16 :goto_4

    .line 38
    .line 39
    :cond_1
    new-instance v6, Landroid/media/MediaCodecList;

    .line 40
    .line 41
    invoke-direct {v6, v2}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v6}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    sput-object v6, Lcom/google/android/gms/ads/internal/util/zzcn;->zzb:Ljava/util/List;

    .line 53
    .line 54
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 55
    :goto_0
    :try_start_3
    new-instance v6, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .line 59
    .line 60
    sget-object v7, Lcom/google/android/gms/ads/internal/util/zzcn;->zzb:Ljava/util/List;

    .line 61
    .line 62
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v8

    .line 70
    if-eqz v8, :cond_5

    .line 71
    .line 72
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v8

    .line 76
    check-cast v8, Landroid/media/MediaCodecInfo;

    .line 77
    .line 78
    invoke-virtual {v8}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    .line 79
    .line 80
    .line 81
    move-result v9

    .line 82
    if-nez v9, :cond_2

    .line 83
    .line 84
    invoke-virtual {v8}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v9

    .line 88
    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 89
    .line 90
    .line 91
    move-result-object v9

    .line 92
    invoke-interface {v9, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v9

    .line 96
    if-eqz v9, :cond_2

    .line 97
    .line 98
    new-instance v9, Ljava/util/HashMap;

    .line 99
    .line 100
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 101
    .line 102
    .line 103
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 104
    .line 105
    new-array v11, v4, [J

    .line 106
    .line 107
    fill-array-data v11, :array_0

    .line 108
    .line 109
    .line 110
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v10

    .line 117
    invoke-virtual {v8}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v11

    .line 121
    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v8, v1}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 125
    .line 126
    .line 127
    move-result-object v8

    .line 128
    new-instance v10, Ljava/util/ArrayList;

    .line 129
    .line 130
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .line 132
    .line 133
    iget-object v11, v8, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    .line 134
    .line 135
    array-length v12, v11

    .line 136
    const/4 v13, 0x0

    .line 137
    :goto_2
    if-ge v13, v12, :cond_3

    .line 138
    .line 139
    aget-object v14, v11, v13

    .line 140
    .line 141
    iget v15, v14, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    .line 142
    .line 143
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 144
    .line 145
    .line 146
    move-result-object v15

    .line 147
    iget v14, v14, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    .line 148
    .line 149
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 150
    .line 151
    .line 152
    move-result-object v14

    .line 153
    new-array v4, v3, [Ljava/lang/Integer;

    .line 154
    .line 155
    aput-object v15, v4, v2

    .line 156
    .line 157
    aput-object v14, v4, v0

    .line 158
    .line 159
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    add-int/2addr v13, v0

    .line 163
    const/4 v4, 0x3

    .line 164
    goto :goto_2

    .line 165
    :catch_0
    move-exception v0

    .line 166
    goto/16 :goto_5

    .line 167
    .line 168
    :catch_1
    move-exception v0

    .line 169
    goto/16 :goto_5

    .line 170
    .line 171
    :cond_3
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 172
    .line 173
    const/4 v11, 0x3

    .line 174
    new-array v12, v11, [J

    .line 175
    .line 176
    fill-array-data v12, :array_1

    .line 177
    .line 178
    .line 179
    invoke-direct {v4, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v4

    .line 186
    invoke-virtual {v9, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v8}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    .line 190
    .line 191
    .line 192
    move-result-object v4

    .line 193
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 194
    .line 195
    const/4 v11, 0x3

    .line 196
    new-array v12, v11, [J

    .line 197
    .line 198
    fill-array-data v12, :array_2

    .line 199
    .line 200
    .line 201
    invoke-direct {v10, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v10

    .line 208
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getBitrateRange()Landroid/util/Range;

    .line 209
    .line 210
    .line 211
    move-result-object v11

    .line 212
    invoke-static {v11}, Lcom/google/android/gms/ads/internal/util/zzcn;->zzb(Landroid/util/Range;)[Ljava/lang/Integer;

    .line 213
    .line 214
    .line 215
    move-result-object v11

    .line 216
    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 220
    .line 221
    const/4 v11, 0x3

    .line 222
    new-array v12, v11, [J

    .line 223
    .line 224
    fill-array-data v12, :array_3

    .line 225
    .line 226
    .line 227
    invoke-direct {v10, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v10

    .line 234
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getWidthAlignment()I

    .line 235
    .line 236
    .line 237
    move-result v11

    .line 238
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 239
    .line 240
    .line 241
    move-result-object v11

    .line 242
    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 246
    .line 247
    const/4 v11, 0x3

    .line 248
    new-array v12, v11, [J

    .line 249
    .line 250
    fill-array-data v12, :array_4

    .line 251
    .line 252
    .line 253
    invoke-direct {v10, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v10

    .line 260
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getHeightAlignment()I

    .line 261
    .line 262
    .line 263
    move-result v11

    .line 264
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 265
    .line 266
    .line 267
    move-result-object v11

    .line 268
    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 272
    .line 273
    const/4 v11, 0x3

    .line 274
    new-array v12, v11, [J

    .line 275
    .line 276
    fill-array-data v12, :array_5

    .line 277
    .line 278
    .line 279
    invoke-direct {v10, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v10

    .line 286
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedFrameRates()Landroid/util/Range;

    .line 287
    .line 288
    .line 289
    move-result-object v11

    .line 290
    invoke-static {v11}, Lcom/google/android/gms/ads/internal/util/zzcn;->zzb(Landroid/util/Range;)[Ljava/lang/Integer;

    .line 291
    .line 292
    .line 293
    move-result-object v11

    .line 294
    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 298
    .line 299
    new-array v11, v3, [J

    .line 300
    .line 301
    fill-array-data v11, :array_6

    .line 302
    .line 303
    .line 304
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v10

    .line 311
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedWidths()Landroid/util/Range;

    .line 312
    .line 313
    .line 314
    move-result-object v11

    .line 315
    invoke-static {v11}, Lcom/google/android/gms/ads/internal/util/zzcn;->zzb(Landroid/util/Range;)[Ljava/lang/Integer;

    .line 316
    .line 317
    .line 318
    move-result-object v11

    .line 319
    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 323
    .line 324
    new-array v11, v3, [J

    .line 325
    .line 326
    fill-array-data v11, :array_7

    .line 327
    .line 328
    .line 329
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v10

    .line 336
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedHeights()Landroid/util/Range;

    .line 337
    .line 338
    .line 339
    move-result-object v4

    .line 340
    invoke-static {v4}, Lcom/google/android/gms/ads/internal/util/zzcn;->zzb(Landroid/util/Range;)[Ljava/lang/Integer;

    .line 341
    .line 342
    .line 343
    move-result-object v4

    .line 344
    invoke-virtual {v9, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 348
    .line 349
    const/16 v10, 0x17

    .line 350
    .line 351
    if-lt v4, v10, :cond_4

    .line 352
    .line 353
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 354
    .line 355
    const/4 v10, 0x3

    .line 356
    new-array v11, v10, [J

    .line 357
    .line 358
    fill-array-data v11, :array_8

    .line 359
    .line 360
    .line 361
    invoke-direct {v4, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v4

    .line 368
    invoke-static {v8}, L땸듬땠뒝드딻돳땟뒉땠따듰땮될듨뎽두딻둥뎡딸땵땄땸돶둡돸뎽땹득뒋딸딃딟되땮딅되됴두땪땥땠땥돵뒘뒵돠뒤따딎딀듔땅둥둬땠듌돛둥둑땝땔딠뒬둡뎹돵뒋듸둣돤둬둘돸땸듐둡뒵될들땹돤듨땔땥땅땔둬뎸딹됫뒹뒘뒉둔든돷땬뎬딎땵땯된뒙땩돷땃뎸딠돨돤돸딌듽뒛됫뒻딐땃뒨따도뎰듨딁됨듼뎬둡;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroid/media/MediaCodecInfo$CodecCapabilities;)I

    .line 369
    .line 370
    .line 371
    move-result v8

    .line 372
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 373
    .line 374
    .line 375
    move-result-object v8

    .line 376
    invoke-virtual {v9, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    goto :goto_3

    .line 380
    :cond_4
    const/4 v10, 0x3

    .line 381
    :goto_3
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    .line 383
    .line 384
    const/4 v4, 0x3

    .line 385
    goto/16 :goto_1

    .line 386
    .line 387
    :cond_5
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzcn;->zza:Ljava/util/Map;

    .line 388
    .line 389
    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 390
    .line 391
    .line 392
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 393
    return-object v6

    .line 394
    :goto_4
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 395
    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 396
    :goto_5
    :try_start_7
    new-instance v2, Ljava/util/HashMap;

    .line 397
    .line 398
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 399
    .line 400
    .line 401
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 402
    .line 403
    new-array v3, v3, [J

    .line 404
    .line 405
    fill-array-data v3, :array_9

    .line 406
    .line 407
    .line 408
    invoke-direct {v4, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 409
    .line 410
    .line 411
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v3

    .line 415
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 416
    .line 417
    .line 418
    move-result-object v0

    .line 419
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v0

    .line 423
    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    new-instance v0, Ljava/util/ArrayList;

    .line 427
    .line 428
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 429
    .line 430
    .line 431
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    .line 433
    .line 434
    sget-object v2, Lcom/google/android/gms/ads/internal/util/zzcn;->zza:Ljava/util/Map;

    .line 435
    .line 436
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    .line 438
    .line 439
    monitor-exit v5

    .line 440
    return-object v0

    .line 441
    :goto_6
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 442
    throw v0

    .line 443
    :array_0
    .array-data 8
        0x7da1d52b1ff7987fL    # 1.457815556057536E297
        0x740d8eec8e48a542L    # 1.0581465366895865E251
        0x2a661ff7e5d6831dL
    .end array-data

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
    :array_1
    .array-data 8
        -0x5280d95184734ea7L    # -1.5292366092365315E-89
        0x2e78182453611de9L    # 7.751676180712444E-85
        0x39a6d045b6b42e13L    # 5.623977671354862E-31
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
    :array_2
    .array-data 8
        -0x708d40dc1e3692abL    # -2.947995735394162E-234
        0x4e16f1d11a2bee66L    # 1.546462771596766E68
        -0x4e747f5fe5480632L    # -4.981065953618228E-70
    .end array-data

    .line 476
    .line 477
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
    :array_3
    .array-data 8
        -0x35be3fbc710bb71dL    # -5.188632133124442E49
        -0x265fe8ab006e24d8L    # -5.318572309271055E123
        0x67d7f69c5a359ef0L    # 1.70830061437295E192
    .end array-data

    .line 492
    .line 493
    .line 494
    .line 495
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
    :array_4
    .array-data 8
        -0x532ccc5ba26f6a42L    # -9.205378066474987E-93
        0x1270f8e78f774cb7L    # 7.512482046688366E-220
        -0x45a770ac1438c3d2L    # -1.2399567781746775E-27
    .end array-data

    .line 508
    .line 509
    .line 510
    .line 511
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
    :array_5
    .array-data 8
        0x325811dce907567L
        -0x240587c7cb80ed5eL    # -1.2024459897505952E135
        -0xf5882a6a61f3ecaL    # -4.667916580394992E234
    .end array-data

    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
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
    :array_6
    .array-data 8
        0x2df8706aa4e269adL    # 3.071333374138377E-87
        -0x40a9ecf38dc8b4dL    # -1.302196299877952E289
    .end array-data

    .line 540
    .line 541
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
    :array_7
    .array-data 8
        0x7b7a73e50c475876L    # 6.2937012181259296E286
        0x2fc6dea7e94a9d43L    # 1.5430235356037413E-78
    .end array-data

    .line 552
    .line 553
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
    :array_8
    .array-data 8
        0x31a1567ad7d0062L
        0x786f0fc5350d11c8L    # 1.3127739949569607E272
        -0x36cc45b87cf87be5L    # -4.399413781713336E44
    .end array-data

    .line 564
    .line 565
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
    .line 578
    .line 579
    :array_9
    .array-data 8
        0x372f5293444e5c13L    # 7.022760749586157E-43
        -0x36bec570137b6ef0L    # -7.684283114473296E44
    .end array-data
.end method

.method private static zzb(Landroid/util/Range;)[Ljava/lang/Integer;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Ljava/lang/Integer;

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    new-array v1, v1, [Ljava/lang/Integer;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    aput-object v0, v1, v2

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    aput-object p0, v1, v0

    .line 21
    .line 22
    return-object v1
.end method
