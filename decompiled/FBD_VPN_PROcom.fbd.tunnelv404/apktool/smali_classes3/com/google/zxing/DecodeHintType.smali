.class public final enum Lcom/google/zxing/DecodeHintType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/zxing/DecodeHintType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/zxing/DecodeHintType;

.field public static final enum ALLOWED_EAN_EXTENSIONS:Lcom/google/zxing/DecodeHintType;

.field public static final enum ALLOWED_LENGTHS:Lcom/google/zxing/DecodeHintType;

.field public static final enum ALSO_INVERTED:Lcom/google/zxing/DecodeHintType;

.field public static final enum ASSUME_CODE_39_CHECK_DIGIT:Lcom/google/zxing/DecodeHintType;

.field public static final enum ASSUME_GS1:Lcom/google/zxing/DecodeHintType;

.field public static final enum CHARACTER_SET:Lcom/google/zxing/DecodeHintType;

.field public static final enum NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

.field public static final enum OTHER:Lcom/google/zxing/DecodeHintType;

.field public static final enum POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

.field public static final enum PURE_BARCODE:Lcom/google/zxing/DecodeHintType;

.field public static final enum RETURN_CODABAR_START_END:Lcom/google/zxing/DecodeHintType;

.field public static final enum TRY_HARDER:Lcom/google/zxing/DecodeHintType;


