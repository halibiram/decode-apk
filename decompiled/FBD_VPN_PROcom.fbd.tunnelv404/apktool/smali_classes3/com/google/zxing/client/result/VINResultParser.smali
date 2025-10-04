.class public final Lcom/google/zxing/client/result/VINResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "SourceFile"


# static fields
.field private static final AZ09:Ljava/util/regex/Pattern;

.field private static final IOQ:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lcom/google/zxing/client/result/VINResultParser;->IOQ:Ljava/util/regex/Pattern;

    .line 21
    .line 22
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 23
    .line 24
    const/4 v1, 0x3

    .line 25
    new-array v1, v1, [J

    .line 26
    .line 27
    fill-array-data v1, :array_1

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lcom/google/zxing/client/result/VINResultParser;->AZ09:Ljava/util/regex/Pattern;

    .line 42
    .line 43
    return-void

    .line 44
    nop

    .line 45
    :array_0
    .array-data 8
        0x680e77882917c982L    # 1.7375439958101772E193
        -0x2cf54af56d41a918L    # -1.0880702424298164E92
    .end array-data

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    :array_1
    .array-data 8
        0x5a78c872ab5d6999L    # 6.710456273654883E127
        -0x5a222210bff4eb86L
        0x765140971e086391L    # 8.488352260685675E261
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static checkChar(I)C
    .locals 1

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    if-ge p0, v0, :cond_0

    .line 4
    .line 5
    add-int/lit8 p0, p0, 0x30

    .line 6
    .line 7
    int-to-char p0, p0

    .line 8
    return p0

    .line 9
    :cond_0
    if-ne p0, v0, :cond_1

    .line 10
    .line 11
    const/16 p0, 0x58

    .line 12
    .line 13
    return p0

    .line 14
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method private static checkChecksum(Ljava/lang/CharSequence;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 5
    .line 6
    .line 7
    move-result v3

    .line 8
    if-ge v1, v3, :cond_0

    .line 9
    .line 10
    add-int/lit8 v3, v1, 0x1

    .line 11
    .line 12
    invoke-static {v3}, Lcom/google/zxing/client/result/VINResultParser;->vinPositionWeight(I)I

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-static {v1}, Lcom/google/zxing/client/result/VINResultParser;->vinCharValue(C)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    mul-int v4, v4, v1

    .line 25
    .line 26
    add-int/2addr v2, v4

    .line 27
    move v1, v3

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/16 v1, 0x8

    .line 30
    .line 31
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    rem-int/lit8 v2, v2, 0xb

    .line 36
    .line 37
    invoke-static {v2}, Lcom/google/zxing/client/result/VINResultParser;->checkChar(I)C

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-ne p0, v1, :cond_1

    .line 42
    .line 43
    const/4 v0, 0x1

    .line 44
    :cond_1
    return v0
.end method

.method private static countryCode(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 10

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    const/16 v2, 0x45

    .line 13
    .line 14
    const/16 v3, 0x33

    .line 15
    .line 16
    const/16 v4, 0x39

    .line 17
    .line 18
    const/16 v5, 0x41

    .line 19
    .line 20
    if-eq v1, v4, :cond_5

    .line 21
    .line 22
    const/16 v6, 0x54

    .line 23
    .line 24
    const/16 v7, 0x53

    .line 25
    .line 26
    if-eq v1, v7, :cond_3

    .line 27
    .line 28
    const/16 v8, 0x5a

    .line 29
    .line 30
    const/16 v9, 0x52

    .line 31
    .line 32
    if-eq v1, v8, :cond_2

    .line 33
    .line 34
    const/16 v8, 0x57

    .line 35
    .line 36
    packed-switch v1, :pswitch_data_0

    .line 37
    .line 38
    .line 39
    packed-switch v1, :pswitch_data_1

    .line 40
    .line 41
    .line 42
    packed-switch v1, :pswitch_data_2

    .line 43
    .line 44
    .line 45
    goto/16 :goto_0

    .line 46
    .line 47
    :pswitch_0
    const/16 v1, 0x30

    .line 48
    .line 49
    if-eq p0, v1, :cond_0

    .line 50
    .line 51
    if-lt p0, v3, :cond_8

    .line 52
    .line 53
    if-gt p0, v4, :cond_8

    .line 54
    .line 55
    :cond_0
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 56
    .line 57
    new-array v0, v0, [J

    .line 58
    .line 59
    fill-array-data v0, :array_0

    .line 60
    .line 61
    .line 62
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    return-object p0

    .line 70
    :pswitch_1
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 71
    .line 72
    new-array v0, v0, [J

    .line 73
    .line 74
    fill-array-data v0, :array_1

    .line 75
    .line 76
    .line 77
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    return-object p0

    .line 85
    :pswitch_2
    const/16 v1, 0x46

    .line 86
    .line 87
    if-lt p0, v1, :cond_1

    .line 88
    .line 89
    if-gt p0, v9, :cond_1

    .line 90
    .line 91
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 92
    .line 93
    new-array v0, v0, [J

    .line 94
    .line 95
    fill-array-data v0, :array_2

    .line 96
    .line 97
    .line 98
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    return-object p0

    .line 106
    :cond_1
    if-lt p0, v7, :cond_8

    .line 107
    .line 108
    if-gt p0, v8, :cond_8

    .line 109
    .line 110
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 111
    .line 112
    new-array v0, v0, [J

    .line 113
    .line 114
    fill-array-data v0, :array_3

    .line 115
    .line 116
    .line 117
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    return-object p0

    .line 125
    :pswitch_3
    if-lt p0, v5, :cond_8

    .line 126
    .line 127
    if-gt p0, v2, :cond_8

    .line 128
    .line 129
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 130
    .line 131
    new-array v0, v0, [J

    .line 132
    .line 133
    fill-array-data v0, :array_4

    .line 134
    .line 135
    .line 136
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    return-object p0

    .line 144
    :pswitch_4
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 145
    .line 146
    new-array v0, v0, [J

    .line 147
    .line 148
    fill-array-data v0, :array_5

    .line 149
    .line 150
    .line 151
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    return-object p0

    .line 159
    :pswitch_5
    const/16 v1, 0x4c

    .line 160
    .line 161
    if-lt p0, v1, :cond_8

    .line 162
    .line 163
    if-gt p0, v9, :cond_8

    .line 164
    .line 165
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 166
    .line 167
    new-array v0, v0, [J

    .line 168
    .line 169
    fill-array-data v0, :array_6

    .line 170
    .line 171
    .line 172
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    return-object p0

    .line 180
    :pswitch_6
    if-lt p0, v5, :cond_8

    .line 181
    .line 182
    if-gt p0, v6, :cond_8

    .line 183
    .line 184
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 185
    .line 186
    new-array v0, v0, [J

    .line 187
    .line 188
    fill-array-data v0, :array_7

    .line 189
    .line 190
    .line 191
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p0

    .line 198
    return-object p0

    .line 199
    :pswitch_7
    if-lt p0, v5, :cond_8

    .line 200
    .line 201
    if-gt p0, v8, :cond_8

    .line 202
    .line 203
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 204
    .line 205
    new-array v0, v0, [J

    .line 206
    .line 207
    fill-array-data v0, :array_8

    .line 208
    .line 209
    .line 210
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object p0

    .line 217
    return-object p0

    .line 218
    :pswitch_8
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 219
    .line 220
    new-array v0, v0, [J

    .line 221
    .line 222
    fill-array-data v0, :array_9

    .line 223
    .line 224
    .line 225
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object p0

    .line 232
    return-object p0

    .line 233
    :pswitch_9
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 234
    .line 235
    new-array v0, v0, [J

    .line 236
    .line 237
    fill-array-data v0, :array_a

    .line 238
    .line 239
    .line 240
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object p0

    .line 247
    return-object p0

    .line 248
    :cond_2
    if-lt p0, v5, :cond_8

    .line 249
    .line 250
    if-gt p0, v9, :cond_8

    .line 251
    .line 252
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 253
    .line 254
    new-array v0, v0, [J

    .line 255
    .line 256
    fill-array-data v0, :array_b

    .line 257
    .line 258
    .line 259
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object p0

    .line 266
    return-object p0

    .line 267
    :cond_3
    if-lt p0, v5, :cond_4

    .line 268
    .line 269
    const/16 v1, 0x4d

    .line 270
    .line 271
    if-gt p0, v1, :cond_4

    .line 272
    .line 273
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 274
    .line 275
    new-array v0, v0, [J

    .line 276
    .line 277
    fill-array-data v0, :array_c

    .line 278
    .line 279
    .line 280
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object p0

    .line 287
    return-object p0

    .line 288
    :cond_4
    const/16 v1, 0x4e

    .line 289
    .line 290
    if-lt p0, v1, :cond_8

    .line 291
    .line 292
    if-gt p0, v6, :cond_8

    .line 293
    .line 294
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 295
    .line 296
    new-array v0, v0, [J

    .line 297
    .line 298
    fill-array-data v0, :array_d

    .line 299
    .line 300
    .line 301
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object p0

    .line 308
    return-object p0

    .line 309
    :cond_5
    if-lt p0, v5, :cond_6

    .line 310
    .line 311
    if-le p0, v2, :cond_7

    .line 312
    .line 313
    :cond_6
    if-lt p0, v3, :cond_8

    .line 314
    .line 315
    if-gt p0, v4, :cond_8

    .line 316
    .line 317
    :cond_7
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 318
    .line 319
    new-array v0, v0, [J

    .line 320
    .line 321
    fill-array-data v0, :array_e

    .line 322
    .line 323
    .line 324
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object p0

    .line 331
    return-object p0

    .line 332
    :cond_8
    :goto_0
    const/4 p0, 0x0

    .line 333
    return-object p0

    .line 334
    nop

    .line 335
    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_9
        :pswitch_9
    .end packed-switch

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
    .line 346
    .line 347
    .line 348
    .line 349
    :pswitch_data_1
    .packed-switch 0x4a
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

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
    :pswitch_data_2
    .packed-switch 0x56
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

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
    :array_0
    .array-data 8
        0x4182d37582dea70L    # 6.20211562988533E-289
        -0x7d61de2f8539f819L    # -4.607374281317672E-296
    .end array-data

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
    :array_1
    .array-data 8
        0x278ad9ebbbc49525L
        -0x70f1dfd4ebca3bffL    # -3.701092541900644E-236
    .end array-data

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
    :array_2
    .array-data 8
        0x653ac696230a620bL    # 4.3400899176845384E179
        0x1070b82195284560L    # 1.723060106125355E-229
    .end array-data

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
    :array_3
    .array-data 8
        0x5cb51e0d7f1cd802L    # 3.9293284630868217E138
        0x62f39bb630fb8482L    # 4.625049629468054E168
    .end array-data

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
    :array_4
    .array-data 8
        -0x2850e38413ac744dL    # -2.394231039936139E114
        0x726964df24c86475L    # 1.3546220631847205E243
    .end array-data

    .line 420
    .line 421
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
    :array_5
    .array-data 8
        -0x2a011236dc07206bL    # -1.7733818902781534E106
        0x666a6e51128f06feL
    .end array-data

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
    :array_6
    .array-data 8
        0x37ba07583ed1d201L    # 2.987947106355096E-40
        0x4c6d72b841d3c69fL    # 1.4787909641629688E60
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
    :array_7
    .array-data 8
        -0xed396506bca5ba8L    # -1.4454436976620055E237
        -0x5082f12830547476L    # -6.126699648973314E-80
    .end array-data

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
    :array_8
    .array-data 8
        -0x475218594d30ade0L    # -1.1248968371758824E-35
        -0x5f7ce3d42ab4b310L
    .end array-data

    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    :array_9
    .array-data 8
        -0x7a1f3399dd847695L    # -2.313570983164887E-280
        0x348227c132bab3a3L    # 9.25537548267774E-56
    .end array-data

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
    :array_a
    .array-data 8
        -0x41f4ee32f75354cL    # -5.083352499390055E288
        -0x54128c2805ef739dL    # -4.308973117486121E-97
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
    :array_b
    .array-data 8
        -0x1bd901b0969cb16aL
        -0x7f6454a076deff63L    # -9.850642816625247E-306
    .end array-data

    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    :array_c
    .array-data 8
        0x24e01dbffba7db63L    # 4.54103480819292E-131
        -0x48a81934ca0c3907L    # -4.287128172122163E-42
    .end array-data

    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    :array_d
    .array-data 8
        0x20eb17599c64d044L
        0x59653072a0fa16cdL    # 4.377274871782953E122
    .end array-data

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
    :array_e
    .array-data 8
        -0xc89a73fd218e402L
        0xd777f70cb1a7d62L
    .end array-data
.end method

.method private static modelYear(C)I
    .locals 1

    .line 1
    const/16 v0, 0x45

    .line 2
    .line 3
    if-lt p0, v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x48

    .line 6
    .line 7
    if-gt p0, v0, :cond_0

    .line 8
    .line 9
    add-int/lit16 p0, p0, 0x77b

    .line 10
    .line 11
    return p0

    .line 12
    :cond_0
    const/16 v0, 0x4a

    .line 13
    .line 14
    if-lt p0, v0, :cond_1

    .line 15
    .line 16
    const/16 v0, 0x4e

    .line 17
    .line 18
    if-gt p0, v0, :cond_1

    .line 19
    .line 20
    add-int/lit16 p0, p0, 0x77a

    .line 21
    .line 22
    return p0

    .line 23
    :cond_1
    const/16 v0, 0x50

    .line 24
    .line 25
    if-ne p0, v0, :cond_2

    .line 26
    .line 27
    const/16 p0, 0x7c9

    .line 28
    .line 29
    return p0

    .line 30
    :cond_2
    const/16 v0, 0x52

    .line 31
    .line 32
    if-lt p0, v0, :cond_3

    .line 33
    .line 34
    const/16 v0, 0x54

    .line 35
    .line 36
    if-gt p0, v0, :cond_3

    .line 37
    .line 38
    add-int/lit16 p0, p0, 0x778

    .line 39
    .line 40
    return p0

    .line 41
    :cond_3
    const/16 v0, 0x56

    .line 42
    .line 43
    if-lt p0, v0, :cond_4

    .line 44
    .line 45
    const/16 v0, 0x59

    .line 46
    .line 47
    if-gt p0, v0, :cond_4

    .line 48
    .line 49
    add-int/lit16 p0, p0, 0x777

    .line 50
    .line 51
    return p0

    .line 52
    :cond_4
    const/16 v0, 0x31

    .line 53
    .line 54
    if-lt p0, v0, :cond_5

    .line 55
    .line 56
    const/16 v0, 0x39

    .line 57
    .line 58
    if-gt p0, v0, :cond_5

    .line 59
    .line 60
    add-int/lit16 p0, p0, 0x7a0

    .line 61
    .line 62
    return p0

    .line 63
    :cond_5
    const/16 v0, 0x41

    .line 64
    .line 65
    if-lt p0, v0, :cond_6

    .line 66
    .line 67
    const/16 v0, 0x44

    .line 68
    .line 69
    if-gt p0, v0, :cond_6

    .line 70
    .line 71
    add-int/lit16 p0, p0, 0x799

    .line 72
    .line 73
    return p0

    .line 74
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 75
    .line 76
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 77
    .line 78
    .line 79
    throw p0
.end method

.method private static vinCharValue(C)I
    .locals 2

    .line 1
    const/16 v0, 0x41

    .line 2
    .line 3
    const/16 v1, 0x49

    .line 4
    .line 5
    if-lt p0, v0, :cond_0

    .line 6
    .line 7
    if-gt p0, v1, :cond_0

    .line 8
    .line 9
    add-int/lit8 p0, p0, -0x40

    .line 10
    .line 11
    return p0

    .line 12
    :cond_0
    const/16 v0, 0x4a

    .line 13
    .line 14
    if-lt p0, v0, :cond_1

    .line 15
    .line 16
    const/16 v0, 0x52

    .line 17
    .line 18
    if-gt p0, v0, :cond_1

    .line 19
    .line 20
    sub-int/2addr p0, v1

    .line 21
    return p0

    .line 22
    :cond_1
    const/16 v0, 0x53

    .line 23
    .line 24
    if-lt p0, v0, :cond_2

    .line 25
    .line 26
    const/16 v0, 0x5a

    .line 27
    .line 28
    if-gt p0, v0, :cond_2

    .line 29
    .line 30
    add-int/lit8 p0, p0, -0x51

    .line 31
    .line 32
    return p0

    .line 33
    :cond_2
    const/16 v0, 0x30

    .line 34
    .line 35
    if-lt p0, v0, :cond_3

    .line 36
    .line 37
    const/16 v1, 0x39

    .line 38
    .line 39
    if-gt p0, v1, :cond_3

    .line 40
    .line 41
    sub-int/2addr p0, v0

    .line 42
    return p0

    .line 43
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 44
    .line 45
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 46
    .line 47
    .line 48
    throw p0
.end method

.method private static vinPositionWeight(I)I
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/16 v1, 0x9

    .line 3
    .line 4
    if-lt p0, v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x7

    .line 7
    if-gt p0, v0, :cond_0

    .line 8
    .line 9
    sub-int/2addr v1, p0

    .line 10
    return v1

    .line 11
    :cond_0
    const/16 v0, 0x8

    .line 12
    .line 13
    const/16 v2, 0xa

    .line 14
    .line 15
    if-ne p0, v0, :cond_1

    .line 16
    .line 17
    return v2

    .line 18
    :cond_1
    if-ne p0, v1, :cond_2

    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    return p0

    .line 22
    :cond_2
    if-lt p0, v2, :cond_3

    .line 23
    .line 24
    const/16 v0, 0x11

    .line 25
    .line 26
    if-gt p0, v0, :cond_3

    .line 27
    .line 28
    rsub-int/lit8 p0, p0, 0x13

    .line 29
    .line 30
    return p0

    .line 31
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 32
    .line 33
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 34
    .line 35
    .line 36
    throw p0
.end method


# virtual methods
.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/VINResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/VINParsedResult;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/VINParsedResult;
    .locals 14

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v1

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    return-object v3

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object p1

    .line 4
    sget-object v1, Lcom/google/zxing/client/result/VINResultParser;->IOQ:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x1

    new-array v2, v2, [J

    const-wide v4, -0x774ba53e04eec9dcL    # -9.863357332188291E-267

    aput-wide v4, v2, v0

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 5
    sget-object p1, Lcom/google/zxing/client/result/VINResultParser;->AZ09:Ljava/util/regex/Pattern;

    invoke-virtual {p1, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-nez p1, :cond_1

    return-object v3

    .line 6
    :cond_1
    :try_start_0
    invoke-static {v5}, Lcom/google/zxing/client/result/VINResultParser;->checkChecksum(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    return-object v3

    :cond_2
    const/4 p1, 0x3

    .line 7
    invoke-virtual {v5, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 8
    new-instance v0, Lcom/google/zxing/client/result/VINParsedResult;

    const/16 v1, 0x9

    .line 9
    invoke-virtual {v5, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const/16 v2, 0x11

    .line 10
    invoke-virtual {v5, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 11
    invoke-static {v6}, Lcom/google/zxing/client/result/VINResultParser;->countryCode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    const/16 v2, 0x8

    .line 12
    invoke-virtual {v5, p1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 13
    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Lcom/google/zxing/client/result/VINResultParser;->modelYear(C)I

    move-result v11

    const/16 p1, 0xa

    .line 14
    invoke-virtual {v5, p1}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 p1, 0xb

    .line 15
    invoke-virtual {v5, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    move-object v4, v0

    invoke-direct/range {v4 .. v13}, Lcom/google/zxing/client/result/VINParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object v3
.end method
