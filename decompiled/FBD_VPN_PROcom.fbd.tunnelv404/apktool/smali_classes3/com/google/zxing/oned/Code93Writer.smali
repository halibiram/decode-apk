.class public Lcom/google/zxing/oned/Code93Writer;
.super Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static appendPattern([ZII)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x9

    if-ge v1, v2, :cond_1

    rsub-int/lit8 v2, v1, 0x8

    const/4 v3, 0x1

    shl-int v2, v3, v2

    and-int/2addr v2, p2

    add-int v4, p1, v1

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 3
    :goto_1
    aput-boolean v3, p0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static appendPattern([ZI[IZ)I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    array-length p3, p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_1

    aget v2, p2, v1

    add-int/lit8 v3, p1, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 2
    :goto_1
    aput-boolean v2, p0, p1

    add-int/lit8 v1, v1, 0x1

    move p1, v3

    goto :goto_0

    :cond_1
    const/16 p0, 0x9

    return p0
.end method

.method private static computeChecksumIndex(Ljava/lang/String;I)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    sub-int/2addr v0, v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    :goto_0
    if-ltz v0, :cond_1

    .line 10
    .line 11
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 12
    .line 13
    const/4 v5, 0x7

    .line 14
    new-array v5, v5, [J

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
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    mul-int v4, v4, v3

    .line 35
    .line 36
    add-int/2addr v2, v4

    .line 37
    add-int/2addr v3, v1

    .line 38
    if-le v3, p1, :cond_0

    .line 39
    .line 40
    const/4 v3, 0x1

    .line 41
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    rem-int/lit8 v2, v2, 0x2f

    .line 45
    .line 46
    return v2

    .line 47
    :array_0
    .array-data 8
        -0x6413efac81ab67d6L
        0x5f771e408adaca58L    # 7.567480820582102E151
        0x6bc9d571d672752dL    # 1.698614149708742E211
        -0x1df747d3936cd5c3L    # -1.7793691997576535E164
        0x54aa56d67f96bc5bL    # 7.201307153144803E99
        -0x6ff63defe7df0f78L
        0x42101484df1c707bL    # 1.7265932231109844E10
    .end array-data
.end method

.method public static convertToExtended(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    const/16 v1, 0x40

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const/4 v4, 0x2

    .line 12
    mul-int/lit8 v5, v2, 0x2

    .line 13
    .line 14
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 15
    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    :goto_0
    if-ge v5, v2, :cond_f

    .line 19
    .line 20
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    .line 21
    .line 22
    .line 23
    move-result v6

    .line 24
    if-nez v6, :cond_0

    .line 25
    .line 26
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    new-array v7, v4, [J

    .line 29
    .line 30
    fill-array-data v7, :array_0

    .line 31
    .line 32
    .line 33
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    goto/16 :goto_2

    .line 44
    .line 45
    :cond_0
    const/16 v7, 0x1a

    .line 46
    .line 47
    if-gt v6, v7, :cond_1

    .line 48
    .line 49
    const/16 v7, 0x61

    .line 50
    .line 51
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    add-int/2addr v6, v1

    .line 55
    int-to-char v6, v6

    .line 56
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    goto/16 :goto_2

    .line 60
    .line 61
    :cond_1
    const/16 v7, 0x1f

    .line 62
    .line 63
    const/16 v8, 0x62

    .line 64
    .line 65
    if-gt v6, v7, :cond_2

    .line 66
    .line 67
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    add-int/lit8 v6, v6, 0x26

    .line 71
    .line 72
    int-to-char v6, v6

    .line 73
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    goto/16 :goto_2

    .line 77
    .line 78
    :cond_2
    if-eq v6, v0, :cond_e

    .line 79
    .line 80
    const/16 v7, 0x24

    .line 81
    .line 82
    if-eq v6, v7, :cond_e

    .line 83
    .line 84
    const/16 v7, 0x25

    .line 85
    .line 86
    if-eq v6, v7, :cond_e

    .line 87
    .line 88
    const/16 v7, 0x2b

    .line 89
    .line 90
    if-ne v6, v7, :cond_3

    .line 91
    .line 92
    goto/16 :goto_1

    .line 93
    .line 94
    :cond_3
    const/16 v7, 0x2c

    .line 95
    .line 96
    if-gt v6, v7, :cond_4

    .line 97
    .line 98
    const/16 v7, 0x63

    .line 99
    .line 100
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    add-int/2addr v6, v0

    .line 104
    int-to-char v6, v6

    .line 105
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    goto/16 :goto_2

    .line 109
    .line 110
    :cond_4
    const/16 v7, 0x39

    .line 111
    .line 112
    if-gt v6, v7, :cond_5

    .line 113
    .line 114
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    goto/16 :goto_2

    .line 118
    .line 119
    :cond_5
    const/16 v7, 0x3a

    .line 120
    .line 121
    if-ne v6, v7, :cond_6

    .line 122
    .line 123
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 124
    .line 125
    new-array v7, v4, [J

    .line 126
    .line 127
    fill-array-data v7, :array_1

    .line 128
    .line 129
    .line 130
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v6

    .line 137
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    goto/16 :goto_2

    .line 141
    .line 142
    :cond_6
    const/16 v7, 0x3f

    .line 143
    .line 144
    if-gt v6, v7, :cond_7

    .line 145
    .line 146
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    add-int/lit8 v6, v6, 0xb

    .line 150
    .line 151
    int-to-char v6, v6

    .line 152
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    goto/16 :goto_2

    .line 156
    .line 157
    :cond_7
    if-ne v6, v1, :cond_8

    .line 158
    .line 159
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 160
    .line 161
    new-array v7, v4, [J

    .line 162
    .line 163
    fill-array-data v7, :array_2

    .line 164
    .line 165
    .line 166
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v6

    .line 173
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    goto/16 :goto_2

    .line 177
    .line 178
    :cond_8
    const/16 v7, 0x5a

    .line 179
    .line 180
    if-gt v6, v7, :cond_9

    .line 181
    .line 182
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    goto/16 :goto_2

    .line 186
    .line 187
    :cond_9
    const/16 v7, 0x5f

    .line 188
    .line 189
    if-gt v6, v7, :cond_a

    .line 190
    .line 191
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    add-int/lit8 v6, v6, -0x10

    .line 195
    .line 196
    int-to-char v6, v6

    .line 197
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    goto :goto_2

    .line 201
    :cond_a
    const/16 v7, 0x60

    .line 202
    .line 203
    if-ne v6, v7, :cond_b

    .line 204
    .line 205
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 206
    .line 207
    new-array v7, v4, [J

    .line 208
    .line 209
    fill-array-data v7, :array_3

    .line 210
    .line 211
    .line 212
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v6

    .line 219
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    goto :goto_2

    .line 223
    :cond_b
    const/16 v7, 0x7a

    .line 224
    .line 225
    if-gt v6, v7, :cond_c

    .line 226
    .line 227
    const/16 v7, 0x64

    .line 228
    .line 229
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    add-int/lit8 v6, v6, -0x20

    .line 233
    .line 234
    int-to-char v6, v6

    .line 235
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    goto :goto_2

    .line 239
    :cond_c
    const/16 v7, 0x7f

    .line 240
    .line 241
    if-gt v6, v7, :cond_d

    .line 242
    .line 243
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    add-int/lit8 v6, v6, -0x2b

    .line 247
    .line 248
    int-to-char v6, v6

    .line 249
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    goto :goto_2

    .line 253
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 254
    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    .line 256
    .line 257
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 258
    .line 259
    .line 260
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 261
    .line 262
    const/16 v2, 0x8

    .line 263
    .line 264
    new-array v2, v2, [J

    .line 265
    .line 266
    fill-array-data v2, :array_4

    .line 267
    .line 268
    .line 269
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 283
    .line 284
    new-array v2, v4, [J

    .line 285
    .line 286
    fill-array-data v2, :array_5

    .line 287
    .line 288
    .line 289
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 290
    .line 291
    .line 292
    invoke-static {v1, v0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    throw p0

    .line 300
    :cond_e
    :goto_1
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 304
    .line 305
    goto/16 :goto_0

    .line 306
    .line 307
    :cond_f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object p0

    .line 311
    return-object p0

    .line 312
    nop

    .line 313
    :array_0
    .array-data 8
        0xb64a8764c3c429eL
        0xf3ec10c7cfcfc31L    # 3.022639660611488E-235
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
    :array_1
    .array-data 8
        0x19ea6b5adcaa853aL    # 7.772037219800138E-184
        0x273b3b6c106df5edL
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
    :array_2
    .array-data 8
        0xdecbd3e8f432e97L
        -0x7722371f18beb17dL    # -5.773202696065614E-266
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
    :array_3
    .array-data 8
        0x48cf279847c7be8eL    # 5.4279085831084346E42
        -0x2cf0b6bbffea114L
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
    :array_4
    .array-data 8
        0x40dec4bcda8c80f7L    # 31506.95083916277
        -0x50417ab2d577fd5L    # -2.5936868899998427E284
        -0x25f6496295e632eL
        0x3a193a0fab6cce70L    # 7.960175018265062E-29
        0x65837b4ce0645c6dL    # 1.0104921990810987E181
        -0x55a510640e99ade6L
        0x6e0b2d970807b00fL    # 1.2280206989836765E222
        0x5baaea0467f40465L    # 3.8207483826929165E133
    .end array-data

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
    :array_5
    .array-data 8
        -0x599d9456921e8007L    # -8.707920974372673E-124
        -0x22fd9ecb1355cb9aL    # -1.094376467744213E140
    .end array-data
.end method


# virtual methods
.method public encode(Ljava/lang/String;)[Z
    .locals 8

    .line 1
    const/4 v0, 0x7

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-static {p1}, Lcom/google/zxing/oned/Code93Writer;->convertToExtended(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/16 v3, 0x50

    .line 12
    .line 13
    if-gt v2, v3, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    add-int/lit8 v3, v3, 0x4

    .line 20
    .line 21
    mul-int/lit8 v3, v3, 0x9

    .line 22
    .line 23
    add-int/2addr v3, v1

    .line 24
    new-array v3, v3, [Z

    .line 25
    .line 26
    sget v4, Lcom/google/zxing/oned/Code93Reader;->ASTERISK_ENCODING:I

    .line 27
    .line 28
    const/4 v5, 0x0

    .line 29
    invoke-static {v3, v5, v4}, Lcom/google/zxing/oned/Code93Writer;->appendPattern([ZII)I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    :goto_0
    if-ge v5, v2, :cond_0

    .line 34
    .line 35
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 36
    .line 37
    new-array v7, v0, [J

    .line 38
    .line 39
    fill-array-data v7, :array_0

    .line 40
    .line 41
    .line 42
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    .line 50
    .line 51
    .line 52
    move-result v7

    .line 53
    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    sget-object v7, Lcom/google/zxing/oned/Code93Reader;->CHARACTER_ENCODINGS:[I

    .line 58
    .line 59
    aget v6, v7, v6

    .line 60
    .line 61
    invoke-static {v3, v4, v6}, Lcom/google/zxing/oned/Code93Writer;->appendPattern([ZII)I

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    add-int/2addr v4, v6

    .line 66
    add-int/2addr v5, v1

    .line 67
    goto :goto_0

    .line 68
    :cond_0
    const/16 v2, 0x14

    .line 69
    .line 70
    invoke-static {p1, v2}, Lcom/google/zxing/oned/Code93Writer;->computeChecksumIndex(Ljava/lang/String;I)I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    sget-object v5, Lcom/google/zxing/oned/Code93Reader;->CHARACTER_ENCODINGS:[I

    .line 75
    .line 76
    aget v6, v5, v2

    .line 77
    .line 78
    invoke-static {v3, v4, v6}, Lcom/google/zxing/oned/Code93Writer;->appendPattern([ZII)I

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    add-int/2addr v4, v6

    .line 83
    invoke-static {p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 88
    .line 89
    new-array v0, v0, [J

    .line 90
    .line 91
    fill-array-data v0, :array_1

    .line 92
    .line 93
    .line 94
    invoke-direct {v6, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    const/16 v0, 0xf

    .line 113
    .line 114
    invoke-static {p1, v0}, Lcom/google/zxing/oned/Code93Writer;->computeChecksumIndex(Ljava/lang/String;I)I

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    aget p1, v5, p1

    .line 119
    .line 120
    invoke-static {v3, v4, p1}, Lcom/google/zxing/oned/Code93Writer;->appendPattern([ZII)I

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    add-int/2addr v4, p1

    .line 125
    sget p1, Lcom/google/zxing/oned/Code93Reader;->ASTERISK_ENCODING:I

    .line 126
    .line 127
    invoke-static {v3, v4, p1}, Lcom/google/zxing/oned/Code93Writer;->appendPattern([ZII)I

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    add-int/2addr v4, p1

    .line 132
    aput-boolean v1, v3, v4

    .line 133
    .line 134
    return-object v3

    .line 135
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 136
    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    .line 142
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 143
    .line 144
    const/16 v3, 0xe

    .line 145
    .line 146
    new-array v3, v3, [J

    .line 147
    .line 148
    fill-array-data v3, :array_2

    .line 149
    .line 150
    .line 151
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 152
    .line 153
    .line 154
    invoke-static {v1, v0, v2}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    throw p1

    .line 162
    nop

    .line 163
    :array_0
    .array-data 8
        -0xd700c9a1a6ae19aL    # -6.81754301820676E243
        -0x4fe3d120635db3cbL    # -6.0848499521223896E-77
        -0x351d295c6db5ae0aL    # -5.638635778470605E52
        0x65e00333435fbbbbL    # 5.31552976376148E182
        0xb38ae70968b0eb6L
        -0x796c467f683e4f61L    # -5.56355784977857E-277
        0x2a51bc53e4179b03L    # 7.733013201401496E-105
    .end array-data

    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    :array_1
    .array-data 8
        0x25c7be9429ea669bL    # 1.096159917185733E-126
        0x1d8e095cd0904a12L
        0xc6da7daa36f06eL
        -0x2e1a548cab1f22bbL    # -3.367768607655671E86
        -0x704aa99b8a9f3ba9L    # -5.36866488489867E-233
        0x42c7c64d742284d1L    # 5.228094084020163E13
        0x628e2fca99da0b96L    # 5.5626667801939014E166
    .end array-data

    :array_2
    .array-data 8
        0x542cb8b5e0db0abL
        -0x4da8af5c58e9a94L
        -0x6519005a5dc94a6dL    # -4.433986712350201E-179
        -0x6c06089eff9f982eL
        -0x428974bc2dd684b2L    # -1.2814782403154818E-12
        -0x55a1409dc1d0bdc1L
        -0x60d027a9d020491bL
        0x4043de8c32e43d7eL    # 39.738653527684605
        0x15c2c967ef973ae9L    # 7.49004487455266E-204
        0x65033308cca46d64L    # 3.890039758808587E178
        0x5b91c546701b8eb8L    # 1.261363733342852E133
        0x29fb76bc123fb434L
        -0x707d35e0216ca4b1L    # -5.909486282400418E-234
        0x3b5c7b2a370db685L    # 9.423609766120422E-23
    .end array-data
.end method

.method public getSupportedWriteFormats()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->CODE_93:Lcom/google/zxing/BarcodeFormat;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