# instance fields
.field private final valueType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/google/zxing/DecodeHintType;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x2

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
    const-class v4, Ljava/lang/Object;

    .line 20
    .line 21
    invoke-direct {v0, v1, v3, v4}, Lcom/google/zxing/DecodeHintType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lcom/google/zxing/DecodeHintType;->OTHER:Lcom/google/zxing/DecodeHintType;

    .line 25
    .line 26
    new-instance v1, Lcom/google/zxing/DecodeHintType;

    .line 27
    .line 28
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 29
    .line 30
    const/4 v5, 0x3

    .line 31
    new-array v6, v5, [J

    .line 32
    .line 33
    fill-array-data v6, :array_1

    .line 34
    .line 35
    .line 36
    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    const/4 v6, 0x1

    .line 44
    const-class v7, Ljava/lang/Void;

    .line 45
    .line 46
    invoke-direct {v1, v4, v6, v7}, Lcom/google/zxing/DecodeHintType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    .line 47
    .line 48
    .line 49
    sput-object v1, Lcom/google/zxing/DecodeHintType;->PURE_BARCODE:Lcom/google/zxing/DecodeHintType;

    .line 50
    .line 51
    new-instance v4, Lcom/google/zxing/DecodeHintType;

    .line 52
    .line 53
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 54
    .line 55
    new-array v9, v5, [J

    .line 56
    .line 57
    fill-array-data v9, :array_2

    .line 58
    .line 59
    .line 60
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v8

    .line 67
    const-class v9, Ljava/util/List;

    .line 68
    .line 69
    invoke-direct {v4, v8, v2, v9}, Lcom/google/zxing/DecodeHintType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    .line 70
    .line 71
    .line 72
    sput-object v4, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    .line 73
    .line 74
    new-instance v8, Lcom/google/zxing/DecodeHintType;

    .line 75
    .line 76
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 77
    .line 78
    new-array v10, v5, [J

    .line 79
    .line 80
    fill-array-data v10, :array_3

    .line 81
    .line 82
    .line 83
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v9

    .line 90
    invoke-direct {v8, v9, v5, v7}, Lcom/google/zxing/DecodeHintType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    .line 91
    .line 92
    .line 93
    sput-object v8, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    .line 94
    .line 95
    new-instance v9, Lcom/google/zxing/DecodeHintType;

    .line 96
    .line 97
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 98
    .line 99
    new-array v11, v5, [J

    .line 100
    .line 101
    fill-array-data v11, :array_4

    .line 102
    .line 103
    .line 104
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v10

    .line 111
    const/4 v11, 0x4

    .line 112
    const-class v12, Ljava/lang/String;

    .line 113
    .line 114
    invoke-direct {v9, v10, v11, v12}, Lcom/google/zxing/DecodeHintType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    .line 115
    .line 116
    .line 117
    sput-object v9, Lcom/google/zxing/DecodeHintType;->CHARACTER_SET:Lcom/google/zxing/DecodeHintType;

    .line 118
    .line 119
    new-instance v10, Lcom/google/zxing/DecodeHintType;

    .line 120
    .line 121
    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    .line 122
    .line 123
    new-array v13, v5, [J

    .line 124
    .line 125
    fill-array-data v13, :array_5

    .line 126
    .line 127
    .line 128
    invoke-direct {v12, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v12

    .line 135
    const/4 v13, 0x5

    .line 136
    const-class v14, [I

    .line 137
    .line 138
    invoke-direct {v10, v12, v13, v14}, Lcom/google/zxing/DecodeHintType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    .line 139
    .line 140
    .line 141
    sput-object v10, Lcom/google/zxing/DecodeHintType;->ALLOWED_LENGTHS:Lcom/google/zxing/DecodeHintType;

    .line 142
    .line 143
    new-instance v12, Lcom/google/zxing/DecodeHintType;

    .line 144
    .line 145
    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    .line 146
    .line 147
    new-array v2, v13, [J

    .line 148
    .line 149
    fill-array-data v2, :array_6

    .line 150
    .line 151
    .line 152
    invoke-direct {v15, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    const/4 v15, 0x6

    .line 160
    invoke-direct {v12, v2, v15, v7}, Lcom/google/zxing/DecodeHintType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    .line 161
    .line 162
    .line 163
    sput-object v12, Lcom/google/zxing/DecodeHintType;->ASSUME_CODE_39_CHECK_DIGIT:Lcom/google/zxing/DecodeHintType;

    .line 164
    .line 165
    new-instance v2, Lcom/google/zxing/DecodeHintType;

    .line 166
    .line 167
    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    .line 168
    .line 169
    new-array v6, v5, [J

    .line 170
    .line 171
    fill-array-data v6, :array_7

    .line 172
    .line 173
    .line 174
    invoke-direct {v15, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v6

    .line 181
    const/4 v15, 0x7

    .line 182
    invoke-direct {v2, v6, v15, v7}, Lcom/google/zxing/DecodeHintType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    .line 183
    .line 184
    .line 185
    sput-object v2, Lcom/google/zxing/DecodeHintType;->ASSUME_GS1:Lcom/google/zxing/DecodeHintType;

    .line 186
    .line 187
    new-instance v6, Lcom/google/zxing/DecodeHintType;

    .line 188
    .line 189
    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    .line 190
    .line 191
    new-array v3, v11, [J

    .line 192
    .line 193
    fill-array-data v3, :array_8

    .line 194
    .line 195
    .line 196
    invoke-direct {v15, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    const/16 v15, 0x8

    .line 204
    .line 205
    invoke-direct {v6, v3, v15, v7}, Lcom/google/zxing/DecodeHintType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    .line 206
    .line 207
    .line 208
    sput-object v6, Lcom/google/zxing/DecodeHintType;->RETURN_CODABAR_START_END:Lcom/google/zxing/DecodeHintType;

    .line 209
    .line 210
    new-instance v3, Lcom/google/zxing/DecodeHintType;

    .line 211
    .line 212
    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    .line 213
    .line 214
    new-array v5, v13, [J

    .line 215
    .line 216
    fill-array-data v5, :array_9

    .line 217
    .line 218
    .line 219
    invoke-direct {v15, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v5

    .line 226
    const/16 v15, 0x9

    .line 227
    .line 228
    const-class v13, Lcom/google/zxing/ResultPointCallback;

    .line 229
    .line 230
    invoke-direct {v3, v5, v15, v13}, Lcom/google/zxing/DecodeHintType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    .line 231
    .line 232
    .line 233
    sput-object v3, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    .line 234
    .line 235
    new-instance v5, Lcom/google/zxing/DecodeHintType;

    .line 236
    .line 237
    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    .line 238
    .line 239
    new-array v15, v11, [J

    .line 240
    .line 241
    fill-array-data v15, :array_a

    .line 242
    .line 243
    .line 244
    invoke-direct {v13, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v13

    .line 251
    const/16 v15, 0xa

    .line 252
    .line 253
    invoke-direct {v5, v13, v15, v14}, Lcom/google/zxing/DecodeHintType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    .line 254
    .line 255
    .line 256
    sput-object v5, Lcom/google/zxing/DecodeHintType;->ALLOWED_EAN_EXTENSIONS:Lcom/google/zxing/DecodeHintType;

    .line 257
    .line 258
    new-instance v13, Lcom/google/zxing/DecodeHintType;

    .line 259
    .line 260
    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    .line 261
    .line 262
    const/4 v15, 0x3

    .line 263
    new-array v11, v15, [J

    .line 264
    .line 265
    fill-array-data v11, :array_b

    .line 266
    .line 267
    .line 268
    invoke-direct {v14, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v11

    .line 275
    const/16 v14, 0xb

    .line 276
    .line 277
    invoke-direct {v13, v11, v14, v7}, Lcom/google/zxing/DecodeHintType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    .line 278
    .line 279
    .line 280
    sput-object v13, Lcom/google/zxing/DecodeHintType;->ALSO_INVERTED:Lcom/google/zxing/DecodeHintType;

    .line 281
    .line 282
    const/16 v7, 0xc

    .line 283
    .line 284
    new-array v7, v7, [Lcom/google/zxing/DecodeHintType;

    .line 285
    .line 286
    const/4 v11, 0x0

    .line 287
    aput-object v0, v7, v11

    .line 288
    .line 289
    const/4 v0, 0x1

    .line 290
    aput-object v1, v7, v0

    .line 291
    .line 292
    const/4 v0, 0x2

    .line 293
    aput-object v4, v7, v0

    .line 294
    .line 295
    const/4 v0, 0x3

    .line 296
    aput-object v8, v7, v0

    .line 297
    .line 298
    const/4 v0, 0x4

    .line 299
    aput-object v9, v7, v0

    .line 300
    .line 301
    const/4 v0, 0x5

    .line 302
    aput-object v10, v7, v0

    .line 303
    .line 304
    const/4 v0, 0x6

    .line 305
    aput-object v12, v7, v0

    .line 306
    .line 307
    const/4 v0, 0x7

    .line 308
    aput-object v2, v7, v0

    .line 309
    .line 310
    const/16 v0, 0x8

    .line 311
    .line 312
    aput-object v6, v7, v0

    .line 313
    .line 314
    const/16 v0, 0x9

    .line 315
    .line 316
    aput-object v3, v7, v0

    .line 317
    .line 318
    const/16 v0, 0xa

    .line 319
    .line 320
    aput-object v5, v7, v0

    .line 321
    .line 322
    aput-object v13, v7, v14

    .line 323
    .line 324
    sput-object v7, Lcom/google/zxing/DecodeHintType;->$VALUES:[Lcom/google/zxing/DecodeHintType;

    .line 325
    .line 326
    return-void

    .line 327
    :array_0
    .array-data 8
        0x4c84c005b5241959L    # 4.168013045984921E60
        -0x385d2a60df454ca7L    # -1.2517645325602807E37
    .end array-data

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
    .line 338
    .line 339
    :array_1
    .array-data 8
        0x507dcc16e83d037aL    # 5.5204526119658503E79
        0x7d4a4c3a42a20287L    # 3.359112793900448E295
        0x3633b7ffe6c143efL    # 1.3492115226972377E-47
    .end array-data

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
    :array_2
    .array-data 8
        0x42a9d6559e5839a9L    # 1.420417506818883E13
        0x7ca00cf5cc08a7cbL    # 2.0021553434526877E292
        0x6cc1406746d936deL    # 7.4338823073843E215
    .end array-data

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
    :array_3
    .array-data 8
        0x1ba27ff0c0f36ca4L
        -0x3264d7de14262443L    # -7.149853575101239E65
        -0x7fef6848dde0dc54L    # -2.307490335868331E-308
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
    .line 384
    .line 385
    .line 386
    .line 387
    :array_4
    .array-data 8
        0xbcf2b24da6e4ccdL
        -0x6e03e0d3124fb3cdL    # -4.862347619944162E-222
        0x448759c6eae8ae11L    # 1.3783815356645045E22
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
    :array_5
    .array-data 8
        0xc0a1fe0a727859aL
        0x360b44be9dcef60L
        0x1add241ea89c469fL
    .end array-data

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
    :array_6
    .array-data 8
        0x69d397b8bcf88467L    # 5.998885498311835E201
        -0x7f62a548e43acaa1L
        -0xd63b8e670c9bc8aL
        0x16122a97d1947b42L    # 2.317668374235657E-202
        0x563fc6c3a6b4a7d8L    # 2.9151672777181663E107
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
    .line 440
    .line 441
    .line 442
    .line 443
    :array_7
    .array-data 8
        -0xd3687f8d973e39cL    # -8.6951280705848E244
        -0x728a88d5d4f9a7L
        0x60a699a84cbf26d9L    # 3.8786491725019813E157
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
    :array_8
    .array-data 8
        0x1fe90278b0830a50L    # 5.829078802043372E-155
        0x78830c704be2ff62L    # 3.2202448430098376E272
        -0x2345f00e162afcebL    # -4.849427973650255E138
        -0x6ec71d7913fee96fL
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
    .line 476
    .line 477
    .line 478
    .line 479
    :array_9
    .array-data 8
        0x784fa18f53609ec1L    # 3.3421067130823245E271
        -0x401072698518eab4L    # -0.9860336685602902
        -0x19071714f0b81fdbL    # -1.083847530919151E188
        -0x1f53e5426657be67L    # -4.8232850208733975E157
        0xe49a379e214cc6L
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
    :array_a
    .array-data 8
        0x5a3910ea0ef9a213L    # 4.2419394932825426E126
        0x19c159e9a9ec4492L    # 1.276094171170326E-184
        0x33e836f132cbc004L    # 1.205503496906836E-58
        -0x45596d1bd44ce303L    # -3.646993132501004E-26
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
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    :array_b
    .array-data 8
        0x32a260fe4ff2de1eL    # 8.725895242873713E-65
        0x30c2fdc61ad302a6L    # 8.39741968355281E-74
        -0xd3bd2d9876cdbc8L    # -6.8882593194393E244
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/google/zxing/DecodeHintType;->valueType:Ljava/lang/Class;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/DecodeHintType;
    .locals 1

    .line 1
    const-class v0, Lcom/google/zxing/DecodeHintType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/zxing/DecodeHintType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/google/zxing/DecodeHintType;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/zxing/DecodeHintType;->$VALUES:[Lcom/google/zxing/DecodeHintType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/zxing/DecodeHintType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/zxing/DecodeHintType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getValueType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/zxing/DecodeHintType;->valueType:Ljava/lang/Class;

    .line 2
    .line 3
    return-object v0
.end method
