.class public final Lcom/google/android/gms/ads/nonagon/signalgeneration/zzf;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static zza(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x3

    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 10
    .line 11
    new-array v0, v1, [J

    .line 12
    .line 13
    fill-array-data v0, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    packed-switch v2, :pswitch_data_0

    .line 29
    .line 30
    .line 31
    goto/16 :goto_0

    .line 32
    .line 33
    :pswitch_0
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 34
    .line 35
    new-array v1, v1, [J

    .line 36
    .line 37
    fill-array-data v1, :array_1

    .line 38
    .line 39
    .line 40
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    const/16 v1, 0x8

    .line 54
    .line 55
    goto/16 :goto_1

    .line 56
    .line 57
    :pswitch_1
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 58
    .line 59
    new-array v1, v1, [J

    .line 60
    .line 61
    fill-array-data v1, :array_2

    .line 62
    .line 63
    .line 64
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_1

    .line 76
    .line 77
    const/4 v1, 0x7

    .line 78
    goto/16 :goto_1

    .line 79
    .line 80
    :pswitch_2
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 81
    .line 82
    new-array v1, v1, [J

    .line 83
    .line 84
    fill-array-data v1, :array_3

    .line 85
    .line 86
    .line 87
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-eqz v1, :cond_1

    .line 99
    .line 100
    const/4 v1, 0x6

    .line 101
    goto/16 :goto_1

    .line 102
    .line 103
    :pswitch_3
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 104
    .line 105
    new-array v1, v1, [J

    .line 106
    .line 107
    fill-array-data v1, :array_4

    .line 108
    .line 109
    .line 110
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    if-eqz v1, :cond_1

    .line 122
    .line 123
    const/4 v1, 0x5

    .line 124
    goto/16 :goto_1

    .line 125
    .line 126
    :pswitch_4
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 127
    .line 128
    new-array v1, v1, [J

    .line 129
    .line 130
    fill-array-data v1, :array_5

    .line 131
    .line 132
    .line 133
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    if-eqz v1, :cond_1

    .line 145
    .line 146
    const/4 v1, 0x4

    .line 147
    goto :goto_1

    .line 148
    :pswitch_5
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 149
    .line 150
    new-array v3, v1, [J

    .line 151
    .line 152
    fill-array-data v3, :array_6

    .line 153
    .line 154
    .line 155
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    if-eqz v2, :cond_1

    .line 167
    .line 168
    goto :goto_1

    .line 169
    :pswitch_6
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 170
    .line 171
    new-array v1, v1, [J

    .line 172
    .line 173
    fill-array-data v1, :array_7

    .line 174
    .line 175
    .line 176
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    if-eqz v1, :cond_1

    .line 188
    .line 189
    const/4 v1, 0x2

    .line 190
    goto :goto_1

    .line 191
    :pswitch_7
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 192
    .line 193
    new-array v1, v1, [J

    .line 194
    .line 195
    fill-array-data v1, :array_8

    .line 196
    .line 197
    .line 198
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    if-eqz v1, :cond_1

    .line 210
    .line 211
    const/4 v1, 0x1

    .line 212
    goto :goto_1

    .line 213
    :pswitch_8
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 214
    .line 215
    new-array v1, v1, [J

    .line 216
    .line 217
    fill-array-data v1, :array_9

    .line 218
    .line 219
    .line 220
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    move-result v1

    .line 231
    if-eqz v1, :cond_1

    .line 232
    .line 233
    const/4 v1, 0x0

    .line 234
    goto :goto_1

    .line 235
    :cond_1
    :goto_0
    const/4 v1, -0x1

    .line 236
    :goto_1
    packed-switch v1, :pswitch_data_1

    .line 237
    .line 238
    .line 239
    return-object p0

    .line 240
    :pswitch_9
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 241
    .line 242
    new-array v0, v0, [J

    .line 243
    .line 244
    fill-array-data v0, :array_a

    .line 245
    .line 246
    .line 247
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object p0

    .line 254
    return-object p0

    .line 255
    :pswitch_a
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 256
    .line 257
    new-array v0, v0, [J

    .line 258
    .line 259
    fill-array-data v0, :array_b

    .line 260
    .line 261
    .line 262
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object p0

    .line 269
    return-object p0

    .line 270
    :pswitch_b
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 271
    .line 272
    new-array v0, v0, [J

    .line 273
    .line 274
    fill-array-data v0, :array_c

    .line 275
    .line 276
    .line 277
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object p0

    .line 284
    return-object p0

    .line 285
    :pswitch_c
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 286
    .line 287
    new-array v0, v0, [J

    .line 288
    .line 289
    fill-array-data v0, :array_d

    .line 290
    .line 291
    .line 292
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object p0

    .line 299
    return-object p0

    .line 300
    :pswitch_d
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 301
    .line 302
    new-array v0, v0, [J

    .line 303
    .line 304
    fill-array-data v0, :array_e

    .line 305
    .line 306
    .line 307
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object p0

    .line 314
    return-object p0

    .line 315
    :pswitch_e
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 316
    .line 317
    new-array v0, v0, [J

    .line 318
    .line 319
    fill-array-data v0, :array_f

    .line 320
    .line 321
    .line 322
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object p0

    .line 329
    return-object p0

    .line 330
    :pswitch_f
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 331
    .line 332
    new-array v0, v0, [J

    .line 333
    .line 334
    fill-array-data v0, :array_10

    .line 335
    .line 336
    .line 337
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object p0

    .line 344
    return-object p0

    .line 345
    :pswitch_10
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 346
    .line 347
    new-array v0, v0, [J

    .line 348
    .line 349
    fill-array-data v0, :array_11

    .line 350
    .line 351
    .line 352
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object p0

    .line 359
    return-object p0

    .line 360
    :pswitch_11
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 361
    .line 362
    new-array v0, v0, [J

    .line 363
    .line 364
    fill-array-data v0, :array_12

    .line 365
    .line 366
    .line 367
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object p0

    .line 374
    return-object p0

    .line 375
    :pswitch_data_0
    .packed-switch 0x67ecf68e
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
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

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
    :array_0
    .array-data 8
        -0x120ffa2a6a9ae421L    # -3.619886671909228E221
        -0x46a8c35f138fafe6L
        0x7e23b60ea34560c2L    # 4.1251325221690345E299
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
    :array_1
    .array-data 8
        -0x3af8031b8f5584eeL    # -3.624943022613128E24
        0x2a68bc18ac94999L
        0x7848e3b599bb0ac9L    # 2.6297962639464066E271
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
    :array_2
    .array-data 8
        0x158d51ba5ae2606L
        0x241d38a8c344741L
        0x34987c701a54688dL    # 2.4965494291823444E-55
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
    :array_3
    .array-data 8
        0x49bf3bebc4ac8f8eL    # 1.783149961741628E47
        -0xa110f499b65b752L
        0x13cd8bb8f8058e29L
    .end array-data

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
    .line 480
    .line 481
    .line 482
    .line 483
    :array_4
    .array-data 8
        -0x435d940cbdef2922L    # -1.278260870316673E-16
        -0x7dc906be78366a2aL    # -5.488762235560434E-298
        -0x62ecef6d3bacaad8L
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
    .line 496
    .line 497
    .line 498
    .line 499
    :array_5
    .array-data 8
        -0x47cea66552619f4eL    # -5.098711581498279E-38
        -0x510a4818055e5d87L    # -1.7887460745148583E-82
        0x7963ee4fc4c82ab2L    # 5.52043174406158E276
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
    .line 512
    .line 513
    .line 514
    .line 515
    :array_6
    .array-data 8
        -0x46a705bf4413e204L
        -0x53a40781c187cf46L    # -5.237986160123778E-95
        0xfb63a34e4f2756eL    # 5.592570092654201E-233
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
    :array_7
    .array-data 8
        0x146e3b5e3d687c26L
        -0xe80c5a21ae43136L    # -5.083709054174984E238
        -0x13d18791b9968636L    # -1.282228934319483E213
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
    :array_8
    .array-data 8
        0x9f314ddb532178bL
        -0x4b5123d3ff256ce0L    # -6.292849965686754E-55
        0x5340ee6f7ff089adL    # 1.1036751430262558E93
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
    :array_9
    .array-data 8
        0x69bfa976c05a8bcdL    # 2.423566997713628E201
        0x5f8dbacf28598c3bL    # 1.9463399519271225E152
        0x45ff7a0865073762L    # 1.5586502235244301E29
    .end array-data

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
    :array_a
    .array-data 8
        0x225814790c9dc52L
        0x11800c42634a3961L    # 2.167759627288363E-224
    .end array-data

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
    :array_b
    .array-data 8
        0x63d09af714c58c46L    # 6.417193114283746E172
        0x761772a7a6492947L    # 7.210405205942033E260
    .end array-data

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
    :array_c
    .array-data 8
        0x7fd30f2eb21b30a2L    # 5.353560005824133E307
        0xc3099581a2c0defL
    .end array-data

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
    :array_d
    .array-data 8
        -0x3e2ff59d62224db8L    # -1.0764642474640064E9
        -0x6e7f6a4a457b5d59L
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
    :array_e
    .array-data 8
        -0x4fb914fa89846a01L    # -3.958483218848807E-76
        -0x558eff16c7965c5cL    # -2.965523247628823E-104
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
    :array_f
    .array-data 8
        -0x70b96fd043a1ceabL    # -4.435214562586446E-235
        -0x41ae54dea51ddf3dL    # -1.645505214771872E-8
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
    :array_10
    .array-data 8
        0x6976ead61bbc4bceL    # 1.0963801091706449E200
        -0x7f6c1461eb769de1L    # -7.091890993474589E-306
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
    :array_11
    .array-data 8
        0x4cd74896dd8609deL    # 1.496609021997885E62
        -0x7364451a4d4d184aL    # -6.196900270857197E-248
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
    :array_12
    .array-data 8
        -0x236959ac932026cdL    # -1.0536119464249142E138
        -0x53f42697f1b47924L    # -1.6297643400785874E-96
    .end array-data
.end method

.method public static zzb(Lcom/google/android/gms/ads/internal/client/zzl;)Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x3

    .line 2
    if-eqz p0, :cond_1

    .line 3
    .line 4
    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzl;->zzc:Landroid/os/Bundle;

    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 10
    .line 11
    new-array v0, v0, [J

    .line 12
    .line 13
    fill-array-data v0, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :cond_1
    :goto_0
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 29
    .line 30
    new-array v0, v0, [J

    .line 31
    .line 32
    fill-array-data v0, :array_1

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0

    .line 43
    :array_0
    .array-data 8
        0xcc766d04039487eL
        -0x446e2e657a633f32L    # -9.433175152790328E-22
        0x5a177e1f1d3064b4L    # 9.939177351195164E125
    .end array-data

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
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    :array_1
    .array-data 8
        -0x6ee20a86edcec899L
        -0x6ab179ed4656209aL
        0x52ad8d91f56597a3L    # 1.8812669163178628E90
    .end array-data
.end method

.method public static varargs zzc(Lcom/google/android/gms/internal/ads/zzdwk;Lcom/google/android/gms/internal/ads/zzdwa;Ljava/lang/String;[Landroid/util/Pair;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/internal/ads/zzdwa;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgc;->zzha:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcep;->zza:Lcom/google/android/gms/internal/ads/zzgey;

    .line 21
    .line 22
    new-instance v1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zze;

    .line 23
    .line 24
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zze;-><init>(Lcom/google/android/gms/internal/ads/zzdwk;Lcom/google/android/gms/internal/ads/zzdwa;Ljava/lang/String;[Landroid/util/Pair;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public static varargs zzd(Lcom/google/android/gms/internal/ads/zzdwk;Lcom/google/android/gms/internal/ads/zzdwa;Ljava/lang/String;[Landroid/util/Pair;)V
    .locals 3
    .param p1    # Lcom/google/android/gms/internal/ads/zzdwa;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdwn;->zzc()Lj$/util/concurrent/ConcurrentHashMap;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdwa;->zza()Ljava/util/Map;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    :goto_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    new-array v1, v1, [J

    .line 16
    .line 17
    fill-array-data v1, :array_0

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {p1, v0, p2}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzf;->zzf(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    array-length p2, p3

    .line 31
    const/4 v0, 0x0

    .line 32
    :goto_1
    if-ge v0, p2, :cond_1

    .line 33
    .line 34
    aget-object v1, p3, v0

    .line 35
    .line 36
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v2, Ljava/lang/String;

    .line 39
    .line 40
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v1, Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {p1, v2, v1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzf;->zzf(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    add-int/lit8 v0, v0, 0x1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdwn;->zzf(Ljava/util/Map;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    nop

    .line 55
    :array_0
    .array-data 8
        -0xe4f28c7a6c0b0fL
        -0x6121e3383102019L    # -2.118829662795352E279
    .end array-data
.end method

.method public static zze(Lcom/google/android/gms/internal/ads/zzfhh;)I
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfhh;->zzq:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfhh;->zzd:Lcom/google/android/gms/ads/internal/client/zzl;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzl;->zzs:Lcom/google/android/gms/ads/internal/client/zzc;

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzl;->zzx:Ljava/lang/String;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzl;->zzx:Ljava/lang/String;

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    const/4 p0, 0x5

    return p0

    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    const/4 p0, 0x3

    return p0

    :cond_5
    const/4 p0, 0x4

    return p0
.end method

.method private static zzf(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    :cond_1
    :goto_0
    return-void
.end method
