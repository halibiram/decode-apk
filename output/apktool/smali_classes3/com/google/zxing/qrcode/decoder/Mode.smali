.class public final enum Lcom/google/zxing/qrcode/decoder/Mode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/zxing/qrcode/decoder/Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/zxing/qrcode/decoder/Mode;

.field public static final enum ALPHANUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

.field public static final enum BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

.field public static final enum ECI:Lcom/google/zxing/qrcode/decoder/Mode;

.field public static final enum FNC1_FIRST_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

.field public static final enum FNC1_SECOND_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

.field public static final enum HANZI:Lcom/google/zxing/qrcode/decoder/Mode;

.field public static final enum KANJI:Lcom/google/zxing/qrcode/decoder/Mode;

.field public static final enum NUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

.field public static final enum STRUCTURED_APPEND:Lcom/google/zxing/qrcode/decoder/Mode;

.field public static final enum TERMINATOR:Lcom/google/zxing/qrcode/decoder/Mode;


# instance fields
.field private final bits:I

.field private final characterCountBitsForVersions:[I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/google/zxing/qrcode/decoder/Mode;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    new-array v3, v2, [J

    .line 7
    .line 8
    fill-array-data v3, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/4 v3, 0x0

    .line 19
    filled-new-array {v3, v3, v3}, [I

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-direct {v0, v1, v3, v4, v3}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>(Ljava/lang/String;I[II)V

    .line 24
    .line 25
    .line 26
    sput-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->TERMINATOR:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 27
    .line 28
    new-instance v1, Lcom/google/zxing/qrcode/decoder/Mode;

    .line 29
    .line 30
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 31
    .line 32
    const/4 v5, 0x2

    .line 33
    new-array v6, v5, [J

    .line 34
    .line 35
    fill-array-data v6, :array_1

    .line 36
    .line 37
    .line 38
    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    const/16 v6, 0xe

    .line 46
    .line 47
    const/16 v7, 0xa

    .line 48
    .line 49
    const/16 v8, 0xc

    .line 50
    .line 51
    filled-new-array {v7, v8, v6}, [I

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    const/4 v9, 0x1

    .line 56
    invoke-direct {v1, v4, v9, v6, v9}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>(Ljava/lang/String;I[II)V

    .line 57
    .line 58
    .line 59
    sput-object v1, Lcom/google/zxing/qrcode/decoder/Mode;->NUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 60
    .line 61
    new-instance v4, Lcom/google/zxing/qrcode/decoder/Mode;

    .line 62
    .line 63
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 64
    .line 65
    new-array v10, v2, [J

    .line 66
    .line 67
    fill-array-data v10, :array_2

    .line 68
    .line 69
    .line 70
    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    const/16 v10, 0x9

    .line 78
    .line 79
    const/16 v11, 0xb

    .line 80
    .line 81
    const/16 v12, 0xd

    .line 82
    .line 83
    filled-new-array {v10, v11, v12}, [I

    .line 84
    .line 85
    .line 86
    move-result-object v11

    .line 87
    invoke-direct {v4, v6, v5, v11, v5}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>(Ljava/lang/String;I[II)V

    .line 88
    .line 89
    .line 90
    sput-object v4, Lcom/google/zxing/qrcode/decoder/Mode;->ALPHANUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 91
    .line 92
    new-instance v6, Lcom/google/zxing/qrcode/decoder/Mode;

    .line 93
    .line 94
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 95
    .line 96
    const/4 v13, 0x4

    .line 97
    new-array v14, v13, [J

    .line 98
    .line 99
    fill-array-data v14, :array_3

    .line 100
    .line 101
    .line 102
    invoke-direct {v11, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v11

    .line 109
    filled-new-array {v3, v3, v3}, [I

    .line 110
    .line 111
    .line 112
    move-result-object v14

    .line 113
    invoke-direct {v6, v11, v2, v14, v2}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>(Ljava/lang/String;I[II)V

    .line 114
    .line 115
    .line 116
    sput-object v6, Lcom/google/zxing/qrcode/decoder/Mode;->STRUCTURED_APPEND:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 117
    .line 118
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Mode;

    .line 119
    .line 120
    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    .line 121
    .line 122
    new-array v15, v5, [J

    .line 123
    .line 124
    fill-array-data v15, :array_4

    .line 125
    .line 126
    .line 127
    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v14

    .line 134
    const/16 v15, 0x10

    .line 135
    .line 136
    const/16 v2, 0x8

    .line 137
    .line 138
    filled-new-array {v2, v15, v15}, [I

    .line 139
    .line 140
    .line 141
    move-result-object v15

    .line 142
    invoke-direct {v11, v14, v13, v15, v13}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>(Ljava/lang/String;I[II)V

    .line 143
    .line 144
    .line 145
    sput-object v11, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 146
    .line 147
    new-instance v14, Lcom/google/zxing/qrcode/decoder/Mode;

    .line 148
    .line 149
    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    .line 150
    .line 151
    new-array v9, v5, [J

    .line 152
    .line 153
    fill-array-data v9, :array_5

    .line 154
    .line 155
    .line 156
    invoke-direct {v15, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v9

    .line 163
    filled-new-array {v3, v3, v3}, [I

    .line 164
    .line 165
    .line 166
    move-result-object v15

    .line 167
    const/4 v12, 0x5

    .line 168
    const/4 v10, 0x7

    .line 169
    invoke-direct {v14, v9, v12, v15, v10}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>(Ljava/lang/String;I[II)V

    .line 170
    .line 171
    .line 172
    sput-object v14, Lcom/google/zxing/qrcode/decoder/Mode;->ECI:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 173
    .line 174
    new-instance v9, Lcom/google/zxing/qrcode/decoder/Mode;

    .line 175
    .line 176
    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    .line 177
    .line 178
    new-array v10, v5, [J

    .line 179
    .line 180
    fill-array-data v10, :array_6

    .line 181
    .line 182
    .line 183
    invoke-direct {v15, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v10

    .line 190
    const/4 v15, 0x6

    .line 191
    filled-new-array {v2, v7, v8}, [I

    .line 192
    .line 193
    .line 194
    move-result-object v5

    .line 195
    invoke-direct {v9, v10, v15, v5, v2}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>(Ljava/lang/String;I[II)V

    .line 196
    .line 197
    .line 198
    sput-object v9, Lcom/google/zxing/qrcode/decoder/Mode;->KANJI:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 199
    .line 200
    new-instance v5, Lcom/google/zxing/qrcode/decoder/Mode;

    .line 201
    .line 202
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 203
    .line 204
    new-array v15, v13, [J

    .line 205
    .line 206
    fill-array-data v15, :array_7

    .line 207
    .line 208
    .line 209
    invoke-direct {v10, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v10

    .line 216
    filled-new-array {v3, v3, v3}, [I

    .line 217
    .line 218
    .line 219
    move-result-object v15

    .line 220
    const/4 v7, 0x7

    .line 221
    invoke-direct {v5, v10, v7, v15, v12}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>(Ljava/lang/String;I[II)V

    .line 222
    .line 223
    .line 224
    sput-object v5, Lcom/google/zxing/qrcode/decoder/Mode;->FNC1_FIRST_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 225
    .line 226
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Mode;

    .line 227
    .line 228
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 229
    .line 230
    new-array v15, v13, [J

    .line 231
    .line 232
    fill-array-data v15, :array_8

    .line 233
    .line 234
    .line 235
    invoke-direct {v10, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v10

    .line 242
    filled-new-array {v3, v3, v3}, [I

    .line 243
    .line 244
    .line 245
    move-result-object v15

    .line 246
    const/16 v12, 0x9

    .line 247
    .line 248
    invoke-direct {v7, v10, v2, v15, v12}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>(Ljava/lang/String;I[II)V

    .line 249
    .line 250
    .line 251
    sput-object v7, Lcom/google/zxing/qrcode/decoder/Mode;->FNC1_SECOND_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 252
    .line 253
    new-instance v10, Lcom/google/zxing/qrcode/decoder/Mode;

    .line 254
    .line 255
    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    .line 256
    .line 257
    const/4 v13, 0x2

    .line 258
    new-array v3, v13, [J

    .line 259
    .line 260
    fill-array-data v3, :array_9

    .line 261
    .line 262
    .line 263
    invoke-direct {v15, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v3

    .line 270
    const/16 v15, 0xa

    .line 271
    .line 272
    filled-new-array {v2, v15, v8}, [I

    .line 273
    .line 274
    .line 275
    move-result-object v8

    .line 276
    const/16 v2, 0xd

    .line 277
    .line 278
    invoke-direct {v10, v3, v12, v8, v2}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>(Ljava/lang/String;I[II)V

    .line 279
    .line 280
    .line 281
    sput-object v10, Lcom/google/zxing/qrcode/decoder/Mode;->HANZI:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 282
    .line 283
    new-array v2, v15, [Lcom/google/zxing/qrcode/decoder/Mode;

    .line 284
    .line 285
    const/4 v3, 0x0

    .line 286
    aput-object v0, v2, v3

    .line 287
    .line 288
    const/4 v0, 0x1

    .line 289
    aput-object v1, v2, v0

    .line 290
    .line 291
    aput-object v4, v2, v13

    .line 292
    .line 293
    const/4 v0, 0x3

    .line 294
    aput-object v6, v2, v0

    .line 295
    .line 296
    const/4 v0, 0x4

    .line 297
    aput-object v11, v2, v0

    .line 298
    .line 299
    const/4 v0, 0x5

    .line 300
    aput-object v14, v2, v0

    .line 301
    .line 302
    const/4 v0, 0x6

    .line 303
    aput-object v9, v2, v0

    .line 304
    .line 305
    const/4 v0, 0x7

    .line 306
    aput-object v5, v2, v0

    .line 307
    .line 308
    const/16 v0, 0x8

    .line 309
    .line 310
    aput-object v7, v2, v0

    .line 311
    .line 312
    const/16 v0, 0x9

    .line 313
    .line 314
    aput-object v10, v2, v0

    .line 315
    .line 316
    sput-object v2, Lcom/google/zxing/qrcode/decoder/Mode;->$VALUES:[Lcom/google/zxing/qrcode/decoder/Mode;

    .line 317
    .line 318
    return-void

    .line 319
    :array_0
    .array-data 8
        -0x5ae99d1380b91d17L    # -5.046224314056741E-130
        -0x384d86976b7eb23eL    # -2.45564929803956E37
        -0x520891dfcfc7c7ddL    # -2.9445359853516397E-87
    .end array-data

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
    .line 334
    .line 335
    :array_1
    .array-data 8
        -0x69bfe3078718be7bL    # -1.644575443452055E-201
        -0x4eac930202869036L    # -4.397834078371394E-71
    .end array-data

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
    :array_2
    .array-data 8
        -0x625238fcbc8804b9L
        0x42d08bb62a5bf3f1L    # 7.276897091169577E13
        -0x6778550dbf5da9a7L    # -1.6600068928393787E-190
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
    :array_3
    .array-data 8
        -0x57cce09895f1fa2cL    # -4.853222861626917E-115
        0x52996dfde7734fd1L    # 8.093925493485822E89
        -0x7b7ec6e42133779aL    # -5.655421753514731E-287
        -0x59a08d878c9decdeL
    .end array-data

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
    :array_4
    .array-data 8
        0x156b2f2b72a1c7ccL    # 1.693442413965633E-205
        0x6816477891864ac2L    # 2.5411862907587766E193
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
    :array_5
    .array-data 8
        -0x310fd8e304e4921eL    # -1.7837189041971626E72
        -0x5d28c463c9570f74L    # -7.620870308010121E-141
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
    :array_6
    .array-data 8
        0x66870c0c7954155dL    # 7.834350095053779E185
        -0x71df9bcd02ad343eL
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
    :array_7
    .array-data 8
        -0x5fd1c6769bfc695aL
        0x4f28fa33c0fcecadL    # 2.2065580711333E73
        -0x9c6b451787ed3c7L    # -3.111442544298606E261
        0x5fff3bc6107b728dL    # 2.6173290496431324E154
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
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    :array_8
    .array-data 8
        0x557d241610b4bac7L    # 6.5268315725195846E103
        -0x6c4fbb3719454074L    # -7.550847247049405E-214
        -0x79deb0f21ad7548fL    # -3.814179545251513E-279
        -0x7405836c23910aedL    # -5.780299600555281E-251
    .end array-data

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
    :array_9
    .array-data 8
        -0x515bb4fa3e0c10baL    # -5.222983876883756E-84
        -0x2c961fa0754b84d4L    # -6.747043274942668E93
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;I[II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/google/zxing/qrcode/decoder/Mode;->characterCountBitsForVersions:[I

    .line 5
    .line 6
    iput p4, p0, Lcom/google/zxing/qrcode/decoder/Mode;->bits:I

    .line 7
    .line 8
    return-void
.end method

.method public static forBits(I)Lcom/google/zxing/qrcode/decoder/Mode;
    .locals 1

    .line 1
    if-eqz p0, :cond_9

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_8

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_7

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p0, v0, :cond_6

    .line 11
    .line 12
    const/4 v0, 0x4

    .line 13
    if-eq p0, v0, :cond_5

    .line 14
    .line 15
    const/4 v0, 0x5

    .line 16
    if-eq p0, v0, :cond_4

    .line 17
    .line 18
    const/4 v0, 0x7

    .line 19
    if-eq p0, v0, :cond_3

    .line 20
    .line 21
    const/16 v0, 0x8

    .line 22
    .line 23
    if-eq p0, v0, :cond_2

    .line 24
    .line 25
    const/16 v0, 0x9

    .line 26
    .line 27
    if-eq p0, v0, :cond_1

    .line 28
    .line 29
    const/16 v0, 0xd

    .line 30
    .line 31
    if-ne p0, v0, :cond_0

    .line 32
    .line 33
    sget-object p0, Lcom/google/zxing/qrcode/decoder/Mode;->HANZI:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 37
    .line 38
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 39
    .line 40
    .line 41
    throw p0

    .line 42
    :cond_1
    sget-object p0, Lcom/google/zxing/qrcode/decoder/Mode;->FNC1_SECOND_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 43
    .line 44
    return-object p0

    .line 45
    :cond_2
    sget-object p0, Lcom/google/zxing/qrcode/decoder/Mode;->KANJI:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 46
    .line 47
    return-object p0

    .line 48
    :cond_3
    sget-object p0, Lcom/google/zxing/qrcode/decoder/Mode;->ECI:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 49
    .line 50
    return-object p0

    .line 51
    :cond_4
    sget-object p0, Lcom/google/zxing/qrcode/decoder/Mode;->FNC1_FIRST_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 52
    .line 53
    return-object p0

    .line 54
    :cond_5
    sget-object p0, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 55
    .line 56
    return-object p0

    .line 57
    :cond_6
    sget-object p0, Lcom/google/zxing/qrcode/decoder/Mode;->STRUCTURED_APPEND:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 58
    .line 59
    return-object p0

    .line 60
    :cond_7
    sget-object p0, Lcom/google/zxing/qrcode/decoder/Mode;->ALPHANUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 61
    .line 62
    return-object p0

    .line 63
    :cond_8
    sget-object p0, Lcom/google/zxing/qrcode/decoder/Mode;->NUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 64
    .line 65
    return-object p0

    .line 66
    :cond_9
    sget-object p0, Lcom/google/zxing/qrcode/decoder/Mode;->TERMINATOR:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 67
    .line 68
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/qrcode/decoder/Mode;
    .locals 1

    .line 1
    const-class v0, Lcom/google/zxing/qrcode/decoder/Mode;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/zxing/qrcode/decoder/Mode;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/google/zxing/qrcode/decoder/Mode;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->$VALUES:[Lcom/google/zxing/qrcode/decoder/Mode;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/zxing/qrcode/decoder/Mode;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/zxing/qrcode/decoder/Mode;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getBits()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/qrcode/decoder/Mode;->bits:I

    .line 2
    .line 3
    return v0
.end method

.method public getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionNumber()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/16 v0, 0x9

    .line 6
    .line 7
    if-gt p1, v0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/16 v0, 0x1a

    .line 12
    .line 13
    if-gt p1, v0, :cond_1

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 p1, 0x2

    .line 18
    :goto_0
    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/Mode;->characterCountBitsForVersions:[I

    .line 19
    .line 20
    aget p1, v0, p1

    .line 21
    .line 22
    return p1
.end method
