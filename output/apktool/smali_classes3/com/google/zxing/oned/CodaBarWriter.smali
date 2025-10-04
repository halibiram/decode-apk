.class public final Lcom/google/zxing/oned/CodaBarWriter;
.super Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.source "SourceFile"


# static fields
.field private static final ALT_START_END_CHARS:[C

.field private static final CHARS_WHICH_ARE_TEN_LENGTH_EACH_AFTER_DECODED:[C

.field private static final DEFAULT_GUARD:C

.field private static final START_END_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v1, v0, [C

    .line 3
    .line 4
    fill-array-data v1, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v1, Lcom/google/zxing/oned/CodaBarWriter;->START_END_CHARS:[C

    .line 8
    .line 9
    new-array v2, v0, [C

    .line 10
    .line 11
    fill-array-data v2, :array_1

    .line 12
    .line 13
    .line 14
    sput-object v2, Lcom/google/zxing/oned/CodaBarWriter;->ALT_START_END_CHARS:[C

    .line 15
    .line 16
    new-array v0, v0, [C

    .line 17
    .line 18
    fill-array-data v0, :array_2

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcom/google/zxing/oned/CodaBarWriter;->CHARS_WHICH_ARE_TEN_LENGTH_EACH_AFTER_DECODED:[C

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    aget-char v0, v1, v0

    .line 25
    .line 26
    sput-char v0, Lcom/google/zxing/oned/CodaBarWriter;->DEFAULT_GUARD:C

    .line 27
    .line 28
    return-void

    .line 29
    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
    .end array-data

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    :array_1
    .array-data 2
        0x54s
        0x4es
        0x2as
        0x45s
    .end array-data

    :array_2
    .array-data 2
        0x2fs
        0x3as
        0x2bs
        0x2es
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/String;)[Z
    .locals 10

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const/4 v2, 0x2

    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    if-ge v1, v2, :cond_0

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    sget-char v1, Lcom/google/zxing/oned/CodaBarWriter;->DEFAULT_GUARD:C

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    goto/16 :goto_0

    .line 32
    .line 33
    :cond_0
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    sub-int/2addr v2, v4

    .line 46
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    sget-object v5, Lcom/google/zxing/oned/CodaBarWriter;->START_END_CHARS:[C

    .line 55
    .line 56
    invoke-static {v5, v1}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    invoke-static {v5, v2}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    sget-object v7, Lcom/google/zxing/oned/CodaBarWriter;->ALT_START_END_CHARS:[C

    .line 65
    .line 66
    invoke-static {v7, v1}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    invoke-static {v7, v2}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eqz v6, :cond_2

    .line 75
    .line 76
    if-eqz v5, :cond_1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 80
    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 87
    .line 88
    new-array v0, v0, [J

    .line 89
    .line 90
    fill-array-data v0, :array_0

    .line 91
    .line 92
    .line 93
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 94
    .line 95
    .line 96
    invoke-static {v3, v2, p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw v1

    .line 104
    :cond_2
    if-eqz v1, :cond_4

    .line 105
    .line 106
    if-eqz v2, :cond_3

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 110
    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    .line 116
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 117
    .line 118
    new-array v0, v0, [J

    .line 119
    .line 120
    fill-array-data v0, :array_1

    .line 121
    .line 122
    .line 123
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 124
    .line 125
    .line 126
    invoke-static {v3, v2, p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    throw v1

    .line 134
    :cond_4
    if-nez v5, :cond_16

    .line 135
    .line 136
    if-nez v2, :cond_16

    .line 137
    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    sget-char v1, Lcom/google/zxing/oned/CodaBarWriter;->DEFAULT_GUARD:C

    .line 144
    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    :goto_0
    const/16 v0, 0x14

    .line 159
    .line 160
    const/4 v1, 0x1

    .line 161
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    sub-int/2addr v2, v4

    .line 166
    if-ge v1, v2, :cond_8

    .line 167
    .line 168
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    .line 173
    .line 174
    .line 175
    move-result v2

    .line 176
    if-nez v2, :cond_7

    .line 177
    .line 178
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 179
    .line 180
    .line 181
    move-result v2

    .line 182
    const/16 v5, 0x2d

    .line 183
    .line 184
    if-eq v2, v5, :cond_7

    .line 185
    .line 186
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 187
    .line 188
    .line 189
    move-result v2

    .line 190
    const/16 v5, 0x24

    .line 191
    .line 192
    if-ne v2, v5, :cond_5

    .line 193
    .line 194
    goto :goto_2

    .line 195
    :cond_5
    sget-object v2, Lcom/google/zxing/oned/CodaBarWriter;->CHARS_WHICH_ARE_TEN_LENGTH_EACH_AFTER_DECODED:[C

    .line 196
    .line 197
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 198
    .line 199
    .line 200
    move-result v5

    .line 201
    invoke-static {v2, v5}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    if-eqz v2, :cond_6

    .line 206
    .line 207
    add-int/lit8 v0, v0, 0xa

    .line 208
    .line 209
    goto :goto_3

    .line 210
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 211
    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    .line 213
    .line 214
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    .line 216
    .line 217
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 218
    .line 219
    const/4 v4, 0x4

    .line 220
    new-array v4, v4, [J

    .line 221
    .line 222
    fill-array-data v4, :array_2

    .line 223
    .line 224
    .line 225
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 236
    .line 237
    .line 238
    move-result p1

    .line 239
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    const/16 p1, 0x27

    .line 243
    .line 244
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    throw v0

    .line 255
    :cond_7
    :goto_2
    add-int/lit8 v0, v0, 0x9

    .line 256
    .line 257
    :goto_3
    add-int/2addr v1, v4

    .line 258
    goto :goto_1

    .line 259
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 260
    .line 261
    .line 262
    move-result v1

    .line 263
    sub-int/2addr v1, v4

    .line 264
    add-int/2addr v1, v0

    .line 265
    new-array v0, v1, [Z

    .line 266
    .line 267
    const/4 v1, 0x0

    .line 268
    const/4 v2, 0x0

    .line 269
    :goto_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 270
    .line 271
    .line 272
    move-result v5

    .line 273
    if-ge v1, v5, :cond_15

    .line 274
    .line 275
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 276
    .line 277
    .line 278
    move-result v5

    .line 279
    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    .line 280
    .line 281
    .line 282
    move-result v5

    .line 283
    if-eqz v1, :cond_9

    .line 284
    .line 285
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 286
    .line 287
    .line 288
    move-result v6

    .line 289
    sub-int/2addr v6, v4

    .line 290
    if-ne v1, v6, :cond_e

    .line 291
    .line 292
    :cond_9
    const/16 v6, 0x2a

    .line 293
    .line 294
    if-eq v5, v6, :cond_d

    .line 295
    .line 296
    const/16 v6, 0x45

    .line 297
    .line 298
    if-eq v5, v6, :cond_c

    .line 299
    .line 300
    const/16 v6, 0x4e

    .line 301
    .line 302
    if-eq v5, v6, :cond_b

    .line 303
    .line 304
    const/16 v6, 0x54

    .line 305
    .line 306
    if-eq v5, v6, :cond_a

    .line 307
    .line 308
    goto :goto_5

    .line 309
    :cond_a
    const/16 v5, 0x41

    .line 310
    .line 311
    goto :goto_5

    .line 312
    :cond_b
    const/16 v5, 0x42

    .line 313
    .line 314
    goto :goto_5

    .line 315
    :cond_c
    const/16 v5, 0x44

    .line 316
    .line 317
    goto :goto_5

    .line 318
    :cond_d
    const/16 v5, 0x43

    .line 319
    .line 320
    :cond_e
    :goto_5
    const/4 v6, 0x0

    .line 321
    :goto_6
    sget-object v7, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    .line 322
    .line 323
    array-length v8, v7

    .line 324
    if-ge v6, v8, :cond_10

    .line 325
    .line 326
    aget-char v7, v7, v6

    .line 327
    .line 328
    if-ne v5, v7, :cond_f

    .line 329
    .line 330
    sget-object v5, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    .line 331
    .line 332
    aget v5, v5, v6

    .line 333
    .line 334
    goto :goto_7

    .line 335
    :cond_f
    add-int/2addr v6, v4

    .line 336
    goto :goto_6

    .line 337
    :cond_10
    const/4 v5, 0x0

    .line 338
    :goto_7
    const/4 v6, 0x0

    .line 339
    const/4 v7, 0x1

    .line 340
    :goto_8
    const/4 v8, 0x0

    .line 341
    :goto_9
    const/4 v9, 0x7

    .line 342
    if-ge v6, v9, :cond_13

    .line 343
    .line 344
    aput-boolean v7, v0, v2

    .line 345
    .line 346
    add-int/2addr v2, v4

    .line 347
    rsub-int/lit8 v9, v6, 0x6

    .line 348
    .line 349
    shr-int v9, v5, v9

    .line 350
    .line 351
    and-int/2addr v9, v4

    .line 352
    if-eqz v9, :cond_12

    .line 353
    .line 354
    if-ne v8, v4, :cond_11

    .line 355
    .line 356
    goto :goto_a

    .line 357
    :cond_11
    add-int/2addr v8, v4

    .line 358
    goto :goto_9

    .line 359
    :cond_12
    :goto_a
    xor-int/2addr v7, v4

    .line 360
    add-int/2addr v6, v4

    .line 361
    goto :goto_8

    .line 362
    :cond_13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 363
    .line 364
    .line 365
    move-result v5

    .line 366
    sub-int/2addr v5, v4

    .line 367
    if-ge v1, v5, :cond_14

    .line 368
    .line 369
    aput-boolean v3, v0, v2

    .line 370
    .line 371
    add-int/2addr v2, v4

    .line 372
    :cond_14
    add-int/2addr v1, v4

    .line 373
    goto :goto_4

    .line 374
    :cond_15
    return-object v0

    .line 375
    :cond_16
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 376
    .line 377
    new-instance v2, Ljava/lang/StringBuilder;

    .line 378
    .line 379
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 380
    .line 381
    .line 382
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 383
    .line 384
    new-array v0, v0, [J

    .line 385
    .line 386
    fill-array-data v0, :array_3

    .line 387
    .line 388
    .line 389
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 390
    .line 391
    .line 392
    invoke-static {v3, v2, p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object p1

    .line 396
    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    throw v1

    .line 400
    nop

    .line 401
    :array_0
    .array-data 8
        -0x618ff833936ff887L
        -0x1d6b91411003b007L    # -7.530455890421867E166
        0x39b29ec7b82dd575L    # 9.180484637090251E-31
        -0x13d1d22fe95a21fdL    # -1.2699632974274373E213
        0x329c9049910dea59L    # 6.780695321732125E-65
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
    :array_1
    .array-data 8
        0x423d9f71289b3f0cL    # 1.2722904489124628E11
        0x7e4448d3d0b27c7aL    # 1.6980466486143322E300
        -0x474ba4c931bd349eL    # -1.5314381793995766E-35
        0x4f969fc4f220e15L
        -0x30beaf6bc87ffbd4L    # -6.118507145184282E73
    .end array-data

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
    .line 446
    .line 447
    .line 448
    .line 449
    :array_2
    .array-data 8
        0x30f0da184176167aL    # 5.961159906208268E-73
        -0x31a1e470a8fcd208L    # -3.246803194004251E69
        0x8f908f59aace275L
        0x3223f9083464296eL    # 3.704158188749427E-67
    .end array-data

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
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    :array_3
    .array-data 8
        0x3507f1b8435be242L    # 3.124866238574911E-53
        0x58d65b6f5cd46641L    # 9.020592869491753E119
        -0x40070236467ce302L    # -1.5619599577492518
        -0x62744dbdeed95918L
        0x2362a4a98a6530acL
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
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->CODABAR:Lcom/google/zxing/BarcodeFormat;

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
