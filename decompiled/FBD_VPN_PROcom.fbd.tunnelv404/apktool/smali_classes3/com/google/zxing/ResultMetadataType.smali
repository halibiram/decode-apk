.class public final enum Lcom/google/zxing/ResultMetadataType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/zxing/ResultMetadataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/zxing/ResultMetadataType;

.field public static final enum BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

.field public static final enum ERASURES_CORRECTED:Lcom/google/zxing/ResultMetadataType;

.field public static final enum ERRORS_CORRECTED:Lcom/google/zxing/ResultMetadataType;

.field public static final enum ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

.field public static final enum ISSUE_NUMBER:Lcom/google/zxing/ResultMetadataType;

.field public static final enum ORIENTATION:Lcom/google/zxing/ResultMetadataType;

.field public static final enum OTHER:Lcom/google/zxing/ResultMetadataType;

.field public static final enum PDF417_EXTRA_METADATA:Lcom/google/zxing/ResultMetadataType;

.field public static final enum POSSIBLE_COUNTRY:Lcom/google/zxing/ResultMetadataType;

.field public static final enum STRUCTURED_APPEND_PARITY:Lcom/google/zxing/ResultMetadataType;

.field public static final enum STRUCTURED_APPEND_SEQUENCE:Lcom/google/zxing/ResultMetadataType;

.field public static final enum SUGGESTED_PRICE:Lcom/google/zxing/ResultMetadataType;

.field public static final enum SYMBOLOGY_IDENTIFIER:Lcom/google/zxing/ResultMetadataType;

