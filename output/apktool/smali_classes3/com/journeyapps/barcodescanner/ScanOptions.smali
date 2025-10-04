.class public Lcom/journeyapps/barcodescanner/ScanOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALL_CODE_TYPES:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final CODE_128:Ljava/lang/String;

.field public static final CODE_39:Ljava/lang/String;

.field public static final CODE_93:Ljava/lang/String;

.field public static final DATA_MATRIX:Ljava/lang/String;

.field public static final EAN_13:Ljava/lang/String;

.field public static final EAN_8:Ljava/lang/String;

.field public static final ITF:Ljava/lang/String;

.field public static final ONE_D_CODE_TYPES:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PDF_417:Ljava/lang/String;

.field public static final PRODUCT_CODE_TYPES:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final QR_CODE:Ljava/lang/String;

.field public static final RSS_14:Ljava/lang/String;

.field public static final RSS_EXPANDED:Ljava/lang/String;

.field public static final UPC_A:Ljava/lang/String;

.field public static final UPC_E:Ljava/lang/String;


# instance fields
.field private captureActivity:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private desiredBarcodeFormats:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final moreExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v2, v1, [J

    .line 5
    .line 6
    fill-array-data v2, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lcom/journeyapps/barcodescanner/ScanOptions;->UPC_A:Ljava/lang/String;

    .line 17
    .line 18
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 19
    .line 20
    new-array v2, v1, [J

    .line 21
    .line 22
    fill-array-data v2, :array_1

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    sput-object v0, Lcom/journeyapps/barcodescanner/ScanOptions;->UPC_E:Ljava/lang/String;

    .line 33
    .line 34
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 35
    .line 36
    new-array v2, v1, [J

    .line 37
    .line 38
    fill-array-data v2, :array_2

    .line 39
    .line 40
    .line 41
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    sput-object v0, Lcom/journeyapps/barcodescanner/ScanOptions;->EAN_8:Ljava/lang/String;

    .line 49
    .line 50
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 51
    .line 52
    new-array v2, v1, [J

    .line 53
    .line 54
    fill-array-data v2, :array_3

    .line 55
    .line 56
    .line 57
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    sput-object v0, Lcom/journeyapps/barcodescanner/ScanOptions;->EAN_13:Ljava/lang/String;

    .line 65
    .line 66
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 67
    .line 68
    new-array v2, v1, [J

    .line 69
    .line 70
    fill-array-data v2, :array_4

    .line 71
    .line 72
    .line 73
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    sput-object v0, Lcom/journeyapps/barcodescanner/ScanOptions;->RSS_14:Ljava/lang/String;

    .line 81
    .line 82
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 83
    .line 84
    new-array v2, v1, [J

    .line 85
    .line 86
    fill-array-data v2, :array_5

    .line 87
    .line 88
    .line 89
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    sput-object v0, Lcom/journeyapps/barcodescanner/ScanOptions;->CODE_39:Ljava/lang/String;

    .line 97
    .line 98
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 99
    .line 100
    new-array v2, v1, [J

    .line 101
    .line 102
    fill-array-data v2, :array_6

    .line 103
    .line 104
    .line 105
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    sput-object v0, Lcom/journeyapps/barcodescanner/ScanOptions;->CODE_93:Ljava/lang/String;

    .line 113
    .line 114
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 115
    .line 116
    new-array v2, v1, [J

    .line 117
    .line 118
    fill-array-data v2, :array_7

    .line 119
    .line 120
    .line 121
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    sput-object v0, Lcom/journeyapps/barcodescanner/ScanOptions;->CODE_128:Ljava/lang/String;

    .line 129
    .line 130
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 131
    .line 132
    new-array v2, v1, [J

    .line 133
    .line 134
    fill-array-data v2, :array_8

    .line 135
    .line 136
    .line 137
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    sput-object v0, Lcom/journeyapps/barcodescanner/ScanOptions;->ITF:Ljava/lang/String;

    .line 145
    .line 146
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 147
    .line 148
    const/4 v2, 0x3

    .line 149
    new-array v3, v2, [J

    .line 150
    .line 151
    fill-array-data v3, :array_9

    .line 152
    .line 153
    .line 154
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    sput-object v0, Lcom/journeyapps/barcodescanner/ScanOptions;->RSS_EXPANDED:Ljava/lang/String;

    .line 162
    .line 163
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 164
    .line 165
    new-array v3, v1, [J

    .line 166
    .line 167
    fill-array-data v3, :array_a

    .line 168
    .line 169
    .line 170
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    sput-object v0, Lcom/journeyapps/barcodescanner/ScanOptions;->QR_CODE:Ljava/lang/String;

    .line 178
    .line 179
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 180
    .line 181
    new-array v3, v2, [J

    .line 182
    .line 183
    fill-array-data v3, :array_b

    .line 184
    .line 185
    .line 186
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    sput-object v0, Lcom/journeyapps/barcodescanner/ScanOptions;->DATA_MATRIX:Ljava/lang/String;

    .line 194
    .line 195
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 196
    .line 197
    new-array v3, v1, [J

    .line 198
    .line 199
    fill-array-data v3, :array_c

    .line 200
    .line 201
    .line 202
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    sput-object v0, Lcom/journeyapps/barcodescanner/ScanOptions;->PDF_417:Ljava/lang/String;

    .line 210
    .line 211
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 212
    .line 213
    new-array v3, v1, [J

    .line 214
    .line 215
    fill-array-data v3, :array_d

    .line 216
    .line 217
    .line 218
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 226
    .line 227
    new-array v4, v1, [J

    .line 228
    .line 229
    fill-array-data v4, :array_e

    .line 230
    .line 231
    .line 232
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v3

    .line 239
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 240
    .line 241
    new-array v5, v1, [J

    .line 242
    .line 243
    fill-array-data v5, :array_f

    .line 244
    .line 245
    .line 246
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v4

    .line 253
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 254
    .line 255
    new-array v6, v1, [J

    .line 256
    .line 257
    fill-array-data v6, :array_10

    .line 258
    .line 259
    .line 260
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v5

    .line 267
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 268
    .line 269
    new-array v7, v1, [J

    .line 270
    .line 271
    fill-array-data v7, :array_11

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
    filled-new-array {v0, v3, v4, v5, v6}, [Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    invoke-static {v0}, Lcom/journeyapps/barcodescanner/ScanOptions;->list([Ljava/lang/String;)Ljava/util/List;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    sput-object v0, Lcom/journeyapps/barcodescanner/ScanOptions;->PRODUCT_CODE_TYPES:Ljava/util/Collection;

    .line 290
    .line 291
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 292
    .line 293
    new-array v3, v1, [J

    .line 294
    .line 295
    fill-array-data v3, :array_12

    .line 296
    .line 297
    .line 298
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v4

    .line 305
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 306
    .line 307
    new-array v3, v1, [J

    .line 308
    .line 309
    fill-array-data v3, :array_13

    .line 310
    .line 311
    .line 312
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v5

    .line 319
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 320
    .line 321
    new-array v3, v1, [J

    .line 322
    .line 323
    fill-array-data v3, :array_14

    .line 324
    .line 325
    .line 326
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v6

    .line 333
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 334
    .line 335
    new-array v3, v1, [J

    .line 336
    .line 337
    fill-array-data v3, :array_15

    .line 338
    .line 339
    .line 340
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v7

    .line 347
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 348
    .line 349
    new-array v3, v1, [J

    .line 350
    .line 351
    fill-array-data v3, :array_16

    .line 352
    .line 353
    .line 354
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v8

    .line 361
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 362
    .line 363
    new-array v3, v1, [J

    .line 364
    .line 365
    fill-array-data v3, :array_17

    .line 366
    .line 367
    .line 368
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v9

    .line 375
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 376
    .line 377
    new-array v3, v1, [J

    .line 378
    .line 379
    fill-array-data v3, :array_18

    .line 380
    .line 381
    .line 382
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v10

    .line 389
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 390
    .line 391
    new-array v3, v1, [J

    .line 392
    .line 393
    fill-array-data v3, :array_19

    .line 394
    .line 395
    .line 396
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v11

    .line 403
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 404
    .line 405
    new-array v3, v1, [J

    .line 406
    .line 407
    fill-array-data v3, :array_1a

    .line 408
    .line 409
    .line 410
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v12

    .line 417
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 418
    .line 419
    new-array v1, v1, [J

    .line 420
    .line 421
    fill-array-data v1, :array_1b

    .line 422
    .line 423
    .line 424
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 425
    .line 426
    .line 427
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v13

    .line 431
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 432
    .line 433
    new-array v1, v2, [J

    .line 434
    .line 435
    fill-array-data v1, :array_1c

    .line 436
    .line 437
    .line 438
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 439
    .line 440
    .line 441
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v14

    .line 445
    filled-new-array/range {v4 .. v14}, [Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v0

    .line 449
    invoke-static {v0}, Lcom/journeyapps/barcodescanner/ScanOptions;->list([Ljava/lang/String;)Ljava/util/List;

    .line 450
    .line 451
    .line 452
    move-result-object v0

    .line 453
    sput-object v0, Lcom/journeyapps/barcodescanner/ScanOptions;->ONE_D_CODE_TYPES:Ljava/util/Collection;

    .line 454
    .line 455
    const/4 v0, 0x0

    .line 456
    sput-object v0, Lcom/journeyapps/barcodescanner/ScanOptions;->ALL_CODE_TYPES:Ljava/util/Collection;

    .line 457
    .line 458
    return-void

    .line 459
    :array_0
    .array-data 8
        0x1f63675c329ec6a4L
        0x6149bd16e21bf3f0L    # 4.523276541074797E160
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
    :array_1
    .array-data 8
        -0x2bf899a53734840bL    # -6.24771475709484E96
        -0x2074e12938748040L    # -1.7755174935032222E152
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
    :array_2
    .array-data 8
        -0x1f445e7b0f72341fL    # -9.484038810362608E157
        -0x41828c9c58b254ecL    # -1.0971255355394043E-7
    .end array-data

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
    :array_3
    .array-data 8
        -0x301c07fd588fe953L    # -7.225712410204154E76
        0x3ba60a2e0d7c9fb1L    # 2.333550910133998E-21
    .end array-data

    .line 496
    .line 497
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
    :array_4
    .array-data 8
        0x5576f2e51bd7d1d0L    # 5.139947300302524E103
        -0x617abd48a6873829L
    .end array-data

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
    :array_5
    .array-data 8
        0x5eb7ae7ebaabeb72L    # 1.8925585089562467E148
        0x7724b1c17ec27c36L    # 8.341000788812567E265
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
    :array_6
    .array-data 8
        -0x361a97bb6d3e8428L    # -9.777124580944063E47
        -0x145b05575b1ab251L    # -3.448534544747951E210
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
    :array_7
    .array-data 8
        0x6be41a73fa05b1aL
        0x3118ac613fefbedL
    .end array-data

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
    :array_8
    .array-data 8
        -0x6fe0094d147895dbL    # -5.147068456333687E-231
        -0x19cbdeccdecb4074L    # -2.1383282490241967E184
    .end array-data

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
    :array_9
    .array-data 8
        0x27ebf37e9ab85ba8L
        -0x24c6a59423fc3495L    # -2.8118428925664773E131
        -0x627d9fcb5cdb1b1dL    # -1.558112232199862E-166
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
    :array_a
    .array-data 8
        0x24c81cf1f05b5cf6L
        -0x3f90dd7416154d5eL    # -249.07957931365405
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
    :array_b
    .array-data 8
        0x6d3763f15d5dd062L    # 1.2901332197902062E218
        0xbb66d86015214ddL    # 3.0590799000928017E-252
        0x6a1a4d931df7707eL    # 1.288554554739769E203
    .end array-data

    .line 596
    .line 597
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
    .line 610
    .line 611
    :array_c
    .array-data 8
        0x465ee2704079a916L    # 9.787696767260183E30
        0x52b0ab6ae9b6faf6L    # 2.122285946219414E90
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
    :array_d
    .array-data 8
        0x3d289daac49d75a4L    # 4.3726599165183454E-14
        0x3719d82cc9f8cbbcL
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
    :array_e
    .array-data 8
        0x20ccfc2fdda57085L
        -0x17ec2e73c0ec2becL    # -2.260523508710298E193
    .end array-data

    .line 636
    .line 637
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
    :array_f
    .array-data 8
        0x4cd3f555aa21bb20L    # 1.28287253021646E62
        0x52ee06068143e3abL    # 3.0579512255955184E91
    .end array-data

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
    :array_10
    .array-data 8
        0x43d888c8db295557L    # 7.0715347894390856E18
        -0x49b55565af4817bfL    # -3.649180607612118E-47
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
    :array_11
    .array-data 8
        -0x520cb2be11f5d134L
        0x4bd988defa8d445eL    # 2.5044314187466802E57
    .end array-data

    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    :array_12
    .array-data 8
        0x64b6dfa65af91bb3L    # 1.4482802222612137E177
        -0x12f273a4a14547f8L    # -2.0372247232787423E217
    .end array-data

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
    :array_13
    .array-data 8
        -0x7dcabffb96757946L    # -5.076970169856963E-298
        -0x75f036769cc6e63fL    # -3.230328973205884E-260
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
    :array_14
    .array-data 8
        0x375b637d5051753bL    # 4.912594739260087E-42
        -0x78367f9a3107814bL
    .end array-data

    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    :array_15
    .array-data 8
        0x66cc547d201b6d18L    # 1.5408289315372952E187
        0x1d03cfbdaf17224dL    # 6.561898962954292E-169
    .end array-data

    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    :array_16
    .array-data 8
        0x729bed62e47606f7L    # 1.1918052756222676E244
        -0x73d6787c798e8098L    # -4.457110289117304E-250
    .end array-data

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
    :array_17
    .array-data 8
        -0x32c893f9abf8e978L    # -9.635240236340222E63
        -0x72f5055e68269081L    # -7.717201739785129E-246
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
    :array_18
    .array-data 8
        0x3f3066f2fddbbae2L    # 2.5027687466565144E-4
        0x28c528d14ef13e63L
    .end array-data

    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    :array_19
    .array-data 8
        -0x4f1aa86da8d55147L    # -3.774746049437709E-73
        -0x14a904ea5e618467L    # -1.1804895010533564E209
    .end array-data

    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    :array_1a
    .array-data 8
        -0x79aac4715ba2df6L    # -9.013567017712375E271
        -0xdafedecc0ac77f7L    # -4.286361361210942E242
    .end array-data

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
    :array_1b
    .array-data 8
        -0x51135d1753b4b3b0L    # -1.1792586136810675E-82
        0x1f7f7ea08c02b12bL    # 5.7348080035996E-157
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
    :array_1c
    .array-data 8
        -0x1e5b2961c06779a6L    # -2.3437487518724582E162
        0x51e8a9f4ef7a0a19L    # 3.8331023192697876E86
        -0x7a47cd9994c90d17L
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/journeyapps/barcodescanner/ScanOptions;->moreExtras:Ljava/util/Map;

    .line 11
    .line 12
    return-void
.end method

.method private attachMoreExtras(Landroid/content/Intent;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/ScanOptions;->moreExtras:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_c

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/util/Map$Entry;

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Ljava/lang/String;

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    instance-of v3, v1, Ljava/lang/Integer;

    .line 34
    .line 35
    if-eqz v3, :cond_0

    .line 36
    .line 37
    check-cast v1, Ljava/lang/Integer;

    .line 38
    .line 39
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    instance-of v3, v1, Ljava/lang/Long;

    .line 44
    .line 45
    if-eqz v3, :cond_1

    .line 46
    .line 47
    check-cast v1, Ljava/lang/Long;

    .line 48
    .line 49
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    instance-of v3, v1, Ljava/lang/Boolean;

    .line 54
    .line 55
    if-eqz v3, :cond_2

    .line 56
    .line 57
    check-cast v1, Ljava/lang/Boolean;

    .line 58
    .line 59
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    instance-of v3, v1, Ljava/lang/Double;

    .line 64
    .line 65
    if-eqz v3, :cond_3

    .line 66
    .line 67
    check-cast v1, Ljava/lang/Double;

    .line 68
    .line 69
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    instance-of v3, v1, Ljava/lang/Float;

    .line 74
    .line 75
    if-eqz v3, :cond_4

    .line 76
    .line 77
    check-cast v1, Ljava/lang/Float;

    .line 78
    .line 79
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_4
    instance-of v3, v1, Landroid/os/Bundle;

    .line 84
    .line 85
    if-eqz v3, :cond_5

    .line 86
    .line 87
    check-cast v1, Landroid/os/Bundle;

    .line 88
    .line 89
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_5
    instance-of v3, v1, [I

    .line 94
    .line 95
    if-eqz v3, :cond_6

    .line 96
    .line 97
    check-cast v1, [I

    .line 98
    .line 99
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_6
    instance-of v3, v1, [J

    .line 104
    .line 105
    if-eqz v3, :cond_7

    .line 106
    .line 107
    check-cast v1, [J

    .line 108
    .line 109
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_7
    instance-of v3, v1, [Z

    .line 114
    .line 115
    if-eqz v3, :cond_8

    .line 116
    .line 117
    check-cast v1, [Z

    .line 118
    .line 119
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Z)Landroid/content/Intent;

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_8
    instance-of v3, v1, [D

    .line 124
    .line 125
    if-eqz v3, :cond_9

    .line 126
    .line 127
    check-cast v1, [D

    .line 128
    .line 129
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[D)Landroid/content/Intent;

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_9
    instance-of v3, v1, [F

    .line 134
    .line 135
    if-eqz v3, :cond_a

    .line 136
    .line 137
    check-cast v1, [F

    .line 138
    .line 139
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[F)Landroid/content/Intent;

    .line 140
    .line 141
    .line 142
    goto/16 :goto_0

    .line 143
    .line 144
    :cond_a
    instance-of v3, v1, [Ljava/lang/String;

    .line 145
    .line 146
    if-eqz v3, :cond_b

    .line 147
    .line 148
    check-cast v1, [Ljava/lang/String;

    .line 149
    .line 150
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    .line 152
    .line 153
    goto/16 :goto_0

    .line 154
    .line 155
    :cond_b
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    .line 161
    .line 162
    goto/16 :goto_0

    .line 163
    .line 164
    :cond_c
    return-void
.end method

.method private static varargs list([Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method


# virtual methods
.method public final addExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/journeyapps/barcodescanner/ScanOptions;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/ScanOptions;->moreExtras:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public createScanIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/ScanOptions;->getCaptureActivity()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 8
    .line 9
    .line 10
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 11
    .line 12
    const/4 v1, 0x6

    .line 13
    new-array v1, v1, [J

    .line 14
    .line 15
    fill-array-data v1, :array_0

    .line 16
    .line 17
    .line 18
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/ScanOptions;->desiredBarcodeFormats:Ljava/util/Collection;

    .line 29
    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    new-instance p1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/ScanOptions;->desiredBarcodeFormats:Ljava/util/Collection;

    .line 38
    .line 39
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-lez v3, :cond_0

    .line 60
    .line 61
    const/16 v3, 0x2c

    .line 62
    .line 63
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 71
    .line 72
    const/4 v2, 0x3

    .line 73
    new-array v2, v2, [J

    .line 74
    .line 75
    fill-array-data v2, :array_1

    .line 76
    .line 77
    .line 78
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    .line 91
    .line 92
    :cond_2
    const/high16 p1, 0x4000000

    .line 93
    .line 94
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 95
    .line 96
    .line 97
    const/high16 p1, 0x80000

    .line 98
    .line 99
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 100
    .line 101
    .line 102
    invoke-direct {p0, v0}, Lcom/journeyapps/barcodescanner/ScanOptions;->attachMoreExtras(Landroid/content/Intent;)V

    .line 103
    .line 104
    .line 105
    return-object v0

    .line 106
    nop

    .line 107
    :array_0
    .array-data 8
        0x42713563b6a7b3daL    # 1.1825627408592407E12
        -0x7c385d518e2b8d92L    # -1.89477879176383E-290
        0x32a55a2062af4764L    # 1.0137495027890703E-64
        0xee8018d7bf0aae9L    # 7.373172609971997E-237
        -0x73910f7918d71c9fL    # -8.642665527703588E-249
        -0x18a3572059651389L    # -7.980835505244373E189
    .end array-data

    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    :array_1
    .array-data 8
        -0xaf2ecd3b932e1eL    # -1.84522281779871E305
        0x183ef2093aa995c3L    # 6.7826533908475E-192
        0x41d6fa14c98c9137L    # 1.5419522941963632E9
    .end array-data
.end method

.method public getCaptureActivity()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/ScanOptions;->captureActivity:Ljava/lang/Class;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/ScanOptions;->getDefaultCaptureActivity()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/journeyapps/barcodescanner/ScanOptions;->captureActivity:Ljava/lang/Class;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/ScanOptions;->captureActivity:Ljava/lang/Class;

    .line 12
    .line 13
    return-object v0
.end method

.method public getDefaultCaptureActivity()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/journeyapps/barcodescanner/CaptureActivity;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMoreExtras()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/ScanOptions;->moreExtras:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public setBarcodeImageEnabled(Z)Lcom/journeyapps/barcodescanner/ScanOptions;
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x4

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
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0, v0, p1}, Lcom/journeyapps/barcodescanner/ScanOptions;->addExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/journeyapps/barcodescanner/ScanOptions;

    .line 21
    .line 22
    .line 23
    return-object p0

    .line 24
    nop

    .line 25
    :array_0
    .array-data 8
        -0x2abb4a487e024621L    # -5.798091986506126E102
        0x6e93ee381b7f0b89L    # 4.61079620967215E224
        -0x67285f75ce88d5b2L    # -5.302898447748592E-189
        0x7e3d8dfc18a9843cL
    .end array-data
.end method

.method public setBeepEnabled(Z)Lcom/journeyapps/barcodescanner/ScanOptions;
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x3

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
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0, v0, p1}, Lcom/journeyapps/barcodescanner/ScanOptions;->addExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/journeyapps/barcodescanner/ScanOptions;

    .line 21
    .line 22
    .line 23
    return-object p0

    .line 24
    nop

    .line 25
    :array_0
    .array-data 8
        -0x279132786e3413d9L    # -9.709552653659277E117
        -0x2745d5b47550cfe6L
        0x6a7337ac90ee10a7L    # 6.025227319002451E204
    .end array-data
.end method

.method public setCameraId(I)Lcom/journeyapps/barcodescanner/ScanOptions;
    .locals 2

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    new-array v1, v1, [J

    .line 7
    .line 8
    fill-array-data v1, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p0, v0, p1}, Lcom/journeyapps/barcodescanner/ScanOptions;->addExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/journeyapps/barcodescanner/ScanOptions;

    .line 23
    .line 24
    .line 25
    :cond_0
    return-object p0

    .line 26
    nop

    .line 27
    :array_0
    .array-data 8
        -0x4ac2eba09b414fd8L    # -3.03604987440477E-52
        0x4556ef7499a65662L    # 1.109086580594878E26
        0x53552e0d76ba1a59L    # 2.761229049318412E93
    .end array-data
.end method

.method public setCaptureActivity(Ljava/lang/Class;)Lcom/journeyapps/barcodescanner/ScanOptions;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/journeyapps/barcodescanner/ScanOptions;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/ScanOptions;->captureActivity:Ljava/lang/Class;

    .line 2
    .line 3
    return-object p0
.end method

.method public setDesiredBarcodeFormats(Ljava/util/Collection;)Lcom/journeyapps/barcodescanner/ScanOptions;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/journeyapps/barcodescanner/ScanOptions;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/ScanOptions;->desiredBarcodeFormats:Ljava/util/Collection;

    return-object p0
.end method

.method public varargs setDesiredBarcodeFormats([Ljava/lang/String;)Lcom/journeyapps/barcodescanner/ScanOptions;
    .locals 0

    .line 2
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/ScanOptions;->desiredBarcodeFormats:Ljava/util/Collection;

    return-object p0
.end method

.method public setOrientationLocked(Z)Lcom/journeyapps/barcodescanner/ScanOptions;
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x4

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
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0, v0, p1}, Lcom/journeyapps/barcodescanner/ScanOptions;->addExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/journeyapps/barcodescanner/ScanOptions;

    .line 21
    .line 22
    .line 23
    return-object p0

    .line 24
    nop

    .line 25
    :array_0
    .array-data 8
        0x36ff9678a509da89L    # 8.852781070357856E-44
        0x4a01c02023973c47L    # 3.242796348357831E48
        -0x21359243ba23837dL    # -4.224184960951693E148
        0x7855eaf03c7f9b42L    # 4.6316063804379474E271
    .end array-data
.end method

.method public final setPrompt(Ljava/lang/String;)Lcom/journeyapps/barcodescanner/ScanOptions;
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    new-array v1, v1, [J

    .line 7
    .line 8
    fill-array-data v1, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0, v0, p1}, Lcom/journeyapps/barcodescanner/ScanOptions;->addExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/journeyapps/barcodescanner/ScanOptions;

    .line 19
    .line 20
    .line 21
    :cond_0
    return-object p0

    .line 22
    nop

    .line 23
    :array_0
    .array-data 8
        0x79ee3625e061fddbL    # 2.1421925689731453E279
        -0x2438636e39a2b6cdL    # -1.3407675584822546E134
        -0x359eb0deae6bf90fL    # -2.023782490926253E50
    .end array-data
.end method

.method public setTimeout(J)Lcom/journeyapps/barcodescanner/ScanOptions;
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
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0, v0, p1}, Lcom/journeyapps/barcodescanner/ScanOptions;->addExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/journeyapps/barcodescanner/ScanOptions;

    .line 21
    .line 22
    .line 23
    return-object p0

    .line 24
    nop

    .line 25
    :array_0
    .array-data 8
        -0x66b745d7fd725ccaL
        0x584a46d110048bbcL    # 2.0707036824326332E117
    .end array-data
.end method

.method public setTorchEnabled(Z)Lcom/journeyapps/barcodescanner/ScanOptions;
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x3

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
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0, v0, p1}, Lcom/journeyapps/barcodescanner/ScanOptions;->addExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/journeyapps/barcodescanner/ScanOptions;

    .line 21
    .line 22
    .line 23
    return-object p0

    .line 24
    nop

    .line 25
    :array_0
    .array-data 8
        -0xc7059bd823ea24bL
        -0x5ad8aceb20912ceeL
        -0xa7a5f004e4e1eL
    .end array-data
.end method
