.class public Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;
    }
.end annotation


# static fields
.field static ciphers:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Ljava/util/Vector;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory;->ciphers:Ljava/util/Vector;

    .line 7
    .line 8
    new-instance v1, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;

    .line 9
    .line 10
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 11
    .line 12
    const/4 v3, 0x3

    .line 13
    new-array v4, v3, [J

    .line 14
    .line 15
    fill-array-data v4, :array_0

    .line 16
    .line 17
    .line 18
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 26
    .line 27
    const/4 v5, 0x6

    .line 28
    new-array v6, v5, [J

    .line 29
    .line 30
    fill-array-data v6, :array_1

    .line 31
    .line 32
    .line 33
    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    const/16 v6, 0x10

    .line 41
    .line 42
    const/16 v7, 0x20

    .line 43
    .line 44
    invoke-direct {v1, v2, v6, v7, v4}, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    sget-object v0, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory;->ciphers:Ljava/util/Vector;

    .line 51
    .line 52
    new-instance v1, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;

    .line 53
    .line 54
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 55
    .line 56
    new-array v4, v3, [J

    .line 57
    .line 58
    fill-array-data v4, :array_2

    .line 59
    .line 60
    .line 61
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 69
    .line 70
    new-array v8, v5, [J

    .line 71
    .line 72
    fill-array-data v8, :array_3

    .line 73
    .line 74
    .line 75
    invoke-direct {v4, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    const/16 v8, 0x18

    .line 83
    .line 84
    invoke-direct {v1, v2, v6, v8, v4}, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    sget-object v0, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory;->ciphers:Ljava/util/Vector;

    .line 91
    .line 92
    new-instance v1, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;

    .line 93
    .line 94
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 95
    .line 96
    new-array v4, v3, [J

    .line 97
    .line 98
    fill-array-data v4, :array_4

    .line 99
    .line 100
    .line 101
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 109
    .line 110
    new-array v9, v5, [J

    .line 111
    .line 112
    fill-array-data v9, :array_5

    .line 113
    .line 114
    .line 115
    invoke-direct {v4, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    invoke-direct {v1, v2, v6, v6, v4}, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    sget-object v0, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory;->ciphers:Ljava/util/Vector;

    .line 129
    .line 130
    new-instance v1, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;

    .line 131
    .line 132
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 133
    .line 134
    new-array v4, v3, [J

    .line 135
    .line 136
    fill-array-data v4, :array_6

    .line 137
    .line 138
    .line 139
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 147
    .line 148
    new-array v9, v5, [J

    .line 149
    .line 150
    fill-array-data v9, :array_7

    .line 151
    .line 152
    .line 153
    invoke-direct {v4, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    const/16 v9, 0x8

    .line 161
    .line 162
    invoke-direct {v1, v2, v9, v6, v4}, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    sget-object v0, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory;->ciphers:Ljava/util/Vector;

    .line 169
    .line 170
    new-instance v1, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;

    .line 171
    .line 172
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 173
    .line 174
    new-array v4, v3, [J

    .line 175
    .line 176
    fill-array-data v4, :array_8

    .line 177
    .line 178
    .line 179
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 187
    .line 188
    new-array v10, v5, [J

    .line 189
    .line 190
    fill-array-data v10, :array_9

    .line 191
    .line 192
    .line 193
    invoke-direct {v4, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v4

    .line 200
    invoke-direct {v1, v2, v6, v7, v4}, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    sget-object v0, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory;->ciphers:Ljava/util/Vector;

    .line 207
    .line 208
    new-instance v1, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;

    .line 209
    .line 210
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 211
    .line 212
    new-array v4, v3, [J

    .line 213
    .line 214
    fill-array-data v4, :array_a

    .line 215
    .line 216
    .line 217
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 225
    .line 226
    new-array v7, v5, [J

    .line 227
    .line 228
    fill-array-data v7, :array_b

    .line 229
    .line 230
    .line 231
    invoke-direct {v4, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v4

    .line 238
    invoke-direct {v1, v2, v6, v8, v4}, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 242
    .line 243
    .line 244
    sget-object v0, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory;->ciphers:Ljava/util/Vector;

    .line 245
    .line 246
    new-instance v1, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;

    .line 247
    .line 248
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 249
    .line 250
    new-array v4, v3, [J

    .line 251
    .line 252
    fill-array-data v4, :array_c

    .line 253
    .line 254
    .line 255
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v2

    .line 262
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 263
    .line 264
    new-array v7, v5, [J

    .line 265
    .line 266
    fill-array-data v7, :array_d

    .line 267
    .line 268
    .line 269
    invoke-direct {v4, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v4

    .line 276
    invoke-direct {v1, v2, v6, v6, v4}, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 280
    .line 281
    .line 282
    sget-object v0, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory;->ciphers:Ljava/util/Vector;

    .line 283
    .line 284
    new-instance v1, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;

    .line 285
    .line 286
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 287
    .line 288
    new-array v3, v3, [J

    .line 289
    .line 290
    fill-array-data v3, :array_e

    .line 291
    .line 292
    .line 293
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 301
    .line 302
    new-array v4, v5, [J

    .line 303
    .line 304
    fill-array-data v4, :array_f

    .line 305
    .line 306
    .line 307
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v3

    .line 314
    invoke-direct {v1, v2, v9, v6, v3}, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 318
    .line 319
    .line 320
    sget-object v0, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory;->ciphers:Ljava/util/Vector;

    .line 321
    .line 322
    new-instance v1, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;

    .line 323
    .line 324
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 325
    .line 326
    const/4 v3, 0x2

    .line 327
    new-array v4, v3, [J

    .line 328
    .line 329
    fill-array-data v4, :array_10

    .line 330
    .line 331
    .line 332
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v2

    .line 339
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 340
    .line 341
    new-array v6, v5, [J

    .line 342
    .line 343
    fill-array-data v6, :array_11

    .line 344
    .line 345
    .line 346
    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v4

    .line 353
    invoke-direct {v1, v2, v9, v8, v4}, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 357
    .line 358
    .line 359
    sget-object v0, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory;->ciphers:Ljava/util/Vector;

    .line 360
    .line 361
    new-instance v1, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;

    .line 362
    .line 363
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 364
    .line 365
    new-array v3, v3, [J

    .line 366
    .line 367
    fill-array-data v3, :array_12

    .line 368
    .line 369
    .line 370
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v2

    .line 377
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 378
    .line 379
    new-array v4, v5, [J

    .line 380
    .line 381
    fill-array-data v4, :array_13

    .line 382
    .line 383
    .line 384
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 385
    .line 386
    .line 387
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v3

    .line 391
    invoke-direct {v1, v2, v9, v8, v3}, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 395
    .line 396
    .line 397
    return-void

    .line 398
    nop

    .line 399
    :array_0
    .array-data 8
        -0x787a843b10e62d05L
        -0x606be92755924c91L
        -0x1f08d134c6200ad4L    # -1.2731612171105217E159
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
    :array_1
    .array-data 8
        0x3c0b46f5ea3686e5L    # 1.8483742818318275E-19
        -0x6ce72c9e90080c19L    # -1.125238881195518E-216
        0x67e96298e26cae12L    # 3.619319317076971E192
        0x15cbc312f9c86ebeL
        -0x77d7c03ff1c6b4c2L    # -2.295028895451285E-269
        0x59c5de6592e3d783L    # 2.8912918767127404E124
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
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    :array_2
    .array-data 8
        0x1bcf6f1a3c4407e4L    # 9.929150529581493E-175
        -0x59fa39121bb49140L
        -0x13d029445bec12b3L    # -1.339811347873301E213
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
    :array_3
    .array-data 8
        -0x5414fe591ef5f1c6L    # -3.951108458320875E-97
        0x61913e36d8e474f5L    # 9.696860042952767E161
        0x1a5ee9aa5b37a323L
        0x2918efe1efdc4f71L
        0x631ac398b1ebe05cL
        -0x41ad3b3b33813561L    # -1.747964686856114E-8
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
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    :array_4
    .array-data 8
        -0xa41ce70567752e7L
        0x614c205c1eac37a2L    # 4.94290134025213E160
        -0x5888e17c167bf0d7L
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
    :array_5
    .array-data 8
        -0xd170cfd710723f8L
        -0x1ec73da49a34b03eL    # -2.1755769226869633E160
        -0x1595c4cd5759ddbfL    # -4.112121356361707E204
        -0x24dc800936537c29L    # -1.08133338577935E131
        -0x7e6a25dc838ec589L    # -5.098443406894043E-301
        -0x6fc2973a21701d60L    # -1.894294784262072E-230
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
        0x60994f7869b0400cL
        0x4a9a63f65ba6c6fL
        0x2cfa04fc2f9fd178L    # 4.9895322319255E-92
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
    :array_7
    .array-data 8
        -0x754ab44843a7117fL    # -4.432177114198742E-257
        -0x5a6425b0ce1df043L
        -0x688f052987f69303L    # -9.086074505779635E-196
        -0x354905f8531bf74L
        -0x39ee3b26ea793bebL    # -3.519500658065057E29
        0x2e74debd135840f0L    # 6.71436877627736E-85
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
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    :array_8
    .array-data 8
        -0x4fcd2d109f5d5eccL
        0x89e794f31ee6313L
        0x2ee84ec044bfa6dfL    # 1.0009990434299427E-82
    .end array-data

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
    :array_9
    .array-data 8
        -0x109868cdef3a299fL    # -4.470806304423313E228
        0x57b309b010815c10L    # 2.9301921844135637E114
        -0x51bed0212547de00L    # -6.911800205407809E-86
        0x57f25641b4397e15L    # 4.515701412533626E115
        0x6954da2e6c52bb1eL    # 2.49396586205023E199
        -0x4decd57b6558fc19L    # -1.777274090596657E-67
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
    .line 616
    .line 617
    .line 618
    .line 619
    :array_a
    .array-data 8
        0x49544c896dd5a22aL    # 1.810728809523177E45
        0x5b7c7415f522bc94L    # 5.0490909671587917E132
        -0x7ed806288f2bc482L
    .end array-data

    .line 620
    .line 621
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
    :array_b
    .array-data 8
        -0x5f8d4119779a3e28L    # -2.236989700253084E-152
        0x6f9ad09a13b7fabfL    # 4.0654825551388945E229
        0x18a1c0cc8bf96fddL    # 4.98066648066084E-190
        0x6089ae402fe9287dL    # 1.101828638566781E157
        -0x7e2d4b4577a45288L    # -6.983040971164459E-300
        -0x7906cf4ee0bef811L    # -4.547321218416034E-275
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
    .line 660
    .line 661
    .line 662
    .line 663
    :array_c
    .array-data 8
        0x7a7c005f05f81266L    # 1.0165681036078833E282
        -0x327f589cd16a1bf1L    # -2.1923198265668123E65
        -0x1bd9139a844e4901L    # -2.8348297699880685E174
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
    .line 676
    .line 677
    .line 678
    .line 679
    :array_d
    .array-data 8
        0x572a82e690a4b81fL    # 7.969662584429946E111
        -0x2463cb4a33c486d2L    # -2.0020644196247488E133
        -0x581c7cb096c125aeL
        0x4bfde1d1e04754c4L    # 1.1723314775558371E58
        -0x67c11dee15b558eL
        0x7a4f513483473c49L    # 1.4211797218668313E281
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
    :array_e
    .array-data 8
        -0x77b4937a6e72cc88L
        -0x3fd9c1ed848d321dL    # -11.12123475815219
        0x3ac22f6fb1350adfL    # 1.1751973414451132E-25
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
    .line 720
    .line 721
    .line 722
    .line 723
    :array_f
    .array-data 8
        -0x61a284e93c5def17L
        -0x7108a843283f602fL    # -1.433887158409184E-236
        -0x1c861b8b9328f0b5L    # -1.5634712060072571E171
        -0x2ac7f64bb2e3817cL    # -3.364923548457484E102
        0x71e2b550427ada9bL    # 3.898341264358402E240
        0x5ea07060ed026724L    # 6.568749922582748E147
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
    .line 748
    .line 749
    .line 750
    .line 751
    :array_10
    .array-data 8
        -0x24c65ebec4d93224L    # -2.8425300568517897E131
        -0x1e09a35266bf0be3L    # -8.048385425659717E163
    .end array-data

    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    :array_11
    .array-data 8
        0xa0c48c04a41e48L
        -0x706bd595e55b9732L
        -0x26d306df07a07e96L    # -3.7407968580864344E121
        -0x70b493a7fd838d20L    # -5.3905342521439E-235
        -0x601b271394aa04e7L    # -4.858959230338177E-155
        0x4aebba931538d5aL
    .end array-data

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
    :array_12
    .array-data 8
        0x73e615d01531cfebL    # 1.9765503200988472E250
        -0x762f60d3d9530410L
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
    :array_13
    .array-data 8
        -0x727fc3eb24398b78L
        0x6970641fe221922L
        0x3ad212a395712b12L    # 2.3358557625121938E-25
        -0x17d78335d2d9cf21L    # -5.586129098675948E193
        0x30a5837e9e9cbf0eL    # 2.378182587432141E-74
        -0x7f64731ee28196ccL    # -9.808235926803127E-306
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static checkCipherList([Ljava/lang/String;)V
    .locals 3

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    .line 5
    aget-object v2, p0, v1

    .line 6
    .line 7
    invoke-static {v2}, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory;->getEntry(Ljava/lang/String;)Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;

    .line 8
    .line 9
    .line 10
    add-int/lit8 v1, v1, 0x1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    return-void
.end method

.method public static createCipher(Ljava/lang/String;Z[B[B)Lcom/trilead/ssh2/crypto/cipher/BlockCipher;
    .locals 5

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x2

    .line 3
    :try_start_0
    invoke-static {p0}, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory;->getEntry(Ljava/lang/String;)Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    iget-object v2, v2, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;->cipherClass:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lcom/trilead/ssh2/crypto/cipher/BlockCipher;

    .line 18
    .line 19
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 20
    .line 21
    new-array v4, v1, [J

    .line 22
    .line 23
    fill-array-data v4, :array_0

    .line 24
    .line 25
    .line 26
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_0

    .line 38
    .line 39
    invoke-interface {v2, p1, p2}, Lcom/trilead/ssh2/crypto/cipher/BlockCipher;->init(Z[B)V

    .line 40
    .line 41
    .line 42
    new-instance p2, Lcom/trilead/ssh2/crypto/cipher/CBCMode;

    .line 43
    .line 44
    invoke-direct {p2, v2, p3, p1}, Lcom/trilead/ssh2/crypto/cipher/CBCMode;-><init>(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;[BZ)V

    .line 45
    .line 46
    .line 47
    return-object p2

    .line 48
    :cond_0
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 49
    .line 50
    new-array v1, v1, [J

    .line 51
    .line 52
    fill-array-data v1, :array_1

    .line 53
    .line 54
    .line 55
    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_1

    .line 67
    .line 68
    const/4 v1, 0x1

    .line 69
    invoke-interface {v2, v1, p2}, Lcom/trilead/ssh2/crypto/cipher/BlockCipher;->init(Z[B)V

    .line 70
    .line 71
    .line 72
    new-instance p2, Lcom/trilead/ssh2/crypto/cipher/CTRMode;

    .line 73
    .line 74
    invoke-direct {p2, v2, p3, p1}, Lcom/trilead/ssh2/crypto/cipher/CTRMode;-><init>(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;[BZ)V

    .line 75
    .line 76
    .line 77
    return-object p2

    .line 78
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 79
    .line 80
    new-instance p2, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 86
    .line 87
    new-array v1, v0, [J

    .line 88
    .line 89
    fill-array-data v1, :array_2

    .line 90
    .line 91
    .line 92
    invoke-direct {p3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p3

    .line 99
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 114
    .line 115
    new-instance p2, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .line 119
    .line 120
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 121
    .line 122
    new-array v0, v0, [J

    .line 123
    .line 124
    fill-array-data v0, :array_3

    .line 125
    .line 126
    .line 127
    invoke-direct {p3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 128
    .line 129
    .line 130
    invoke-static {p3, p2, p0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    throw p1

    .line 138
    nop

    .line 139
    :array_0
    .array-data 8
        -0x53d856b3c832c492L    # -5.5387319412749145E-96
        0x15dc08bf0347e1feL    # 2.235375872809409E-203
    .end array-data

    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    :array_1
    .array-data 8
        0x7c27646b288ebddbL    # 1.1398246009367243E290
        -0x52a259f1f00a4a89L    # -3.6387001038238803E-90
    .end array-data

    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    :array_2
    .array-data 8
        -0x17c8a41177507f26L    # -1.0657454536116025E194
        -0x1ba3203fb71556cbL    # -2.8565699535523383E175
        -0x7ea1812e53a66542L    # -4.446911732564018E-302
        -0x5838463c505776adL    # -4.704242180918186E-117
    .end array-data

    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    :array_3
    .array-data 8
        -0x3ed42692005d45dfL    # -912566.999288384
        -0x3da18c8709ac7d1L
        0x3e72e23898d59c27L    # 7.034717538143863E-8
        0x7433dd7cd044fff5L    # 5.689171461221599E251
    .end array-data
.end method

.method public static getBlockSize(Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory;->getEntry(Ljava/lang/String;)Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget p0, p0, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;->blocksize:I

    .line 6
    .line 7
    return p0
.end method

.method public static getDefaultCipherList()[Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory;->ciphers:Ljava/util/Vector;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    new-array v0, v0, [Ljava/lang/String;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    sget-object v2, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory;->ciphers:Ljava/util/Vector;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-ge v1, v2, :cond_0

    .line 17
    .line 18
    sget-object v2, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory;->ciphers:Ljava/util/Vector;

    .line 19
    .line 20
    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;

    .line 25
    .line 26
    iget-object v2, v2, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;->type:Ljava/lang/String;

    .line 27
    .line 28
    aput-object v2, v0, v1

    .line 29
    .line 30
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    return-object v0
.end method

.method private static getEntry(Ljava/lang/String;)Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    sget-object v1, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory;->ciphers:Ljava/util/Vector;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_1

    .line 9
    .line 10
    sget-object v1, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory;->ciphers:Ljava/util/Vector;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;

    .line 17
    .line 18
    iget-object v2, v1, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;->type:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    return-object v1

    .line 27
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 31
    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 38
    .line 39
    const/4 v3, 0x4

    .line 40
    new-array v3, v3, [J

    .line 41
    .line 42
    fill-array-data v3, :array_0

    .line 43
    .line 44
    .line 45
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 46
    .line 47
    .line 48
    invoke-static {v2, v1, p0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw v0

    .line 56
    nop

    .line 57
    :array_0
    .array-data 8
        0x405ad225bfe8daf8L    # 107.2835540555933
        -0x4492bd1fa9b69483L    # -1.936346143797077E-22
        -0x3fa702160c9abcb8L    # -99.96740422142932
        0x4692770c3585dba9L    # 9.362882568256014E31
    .end array-data
.end method

.method public static getKeySize(Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory;->getEntry(Ljava/lang/String;)Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget p0, p0, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory$CipherEntry;->keysize:I

    .line 6
    .line 7
    return p0
.end method
