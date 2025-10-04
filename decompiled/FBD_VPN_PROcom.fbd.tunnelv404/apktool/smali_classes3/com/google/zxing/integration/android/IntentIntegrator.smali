.class public Lcom/google/zxing/integration/android/IntentIntegrator;
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

.field public static final REQUEST_CODE:I = 0xc0de

.field public static final RSS_14:Ljava/lang/String;

.field public static final RSS_EXPANDED:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field public static final UPC_A:Ljava/lang/String;

.field public static final UPC_E:Ljava/lang/String;


# instance fields
.field private final activity:Landroid/app/Activity;

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

.field private fragment:Landroid/app/Fragment;

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

.field private requestCode:I

.field private supportFragment:Landroidx/fragment/app/Fragment;


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
    sput-object v0, Lcom/google/zxing/integration/android/IntentIntegrator;->UPC_A:Ljava/lang/String;

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
    sput-object v0, Lcom/google/zxing/integration/android/IntentIntegrator;->UPC_E:Ljava/lang/String;

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
    sput-object v0, Lcom/google/zxing/integration/android/IntentIntegrator;->EAN_8:Ljava/lang/String;

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
    sput-object v0, Lcom/google/zxing/integration/android/IntentIntegrator;->EAN_13:Ljava/lang/String;

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
    sput-object v0, Lcom/google/zxing/integration/android/IntentIntegrator;->RSS_14:Ljava/lang/String;

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
    sput-object v0, Lcom/google/zxing/integration/android/IntentIntegrator;->CODE_39:Ljava/lang/String;

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
    sput-object v0, Lcom/google/zxing/integration/android/IntentIntegrator;->CODE_93:Ljava/lang/String;

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
    sput-object v0, Lcom/google/zxing/integration/android/IntentIntegrator;->CODE_128:Ljava/lang/String;

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
    sput-object v0, Lcom/google/zxing/integration/android/IntentIntegrator;->ITF:Ljava/lang/String;

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
    sput-object v0, Lcom/google/zxing/integration/android/IntentIntegrator;->RSS_EXPANDED:Ljava/lang/String;

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
    sput-object v0, Lcom/google/zxing/integration/android/IntentIntegrator;->QR_CODE:Ljava/lang/String;

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
    sput-object v0, Lcom/google/zxing/integration/android/IntentIntegrator;->DATA_MATRIX:Ljava/lang/String;

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
    sput-object v0, Lcom/google/zxing/integration/android/IntentIntegrator;->PDF_417:Ljava/lang/String;

    .line 210
    .line 211
    const-string v0, "IntentIntegrator"

    .line 212
    .line 213
    sput-object v0, Lcom/google/zxing/integration/android/IntentIntegrator;->TAG:Ljava/lang/String;

    .line 214
    .line 215
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 216
    .line 217
    new-array v3, v1, [J

    .line 218
    .line 219
    fill-array-data v3, :array_d

    .line 220
    .line 221
    .line 222
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 230
    .line 231
    new-array v4, v1, [J

    .line 232
    .line 233
    fill-array-data v4, :array_e

    .line 234
    .line 235
    .line 236
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v3

    .line 243
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 244
    .line 245
    new-array v5, v1, [J

    .line 246
    .line 247
    fill-array-data v5, :array_f

    .line 248
    .line 249
    .line 250
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v4

    .line 257
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 258
    .line 259
    new-array v6, v1, [J

    .line 260
    .line 261
    fill-array-data v6, :array_10

    .line 262
    .line 263
    .line 264
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v5

    .line 271
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 272
    .line 273
    new-array v7, v1, [J

    .line 274
    .line 275
    fill-array-data v7, :array_11

    .line 276
    .line 277
    .line 278
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v6

    .line 285
    filled-new-array {v0, v3, v4, v5, v6}, [Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    invoke-static {v0}, Lcom/google/zxing/integration/android/IntentIntegrator;->list([Ljava/lang/String;)Ljava/util/List;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    sput-object v0, Lcom/google/zxing/integration/android/IntentIntegrator;->PRODUCT_CODE_TYPES:Ljava/util/Collection;

    .line 294
    .line 295
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 296
    .line 297
    new-array v3, v1, [J

    .line 298
    .line 299
    fill-array-data v3, :array_12

    .line 300
    .line 301
    .line 302
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v4

    .line 309
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 310
    .line 311
    new-array v3, v1, [J

    .line 312
    .line 313
    fill-array-data v3, :array_13

    .line 314
    .line 315
    .line 316
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v5

    .line 323
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 324
    .line 325
    new-array v3, v1, [J

    .line 326
    .line 327
    fill-array-data v3, :array_14

    .line 328
    .line 329
    .line 330
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v6

    .line 337
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 338
    .line 339
    new-array v3, v1, [J

    .line 340
    .line 341
    fill-array-data v3, :array_15

    .line 342
    .line 343
    .line 344
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v7

    .line 351
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 352
    .line 353
    new-array v3, v1, [J

    .line 354
    .line 355
    fill-array-data v3, :array_16

    .line 356
    .line 357
    .line 358
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v8

    .line 365
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 366
    .line 367
    new-array v3, v1, [J

    .line 368
    .line 369
    fill-array-data v3, :array_17

    .line 370
    .line 371
    .line 372
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v9

    .line 379
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 380
    .line 381
    new-array v3, v1, [J

    .line 382
    .line 383
    fill-array-data v3, :array_18

    .line 384
    .line 385
    .line 386
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 387
    .line 388
    .line 389
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v10

    .line 393
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 394
    .line 395
    new-array v3, v1, [J

    .line 396
    .line 397
    fill-array-data v3, :array_19

    .line 398
    .line 399
    .line 400
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 401
    .line 402
    .line 403
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v11

    .line 407
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 408
    .line 409
    new-array v3, v1, [J

    .line 410
    .line 411
    fill-array-data v3, :array_1a

    .line 412
    .line 413
    .line 414
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 415
    .line 416
    .line 417
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v12

    .line 421
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 422
    .line 423
    new-array v1, v1, [J

    .line 424
    .line 425
    fill-array-data v1, :array_1b

    .line 426
    .line 427
    .line 428
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v13

    .line 435
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 436
    .line 437
    new-array v1, v2, [J

    .line 438
    .line 439
    fill-array-data v1, :array_1c

    .line 440
    .line 441
    .line 442
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 443
    .line 444
    .line 445
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v14

    .line 449
    filled-new-array/range {v4 .. v14}, [Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v0

    .line 453
    invoke-static {v0}, Lcom/google/zxing/integration/android/IntentIntegrator;->list([Ljava/lang/String;)Ljava/util/List;

    .line 454
    .line 455
    .line 456
    move-result-object v0

    .line 457
    sput-object v0, Lcom/google/zxing/integration/android/IntentIntegrator;->ONE_D_CODE_TYPES:Ljava/util/Collection;

    .line 458
    .line 459
    const/4 v0, 0x0

    .line 460
    sput-object v0, Lcom/google/zxing/integration/android/IntentIntegrator;->ALL_CODE_TYPES:Ljava/util/Collection;

    .line 461
    .line 462
    return-void

    .line 463
    :array_0
    .array-data 8
        0x72bfbbe3a9dd066L
        -0x2e4fa95a06ad1d74L    # -3.174023753416328E85
    .end array-data

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
    :array_1
    .array-data 8
        0x6c7589f1a65f2f0L
        0x3bc8fdd8e4adfa40L    # 1.0584350396971794E-20
    .end array-data

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
    :array_2
    .array-data 8
        0x4a0a8b295a35b126L    # 4.8491893095846624E48
        -0x1829a7dc8744b862L    # -1.5928828435659656E192
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
    :array_3
    .array-data 8
        -0x1870426e05a38dbdL    # -7.0710051808416865E190
        -0x56c70e79352bd11fL    # -4.148760304620585E-110
    .end array-data

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
    .line 510
    .line 511
    :array_4
    .array-data 8
        -0x4e2ccd1e76c9afa1L    # -1.112689626152321E-68
        0x8c10dd68ee5f192L
    .end array-data

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
    :array_5
    .array-data 8
        0x4d0b4b5e383d273L
        0x5cb1138ce24c8d50L    # 3.17741206363331E138
    .end array-data

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
    :array_6
    .array-data 8
        -0x762db5096cbf6ee1L    # -2.323724037744409E-261
        0x11ec78992b95016L
    .end array-data

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
    :array_7
    .array-data 8
        -0x28451b5de61a2a40L    # -4.1392266892772747E114
        -0x56236274fdfb2765L    # -4.873729359119394E-107
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
    :array_8
    .array-data 8
        -0x5f98b918d00bead1L
        -0x468570fc7cdfba1dL    # -8.184015071768193E-32
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
    :array_9
    .array-data 8
        0x331fd1874adf5223L    # 1.9336604391459035E-62
        -0x3fe4ce53da2f7b01L    # -6.798508253910085
        -0x3e1aac0c768a0136L    # -2.862586955687352E9
    .end array-data

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
    :array_a
    .array-data 8
        0x3592466d3e6ecd63L    # 1.2211263547966616E-50
        -0x1b42e4b2f07f112fL    # -1.84293327223359E177
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
    :array_b
    .array-data 8
        0x8e61f56a35ccf91L
        -0x658ab4aad1d74f2aL
        -0x4d943e27822031f2L    # -8.236577021110363E-66
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
    .line 612
    .line 613
    .line 614
    .line 615
    :array_c
    .array-data 8
        -0x5ed4d23bc9476e2aL
        0x769268d8335ec9f0L
    .end array-data

    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    :array_d
    .array-data 8
        0x13e4a64de2a94e86L    # 7.667349553838324E-213
        -0x7cd3daec13c36d4L    # -9.910304688126474E270
    .end array-data

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
    :array_e
    .array-data 8
        0x66f484a0c67e8c65L    # 8.927584986307046E187
        0x7f73b0bf4221930aL    # 8.641926251732708E305
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
    :array_f
    .array-data 8
        -0x1af1f041a642c310L    # -6.090852299328939E178
        0x2e86d6c74932e76fL    # 1.4695619550385496E-84
    .end array-data

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
    .line 662
    .line 663
    :array_10
    .array-data 8
        -0x4329cce0e7cbac57L    # -1.232330527354036E-15
        -0x64b72a8c77232d11L    # -3.064189639284506E-177
    .end array-data

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
    :array_11
    .array-data 8
        -0xf2261456224aad6L    # -4.7089295667222395E235
        0x3307b50c65772af5L    # 7.203632556897285E-63
    .end array-data

    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    :array_12
    .array-data 8
        0x2d9fc677b8d2af5eL    # 6.239509695726539E-89
        -0x689ccf2c7e2ee20L
    .end array-data

    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    :array_13
    .array-data 8
        0x2b2617b90a527e9aL    # 7.891137530162862E-101
        0x27b8080c2ca900a1L
    .end array-data

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
    :array_14
    .array-data 8
        -0x4e6145dc209c20dbL    # -1.1130193841082994E-69
        0x29b295e9bfacaa6cL    # 7.913672976961471E-108
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
    :array_15
    .array-data 8
        -0x6390b46aec2d8ed3L
        -0x49d54247e8cb5279L    # -9.14849821831052E-48
    .end array-data

    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    :array_16
    .array-data 8
        0x4ad9b78667a5e10aL    # 3.8487330378957935E52
        -0x3bb16e7cc8570ca7L    # -1.1277752155350238E21
    .end array-data

    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    :array_17
    .array-data 8
        0x461943c18a041a1eL    # 5.004183832400169E29
        0x7eeddd5aea1c47faL    # 2.5600199474600407E303
    .end array-data

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
    :array_18
    .array-data 8
        -0x43f571068179cdc3L    # -1.799673588316202E-19
        -0x7a15a75b79c1daf7L
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
    :array_19
    .array-data 8
        0x6082cab49b0fdd2eL    # 8.062626903953016E156
        0xd40959d26b63c92L
    .end array-data

    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    :array_1a
    .array-data 8
        0x45823a947019cdbbL    # 7.05193606557001E26
        -0x6b923ef37de07906L
    .end array-data

    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    :array_1b
    .array-data 8
        -0x6a94596eec768f21L
        0x1b4358c2ccf2629L    # 1.8860483262353E-300
    .end array-data

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
    :array_1c
    .array-data 8
        -0x24446f37501e5f7aL    # -7.826452380411951E133
        0x180f6344f37518d7L    # 8.599501201619764E-193
        -0x5a204ed51a73ebebL
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;)V
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
    iput-object v0, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->moreExtras:Ljava/util/Map;

    .line 11
    .line 12
    const v0, 0xc0de

    .line 13
    .line 14
    .line 15
    iput v0, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->requestCode:I

    .line 16
    .line 17
    iput-object p1, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->activity:Landroid/app/Activity;

    .line 18
    .line 19
    return-void
.end method

.method private attachMoreExtras(Landroid/content/Intent;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->moreExtras:Ljava/util/Map;

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

.method public static forFragment(Landroid/app/Fragment;)Lcom/google/zxing/integration/android/IntentIntegrator;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 1
    new-instance v0, Lcom/google/zxing/integration/android/IntentIntegrator;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lcom/google/zxing/integration/android/IntentIntegrator;-><init>(Landroid/app/Activity;)V

    .line 8
    .line 9
    .line 10
    iput-object p0, v0, Lcom/google/zxing/integration/android/IntentIntegrator;->fragment:Landroid/app/Fragment;

    .line 11
    .line 12
    return-object v0
.end method

.method public static forSupportFragment(Landroidx/fragment/app/Fragment;)Lcom/google/zxing/integration/android/IntentIntegrator;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/zxing/integration/android/IntentIntegrator;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lcom/google/zxing/integration/android/IntentIntegrator;-><init>(Landroid/app/Activity;)V

    .line 8
    .line 9
    .line 10
    iput-object p0, v0, Lcom/google/zxing/integration/android/IntentIntegrator;->supportFragment:Landroidx/fragment/app/Fragment;

    .line 11
    .line 12
    return-object v0
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

.method public static parseActivityResult(IILandroid/content/Intent;)Lcom/google/zxing/integration/android/IntentResult;
    .locals 1

    const v0, 0xc0de

    if-ne p0, v0, :cond_0

    .line 1
    invoke-static {p1, p2}, Lcom/google/zxing/integration/android/IntentIntegrator;->parseActivityResult(ILandroid/content/Intent;)Lcom/google/zxing/integration/android/IntentResult;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseActivityResult(ILandroid/content/Intent;)Lcom/google/zxing/integration/android/IntentResult;
    .locals 9

    const/4 v0, 0x4

    const/4 v1, -0x1

    if-ne p0, v1, :cond_1

    .line 2
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x3

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {p0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v0, [J

    fill-array-data v1, :array_1

    invoke-direct {p0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v0, [J

    fill-array-data v1, :array_2

    invoke-direct {p0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v4

    .line 5
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v0, [J

    fill-array-data v1, :array_3

    invoke-direct {p0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p0

    const/high16 v1, -0x80000000

    invoke-virtual {p1, p0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    const/4 p0, 0x0

    :goto_0
    move-object v5, p0

    goto :goto_1

    .line 6
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    .line 7
    :goto_1
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x6

    new-array v1, v1, [J

    fill-array-data v1, :array_4

    invoke-direct {p0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 8
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v0, [J

    fill-array-data v0, :array_5

    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 9
    new-instance p0, Lcom/google/zxing/integration/android/IntentResult;

    move-object v1, p0

    move-object v8, p1

    invoke-direct/range {v1 .. v8}, Lcom/google/zxing/integration/android/IntentResult;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    return-object p0

    .line 10
    :cond_1
    new-instance p0, Lcom/google/zxing/integration/android/IntentResult;

    invoke-direct {p0, p1}, Lcom/google/zxing/integration/android/IntentResult;-><init>(Landroid/content/Intent;)V

    return-object p0

    :array_0
    .array-data 8
        0x4936c16be5bdf8cL
        -0x371ee8ce773cf35cL    # -1.1910409580474747E43
        0x8e35df46a022443L
    .end array-data

    :array_1
    .array-data 8
        -0x1e5b7241f07c77c5L    # -2.3117310132484813E162
        -0x5f82397a492b11deL    # -3.553210543844038E-152
        0x77fecaab7698eab0L    # 1.0166922203803667E270
        0x5a2a069ffa649c0bL    # 2.2021839837519332E126
    .end array-data

    :array_2
    .array-data 8
        0x48d70f429f69a86bL    # 8.035101474800874E42
        0x5f9a993c32e26074L
        -0x1138973b075fcb32L    # -4.3324581093912706E225
        -0x6140a3618c15401L
    .end array-data

    :array_3
    .array-data 8
        -0x271e3c5306df001cL    # -1.4335003614473456E120
        0x2585fb7dc08c8410L    # 6.342591076622677E-128
        -0x75272327a455bf3L    # -1.998486127202173E273
        0x576b9cff05df56e8L    # 1.3281470843261845E113
    .end array-data

    :array_4
    .array-data 8
        -0x54b83354c5785c87L
        0x6a9bfa7352752f33L    # 3.5088009104966708E205
        0x1410399443d5d4a3L    # 4.81953998484823E-212
        -0x1613f9d36a053630L    # -1.7160860389334506E202
        -0x31e4315d059c0892L    # -1.8741998434834316E68
        -0x18e4926a23f2f169L    # -4.773671385452463E188
    .end array-data

    :array_5
    .array-data 8
        -0x4e764a3e1eccbf02L    # -4.656428302241073E-70
        -0x67c886c41125ea27L
        0x480e8cfdfd90eae6L    # 1.2994852151343043E39
        0x4f83088bf1a3d3c3L    # 1.076130594617832E75
    .end array-data
.end method


# virtual methods
.method public final addExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/zxing/integration/android/IntentIntegrator;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->moreExtras:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public createScanIntent()Landroid/content/Intent;
    .locals 5

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->activity:Landroid/app/Activity;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/zxing/integration/android/IntentIntegrator;->getCaptureActivity()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 13
    .line 14
    const/4 v2, 0x6

    .line 15
    new-array v2, v2, [J

    .line 16
    .line 17
    fill-array-data v2, :array_0

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->desiredBarcodeFormats:Ljava/util/Collection;

    .line 31
    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    iget-object v2, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->desiredBarcodeFormats:Ljava/util/Collection;

    .line 40
    .line 41
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_1

    .line 50
    .line 51
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    check-cast v3, Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-lez v4, :cond_0

    .line 62
    .line 63
    const/16 v4, 0x2c

    .line 64
    .line 65
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 73
    .line 74
    const/4 v3, 0x3

    .line 75
    new-array v3, v3, [J

    .line 76
    .line 77
    fill-array-data v3, :array_1

    .line 78
    .line 79
    .line 80
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    .line 93
    .line 94
    :cond_2
    const/high16 v1, 0x4000000

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 97
    .line 98
    .line 99
    const/high16 v1, 0x80000

    .line 100
    .line 101
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 102
    .line 103
    .line 104
    invoke-direct {p0, v0}, Lcom/google/zxing/integration/android/IntentIntegrator;->attachMoreExtras(Landroid/content/Intent;)V

    .line 105
    .line 106
    .line 107
    return-object v0

    .line 108
    nop

    .line 109
    :array_0
    .array-data 8
        0x17346005290ca69cL    # 6.814313975617602E-197
        -0x664e7198e4a4408eL    # -6.45586877823076E-185
        0x6d85d4860b153742L    # 3.853044109775523E219
        0x70f2545f1f3f43b3L    # 1.1655986814505585E236
        0x70ca52f38931fcccL    # 2.0924687670597247E235
        -0x42c8d25bfc8002dfL    # -8.23458062627221E-14
    .end array-data

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
    .line 136
    .line 137
    :array_1
    .array-data 8
        -0x65c57fca3b33b972L
        0x3b3ddeb51fdc1abL    # 7.96331123590531E-291
        0x1f81a86b6bb636eaL    # 6.430593436535404E-157
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
    iget-object v0, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->captureActivity:Ljava/lang/Class;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/zxing/integration/android/IntentIntegrator;->getDefaultCaptureActivity()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->captureActivity:Ljava/lang/Class;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->captureActivity:Ljava/lang/Class;

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
    iget-object v0, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->moreExtras:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public final initiateScan()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/zxing/integration/android/IntentIntegrator;->createScanIntent()Landroid/content/Intent;

    move-result-object v0

    iget v1, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->requestCode:I

    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/integration/android/IntentIntegrator;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public final initiateScan(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/zxing/integration/android/IntentIntegrator;->setDesiredBarcodeFormats(Ljava/util/Collection;)Lcom/google/zxing/integration/android/IntentIntegrator;

    .line 3
    invoke-virtual {p0}, Lcom/google/zxing/integration/android/IntentIntegrator;->initiateScan()V

    return-void
.end method

.method public setBarcodeImageEnabled(Z)Lcom/google/zxing/integration/android/IntentIntegrator;
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
    invoke-virtual {p0, v0, p1}, Lcom/google/zxing/integration/android/IntentIntegrator;->addExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/zxing/integration/android/IntentIntegrator;

    .line 21
    .line 22
    .line 23
    return-object p0

    .line 24
    nop

    .line 25
    :array_0
    .array-data 8
        -0x5ee228b970678605L    # -3.646484516967438E-149
        0x25e8ec00bfee9a3dL
        0x474b708b339606cdL    # 2.849493474714906E35
        -0x5f00abb6a530c607L    # -9.570884766607198E-150
    .end array-data
.end method

.method public setBeepEnabled(Z)Lcom/google/zxing/integration/android/IntentIntegrator;
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
    invoke-virtual {p0, v0, p1}, Lcom/google/zxing/integration/android/IntentIntegrator;->addExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/zxing/integration/android/IntentIntegrator;

    .line 21
    .line 22
    .line 23
    return-object p0

    .line 24
    nop

    .line 25
    :array_0
    .array-data 8
        0x305464fe48696652L    # 7.045215327861641E-76
        0x5090a17ccc2baed3L    # 1.2324584285369223E80
        -0x2dea83a78f97e2b1L    # -2.6713375079299073E87
    .end array-data
.end method

.method public setCameraId(I)Lcom/google/zxing/integration/android/IntentIntegrator;
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
    invoke-virtual {p0, v0, p1}, Lcom/google/zxing/integration/android/IntentIntegrator;->addExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/zxing/integration/android/IntentIntegrator;

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
        -0x6502d75e1c7339fcL
        0x22992e873eb83e6cL    # 5.162594133441797E-142
        0x15cc5f660fa1c67cL
    .end array-data
.end method

.method public setCaptureActivity(Ljava/lang/Class;)Lcom/google/zxing/integration/android/IntentIntegrator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/zxing/integration/android/IntentIntegrator;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->captureActivity:Ljava/lang/Class;

    .line 2
    .line 3
    return-object p0
.end method

.method public setDesiredBarcodeFormats(Ljava/util/Collection;)Lcom/google/zxing/integration/android/IntentIntegrator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/zxing/integration/android/IntentIntegrator;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->desiredBarcodeFormats:Ljava/util/Collection;

    return-object p0
.end method

.method public varargs setDesiredBarcodeFormats([Ljava/lang/String;)Lcom/google/zxing/integration/android/IntentIntegrator;
    .locals 0

    .line 2
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->desiredBarcodeFormats:Ljava/util/Collection;

    return-object p0
.end method

.method public setOrientationLocked(Z)Lcom/google/zxing/integration/android/IntentIntegrator;
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
    invoke-virtual {p0, v0, p1}, Lcom/google/zxing/integration/android/IntentIntegrator;->addExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/zxing/integration/android/IntentIntegrator;

    .line 21
    .line 22
    .line 23
    return-object p0

    .line 24
    nop

    .line 25
    :array_0
    .array-data 8
        -0x161f4e90d6637267L    # -1.0222195127992837E202
        0x108d3795cd1bc252L    # 6.022140094573853E-229
        0x7dfdfdad70f6da7eL    # 7.845590142967373E298
        0xc414c8bd74de49eL
    .end array-data
.end method

.method public final setPrompt(Ljava/lang/String;)Lcom/google/zxing/integration/android/IntentIntegrator;
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
    invoke-virtual {p0, v0, p1}, Lcom/google/zxing/integration/android/IntentIntegrator;->addExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/zxing/integration/android/IntentIntegrator;

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
        -0x6064b9918ed2e7f3L
        -0x47af4b0ce0548f02L    # -1.9638789896256556E-37
        -0x19435440cbe2d937L    # -7.796836860754287E186
    .end array-data
.end method

.method public setRequestCode(I)Lcom/google/zxing/integration/android/IntentIntegrator;
    .locals 2

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    const v0, 0xffff

    .line 4
    .line 5
    .line 6
    if-gt p1, v0, :cond_0

    .line 7
    .line 8
    iput p1, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->requestCode:I

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 12
    .line 13
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 14
    .line 15
    const/4 v1, 0x4

    .line 16
    new-array v1, v1, [J

    .line 17
    .line 18
    fill-array-data v1, :array_0

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1

    .line 32
    nop

    .line 33
    :array_0
    .array-data 8
        -0x32c14cc99c7adfa2L    # -1.2629267493549031E64
        -0x431d13847ecb0fe4L    # -2.1009593545317435E-15
        -0x1d742a433889958cL    # -5.129292538982307E166
        0x46d16b4367f8414fL    # 1.413196951353895E33
    .end array-data
.end method

.method public setTimeout(J)Lcom/google/zxing/integration/android/IntentIntegrator;
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
    invoke-virtual {p0, v0, p1}, Lcom/google/zxing/integration/android/IntentIntegrator;->addExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/zxing/integration/android/IntentIntegrator;

    .line 21
    .line 22
    .line 23
    return-object p0

    .line 24
    nop

    .line 25
    :array_0
    .array-data 8
        0x56d5516016d7742aL    # 2.0026372494086855E110
        0x353767723eaf87a7L    # 2.443500694307909E-52
    .end array-data
.end method

.method public setTorchEnabled(Z)Lcom/google/zxing/integration/android/IntentIntegrator;
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
    invoke-virtual {p0, v0, p1}, Lcom/google/zxing/integration/android/IntentIntegrator;->addExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/zxing/integration/android/IntentIntegrator;

    .line 21
    .line 22
    .line 23
    return-object p0

    .line 24
    nop

    .line 25
    :array_0
    .array-data 8
        -0xc8676ce6fcb2d29L    # -1.785450550057636E248
        -0x2f7d1852e1825a02L    # -7.004952797684792E79
        0x22d0fc8a3e1133e8L    # 5.571928602808339E-141
    .end array-data
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->fragment:Landroid/app/Fragment;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->supportFragment:Landroidx/fragment/app/Fragment;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->activity:Landroid/app/Activity;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->fragment:Landroid/app/Fragment;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->supportFragment:Landroidx/fragment/app/Fragment;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/google/zxing/integration/android/IntentIntegrator;->activity:Landroid/app/Activity;

    .line 18
    .line 19
    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method
