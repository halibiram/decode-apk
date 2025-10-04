.class public final enum Lcom/google/zxing/BarcodeFormat;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/zxing/BarcodeFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/zxing/BarcodeFormat;

.field public static final enum AZTEC:Lcom/google/zxing/BarcodeFormat;

.field public static final enum CODABAR:Lcom/google/zxing/BarcodeFormat;

.field public static final enum CODE_128:Lcom/google/zxing/BarcodeFormat;

.field public static final enum CODE_39:Lcom/google/zxing/BarcodeFormat;

.field public static final enum CODE_93:Lcom/google/zxing/BarcodeFormat;

.field public static final enum DATA_MATRIX:Lcom/google/zxing/BarcodeFormat;

.field public static final enum EAN_13:Lcom/google/zxing/BarcodeFormat;

.field public static final enum EAN_8:Lcom/google/zxing/BarcodeFormat;

.field public static final enum ITF:Lcom/google/zxing/BarcodeFormat;

.field public static final enum MAXICODE:Lcom/google/zxing/BarcodeFormat;

.field public static final enum PDF_417:Lcom/google/zxing/BarcodeFormat;

.field public static final enum QR_CODE:Lcom/google/zxing/BarcodeFormat;

.field public static final enum RSS_14:Lcom/google/zxing/BarcodeFormat;

.field public static final enum RSS_EXPANDED:Lcom/google/zxing/BarcodeFormat;

.field public static final enum UPC_A:Lcom/google/zxing/BarcodeFormat;

.field public static final enum UPC_E:Lcom/google/zxing/BarcodeFormat;

