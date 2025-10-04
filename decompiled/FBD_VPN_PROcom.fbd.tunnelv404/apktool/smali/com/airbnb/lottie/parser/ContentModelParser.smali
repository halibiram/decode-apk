.class Lcom/airbnb/lottie/parser/ContentModelParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 3

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
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 17
    .line 18
    new-array v1, v1, [J

    .line 19
    .line 20
    fill-array-data v1, :array_1

    .line 21
    .line 22
    .line 23
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sput-object v0, Lcom/airbnb/lottie/parser/ContentModelParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 39
    .line 40
    return-void

    .line 41
    :array_0
    .array-data 8
        0x6ba2c20502fa5775L    # 3.083407662998104E210
        0x68102ae3c33b7c13L    # 1.844085787980046E193
    .end array-data

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    :array_1
    .array-data 8
        0x20320ea628d81afeL    # 1.346769209988485E-153
        0x65c2c0fef1f4b483L    # 1.556391183431776E182
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ContentModel;
    .locals 8
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 3
    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x2

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const/4 v4, 0x1

    .line 12
    const/4 v5, 0x0

    .line 13
    if-eqz v3, :cond_2

    .line 14
    .line 15
    sget-object v3, Lcom/airbnb/lottie/parser/ContentModelParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 16
    .line 17
    invoke-virtual {p0, v3}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    if-eq v3, v4, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    move-object v3, v5

    .line 43
    :goto_1
    if-nez v3, :cond_3

    .line 44
    .line 45
    return-object v5

    .line 46
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    const/16 v7, 0xca7

    .line 51
    .line 52
    if-eq v6, v7, :cond_11

    .line 53
    .line 54
    const/16 v7, 0xcc6

    .line 55
    .line 56
    if-eq v6, v7, :cond_10

    .line 57
    .line 58
    const/16 v7, 0xcdf

    .line 59
    .line 60
    if-eq v6, v7, :cond_f

    .line 61
    .line 62
    const/16 v7, 0xda0

    .line 63
    .line 64
    if-eq v6, v7, :cond_e

    .line 65
    .line 66
    const/16 v7, 0xe3e

    .line 67
    .line 68
    if-eq v6, v7, :cond_d

    .line 69
    .line 70
    const/16 v7, 0xe55

    .line 71
    .line 72
    if-eq v6, v7, :cond_c

    .line 73
    .line 74
    const/16 v7, 0xe5f

    .line 75
    .line 76
    if-eq v6, v7, :cond_b

    .line 77
    .line 78
    const/16 v7, 0xe61

    .line 79
    .line 80
    if-eq v6, v7, :cond_a

    .line 81
    .line 82
    const/16 v4, 0xe79

    .line 83
    .line 84
    if-eq v6, v4, :cond_9

    .line 85
    .line 86
    const/16 v4, 0xe7e

    .line 87
    .line 88
    if-eq v6, v4, :cond_8

    .line 89
    .line 90
    const/16 v4, 0xceb

    .line 91
    .line 92
    if-eq v6, v4, :cond_7

    .line 93
    .line 94
    const/16 v4, 0xcec

    .line 95
    .line 96
    if-eq v6, v4, :cond_6

    .line 97
    .line 98
    const/16 v4, 0xe31

    .line 99
    .line 100
    if-eq v6, v4, :cond_5

    .line 101
    .line 102
    const/16 v4, 0xe32

    .line 103
    .line 104
    if-eq v6, v4, :cond_4

    .line 105
    .line 106
    goto/16 :goto_2

    .line 107
    .line 108
    :cond_4
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 109
    .line 110
    new-array v1, v1, [J

    .line 111
    .line 112
    fill-array-data v1, :array_0

    .line 113
    .line 114
    .line 115
    invoke-direct {v4, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    if-eqz v1, :cond_12

    .line 127
    .line 128
    const/16 v1, 0xd

    .line 129
    .line 130
    goto/16 :goto_3

    .line 131
    .line 132
    :cond_5
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 133
    .line 134
    new-array v1, v1, [J

    .line 135
    .line 136
    fill-array-data v1, :array_1

    .line 137
    .line 138
    .line 139
    invoke-direct {v4, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    if-eqz v1, :cond_12

    .line 151
    .line 152
    const/16 v1, 0x8

    .line 153
    .line 154
    goto/16 :goto_3

    .line 155
    .line 156
    :cond_6
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 157
    .line 158
    new-array v6, v1, [J

    .line 159
    .line 160
    fill-array-data v6, :array_2

    .line 161
    .line 162
    .line 163
    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v4

    .line 174
    if-eqz v4, :cond_12

    .line 175
    .line 176
    goto/16 :goto_3

    .line 177
    .line 178
    :cond_7
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 179
    .line 180
    new-array v1, v1, [J

    .line 181
    .line 182
    fill-array-data v1, :array_3

    .line 183
    .line 184
    .line 185
    invoke-direct {v4, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v1

    .line 196
    if-eqz v1, :cond_12

    .line 197
    .line 198
    const/4 v1, 0x0

    .line 199
    goto/16 :goto_3

    .line 200
    .line 201
    :cond_8
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 202
    .line 203
    new-array v1, v1, [J

    .line 204
    .line 205
    fill-array-data v1, :array_4

    .line 206
    .line 207
    .line 208
    invoke-direct {v4, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v1

    .line 219
    if-eqz v1, :cond_12

    .line 220
    .line 221
    const/4 v1, 0x5

    .line 222
    goto/16 :goto_3

    .line 223
    .line 224
    :cond_9
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 225
    .line 226
    new-array v1, v1, [J

    .line 227
    .line 228
    fill-array-data v1, :array_5

    .line 229
    .line 230
    .line 231
    invoke-direct {v4, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    move-result v1

    .line 242
    if-eqz v1, :cond_12

    .line 243
    .line 244
    const/16 v1, 0x9

    .line 245
    .line 246
    goto/16 :goto_3

    .line 247
    .line 248
    :cond_a
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 249
    .line 250
    new-array v1, v1, [J

    .line 251
    .line 252
    fill-array-data v1, :array_6

    .line 253
    .line 254
    .line 255
    invoke-direct {v6, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    move-result v1

    .line 266
    if-eqz v1, :cond_12

    .line 267
    .line 268
    const/4 v1, 0x1

    .line 269
    goto/16 :goto_3

    .line 270
    .line 271
    :cond_b
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 272
    .line 273
    new-array v1, v1, [J

    .line 274
    .line 275
    fill-array-data v1, :array_7

    .line 276
    .line 277
    .line 278
    invoke-direct {v4, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    move-result v1

    .line 289
    if-eqz v1, :cond_12

    .line 290
    .line 291
    const/16 v1, 0xa

    .line 292
    .line 293
    goto/16 :goto_3

    .line 294
    .line 295
    :cond_c
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 296
    .line 297
    new-array v1, v1, [J

    .line 298
    .line 299
    fill-array-data v1, :array_8

    .line 300
    .line 301
    .line 302
    invoke-direct {v4, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 310
    .line 311
    .line 312
    move-result v1

    .line 313
    if-eqz v1, :cond_12

    .line 314
    .line 315
    const/4 v1, 0x6

    .line 316
    goto/16 :goto_3

    .line 317
    .line 318
    :cond_d
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 319
    .line 320
    new-array v1, v1, [J

    .line 321
    .line 322
    fill-array-data v1, :array_9

    .line 323
    .line 324
    .line 325
    invoke-direct {v4, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v1

    .line 332
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 333
    .line 334
    .line 335
    move-result v1

    .line 336
    if-eqz v1, :cond_12

    .line 337
    .line 338
    const/16 v1, 0xc

    .line 339
    .line 340
    goto :goto_3

    .line 341
    :cond_e
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 342
    .line 343
    new-array v1, v1, [J

    .line 344
    .line 345
    fill-array-data v1, :array_a

    .line 346
    .line 347
    .line 348
    invoke-direct {v4, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v1

    .line 355
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 356
    .line 357
    .line 358
    move-result v1

    .line 359
    if-eqz v1, :cond_12

    .line 360
    .line 361
    const/16 v1, 0xb

    .line 362
    .line 363
    goto :goto_3

    .line 364
    :cond_f
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 365
    .line 366
    new-array v1, v1, [J

    .line 367
    .line 368
    fill-array-data v1, :array_b

    .line 369
    .line 370
    .line 371
    invoke-direct {v4, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v1

    .line 378
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 379
    .line 380
    .line 381
    move-result v1

    .line 382
    if-eqz v1, :cond_12

    .line 383
    .line 384
    const/4 v1, 0x4

    .line 385
    goto :goto_3

    .line 386
    :cond_10
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 387
    .line 388
    new-array v1, v1, [J

    .line 389
    .line 390
    fill-array-data v1, :array_c

    .line 391
    .line 392
    .line 393
    invoke-direct {v4, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v1

    .line 400
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 401
    .line 402
    .line 403
    move-result v1

    .line 404
    if-eqz v1, :cond_12

    .line 405
    .line 406
    const/4 v1, 0x3

    .line 407
    goto :goto_3

    .line 408
    :cond_11
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 409
    .line 410
    new-array v1, v1, [J

    .line 411
    .line 412
    fill-array-data v1, :array_d

    .line 413
    .line 414
    .line 415
    invoke-direct {v4, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 416
    .line 417
    .line 418
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v1

    .line 422
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 423
    .line 424
    .line 425
    move-result v1

    .line 426
    if-eqz v1, :cond_12

    .line 427
    .line 428
    const/4 v1, 0x7

    .line 429
    goto :goto_3

    .line 430
    :cond_12
    :goto_2
    const/4 v1, -0x1

    .line 431
    :goto_3
    packed-switch v1, :pswitch_data_0

    .line 432
    .line 433
    .line 434
    new-instance p1, Ljava/lang/StringBuilder;

    .line 435
    .line 436
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 437
    .line 438
    .line 439
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 440
    .line 441
    new-array v0, v0, [J

    .line 442
    .line 443
    fill-array-data v0, :array_e

    .line 444
    .line 445
    .line 446
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 447
    .line 448
    .line 449
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v0

    .line 453
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    .line 455
    .line 456
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    .line 458
    .line 459
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object p1

    .line 463
    invoke-static {p1}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    goto :goto_4

    .line 467
    :pswitch_0
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/RoundedCornersParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/RoundedCorners;

    .line 468
    .line 469
    .line 470
    move-result-object v5

    .line 471
    goto :goto_4

    .line 472
    :pswitch_1
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/RepeaterParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/Repeater;

    .line 473
    .line 474
    .line 475
    move-result-object v5

    .line 476
    goto :goto_4

    .line 477
    :pswitch_2
    invoke-static {p0}, Lcom/airbnb/lottie/parser/MergePathsParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;)Lcom/airbnb/lottie/model/content/MergePaths;

    .line 478
    .line 479
    .line 480
    move-result-object v5

    .line 481
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 482
    .line 483
    const/16 v1, 0x14

    .line 484
    .line 485
    new-array v1, v1, [J

    .line 486
    .line 487
    fill-array-data v1, :array_f

    .line 488
    .line 489
    .line 490
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 491
    .line 492
    .line 493
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object v0

    .line 497
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 498
    .line 499
    .line 500
    goto :goto_4

    .line 501
    :pswitch_3
    invoke-static {p0, p1, v2}, Lcom/airbnb/lottie/parser/PolystarShapeParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;I)Lcom/airbnb/lottie/model/content/PolystarShape;

    .line 502
    .line 503
    .line 504
    move-result-object v5

    .line 505
    goto :goto_4

    .line 506
    :pswitch_4
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/ShapeTrimPathParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ShapeTrimPath;

    .line 507
    .line 508
    .line 509
    move-result-object v5

    .line 510
    goto :goto_4

    .line 511
    :pswitch_5
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/RectangleShapeParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/RectangleShape;

    .line 512
    .line 513
    .line 514
    move-result-object v5

    .line 515
    goto :goto_4

    .line 516
    :pswitch_6
    invoke-static {p0, p1, v2}, Lcom/airbnb/lottie/parser/CircleShapeParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;I)Lcom/airbnb/lottie/model/content/CircleShape;

    .line 517
    .line 518
    .line 519
    move-result-object v5

    .line 520
    goto :goto_4

    .line 521
    :pswitch_7
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/ShapePathParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ShapePath;

    .line 522
    .line 523
    .line 524
    move-result-object v5

    .line 525
    goto :goto_4

    .line 526
    :pswitch_8
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    .line 527
    .line 528
    .line 529
    move-result-object v5

    .line 530
    goto :goto_4

    .line 531
    :pswitch_9
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/GradientFillParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/GradientFill;

    .line 532
    .line 533
    .line 534
    move-result-object v5

    .line 535
    goto :goto_4

    .line 536
    :pswitch_a
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/ShapeFillParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ShapeFill;

    .line 537
    .line 538
    .line 539
    move-result-object v5

    .line 540
    goto :goto_4

    .line 541
    :pswitch_b
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/GradientStrokeParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/GradientStroke;

    .line 542
    .line 543
    .line 544
    move-result-object v5

    .line 545
    goto :goto_4

    .line 546
    :pswitch_c
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/ShapeStrokeParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ShapeStroke;

    .line 547
    .line 548
    .line 549
    move-result-object v5

    .line 550
    goto :goto_4

    .line 551
    :pswitch_d
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/ShapeGroupParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ShapeGroup;

    .line 552
    .line 553
    .line 554
    move-result-object v5

    .line 555
    :goto_4
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    .line 556
    .line 557
    .line 558
    move-result p1

    .line 559
    if-eqz p1, :cond_13

    .line 560
    .line 561
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    .line 562
    .line 563
    .line 564
    goto :goto_4

    .line 565
    :cond_13
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 566
    .line 567
    .line 568
    return-object v5

    .line 569
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

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
    :array_0
    .array-data 8
        0x79c4d5e81cfa4e04L    # 3.693443462016424E278
        -0x7068b23f809c96e1L    # -1.465846854876504E-233
    .end array-data

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
    :array_1
    .array-data 8
        -0x240eac4bef7c79beL    # -7.871193808295718E134
        0x272d632a5a83d44cL    # 5.690263607646008E-120
    .end array-data

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
    .line 624
    .line 625
    :array_2
    .array-data 8
        0x2042c5f0c3712f47L    # 2.800339191421273E-153
        -0x6e4cc25e5b31571aL
    .end array-data

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
    :array_3
    .array-data 8
        -0x2961b603602650ccL    # -1.778375802659513E109
        0x312e6fa22db60f21L    # 8.613102119917683E-72
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
    :array_4
    .array-data 8
        0x78f1c1bc1ef5816dL    # 3.8423789757961975E274
        -0x7f956ea5831c7115L
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
    :array_5
    .array-data 8
        0x557aac8131a10abcL    # 5.97426070979564E103
        -0x4d1d8a633f041a50L    # -1.402261622560157E-63
    .end array-data

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
    :array_6
    .array-data 8
        -0x1019657450822d71L    # -1.0966451181852623E231
        0x6ed18cae56ffe5feL    # 6.495945675984727E225
    .end array-data

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
    .line 684
    .line 685
    :array_7
    .array-data 8
        -0x44dd61df61bf64e8L    # -7.700094129746057E-24
        0x750fa004009455c0L    # 7.419552443521809E255
    .end array-data

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
    .line 696
    .line 697
    :array_8
    .array-data 8
        0x50cb9aa5b00ba083L    # 1.636523690432445E81
        0x2950c99a9cbd637cL    # 1.116883852848604E-109
    .end array-data

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
    :array_9
    .array-data 8
        0x73053f527a65a759L    # 1.1606233216703684E246
        -0x4ec46d0b408eff09L    # -1.5606357564845464E-71
    .end array-data

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
    .line 720
    .line 721
    :array_a
    .array-data 8
        -0x17197b604b2ec501L    # -2.104060320907423E197
        0x165ac319fa459d86L    # 5.462901122563244E-201
    .end array-data

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
    .line 732
    .line 733
    :array_b
    .array-data 8
        -0xcb3700f5723afdfL
        -0x69d2f36b7d825860L    # -7.41218437869453E-202
    .end array-data

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
    .line 744
    .line 745
    :array_c
    .array-data 8
        0x3aad1c36dabd8497L    # 4.7030083992358516E-26
        0x5558000b64b5014bL    # 1.3438565797573833E103
    .end array-data

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
    :array_d
    .array-data 8
        -0x5f507900c841b2f7L
        0x840565e424a7b2dL
    .end array-data

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
    .line 768
    .line 769
    :array_e
    .array-data 8
        0x26ea9e041937f372L
        -0x5ba5cf45b73f42d7L
        -0x64f6cb0f79f187f8L    # -1.943883399888147E-178
        -0x47766f20e857f593L    # -2.4042060693372623E-36
    .end array-data

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
    :array_f
    .array-data 8
        -0x54fb2a8c2a431ab9L
        -0x4156813e2f019e61L    # -7.598145277286454E-7
        -0x12b33c61f79429e9L    # -3.1730587901250435E218
        -0x87b3f6d8f871dd5L    # -5.353169916193042E267
        0x59bdcc38c82e86d4L    # 1.969797482477012E124
        -0x88b3704f3e8cfa9L
        -0x7242e8ba44ee007fL
        0x805acaf9d7f69ffL
        0x2efd49f5e12a6f10L    # 2.412261456717004E-82
        -0x47d516ff7e4e2243L    # -3.9540932173344444E-38
        0x3f11b78d7cd87741L    # 6.758500168088396E-5
        0x4b8d641ec373913eL    # 9.00834422596689E55
        0x51c0afc64ec23aeeL    # 6.483315395542326E85
        0x28c1b808cfc2c24aL
        -0x39ef013e172624e2L    # -3.366235537534483E29
        0x6e34fe9e8b8a0860L    # 7.588999986550499E222
        0xcf7dfc9eca34eeL
        0x17bed515eb0c4f42L
        -0x45f3ac0b87009caaL    # -4.4693623150496806E-29
        -0x40b2fce4c2370e1fL    # -8.853800787345622E-4
    .end array-data
.end method
