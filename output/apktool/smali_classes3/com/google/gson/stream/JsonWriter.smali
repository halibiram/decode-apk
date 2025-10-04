.class public Lcom/google/gson/stream/JsonWriter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# static fields
.field private static final HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

.field private static final REPLACEMENT_CHARS:[Ljava/lang/String;

.field private static final VALID_JSON_NUMBER_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private deferredName:Ljava/lang/String;

.field private formattedColon:Ljava/lang/String;

.field private formattedComma:Ljava/lang/String;

.field private formattingStyle:Lcom/google/gson/FormattingStyle;

.field private htmlSafe:Z

.field private final out:Ljava/io/Writer;

.field private serializeNulls:Z

.field private stack:[I

.field private stackSize:I

.field private strictness:Lcom/google/gson/Strictness;

.field private usesEmptyNewlineAndIndent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/16 v3, 0x8

    .line 6
    .line 7
    new-array v4, v3, [J

    .line 8
    .line 9
    fill-array-data v4, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    sput-object v2, Lcom/google/gson/stream/JsonWriter;->VALID_JSON_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    .line 24
    .line 25
    const/16 v2, 0x80

    .line 26
    .line 27
    new-array v2, v2, [Ljava/lang/String;

    .line 28
    .line 29
    sput-object v2, Lcom/google/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    const/4 v4, 0x0

    .line 33
    :goto_0
    const/16 v5, 0x1f

    .line 34
    .line 35
    if-gt v4, v5, :cond_0

    .line 36
    .line 37
    sget-object v5, Lcom/google/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    .line 38
    .line 39
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 40
    .line 41
    new-array v7, v1, [J

    .line 42
    .line 43
    fill-array-data v7, :array_1

    .line 44
    .line 45
    .line 46
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    new-array v8, v0, [Ljava/lang/Object;

    .line 58
    .line 59
    aput-object v7, v8, v2

    .line 60
    .line 61
    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    aput-object v6, v5, v4

    .line 66
    .line 67
    add-int/2addr v4, v0

    .line 68
    goto :goto_0

    .line 69
    :cond_0
    sget-object v0, Lcom/google/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    .line 70
    .line 71
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 72
    .line 73
    new-array v4, v1, [J

    .line 74
    .line 75
    fill-array-data v4, :array_2

    .line 76
    .line 77
    .line 78
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    const/16 v4, 0x22

    .line 86
    .line 87
    aput-object v2, v0, v4

    .line 88
    .line 89
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 90
    .line 91
    new-array v4, v1, [J

    .line 92
    .line 93
    fill-array-data v4, :array_3

    .line 94
    .line 95
    .line 96
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    const/16 v4, 0x5c

    .line 104
    .line 105
    aput-object v2, v0, v4

    .line 106
    .line 107
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 108
    .line 109
    new-array v4, v1, [J

    .line 110
    .line 111
    fill-array-data v4, :array_4

    .line 112
    .line 113
    .line 114
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    const/16 v4, 0x9

    .line 122
    .line 123
    aput-object v2, v0, v4

    .line 124
    .line 125
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 126
    .line 127
    new-array v4, v1, [J

    .line 128
    .line 129
    fill-array-data v4, :array_5

    .line 130
    .line 131
    .line 132
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    aput-object v2, v0, v3

    .line 140
    .line 141
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 142
    .line 143
    new-array v3, v1, [J

    .line 144
    .line 145
    fill-array-data v3, :array_6

    .line 146
    .line 147
    .line 148
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    const/16 v3, 0xa

    .line 156
    .line 157
    aput-object v2, v0, v3

    .line 158
    .line 159
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 160
    .line 161
    new-array v3, v1, [J

    .line 162
    .line 163
    fill-array-data v3, :array_7

    .line 164
    .line 165
    .line 166
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    const/16 v3, 0xd

    .line 174
    .line 175
    aput-object v2, v0, v3

    .line 176
    .line 177
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 178
    .line 179
    new-array v3, v1, [J

    .line 180
    .line 181
    fill-array-data v3, :array_8

    .line 182
    .line 183
    .line 184
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    const/16 v3, 0xc

    .line 192
    .line 193
    aput-object v2, v0, v3

    .line 194
    .line 195
    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    check-cast v0, [Ljava/lang/String;

    .line 200
    .line 201
    sput-object v0, Lcom/google/gson/stream/JsonWriter;->HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

    .line 202
    .line 203
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 204
    .line 205
    new-array v3, v1, [J

    .line 206
    .line 207
    fill-array-data v3, :array_9

    .line 208
    .line 209
    .line 210
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    const/16 v3, 0x3c

    .line 218
    .line 219
    aput-object v2, v0, v3

    .line 220
    .line 221
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 222
    .line 223
    new-array v3, v1, [J

    .line 224
    .line 225
    fill-array-data v3, :array_a

    .line 226
    .line 227
    .line 228
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v2

    .line 235
    const/16 v3, 0x3e

    .line 236
    .line 237
    aput-object v2, v0, v3

    .line 238
    .line 239
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 240
    .line 241
    new-array v3, v1, [J

    .line 242
    .line 243
    fill-array-data v3, :array_b

    .line 244
    .line 245
    .line 246
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v2

    .line 253
    const/16 v3, 0x26

    .line 254
    .line 255
    aput-object v2, v0, v3

    .line 256
    .line 257
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 258
    .line 259
    new-array v3, v1, [J

    .line 260
    .line 261
    fill-array-data v3, :array_c

    .line 262
    .line 263
    .line 264
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    const/16 v3, 0x3d

    .line 272
    .line 273
    aput-object v2, v0, v3

    .line 274
    .line 275
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 276
    .line 277
    new-array v1, v1, [J

    .line 278
    .line 279
    fill-array-data v1, :array_d

    .line 280
    .line 281
    .line 282
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    const/16 v2, 0x27

    .line 290
    .line 291
    aput-object v1, v0, v2

    .line 292
    .line 293
    return-void

    .line 294
    nop

    .line 295
    :array_0
    .array-data 8
        0x6210b62fd098f4a4L    # 2.4058991881631735E164
        -0x169ec052503aa938L    # -4.125956254785809E199
        -0x21e6443e7054f731L    # -2.0083318408374633E145
        -0x2e34f62c6f7e1743L    # -1.0505325680329932E86
        0x71f31a505234f712L    # 7.96110417370634E240
        -0x1e87b6cea9e7d3fdL    # -3.4143816029176484E161
        0x6cfe372040cb9a78L
        0x20a73aa9527b6c34L    # 2.217611352243143E-151
    .end array-data

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
    .line 330
    .line 331
    :array_1
    .array-data 8
        -0x15ad06cfa24b346eL    # -1.4871751115700306E204
        -0x5d0d293a5b47fa68L    # -2.47183113792905E-140
    .end array-data

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
    .line 342
    .line 343
    :array_2
    .array-data 8
        -0x5decd7047f6cfbcbL
        0x6d1a1aedae613425L    # 3.599678650944245E217
    .end array-data

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
    :array_3
    .array-data 8
        -0x2b27804f0d09ad45L    # -5.358500444844438E100
        0x7f620f1eb332a22eL    # 3.962970230645749E305
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
    :array_4
    .array-data 8
        -0x1cdd1d9556191234L    # -3.5634583597462184E169
        0x3be60c24fdb0287cL    # 3.734981521213712E-20
    .end array-data

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
    :array_5
    .array-data 8
        0x5b308c3627db6996L    # 1.8352524016509453E131
        0x22046d6767c013ebL    # 8.179454062373847E-145
    .end array-data

    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    :array_6
    .array-data 8
        0x64aa63665a40f2feL    # 8.354078741358799E176
        -0x561476bba6605b14L    # -9.379842423676067E-107
    .end array-data

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
    :array_7
    .array-data 8
        0x3ca3b67d92bf1c8aL    # 1.367853996417892E-16
        -0x22b16ddeafa420b0L    # -2.9124272341126176E141
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
    :array_8
    .array-data 8
        -0x44c98925e909e316L    # -1.8582004718686055E-23
        0x6dd377056ffff5fbL    # 1.0993844952308454E221
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
    :array_9
    .array-data 8
        -0x244556b8f03603b1L    # -7.569696125191885E133
        -0x691e695168920e8aL
    .end array-data

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
    :array_a
    .array-data 8
        -0x1ac4fe3f54951cb9L    # -4.3775518978764683E179
        -0x2d7d3ba7de37f6bbL    # -2.9866400486586514E89
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
    :array_b
    .array-data 8
        0x22bebc5708d009a7L
        -0x5d2ff854fe8342eaL    # -5.258165960904705E-141
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
    :array_c
    .array-data 8
        -0xa2f0ffac82fcc5dL    # -3.25527459946108E259
        -0xb8c2f29256e2919L    # -9.08003478263173E252
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
    :array_d
    .array-data 8
        0x2cceaa2cf14c09e7L    # 7.350396256984674E-93
        -0x65e3953ee4c7c8e9L
    .end array-data
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x20

    .line 5
    .line 6
    new-array v0, v0, [I

    .line 7
    .line 8
    iput-object v0, p0, Lcom/google/gson/stream/JsonWriter;->stack:[I

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    .line 12
    .line 13
    const/4 v0, 0x6

    .line 14
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonWriter;->push(I)V

    .line 15
    .line 16
    .line 17
    sget-object v0, Lcom/google/gson/Strictness;->LEGACY_STRICT:Lcom/google/gson/Strictness;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/google/gson/stream/JsonWriter;->strictness:Lcom/google/gson/Strictness;

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lcom/google/gson/stream/JsonWriter;->serializeNulls:Z

    .line 23
    .line 24
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 25
    .line 26
    const/4 v1, 0x3

    .line 27
    new-array v1, v1, [J

    .line 28
    .line 29
    fill-array-data v1, :array_0

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    .line 43
    .line 44
    sget-object p1, Lcom/google/gson/FormattingStyle;->COMPACT:Lcom/google/gson/FormattingStyle;

    .line 45
    .line 46
    invoke-virtual {p0, p1}, Lcom/google/gson/stream/JsonWriter;->setFormattingStyle(Lcom/google/gson/FormattingStyle;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    nop

    .line 51
    :array_0
    .array-data 8
        -0x78731d7ea8df6637L
        0xd8674d26c9a36e5L
        -0x5e889bf9a6bc3a6eL
    .end array-data
.end method

.method private static alwaysCreatesValidJsonNumber(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Number;",
            ">;)Z"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/lang/Integer;

    .line 2
    .line 3
    if-eq p0, v0, :cond_1

    .line 4
    .line 5
    const-class v0, Ljava/lang/Long;

    .line 6
    .line 7
    if-eq p0, v0, :cond_1

    .line 8
    .line 9
    const-class v0, Ljava/lang/Byte;

    .line 10
    .line 11
    if-eq p0, v0, :cond_1

    .line 12
    .line 13
    const-class v0, Ljava/lang/Short;

    .line 14
    .line 15
    if-eq p0, v0, :cond_1

    .line 16
    .line 17
    const-class v0, Ljava/math/BigDecimal;

    .line 18
    .line 19
    if-eq p0, v0, :cond_1

    .line 20
    .line 21
    const-class v0, Ljava/math/BigInteger;

    .line 22
    .line 23
    if-eq p0, v0, :cond_1

    .line 24
    .line 25
    const-class v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 26
    .line 27
    if-eq p0, v0, :cond_1

    .line 28
    .line 29
    const-class v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 30
    .line 31
    if-ne p0, v0, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 p0, 0x0

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 37
    :goto_1
    return p0
.end method

.method private beforeName()V
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->peek()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const/4 v2, 0x5

    .line 7
    if-ne v1, v2, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/google/gson/stream/JsonWriter;->formattedComma:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    if-ne v1, v0, :cond_1

    .line 18
    .line 19
    :goto_0
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->newline()V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x4

    .line 23
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonWriter;->replaceTop(I)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 28
    .line 29
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 30
    .line 31
    new-array v0, v0, [J

    .line 32
    .line 33
    fill-array-data v0, :array_0

    .line 34
    .line 35
    .line 36
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw v1

    .line 47
    :array_0
    .array-data 8
        0x4e1f4573268bf94fL    # 2.1076806625127478E68
        0x5ee9f75ef2e3773eL    # 1.6601136360619023E149
        -0x69baa0f35425d28dL
    .end array-data
.end method

.method private beforeValue()V
    .locals 4

    .line 1
    const/4 v0, 0x6

    .line 2
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->peek()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x2

    .line 8
    if-eq v1, v2, :cond_5

    .line 9
    .line 10
    if-eq v1, v3, :cond_4

    .line 11
    .line 12
    const/4 v2, 0x4

    .line 13
    if-eq v1, v2, :cond_3

    .line 14
    .line 15
    const/4 v2, 0x7

    .line 16
    if-eq v1, v0, :cond_2

    .line 17
    .line 18
    if-ne v1, v2, :cond_1

    .line 19
    .line 20
    iget-object v1, p0, Lcom/google/gson/stream/JsonWriter;->strictness:Lcom/google/gson/Strictness;

    .line 21
    .line 22
    sget-object v3, Lcom/google/gson/Strictness;->LENIENT:Lcom/google/gson/Strictness;

    .line 23
    .line 24
    if-ne v1, v3, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 28
    .line 29
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 30
    .line 31
    new-array v0, v0, [J

    .line 32
    .line 33
    fill-array-data v0, :array_0

    .line 34
    .line 35
    .line 36
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw v1

    .line 47
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 48
    .line 49
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 50
    .line 51
    const/4 v2, 0x3

    .line 52
    new-array v2, v2, [J

    .line 53
    .line 54
    fill-array-data v2, :array_1

    .line 55
    .line 56
    .line 57
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw v0

    .line 68
    :cond_2
    :goto_0
    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonWriter;->replaceTop(I)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_3
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    .line 73
    .line 74
    iget-object v1, p0, Lcom/google/gson/stream/JsonWriter;->formattedColon:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 77
    .line 78
    .line 79
    const/4 v0, 0x5

    .line 80
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonWriter;->replaceTop(I)V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_4
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    .line 85
    .line 86
    iget-object v1, p0, Lcom/google/gson/stream/JsonWriter;->formattedComma:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 89
    .line 90
    .line 91
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->newline()V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_5
    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonWriter;->replaceTop(I)V

    .line 96
    .line 97
    .line 98
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->newline()V

    .line 99
    .line 100
    .line 101
    :goto_1
    return-void

    .line 102
    nop

    .line 103
    :array_0
    .array-data 8
        0x3e15ef243d3535cbL    # 1.276735374394253E-9
        0x2bcfa5cdf702f240L
        -0x7aba9f5e5cad2ac6L
        0x2e6eea92e8241c0L
        -0x5319505628b30fabL    # -2.175168048797315E-92
        -0x2c790673da236179L    # -2.396184751543908E94
    .end array-data

    .line 104
    .line 105
    .line 106
    .line 107
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
    :array_1
    .array-data 8
        0x34c8a4bc6be32712L    # 2.010079264978219E-54
        0x77ecacc9b427359dL    # 4.734006475253503E269
        0x5a18dfe08495ef02L    # 1.0523807786601208E126
    .end array-data
.end method

.method private closeScope(IIC)Lcom/google/gson/stream/JsonWriter;
    .locals 2
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->peek()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-eq v1, p2, :cond_1

    .line 7
    .line 8
    if-ne v1, p1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 12
    .line 13
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 14
    .line 15
    new-array p3, v0, [J

    .line 16
    .line 17
    fill-array-data p3, :array_0

    .line 18
    .line 19
    .line 20
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p1

    .line 31
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    .line 32
    .line 33
    if-nez p1, :cond_3

    .line 34
    .line 35
    iget p1, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    .line 36
    .line 37
    add-int/lit8 p1, p1, -0x1

    .line 38
    .line 39
    iput p1, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    .line 40
    .line 41
    if-ne v1, p2, :cond_2

    .line 42
    .line 43
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->newline()V

    .line 44
    .line 45
    .line 46
    :cond_2
    iget-object p1, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    .line 47
    .line 48
    invoke-virtual {p1, p3}, Ljava/io/Writer;->write(I)V

    .line 49
    .line 50
    .line 51
    return-object p0

    .line 52
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 53
    .line 54
    new-instance p2, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 60
    .line 61
    new-array v0, v0, [J

    .line 62
    .line 63
    fill-array-data v0, :array_1

    .line 64
    .line 65
    .line 66
    invoke-direct {p3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p3

    .line 73
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    iget-object p3, p0, Lcom/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw p1

    .line 89
    :array_0
    .array-data 8
        -0x5cde59c03529aa44L
        0x266e3351001ce8e9L
        0x2c3483c90972d121L    # 9.604359008167627E-96
    .end array-data

    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    :array_1
    .array-data 8
        0x18ada3253669225eL    # 8.314788067800965E-190
        0x513121525e3cfa91L    # 1.2999310527070706E83
        0x246e4c7203d29819L    # 3.33483769832575E-133
    .end array-data
.end method

.method private newline()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/gson/stream/JsonWriter;->usesEmptyNewlineAndIndent:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/gson/stream/JsonWriter;->formattingStyle:Lcom/google/gson/FormattingStyle;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/google/gson/FormattingStyle;->getNewline()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget v0, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    :goto_0
    if-ge v1, v0, :cond_1

    .line 21
    .line 22
    iget-object v2, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    .line 23
    .line 24
    iget-object v3, p0, Lcom/google/gson/stream/JsonWriter;->formattingStyle:Lcom/google/gson/FormattingStyle;

    .line 25
    .line 26
    invoke-virtual {v3}, Lcom/google/gson/FormattingStyle;->getIndent()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    add-int/lit8 v1, v1, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    return-void
.end method

.method private openScope(IC)Lcom/google/gson/stream/JsonWriter;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->beforeValue()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Lcom/google/gson/stream/JsonWriter;->push(I)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(I)V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method private peek()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/gson/stream/JsonWriter;->stack:[I

    .line 6
    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    aget v0, v1, v0

    .line 10
    .line 11
    return v0

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 13
    .line 14
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 15
    .line 16
    const/4 v2, 0x4

    .line 17
    new-array v2, v2, [J

    .line 18
    .line 19
    fill-array-data v2, :array_0

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v0

    .line 33
    :array_0
    .array-data 8
        -0x6814d27f855ec8bL
        0x6d7177dfffc33391L    # 1.541581715254447E219
        -0x32494d9cf462f315L    # -2.3902545292744186E66
        -0x218f6b6ed76991b8L    # -8.281544349241105E146
    .end array-data
.end method

.method private push(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/gson/stream/JsonWriter;->stack:[I

    .line 4
    .line 5
    array-length v2, v1

    .line 6
    if-ne v0, v2, :cond_0

    .line 7
    .line 8
    mul-int/lit8 v0, v0, 0x2

    .line 9
    .line 10
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/google/gson/stream/JsonWriter;->stack:[I

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->stack:[I

    .line 17
    .line 18
    iget v1, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    .line 19
    .line 20
    add-int/lit8 v2, v1, 0x1

    .line 21
    .line 22
    iput v2, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    .line 23
    .line 24
    aput p1, v0, v1

    .line 25
    .line 26
    return-void
.end method

.method private replaceTop(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->stack:[I

    .line 2
    .line 3
    iget v1, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    .line 4
    .line 5
    add-int/lit8 v1, v1, -0x1

    .line 6
    .line 7
    aput p1, v0, v1

    .line 8
    .line 9
    return-void
.end method

.method private string(Ljava/lang/String;)V
    .locals 9

    .line 1
    const/4 v0, 0x2

    .line 2
    iget-boolean v1, p0, Lcom/google/gson/stream/JsonWriter;->htmlSafe:Z

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    sget-object v1, Lcom/google/gson/stream/JsonWriter;->HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sget-object v1, Lcom/google/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    .line 10
    .line 11
    :goto_0
    iget-object v2, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    .line 12
    .line 13
    const/16 v3, 0x22

    .line 14
    .line 15
    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v4, 0x0

    .line 23
    const/4 v5, 0x0

    .line 24
    :goto_1
    if-ge v4, v2, :cond_6

    .line 25
    .line 26
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    const/16 v7, 0x80

    .line 31
    .line 32
    if-ge v6, v7, :cond_1

    .line 33
    .line 34
    aget-object v6, v1, v6

    .line 35
    .line 36
    if-nez v6, :cond_3

    .line 37
    .line 38
    goto :goto_3

    .line 39
    :cond_1
    const/16 v7, 0x2028

    .line 40
    .line 41
    if-ne v6, v7, :cond_2

    .line 42
    .line 43
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 44
    .line 45
    new-array v7, v0, [J

    .line 46
    .line 47
    fill-array-data v7, :array_0

    .line 48
    .line 49
    .line 50
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    goto :goto_2

    .line 58
    :cond_2
    const/16 v7, 0x2029

    .line 59
    .line 60
    if-ne v6, v7, :cond_5

    .line 61
    .line 62
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 63
    .line 64
    new-array v7, v0, [J

    .line 65
    .line 66
    fill-array-data v7, :array_1

    .line 67
    .line 68
    .line 69
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    :cond_3
    :goto_2
    if-ge v5, v4, :cond_4

    .line 77
    .line 78
    iget-object v7, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    .line 79
    .line 80
    sub-int v8, v4, v5

    .line 81
    .line 82
    invoke-virtual {v7, p1, v5, v8}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 83
    .line 84
    .line 85
    :cond_4
    iget-object v5, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    .line 86
    .line 87
    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    add-int/lit8 v5, v4, 0x1

    .line 91
    .line 92
    :cond_5
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_6
    if-ge v5, v2, :cond_7

    .line 96
    .line 97
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    .line 98
    .line 99
    sub-int/2addr v2, v5

    .line 100
    invoke-virtual {v0, p1, v5, v2}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 101
    .line 102
    .line 103
    :cond_7
    iget-object p1, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    .line 104
    .line 105
    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(I)V

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :array_0
    .array-data 8
        -0x68783b3469b6c3ffL    # -2.54377577627331E-195
        0x3184cc58e4cac660L    # 3.766842181214808E-70
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
    :array_1
    .array-data 8
        0x2850b19b37ea107bL    # 1.69471316885231E-114
        0x104550641bde58b9L
    .end array-data
.end method

.method private writeDeferredName()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->beforeName()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    .line 9
    .line 10
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonWriter;->string(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    .line 15
    .line 16
    :cond_0
    return-void
.end method


# virtual methods
.method public beginArray()Lcom/google/gson/stream/JsonWriter;
    .locals 2
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->writeDeferredName()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    const/16 v1, 0x5b

    .line 6
    .line 7
    invoke-direct {p0, v0, v1}, Lcom/google/gson/stream/JsonWriter;->openScope(IC)Lcom/google/gson/stream/JsonWriter;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public beginObject()Lcom/google/gson/stream/JsonWriter;
    .locals 2
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->writeDeferredName()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    const/16 v1, 0x7b

    .line 6
    .line 7
    invoke-direct {p0, v0, v1}, Lcom/google/gson/stream/JsonWriter;->openScope(IC)Lcom/google/gson/stream/JsonWriter;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public close()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-gt v0, v1, :cond_1

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    iget-object v2, p0, Lcom/google/gson/stream/JsonWriter;->stack:[I

    .line 14
    .line 15
    sub-int/2addr v0, v1

    .line 16
    aget v0, v2, v0

    .line 17
    .line 18
    const/4 v1, 0x7

    .line 19
    if-ne v0, v1, :cond_1

    .line 20
    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 26
    .line 27
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 28
    .line 29
    const/4 v2, 0x4

    .line 30
    new-array v2, v2, [J

    .line 31
    .line 32
    fill-array-data v2, :array_0

    .line 33
    .line 34
    .line 35
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v0

    .line 46
    nop

    .line 47
    :array_0
    .array-data 8
        -0x144339d0976ef991L    # -9.459749797786656E210
        -0x1ee88720c94750f9L    # -5.1562112445485205E159
        -0x18568738dbf2c13L
        -0x1cacaf618b27cc11L    # -2.9157509686520117E170
    .end array-data
.end method

.method public endArray()Lcom/google/gson/stream/JsonWriter;
    .locals 3
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    const/16 v1, 0x5d

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-direct {p0, v2, v0, v1}, Lcom/google/gson/stream/JsonWriter;->closeScope(IIC)Lcom/google/gson/stream/JsonWriter;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public endObject()Lcom/google/gson/stream/JsonWriter;
    .locals 3
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    const/4 v0, 0x5

    .line 2
    const/16 v1, 0x7d

    .line 3
    .line 4
    const/4 v2, 0x3

    .line 5
    invoke-direct {p0, v2, v0, v1}, Lcom/google/gson/stream/JsonWriter;->closeScope(IIC)Lcom/google/gson/stream/JsonWriter;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public flush()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 12
    .line 13
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 14
    .line 15
    const/4 v2, 0x4

    .line 16
    new-array v2, v2, [J

    .line 17
    .line 18
    fill-array-data v2, :array_0

    .line 19
    .line 20
    .line 21
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v0

    .line 32
    nop

    .line 33
    :array_0
    .array-data 8
        0x347a40128dd55782L    # 6.69105819053952E-56
        0xdb5fd97a2dfce21L
        -0x32f86126ac729c30L    # -1.2146139494203717E63
        -0x6e69fd843b599151L    # -5.946170780253357E-224
    .end array-data
.end method

.method public final getFormattingStyle()Lcom/google/gson/FormattingStyle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->formattingStyle:Lcom/google/gson/FormattingStyle;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSerializeNulls()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/gson/stream/JsonWriter;->serializeNulls:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getStrictness()Lcom/google/gson/Strictness;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->strictness:Lcom/google/gson/Strictness;

    .line 2
    .line 3
    return-object v0
.end method

.method public final isHtmlSafe()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/gson/stream/JsonWriter;->htmlSafe:Z

    .line 2
    .line 3
    return v0
.end method

.method public isLenient()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->strictness:Lcom/google/gson/Strictness;

    .line 2
    .line 3
    sget-object v1, Lcom/google/gson/Strictness;->LENIENT:Lcom/google/gson/Strictness;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public jsonValue(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->writeDeferredName()V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->beforeValue()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 17
    .line 18
    .line 19
    return-object p0
.end method

.method public name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;
    .locals 3
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x3

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
    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    .line 20
    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->peek()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eq v0, v1, :cond_1

    .line 28
    .line 29
    const/4 v1, 0x5

    .line 30
    if-ne v0, v1, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 34
    .line 35
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 36
    .line 37
    const/4 v1, 0x7

    .line 38
    new-array v1, v1, [J

    .line 39
    .line 40
    fill-array-data v1, :array_1

    .line 41
    .line 42
    .line 43
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p1

    .line 54
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    .line 55
    .line 56
    return-object p0

    .line 57
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 58
    .line 59
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 60
    .line 61
    const/4 v1, 0x6

    .line 62
    new-array v1, v1, [J

    .line 63
    .line 64
    fill-array-data v1, :array_2

    .line 65
    .line 66
    .line 67
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw p1

    .line 78
    nop

    .line 79
    :array_0
    .array-data 8
        0x7592b3641a3f5fd0L    # 2.246338668128391E258
        -0x39abe59ec33b81b8L    # -6.370909653247179E30
        -0x79e79d689b6955adL
    .end array-data

    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    :array_1
    .array-data 8
        -0x7ade8ae2d2f46bcbL    # -5.86996568104208E-284
        0x72dfe616a65105c3L    # 2.1780638325358497E245
        0x3ad108ccb1737fd7L    # 2.2016411560244576E-25
        -0x463c95b1d0aeb1a6L    # -1.9144920041847666E-30
        0x726028c407c9c248L    # 8.620004276671883E242
        -0x3575cf2113ba0021L    # -1.2248974552113974E51
        0x10c72a54a36be839L    # 7.639628353478448E-228
    .end array-data

    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
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
    :array_2
    .array-data 8
        -0x6ca9d9a1e3c84a74L
        0x1e0f124b14abd58bL    # 6.744565961210091E-164
        0x35ae49075db5b856L    # 4.047269863776901E-50
        0x175bb19d6c2b2ff3L
        -0x675b2957b034e0f2L    # -5.846276055568226E-190
        -0x741ab8117daecd9fL
    .end array-data
.end method

.method public nullValue()Lcom/google/gson/stream/JsonWriter;
    .locals 3
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/google/gson/stream/JsonWriter;->serializeNulls:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->writeDeferredName()V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->beforeValue()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    .line 21
    .line 22
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 23
    .line 24
    const/4 v2, 0x2

    .line 25
    new-array v2, v2, [J

    .line 26
    .line 27
    fill-array-data v2, :array_0

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-object p0

    .line 41
    :array_0
    .array-data 8
        -0x29e37fe40fd5d41fL    # -6.536568827931041E106
        0x34216c616f657951L    # 1.3878508328181138E-57
    .end array-data
.end method

.method public final setFormattingStyle(Lcom/google/gson/FormattingStyle;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/gson/stream/JsonWriter;->formattingStyle:Lcom/google/gson/FormattingStyle;

    .line 5
    .line 6
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    new-array v1, v0, [J

    .line 10
    .line 11
    fill-array-data v1, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/google/gson/stream/JsonWriter;->formattedComma:Ljava/lang/String;

    .line 22
    .line 23
    iget-object p1, p0, Lcom/google/gson/stream/JsonWriter;->formattingStyle:Lcom/google/gson/FormattingStyle;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/google/gson/FormattingStyle;->usesSpaceAfterSeparators()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 32
    .line 33
    new-array v1, v0, [J

    .line 34
    .line 35
    fill-array-data v1, :array_1

    .line 36
    .line 37
    .line 38
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iput-object p1, p0, Lcom/google/gson/stream/JsonWriter;->formattedColon:Ljava/lang/String;

    .line 46
    .line 47
    iget-object p1, p0, Lcom/google/gson/stream/JsonWriter;->formattingStyle:Lcom/google/gson/FormattingStyle;

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/google/gson/FormattingStyle;->getNewline()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_1

    .line 58
    .line 59
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 60
    .line 61
    new-array v0, v0, [J

    .line 62
    .line 63
    fill-array-data v0, :array_2

    .line 64
    .line 65
    .line 66
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    iput-object p1, p0, Lcom/google/gson/stream/JsonWriter;->formattedComma:Ljava/lang/String;

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 77
    .line 78
    new-array v0, v0, [J

    .line 79
    .line 80
    fill-array-data v0, :array_3

    .line 81
    .line 82
    .line 83
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    iput-object p1, p0, Lcom/google/gson/stream/JsonWriter;->formattedColon:Ljava/lang/String;

    .line 91
    .line 92
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/gson/stream/JsonWriter;->formattingStyle:Lcom/google/gson/FormattingStyle;

    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/google/gson/FormattingStyle;->getNewline()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    if-eqz p1, :cond_2

    .line 103
    .line 104
    iget-object p1, p0, Lcom/google/gson/stream/JsonWriter;->formattingStyle:Lcom/google/gson/FormattingStyle;

    .line 105
    .line 106
    invoke-virtual {p1}, Lcom/google/gson/FormattingStyle;->getIndent()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    if-eqz p1, :cond_2

    .line 115
    .line 116
    const/4 p1, 0x1

    .line 117
    goto :goto_1

    .line 118
    :cond_2
    const/4 p1, 0x0

    .line 119
    :goto_1
    iput-boolean p1, p0, Lcom/google/gson/stream/JsonWriter;->usesEmptyNewlineAndIndent:Z

    .line 120
    .line 121
    return-void

    .line 122
    nop

    .line 123
    :array_0
    .array-data 8
        0x206edb338be37932L    # 1.841091724910036E-152
        0x3a048e6a3ba6a343L    # 3.243213624229272E-29
    .end array-data

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
        0x2f99138d81dfd7edL    # 2.1148811229470108E-79
        -0x9c8d6bb4717efdaL
    .end array-data

    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    :array_2
    .array-data 8
        0x74ef4e2d29299e61L    # 1.8361378253826085E255
        0x166dfbfe30b17f70L
    .end array-data

    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    :array_3
    .array-data 8
        -0x455e7e8b890af15L    # -4.966704084334372E287
        0x442a2a997a5b5aaeL    # 2.4134248253513E20
    .end array-data
.end method

.method public final setHtmlSafe(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/gson/stream/JsonWriter;->htmlSafe:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setIndent(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object p1, Lcom/google/gson/FormattingStyle;->COMPACT:Lcom/google/gson/FormattingStyle;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/google/gson/stream/JsonWriter;->setFormattingStyle(Lcom/google/gson/FormattingStyle;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    sget-object v0, Lcom/google/gson/FormattingStyle;->PRETTY:Lcom/google/gson/FormattingStyle;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/google/gson/FormattingStyle;->withIndent(Ljava/lang/String;)Lcom/google/gson/FormattingStyle;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p0, p1}, Lcom/google/gson/stream/JsonWriter;->setFormattingStyle(Lcom/google/gson/FormattingStyle;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method public final setLenient(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lcom/google/gson/Strictness;->LENIENT:Lcom/google/gson/Strictness;

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget-object p1, Lcom/google/gson/Strictness;->LEGACY_STRICT:Lcom/google/gson/Strictness;

    .line 7
    .line 8
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/gson/stream/JsonWriter;->setStrictness(Lcom/google/gson/Strictness;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setSerializeNulls(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/gson/stream/JsonWriter;->serializeNulls:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setStrictness(Lcom/google/gson/Strictness;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/gson/stream/JsonWriter;->strictness:Lcom/google/gson/Strictness;

    .line 5
    .line 6
    return-void
.end method

.method public value(D)Lcom/google/gson/stream/JsonWriter;
    .locals 4
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 17
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->writeDeferredName()V

    .line 18
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->strictness:Lcom/google/gson/Strictness;

    sget-object v1, Lcom/google/gson/Strictness;->LENIENT:Lcom/google/gson/Strictness;

    if-eq v0, v1, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v3, 0x6

    new-array v3, v3, [J

    fill-array-data v3, :array_0

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->beforeValue()V

    .line 21
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    return-object p0

    nop

    :array_0
    .array-data 8
        -0x1335e1c56e8f7270L    # -1.1254551059443294E216
        -0x37d9f7569c1830e0L    # -3.748862710360188E39
        0x4d4d1210eb2792c0L    # 2.3917878249953538E64
        0x4bb39467215a6251L    # 4.800928137969686E56
        0x5859a4682a42030eL    # 4.04141876788613E117
        -0x18a9d8fbddfcd6c9L    # -6.168764686231273E189
    .end array-data
.end method

.method public value(F)Lcom/google/gson/stream/JsonWriter;
    .locals 4
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 12
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->writeDeferredName()V

    .line 13
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->strictness:Lcom/google/gson/Strictness;

    sget-object v1, Lcom/google/gson/Strictness;->LENIENT:Lcom/google/gson/Strictness;

    if-eq v0, v1, :cond_1

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v3, 0x6

    new-array v3, v3, [J

    fill-array-data v3, :array_0

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->beforeValue()V

    .line 16
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    return-object p0

    nop

    :array_0
    .array-data 8
        0x7707d66e1015e53L
        0x1cb00194db88b06eL
        0x6c5f3b87a9f07e3L
        -0x185bce50548402f5L    # -1.799498470051527E191
        0x19a4adec211d24cdL
        -0x2eec9402a4a266e0L    # -3.684589261942169E82
    .end array-data
.end method

.method public value(J)Lcom/google/gson/stream/JsonWriter;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 22
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->writeDeferredName()V

    .line 23
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->beforeValue()V

    .line 24
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method public value(Ljava/lang/Boolean;)Lcom/google/gson/stream/JsonWriter;
    .locals 2
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    const/4 v0, 0x2

    if-nez p1, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->writeDeferredName()V

    .line 10
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->beforeValue()V

    .line 11
    iget-object v1, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    :goto_0
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v0, [J

    fill-array-data v0, :array_1

    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    goto :goto_0

    :goto_1
    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0

    :array_0
    .array-data 8
        -0x2cf86b6139582d8bL    # -9.606884813318809E91
        0x3ed5bef26fd1967bL    # 5.184623430220404E-6
    .end array-data

    :array_1
    .array-data 8
        0x7665a89671967d6cL    # 2.1312555646290623E262
        -0x6aff5ef88b56b57dL
    .end array-data
.end method

.method public value(Ljava/lang/Number;)Lcom/google/gson/stream/JsonWriter;
    .locals 5
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    const/4 v0, 0x2

    if-nez p1, :cond_0

    .line 25
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    move-result-object p1

    return-object p1

    .line 26
    :cond_0
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->writeDeferredName()V

    .line 27
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 29
    invoke-static {p1}, Lcom/google/gson/stream/JsonWriter;->alwaysCreatesValidJsonNumber(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 30
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v3, 0x3

    new-array v3, v3, [J

    fill-array-data v3, :array_0

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_1

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v0, [J

    fill-array-data v0, :array_2

    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 31
    :cond_1
    const-class v0, Ljava/lang/Float;

    if-eq p1, v0, :cond_5

    const-class v0, Ljava/lang/Double;

    if-eq p1, v0, :cond_5

    sget-object v0, Lcom/google/gson/stream/JsonWriter;->VALID_JSON_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    .line 32
    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 33
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v4, 0x4

    new-array v4, v4, [J

    fill-array-data v4, :array_3

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v3, 0x5

    new-array v3, v3, [J

    fill-array-data v3, :array_4

    invoke-direct {p1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 34
    invoke-static {p1, v2, v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 35
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/google/gson/stream/JsonWriter;->strictness:Lcom/google/gson/Strictness;

    sget-object v0, Lcom/google/gson/Strictness;->LENIENT:Lcom/google/gson/Strictness;

    if-ne p1, v0, :cond_4

    goto :goto_1

    .line 37
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v3, 0x6

    new-array v3, v3, [J

    fill-array-data v3, :array_5

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 38
    invoke-static {v2, v0, v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_5
    :goto_1
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->beforeValue()V

    .line 41
    iget-object p1, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {p1, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    return-object p0

    nop

    :array_0
    .array-data 8
        0x638e5c4f9a2bd089L    # 3.6665511831306037E171
        0x3577f83a615d3ea5L    # 4.004075629931864E-51
        0x5281f41635ba5df7L    # 2.8571759262157675E89
    .end array-data

    :array_1
    .array-data 8
        0x14b87372e7ae67e6L    # 7.437365883732611E-209
        0x3de67eb993af97edL    # 1.6367280607477647E-10
    .end array-data

    :array_2
    .array-data 8
        -0x1d32fb046aec1642L    # -8.556122353699758E167
        0x26881454ede260c7L    # 4.553211462819827E-123
    .end array-data

    :array_3
    .array-data 8
        -0xf83708537daab19L    # -7.09450274129852E233
        -0x33d3b510d83d420eL    # -8.879811491980101E58
        -0x7e492365e8ea3cb0L
        -0x1e5b3923755e61efL    # -2.336826106463124E162
    .end array-data

    :array_4
    .array-data 8
        0x7a485b795acb37d9L    # 1.1053389706985287E281
        0x67a71a25842ee313L    # 2.0586351341323748E191
        0x11443f673660984aL
        -0x30c2845b9cf8c2f7L    # -5.2091911539376385E73
        0x419531748b0e469dL    # 8.889065876394124E7
    .end array-data

    :array_5
    .array-data 8
        -0x4e2cb96d04d37145L    # -1.117147996220224E-68
        -0x5122bcee20c4d6c1L    # -6.025111447890372E-83
        -0x38b8e76d601045b3L    # -2.3984244477289074E35
        -0x6dc1ad1f1a8007eL    # -3.444094835999166E275
        -0x6d00e9923d5225e6L
        -0x739dcb82852d2f8cL
    .end array-data
.end method

.method public value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->writeDeferredName()V

    .line 3
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->beforeValue()V

    .line 4
    invoke-direct {p0, p1}, Lcom/google/gson/stream/JsonWriter;->string(Ljava/lang/String;)V

    return-object p0
.end method

.method public value(Z)Lcom/google/gson/stream/JsonWriter;
    .locals 2
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    const/4 v0, 0x2

    .line 5
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->writeDeferredName()V

    .line 6
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->beforeValue()V

    .line 7
    iget-object v1, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    if-eqz p1, :cond_0

    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    :goto_0
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v0, [J

    fill-array-data v0, :array_1

    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    goto :goto_0

    :goto_1
    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0

    nop

    :array_0
    .array-data 8
        0x7e5d1eeb7788b8d1L    # 4.875494826511309E300
        -0x5bd755d6dc0b3d08L
    .end array-data

    :array_1
    .array-data 8
        0x6677dee7e220d014L    # 4.057167797274446E185
        0x5ccf810ba5009e16L    # 1.172397474556851E139
    .end array-data
.end method