.field public static final enum UPC_EAN_EXTENSION:Lcom/google/zxing/BarcodeFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .line 1
    new-instance v0, Lcom/google/zxing/BarcodeFormat;

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
    invoke-direct {v0, v1, v3}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/google/zxing/BarcodeFormat;->AZTEC:Lcom/google/zxing/BarcodeFormat;

    .line 23
    .line 24
    new-instance v1, Lcom/google/zxing/BarcodeFormat;

    .line 25
    .line 26
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    new-array v5, v2, [J

    .line 29
    .line 30
    fill-array-data v5, :array_1

    .line 31
    .line 32
    .line 33
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    const/4 v5, 0x1

    .line 41
    invoke-direct {v1, v4, v5}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    sput-object v1, Lcom/google/zxing/BarcodeFormat;->CODABAR:Lcom/google/zxing/BarcodeFormat;

    .line 45
    .line 46
    new-instance v4, Lcom/google/zxing/BarcodeFormat;

    .line 47
    .line 48
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 49
    .line 50
    new-array v7, v2, [J

    .line 51
    .line 52
    fill-array-data v7, :array_2

    .line 53
    .line 54
    .line 55
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    invoke-direct {v4, v6, v2}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    .line 63
    .line 64
    .line 65
    sput-object v4, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    .line 66
    .line 67
    new-instance v6, Lcom/google/zxing/BarcodeFormat;

    .line 68
    .line 69
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 70
    .line 71
    new-array v8, v2, [J

    .line 72
    .line 73
    fill-array-data v8, :array_3

    .line 74
    .line 75
    .line 76
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    const/4 v8, 0x3

    .line 84
    invoke-direct {v6, v7, v8}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    .line 85
    .line 86
    .line 87
    sput-object v6, Lcom/google/zxing/BarcodeFormat;->CODE_93:Lcom/google/zxing/BarcodeFormat;

    .line 88
    .line 89
    new-instance v7, Lcom/google/zxing/BarcodeFormat;

    .line 90
    .line 91
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 92
    .line 93
    new-array v10, v2, [J

    .line 94
    .line 95
    fill-array-data v10, :array_4

    .line 96
    .line 97
    .line 98
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v9

    .line 105
    const/4 v10, 0x4

    .line 106
    invoke-direct {v7, v9, v10}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    .line 107
    .line 108
    .line 109
    sput-object v7, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    .line 110
    .line 111
    new-instance v9, Lcom/google/zxing/BarcodeFormat;

    .line 112
    .line 113
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 114
    .line 115
    new-array v12, v8, [J

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
    invoke-direct {v9, v11, v12}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    .line 129
    .line 130
    .line 131
    sput-object v9, Lcom/google/zxing/BarcodeFormat;->DATA_MATRIX:Lcom/google/zxing/BarcodeFormat;

    .line 132
    .line 133
    new-instance v11, Lcom/google/zxing/BarcodeFormat;

    .line 134
    .line 135
    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    .line 136
    .line 137
    new-array v14, v2, [J

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
    invoke-direct {v11, v13, v14}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    .line 151
    .line 152
    .line 153
    sput-object v11, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    .line 154
    .line 155
    new-instance v13, Lcom/google/zxing/BarcodeFormat;

    .line 156
    .line 157
    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    .line 158
    .line 159
    new-array v14, v2, [J

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
    invoke-direct {v13, v14, v15}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    .line 173
    .line 174
    .line 175
    sput-object v13, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    .line 176
    .line 177
    new-instance v14, Lcom/google/zxing/BarcodeFormat;

    .line 178
    .line 179
    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    .line 180
    .line 181
    new-array v12, v2, [J

    .line 182
    .line 183
    fill-array-data v12, :array_8

    .line 184
    .line 185
    .line 186
    invoke-direct {v15, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v12

    .line 193
    const/16 v15, 0x8

    .line 194
    .line 195
    invoke-direct {v14, v12, v15}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    .line 196
    .line 197
    .line 198
    sput-object v14, Lcom/google/zxing/BarcodeFormat;->ITF:Lcom/google/zxing/BarcodeFormat;

    .line 199
    .line 200
    new-instance v12, Lcom/google/zxing/BarcodeFormat;

    .line 201
    .line 202
    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    .line 203
    .line 204
    new-array v5, v2, [J

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
    invoke-direct {v12, v5, v15}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    .line 219
    .line 220
    .line 221
    sput-object v12, Lcom/google/zxing/BarcodeFormat;->MAXICODE:Lcom/google/zxing/BarcodeFormat;

    .line 222
    .line 223
    new-instance v5, Lcom/google/zxing/BarcodeFormat;

    .line 224
    .line 225
    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    .line 226
    .line 227
    new-array v3, v2, [J

    .line 228
    .line 229
    fill-array-data v3, :array_a

    .line 230
    .line 231
    .line 232
    invoke-direct {v15, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v3

    .line 239
    const/16 v15, 0xa

    .line 240
    .line 241
    invoke-direct {v5, v3, v15}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    .line 242
    .line 243
    .line 244
    sput-object v5, Lcom/google/zxing/BarcodeFormat;->PDF_417:Lcom/google/zxing/BarcodeFormat;

    .line 245
    .line 246
    new-instance v3, Lcom/google/zxing/BarcodeFormat;

    .line 247
    .line 248
    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    .line 249
    .line 250
    new-array v10, v2, [J

    .line 251
    .line 252
    fill-array-data v10, :array_b

    .line 253
    .line 254
    .line 255
    invoke-direct {v15, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v10

    .line 262
    const/16 v15, 0xb

    .line 263
    .line 264
    invoke-direct {v3, v10, v15}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    .line 265
    .line 266
    .line 267
    sput-object v3, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    .line 268
    .line 269
    new-instance v10, Lcom/google/zxing/BarcodeFormat;

    .line 270
    .line 271
    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    .line 272
    .line 273
    new-array v8, v2, [J

    .line 274
    .line 275
    fill-array-data v8, :array_c

    .line 276
    .line 277
    .line 278
    invoke-direct {v15, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v8

    .line 285
    const/16 v15, 0xc

    .line 286
    .line 287
    invoke-direct {v10, v8, v15}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    .line 288
    .line 289
    .line 290
    sput-object v10, Lcom/google/zxing/BarcodeFormat;->RSS_14:Lcom/google/zxing/BarcodeFormat;

    .line 291
    .line 292
    new-instance v8, Lcom/google/zxing/BarcodeFormat;

    .line 293
    .line 294
    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    .line 295
    .line 296
    move-object/from16 v16, v10

    .line 297
    .line 298
    const/4 v2, 0x3

    .line 299
    new-array v10, v2, [J

    .line 300
    .line 301
    fill-array-data v10, :array_d

    .line 302
    .line 303
    .line 304
    invoke-direct {v15, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v2

    .line 311
    const/16 v10, 0xd

    .line 312
    .line 313
    invoke-direct {v8, v2, v10}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    .line 314
    .line 315
    .line 316
    sput-object v8, Lcom/google/zxing/BarcodeFormat;->RSS_EXPANDED:Lcom/google/zxing/BarcodeFormat;

    .line 317
    .line 318
    new-instance v2, Lcom/google/zxing/BarcodeFormat;

    .line 319
    .line 320
    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    .line 321
    .line 322
    move-object/from16 v17, v8

    .line 323
    .line 324
    const/4 v10, 0x2

    .line 325
    new-array v8, v10, [J

    .line 326
    .line 327
    fill-array-data v8, :array_e

    .line 328
    .line 329
    .line 330
    invoke-direct {v15, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v8

    .line 337
    const/16 v15, 0xe

    .line 338
    .line 339
    invoke-direct {v2, v8, v15}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    .line 340
    .line 341
    .line 342
    sput-object v2, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    .line 343
    .line 344
    new-instance v8, Lcom/google/zxing/BarcodeFormat;

    .line 345
    .line 346
    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    .line 347
    .line 348
    move-object/from16 v18, v2

    .line 349
    .line 350
    new-array v2, v10, [J

    .line 351
    .line 352
    fill-array-data v2, :array_f

    .line 353
    .line 354
    .line 355
    invoke-direct {v15, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v2

    .line 362
    const/16 v10, 0xf

    .line 363
    .line 364
    invoke-direct {v8, v2, v10}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    .line 365
    .line 366
    .line 367
    sput-object v8, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;

    .line 368
    .line 369
    new-instance v2, Lcom/google/zxing/BarcodeFormat;

    .line 370
    .line 371
    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    .line 372
    .line 373
    move-object/from16 v19, v8

    .line 374
    .line 375
    const/4 v10, 0x4

    .line 376
    new-array v8, v10, [J

    .line 377
    .line 378
    fill-array-data v8, :array_10

    .line 379
    .line 380
    .line 381
    invoke-direct {v15, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v8

    .line 388
    const/16 v10, 0x10

    .line 389
    .line 390
    invoke-direct {v2, v8, v10}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    .line 391
    .line 392
    .line 393
    sput-object v2, Lcom/google/zxing/BarcodeFormat;->UPC_EAN_EXTENSION:Lcom/google/zxing/BarcodeFormat;

    .line 394
    .line 395
    const/16 v8, 0x11

    .line 396
    .line 397
    new-array v8, v8, [Lcom/google/zxing/BarcodeFormat;

    .line 398
    .line 399
    const/4 v15, 0x0

    .line 400
    aput-object v0, v8, v15

    .line 401
    .line 402
    const/4 v0, 0x1

    .line 403
    aput-object v1, v8, v0

    .line 404
    .line 405
    const/4 v0, 0x2

    .line 406
    aput-object v4, v8, v0

    .line 407
    .line 408
    const/4 v0, 0x3

    .line 409
    aput-object v6, v8, v0

    .line 410
    .line 411
    const/4 v0, 0x4

    .line 412
    aput-object v7, v8, v0

    .line 413
    .line 414
    const/4 v0, 0x5

    .line 415
    aput-object v9, v8, v0

    .line 416
    .line 417
    const/4 v0, 0x6

    .line 418
    aput-object v11, v8, v0

    .line 419
    .line 420
    const/4 v0, 0x7

    .line 421
    aput-object v13, v8, v0

    .line 422
    .line 423
    const/16 v0, 0x8

    .line 424
    .line 425
    aput-object v14, v8, v0

    .line 426
    .line 427
    const/16 v0, 0x9

    .line 428
    .line 429
    aput-object v12, v8, v0

    .line 430
    .line 431
    const/16 v0, 0xa

    .line 432
    .line 433
    aput-object v5, v8, v0

    .line 434
    .line 435
    const/16 v0, 0xb

    .line 436
    .line 437
    aput-object v3, v8, v0

    .line 438
    .line 439
    const/16 v0, 0xc

    .line 440
    .line 441
    aput-object v16, v8, v0

    .line 442
    .line 443
    const/16 v0, 0xd

    .line 444
    .line 445
    aput-object v17, v8, v0

    .line 446
    .line 447
    const/16 v0, 0xe

    .line 448
    .line 449
    aput-object v18, v8, v0

    .line 450
    .line 451
    const/16 v0, 0xf

    .line 452
    .line 453
    aput-object v19, v8, v0

    .line 454
    .line 455
    aput-object v2, v8, v10

    .line 456
    .line 457
    sput-object v8, Lcom/google/zxing/BarcodeFormat;->$VALUES:[Lcom/google/zxing/BarcodeFormat;

    .line 458
    .line 459
    return-void

    .line 460
    nop

    .line 461
    :array_0
    .array-data 8
        -0x567a4b47c4e1682cL
        0x42efeb2df744c2eL
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
    :array_1
    .array-data 8
        0x1a63558f160ed012L
        -0x77779ae6c4b03a0cL
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
    :array_2
    .array-data 8
        0x2d730d9a5ef8edc4L    # 9.353362918310045E-90
        -0x3719146d633fa888L    # -1.5973052223295945E43
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
    :array_3
    .array-data 8
        -0x427cf274eb479119L    # -2.166064343409094E-12
        -0x71576542e816a954L
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
    :array_4
    .array-data 8
        0x2dec5ba7529477b0L    # 1.7819159033419067E-87
        -0x32928ebeb7754e89L    # -9.689521463929476E64
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
    :array_5
    .array-data 8
        -0x2ab26f934a28531L    # -5.325926351399052E295
        0x14c9fdee510e4fa1L
        -0x7c9a0dd8d21b126L
    .end array-data

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
    :array_6
    .array-data 8
        0x13ba2f8eada21fa5L
        0x324ac152567c0111L    # 1.9848082754684664E-66
    .end array-data

    .line 538
    .line 539
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
    :array_7
    .array-data 8
        -0x72c7aaf91d50d0d9L    # -5.568058365728522E-245
        0x600378dc266c34ddL    # 3.2634787557886485E154
    .end array-data

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
    .line 560
    .line 561
    :array_8
    .array-data 8
        -0x4ad7b54fcab248d5L    # -1.2680885823806274E-52
        -0xb481cc42bcf9373L
    .end array-data

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
    :array_9
    .array-data 8
        -0x67f1d31c66e2745aL    # -8.267326196793715E-193
        -0x6dd67b289138d230L    # -3.52984271341908E-221
    .end array-data

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
    .line 584
    .line 585
    :array_a
    .array-data 8
        -0x17b92b37d82ce959L    # -2.0833179803590648E194
        -0x689d760cc9b91921L    # -4.960163918892569E-196
    .end array-data

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
    :array_b
    .array-data 8
        -0x5b75bfa286dcc7c6L
        0x5ae2db380a0b41eeL    # 6.535294707008324E129
    .end array-data

    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    :array_c
    .array-data 8
        -0x408a1f2e169282a4L    # -0.005341358154367395
        -0x3c1690604e3a26cL
    .end array-data

    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    :array_d
    .array-data 8
        -0x28dcd3d709bc4adaL    # -5.763511390572911E111
        -0x30b50d243da1b9dbL    # -9.522834199569615E73
        0x719bf3f73c412178L    # 1.820224113080644E239
    .end array-data

    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    :array_e
    .array-data 8
        -0x35e2eb77eec16df3L    # -1.0625190425390041E49
        -0x7a18e6162df481a2L
    .end array-data

    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    :array_f
    .array-data 8
        -0x31df0e880a8c5931L    # -2.2839437857644525E68
        -0xb2c47829d8e7a70L    # -5.783328553582315E254
    .end array-data

    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    :array_10
    .array-data 8
        -0x3a32fa377c0efc9L
        -0x4663036b4818dd8L    # -2.456472491973839E287
        0x21ac410213a455feL
        -0x35958e8386203f41L    # -3.0917547549469565E50
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

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/BarcodeFormat;
    .locals 1

    .line 1
    const-class v0, Lcom/google/zxing/BarcodeFormat;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/zxing/BarcodeFormat;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/google/zxing/BarcodeFormat;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->$VALUES:[Lcom/google/zxing/BarcodeFormat;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/zxing/BarcodeFormat;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/zxing/BarcodeFormat;

    .line 8
    .line 9
    return-object v0
.end method
