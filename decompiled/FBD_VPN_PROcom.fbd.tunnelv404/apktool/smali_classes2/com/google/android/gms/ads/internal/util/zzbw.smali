.class public final Lcom/google/android/gms/ads/internal/util/zzbw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Lcom/google/android/gms/ads/internal/util/zzbv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/internal/util/zzbu;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/util/zzbu;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/util/zzbw;->zza:Lcom/google/android/gms/ads/internal/util/zzbv;

    return-void
.end method

.method public static zza(Lorg/json/JSONObject;)Landroid/os/Bundle;
    .locals 12
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    return-object v2

    .line 7
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    new-instance v4, Landroid/os/Bundle;

    .line 12
    .line 13
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 14
    .line 15
    .line 16
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    if-eqz v5, :cond_16

    .line 21
    .line 22
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    check-cast v5, Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    if-eqz v6, :cond_1

    .line 33
    .line 34
    instance-of v7, v6, Ljava/lang/Boolean;

    .line 35
    .line 36
    if-eqz v7, :cond_2

    .line 37
    .line 38
    check-cast v6, Ljava/lang/Boolean;

    .line 39
    .line 40
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    instance-of v7, v6, Ljava/lang/Double;

    .line 49
    .line 50
    if-eqz v7, :cond_3

    .line 51
    .line 52
    check-cast v6, Ljava/lang/Double;

    .line 53
    .line 54
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    .line 55
    .line 56
    .line 57
    move-result-wide v6

    .line 58
    invoke-virtual {v4, v5, v6, v7}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    instance-of v7, v6, Ljava/lang/Integer;

    .line 63
    .line 64
    if-eqz v7, :cond_4

    .line 65
    .line 66
    check-cast v6, Ljava/lang/Integer;

    .line 67
    .line 68
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    invoke-virtual {v4, v5, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_4
    instance-of v7, v6, Ljava/lang/Long;

    .line 77
    .line 78
    if-eqz v7, :cond_5

    .line 79
    .line 80
    check-cast v6, Ljava/lang/Long;

    .line 81
    .line 82
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 83
    .line 84
    .line 85
    move-result-wide v6

    .line 86
    invoke-virtual {v4, v5, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_5
    instance-of v7, v6, Ljava/lang/String;

    .line 91
    .line 92
    if-eqz v7, :cond_6

    .line 93
    .line 94
    check-cast v6, Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {v4, v5, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_6
    instance-of v7, v6, Lorg/json/JSONArray;

    .line 101
    .line 102
    if-eqz v7, :cond_14

    .line 103
    .line 104
    check-cast v6, Lorg/json/JSONArray;

    .line 105
    .line 106
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    .line 107
    .line 108
    .line 109
    move-result v7

    .line 110
    if-eqz v7, :cond_1

    .line 111
    .line 112
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    .line 113
    .line 114
    .line 115
    move-result v7

    .line 116
    move-object v8, v2

    .line 117
    const/4 v9, 0x0

    .line 118
    :goto_1
    if-nez v8, :cond_8

    .line 119
    .line 120
    if-ge v9, v7, :cond_8

    .line 121
    .line 122
    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->isNull(I)Z

    .line 123
    .line 124
    .line 125
    move-result v8

    .line 126
    if-nez v8, :cond_7

    .line 127
    .line 128
    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v8

    .line 132
    goto :goto_2

    .line 133
    :cond_7
    move-object v8, v2

    .line 134
    :goto_2
    add-int/2addr v9, v1

    .line 135
    goto :goto_1

    .line 136
    :cond_8
    if-nez v8, :cond_9

    .line 137
    .line 138
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 143
    .line 144
    const/16 v7, 0x9

    .line 145
    .line 146
    new-array v7, v7, [J

    .line 147
    .line 148
    fill-array-data v7, :array_0

    .line 149
    .line 150
    .line 151
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 152
    .line 153
    .line 154
    invoke-static {v6, v5}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬땀뎰뎠땹딄딄딃땠돠땝딄딞돵딅따뒹딽딜땋딄딽돶돰둘둑땯땧땟딟뎠돝땠둣땧될듐뒉도땡둡듼둥됩들돰듐땝따듸땮뒤땧두뎹뒉땬땰뒋땋둘돷땬땫딎뎹뎰돼듬딜땻땐땔딃뎡돶딄듔딅땣듐듰땤따뒝둠딽듨딎듼땭뒻땮땹따뎠둡두딝둣땲돸돛두땅돳뒋둔듰돨됨딄땹땧뒉땳둘뎨땣딝듰딻땱땮딻딁뒨됴땨둥(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    goto/16 :goto_0

    .line 158
    .line 159
    :cond_9
    instance-of v9, v8, Lorg/json/JSONObject;

    .line 160
    .line 161
    if-eqz v9, :cond_c

    .line 162
    .line 163
    new-array v8, v7, [Landroid/os/Bundle;

    .line 164
    .line 165
    const/4 v9, 0x0

    .line 166
    :goto_3
    if-ge v9, v7, :cond_b

    .line 167
    .line 168
    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->isNull(I)Z

    .line 169
    .line 170
    .line 171
    move-result v10

    .line 172
    if-nez v10, :cond_a

    .line 173
    .line 174
    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 175
    .line 176
    .line 177
    move-result-object v10

    .line 178
    invoke-static {v10}, Lcom/google/android/gms/ads/internal/util/zzbw;->zza(Lorg/json/JSONObject;)Landroid/os/Bundle;

    .line 179
    .line 180
    .line 181
    move-result-object v10

    .line 182
    goto :goto_4

    .line 183
    :cond_a
    move-object v10, v2

    .line 184
    :goto_4
    aput-object v10, v8, v9

    .line 185
    .line 186
    add-int/2addr v9, v1

    .line 187
    goto :goto_3

    .line 188
    :cond_b
    invoke-virtual {v4, v5, v8}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 189
    .line 190
    .line 191
    goto/16 :goto_0

    .line 192
    .line 193
    :cond_c
    instance-of v9, v8, Ljava/lang/Number;

    .line 194
    .line 195
    if-eqz v9, :cond_e

    .line 196
    .line 197
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    .line 198
    .line 199
    .line 200
    move-result v8

    .line 201
    new-array v8, v8, [D

    .line 202
    .line 203
    const/4 v9, 0x0

    .line 204
    :goto_5
    if-ge v9, v7, :cond_d

    .line 205
    .line 206
    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->optDouble(I)D

    .line 207
    .line 208
    .line 209
    move-result-wide v10

    .line 210
    aput-wide v10, v8, v9

    .line 211
    .line 212
    add-int/2addr v9, v1

    .line 213
    goto :goto_5

    .line 214
    :cond_d
    invoke-virtual {v4, v5, v8}, Landroid/os/BaseBundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 215
    .line 216
    .line 217
    goto/16 :goto_0

    .line 218
    .line 219
    :cond_e
    instance-of v9, v8, Ljava/lang/CharSequence;

    .line 220
    .line 221
    if-eqz v9, :cond_11

    .line 222
    .line 223
    new-array v8, v7, [Ljava/lang/String;

    .line 224
    .line 225
    const/4 v9, 0x0

    .line 226
    :goto_6
    if-ge v9, v7, :cond_10

    .line 227
    .line 228
    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->isNull(I)Z

    .line 229
    .line 230
    .line 231
    move-result v10

    .line 232
    if-nez v10, :cond_f

    .line 233
    .line 234
    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v10

    .line 238
    goto :goto_7

    .line 239
    :cond_f
    move-object v10, v2

    .line 240
    :goto_7
    aput-object v10, v8, v9

    .line 241
    .line 242
    add-int/2addr v9, v1

    .line 243
    goto :goto_6

    .line 244
    :cond_10
    invoke-virtual {v4, v5, v8}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    goto/16 :goto_0

    .line 248
    .line 249
    :cond_11
    instance-of v9, v8, Ljava/lang/Boolean;

    .line 250
    .line 251
    if-eqz v9, :cond_13

    .line 252
    .line 253
    new-array v8, v7, [Z

    .line 254
    .line 255
    const/4 v9, 0x0

    .line 256
    :goto_8
    if-ge v9, v7, :cond_12

    .line 257
    .line 258
    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->optBoolean(I)Z

    .line 259
    .line 260
    .line 261
    move-result v10

    .line 262
    aput-boolean v10, v8, v9

    .line 263
    .line 264
    add-int/2addr v9, v1

    .line 265
    goto :goto_8

    .line 266
    :cond_12
    invoke-virtual {v4, v5, v8}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 267
    .line 268
    .line 269
    goto/16 :goto_0

    .line 270
    .line 271
    :cond_13
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 272
    .line 273
    .line 274
    move-result-object v6

    .line 275
    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v6

    .line 279
    const/4 v7, 0x2

    .line 280
    new-array v7, v7, [Ljava/lang/Object;

    .line 281
    .line 282
    aput-object v6, v7, v0

    .line 283
    .line 284
    aput-object v5, v7, v1

    .line 285
    .line 286
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 287
    .line 288
    const/4 v6, 0x7

    .line 289
    new-array v6, v6, [J

    .line 290
    .line 291
    fill-array-data v6, :array_1

    .line 292
    .line 293
    .line 294
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v5

    .line 301
    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v5

    .line 305
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzcec;->zzj(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    goto/16 :goto_0

    .line 309
    .line 310
    :cond_14
    instance-of v7, v6, Lorg/json/JSONObject;

    .line 311
    .line 312
    if-eqz v7, :cond_15

    .line 313
    .line 314
    check-cast v6, Lorg/json/JSONObject;

    .line 315
    .line 316
    invoke-static {v6}, Lcom/google/android/gms/ads/internal/util/zzbw;->zza(Lorg/json/JSONObject;)Landroid/os/Bundle;

    .line 317
    .line 318
    .line 319
    move-result-object v6

    .line 320
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 321
    .line 322
    .line 323
    goto/16 :goto_0

    .line 324
    .line 325
    :cond_15
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v5

    .line 329
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 330
    .line 331
    const/4 v7, 0x5

    .line 332
    new-array v7, v7, [J

    .line 333
    .line 334
    fill-array-data v7, :array_2

    .line 335
    .line 336
    .line 337
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 338
    .line 339
    .line 340
    invoke-static {v6, v5}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬땀뎰뎠땹딄딄딃땠돠땝딄딞돵딅따뒹딽딜땋딄딽돶돰둘둑땯땧땟딟뎠돝땠둣땧될듐뒉도땡둡듼둥됩들돰듐땝따듸땮뒤땧두뎹뒉땬땰뒋땋둘돷땬땫딎뎹뎰돼듬딜땻땐땔딃뎡돶딄듔딅땣듐듰땤따뒝둠딽듨딎듼땭뒻땮땹따뎠둡두딝둣땲돸돛두땅돳뒋둔듰돨됨딄땹땧뒉땳둘뎨땣딝듰딻땱땮딻딁뒨됴땨둥(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    goto/16 :goto_0

    .line 344
    .line 345
    :cond_16
    return-object v4

    .line 346
    nop

    .line 347
    :array_0
    .array-data 8
        -0x3563768a8688eba0L    # -2.669235030346474E51
        0x511d96ba623d2b3dL    # 5.613398960937305E82
        -0x2ca8f6d5948bacf2L    # -3.003184673408054E93
        -0x66413892d170852dL
        -0x283638bd63e4273L
        0x1c217fa1b7ac8e8dL    # 3.537486952401285E-173
        0x4aa2e12217e6724bL    # 3.5318160259491595E51
        -0x5b002761a8f7cfcbL
        0x75ca885024cc30aL
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
    .line 386
    .line 387
    :array_1
    .array-data 8
        0x4b8e88cc19fbe14cL    # 9.358755439375207E55
        0x4aa4d7e19bdf500dL    # 3.899199617076294E51
        -0x1e5ecade9b98171cL    # -1.935381064036211E162
        -0x42ab2314d1deb74dL    # -2.9648054415066664E-13
        0x1e736ac2ef4da6a0L    # 5.394923601397676E-162
        0x6c0332c692bfc084L    # 2.019717811338453E212
        -0x7a1b9a5fc623a4d8L    # -2.809181713060924E-280
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
    .line 416
    .line 417
    .line 418
    .line 419
    :array_2
    .array-data 8
        0xa2af3159eae351cL
        0x1bbc20e7163b246cL    # 4.44252119612377E-175
        0x2b57e5adbfc20663L    # 6.82854455692907E-100
        0x36ef8d36a1117aafL    # 4.4213229401278306E-44
        -0x415f75b32e803326L    # -4.929374055592808E-7
    .end array-data
.end method

.method public static varargs zzb(Ljava/lang/String;Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    new-array v0, v0, [J

    .line 5
    .line 6
    const-wide v1, 0x551472d0b76001c0L    # 7.156158471770339E101

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    aput-wide v1, v0, v3

    .line 13
    .line 14
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-static {p1, p2}, Lcom/google/android/gms/ads/internal/util/zzbw;->zzm(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONObject;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-nez p1, :cond_0

    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_0
    aget-object p2, p2, v3

    .line 29
    .line 30
    invoke-virtual {p1, p2, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method

.method public static zzc(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .param p0    # Lorg/json/JSONArray;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    new-instance p1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    :cond_0
    if-eqz p0, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-ge v0, v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    add-int/lit8 v0, v0, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    return-object p1
.end method

.method public static zzd(Landroid/util/JsonReader;)Ljava/util/List;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method

.method public static zze(Landroid/util/JsonReader;)Lorg/json/JSONArray;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONArray;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_5

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    sget-object v2, Landroid/util/JsonToken;->BEGIN_ARRAY:Landroid/util/JsonToken;

    .line 20
    .line 21
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/zzbw;->zze(Landroid/util/JsonReader;)Lorg/json/JSONArray;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    sget-object v2, Landroid/util/JsonToken;->BEGIN_OBJECT:Landroid/util/JsonToken;

    .line 36
    .line 37
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/zzbw;->zzh(Landroid/util/JsonReader;)Lorg/json/JSONObject;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    sget-object v2, Landroid/util/JsonToken;->BOOLEAN:Landroid/util/JsonToken;

    .line 52
    .line 53
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_2

    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextBoolean()Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    sget-object v2, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    .line 68
    .line 69
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-eqz v2, :cond_3

    .line 74
    .line 75
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextDouble()D

    .line 76
    .line 77
    .line 78
    move-result-wide v1

    .line 79
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_3
    sget-object v2, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    .line 84
    .line 85
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-eqz v2, :cond_4

    .line 90
    .line 91
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 100
    .line 101
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 106
    .line 107
    const/4 v2, 0x4

    .line 108
    new-array v2, v2, [J

    .line 109
    .line 110
    fill-array-data v2, :array_0

    .line 111
    .line 112
    .line 113
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    throw p0

    .line 128
    :cond_5
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    .line 129
    .line 130
    .line 131
    return-object v0

    .line 132
    nop

    .line 133
    :array_0
    .array-data 8
        0x34d03bcdde0b0f97L    # 2.648231202583463E-54
        -0x2211a7e31d9719bbL    # -2.9602166705234664E144
        -0x7b6eada17a2c646eL
        0x34b15ffac8b56592L    # 7.086040361580819E-55
    .end array-data
.end method

.method public static zzf(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    goto :goto_0

    .line 6
    :catch_0
    new-instance v0, Lorg/json/JSONObject;

    .line 7
    .line 8
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    .line 13
    .line 14
    move-object p0, v0

    .line 15
    :goto_0
    return-object p0
.end method

.method public static varargs zzg(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/ads/internal/util/zzbw;->zzm(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONObject;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    const/4 v0, 0x1

    .line 10
    aget-object p1, p1, v0

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static zzh(Landroid/util/JsonReader;)Lorg/json/JSONObject;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_5

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    sget-object v3, Landroid/util/JsonToken;->BEGIN_ARRAY:Landroid/util/JsonToken;

    .line 24
    .line 25
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/zzbw;->zze(Landroid/util/JsonReader;)Lorg/json/JSONArray;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    sget-object v3, Landroid/util/JsonToken;->BEGIN_OBJECT:Landroid/util/JsonToken;

    .line 40
    .line 41
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_1

    .line 46
    .line 47
    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/zzbw;->zzh(Landroid/util/JsonReader;)Lorg/json/JSONObject;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    sget-object v3, Landroid/util/JsonToken;->BOOLEAN:Landroid/util/JsonToken;

    .line 56
    .line 57
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-eqz v3, :cond_2

    .line 62
    .line 63
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextBoolean()Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    sget-object v3, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    .line 72
    .line 73
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-eqz v3, :cond_3

    .line 78
    .line 79
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextDouble()D

    .line 80
    .line 81
    .line 82
    move-result-wide v2

    .line 83
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_3
    sget-object v3, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    .line 88
    .line 89
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    if-eqz v3, :cond_4

    .line 94
    .line 95
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 104
    .line 105
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 110
    .line 111
    const/4 v2, 0x4

    .line 112
    new-array v2, v2, [J

    .line 113
    .line 114
    fill-array-data v2, :array_0

    .line 115
    .line 116
    .line 117
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    throw p0

    .line 132
    :cond_5
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 133
    .line 134
    .line 135
    return-object v0

    .line 136
    nop

    .line 137
    :array_0
    .array-data 8
        -0x24ea646ce24ec106L    # -5.991105255203284E130
        0x1e6279b02c76aab4L
        0x2a602f129307cf31L
        -0x339a14c8a5077483L    # -1.1006929733315539E60
    .end array-data
.end method

.method public static zzi(Landroid/util/JsonWriter;Lorg/json/JSONArray;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ge v0, v1, :cond_5

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    instance-of v2, v1, Ljava/lang/String;

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    check-cast v1, Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 22
    .line 23
    .line 24
    goto :goto_1

    .line 25
    :catch_0
    move-exception p0

    .line 26
    goto :goto_2

    .line 27
    :cond_0
    instance-of v2, v1, Ljava/lang/Number;

    .line 28
    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    check-cast v1, Ljava/lang/Number;

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/Number;)Landroid/util/JsonWriter;

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    instance-of v2, v1, Ljava/lang/Boolean;

    .line 38
    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    check-cast v1, Ljava/lang/Boolean;

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-virtual {p0, v1}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    instance-of v2, v1, Lorg/json/JSONObject;

    .line 52
    .line 53
    if-eqz v2, :cond_3

    .line 54
    .line 55
    check-cast v1, Lorg/json/JSONObject;

    .line 56
    .line 57
    invoke-static {p0, v1}, Lcom/google/android/gms/ads/internal/util/zzbw;->zzj(Landroid/util/JsonWriter;Lorg/json/JSONObject;)V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    instance-of v2, v1, Lorg/json/JSONArray;

    .line 62
    .line 63
    if-eqz v2, :cond_4

    .line 64
    .line 65
    check-cast v1, Lorg/json/JSONArray;

    .line 66
    .line 67
    invoke-static {p0, v1}, Lcom/google/android/gms/ads/internal/util/zzbw;->zzi(Landroid/util/JsonWriter;Lorg/json/JSONArray;)V

    .line 68
    .line 69
    .line 70
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_4
    new-instance p0, Lorg/json/JSONException;

    .line 74
    .line 75
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 85
    .line 86
    const/4 v2, 0x4

    .line 87
    new-array v2, v2, [J

    .line 88
    .line 89
    fill-array-data v2, :array_0

    .line 90
    .line 91
    .line 92
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-direct {p0, p1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw p0

    .line 113
    :cond_5
    invoke-virtual {p0}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :goto_2
    new-instance p1, Ljava/io/IOException;

    .line 118
    .line 119
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 120
    .line 121
    .line 122
    throw p1

    .line 123
    :array_0
    .array-data 8
        -0x776a4e09f3089fb0L
        0x76aeb3e19cad61e3L    # 4.8339510156739086E263
        0x682a4f82f7f52b8aL    # 6.002025719963206E193
        0x4ccddf5a51e14c42L    # 9.600642321326683E61
    .end array-data
.end method

.method public static zzj(Landroid/util/JsonWriter;Lorg/json/JSONObject;)V
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_5

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    instance-of v3, v2, Ljava/lang/String;

    .line 25
    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0, v1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v2, Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception p0

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    instance-of v3, v2, Ljava/lang/Number;

    .line 41
    .line 42
    if-eqz v3, :cond_1

    .line 43
    .line 44
    invoke-virtual {p0, v1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v2, Ljava/lang/Number;

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Landroid/util/JsonWriter;->value(Ljava/lang/Number;)Landroid/util/JsonWriter;

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    instance-of v3, v2, Ljava/lang/Boolean;

    .line 55
    .line 56
    if-eqz v3, :cond_2

    .line 57
    .line 58
    invoke-virtual {p0, v1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v2, Ljava/lang/Boolean;

    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    invoke-virtual {v1, v2}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    instance-of v3, v2, Lorg/json/JSONObject;

    .line 73
    .line 74
    if-eqz v3, :cond_3

    .line 75
    .line 76
    invoke-virtual {p0, v1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    check-cast v2, Lorg/json/JSONObject;

    .line 81
    .line 82
    invoke-static {v1, v2}, Lcom/google/android/gms/ads/internal/util/zzbw;->zzj(Landroid/util/JsonWriter;Lorg/json/JSONObject;)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_3
    instance-of v3, v2, Lorg/json/JSONArray;

    .line 87
    .line 88
    if-eqz v3, :cond_4

    .line 89
    .line 90
    invoke-virtual {p0, v1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    check-cast v2, Lorg/json/JSONArray;

    .line 95
    .line 96
    invoke-static {v1, v2}, Lcom/google/android/gms/ads/internal/util/zzbw;->zzi(Landroid/util/JsonWriter;Lorg/json/JSONArray;)V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_4
    new-instance p0, Lorg/json/JSONException;

    .line 101
    .line 102
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    .line 111
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 112
    .line 113
    const/4 v2, 0x4

    .line 114
    new-array v2, v2, [J

    .line 115
    .line 116
    fill-array-data v2, :array_0

    .line 117
    .line 118
    .line 119
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-direct {p0, p1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw p0

    .line 140
    :cond_5
    invoke-virtual {p0}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .line 142
    .line 143
    return-void

    .line 144
    :goto_1
    new-instance p1, Ljava/io/IOException;

    .line 145
    .line 146
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 147
    .line 148
    .line 149
    throw p1

    .line 150
    nop

    .line 151
    :array_0
    .array-data 8
        0x44326bb8c6393c07L    # 3.398035652336675E20
        0x14529e6c9eade059L    # 8.849032256826162E-211
        0x6f8c1cb713e26652L    # 2.1310864393430202E229
        0x132790ef29154078L
    .end array-data
.end method

.method public static varargs zzk(ZLorg/json/JSONObject;[Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p1, p2}, Lcom/google/android/gms/ads/internal/util/zzbw;->zzm(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONObject;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 p1, 0x0

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    return p1

    .line 9
    :cond_0
    array-length v0, p2

    .line 10
    add-int/lit8 v0, v0, -0x1

    .line 11
    .line 12
    aget-object p2, p2, v0

    .line 13
    .line 14
    invoke-virtual {p0, p2, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public static zzl(Lcom/google/android/gms/internal/ads/zzfgr;)Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Ljava/io/StringWriter;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 8
    .line 9
    .line 10
    :try_start_0
    new-instance v2, Landroid/util/JsonWriter;

    .line 11
    .line 12
    invoke-direct {v2, v1}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v2, p0}, Lcom/google/android/gms/ads/internal/util/zzbw;->zzn(Landroid/util/JsonWriter;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Landroid/util/JsonWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception p0

    .line 27
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 28
    .line 29
    const/4 v2, 0x4

    .line 30
    new-array v2, v2, [J

    .line 31
    .line 32
    fill-array-data v2, :array_0

    .line 33
    .line 34
    .line 35
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {v1, p0}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    :goto_0
    return-object v0

    .line 46
    nop

    .line 47
    :array_0
    .array-data 8
        -0x25d97edd50ac78fbL    # -1.9042165005987513E126
        0x4f9c7bac8e532e3fL    # 3.220818221685805E75
        0x29b1b432d691721aL    # 7.538249831434386E-108
        0x5e5a1b2f9feb6caeL    # 3.259879111392596E146
    .end array-data
.end method

.method private static zzm(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p1

    .line 3
    add-int/lit8 v1, v1, -0x1

    .line 4
    .line 5
    if-ge v0, v1, :cond_1

    .line 6
    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return-object p0

    .line 11
    :cond_0
    aget-object v1, p1, v0

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    add-int/lit8 v0, v0, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    return-object p0
.end method

.method private static zzn(Landroid/util/JsonWriter;Ljava/lang/Object;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/util/JsonWriter;->nullValue()Landroid/util/JsonWriter;

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    instance-of v0, p1, Ljava/lang/Number;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    check-cast p1, Ljava/lang/Number;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroid/util/JsonWriter;->value(Ljava/lang/Number;)Landroid/util/JsonWriter;

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    instance-of v0, p1, Ljava/lang/Boolean;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    check-cast p1, Ljava/lang/Boolean;

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    invoke-virtual {p0, p1}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_2
    instance-of v0, p1, Ljava/lang/String;

    .line 32
    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    check-cast p1, Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_3
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzfgr;

    .line 42
    .line 43
    if-eqz v0, :cond_4

    .line 44
    .line 45
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfgr;

    .line 46
    .line 47
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfgr;->zzd:Lorg/json/JSONObject;

    .line 48
    .line 49
    invoke-static {p0, p1}, Lcom/google/android/gms/ads/internal/util/zzbw;->zzj(Landroid/util/JsonWriter;Lorg/json/JSONObject;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_4
    instance-of v0, p1, Ljava/util/Map;

    .line 54
    .line 55
    if-eqz v0, :cond_7

    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 58
    .line 59
    .line 60
    check-cast p1, Ljava/util/Map;

    .line 61
    .line 62
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    :cond_5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_6

    .line 75
    .line 76
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Ljava/util/Map$Entry;

    .line 81
    .line 82
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    instance-of v2, v1, Ljava/lang/String;

    .line 87
    .line 88
    if-eqz v2, :cond_5

    .line 89
    .line 90
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    check-cast v1, Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {p0, v1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/zzbw;->zzn(Landroid/util/JsonWriter;Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_6
    invoke-virtual {p0}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :cond_7
    instance-of v0, p1, Ljava/util/List;

    .line 109
    .line 110
    if-eqz v0, :cond_9

    .line 111
    .line 112
    invoke-virtual {p0}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 113
    .line 114
    .line 115
    check-cast p1, Ljava/util/List;

    .line 116
    .line 117
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-eqz v0, :cond_8

    .line 126
    .line 127
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-static {p0, v0}, Lcom/google/android/gms/ads/internal/util/zzbw;->zzn(Landroid/util/JsonWriter;Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_8
    invoke-virtual {p0}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    .line 136
    .line 137
    .line 138
    return-void

    .line 139
    :cond_9
    invoke-virtual {p0}, Landroid/util/JsonWriter;->nullValue()Landroid/util/JsonWriter;

    .line 140
    .line 141
    .line 142
    return-void
.end method