.field public static final enum UPC_EAN_EXTENSION:Lcom/google/zxing/ResultMetadataType;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 1
    new-instance v0, Lcom/google/zxing/ResultMetadataType;

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
    invoke-direct {v0, v1, v3}, Lcom/google/zxing/ResultMetadataType;-><init>(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/google/zxing/ResultMetadataType;->OTHER:Lcom/google/zxing/ResultMetadataType;

    .line 23
    .line 24
    new-instance v1, Lcom/google/zxing/ResultMetadataType;

    .line 25
    .line 26
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    const/4 v5, 0x3

    .line 29
    new-array v6, v5, [J

    .line 30
    .line 31
    fill-array-data v6, :array_1

    .line 32
    .line 33
    .line 34
    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    const/4 v6, 0x1

    .line 42
    invoke-direct {v1, v4, v6}, Lcom/google/zxing/ResultMetadataType;-><init>(Ljava/lang/String;I)V

    .line 43
    .line 44
    .line 45
    sput-object v1, Lcom/google/zxing/ResultMetadataType;->ORIENTATION:Lcom/google/zxing/ResultMetadataType;

    .line 46
    .line 47
    new-instance v4, Lcom/google/zxing/ResultMetadataType;

    .line 48
    .line 49
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 50
    .line 51
    new-array v8, v5, [J

    .line 52
    .line 53
    fill-array-data v8, :array_2

    .line 54
    .line 55
    .line 56
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    invoke-direct {v4, v7, v2}, Lcom/google/zxing/ResultMetadataType;-><init>(Ljava/lang/String;I)V

    .line 64
    .line 65
    .line 66
    sput-object v4, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

    .line 67
    .line 68
    new-instance v7, Lcom/google/zxing/ResultMetadataType;

    .line 69
    .line 70
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 71
    .line 72
    const/4 v9, 0x4

    .line 73
    new-array v10, v9, [J

    .line 74
    .line 75
    fill-array-data v10, :array_3

    .line 76
    .line 77
    .line 78
    invoke-direct {v8, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v8

    .line 85
    invoke-direct {v7, v8, v5}, Lcom/google/zxing/ResultMetadataType;-><init>(Ljava/lang/String;I)V

    .line 86
    .line 87
    .line 88
    sput-object v7, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    .line 89
    .line 90
    new-instance v8, Lcom/google/zxing/ResultMetadataType;

    .line 91
    .line 92
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 93
    .line 94
    new-array v11, v5, [J

    .line 95
    .line 96
    fill-array-data v11, :array_4

    .line 97
    .line 98
    .line 99
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v10

    .line 106
    invoke-direct {v8, v10, v9}, Lcom/google/zxing/ResultMetadataType;-><init>(Ljava/lang/String;I)V

    .line 107
    .line 108
    .line 109
    sput-object v8, Lcom/google/zxing/ResultMetadataType;->ERRORS_CORRECTED:Lcom/google/zxing/ResultMetadataType;

    .line 110
    .line 111
    new-instance v10, Lcom/google/zxing/ResultMetadataType;

    .line 112
    .line 113
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 114
    .line 115
    new-array v12, v9, [J

    .line 116
    .line 117
    fill-array-data v12, :array_5

    .line 118
    .line 119
    .line 120
    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v11

    .line 127
    const/4 v12, 0x5

    .line 128
    invoke-direct {v10, v11, v12}, Lcom/google/zxing/ResultMetadataType;-><init>(Ljava/lang/String;I)V

    .line 129
    .line 130
    .line 131
    sput-object v10, Lcom/google/zxing/ResultMetadataType;->ERASURES_CORRECTED:Lcom/google/zxing/ResultMetadataType;

    .line 132
    .line 133
    new-instance v11, Lcom/google/zxing/ResultMetadataType;

    .line 134
    .line 135
    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    .line 136
    .line 137
    new-array v14, v5, [J

    .line 138
    .line 139
    fill-array-data v14, :array_6

    .line 140
    .line 141
    .line 142
    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v13

    .line 149
    const/4 v14, 0x6

    .line 150
    invoke-direct {v11, v13, v14}, Lcom/google/zxing/ResultMetadataType;-><init>(Ljava/lang/String;I)V

    .line 151
    .line 152
    .line 153
    sput-object v11, Lcom/google/zxing/ResultMetadataType;->ISSUE_NUMBER:Lcom/google/zxing/ResultMetadataType;

    .line 154
    .line 155
    new-instance v13, Lcom/google/zxing/ResultMetadataType;

    .line 156
    .line 157
    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    .line 158
    .line 159
    new-array v14, v5, [J

    .line 160
    .line 161
    fill-array-data v14, :array_7

    .line 162
    .line 163
    .line 164
    invoke-direct {v15, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v14

    .line 171
    const/4 v15, 0x7

    .line 172
    invoke-direct {v13, v14, v15}, Lcom/google/zxing/ResultMetadataType;-><init>(Ljava/lang/String;I)V

    .line 173
    .line 174
    .line 175
    sput-object v13, Lcom/google/zxing/ResultMetadataType;->SUGGESTED_PRICE:Lcom/google/zxing/ResultMetadataType;

    .line 176
    .line 177
    new-instance v14, Lcom/google/zxing/ResultMetadataType;

    .line 178
    .line 179
    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    .line 180
    .line 181
    new-array v2, v5, [J

    .line 182
    .line 183
    fill-array-data v2, :array_8

    .line 184
    .line 185
    .line 186
    invoke-direct {v15, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    const/16 v15, 0x8

    .line 194
    .line 195
    invoke-direct {v14, v2, v15}, Lcom/google/zxing/ResultMetadataType;-><init>(Ljava/lang/String;I)V

    .line 196
    .line 197
    .line 198
    sput-object v14, Lcom/google/zxing/ResultMetadataType;->POSSIBLE_COUNTRY:Lcom/google/zxing/ResultMetadataType;

    .line 199
    .line 200
    new-instance v2, Lcom/google/zxing/ResultMetadataType;

    .line 201
    .line 202
    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    .line 203
    .line 204
    new-array v5, v9, [J

    .line 205
    .line 206
    fill-array-data v5, :array_9

    .line 207
    .line 208
    .line 209
    invoke-direct {v15, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v5

    .line 216
    const/16 v15, 0x9

    .line 217
    .line 218
    invoke-direct {v2, v5, v15}, Lcom/google/zxing/ResultMetadataType;-><init>(Ljava/lang/String;I)V

    .line 219
    .line 220
    .line 221
    sput-object v2, Lcom/google/zxing/ResultMetadataType;->UPC_EAN_EXTENSION:Lcom/google/zxing/ResultMetadataType;

    .line 222
    .line 223
    new-instance v5, Lcom/google/zxing/ResultMetadataType;

    .line 224
    .line 225
    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    .line 226
    .line 227
    new-array v6, v9, [J

    .line 228
    .line 229
    fill-array-data v6, :array_a

    .line 230
    .line 231
    .line 232
    invoke-direct {v15, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v6

    .line 239
    const/16 v15, 0xa

    .line 240
    .line 241
    invoke-direct {v5, v6, v15}, Lcom/google/zxing/ResultMetadataType;-><init>(Ljava/lang/String;I)V

    .line 242
    .line 243
    .line 244
    sput-object v5, Lcom/google/zxing/ResultMetadataType;->PDF417_EXTRA_METADATA:Lcom/google/zxing/ResultMetadataType;

    .line 245
    .line 246
    new-instance v6, Lcom/google/zxing/ResultMetadataType;

    .line 247
    .line 248
    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    .line 249
    .line 250
    new-array v3, v12, [J

    .line 251
    .line 252
    fill-array-data v3, :array_b

    .line 253
    .line 254
    .line 255
    invoke-direct {v15, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v3

    .line 262
    const/16 v15, 0xb

    .line 263
    .line 264
    invoke-direct {v6, v3, v15}, Lcom/google/zxing/ResultMetadataType;-><init>(Ljava/lang/String;I)V

    .line 265
    .line 266
    .line 267
    sput-object v6, Lcom/google/zxing/ResultMetadataType;->STRUCTURED_APPEND_SEQUENCE:Lcom/google/zxing/ResultMetadataType;

    .line 268
    .line 269
    new-instance v3, Lcom/google/zxing/ResultMetadataType;

    .line 270
    .line 271
    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    .line 272
    .line 273
    new-array v12, v9, [J

    .line 274
    .line 275
    fill-array-data v12, :array_c

    .line 276
    .line 277
    .line 278
    invoke-direct {v15, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v12

    .line 285
    const/16 v15, 0xc

    .line 286
    .line 287
    invoke-direct {v3, v12, v15}, Lcom/google/zxing/ResultMetadataType;-><init>(Ljava/lang/String;I)V

    .line 288
    .line 289
    .line 290
    sput-object v3, Lcom/google/zxing/ResultMetadataType;->STRUCTURED_APPEND_PARITY:Lcom/google/zxing/ResultMetadataType;

    .line 291
    .line 292
    new-instance v12, Lcom/google/zxing/ResultMetadataType;

    .line 293
    .line 294
    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    .line 295
    .line 296
    move-object/from16 v17, v3

    .line 297
    .line 298
    new-array v3, v9, [J

    .line 299
    .line 300
    fill-array-data v3, :array_d

    .line 301
    .line 302
    .line 303
    invoke-direct {v15, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v3

    .line 310
    const/16 v15, 0xd

    .line 311
    .line 312
    invoke-direct {v12, v3, v15}, Lcom/google/zxing/ResultMetadataType;-><init>(Ljava/lang/String;I)V

    .line 313
    .line 314
    .line 315
    sput-object v12, Lcom/google/zxing/ResultMetadataType;->SYMBOLOGY_IDENTIFIER:Lcom/google/zxing/ResultMetadataType;

    .line 316
    .line 317
    const/16 v3, 0xe

    .line 318
    .line 319
    new-array v3, v3, [Lcom/google/zxing/ResultMetadataType;

    .line 320
    .line 321
    const/16 v16, 0x0

    .line 322
    .line 323
    aput-object v0, v3, v16

    .line 324
    .line 325
    const/4 v0, 0x1

    .line 326
    aput-object v1, v3, v0

    .line 327
    .line 328
    const/4 v0, 0x2

    .line 329
    aput-object v4, v3, v0

    .line 330
    .line 331
    const/4 v0, 0x3

    .line 332
    aput-object v7, v3, v0

    .line 333
    .line 334
    aput-object v8, v3, v9

    .line 335
    .line 336
    const/4 v0, 0x5

    .line 337
    aput-object v10, v3, v0

    .line 338
    .line 339
    const/4 v0, 0x6

    .line 340
    aput-object v11, v3, v0

    .line 341
    .line 342
    const/4 v0, 0x7

    .line 343
    aput-object v13, v3, v0

    .line 344
    .line 345
    const/16 v0, 0x8

    .line 346
    .line 347
    aput-object v14, v3, v0

    .line 348
    .line 349
    const/16 v0, 0x9

    .line 350
    .line 351
    aput-object v2, v3, v0

    .line 352
    .line 353
    const/16 v0, 0xa

    .line 354
    .line 355
    aput-object v5, v3, v0

    .line 356
    .line 357
    const/16 v0, 0xb

    .line 358
    .line 359
    aput-object v6, v3, v0

    .line 360
    .line 361
    const/16 v0, 0xc

    .line 362
    .line 363
    aput-object v17, v3, v0

    .line 364
    .line 365
    aput-object v12, v3, v15

    .line 366
    .line 367
    sput-object v3, Lcom/google/zxing/ResultMetadataType;->$VALUES:[Lcom/google/zxing/ResultMetadataType;

    .line 368
    .line 369
    return-void

    .line 370
    nop

    .line 371
    :array_0
    .array-data 8
        0x798b46abf6dc59faL    # 3.0219528524632707E277
        -0x5eb485badea957f9L
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
        -0x5d80e43d746d7005L
        0x3ef737b8a1f7f728L    # 2.2142087003011003E-5
        -0x1fff929f541e5a97L    # -2.7531687225621854E154
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
    .line 396
    .line 397
    .line 398
    .line 399
    :array_2
    .array-data 8
        0x633abf4aa8dd3769L    # 1.0094305217965792E170
        0x500d6ff1bdcf6b04L    # 4.260755542799453E77
        -0xc08d81ad67128e7L
    .end array-data

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
    :array_3
    .array-data 8
        0x574e88295ead0ebL
        0x63e1a17a9345105eL    # 1.362695954630362E173
        -0x5260860768cdcbe0L
        -0x1770bfd88e4a7d9bL    # -4.562528489550948E195
    .end array-data

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
    :array_4
    .array-data 8
        -0x287324658ce672a6L    # -5.552032313217592E113
        0x1cc4bd7ff8736e2L
        -0x7f9eafb3924ebfffL    # -7.704837214042232E-307
    .end array-data

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
    .line 450
    .line 451
    :array_5
    .array-data 8
        -0x492197a1fa69539eL    # -2.1305120908358713E-44
        -0x653634c449f01c61L
        0x3c435f5ffeb458acL    # 2.1003770030225333E-18
        0x6cae62f19e484cb5L    # 3.27346413370615E215
    .end array-data

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
    .line 470
    .line 471
    :array_6
    .array-data 8
        -0x44992e2e3d96af54L    # -1.5100749147377775E-22
        -0x10c4bfb1498d1040L    # -6.4556858342166516E227
        -0x8cb80b1fb44aa12L
    .end array-data

    .line 472
    .line 473
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
    .line 486
    .line 487
    :array_7
    .array-data 8
        -0x3de834a223710c03L    # -2.554904349173827E10
        0x16dfb0a4d225ec13L
        -0x3f4fff7feeab07b4L    # -4096.500264464015
    .end array-data

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
    :array_8
    .array-data 8
        0xc9789287a947294L
        -0x39da1d0da8d0007cL    # -8.670139983994073E29
        0x4d31c219b89a3b84L    # 7.305301803184164E63
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
    :array_9
    .array-data 8
        -0x6061761c648a5d2L
        -0x3fd12a4d9bdd6ce3L    # -15.417376641483822
        -0x55e9595b709dfb88L    # -6.172597055915875E-106
        -0x28726e1b1b2d9a3eL    # -5.689029977534092E113
    .end array-data

    .line 520
    .line 521
    .line 522
    .line 523
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
    :array_a
    .array-data 8
        0x698637b03f713264L    # 2.125802773464366E200
        0x65ee15cfa9565bc2L    # 9.987120434427689E182
        0xa4fd1caa8abf523L
        -0x45e032b107288571L    # -1.0034937469975769E-28
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
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    :array_b
    .array-data 8
        -0x114638ee82affa92L    # -2.3853902138292677E225
        0x2ea7186668a20ef6L    # 5.944222591282435E-84
        -0x9e4646944b86eacL    # -8.489606690996822E260
        -0x7585a87557c0edaaL
        0x60a63f0a2b391821L    # 3.8178999373192746E157
    .end array-data

    .line 560
    .line 561
    .line 562
    .line 563
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
    .line 580
    .line 581
    .line 582
    .line 583
    :array_c
    .array-data 8
        -0x946b76b0eef6f0aL    # -7.961479874888854E263
        -0x7e27aa4c54b33ed1L    # -9.084303241355858E-300
        -0x3c3b32061eda788bL    # -2.9982579927536707E18
        0xe6802d9f3dcb1cdL    # 2.880754195628758E-239
    .end array-data

    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    :array_d
    .array-data 8
        -0x1dcc4a033ee3526L    # -4.024839660527035E299
        0x67673ae3017ceb37L    # 1.2937697228246236E190
        -0xedbc00bf33fca07L    # -1.0301672087376027E237
        0x624f9c88119a6a45L    # 3.6407601681819863E165
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/ResultMetadataType;
    .locals 1

    .line 1
    const-class v0, Lcom/google/zxing/ResultMetadataType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/zxing/ResultMetadataType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/google/zxing/ResultMetadataType;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/zxing/ResultMetadataType;->$VALUES:[Lcom/google/zxing/ResultMetadataType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/zxing/ResultMetadataType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/zxing/ResultMetadataType;

    .line 8
    .line 9
    return-object v0
.end method
