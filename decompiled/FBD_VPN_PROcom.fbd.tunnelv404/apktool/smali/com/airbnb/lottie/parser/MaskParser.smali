.class Lcom/airbnb/lottie/parser/MaskParser;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/Mask;
    .locals 13

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x2

    .line 3
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    move-object v4, v2

    .line 9
    move-object v5, v4

    .line 10
    const/4 v6, 0x0

    .line 11
    :goto_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v7

    .line 15
    if-eqz v7, :cond_12

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v7

    .line 21
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    .line 22
    .line 23
    .line 24
    move-result v8

    .line 25
    const/16 v9, 0x6f

    .line 26
    .line 27
    const/4 v10, -0x1

    .line 28
    const/4 v11, 0x1

    .line 29
    const/4 v12, 0x3

    .line 30
    if-eq v8, v9, :cond_3

    .line 31
    .line 32
    const/16 v9, 0xe04

    .line 33
    .line 34
    if-eq v8, v9, :cond_2

    .line 35
    .line 36
    const v9, 0x197f1

    .line 37
    .line 38
    .line 39
    if-eq v8, v9, :cond_1

    .line 40
    .line 41
    const v9, 0x3339a3

    .line 42
    .line 43
    .line 44
    if-eq v8, v9, :cond_0

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_0
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 48
    .line 49
    new-array v9, v1, [J

    .line 50
    .line 51
    fill-array-data v9, :array_0

    .line 52
    .line 53
    .line 54
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v8

    .line 61
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v8

    .line 65
    if-eqz v8, :cond_4

    .line 66
    .line 67
    const/4 v8, 0x0

    .line 68
    goto :goto_2

    .line 69
    :cond_1
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 70
    .line 71
    new-array v9, v1, [J

    .line 72
    .line 73
    fill-array-data v9, :array_1

    .line 74
    .line 75
    .line 76
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v8

    .line 83
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v8

    .line 87
    if-eqz v8, :cond_4

    .line 88
    .line 89
    const/4 v8, 0x3

    .line 90
    goto :goto_2

    .line 91
    :cond_2
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 92
    .line 93
    new-array v9, v1, [J

    .line 94
    .line 95
    fill-array-data v9, :array_2

    .line 96
    .line 97
    .line 98
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v8

    .line 105
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v8

    .line 109
    if-eqz v8, :cond_4

    .line 110
    .line 111
    const/4 v8, 0x1

    .line 112
    goto :goto_2

    .line 113
    :cond_3
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 114
    .line 115
    new-array v9, v1, [J

    .line 116
    .line 117
    fill-array-data v9, :array_3

    .line 118
    .line 119
    .line 120
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v8

    .line 127
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v8

    .line 131
    if-eqz v8, :cond_4

    .line 132
    .line 133
    const/4 v8, 0x2

    .line 134
    goto :goto_2

    .line 135
    :cond_4
    :goto_1
    const/4 v8, -0x1

    .line 136
    :goto_2
    if-eqz v8, :cond_8

    .line 137
    .line 138
    if-eq v8, v11, :cond_7

    .line 139
    .line 140
    if-eq v8, v1, :cond_6

    .line 141
    .line 142
    if-eq v8, v12, :cond_5

    .line 143
    .line 144
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    .line 145
    .line 146
    .line 147
    goto/16 :goto_0

    .line 148
    .line 149
    :cond_5
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextBoolean()Z

    .line 150
    .line 151
    .line 152
    move-result v6

    .line 153
    goto/16 :goto_0

    .line 154
    .line 155
    :cond_6
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseInteger(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    .line 156
    .line 157
    .line 158
    move-result-object v5

    .line 159
    goto/16 :goto_0

    .line 160
    .line 161
    :cond_7
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseShapeData(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    goto/16 :goto_0

    .line 166
    .line 167
    :cond_8
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 172
    .line 173
    .line 174
    move-result v8

    .line 175
    const/16 v9, 0x61

    .line 176
    .line 177
    if-eq v8, v9, :cond_c

    .line 178
    .line 179
    const/16 v9, 0x69

    .line 180
    .line 181
    if-eq v8, v9, :cond_b

    .line 182
    .line 183
    const/16 v9, 0x6e

    .line 184
    .line 185
    if-eq v8, v9, :cond_a

    .line 186
    .line 187
    const/16 v9, 0x73

    .line 188
    .line 189
    if-eq v8, v9, :cond_9

    .line 190
    .line 191
    goto :goto_3

    .line 192
    :cond_9
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 193
    .line 194
    new-array v9, v1, [J

    .line 195
    .line 196
    fill-array-data v9, :array_4

    .line 197
    .line 198
    .line 199
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v8

    .line 206
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result v2

    .line 210
    if-eqz v2, :cond_d

    .line 211
    .line 212
    const/4 v10, 0x1

    .line 213
    goto :goto_3

    .line 214
    :cond_a
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 215
    .line 216
    new-array v9, v1, [J

    .line 217
    .line 218
    fill-array-data v9, :array_5

    .line 219
    .line 220
    .line 221
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v8

    .line 228
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result v2

    .line 232
    if-eqz v2, :cond_d

    .line 233
    .line 234
    const/4 v10, 0x2

    .line 235
    goto :goto_3

    .line 236
    :cond_b
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 237
    .line 238
    new-array v9, v1, [J

    .line 239
    .line 240
    fill-array-data v9, :array_6

    .line 241
    .line 242
    .line 243
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v8

    .line 250
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    move-result v2

    .line 254
    if-eqz v2, :cond_d

    .line 255
    .line 256
    const/4 v10, 0x3

    .line 257
    goto :goto_3

    .line 258
    :cond_c
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 259
    .line 260
    new-array v9, v1, [J

    .line 261
    .line 262
    fill-array-data v9, :array_7

    .line 263
    .line 264
    .line 265
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v8

    .line 272
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    move-result v2

    .line 276
    if-eqz v2, :cond_d

    .line 277
    .line 278
    const/4 v10, 0x0

    .line 279
    :cond_d
    :goto_3
    if-eqz v10, :cond_11

    .line 280
    .line 281
    if-eq v10, v11, :cond_10

    .line 282
    .line 283
    if-eq v10, v1, :cond_f

    .line 284
    .line 285
    if-eq v10, v12, :cond_e

    .line 286
    .line 287
    new-instance v2, Ljava/lang/StringBuilder;

    .line 288
    .line 289
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 290
    .line 291
    .line 292
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 293
    .line 294
    new-array v9, v0, [J

    .line 295
    .line 296
    fill-array-data v9, :array_8

    .line 297
    .line 298
    .line 299
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v8

    .line 306
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 313
    .line 314
    new-array v8, v0, [J

    .line 315
    .line 316
    fill-array-data v8, :array_9

    .line 317
    .line 318
    .line 319
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v7

    .line 326
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v2

    .line 333
    invoke-static {v2}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    sget-object v2, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MASK_MODE_ADD:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    .line 337
    .line 338
    goto/16 :goto_0

    .line 339
    .line 340
    :cond_e
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 341
    .line 342
    const/16 v7, 0xd

    .line 343
    .line 344
    new-array v7, v7, [J

    .line 345
    .line 346
    fill-array-data v7, :array_a

    .line 347
    .line 348
    .line 349
    invoke-direct {v2, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v2

    .line 356
    invoke-virtual {p1, v2}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    sget-object v2, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MASK_MODE_INTERSECT:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    .line 360
    .line 361
    goto/16 :goto_0

    .line 362
    .line 363
    :cond_f
    sget-object v2, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MASK_MODE_NONE:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    .line 364
    .line 365
    goto/16 :goto_0

    .line 366
    .line 367
    :cond_10
    sget-object v2, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MASK_MODE_SUBTRACT:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    .line 368
    .line 369
    goto/16 :goto_0

    .line 370
    .line 371
    :cond_11
    sget-object v2, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MASK_MODE_ADD:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    .line 372
    .line 373
    goto/16 :goto_0

    .line 374
    .line 375
    :cond_12
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 376
    .line 377
    .line 378
    new-instance p0, Lcom/airbnb/lottie/model/content/Mask;

    .line 379
    .line 380
    invoke-direct {p0, v2, v4, v5, v6}, Lcom/airbnb/lottie/model/content/Mask;-><init>(Lcom/airbnb/lottie/model/content/Mask$MaskMode;Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Z)V

    .line 381
    .line 382
    .line 383
    return-object p0

    .line 384
    nop

    .line 385
    :array_0
    .array-data 8
        -0x2bc525e3f5746047L    # -5.735550332892316E97
        -0x1fd710d6c80ec74L    # -9.709703838672205E298
    .end array-data

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
    :array_1
    .array-data 8
        -0x2f18d68748e7a9b2L    # -5.492687185046874E81
        -0x5968524db846d01eL    # -8.954802130004385E-123
    .end array-data

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
    .line 408
    .line 409
    :array_2
    .array-data 8
        -0x338247d2e93e002fL    # -2.9848309737110255E60
        0x33c681a2734e3c5eL    # 2.8011515598856048E-59
    .end array-data

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
    .line 420
    .line 421
    :array_3
    .array-data 8
        0xb7c98de8056b7b5L
        -0x5388820431a7b95cL    # -1.7597203061702257E-94
    .end array-data

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
    :array_4
    .array-data 8
        -0x71978a7bb3dece8fL
        0x7be906b762122ff1L    # 7.621516420553137E288
    .end array-data

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
    .line 444
    .line 445
    :array_5
    .array-data 8
        -0x56c8b2ba27a72b4aL
        -0x253773b2448493a3L    # -2.1269895333040645E129
    .end array-data

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
    :array_6
    .array-data 8
        0xbca40357dbd2b0eL
        -0x761ac66104f49c78L    # -5.392412997787283E-261
    .end array-data

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
    :array_7
    .array-data 8
        0x2c62ed95d2acfc89L    # 7.089206834501826E-95
        -0x5caae5c5bbd7e9cL
    .end array-data

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
    .line 480
    .line 481
    :array_8
    .array-data 8
        0x7b70c79490205b86L    # 3.99225035862586E286
        0x4cdc291e1ef537e7L    # 1.8100945989375368E62
        0x6418db86253dea56L
        0x1027f5794aab6b11L    # 7.716136170312362E-231
    .end array-data

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
    :array_9
    .array-data 8
        -0x3503e915282471cL
        0x3b4aa5799db64ff1L    # 4.408274938217099E-23
        0x5b8258f0b9816878L    # 6.511532054859376E132
        0x6a11f277fd7f76c8L    # 8.79209613034282E202
    .end array-data

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
    :array_a
    .array-data 8
        0x7c0d43864646473L
        -0x25b5833301dfdf3fL    # -8.964977621429943E126
        -0x1ecc7e0d6f9a11d8L    # -1.714121961078068E160
        -0x6354f66638f1f510L    # -1.399262009918888E-170
        -0x267efe0ab71913d7L    # -1.405375985703453E123
        0x4d60f4e4b1dd04eeL    # 5.580437321981197E64
        -0x719421a7e447b094L
        -0x4a62e24c0cd8ead2L    # -1.9455072410204266E-50
        -0x318894091e596eddL    # -1.0103179995038291E70
        0x54b0cccf18f1549L
        -0x1447e63580670178L    # -7.923324998546003E210
        -0x6561f900f39d73b9L
        -0x5417ee15638f1152L    # -3.5214964040151845E-97
    .end array-data
.end method
