.class public final Lcom/google/android/gms/internal/ads/zzfxt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static zza(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfxd;->zza(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    :cond_0
    return-object p0
.end method

.method public static varargs zzb(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 13
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x5

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x0

    .line 5
    :goto_0
    array-length v4, p1

    .line 6
    if-ge v3, v4, :cond_1

    .line 7
    .line 8
    aget-object v4, p1, v3

    .line 9
    .line 10
    if-nez v4, :cond_0

    .line 11
    .line 12
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 13
    .line 14
    new-array v5, v1, [J

    .line 15
    .line 16
    fill-array-data v5, :array_0

    .line 17
    .line 18
    .line 19
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    goto/16 :goto_1

    .line 27
    .line 28
    :cond_0
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    goto/16 :goto_1

    .line 33
    .line 34
    :catch_0
    move-exception v11

    .line 35
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-static {v5}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 56
    .line 57
    new-array v7, v1, [J

    .line 58
    .line 59
    fill-array-data v7, :array_1

    .line 60
    .line 61
    .line 62
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 63
    .line 64
    .line 65
    invoke-static {v6, v5, v4}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 70
    .line 71
    const/4 v6, 0x6

    .line 72
    new-array v6, v6, [J

    .line 73
    .line 74
    fill-array-data v6, :array_2

    .line 75
    .line 76
    .line 77
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 85
    .line 86
    new-array v7, v0, [J

    .line 87
    .line 88
    fill-array-data v7, :array_3

    .line 89
    .line 90
    .line 91
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    invoke-static {v6}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    sget-object v7, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 103
    .line 104
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 105
    .line 106
    new-array v9, v0, [J

    .line 107
    .line 108
    fill-array-data v9, :array_4

    .line 109
    .line 110
    .line 111
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v8

    .line 118
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 119
    .line 120
    const/4 v10, 0x3

    .line 121
    new-array v10, v10, [J

    .line 122
    .line 123
    fill-array-data v10, :array_5

    .line 124
    .line 125
    .line 126
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v9

    .line 133
    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v10

    .line 137
    move-object v5, v6

    .line 138
    move-object v6, v7

    .line 139
    move-object v7, v8

    .line 140
    move-object v8, v9

    .line 141
    move-object v9, v10

    .line 142
    move-object v10, v11

    .line 143
    invoke-virtual/range {v5 .. v10}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v5

    .line 154
    new-instance v6, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .line 158
    .line 159
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 160
    .line 161
    new-array v8, v1, [J

    .line 162
    .line 163
    fill-array-data v8, :array_6

    .line 164
    .line 165
    .line 166
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v7

    .line 173
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 180
    .line 181
    new-array v7, v1, [J

    .line 182
    .line 183
    fill-array-data v7, :array_7

    .line 184
    .line 185
    .line 186
    invoke-direct {v4, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v4

    .line 193
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 200
    .line 201
    new-array v5, v1, [J

    .line 202
    .line 203
    fill-array-data v5, :array_8

    .line 204
    .line 205
    .line 206
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 207
    .line 208
    .line 209
    invoke-static {v4, v6}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v4

    .line 213
    :goto_1
    aput-object v4, p1, v3

    .line 214
    .line 215
    add-int/lit8 v3, v3, 0x1

    .line 216
    .line 217
    goto/16 :goto_0

    .line 218
    .line 219
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    mul-int/lit8 v4, v4, 0x10

    .line 224
    .line 225
    new-instance v3, Ljava/lang/StringBuilder;

    .line 226
    .line 227
    add-int/2addr v0, v4

    .line 228
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 229
    .line 230
    .line 231
    const/4 v0, 0x0

    .line 232
    :goto_2
    array-length v4, p1

    .line 233
    if-ge v2, v4, :cond_3

    .line 234
    .line 235
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 236
    .line 237
    new-array v6, v1, [J

    .line 238
    .line 239
    fill-array-data v6, :array_9

    .line 240
    .line 241
    .line 242
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v5

    .line 249
    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 250
    .line 251
    .line 252
    move-result v5

    .line 253
    const/4 v6, -0x1

    .line 254
    if-ne v5, v6, :cond_2

    .line 255
    .line 256
    goto :goto_3

    .line 257
    :cond_2
    invoke-virtual {v3, p0, v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    add-int/lit8 v0, v2, 0x1

    .line 261
    .line 262
    aget-object v2, p1, v2

    .line 263
    .line 264
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    add-int/lit8 v2, v5, 0x2

    .line 268
    .line 269
    move v12, v2

    .line 270
    move v2, v0

    .line 271
    move v0, v12

    .line 272
    goto :goto_2

    .line 273
    :cond_3
    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 274
    .line 275
    .line 276
    move-result v5

    .line 277
    invoke-virtual {v3, p0, v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    if-ge v2, v4, :cond_5

    .line 281
    .line 282
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 283
    .line 284
    new-array v0, v1, [J

    .line 285
    .line 286
    fill-array-data v0, :array_a

    .line 287
    .line 288
    .line 289
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object p0

    .line 296
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    add-int/lit8 p0, v2, 0x1

    .line 300
    .line 301
    aget-object v0, p1, v2

    .line 302
    .line 303
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    :goto_4
    array-length v0, p1

    .line 307
    if-ge p0, v0, :cond_4

    .line 308
    .line 309
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 310
    .line 311
    new-array v2, v1, [J

    .line 312
    .line 313
    fill-array-data v2, :array_b

    .line 314
    .line 315
    .line 316
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    add-int/lit8 v0, p0, 0x1

    .line 327
    .line 328
    aget-object p0, p1, p0

    .line 329
    .line 330
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    move p0, v0

    .line 334
    goto :goto_4

    .line 335
    :cond_4
    const/16 p0, 0x5d

    .line 336
    .line 337
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object p0

    .line 344
    return-object p0

    .line 345
    :array_0
    .array-data 8
        0x78550bd7ecae0feaL
        -0x32832140510bc7d0L    # -1.90023605813833E65
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
    :array_1
    .array-data 8
        0x6e0a740bb509aa70L    # 1.1952719796141156E222
        0x2b0843be8c82b953L    # 2.16673139916963E-101
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
    :array_2
    .array-data 8
        0x7004e4eb5865abdbL    # 4.05483106191659E231
        0xd9d687ebb5b4382L
        0x6574908ecca36c6fL    # 5.33334096582255E180
        0x73713cd8e5bc4dacL
        -0x3c0be1ea75d8b867L    # -2.3193917010696835E19
        -0x519bff9a9c47fb49L    # -3.217472358748877E-85
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
    :array_3
    .array-data 8
        0x295cfee5bfb78f3L
        0x2b4e5f1342c533L
        0x698736f2d73aa636L    # 2.221207557384622E200
        0x774daa82aba85486L    # 4.782841596323733E266
        -0x559f32aadd88aa8cL
    .end array-data

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
    .line 420
    .line 421
    :array_4
    .array-data 8
        0x65245e43fb20134eL    # 1.65074738178778E179
        -0x1199025c368a0f6eL    # -6.648451572314181E223
        -0x2a64f6d486e7f6cfL    # -2.422133391596394E104
        0x533e4a14caa47bc9L    # 9.872089001631363E92
        -0x78cd975f796116deL    # -5.317004908562003E-274
    .end array-data

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
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    :array_5
    .array-data 8
        0x1dc2452da1fcbfc8L
        -0x4ee41501450d6dd1L    # -3.9502498450347655E-72
        -0x27c591674c89bcebL    # -1.0414745186068082E117
    .end array-data

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
    :array_6
    .array-data 8
        0x6e010383706b6a75L    # 7.687519209589783E221
        -0x51eff24c7e5b21fdL    # -8.069962916130293E-87
    .end array-data

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
    :array_7
    .array-data 8
        0x4d0c733b06d9dbecL    # 1.4629625366658674E63
        0x37d103bc55a76eebL    # 7.812717724363519E-40
    .end array-data

    .line 474
    .line 475
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
    :array_8
    .array-data 8
        0x673c805775eed912L    # 1.9841864987182286E189
        -0x408b7feab8cc15f6L    # -0.00500496207973323
    .end array-data

    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    :array_9
    .array-data 8
        -0x1a06503da0d3e19L
        -0x2add6b8d0c100eL
    .end array-data

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
    .line 508
    .line 509
    :array_a
    .array-data 8
        -0x354c7e5fd6bd634eL    # -7.298192033849815E51
        0x59f2df4279b2800bL    # 1.9960831507921584E125
    .end array-data

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
    :array_b
    .array-data 8
        0x47acaec0a72bc08cL    # 1.9062875501325188E37
        -0x70ce43dab0d9c913L    # -1.743063577435721E-235
    .end array-data
.end method

.method public static zzc(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    if-nez p0, :cond_0

    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v0, 0x1

    new-array v0, v0, [J

    const-wide v1, -0x685d2886c6b3c86bL    # -8.065898421432972E-195

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static zzd(Ljava/lang/String;)Z
    .locals 0
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfxd;->zza(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method
