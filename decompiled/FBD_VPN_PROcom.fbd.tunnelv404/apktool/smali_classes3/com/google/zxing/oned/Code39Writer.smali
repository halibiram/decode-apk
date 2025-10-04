.class public final Lcom/google/zxing/oned/Code39Writer;
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

.method private static toIntArray(I[I)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    const/16 v1, 0x9

    .line 3
    .line 4
    if-ge v0, v1, :cond_1

    .line 5
    .line 6
    rsub-int/lit8 v1, v0, 0x8

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    shl-int v1, v2, v1

    .line 10
    .line 11
    and-int/2addr v1, p0

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    const/4 v2, 0x2

    .line 16
    :goto_1
    aput v2, p1, v0

    .line 17
    .line 18
    add-int/lit8 v0, v0, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    return-void
.end method

.method private static tryToConvertToExtendedMode(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 1
    const/16 v0, 0x2b

    .line 2
    .line 3
    const/16 v1, 0x20

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result v3

    .line 10
    new-instance v4, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const/4 v5, 0x0

    .line 16
    :goto_0
    if-ge v5, v3, :cond_e

    .line 17
    .line 18
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    .line 19
    .line 20
    .line 21
    move-result v6

    .line 22
    if-eqz v6, :cond_d

    .line 23
    .line 24
    if-eq v6, v1, :cond_c

    .line 25
    .line 26
    const/16 v7, 0x40

    .line 27
    .line 28
    if-eq v6, v7, :cond_b

    .line 29
    .line 30
    const/16 v7, 0x60

    .line 31
    .line 32
    if-eq v6, v7, :cond_a

    .line 33
    .line 34
    const/16 v7, 0x2d

    .line 35
    .line 36
    if-eq v6, v7, :cond_c

    .line 37
    .line 38
    const/16 v7, 0x2e

    .line 39
    .line 40
    if-eq v6, v7, :cond_c

    .line 41
    .line 42
    const/16 v7, 0x1a

    .line 43
    .line 44
    if-gt v6, v7, :cond_0

    .line 45
    .line 46
    const/16 v7, 0x24

    .line 47
    .line 48
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    add-int/lit8 v6, v6, 0x40

    .line 52
    .line 53
    int-to-char v6, v6

    .line 54
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    goto/16 :goto_2

    .line 58
    .line 59
    :cond_0
    const/16 v7, 0x25

    .line 60
    .line 61
    if-ge v6, v1, :cond_1

    .line 62
    .line 63
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    add-int/lit8 v6, v6, 0x26

    .line 67
    .line 68
    int-to-char v6, v6

    .line 69
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    goto/16 :goto_2

    .line 73
    .line 74
    :cond_1
    const/16 v8, 0x2c

    .line 75
    .line 76
    const/16 v9, 0x2f

    .line 77
    .line 78
    if-le v6, v8, :cond_9

    .line 79
    .line 80
    if-eq v6, v9, :cond_9

    .line 81
    .line 82
    const/16 v8, 0x3a

    .line 83
    .line 84
    if-ne v6, v8, :cond_2

    .line 85
    .line 86
    goto/16 :goto_1

    .line 87
    .line 88
    :cond_2
    const/16 v8, 0x39

    .line 89
    .line 90
    if-gt v6, v8, :cond_3

    .line 91
    .line 92
    int-to-char v6, v6

    .line 93
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    goto/16 :goto_2

    .line 97
    .line 98
    :cond_3
    const/16 v8, 0x3f

    .line 99
    .line 100
    if-gt v6, v8, :cond_4

    .line 101
    .line 102
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    add-int/lit8 v6, v6, 0xb

    .line 106
    .line 107
    int-to-char v6, v6

    .line 108
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    goto/16 :goto_2

    .line 112
    .line 113
    :cond_4
    const/16 v8, 0x5a

    .line 114
    .line 115
    if-gt v6, v8, :cond_5

    .line 116
    .line 117
    int-to-char v6, v6

    .line 118
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    goto/16 :goto_2

    .line 122
    .line 123
    :cond_5
    const/16 v8, 0x5f

    .line 124
    .line 125
    if-gt v6, v8, :cond_6

    .line 126
    .line 127
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    add-int/lit8 v6, v6, -0x10

    .line 131
    .line 132
    int-to-char v6, v6

    .line 133
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    goto/16 :goto_2

    .line 137
    .line 138
    :cond_6
    const/16 v8, 0x7a

    .line 139
    .line 140
    if-gt v6, v8, :cond_7

    .line 141
    .line 142
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    sub-int/2addr v6, v1

    .line 146
    int-to-char v6, v6

    .line 147
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    goto/16 :goto_2

    .line 151
    .line 152
    :cond_7
    const/16 v8, 0x7f

    .line 153
    .line 154
    if-gt v6, v8, :cond_8

    .line 155
    .line 156
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    sub-int/2addr v6, v0

    .line 160
    int-to-char v6, v6

    .line 161
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    goto/16 :goto_2

    .line 165
    .line 166
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 167
    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .line 172
    .line 173
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 174
    .line 175
    const/16 v4, 0x8

    .line 176
    .line 177
    new-array v4, v4, [J

    .line 178
    .line 179
    fill-array-data v4, :array_0

    .line 180
    .line 181
    .line 182
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    .line 193
    .line 194
    .line 195
    move-result p0

    .line 196
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 200
    .line 201
    new-array v2, v2, [J

    .line 202
    .line 203
    fill-array-data v2, :array_1

    .line 204
    .line 205
    .line 206
    invoke-direct {p0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 207
    .line 208
    .line 209
    invoke-static {p0, v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p0

    .line 213
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    throw v0

    .line 217
    :cond_9
    :goto_1
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    add-int/lit8 v6, v6, 0x20

    .line 221
    .line 222
    int-to-char v6, v6

    .line 223
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    goto :goto_2

    .line 227
    :cond_a
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 228
    .line 229
    new-array v7, v2, [J

    .line 230
    .line 231
    fill-array-data v7, :array_2

    .line 232
    .line 233
    .line 234
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v6

    .line 241
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    goto :goto_2

    .line 245
    :cond_b
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 246
    .line 247
    new-array v7, v2, [J

    .line 248
    .line 249
    fill-array-data v7, :array_3

    .line 250
    .line 251
    .line 252
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v6

    .line 259
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    goto :goto_2

    .line 263
    :cond_c
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    goto :goto_2

    .line 267
    :cond_d
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 268
    .line 269
    new-array v7, v2, [J

    .line 270
    .line 271
    fill-array-data v7, :array_4

    .line 272
    .line 273
    .line 274
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v6

    .line 281
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 285
    .line 286
    goto/16 :goto_0

    .line 287
    .line 288
    :cond_e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object p0

    .line 292
    return-object p0

    .line 293
    :array_0
    .array-data 8
        0x188b63a7d2ea1146L
        -0x6dec0a3062782e7eL    # -1.380473490920413E-221
        -0x16221ab4169e91c4L    # -9.153468418364071E201
        -0x3a93ed195f97b826L    # -2.7151343884484535E26
        0xedfdd25493e055L
        -0x4a0915edb0040fb3L    # -9.799143112609204E-49
        0x69180b3cea449c1fL    # 1.7973060884860772E198
        0x407fa1cac99a85f6L    # 506.1120086704317
    .end array-data

    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
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
    .line 326
    .line 327
    .line 328
    .line 329
    :array_1
    .array-data 8
        -0x1674c01fef76ea7cL    # -2.6072691994305605E200
        0x1f566357f56d82c1L    # 1.019151528643613E-157
    .end array-data

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
    :array_2
    .array-data 8
        -0xa18ee8020696ec2L    # -8.86712738390943E259
        -0xcba5d22db72bbe9L    # -1.890981069830062E247
    .end array-data

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
    :array_3
    .array-data 8
        0x5a5328dd7ab5f3bdL    # 1.2969561543772687E127
        0x38007f472645b3b4L    # 6.060106623546285E-39
    .end array-data

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
    :array_4
    .array-data 8
        0x66966d7270e3ec3dL    # 1.5247503270353317E186
        -0x294a7e94d9f8061bL    # -5.050667929085521E109
    .end array-data
.end method


# virtual methods
.method public encode(Ljava/lang/String;)[Z
    .locals 12

    .line 1
    const/4 v0, 0x7

    .line 2
    const/4 v1, 0x1

    .line 3
    const/16 v2, 0x9

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    const/16 v4, 0x50

    .line 10
    .line 11
    if-gt v3, v4, :cond_4

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x0

    .line 15
    :goto_0
    if-ge v6, v3, :cond_2

    .line 16
    .line 17
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 18
    .line 19
    new-array v8, v0, [J

    .line 20
    .line 21
    fill-array-data v8, :array_0

    .line 22
    .line 23
    .line 24
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    .line 32
    .line 33
    .line 34
    move-result v8

    .line 35
    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    .line 36
    .line 37
    .line 38
    move-result v7

    .line 39
    if-gez v7, :cond_1

    .line 40
    .line 41
    invoke-static {p1}, Lcom/google/zxing/oned/Code39Writer;->tryToConvertToExtendedMode(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-gt v3, v4, :cond_0

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 53
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 60
    .line 61
    new-array v2, v2, [J

    .line 62
    .line 63
    fill-array-data v2, :array_1

    .line 64
    .line 65
    .line 66
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 80
    .line 81
    const/4 v2, 0x5

    .line 82
    new-array v2, v2, [J

    .line 83
    .line 84
    fill-array-data v2, :array_2

    .line 85
    .line 86
    .line 87
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 88
    .line 89
    .line 90
    invoke-static {v1, v0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw p1

    .line 98
    :cond_1
    add-int/2addr v6, v1

    .line 99
    goto :goto_0

    .line 100
    :cond_2
    :goto_1
    new-array v2, v2, [I

    .line 101
    .line 102
    mul-int/lit8 v4, v3, 0xd

    .line 103
    .line 104
    add-int/lit8 v4, v4, 0x19

    .line 105
    .line 106
    new-array v4, v4, [Z

    .line 107
    .line 108
    const/16 v6, 0x94

    .line 109
    .line 110
    invoke-static {v6, v2}, Lcom/google/zxing/oned/Code39Writer;->toIntArray(I[I)V

    .line 111
    .line 112
    .line 113
    invoke-static {v4, v5, v2, v1}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->appendPattern([ZI[IZ)I

    .line 114
    .line 115
    .line 116
    move-result v7

    .line 117
    filled-new-array {v1}, [I

    .line 118
    .line 119
    .line 120
    move-result-object v8

    .line 121
    invoke-static {v4, v7, v8, v5}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->appendPattern([ZI[IZ)I

    .line 122
    .line 123
    .line 124
    move-result v9

    .line 125
    add-int/2addr v9, v7

    .line 126
    const/4 v7, 0x0

    .line 127
    :goto_2
    if-ge v7, v3, :cond_3

    .line 128
    .line 129
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 130
    .line 131
    new-array v11, v0, [J

    .line 132
    .line 133
    fill-array-data v11, :array_3

    .line 134
    .line 135
    .line 136
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v10

    .line 143
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    .line 144
    .line 145
    .line 146
    move-result v11

    .line 147
    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(I)I

    .line 148
    .line 149
    .line 150
    move-result v10

    .line 151
    sget-object v11, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    .line 152
    .line 153
    aget v10, v11, v10

    .line 154
    .line 155
    invoke-static {v10, v2}, Lcom/google/zxing/oned/Code39Writer;->toIntArray(I[I)V

    .line 156
    .line 157
    .line 158
    invoke-static {v4, v9, v2, v1}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->appendPattern([ZI[IZ)I

    .line 159
    .line 160
    .line 161
    move-result v10

    .line 162
    add-int/2addr v10, v9

    .line 163
    invoke-static {v4, v10, v8, v5}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->appendPattern([ZI[IZ)I

    .line 164
    .line 165
    .line 166
    move-result v9

    .line 167
    add-int/2addr v9, v10

    .line 168
    add-int/2addr v7, v1

    .line 169
    goto :goto_2

    .line 170
    :cond_3
    invoke-static {v6, v2}, Lcom/google/zxing/oned/Code39Writer;->toIntArray(I[I)V

    .line 171
    .line 172
    .line 173
    invoke-static {v4, v9, v2, v1}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->appendPattern([ZI[IZ)I

    .line 174
    .line 175
    .line 176
    return-object v4

    .line 177
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 178
    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .line 183
    .line 184
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 185
    .line 186
    new-array v2, v2, [J

    .line 187
    .line 188
    fill-array-data v2, :array_4

    .line 189
    .line 190
    .line 191
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 192
    .line 193
    .line 194
    invoke-static {v1, v0, v3}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    throw p1

    .line 202
    nop

    .line 203
    :array_0
    .array-data 8
        -0x3ff451f5ed19da47L    # -3.4599801517949484
        -0x5824213ea223e172L
        -0x4d51bb9c6ac4f551L    # -1.4370186060623332E-64
        -0x66eddefb78bce6acL    # -6.510224614094815E-188
        0x7c881082b31c6b0dL    # 7.504513717075652E291
        -0x2d740b7f0ddcce94L    # -4.4488694735488063E89
        0x28e1b45b01daa641L    # 9.202283710022965E-112
    .end array-data

    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    :array_1
    .array-data 8
        0x5752342b82205e4dL    # 4.3778430322752525E112
        -0x16a9628dd3aeb5fcL    # -2.704793961730093E199
        0x6b0e0b2b55803b54L    # 4.822802021485081E207
        0x762fbfc3b8f2d2b0L    # 1.952618530269525E261
        -0x4960099f61d40262L    # -1.3996524541111624E-45
        -0x2f6d2f0d51af8aL
        0x1cd19b348cc0c99cL    # 7.289367171809857E-170
        -0x48ac43cbcc44df16L    # -3.5398227933186255E-42
        -0x799687433b4e6267L    # -8.980711699070177E-278
    .end array-data

    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    :array_2
    .array-data 8
        -0x7afdcc5c33cefd87L
        0x130a98a79a4bbbb9L    # 6.027461972277254E-217
        0x1f1f56e383e4eff1L    # 8.916473061817922E-159
        -0x8f4dbb81ef64c07L    # -2.734913479967297E265
        -0x24d0bc1fe0e27c5bL    # -1.7337580440971812E131
    .end array-data

    .line 276
    .line 277
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
    :array_3
    .array-data 8
        0x79b7906f22bebd9L
        -0x42b26a3479d8a515L    # -2.1021504025757432E-13
        -0x56496b2ce46394c6L    # -9.615046546682651E-108
        0x258a403d26c7250fL    # 7.574196999560085E-128
        -0x990cceaea74dd7bL
        -0x4b2a592469b797f2L    # -3.5321127460061285E-54
        0x1700ad02d7221d51L    # 6.971402786240617E-198
    .end array-data

    .line 300
    .line 301
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
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    :array_4
    .array-data 8
        0x79770c3bda994abcL    # 1.276748288505863E277
        0x13a35d6f55d1a6c3L    # 4.493969767099876E-214
        -0x7aa82b6b7ef49a3aL    # -6.410254209369716E-283
        -0x5582270bf60d36baL
        0x7095c40415ff9734L
        -0xb87533ca47b4814L
        0x20c889816951a6baL    # 9.369921684605367E-151
        0x625541f30eead2d7L    # 4.896572286695802E165
        0x59447166d96e799aL    # 1.0557774253479373E122
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
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

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
