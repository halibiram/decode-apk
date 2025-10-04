.class public final enum Lcom/google/zxing/EncodeHintType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/zxing/EncodeHintType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/zxing/EncodeHintType;

.field public static final enum AZTEC_LAYERS:Lcom/google/zxing/EncodeHintType;

.field public static final enum CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

.field public static final enum CODE128_COMPACT:Lcom/google/zxing/EncodeHintType;

.field public static final enum DATA_MATRIX_COMPACT:Lcom/google/zxing/EncodeHintType;

.field public static final enum DATA_MATRIX_SHAPE:Lcom/google/zxing/EncodeHintType;

.field public static final enum ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

.field public static final enum FORCE_C40:Lcom/google/zxing/EncodeHintType;

.field public static final enum FORCE_CODE_SET:Lcom/google/zxing/EncodeHintType;

.field public static final enum GS1_FORMAT:Lcom/google/zxing/EncodeHintType;

.field public static final enum MARGIN:Lcom/google/zxing/EncodeHintType;

.field public static final enum MAX_SIZE:Lcom/google/zxing/EncodeHintType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum MIN_SIZE:Lcom/google/zxing/EncodeHintType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum PDF417_AUTO_ECI:Lcom/google/zxing/EncodeHintType;

.field public static final enum PDF417_COMPACT:Lcom/google/zxing/EncodeHintType;

.field public static final enum PDF417_COMPACTION:Lcom/google/zxing/EncodeHintType;

.field public static final enum PDF417_DIMENSIONS:Lcom/google/zxing/EncodeHintType;

.field public static final enum QR_COMPACT:Lcom/google/zxing/EncodeHintType;

.field public static final enum QR_MASK_PATTERN:Lcom/google/zxing/EncodeHintType;

.field public static final enum QR_VERSION:Lcom/google/zxing/EncodeHintType;


