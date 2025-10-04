.class public final Lcom/google/android/gms/internal/ads/zzhu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Ljava/util/regex/Pattern;

.field private static final zzb:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x5

    new-array v2, v1, [J

    fill-array-data v2, :array_0

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhu;->zza:Ljava/util/regex/Pattern;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    fill-array-data v1, :array_1

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhu;->zzb:Ljava/util/regex/Pattern;

    return-void

    :array_0
    .array-data 8
        0x3e85f5f98a4f6ef8L    # 1.636210004419989E-7
        -0x5140ca3ff9822cecL    # -1.6065507328254074E-83
        -0x79151486e314aa78L    # -2.429775093178218E-275
        -0x59e84ac4d8f4b8d9L    # -3.502317540316742E-125
        0x48db897812185471L    # 9.595240022960003E42
    .end array-data

    :array_1
    .array-data 8
        0x54fc40f47c6ac623L    # 2.471919705839506E101
        -0x44c1ff85c2f3e92aL    # -2.481696124293832E-23
        0x367ea2b66e00fc2bL    # 3.353876081841252E-46
        -0x67c4bb38e2cb668eL
        -0x21fd1d4aec9774ecL    # -7.369502241458796E144
    .end array-data
.end method

.method public static zza(Ljava/lang/String;Ljava/lang/String;)J
    .locals 10
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x5

    .line 2
    const/4 v1, 0x2

    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    const-wide/16 v3, -0x1

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 12
    .line 13
    .line 14
    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    goto :goto_0

    .line 16
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 22
    .line 23
    new-array v6, v0, [J

    .line 24
    .line 25
    fill-array-data v6, :array_0

    .line 26
    .line 27
    .line 28
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 42
    .line 43
    new-array v6, v1, [J

    .line 44
    .line 45
    fill-array-data v6, :array_1

    .line 46
    .line 47
    .line 48
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 49
    .line 50
    .line 51
    invoke-static {v5, v2}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 56
    .line 57
    new-array v6, v1, [J

    .line 58
    .line 59
    fill-array-data v6, :array_2

    .line 60
    .line 61
    .line 62
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    invoke-static {v5, v2}, Lcom/google/android/gms/internal/ads/zzff;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :cond_0
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-nez v2, :cond_4

    .line 77
    .line 78
    sget-object v2, Lcom/google/android/gms/internal/ads/zzhu;->zza:Ljava/util/regex/Pattern;

    .line 79
    .line 80
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    if-eqz v5, :cond_4

    .line 89
    .line 90
    :try_start_1
    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    const/4 v6, 0x0

    .line 95
    if-eqz v5, :cond_3

    .line 96
    .line 97
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 98
    .line 99
    .line 100
    move-result-wide v7

    .line 101
    const/4 v5, 0x1

    .line 102
    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    if-eqz v2, :cond_2

    .line 107
    .line 108
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 109
    .line 110
    .line 111
    move-result-wide v5

    .line 112
    sub-long/2addr v7, v5

    .line 113
    const-wide/16 v5, 0x0

    .line 114
    .line 115
    cmp-long v2, v3, v5

    .line 116
    .line 117
    const-wide/16 v5, 0x1

    .line 118
    .line 119
    add-long/2addr v7, v5

    .line 120
    if-gez v2, :cond_1

    .line 121
    .line 122
    move-wide v3, v7

    .line 123
    goto/16 :goto_1

    .line 124
    .line 125
    :cond_1
    cmp-long v2, v3, v7

    .line 126
    .line 127
    if-eqz v2, :cond_4

    .line 128
    .line 129
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 130
    .line 131
    new-array v5, v1, [J

    .line 132
    .line 133
    fill-array-data v5, :array_3

    .line 134
    .line 135
    .line 136
    invoke-direct {v2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    new-instance v5, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .line 147
    .line 148
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 149
    .line 150
    const/4 v9, 0x4

    .line 151
    new-array v9, v9, [J

    .line 152
    .line 153
    fill-array-data v9, :array_4

    .line 154
    .line 155
    .line 156
    invoke-direct {v6, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v6

    .line 163
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 170
    .line 171
    new-array v6, v1, [J

    .line 172
    .line 173
    fill-array-data v6, :array_5

    .line 174
    .line 175
    .line 176
    invoke-direct {p0, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 190
    .line 191
    new-array v6, v1, [J

    .line 192
    .line 193
    fill-array-data v6, :array_6

    .line 194
    .line 195
    .line 196
    invoke-direct {p0, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p0

    .line 203
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p0

    .line 210
    invoke-static {v2, p0}, Lcom/google/android/gms/internal/ads/zzff;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->max(JJ)J

    .line 214
    .line 215
    .line 216
    move-result-wide v3

    .line 217
    goto :goto_1

    .line 218
    :cond_2
    throw v6

    .line 219
    :cond_3
    throw v6
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 220
    :catch_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 221
    .line 222
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 223
    .line 224
    .line 225
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 226
    .line 227
    new-array v0, v0, [J

    .line 228
    .line 229
    fill-array-data v0, :array_7

    .line 230
    .line 231
    .line 232
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 246
    .line 247
    new-array v0, v1, [J

    .line 248
    .line 249
    fill-array-data v0, :array_8

    .line 250
    .line 251
    .line 252
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 253
    .line 254
    .line 255
    invoke-static {p1, p0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object p0

    .line 259
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 260
    .line 261
    new-array v0, v1, [J

    .line 262
    .line 263
    fill-array-data v0, :array_9

    .line 264
    .line 265
    .line 266
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object p1

    .line 273
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzff;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    :cond_4
    :goto_1
    return-wide v3

    .line 277
    :array_0
    .array-data 8
        0x503b19e1774cec7aL    # 3.138092594593369E78
        -0x5ae2dbe8473cca7dL    # -6.568801502628595E-130
        0x59fa447a4e89ec7dL    # 2.7782851005278073E125
        0x4c417db92bdd25bL
        -0x6fac631ce3c89945L    # -5.053168919373218E-230
    .end array-data

    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    :array_1
    .array-data 8
        0x45e8ef8d38a0957dL    # 6.173792323890578E28
        -0x2a3b4f53380793a6L    # -1.4828999771524158E105
    .end array-data

    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    :array_2
    .array-data 8
        -0x21d915606b4407e3L    # -3.5769771444316475E145
        0x43086fe570f6d751L    # 8.598038343093541E14
    .end array-data

    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    :array_3
    .array-data 8
        -0x7839c66b78fa4e4aL    # -3.286655408477463E-271
        0x6257a178787cf439L    # 5.4432093360594725E165
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
    :array_4
    .array-data 8
        0x23c24ce513b1f38bL    # 1.967033941052325E-136
        0x5fedc53beaeb0e3fL    # 1.2473637985353136E154
        -0x24a8e301c03ad511L    # -1.025366726037079E132
        0x7e065ddd0618f7b5L    # 1.1702178743601464E299
    .end array-data

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
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    :array_5
    .array-data 8
        -0x3d4dcfb5de8e8aa7L    # -1.9998611435893348E13
        -0x6359cbb8058088aeL
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
    :array_6
    .array-data 8
        -0x5c6cdff8e7c6f3L    # -6.87291351703397E306
        0x4d42fa72ca2dce0aL    # 1.5614451132041658E64
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
    :array_7
    .array-data 8
        -0xe187bededbbbe16L    # -4.9001364244696E240
        -0x59fab64a79714b30L    # -1.57240773280403E-125
        0xbee307ac2a94932L
        -0x5dec3b4e6b52c6abL
        0x15348e37714d2ec8L
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
    :array_8
    .array-data 8
        -0xf7c11dab30cb281L    # -9.901466896523527E233
        0x2a0bfbc589ba8ec4L
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
    :array_9
    .array-data 8
        -0x45311775fb3aa842L    # -1.9974056911576403E-25
        0x6f6c365d0da5cf12L    # 5.3467035229761796E228
    .end array-data
.end method

.method public static zzb(Ljava/lang/String;)J
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhu;->zzb:Ljava/util/regex/Pattern;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    return-wide v0

    .line 33
    :cond_1
    :goto_0
    const-wide/16 v0, -0x1

    .line 34
    .line 35
    return-wide v0
.end method