# direct methods
.method static constructor <clinit>()V
    .locals 23

    .line 1
    new-instance v0, Lcom/google/zxing/EncodeHintType;

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
    invoke-direct {v0, v1, v3}, Lcom/google/zxing/EncodeHintType;-><init>(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    .line 23
    .line 24
    new-instance v1, Lcom/google/zxing/EncodeHintType;

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
    invoke-direct {v1, v4, v5}, Lcom/google/zxing/EncodeHintType;-><init>(Ljava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    sput-object v1, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    .line 45
    .line 46
    new-instance v4, Lcom/google/zxing/EncodeHintType;

    .line 47
    .line 48
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 49
    .line 50
    const/4 v7, 0x4

    .line 51
    new-array v8, v7, [J

    .line 52
    .line 53
    fill-array-data v8, :array_2

    .line 54
    .line 55
    .line 56
    invoke-direct {v6, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    const/4 v8, 0x2

    .line 64
    invoke-direct {v4, v6, v8}, Lcom/google/zxing/EncodeHintType;-><init>(Ljava/lang/String;I)V

    .line 65
    .line 66
    .line 67
    sput-object v4, Lcom/google/zxing/EncodeHintType;->DATA_MATRIX_SHAPE:Lcom/google/zxing/EncodeHintType;

    .line 68
    .line 69
    new-instance v6, Lcom/google/zxing/EncodeHintType;

    .line 70
    .line 71
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 72
    .line 73
    new-array v10, v7, [J

    .line 74
    .line 75
    fill-array-data v10, :array_3

    .line 76
    .line 77
    .line 78
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v9

    .line 85
    invoke-direct {v6, v9, v2}, Lcom/google/zxing/EncodeHintType;-><init>(Ljava/lang/String;I)V

    .line 86
    .line 87
    .line 88
    sput-object v6, Lcom/google/zxing/EncodeHintType;->DATA_MATRIX_COMPACT:Lcom/google/zxing/EncodeHintType;

    .line 89
    .line 90
    new-instance v9, Lcom/google/zxing/EncodeHintType;

    .line 91
    .line 92
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 93
    .line 94
    new-array v11, v8, [J

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
    invoke-direct {v9, v10, v7}, Lcom/google/zxing/EncodeHintType;-><init>(Ljava/lang/String;I)V

    .line 107
    .line 108
    .line 109
    sput-object v9, Lcom/google/zxing/EncodeHintType;->MIN_SIZE:Lcom/google/zxing/EncodeHintType;

    .line 110
    .line 111
    new-instance v10, Lcom/google/zxing/EncodeHintType;

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
    invoke-direct {v10, v11, v12}, Lcom/google/zxing/EncodeHintType;-><init>(Ljava/lang/String;I)V

    .line 129
    .line 130
    .line 131
    sput-object v10, Lcom/google/zxing/EncodeHintType;->MAX_SIZE:Lcom/google/zxing/EncodeHintType;

    .line 132
    .line 133
    new-instance v11, Lcom/google/zxing/EncodeHintType;

    .line 134
    .line 135
    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    .line 136
    .line 137
    new-array v14, v8, [J

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
    invoke-direct {v11, v13, v14}, Lcom/google/zxing/EncodeHintType;-><init>(Ljava/lang/String;I)V

    .line 151
    .line 152
    .line 153
    sput-object v11, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;

    .line 154
    .line 155
    new-instance v13, Lcom/google/zxing/EncodeHintType;

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
    invoke-direct {v13, v14, v15}, Lcom/google/zxing/EncodeHintType;-><init>(Ljava/lang/String;I)V

    .line 173
    .line 174
    .line 175
    sput-object v13, Lcom/google/zxing/EncodeHintType;->PDF417_COMPACT:Lcom/google/zxing/EncodeHintType;

    .line 176
    .line 177
    new-instance v14, Lcom/google/zxing/EncodeHintType;

    .line 178
    .line 179
    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    .line 180
    .line 181
    new-array v12, v7, [J

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
    invoke-direct {v14, v12, v15}, Lcom/google/zxing/EncodeHintType;-><init>(Ljava/lang/String;I)V

    .line 196
    .line 197
    .line 198
    sput-object v14, Lcom/google/zxing/EncodeHintType;->PDF417_COMPACTION:Lcom/google/zxing/EncodeHintType;

    .line 199
    .line 200
    new-instance v12, Lcom/google/zxing/EncodeHintType;

    .line 201
    .line 202
    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    .line 203
    .line 204
    new-array v8, v7, [J

    .line 205
    .line 206
    fill-array-data v8, :array_9

    .line 207
    .line 208
    .line 209
    invoke-direct {v15, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v8

    .line 216
    const/16 v15, 0x9

    .line 217
    .line 218
    invoke-direct {v12, v8, v15}, Lcom/google/zxing/EncodeHintType;-><init>(Ljava/lang/String;I)V

    .line 219
    .line 220
    .line 221
    sput-object v12, Lcom/google/zxing/EncodeHintType;->PDF417_DIMENSIONS:Lcom/google/zxing/EncodeHintType;

    .line 222
    .line 223
    new-instance v8, Lcom/google/zxing/EncodeHintType;

    .line 224
    .line 225
    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    .line 226
    .line 227
    new-array v7, v2, [J

    .line 228
    .line 229
    fill-array-data v7, :array_a

    .line 230
    .line 231
    .line 232
    invoke-direct {v15, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v7

    .line 239
    const/16 v15, 0xa

    .line 240
    .line 241
    invoke-direct {v8, v7, v15}, Lcom/google/zxing/EncodeHintType;-><init>(Ljava/lang/String;I)V

    .line 242
    .line 243
    .line 244
    sput-object v8, Lcom/google/zxing/EncodeHintType;->PDF417_AUTO_ECI:Lcom/google/zxing/EncodeHintType;

    .line 245
    .line 246
    new-instance v7, Lcom/google/zxing/EncodeHintType;

    .line 247
    .line 248
    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    .line 249
    .line 250
    new-array v5, v2, [J

    .line 251
    .line 252
    fill-array-data v5, :array_b

    .line 253
    .line 254
    .line 255
    invoke-direct {v15, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v5

    .line 262
    const/16 v15, 0xb

    .line 263
    .line 264
    invoke-direct {v7, v5, v15}, Lcom/google/zxing/EncodeHintType;-><init>(Ljava/lang/String;I)V

    .line 265
    .line 266
    .line 267
    sput-object v7, Lcom/google/zxing/EncodeHintType;->AZTEC_LAYERS:Lcom/google/zxing/EncodeHintType;

    .line 268
    .line 269
    new-instance v5, Lcom/google/zxing/EncodeHintType;

    .line 270
    .line 271
    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    .line 272
    .line 273
    new-array v3, v2, [J

    .line 274
    .line 275
    fill-array-data v3, :array_c

    .line 276
    .line 277
    .line 278
    invoke-direct {v15, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v3

    .line 285
    const/16 v15, 0xc

    .line 286
    .line 287
    invoke-direct {v5, v3, v15}, Lcom/google/zxing/EncodeHintType;-><init>(Ljava/lang/String;I)V

    .line 288
    .line 289
    .line 290
    sput-object v5, Lcom/google/zxing/EncodeHintType;->QR_VERSION:Lcom/google/zxing/EncodeHintType;

    .line 291
    .line 292
    new-instance v3, Lcom/google/zxing/EncodeHintType;

    .line 293
    .line 294
    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    .line 295
    .line 296
    move-object/from16 v17, v5

    .line 297
    .line 298
    new-array v5, v2, [J

    .line 299
    .line 300
    fill-array-data v5, :array_d

    .line 301
    .line 302
    .line 303
    invoke-direct {v15, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v5

    .line 310
    const/16 v15, 0xd

    .line 311
    .line 312
    invoke-direct {v3, v5, v15}, Lcom/google/zxing/EncodeHintType;-><init>(Ljava/lang/String;I)V

    .line 313
    .line 314
    .line 315
    sput-object v3, Lcom/google/zxing/EncodeHintType;->QR_MASK_PATTERN:Lcom/google/zxing/EncodeHintType;

    .line 316
    .line 317
    new-instance v5, Lcom/google/zxing/EncodeHintType;

    .line 318
    .line 319
    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    .line 320
    .line 321
    move-object/from16 v18, v3

    .line 322
    .line 323
    new-array v3, v2, [J

    .line 324
    .line 325
    fill-array-data v3, :array_e

    .line 326
    .line 327
    .line 328
    invoke-direct {v15, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v3

    .line 335
    const/16 v15, 0xe

    .line 336
    .line 337
    invoke-direct {v5, v3, v15}, Lcom/google/zxing/EncodeHintType;-><init>(Ljava/lang/String;I)V

    .line 338
    .line 339
    .line 340
    sput-object v5, Lcom/google/zxing/EncodeHintType;->QR_COMPACT:Lcom/google/zxing/EncodeHintType;

    .line 341
    .line 342
    new-instance v3, Lcom/google/zxing/EncodeHintType;

    .line 343
    .line 344
    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    .line 345
    .line 346
    move-object/from16 v19, v5

    .line 347
    .line 348
    new-array v5, v2, [J

    .line 349
    .line 350
    fill-array-data v5, :array_f

    .line 351
    .line 352
    .line 353
    invoke-direct {v15, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v5

    .line 360
    const/16 v15, 0xf

    .line 361
    .line 362
    invoke-direct {v3, v5, v15}, Lcom/google/zxing/EncodeHintType;-><init>(Ljava/lang/String;I)V

    .line 363
    .line 364
    .line 365
    sput-object v3, Lcom/google/zxing/EncodeHintType;->GS1_FORMAT:Lcom/google/zxing/EncodeHintType;

    .line 366
    .line 367
    new-instance v5, Lcom/google/zxing/EncodeHintType;

    .line 368
    .line 369
    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    .line 370
    .line 371
    move-object/from16 v20, v3

    .line 372
    .line 373
    new-array v3, v2, [J

    .line 374
    .line 375
    fill-array-data v3, :array_10

    .line 376
    .line 377
    .line 378
    invoke-direct {v15, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v3

    .line 385
    const/16 v15, 0x10

    .line 386
    .line 387
    invoke-direct {v5, v3, v15}, Lcom/google/zxing/EncodeHintType;-><init>(Ljava/lang/String;I)V

    .line 388
    .line 389
    .line 390
    sput-object v5, Lcom/google/zxing/EncodeHintType;->FORCE_CODE_SET:Lcom/google/zxing/EncodeHintType;

    .line 391
    .line 392
    new-instance v3, Lcom/google/zxing/EncodeHintType;

    .line 393
    .line 394
    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    .line 395
    .line 396
    move-object/from16 v21, v5

    .line 397
    .line 398
    new-array v5, v2, [J

    .line 399
    .line 400
    fill-array-data v5, :array_11

    .line 401
    .line 402
    .line 403
    invoke-direct {v15, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 404
    .line 405
    .line 406
    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v5

    .line 410
    const/16 v15, 0x11

    .line 411
    .line 412
    invoke-direct {v3, v5, v15}, Lcom/google/zxing/EncodeHintType;-><init>(Ljava/lang/String;I)V

    .line 413
    .line 414
    .line 415
    sput-object v3, Lcom/google/zxing/EncodeHintType;->FORCE_C40:Lcom/google/zxing/EncodeHintType;

    .line 416
    .line 417
    new-instance v5, Lcom/google/zxing/EncodeHintType;

    .line 418
    .line 419
    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    .line 420
    .line 421
    move-object/from16 v22, v3

    .line 422
    .line 423
    new-array v3, v2, [J

    .line 424
    .line 425
    fill-array-data v3, :array_12

    .line 426
    .line 427
    .line 428
    invoke-direct {v15, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v3

    .line 435
    const/16 v15, 0x12

    .line 436
    .line 437
    invoke-direct {v5, v3, v15}, Lcom/google/zxing/EncodeHintType;-><init>(Ljava/lang/String;I)V

    .line 438
    .line 439
    .line 440
    sput-object v5, Lcom/google/zxing/EncodeHintType;->CODE128_COMPACT:Lcom/google/zxing/EncodeHintType;

    .line 441
    .line 442
    const/16 v3, 0x13

    .line 443
    .line 444
    new-array v3, v3, [Lcom/google/zxing/EncodeHintType;

    .line 445
    .line 446
    const/16 v16, 0x0

    .line 447
    .line 448
    aput-object v0, v3, v16

    .line 449
    .line 450
    const/4 v0, 0x1

    .line 451
    aput-object v1, v3, v0

    .line 452
    .line 453
    const/4 v0, 0x2

    .line 454
    aput-object v4, v3, v0

    .line 455
    .line 456
    aput-object v6, v3, v2

    .line 457
    .line 458
    const/4 v0, 0x4

    .line 459
    aput-object v9, v3, v0

    .line 460
    .line 461
    const/4 v0, 0x5

    .line 462
    aput-object v10, v3, v0

    .line 463
    .line 464
    const/4 v0, 0x6

    .line 465
    aput-object v11, v3, v0

    .line 466
    .line 467
    const/4 v0, 0x7

    .line 468
    aput-object v13, v3, v0

    .line 469
    .line 470
    const/16 v0, 0x8

    .line 471
    .line 472
    aput-object v14, v3, v0

    .line 473
    .line 474
    const/16 v0, 0x9

    .line 475
    .line 476
    aput-object v12, v3, v0

    .line 477
    .line 478
    const/16 v0, 0xa

    .line 479
    .line 480
    aput-object v8, v3, v0

    .line 481
    .line 482
    const/16 v0, 0xb

    .line 483
    .line 484
    aput-object v7, v3, v0

    .line 485
    .line 486
    const/16 v0, 0xc

    .line 487
    .line 488
    aput-object v17, v3, v0

    .line 489
    .line 490
    const/16 v0, 0xd

    .line 491
    .line 492
    aput-object v18, v3, v0

    .line 493
    .line 494
    const/16 v0, 0xe

    .line 495
    .line 496
    aput-object v19, v3, v0

    .line 497
    .line 498
    const/16 v0, 0xf

    .line 499
    .line 500
    aput-object v20, v3, v0

    .line 501
    .line 502
    const/16 v0, 0x10

    .line 503
    .line 504
    aput-object v21, v3, v0

    .line 505
    .line 506
    const/16 v0, 0x11

    .line 507
    .line 508
    aput-object v22, v3, v0

    .line 509
    .line 510
    aput-object v5, v3, v15

    .line 511
    .line 512
    sput-object v3, Lcom/google/zxing/EncodeHintType;->$VALUES:[Lcom/google/zxing/EncodeHintType;

    .line 513
    .line 514
    return-void

    .line 515
    :array_0
    .array-data 8
        -0xfe1408c0daecee0L    # -1.1934153383905358E232
        -0x75077d93200694efL    # -8.161644641637449E-256
        0x2ac2d8341f55f9d3L
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
    .line 528
    .line 529
    .line 530
    .line 531
    :array_1
    .array-data 8
        0x1178eea423b2c643L
        -0x4284bcdbabfd21f7L    # -1.54968080743538E-12
        0x5febc01db30e418cL    # 1.1627273317871663E154
    .end array-data

    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
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
    :array_2
    .array-data 8
        -0xcf1012389acc69bL
        0xbfa8a2db0b7cdd2L
        0x7be6615a0212a0f4L    # 6.815714156065906E288
        -0x3810818d3a7af075L    # -3.3490100093864727E38
    .end array-data

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
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    :array_3
    .array-data 8
        0x7301bb5cc3cbb261L    # 9.685930799975258E245
        0x20c3ef0e6f1d4653L    # 7.612066654944008E-151
        -0x11008151d96ab70dL    # -4.6631161128306213E226
        0x116c93c00838bca9L    # 9.650551791459504E-225
    .end array-data

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
    .line 584
    .line 585
    .line 586
    .line 587
    :array_4
    .array-data 8
        -0x7485b1007d7d8f6dL    # -2.242751577767591E-253
        -0x25db9a4aa141b01eL    # -1.7259207779751875E126
    .end array-data

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
    :array_5
    .array-data 8
        0x65a3d48276fb1d1L
        -0x709091a3c7cb9c49L
    .end array-data

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
    .line 610
    .line 611
    :array_6
    .array-data 8
        -0x798cb06afb6dc2aaL
        -0x43cef4eb55e76655L    # -9.239182804400037E-19
    .end array-data

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
    .line 622
    .line 623
    :array_7
    .array-data 8
        -0x61c9cc280bd9847aL
        0x631f97fb54c23bc3L    # 2.980833912370811E169
        0x390c34e642529078L    # 6.790501208595631E-34
    .end array-data

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
    .line 638
    .line 639
    :array_8
    .array-data 8
        0x3ce874c687f6a35L
        -0x697c36c7ac190083L    # -3.231106272747942E-200
        0x296681c1c16f168aL
        -0x79802150e2afcb21L
    .end array-data

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
    :array_9
    .array-data 8
        -0x47cbe62396df1fbaL    # -5.907158702233401E-38
        0x5d45be3d9eb53f6aL    # 2.0714287573240608E141
        0x581231a6630f27b6L    # 1.7921948452349388E116
        -0x1a6b4942b956b190L    # -2.1488085478304225E181
    .end array-data

    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    :array_a
    .array-data 8
        0x7ebc5f58a63cef2aL    # 3.0401320558814896E302
        -0x352eb093950113d2L    # -2.5906130848409437E52
        -0x5ae972ffac31ed91L    # -5.083274590231171E-130
    .end array-data

    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    :array_b
    .array-data 8
        0x4ac77d131a3ada4eL    # 1.7576236802083076E52
        0x60934cc1ff128dc4L    # 1.6561182897151E157
        0x7601b62f30fce40aL    # 2.7232372197441715E260
    .end array-data

    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    :array_c
    .array-data 8
        -0x7527444fc704a99L    # -1.997938735166722E273
        -0x655c14a7f8b1c348L    # -2.400197279445044E-180
        -0x75c5788150195f57L    # -2.156796440381234E-259
    .end array-data

    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    :array_d
    .array-data 8
        0x5b859886534604ebL    # 7.664386455746921E132
        0x8aab38f6686d40fL
        -0x3e2db771ae9fc19bL    # -1.2269796535038083E9
    .end array-data

    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    :array_e
    .array-data 8
        -0x1ffca611fdbf1510L    # -3.243229404760475E154
        0x531c021d57c0bc4cL    # 2.282153349358811E92
        0x589f7abcd2544d98L    # 7.938260705862147E118
    .end array-data

    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    :array_f
    .array-data 8
        -0x4e2247a300a1c9b7L    # -1.7224724025700558E-68
        -0x76e8a9e866c96c9fL    # -7.237286723380209E-265
        0x5980c47e812dda50L    # 1.385536564722134E123
    .end array-data

    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    :array_10
    .array-data 8
        0x710d466bb04d17b2L    # 3.7232715725574246E236
        0x158caa90ecdb88eaL
        -0x724234081a359a21L
    .end array-data

    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    :array_11
    .array-data 8
        -0x10838a54d4532ebcL    # -1.0787136431334181E229
        0x12e8daf752c77e4aL    # 1.408227393680277E-217
        -0x1b4bae766fd5e444L    # -1.286498322543132E177
    .end array-data

    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    :array_12
    .array-data 8
        -0x4770b364cfe71bfaL    # -2.9433666645578546E-36
        0x644ce84031e0d38L
        0x6c876c9b8bf14901L    # 6.30859418916845E214
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

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/EncodeHintType;
    .locals 1

    .line 1
    const-class v0, Lcom/google/zxing/EncodeHintType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/zxing/EncodeHintType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/google/zxing/EncodeHintType;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/zxing/EncodeHintType;->$VALUES:[Lcom/google/zxing/EncodeHintType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/zxing/EncodeHintType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/zxing/EncodeHintType;

    .line 8
    .line 9
    return-object v0
.end method
