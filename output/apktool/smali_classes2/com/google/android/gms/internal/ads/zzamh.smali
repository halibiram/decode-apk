.class public final Lcom/google/android/gms/internal/ads/zzamh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Ljava/util/regex/Pattern;

.field private static final zzb:Ljava/util/regex/Pattern;

.field private static final zzc:Ljava/util/Map;

.field private static final zzd:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x5

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
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lcom/google/android/gms/internal/ads/zzamh;->zza:Ljava/util/regex/Pattern;

    .line 21
    .line 22
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 23
    .line 24
    const/4 v1, 0x3

    .line 25
    new-array v2, v1, [J

    .line 26
    .line 27
    fill-array-data v2, :array_1

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lcom/google/android/gms/internal/ads/zzamh;->zzb:Ljava/util/regex/Pattern;

    .line 42
    .line 43
    new-instance v0, Ljava/util/HashMap;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 46
    .line 47
    .line 48
    const/16 v2, 0xff

    .line 49
    .line 50
    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 59
    .line 60
    const/4 v5, 0x2

    .line 61
    new-array v6, v5, [J

    .line 62
    .line 63
    fill-array-data v6, :array_2

    .line 64
    .line 65
    .line 66
    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    const/4 v3, 0x0

    .line 77
    invoke-static {v3, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 86
    .line 87
    new-array v7, v5, [J

    .line 88
    .line 89
    fill-array-data v7, :array_3

    .line 90
    .line 91
    .line 92
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    invoke-static {v3, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 111
    .line 112
    new-array v7, v5, [J

    .line 113
    .line 114
    fill-array-data v7, :array_4

    .line 115
    .line 116
    .line 117
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    invoke-static {v2, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 136
    .line 137
    new-array v7, v5, [J

    .line 138
    .line 139
    fill-array-data v7, :array_5

    .line 140
    .line 141
    .line 142
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v6

    .line 149
    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    invoke-static {v2, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 161
    .line 162
    new-array v7, v5, [J

    .line 163
    .line 164
    fill-array-data v7, :array_6

    .line 165
    .line 166
    .line 167
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v6

    .line 174
    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    invoke-static {v2, v3, v2}, Landroid/graphics/Color;->rgb(III)I

    .line 178
    .line 179
    .line 180
    move-result v4

    .line 181
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 182
    .line 183
    .line 184
    move-result-object v4

    .line 185
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 186
    .line 187
    new-array v7, v5, [J

    .line 188
    .line 189
    fill-array-data v7, :array_7

    .line 190
    .line 191
    .line 192
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v6

    .line 199
    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    invoke-static {v3, v3, v2}, Landroid/graphics/Color;->rgb(III)I

    .line 203
    .line 204
    .line 205
    move-result v4

    .line 206
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 207
    .line 208
    .line 209
    move-result-object v4

    .line 210
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 211
    .line 212
    new-array v7, v5, [J

    .line 213
    .line 214
    fill-array-data v7, :array_8

    .line 215
    .line 216
    .line 217
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v6

    .line 224
    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    .line 228
    .line 229
    .line 230
    move-result v4

    .line 231
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 232
    .line 233
    .line 234
    move-result-object v4

    .line 235
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 236
    .line 237
    new-array v7, v5, [J

    .line 238
    .line 239
    fill-array-data v7, :array_9

    .line 240
    .line 241
    .line 242
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v6

    .line 249
    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    sput-object v0, Lcom/google/android/gms/internal/ads/zzamh;->zzc:Ljava/util/Map;

    .line 257
    .line 258
    new-instance v0, Ljava/util/HashMap;

    .line 259
    .line 260
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 261
    .line 262
    .line 263
    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    .line 264
    .line 265
    .line 266
    move-result v4

    .line 267
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 268
    .line 269
    .line 270
    move-result-object v4

    .line 271
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 272
    .line 273
    new-array v7, v5, [J

    .line 274
    .line 275
    fill-array-data v7, :array_a

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
    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    invoke-static {v3, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    .line 289
    .line 290
    .line 291
    move-result v4

    .line 292
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 293
    .line 294
    .line 295
    move-result-object v4

    .line 296
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 297
    .line 298
    new-array v7, v5, [J

    .line 299
    .line 300
    fill-array-data v7, :array_b

    .line 301
    .line 302
    .line 303
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v6

    .line 310
    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    invoke-static {v3, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    .line 314
    .line 315
    .line 316
    move-result v4

    .line 317
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 318
    .line 319
    .line 320
    move-result-object v4

    .line 321
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 322
    .line 323
    new-array v7, v5, [J

    .line 324
    .line 325
    fill-array-data v7, :array_c

    .line 326
    .line 327
    .line 328
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v6

    .line 335
    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    invoke-static {v2, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    .line 339
    .line 340
    .line 341
    move-result v4

    .line 342
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 343
    .line 344
    .line 345
    move-result-object v4

    .line 346
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 347
    .line 348
    new-array v7, v5, [J

    .line 349
    .line 350
    fill-array-data v7, :array_d

    .line 351
    .line 352
    .line 353
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v6

    .line 360
    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    invoke-static {v2, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    .line 364
    .line 365
    .line 366
    move-result v4

    .line 367
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 368
    .line 369
    .line 370
    move-result-object v4

    .line 371
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 372
    .line 373
    new-array v7, v1, [J

    .line 374
    .line 375
    fill-array-data v7, :array_e

    .line 376
    .line 377
    .line 378
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v6

    .line 385
    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    invoke-static {v2, v3, v2}, Landroid/graphics/Color;->rgb(III)I

    .line 389
    .line 390
    .line 391
    move-result v4

    .line 392
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 393
    .line 394
    .line 395
    move-result-object v4

    .line 396
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 397
    .line 398
    new-array v1, v1, [J

    .line 399
    .line 400
    fill-array-data v1, :array_f

    .line 401
    .line 402
    .line 403
    invoke-direct {v6, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 404
    .line 405
    .line 406
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v1

    .line 410
    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    invoke-static {v3, v3, v2}, Landroid/graphics/Color;->rgb(III)I

    .line 414
    .line 415
    .line 416
    move-result v1

    .line 417
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 418
    .line 419
    .line 420
    move-result-object v1

    .line 421
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 422
    .line 423
    new-array v4, v5, [J

    .line 424
    .line 425
    fill-array-data v4, :array_10

    .line 426
    .line 427
    .line 428
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v2

    .line 435
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    .line 437
    .line 438
    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    .line 439
    .line 440
    .line 441
    move-result v1

    .line 442
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 443
    .line 444
    .line 445
    move-result-object v1

    .line 446
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 447
    .line 448
    new-array v3, v5, [J

    .line 449
    .line 450
    fill-array-data v3, :array_11

    .line 451
    .line 452
    .line 453
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 454
    .line 455
    .line 456
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v2

    .line 460
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 464
    .line 465
    .line 466
    move-result-object v0

    .line 467
    sput-object v0, Lcom/google/android/gms/internal/ads/zzamh;->zzd:Ljava/util/Map;

    .line 468
    .line 469
    return-void

    .line 470
    nop

    .line 471
    :array_0
    .array-data 8
        -0x6246c77fc60845baL
        -0x7e00ebcc9307eb82L
        0x3dc076b92ec9e506L    # 2.9947410739255205E-11
        0x5dc00d0d1b32ca3bL    # 3.914619328342675E143
        0x6e4689ee8d230a8L
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
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    :array_1
    .array-data 8
        0x466aa539e1f2e140L    # 1.6888537822207315E31
        -0xee1ab7679f75b72L    # -7.7149340694924755E236
        0x27c472c89959a374L
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
    .line 508
    .line 509
    .line 510
    .line 511
    :array_2
    .array-data 8
        0x57eb0060cfa00fa7L    # 3.3247261646933745E115
        0x2f2a2a6600b209ecL    # 1.7240195884429734E-81
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
    :array_3
    .array-data 8
        0x5fed87d8c3c7688fL    # 1.2373165653587131E154
        -0xa2bbdbe7ab32df4L    # -3.893590374989873E259
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
    :array_4
    .array-data 8
        -0x436a06bc53f53156L    # -7.623654778085005E-17
        -0x425921e9cee36e51L    # -1.0398946924687482E-11
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
    :array_5
    .array-data 8
        0x34e4cdbf6b27a9ddL    # 6.787524501992459E-54
        -0x3333d896acaf2d24L    # -9.048330955900161E61
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
    :array_6
    .array-data 8
        0x2ab1005904a05d3bL    # 4.744223188646615E-103
        0x5895d2db877b041L
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
    :array_7
    .array-data 8
        0x7dde5be7fe17af2dL    # 1.985469915850768E298
        0x837a1a31e610576L    # 4.47314780876987E-269
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
    :array_8
    .array-data 8
        -0x53ef42b8f28e33baL    # -1.959207282613779E-96
        -0x2e21888f5d691cf5L    # -2.367457723079663E86
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
    :array_9
    .array-data 8
        0x495d7e9260e2443cL    # 2.630990275164364E45
        0x4d31f2d1bdc68087L    # 7.383589942867733E63
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
    :array_a
    .array-data 8
        -0x2838de9fa6775529L    # -7.120181526835286E114
        -0x200b5c8ce25e0d8eL    # -1.729479453004116E154
    .end array-data

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
    :array_b
    .array-data 8
        -0x3e8bccacb6b1f2bdL    # -2.1181748581555616E7
        0x5246cf79b6bacb12L    # 2.268833458582765E88
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
    :array_c
    .array-data 8
        0x55a5c1c6026ff490L    # 3.898397142206172E104
        -0x3551109cb5f4bf14L    # -5.787099153672602E51
    .end array-data

    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    :array_d
    .array-data 8
        -0x7576788b057c9c02L    # -6.64155414256119E-258
        0x3a6c3764526d3321L    # 2.8491257296880565E-27
    .end array-data

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
    :array_e
    .array-data 8
        0x7c85c062619a11ffL    # 6.783206694631674E291
        -0x34fbad368598d8f9L    # -2.433242161349457E53
        -0x4749c1548f49442bL    # -1.6735130121947396E-35
    .end array-data

    .line 656
    .line 657
    .line 658
    .line 659
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
    :array_f
    .array-data 8
        -0x133cf92590dacf80L    # -8.198832030689907E215
        0x666bd5e44f3ef85eL    # 2.3655199286532072E185
        0x136eed19c3525deL
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
    .line 684
    .line 685
    .line 686
    .line 687
    :array_10
    .array-data 8
        -0x7692fea30110ec3dL
        0x64aae5bcc15631c4L    # 8.515260885256679E176
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
    :array_11
    .array-data 8
        0x3d0ebb72ef279a00L    # 1.3647848409929468E-14
        -0x2087a17ae521d8feL    # -7.97699710264132E151
    .end array-data
.end method

.method public static zza(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/text/SpannedString;
    .locals 17
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const/4 v4, -0x1

    .line 8
    const/4 v6, 0x1

    .line 9
    const/4 v7, 0x2

    .line 10
    new-instance v8, Landroid/text/SpannableStringBuilder;

    .line 11
    .line 12
    invoke-direct {v8}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    new-instance v9, Ljava/util/ArrayDeque;

    .line 16
    .line 17
    invoke-direct {v9}, Ljava/util/ArrayDeque;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v10, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    const/4 v11, 0x0

    .line 26
    const/4 v12, 0x0

    .line 27
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 28
    .line 29
    .line 30
    move-result v13

    .line 31
    if-lt v12, v13, :cond_1

    .line 32
    .line 33
    :goto_1
    invoke-virtual {v9}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_0

    .line 38
    .line 39
    invoke-virtual {v9}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Lcom/google/android/gms/internal/ads/zzame;

    .line 44
    .line 45
    invoke-static {v0, v1, v10, v8, v2}, Lcom/google/android/gms/internal/ads/zzamh;->zzg(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzame;Ljava/util/List;Landroid/text/SpannableStringBuilder;Ljava/util/List;)V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzame;->zzb()Lcom/google/android/gms/internal/ads/zzame;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-static {v0, v1, v3, v8, v2}, Lcom/google/android/gms/internal/ads/zzamh;->zzg(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzame;Ljava/util/List;Landroid/text/SpannableStringBuilder;Ljava/util/List;)V

    .line 58
    .line 59
    .line 60
    invoke-static {v8}, Landroid/text/SpannedString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannedString;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    return-object v0

    .line 65
    :cond_1
    add-int/lit8 v13, v12, 0x1

    .line 66
    .line 67
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    .line 68
    .line 69
    .line 70
    move-result v14

    .line 71
    const/16 v15, 0x3e

    .line 72
    .line 73
    const/16 v3, 0x3c

    .line 74
    .line 75
    const/16 v5, 0x26

    .line 76
    .line 77
    if-eq v14, v5, :cond_17

    .line 78
    .line 79
    if-eq v14, v3, :cond_2

    .line 80
    .line 81
    invoke-virtual {v8, v14}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 82
    .line 83
    .line 84
    :goto_2
    const/4 v3, 0x1

    .line 85
    const/4 v4, 0x3

    .line 86
    const/4 v11, 0x5

    .line 87
    goto/16 :goto_11

    .line 88
    .line 89
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    if-lt v13, v3, :cond_3

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_3
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    invoke-virtual {v1, v15, v13}, Ljava/lang/String;->indexOf(II)I

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    if-ne v5, v4, :cond_4

    .line 105
    .line 106
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    :goto_3
    move v13, v5

    .line 111
    goto :goto_4

    .line 112
    :cond_4
    add-int/2addr v5, v6

    .line 113
    goto :goto_3

    .line 114
    :goto_4
    add-int/lit8 v5, v13, -0x2

    .line 115
    .line 116
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    .line 117
    .line 118
    .line 119
    move-result v14

    .line 120
    const/16 v15, 0x2f

    .line 121
    .line 122
    if-ne v14, v15, :cond_5

    .line 123
    .line 124
    const/4 v14, 0x1

    .line 125
    goto :goto_5

    .line 126
    :cond_5
    const/4 v14, 0x0

    .line 127
    :goto_5
    if-ne v3, v15, :cond_6

    .line 128
    .line 129
    const/16 v16, 0x2

    .line 130
    .line 131
    goto :goto_6

    .line 132
    :cond_6
    const/16 v16, 0x1

    .line 133
    .line 134
    :goto_6
    add-int v12, v12, v16

    .line 135
    .line 136
    if-eqz v14, :cond_7

    .line 137
    .line 138
    goto :goto_7

    .line 139
    :cond_7
    add-int/lit8 v5, v13, -0x1

    .line 140
    .line 141
    :goto_7
    invoke-virtual {v1, v12, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v12

    .line 149
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    .line 150
    .line 151
    .line 152
    move-result v12

    .line 153
    if-eqz v12, :cond_8

    .line 154
    .line 155
    goto/16 :goto_b

    .line 156
    .line 157
    :cond_8
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v12

    .line 161
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    .line 162
    .line 163
    .line 164
    move-result v16

    .line 165
    xor-int/lit8 v16, v16, 0x1

    .line 166
    .line 167
    invoke-static/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/zzek;->zzd(Z)V

    .line 168
    .line 169
    .line 170
    sget v16, Lcom/google/android/gms/internal/ads/zzfy;->zza:I

    .line 171
    .line 172
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 173
    .line 174
    new-array v4, v7, [J

    .line 175
    .line 176
    fill-array-data v4, :array_0

    .line 177
    .line 178
    .line 179
    invoke-direct {v6, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v4

    .line 186
    invoke-virtual {v12, v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v4

    .line 190
    aget-object v4, v4, v11

    .line 191
    .line 192
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 193
    .line 194
    .line 195
    move-result v6

    .line 196
    const/16 v12, 0x62

    .line 197
    .line 198
    if-eq v6, v12, :cond_10

    .line 199
    .line 200
    const/16 v12, 0x63

    .line 201
    .line 202
    if-eq v6, v12, :cond_f

    .line 203
    .line 204
    const/16 v12, 0x69

    .line 205
    .line 206
    if-eq v6, v12, :cond_e

    .line 207
    .line 208
    const/16 v12, 0xe42

    .line 209
    .line 210
    if-eq v6, v12, :cond_d

    .line 211
    .line 212
    const v12, 0x3291ee

    .line 213
    .line 214
    .line 215
    if-eq v6, v12, :cond_c

    .line 216
    .line 217
    const v12, 0x3595da

    .line 218
    .line 219
    .line 220
    if-eq v6, v12, :cond_b

    .line 221
    .line 222
    const/16 v12, 0x75

    .line 223
    .line 224
    if-eq v6, v12, :cond_a

    .line 225
    .line 226
    const/16 v12, 0x76

    .line 227
    .line 228
    if-eq v6, v12, :cond_9

    .line 229
    .line 230
    goto/16 :goto_8

    .line 231
    .line 232
    :cond_9
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 233
    .line 234
    new-array v12, v7, [J

    .line 235
    .line 236
    fill-array-data v12, :array_1

    .line 237
    .line 238
    .line 239
    invoke-direct {v6, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v6

    .line 246
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    move-result v6

    .line 250
    if-eqz v6, :cond_11

    .line 251
    .line 252
    const/4 v6, 0x7

    .line 253
    goto/16 :goto_9

    .line 254
    .line 255
    :cond_a
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 256
    .line 257
    new-array v12, v7, [J

    .line 258
    .line 259
    fill-array-data v12, :array_2

    .line 260
    .line 261
    .line 262
    invoke-direct {v6, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v6

    .line 269
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    move-result v6

    .line 273
    if-eqz v6, :cond_11

    .line 274
    .line 275
    const/4 v6, 0x6

    .line 276
    goto/16 :goto_9

    .line 277
    .line 278
    :cond_b
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 279
    .line 280
    new-array v12, v7, [J

    .line 281
    .line 282
    fill-array-data v12, :array_3

    .line 283
    .line 284
    .line 285
    invoke-direct {v6, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v6

    .line 292
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    move-result v6

    .line 296
    if-eqz v6, :cond_11

    .line 297
    .line 298
    const/4 v6, 0x4

    .line 299
    goto/16 :goto_9

    .line 300
    .line 301
    :cond_c
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 302
    .line 303
    new-array v12, v7, [J

    .line 304
    .line 305
    fill-array-data v12, :array_4

    .line 306
    .line 307
    .line 308
    invoke-direct {v6, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v6

    .line 315
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 316
    .line 317
    .line 318
    move-result v6

    .line 319
    if-eqz v6, :cond_11

    .line 320
    .line 321
    const/4 v6, 0x3

    .line 322
    goto :goto_9

    .line 323
    :cond_d
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 324
    .line 325
    new-array v12, v7, [J

    .line 326
    .line 327
    fill-array-data v12, :array_5

    .line 328
    .line 329
    .line 330
    invoke-direct {v6, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v6

    .line 337
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 338
    .line 339
    .line 340
    move-result v6

    .line 341
    if-eqz v6, :cond_11

    .line 342
    .line 343
    const/4 v6, 0x5

    .line 344
    goto :goto_9

    .line 345
    :cond_e
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 346
    .line 347
    new-array v12, v7, [J

    .line 348
    .line 349
    fill-array-data v12, :array_6

    .line 350
    .line 351
    .line 352
    invoke-direct {v6, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v6

    .line 359
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 360
    .line 361
    .line 362
    move-result v6

    .line 363
    if-eqz v6, :cond_11

    .line 364
    .line 365
    const/4 v6, 0x2

    .line 366
    goto :goto_9

    .line 367
    :cond_f
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 368
    .line 369
    new-array v12, v7, [J

    .line 370
    .line 371
    fill-array-data v12, :array_7

    .line 372
    .line 373
    .line 374
    invoke-direct {v6, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v6

    .line 381
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 382
    .line 383
    .line 384
    move-result v6

    .line 385
    if-eqz v6, :cond_11

    .line 386
    .line 387
    const/4 v6, 0x1

    .line 388
    goto :goto_9

    .line 389
    :cond_10
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 390
    .line 391
    new-array v12, v7, [J

    .line 392
    .line 393
    fill-array-data v12, :array_8

    .line 394
    .line 395
    .line 396
    invoke-direct {v6, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v6

    .line 403
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 404
    .line 405
    .line 406
    move-result v6

    .line 407
    if-eqz v6, :cond_11

    .line 408
    .line 409
    const/4 v6, 0x0

    .line 410
    goto :goto_9

    .line 411
    :cond_11
    :goto_8
    const/4 v6, -0x1

    .line 412
    :goto_9
    packed-switch v6, :pswitch_data_0

    .line 413
    .line 414
    .line 415
    goto :goto_b

    .line 416
    :pswitch_0
    if-ne v3, v15, :cond_15

    .line 417
    .line 418
    :cond_12
    invoke-virtual {v9}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 419
    .line 420
    .line 421
    move-result v3

    .line 422
    if-eqz v3, :cond_13

    .line 423
    .line 424
    goto :goto_b

    .line 425
    :cond_13
    invoke-virtual {v9}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 426
    .line 427
    .line 428
    move-result-object v3

    .line 429
    check-cast v3, Lcom/google/android/gms/internal/ads/zzame;

    .line 430
    .line 431
    invoke-static {v0, v3, v10, v8, v2}, Lcom/google/android/gms/internal/ads/zzamh;->zzg(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzame;Ljava/util/List;Landroid/text/SpannableStringBuilder;Ljava/util/List;)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v9}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 435
    .line 436
    .line 437
    move-result v5

    .line 438
    if-nez v5, :cond_14

    .line 439
    .line 440
    new-instance v5, Lcom/google/android/gms/internal/ads/zzamd;

    .line 441
    .line 442
    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    .line 443
    .line 444
    .line 445
    move-result v6

    .line 446
    const/4 v12, 0x0

    .line 447
    invoke-direct {v5, v3, v6, v12}, Lcom/google/android/gms/internal/ads/zzamd;-><init>(Lcom/google/android/gms/internal/ads/zzame;ILcom/google/android/gms/internal/ads/zzamc;)V

    .line 448
    .line 449
    .line 450
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    .line 452
    .line 453
    goto :goto_a

    .line 454
    :cond_14
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 455
    .line 456
    .line 457
    :goto_a
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzame;->zza:Ljava/lang/String;

    .line 458
    .line 459
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 460
    .line 461
    .line 462
    move-result v3

    .line 463
    if-eqz v3, :cond_12

    .line 464
    .line 465
    goto :goto_b

    .line 466
    :cond_15
    if-nez v14, :cond_16

    .line 467
    .line 468
    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    .line 469
    .line 470
    .line 471
    move-result v3

    .line 472
    invoke-static {v5, v3}, Lcom/google/android/gms/internal/ads/zzame;->zza(Ljava/lang/String;I)Lcom/google/android/gms/internal/ads/zzame;

    .line 473
    .line 474
    .line 475
    move-result-object v3

    .line 476
    invoke-virtual {v9, v3}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 477
    .line 478
    .line 479
    :cond_16
    :goto_b
    move v12, v13

    .line 480
    const/4 v4, -0x1

    .line 481
    const/4 v6, 0x1

    .line 482
    goto/16 :goto_0

    .line 483
    .line 484
    :cond_17
    const/16 v4, 0x3b

    .line 485
    .line 486
    invoke-virtual {v1, v4, v13}, Ljava/lang/String;->indexOf(II)I

    .line 487
    .line 488
    .line 489
    move-result v4

    .line 490
    const/16 v6, 0x20

    .line 491
    .line 492
    invoke-virtual {v1, v6, v13}, Ljava/lang/String;->indexOf(II)I

    .line 493
    .line 494
    .line 495
    move-result v12

    .line 496
    const/4 v11, -0x1

    .line 497
    if-ne v4, v11, :cond_18

    .line 498
    .line 499
    move v4, v12

    .line 500
    goto :goto_c

    .line 501
    :cond_18
    if-eq v12, v11, :cond_19

    .line 502
    .line 503
    invoke-static {v4, v12}, Ljava/lang/Math;->min(II)I

    .line 504
    .line 505
    .line 506
    move-result v4

    .line 507
    :cond_19
    :goto_c
    if-eq v4, v11, :cond_24

    .line 508
    .line 509
    invoke-virtual {v1, v13, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object v13

    .line 513
    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    .line 514
    .line 515
    .line 516
    move-result v14

    .line 517
    const/16 v11, 0xced

    .line 518
    .line 519
    if-eq v14, v11, :cond_1d

    .line 520
    .line 521
    const/16 v11, 0xd88

    .line 522
    .line 523
    if-eq v14, v11, :cond_1c

    .line 524
    .line 525
    const v11, 0x179c4

    .line 526
    .line 527
    .line 528
    if-eq v14, v11, :cond_1b

    .line 529
    .line 530
    const v11, 0x337f11

    .line 531
    .line 532
    .line 533
    if-eq v14, v11, :cond_1a

    .line 534
    .line 535
    goto :goto_d

    .line 536
    :cond_1a
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 537
    .line 538
    new-array v14, v7, [J

    .line 539
    .line 540
    fill-array-data v14, :array_9

    .line 541
    .line 542
    .line 543
    invoke-direct {v11, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 544
    .line 545
    .line 546
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 547
    .line 548
    .line 549
    move-result-object v11

    .line 550
    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 551
    .line 552
    .line 553
    move-result v11

    .line 554
    if-eqz v11, :cond_1e

    .line 555
    .line 556
    const/4 v11, 0x2

    .line 557
    goto :goto_e

    .line 558
    :cond_1b
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 559
    .line 560
    new-array v14, v7, [J

    .line 561
    .line 562
    fill-array-data v14, :array_a

    .line 563
    .line 564
    .line 565
    invoke-direct {v11, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 566
    .line 567
    .line 568
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 569
    .line 570
    .line 571
    move-result-object v11

    .line 572
    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 573
    .line 574
    .line 575
    move-result v11

    .line 576
    if-eqz v11, :cond_1e

    .line 577
    .line 578
    const/4 v11, 0x3

    .line 579
    goto :goto_e

    .line 580
    :cond_1c
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 581
    .line 582
    new-array v14, v7, [J

    .line 583
    .line 584
    fill-array-data v14, :array_b

    .line 585
    .line 586
    .line 587
    invoke-direct {v11, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 588
    .line 589
    .line 590
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 591
    .line 592
    .line 593
    move-result-object v11

    .line 594
    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 595
    .line 596
    .line 597
    move-result v11

    .line 598
    if-eqz v11, :cond_1e

    .line 599
    .line 600
    const/4 v11, 0x0

    .line 601
    goto :goto_e

    .line 602
    :cond_1d
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 603
    .line 604
    new-array v14, v7, [J

    .line 605
    .line 606
    fill-array-data v14, :array_c

    .line 607
    .line 608
    .line 609
    invoke-direct {v11, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 610
    .line 611
    .line 612
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 613
    .line 614
    .line 615
    move-result-object v11

    .line 616
    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 617
    .line 618
    .line 619
    move-result v11

    .line 620
    if-eqz v11, :cond_1e

    .line 621
    .line 622
    const/4 v11, 0x1

    .line 623
    goto :goto_e

    .line 624
    :cond_1e
    :goto_d
    const/4 v11, -0x1

    .line 625
    :goto_e
    if-eqz v11, :cond_22

    .line 626
    .line 627
    const/4 v14, 0x1

    .line 628
    if-eq v11, v14, :cond_21

    .line 629
    .line 630
    if-eq v11, v7, :cond_20

    .line 631
    .line 632
    const/4 v3, 0x3

    .line 633
    if-eq v11, v3, :cond_1f

    .line 634
    .line 635
    new-instance v3, Ljava/lang/StringBuilder;

    .line 636
    .line 637
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 638
    .line 639
    .line 640
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 641
    .line 642
    const/4 v11, 0x5

    .line 643
    new-array v6, v11, [J

    .line 644
    .line 645
    fill-array-data v6, :array_d

    .line 646
    .line 647
    .line 648
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 649
    .line 650
    .line 651
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 652
    .line 653
    .line 654
    move-result-object v5

    .line 655
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    .line 657
    .line 658
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    .line 660
    .line 661
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 662
    .line 663
    new-array v6, v7, [J

    .line 664
    .line 665
    fill-array-data v6, :array_e

    .line 666
    .line 667
    .line 668
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 669
    .line 670
    .line 671
    invoke-static {v5, v3}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 672
    .line 673
    .line 674
    move-result-object v3

    .line 675
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 676
    .line 677
    const/4 v13, 0x3

    .line 678
    new-array v6, v13, [J

    .line 679
    .line 680
    fill-array-data v6, :array_f

    .line 681
    .line 682
    .line 683
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 684
    .line 685
    .line 686
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 687
    .line 688
    .line 689
    move-result-object v5

    .line 690
    invoke-static {v5, v3}, Lcom/google/android/gms/internal/ads/zzff;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    .line 692
    .line 693
    goto :goto_f

    .line 694
    :cond_1f
    const/4 v11, 0x5

    .line 695
    const/4 v13, 0x3

    .line 696
    invoke-virtual {v8, v5}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 697
    .line 698
    .line 699
    goto :goto_f

    .line 700
    :cond_20
    const/4 v11, 0x5

    .line 701
    const/4 v13, 0x3

    .line 702
    invoke-virtual {v8, v6}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 703
    .line 704
    .line 705
    goto :goto_f

    .line 706
    :cond_21
    const/4 v11, 0x5

    .line 707
    const/4 v13, 0x3

    .line 708
    invoke-virtual {v8, v15}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 709
    .line 710
    .line 711
    goto :goto_f

    .line 712
    :cond_22
    const/4 v11, 0x5

    .line 713
    const/4 v13, 0x3

    .line 714
    invoke-virtual {v8, v3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 715
    .line 716
    .line 717
    :goto_f
    if-ne v4, v12, :cond_23

    .line 718
    .line 719
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 720
    .line 721
    new-array v5, v7, [J

    .line 722
    .line 723
    fill-array-data v5, :array_10

    .line 724
    .line 725
    .line 726
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 727
    .line 728
    .line 729
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 730
    .line 731
    .line 732
    move-result-object v3

    .line 733
    invoke-virtual {v8, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 734
    .line 735
    .line 736
    :cond_23
    const/4 v3, 0x1

    .line 737
    add-int/lit8 v12, v4, 0x1

    .line 738
    .line 739
    :goto_10
    const/4 v4, -0x1

    .line 740
    const/4 v6, 0x1

    .line 741
    const/4 v11, 0x0

    .line 742
    goto/16 :goto_0

    .line 743
    .line 744
    :cond_24
    const/4 v3, 0x1

    .line 745
    const/4 v4, 0x3

    .line 746
    const/4 v11, 0x5

    .line 747
    invoke-virtual {v8, v14}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 748
    .line 749
    .line 750
    :goto_11
    move v12, v13

    .line 751
    goto :goto_10

    .line 752
    nop

    .line 753
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    :array_0
    .array-data 8
        0x3a45fb3a45ec4092L    # 5.548874852054109E-28
        -0x284255c6924cc63dL    # -4.5658519609529587E114
    .end array-data

    :array_1
    .array-data 8
        0x684f6e8e4888b203L    # 2.8681197646709794E194
        -0x39979a065be1d06aL    # -1.5464285471106548E31
    .end array-data

    :array_2
    .array-data 8
        -0x24e526836825a24fL    # -7.444495407854831E130
        0x31154fe50ff8e102L    # 3.0155537213098864E-72
    .end array-data

    :array_3
    .array-data 8
        0x7692395cfcbe9346L    # 1.4346360001957317E263
        -0x10bffffc6e48863fL    # -7.58068055104925E227
    .end array-data

    :array_4
    .array-data 8
        -0x51e918fa1a061e9aL    # -1.1512851237820278E-86
        0x66e3146afbb06358L    # 4.150879873698492E187
    .end array-data

    :array_5
    .array-data 8
        0xa7b619955667d93L
        0x180a0451fa52252dL    # 7.128003973824974E-193
    .end array-data

    :array_6
    .array-data 8
        0x53445173ff899b6cL    # 1.3244433913084441E93
        0xe4881714415d279L    # 7.350204411833289E-240
    .end array-data

    :array_7
    .array-data 8
        -0x9c5a91034ea6761L
        0x6a3a66601a31195bL    # 5.1732019457073836E203
    .end array-data

    :array_8
    .array-data 8
        0x347028dfef14cf65L    # 4.119013555371872E-56
        0x7f4efee67a9bc7f3L    # 1.7004627955140141E305
    .end array-data

    :array_9
    .array-data 8
        -0x6ac6371495e15db2L
        0x3f50dea2752f093bL    # 0.0010296427251295776
    .end array-data

    :array_a
    .array-data 8
        -0x608871fec822d703L
        0x15755689eb3a8cccL
    .end array-data

    :array_b
    .array-data 8
        -0x74b5ef4e81a22f34L    # -2.777505151923038E-254
        0x472a9cf4349b6d33L    # 6.909156108642418E34
    .end array-data

    :array_c
    .array-data 8
        -0x244bc9eb1ef5c3beL    # -5.738407653239376E133
        -0x1e4d7d5b4352279cL    # -4.1638180913344875E162
    .end array-data

    :array_d
    .array-data 8
        0x4e1f1827751b3ac2L    # 2.0957551838345569E68
        0x51e075501f40fe7fL    # 2.5578350166961384E86
        0x3f29f12c5d455413L    # 1.979223876655006E-4
        -0x1a74c6aa60c366d8L    # -1.4120782153660803E181
        0x474351f3c1658383L    # 2.0063165557375585E35
    .end array-data

    :array_e
    .array-data 8
        0x74360c698fe04393L    # 6.31444464900052E251
        -0x777ed65418f2f0deL
    .end array-data

    :array_f
    .array-data 8
        -0x5efaa33df55cd518L
        -0x7fe573dec446666eL
        0x6ae0d2f3be4673b7L    # 6.751761878671974E206
    .end array-data

    :array_10
    .array-data 8
        0x4dc5408f8856c0dcL    # 4.476233691820383E66
        -0x188faace957b9db6L    # -1.819271556602909E190
    .end array-data
.end method

.method public static zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzea;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzamg;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzamg;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzamh;->zzh(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzamg;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamg;->zza()Lcom/google/android/gms/internal/ads/zzea;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzfp;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzama;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfwq;->zzc:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfp;->zzy(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget-object v3, Lcom/google/android/gms/internal/ads/zzamh;->zza:Ljava/util/regex/Pattern;

    .line 12
    .line 13
    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    if-nez v5, :cond_2

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfp;->zzy(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_1

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-static {v1, v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzamh;->zze(Ljava/lang/String;Ljava/util/regex/Matcher;Lcom/google/android/gms/internal/ads/zzfp;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzama;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0

    .line 48
    :cond_1
    :goto_0
    return-object v2

    .line 49
    :cond_2
    invoke-static {v2, v4, p0, p1}, Lcom/google/android/gms/internal/ads/zzamh;->zze(Ljava/lang/String;Ljava/util/regex/Matcher;Lcom/google/android/gms/internal/ads/zzfp;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzama;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0
.end method

.method private static zzd(Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzame;)I
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzamh;->zzf(Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzame;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 p1, 0x0

    .line 6
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    const/4 v0, -0x1

    .line 11
    if-ge p1, p2, :cond_1

    .line 12
    .line 13
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    check-cast p2, Lcom/google/android/gms/internal/ads/zzamf;

    .line 18
    .line 19
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzamf;->zzb:Lcom/google/android/gms/internal/ads/zzalz;

    .line 20
    .line 21
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzalz;->zze()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eq v1, v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzalz;->zze()I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    return p0

    .line 32
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    return v0
.end method

.method private static zze(Ljava/lang/String;Ljava/util/regex/Matcher;Lcom/google/android/gms/internal/ads/zzfp;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzama;
    .locals 9
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x2

    .line 3
    new-instance v2, Lcom/google/android/gms/internal/ads/zzamg;

    .line 4
    .line 5
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzamg;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v3, 0x1

    .line 9
    const/4 v4, 0x0

    .line 10
    :try_start_0
    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    if-eqz v3, :cond_3

    .line 15
    .line 16
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzamj;->zzb(Ljava/lang/String;)J

    .line 17
    .line 18
    .line 19
    move-result-wide v5

    .line 20
    iput-wide v5, v2, Lcom/google/android/gms/internal/ads/zzamg;->zza:J

    .line 21
    .line 22
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    if-eqz v3, :cond_2

    .line 27
    .line 28
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzamj;->zzb(Ljava/lang/String;)J

    .line 29
    .line 30
    .line 31
    move-result-wide v5

    .line 32
    iput-wide v5, v2, Lcom/google/android/gms/internal/ads/zzamg;->zzb:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ads/zzamh;->zzh(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzamg;)V

    .line 42
    .line 43
    .line 44
    new-instance p1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfwq;->zzc:Ljava/nio/charset/Charset;

    .line 50
    .line 51
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzfp;->zzy(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-nez v3, :cond_1

    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-lez v3, :cond_0

    .line 66
    .line 67
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 68
    .line 69
    new-array v4, v1, [J

    .line 70
    .line 71
    fill-array-data v4, :array_0

    .line 72
    .line 73
    .line 74
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfwq;->zzc:Ljava/nio/charset/Charset;

    .line 92
    .line 93
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzfp;->zzy(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    goto :goto_0

    .line 98
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-static {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzamh;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/text/SpannedString;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    iput-object p0, v2, Lcom/google/android/gms/internal/ads/zzamg;->zzc:Ljava/lang/CharSequence;

    .line 107
    .line 108
    new-instance p0, Lcom/google/android/gms/internal/ads/zzama;

    .line 109
    .line 110
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamg;->zza()Lcom/google/android/gms/internal/ads/zzea;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzea;->zzp()Lcom/google/android/gms/internal/ads/zzec;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    iget-wide v5, v2, Lcom/google/android/gms/internal/ads/zzamg;->zza:J

    .line 119
    .line 120
    iget-wide v7, v2, Lcom/google/android/gms/internal/ads/zzamg;->zzb:J

    .line 121
    .line 122
    move-object v3, p0

    .line 123
    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzama;-><init>(Lcom/google/android/gms/internal/ads/zzec;JJ)V

    .line 124
    .line 125
    .line 126
    return-object p0

    .line 127
    :cond_2
    :try_start_1
    throw v4

    .line 128
    :cond_3
    throw v4
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 129
    :catch_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 138
    .line 139
    const/4 p2, 0x5

    .line 140
    new-array p2, p2, [J

    .line 141
    .line 142
    fill-array-data p2, :array_1

    .line 143
    .line 144
    .line 145
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 153
    .line 154
    new-array p3, v0, [J

    .line 155
    .line 156
    fill-array-data p3, :array_2

    .line 157
    .line 158
    .line 159
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p2

    .line 166
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    invoke-static {p2, p0}, Lcom/google/android/gms/internal/ads/zzff;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    return-object v4

    .line 174
    nop

    .line 175
    :array_0
    .array-data 8
        -0x72474145d9fffa49L
        0xc9cea8a5f01a7f7L
    .end array-data

    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    :array_1
    .array-data 8
        0x63ccb5f5c746ca3L
        0x2e8d28e0706f9439L    # 1.8762638082036194E-84
        -0x53f47ea5dc03c410L    # -1.6096353362256827E-96
        0x3b3c31a688df179L
        0x5339e7bfcad6be21L    # 8.443194802289798E92
    .end array-data

    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    :array_2
    .array-data 8
        -0x2a084ea27d1c7fecL    # -1.3584869991802143E106
        0x6b821a5ecb681488L    # 7.43939744568157E209
        0x17c4ee131efa73f8L    # 3.583947205013283E-194
    .end array-data
.end method

.method private static zzf(Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzame;)Ljava/util/List;
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_1

    .line 12
    .line 13
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lcom/google/android/gms/internal/ads/zzalz;

    .line 18
    .line 19
    iget-object v3, p2, Lcom/google/android/gms/internal/ads/zzame;->zza:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v4, p2, Lcom/google/android/gms/internal/ads/zzame;->zzd:Ljava/util/Set;

    .line 22
    .line 23
    iget-object v5, p2, Lcom/google/android/gms/internal/ads/zzame;->zzc:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v2, p1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzalz;->zzf(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-lez v3, :cond_0

    .line 30
    .line 31
    new-instance v4, Lcom/google/android/gms/internal/ads/zzamf;

    .line 32
    .line 33
    invoke-direct {v4, v3, v2}, Lcom/google/android/gms/internal/ads/zzamf;-><init>(ILcom/google/android/gms/internal/ads/zzalz;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 43
    .line 44
    .line 45
    return-object v0
.end method

.method private static zzg(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzame;Ljava/util/List;Landroid/text/SpannableStringBuilder;Ljava/util/List;)V
    .locals 18
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    .line 1
    iget v7, v1, Lcom/google/android/gms/internal/ads/zzame;->zzb:I

    .line 2
    invoke-virtual/range {p3 .. p3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    .line 3
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzame;->zza:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v10

    const/4 v12, -0x1

    if-eqz v10, :cond_7

    const/16 v13, 0x69

    if-eq v10, v13, :cond_6

    const v13, 0x3291ee

    if-eq v10, v13, :cond_5

    const v13, 0x3595da

    if-eq v10, v13, :cond_4

    const/16 v13, 0x62

    if-eq v10, v13, :cond_3

    const/16 v13, 0x63

    if-eq v10, v13, :cond_2

    const/16 v13, 0x75

    if-eq v10, v13, :cond_1

    const/16 v13, 0x76

    if-eq v10, v13, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v13, v6, [J

    fill-array-data v13, :array_0

    invoke-direct {v10, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/4 v9, 0x6

    goto/16 :goto_1

    :cond_1
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v13, v6, [J

    fill-array-data v13, :array_1

    invoke-direct {v10, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/4 v9, 0x3

    goto/16 :goto_1

    :cond_2
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v13, v6, [J

    fill-array-data v13, :array_2

    invoke-direct {v10, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/4 v9, 0x4

    goto/16 :goto_1

    :cond_3
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v13, v6, [J

    fill-array-data v13, :array_3

    invoke-direct {v10, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/4 v9, 0x0

    goto :goto_1

    .line 4
    :cond_4
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v13, v6, [J

    fill-array-data v13, :array_4

    invoke-direct {v10, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    .line 5
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/4 v9, 0x2

    goto :goto_1

    :cond_5
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v13, v6, [J

    fill-array-data v13, :array_5

    invoke-direct {v10, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/4 v9, 0x5

    goto :goto_1

    :cond_6
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v13, v6, [J

    fill-array-data v13, :array_6

    invoke-direct {v10, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/4 v9, 0x1

    goto :goto_1

    :cond_7
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v13, v5, [J

    const-wide v14, -0x6213726bb0899e6bL    # -1.549475805996357E-164

    aput-wide v14, v13, v4

    invoke-direct {v10, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/4 v9, 0x7

    goto :goto_1

    :cond_8
    :goto_0
    const/4 v9, -0x1

    :goto_1
    const/16 v10, 0x21

    packed-switch v9, :pswitch_data_0

    goto/16 :goto_a

    .line 6
    :pswitch_0
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzame;->zzd:Ljava/util/Set;

    .line 7
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_9
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    sget-object v14, Lcom/google/android/gms/internal/ads/zzamh;->zzc:Ljava/util/Map;

    .line 8
    invoke-interface {v14, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 9
    invoke-interface {v14, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 10
    new-instance v14, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v14, v13}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2, v14, v7, v8, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    :cond_a
    sget-object v14, Lcom/google/android/gms/internal/ads/zzamh;->zzd:Ljava/util/Map;

    .line 11
    invoke-interface {v14, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 12
    invoke-interface {v14, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 13
    new-instance v14, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v14, v13}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {v2, v14, v7, v8, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 14
    :pswitch_1
    new-instance v9, Landroid/text/style/UnderlineSpan;

    invoke-direct {v9}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v2, v9, v7, v8, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_5

    .line 15
    :pswitch_2
    invoke-static {v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzamh;->zzd(Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzame;)I

    move-result v9

    new-instance v13, Ljava/util/ArrayList;

    .line 16
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v14, p2

    .line 17
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzamd;->zzd()Ljava/util/Comparator;

    move-result-object v14

    .line 18
    invoke-static {v13, v14}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 19
    iget v14, v1, Lcom/google/android/gms/internal/ads/zzame;->zzb:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 20
    :goto_3
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v15, v4, :cond_e

    .line 21
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzamd;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzamd;->zzc(Lcom/google/android/gms/internal/ads/zzamd;)Lcom/google/android/gms/internal/ads/zzame;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzame;->zza:Ljava/lang/String;

    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v6, [J

    fill-array-data v5, :array_7

    invoke-direct {v11, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 22
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzamd;

    .line 23
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzamd;->zzc(Lcom/google/android/gms/internal/ads/zzamd;)Lcom/google/android/gms/internal/ads/zzame;

    move-result-object v5

    .line 24
    invoke-static {v3, v0, v5}, Lcom/google/android/gms/internal/ads/zzamh;->zzd(Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzame;)I

    move-result v5

    if-eq v5, v12, :cond_b

    goto :goto_4

    :cond_b
    if-eq v9, v12, :cond_c

    move v5, v9

    goto :goto_4

    :cond_c
    const/4 v5, 0x1

    .line 25
    :goto_4
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzamd;->zzc(Lcom/google/android/gms/internal/ads/zzamd;)Lcom/google/android/gms/internal/ads/zzame;

    move-result-object v11

    iget v11, v11, Lcom/google/android/gms/internal/ads/zzame;->zzb:I

    sub-int v11, v11, v16

    .line 26
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzamd;->zza(Lcom/google/android/gms/internal/ads/zzamd;)I

    move-result v4

    sub-int v4, v4, v16

    .line 27
    invoke-virtual {v2, v11, v4}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v17

    .line 28
    invoke-virtual {v2, v11, v4}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 29
    new-instance v4, Lcom/google/android/gms/internal/ads/zzeh;

    .line 30
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v4, v12, v5}, Lcom/google/android/gms/internal/ads/zzeh;-><init>(Ljava/lang/String;I)V

    .line 31
    invoke-virtual {v2, v4, v14, v11, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 32
    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int v16, v4, v16

    move v14, v11

    :cond_d
    const/4 v4, 0x1

    add-int/2addr v15, v4

    const/4 v5, 0x1

    const/4 v12, -0x1

    goto :goto_3

    :pswitch_3
    const/4 v4, 0x1

    .line 33
    new-instance v5, Landroid/text/style/StyleSpan;

    .line 34
    invoke-direct {v5, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v2, v5, v7, v8, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_5

    :pswitch_4
    const/4 v4, 0x1

    new-instance v5, Landroid/text/style/StyleSpan;

    .line 35
    invoke-direct {v5, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v2, v5, v7, v8, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 36
    :cond_e
    :goto_5
    :pswitch_5
    invoke-static {v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzamh;->zzf(Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzame;)Ljava/util/List;

    move-result-object v0

    const/4 v4, 0x0

    .line 37
    :goto_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_19

    .line 38
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzamf;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzamf;->zzb:Lcom/google/android/gms/internal/ads/zzalz;

    if-nez v1, :cond_f

    const/4 v5, -0x1

    const/4 v9, 0x3

    const/4 v12, 0x1

    goto/16 :goto_9

    :cond_f
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzalz;->zzg()I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_10

    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzalz;->zzg()I

    move-result v9

    .line 39
    invoke-direct {v3, v9}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 40
    invoke-static {v2, v3, v7, v8, v10}, Lcom/google/android/gms/internal/ads/zzei;->zza(Landroid/text/Spannable;Ljava/lang/Object;III)V

    :cond_10
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzalz;->zzz()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 41
    new-instance v3, Landroid/text/style/UnderlineSpan;

    invoke-direct {v3}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v2, v3, v7, v8, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_11
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzalz;->zzy()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 42
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    .line 43
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzalz;->zzc()I

    move-result v9

    invoke-direct {v3, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 44
    invoke-static {v2, v3, v7, v8, v10}, Lcom/google/android/gms/internal/ads/zzei;->zza(Landroid/text/Spannable;Ljava/lang/Object;III)V

    :cond_12
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzalz;->zzx()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 45
    new-instance v3, Landroid/text/style/BackgroundColorSpan;

    .line 46
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzalz;->zzb()I

    move-result v9

    invoke-direct {v3, v9}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 47
    invoke-static {v2, v3, v7, v8, v10}, Lcom/google/android/gms/internal/ads/zzei;->zza(Landroid/text/Spannable;Ljava/lang/Object;III)V

    :cond_13
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzalz;->zzr()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_14

    .line 48
    new-instance v3, Landroid/text/style/TypefaceSpan;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzalz;->zzr()Ljava/lang/String;

    move-result-object v9

    .line 49
    invoke-direct {v3, v9}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-static {v2, v3, v7, v8, v10}, Lcom/google/android/gms/internal/ads/zzei;->zza(Landroid/text/Spannable;Ljava/lang/Object;III)V

    :cond_14
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzalz;->zzd()I

    move-result v3

    const/4 v9, 0x1

    if-eq v3, v9, :cond_17

    if-eq v3, v6, :cond_16

    const/4 v9, 0x3

    if-eq v3, v9, :cond_15

    :goto_7
    const/4 v12, 0x1

    goto :goto_8

    .line 51
    :cond_15
    new-instance v3, Landroid/text/style/RelativeSizeSpan;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzalz;->zza()F

    move-result v11

    const/high16 v12, 0x42c80000    # 100.0f

    div-float/2addr v11, v12

    .line 52
    invoke-direct {v3, v11}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 53
    invoke-static {v2, v3, v7, v8, v10}, Lcom/google/android/gms/internal/ads/zzei;->zza(Landroid/text/Spannable;Ljava/lang/Object;III)V

    goto :goto_7

    :cond_16
    const/4 v9, 0x3

    .line 54
    new-instance v3, Landroid/text/style/RelativeSizeSpan;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzalz;->zza()F

    move-result v11

    .line 55
    invoke-direct {v3, v11}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 56
    invoke-static {v2, v3, v7, v8, v10}, Lcom/google/android/gms/internal/ads/zzei;->zza(Landroid/text/Spannable;Ljava/lang/Object;III)V

    goto :goto_7

    :cond_17
    const/4 v9, 0x3

    .line 57
    new-instance v3, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzalz;->zza()F

    move-result v11

    float-to-int v11, v11

    const/4 v12, 0x1

    .line 58
    invoke-direct {v3, v11, v12}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 59
    invoke-static {v2, v3, v7, v8, v10}, Lcom/google/android/gms/internal/ads/zzei;->zza(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 60
    :goto_8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzalz;->zzw()Z

    move-result v1

    if-eqz v1, :cond_18

    new-instance v1, Lcom/google/android/gms/internal/ads/zzeg;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzeg;-><init>()V

    .line 61
    invoke-virtual {v2, v1, v7, v8, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_18
    :goto_9
    add-int/2addr v4, v12

    goto/16 :goto_6

    :cond_19
    :goto_a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :array_0
    .array-data 8
        0x630437133a870fcdL    # 9.53639600468767E168
        -0x41d3aaa7e5b3681aL    # -3.2984390378687E-9
    .end array-data

    :array_1
    .array-data 8
        -0x126bbbcc941d0258L    # -7.154077960575058E219
        -0x1e1acc6fb1cbae67L    # -3.815334557901113E163
    .end array-data

    :array_2
    .array-data 8
        0x4e324576caa5f474L    # 4.925944561614836E68
        0x61c4a66b7d7f1e58L    # 9.290291929068395E162
    .end array-data

    :array_3
    .array-data 8
        0x429156faaf26c274L    # 4.766317660592613E12
        0x7123048b3cc742bdL    # 9.674883176882675E236
    .end array-data

    :array_4
    .array-data 8
        0x7bcd612591776facL    # 2.2368144779442356E288
        0x57e4fee8fa8edfc8L    # 2.58523242199476E115
    .end array-data

    :array_5
    .array-data 8
        0x2941be17ca81a1acL    # 5.90211465499907E-110
        0x2bc964ea7a6bb741L    # 9.288081175423943E-98
    .end array-data

    :array_6
    .array-data 8
        -0x1de8bfb4e529900cL    # -3.347356848577741E164
        0x7f1cab98290c8699L    # 1.9661096368805978E304
    .end array-data

    :array_7
    .array-data 8
        0x7b02a39a4b4f8e28L    # 3.464577105841574E284
        -0x44338423353b7facL    # -1.2063374527499489E-20
    .end array-data
.end method

.method private static zzh(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzamg;)V
    .locals 13

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x5

    .line 3
    const/4 v2, 0x4

    .line 4
    const/4 v3, 0x3

    .line 5
    const/4 v4, 0x2

    .line 6
    sget-object v5, Lcom/google/android/gms/internal/ads/zzamh;->zzb:Ljava/util/regex/Pattern;

    .line 7
    .line 8
    invoke-virtual {v5, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    .line 13
    .line 14
    .line 15
    move-result v5

    .line 16
    if-eqz v5, :cond_1b

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    :try_start_0
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 33
    .line 34
    new-array v8, v4, [J

    .line 35
    .line 36
    fill-array-data v8, :array_0

    .line 37
    .line 38
    .line 39
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    const/16 v8, 0x2c

    .line 51
    .line 52
    const/high16 v9, -0x80000000

    .line 53
    .line 54
    const/4 v10, -0x1

    .line 55
    const/4 v11, 0x0

    .line 56
    if-nez v7, :cond_14

    .line 57
    .line 58
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 59
    .line 60
    new-array v12, v4, [J

    .line 61
    .line 62
    fill-array-data v12, :array_1

    .line 63
    .line 64
    .line 65
    invoke-direct {v7, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v7

    .line 72
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    if-nez v7, :cond_d

    .line 77
    .line 78
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 79
    .line 80
    new-array v12, v4, [J

    .line 81
    .line 82
    fill-array-data v12, :array_2

    .line 83
    .line 84
    .line 85
    invoke-direct {v7, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v7

    .line 92
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v7

    .line 96
    if-nez v7, :cond_7

    .line 97
    .line 98
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 99
    .line 100
    new-array v8, v4, [J

    .line 101
    .line 102
    fill-array-data v8, :array_3

    .line 103
    .line 104
    .line 105
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v7

    .line 116
    if-eqz v7, :cond_0

    .line 117
    .line 118
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzamj;->zza(Ljava/lang/String;)F

    .line 119
    .line 120
    .line 121
    move-result v5

    .line 122
    iput v5, p1, Lcom/google/android/gms/internal/ads/zzamg;->zzj:F

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_0
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 126
    .line 127
    new-array v8, v4, [J

    .line 128
    .line 129
    fill-array-data v8, :array_4

    .line 130
    .line 131
    .line 132
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v7

    .line 139
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v7

    .line 143
    if-nez v7, :cond_1

    .line 144
    .line 145
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 146
    .line 147
    new-array v8, v3, [J

    .line 148
    .line 149
    fill-array-data v8, :array_5

    .line 150
    .line 151
    .line 152
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v7

    .line 159
    new-instance v8, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .line 163
    .line 164
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 165
    .line 166
    new-array v10, v2, [J

    .line 167
    .line 168
    fill-array-data v10, :array_6

    .line 169
    .line 170
    .line 171
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v9

    .line 178
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 185
    .line 186
    new-array v9, v4, [J

    .line 187
    .line 188
    fill-array-data v9, :array_7

    .line 189
    .line 190
    .line 191
    invoke-direct {v5, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v5

    .line 198
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v5

    .line 208
    invoke-static {v7, v5}, Lcom/google/android/gms/internal/ads/zzff;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    goto/16 :goto_0

    .line 212
    .line 213
    :cond_1
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    .line 214
    .line 215
    .line 216
    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    const/16 v7, 0xd86

    .line 218
    .line 219
    if-eq v5, v7, :cond_3

    .line 220
    .line 221
    const/16 v7, 0xe3a

    .line 222
    .line 223
    if-eq v5, v7, :cond_2

    .line 224
    .line 225
    goto :goto_1

    .line 226
    :cond_2
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 227
    .line 228
    new-array v7, v4, [J

    .line 229
    .line 230
    fill-array-data v7, :array_8

    .line 231
    .line 232
    .line 233
    invoke-direct {v5, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v5

    .line 240
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    move-result v5

    .line 244
    if-eqz v5, :cond_4

    .line 245
    .line 246
    const/4 v10, 0x0

    .line 247
    goto :goto_1

    .line 248
    :cond_3
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 249
    .line 250
    new-array v7, v4, [J

    .line 251
    .line 252
    fill-array-data v7, :array_9

    .line 253
    .line 254
    .line 255
    invoke-direct {v5, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v5

    .line 262
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    move-result v5

    .line 266
    if-eqz v5, :cond_4

    .line 267
    .line 268
    const/4 v10, 0x1

    .line 269
    :cond_4
    :goto_1
    if-eqz v10, :cond_6

    .line 270
    .line 271
    if-eq v10, v0, :cond_5

    .line 272
    .line 273
    :try_start_1
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 274
    .line 275
    new-array v7, v3, [J

    .line 276
    .line 277
    fill-array-data v7, :array_a

    .line 278
    .line 279
    .line 280
    invoke-direct {v5, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v5

    .line 287
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 288
    .line 289
    new-array v8, v1, [J

    .line 290
    .line 291
    fill-array-data v8, :array_b

    .line 292
    .line 293
    .line 294
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v7

    .line 301
    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v6

    .line 305
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzff;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    goto :goto_2

    .line 309
    :cond_5
    const/4 v9, 0x2

    .line 310
    goto :goto_2

    .line 311
    :cond_6
    const/4 v9, 0x1

    .line 312
    :goto_2
    iput v9, p1, Lcom/google/android/gms/internal/ads/zzamg;->zzk:I

    .line 313
    .line 314
    goto/16 :goto_0

    .line 315
    .line 316
    :cond_7
    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(I)I

    .line 317
    .line 318
    .line 319
    move-result v5

    .line 320
    if-eq v5, v10, :cond_c

    .line 321
    .line 322
    add-int/lit8 v7, v5, 0x1

    .line 323
    .line 324
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v7

    .line 328
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    .line 329
    .line 330
    .line 331
    move-result v8
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 332
    sparse-switch v8, :sswitch_data_0

    .line 333
    .line 334
    .line 335
    goto/16 :goto_3

    .line 336
    .line 337
    :sswitch_0
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 338
    .line 339
    new-array v12, v4, [J

    .line 340
    .line 341
    fill-array-data v12, :array_c

    .line 342
    .line 343
    .line 344
    invoke-direct {v8, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v8

    .line 351
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 352
    .line 353
    .line 354
    move-result v8

    .line 355
    if-eqz v8, :cond_8

    .line 356
    .line 357
    const/4 v10, 0x1

    .line 358
    goto :goto_3

    .line 359
    :sswitch_1
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 360
    .line 361
    new-array v12, v4, [J

    .line 362
    .line 363
    fill-array-data v12, :array_d

    .line 364
    .line 365
    .line 366
    invoke-direct {v8, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v8

    .line 373
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 374
    .line 375
    .line 376
    move-result v8

    .line 377
    if-eqz v8, :cond_8

    .line 378
    .line 379
    const/4 v10, 0x5

    .line 380
    goto :goto_3

    .line 381
    :sswitch_2
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 382
    .line 383
    new-array v12, v4, [J

    .line 384
    .line 385
    fill-array-data v12, :array_e

    .line 386
    .line 387
    .line 388
    invoke-direct {v8, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 389
    .line 390
    .line 391
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v8

    .line 395
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 396
    .line 397
    .line 398
    move-result v8

    .line 399
    if-eqz v8, :cond_8

    .line 400
    .line 401
    const/4 v10, 0x3

    .line 402
    goto :goto_3

    .line 403
    :sswitch_3
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 404
    .line 405
    new-array v12, v3, [J

    .line 406
    .line 407
    fill-array-data v12, :array_f

    .line 408
    .line 409
    .line 410
    invoke-direct {v8, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v8

    .line 417
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 418
    .line 419
    .line 420
    move-result v8

    .line 421
    if-eqz v8, :cond_8

    .line 422
    .line 423
    const/4 v10, 0x4

    .line 424
    goto :goto_3

    .line 425
    :sswitch_4
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 426
    .line 427
    new-array v12, v4, [J

    .line 428
    .line 429
    fill-array-data v12, :array_10

    .line 430
    .line 431
    .line 432
    invoke-direct {v8, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 433
    .line 434
    .line 435
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v8

    .line 439
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 440
    .line 441
    .line 442
    move-result v8

    .line 443
    if-eqz v8, :cond_8

    .line 444
    .line 445
    const/4 v10, 0x2

    .line 446
    goto :goto_3

    .line 447
    :sswitch_5
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 448
    .line 449
    new-array v12, v3, [J

    .line 450
    .line 451
    fill-array-data v12, :array_11

    .line 452
    .line 453
    .line 454
    invoke-direct {v8, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 455
    .line 456
    .line 457
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v8

    .line 461
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 462
    .line 463
    .line 464
    move-result v8

    .line 465
    if-eqz v8, :cond_8

    .line 466
    .line 467
    const/4 v10, 0x0

    .line 468
    :cond_8
    :goto_3
    if-eqz v10, :cond_b

    .line 469
    .line 470
    if-eq v10, v0, :cond_b

    .line 471
    .line 472
    if-eq v10, v4, :cond_a

    .line 473
    .line 474
    if-eq v10, v3, :cond_a

    .line 475
    .line 476
    if-eq v10, v2, :cond_9

    .line 477
    .line 478
    if-eq v10, v1, :cond_9

    .line 479
    .line 480
    :try_start_2
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 481
    .line 482
    new-array v10, v3, [J

    .line 483
    .line 484
    fill-array-data v10, :array_12

    .line 485
    .line 486
    .line 487
    invoke-direct {v8, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 488
    .line 489
    .line 490
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v8

    .line 494
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 495
    .line 496
    new-array v12, v2, [J

    .line 497
    .line 498
    fill-array-data v12, :array_13

    .line 499
    .line 500
    .line 501
    invoke-direct {v10, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 502
    .line 503
    .line 504
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 505
    .line 506
    .line 507
    move-result-object v10

    .line 508
    invoke-virtual {v10, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object v7

    .line 512
    invoke-static {v8, v7}, Lcom/google/android/gms/internal/ads/zzff;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    .line 514
    .line 515
    goto :goto_4

    .line 516
    :cond_9
    const/4 v9, 0x2

    .line 517
    goto :goto_4

    .line 518
    :cond_a
    const/4 v9, 0x1

    .line 519
    goto :goto_4

    .line 520
    :cond_b
    const/4 v9, 0x0

    .line 521
    :goto_4
    iput v9, p1, Lcom/google/android/gms/internal/ads/zzamg;->zzi:I

    .line 522
    .line 523
    invoke-virtual {v6, v11, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 524
    .line 525
    .line 526
    move-result-object v6

    .line 527
    :cond_c
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzamj;->zza(Ljava/lang/String;)F

    .line 528
    .line 529
    .line 530
    move-result v5

    .line 531
    iput v5, p1, Lcom/google/android/gms/internal/ads/zzamg;->zzh:F

    .line 532
    .line 533
    goto/16 :goto_0

    .line 534
    .line 535
    :cond_d
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    .line 536
    .line 537
    .line 538
    move-result v5
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 539
    sparse-switch v5, :sswitch_data_1

    .line 540
    .line 541
    .line 542
    goto/16 :goto_5

    .line 543
    .line 544
    :sswitch_6
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 545
    .line 546
    new-array v7, v4, [J

    .line 547
    .line 548
    fill-array-data v7, :array_14

    .line 549
    .line 550
    .line 551
    invoke-direct {v5, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 552
    .line 553
    .line 554
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 555
    .line 556
    .line 557
    move-result-object v5

    .line 558
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 559
    .line 560
    .line 561
    move-result v5

    .line 562
    if-eqz v5, :cond_e

    .line 563
    .line 564
    const/4 v10, 0x0

    .line 565
    goto :goto_5

    .line 566
    :sswitch_7
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 567
    .line 568
    new-array v7, v4, [J

    .line 569
    .line 570
    fill-array-data v7, :array_15

    .line 571
    .line 572
    .line 573
    invoke-direct {v5, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 574
    .line 575
    .line 576
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 577
    .line 578
    .line 579
    move-result-object v5

    .line 580
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 581
    .line 582
    .line 583
    move-result v5

    .line 584
    if-eqz v5, :cond_e

    .line 585
    .line 586
    const/4 v10, 0x5

    .line 587
    goto :goto_5

    .line 588
    :sswitch_8
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 589
    .line 590
    new-array v7, v4, [J

    .line 591
    .line 592
    fill-array-data v7, :array_16

    .line 593
    .line 594
    .line 595
    invoke-direct {v5, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 596
    .line 597
    .line 598
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 599
    .line 600
    .line 601
    move-result-object v5

    .line 602
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 603
    .line 604
    .line 605
    move-result v5

    .line 606
    if-eqz v5, :cond_e

    .line 607
    .line 608
    const/4 v10, 0x1

    .line 609
    goto :goto_5

    .line 610
    :sswitch_9
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 611
    .line 612
    new-array v7, v4, [J

    .line 613
    .line 614
    fill-array-data v7, :array_17

    .line 615
    .line 616
    .line 617
    invoke-direct {v5, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 618
    .line 619
    .line 620
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 621
    .line 622
    .line 623
    move-result-object v5

    .line 624
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 625
    .line 626
    .line 627
    move-result v5

    .line 628
    if-eqz v5, :cond_e

    .line 629
    .line 630
    const/4 v10, 0x4

    .line 631
    goto :goto_5

    .line 632
    :sswitch_a
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 633
    .line 634
    new-array v7, v4, [J

    .line 635
    .line 636
    fill-array-data v7, :array_18

    .line 637
    .line 638
    .line 639
    invoke-direct {v5, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 640
    .line 641
    .line 642
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 643
    .line 644
    .line 645
    move-result-object v5

    .line 646
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 647
    .line 648
    .line 649
    move-result v5

    .line 650
    if-eqz v5, :cond_e

    .line 651
    .line 652
    const/4 v10, 0x3

    .line 653
    goto :goto_5

    .line 654
    :sswitch_b
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 655
    .line 656
    new-array v7, v4, [J

    .line 657
    .line 658
    fill-array-data v7, :array_19

    .line 659
    .line 660
    .line 661
    invoke-direct {v5, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 662
    .line 663
    .line 664
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 665
    .line 666
    .line 667
    move-result-object v5

    .line 668
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 669
    .line 670
    .line 671
    move-result v5

    .line 672
    if-eqz v5, :cond_e

    .line 673
    .line 674
    const/4 v10, 0x2

    .line 675
    :cond_e
    :goto_5
    if-eqz v10, :cond_13

    .line 676
    .line 677
    if-eq v10, v0, :cond_12

    .line 678
    .line 679
    if-eq v10, v4, :cond_f

    .line 680
    .line 681
    if-eq v10, v3, :cond_f

    .line 682
    .line 683
    if-eq v10, v2, :cond_11

    .line 684
    .line 685
    if-eq v10, v1, :cond_10

    .line 686
    .line 687
    :try_start_3
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 688
    .line 689
    new-array v7, v3, [J

    .line 690
    .line 691
    fill-array-data v7, :array_1a

    .line 692
    .line 693
    .line 694
    invoke-direct {v5, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 695
    .line 696
    .line 697
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 698
    .line 699
    .line 700
    move-result-object v5

    .line 701
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 702
    .line 703
    new-array v8, v1, [J

    .line 704
    .line 705
    fill-array-data v8, :array_1b

    .line 706
    .line 707
    .line 708
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 709
    .line 710
    .line 711
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 712
    .line 713
    .line 714
    move-result-object v7

    .line 715
    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 716
    .line 717
    .line 718
    move-result-object v6

    .line 719
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzff;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    .line 721
    .line 722
    :cond_f
    const/4 v5, 0x2

    .line 723
    goto :goto_6

    .line 724
    :cond_10
    const/4 v5, 0x5

    .line 725
    goto :goto_6

    .line 726
    :cond_11
    const/4 v5, 0x3

    .line 727
    goto :goto_6

    .line 728
    :cond_12
    const/4 v5, 0x4

    .line 729
    goto :goto_6

    .line 730
    :cond_13
    const/4 v5, 0x1

    .line 731
    :goto_6
    iput v5, p1, Lcom/google/android/gms/internal/ads/zzamg;->zzd:I

    .line 732
    .line 733
    goto/16 :goto_0

    .line 734
    .line 735
    :cond_14
    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(I)I

    .line 736
    .line 737
    .line 738
    move-result v5

    .line 739
    if-eq v5, v10, :cond_19

    .line 740
    .line 741
    add-int/lit8 v7, v5, 0x1

    .line 742
    .line 743
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 744
    .line 745
    .line 746
    move-result-object v7

    .line 747
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    .line 748
    .line 749
    .line 750
    move-result v8
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0

    .line 751
    sparse-switch v8, :sswitch_data_2

    .line 752
    .line 753
    .line 754
    goto :goto_7

    .line 755
    :sswitch_c
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 756
    .line 757
    new-array v12, v4, [J

    .line 758
    .line 759
    fill-array-data v12, :array_1c

    .line 760
    .line 761
    .line 762
    invoke-direct {v8, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 763
    .line 764
    .line 765
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 766
    .line 767
    .line 768
    move-result-object v8

    .line 769
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 770
    .line 771
    .line 772
    move-result v8

    .line 773
    if-eqz v8, :cond_15

    .line 774
    .line 775
    const/4 v10, 0x0

    .line 776
    goto :goto_7

    .line 777
    :sswitch_d
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 778
    .line 779
    new-array v12, v4, [J

    .line 780
    .line 781
    fill-array-data v12, :array_1d

    .line 782
    .line 783
    .line 784
    invoke-direct {v8, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 785
    .line 786
    .line 787
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 788
    .line 789
    .line 790
    move-result-object v8

    .line 791
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 792
    .line 793
    .line 794
    move-result v8

    .line 795
    if-eqz v8, :cond_15

    .line 796
    .line 797
    const/4 v10, 0x3

    .line 798
    goto :goto_7

    .line 799
    :sswitch_e
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 800
    .line 801
    new-array v12, v4, [J

    .line 802
    .line 803
    fill-array-data v12, :array_1e

    .line 804
    .line 805
    .line 806
    invoke-direct {v8, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 807
    .line 808
    .line 809
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 810
    .line 811
    .line 812
    move-result-object v8

    .line 813
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 814
    .line 815
    .line 816
    move-result v8

    .line 817
    if-eqz v8, :cond_15

    .line 818
    .line 819
    const/4 v10, 0x2

    .line 820
    goto :goto_7

    .line 821
    :sswitch_f
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 822
    .line 823
    new-array v12, v4, [J

    .line 824
    .line 825
    fill-array-data v12, :array_1f

    .line 826
    .line 827
    .line 828
    invoke-direct {v8, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 829
    .line 830
    .line 831
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 832
    .line 833
    .line 834
    move-result-object v8

    .line 835
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 836
    .line 837
    .line 838
    move-result v8

    .line 839
    if-eqz v8, :cond_15

    .line 840
    .line 841
    const/4 v10, 0x1

    .line 842
    :cond_15
    :goto_7
    if-eqz v10, :cond_18

    .line 843
    .line 844
    if-eq v10, v0, :cond_17

    .line 845
    .line 846
    if-eq v10, v4, :cond_17

    .line 847
    .line 848
    if-eq v10, v3, :cond_16

    .line 849
    .line 850
    :try_start_4
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 851
    .line 852
    new-array v10, v3, [J

    .line 853
    .line 854
    fill-array-data v10, :array_20

    .line 855
    .line 856
    .line 857
    invoke-direct {v8, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 858
    .line 859
    .line 860
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 861
    .line 862
    .line 863
    move-result-object v8

    .line 864
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 865
    .line 866
    new-array v12, v2, [J

    .line 867
    .line 868
    fill-array-data v12, :array_21

    .line 869
    .line 870
    .line 871
    invoke-direct {v10, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 872
    .line 873
    .line 874
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 875
    .line 876
    .line 877
    move-result-object v10

    .line 878
    invoke-virtual {v10, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 879
    .line 880
    .line 881
    move-result-object v7

    .line 882
    invoke-static {v8, v7}, Lcom/google/android/gms/internal/ads/zzff;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    .line 884
    .line 885
    goto :goto_8

    .line 886
    :cond_16
    const/4 v9, 0x2

    .line 887
    goto :goto_8

    .line 888
    :cond_17
    const/4 v9, 0x1

    .line 889
    goto :goto_8

    .line 890
    :cond_18
    const/4 v9, 0x0

    .line 891
    :goto_8
    iput v9, p1, Lcom/google/android/gms/internal/ads/zzamg;->zzg:I

    .line 892
    .line 893
    invoke-virtual {v6, v11, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 894
    .line 895
    .line 896
    move-result-object v6

    .line 897
    :cond_19
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 898
    .line 899
    new-array v7, v4, [J

    .line 900
    .line 901
    fill-array-data v7, :array_22

    .line 902
    .line 903
    .line 904
    invoke-direct {v5, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 905
    .line 906
    .line 907
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 908
    .line 909
    .line 910
    move-result-object v5

    .line 911
    invoke-virtual {v6, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 912
    .line 913
    .line 914
    move-result v5

    .line 915
    if-eqz v5, :cond_1a

    .line 916
    .line 917
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzamj;->zza(Ljava/lang/String;)F

    .line 918
    .line 919
    .line 920
    move-result v5

    .line 921
    iput v5, p1, Lcom/google/android/gms/internal/ads/zzamg;->zze:F

    .line 922
    .line 923
    iput v11, p1, Lcom/google/android/gms/internal/ads/zzamg;->zzf:I

    .line 924
    .line 925
    goto/16 :goto_0

    .line 926
    .line 927
    :cond_1a
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 928
    .line 929
    .line 930
    move-result v5

    .line 931
    int-to-float v5, v5

    .line 932
    iput v5, p1, Lcom/google/android/gms/internal/ads/zzamg;->zze:F

    .line 933
    .line 934
    iput v0, p1, Lcom/google/android/gms/internal/ads/zzamg;->zzf:I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0

    .line 935
    .line 936
    goto/16 :goto_0

    .line 937
    .line 938
    :catch_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 939
    .line 940
    .line 941
    move-result-object v5

    .line 942
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 943
    .line 944
    .line 945
    move-result-object v5

    .line 946
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 947
    .line 948
    new-array v7, v1, [J

    .line 949
    .line 950
    fill-array-data v7, :array_23

    .line 951
    .line 952
    .line 953
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 954
    .line 955
    .line 956
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 957
    .line 958
    .line 959
    move-result-object v6

    .line 960
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 961
    .line 962
    new-array v8, v3, [J

    .line 963
    .line 964
    fill-array-data v8, :array_24

    .line 965
    .line 966
    .line 967
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 968
    .line 969
    .line 970
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 971
    .line 972
    .line 973
    move-result-object v7

    .line 974
    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 975
    .line 976
    .line 977
    move-result-object v5

    .line 978
    invoke-static {v7, v5}, Lcom/google/android/gms/internal/ads/zzff;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    .line 980
    .line 981
    goto/16 :goto_0

    .line 982
    .line 983
    :cond_1b
    return-void

    .line 984
    nop

    .line 985
    :sswitch_data_0
    .sparse-switch
        -0x6dd215c0 -> :sswitch_5
        -0x514d33ab -> :sswitch_4
        -0x4c1a40fd -> :sswitch_3
        -0x4009266b -> :sswitch_2
        0x188db -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch

    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    :sswitch_data_1
    .sparse-switch
        -0x514d33ab -> :sswitch_b
        -0x4009266b -> :sswitch_a
        0x188db -> :sswitch_9
        0x32a007 -> :sswitch_8
        0x677c21c -> :sswitch_7
        0x68ac462 -> :sswitch_6
    .end sparse-switch

    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    :sswitch_data_2
    .sparse-switch
        -0x514d33ab -> :sswitch_f
        -0x4009266b -> :sswitch_e
        0x188db -> :sswitch_d
        0x68ac462 -> :sswitch_c
    .end sparse-switch

    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    :array_0
    .array-data 8
        0x74777da0750a0960L    # 1.0763979982642869E253
        -0x4091adeaa3a87290L    # -0.003701249809397282
    .end array-data

    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    :array_1
    .array-data 8
        -0x546f49db57566007L    # -7.640412084507744E-99
        0x43e03350e3cb188dL    # 9.33892534171418E18
    .end array-data

    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    :array_2
    .array-data 8
        -0x6ae594a4b10e312bL    # -5.14310413261951E-207
        -0xd163e1550b7e836L    # -3.51746655776735E245
    .end array-data

    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    :array_3
    .array-data 8
        -0x5e6fa3624d7e4077L    # -5.11838213862309E-147
        -0x1779007dd932ce87L    # -3.357675935197115E195
    .end array-data

    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    :array_4
    .array-data 8
        -0x2493393b5b6530a3L    # -2.5532018445195566E132
        -0xd627906c02404caL
    .end array-data

    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    :array_5
    .array-data 8
        0x641307c612de1cffL    # 1.1766970228404375E174
        -0x1a4bd2e0b0886b09L    # -8.37217008799122E181
        -0x4397d56820dc72a2L    # -1.0480496625614918E-17
    .end array-data

    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    :array_6
    .array-data 8
        0x6be0bcba520d2cd9L    # 4.40200207137616E211
        0x39fab95e3e6fac60L    # 2.10815932188644E-29
        -0x4fc704a0ede79171L    # -2.157480668850574E-76
        -0x5c342a6acd2cac04L
    .end array-data

    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
    .line 1144
    .line 1145
    .line 1146
    .line 1147
    .line 1148
    .line 1149
    .line 1150
    .line 1151
    :array_7
    .array-data 8
        -0x77ab65625b50fd5eL
        -0x202d80b23d374554L    # -3.87512470799466E153
    .end array-data

    .line 1152
    .line 1153
    .line 1154
    .line 1155
    .line 1156
    .line 1157
    .line 1158
    .line 1159
    .line 1160
    .line 1161
    .line 1162
    .line 1163
    :array_8
    .array-data 8
        -0x4ac45e8ea0ec4a75L    # -2.88477301743611E-52
        0x51078b1e8b9b611cL    # 2.2332567612252575E82
    .end array-data

    .line 1164
    .line 1165
    .line 1166
    .line 1167
    .line 1168
    .line 1169
    .line 1170
    .line 1171
    .line 1172
    .line 1173
    .line 1174
    .line 1175
    :array_9
    .array-data 8
        0x26173a76dfe5444cL
        -0x4ffad2d0ffcdec46L    # -2.286047622534917E-77
    .end array-data

    .line 1176
    .line 1177
    .line 1178
    .line 1179
    .line 1180
    .line 1181
    .line 1182
    .line 1183
    .line 1184
    .line 1185
    .line 1186
    .line 1187
    :array_a
    .array-data 8
        0x7697b372e8968f2cL    # 1.8657883928871515E263
        -0x79a41910eed27a78L
        0x6cecf8a9b9d9d45L
    .end array-data

    .line 1188
    .line 1189
    .line 1190
    .line 1191
    .line 1192
    .line 1193
    .line 1194
    .line 1195
    .line 1196
    .line 1197
    .line 1198
    .line 1199
    .line 1200
    .line 1201
    .line 1202
    .line 1203
    :array_b
    .array-data 8
        0x608881c4cedde323L    # 1.0514685852463183E157
        0x1e741ee6919899f7L    # 5.590434329974514E-162
        0x48d073666eef9541L    # 5.73226081748647E42
        -0x3e9b0ac5785a85aL    # -5.435417283748156E289
        0x2f3c2cbc0cfd2344L    # 3.712796659306144E-81
    .end array-data

    .line 1204
    .line 1205
    .line 1206
    .line 1207
    .line 1208
    .line 1209
    .line 1210
    .line 1211
    .line 1212
    .line 1213
    .line 1214
    .line 1215
    .line 1216
    .line 1217
    .line 1218
    .line 1219
    .line 1220
    .line 1221
    .line 1222
    .line 1223
    .line 1224
    .line 1225
    .line 1226
    .line 1227
    :array_c
    .array-data 8
        -0x26ac001fbc773afaL    # -2.065749883680531E122
        -0x1fb593937ff6044fL    # -7.085632457203536E155
    .end array-data

    .line 1228
    .line 1229
    .line 1230
    .line 1231
    .line 1232
    .line 1233
    .line 1234
    .line 1235
    .line 1236
    .line 1237
    .line 1238
    .line 1239
    :array_d
    .array-data 8
        -0x5ad334770d428754L
        0x3d9beb4cd65a405eL    # 6.348077748583826E-12
    .end array-data

    .line 1240
    .line 1241
    .line 1242
    .line 1243
    .line 1244
    .line 1245
    .line 1246
    .line 1247
    .line 1248
    .line 1249
    .line 1250
    .line 1251
    :array_e
    .array-data 8
        0x56a819785cfb3747L    # 2.8299342586988154E109
        0x487b6daad36bbcb3L    # 1.4933434779193735E41
    .end array-data

    .line 1252
    .line 1253
    .line 1254
    .line 1255
    .line 1256
    .line 1257
    .line 1258
    .line 1259
    .line 1260
    .line 1261
    .line 1262
    .line 1263
    :array_f
    .array-data 8
        0x24e7f880d5a85b68L    # 6.754184173226526E-131
        0x6e4e569c92ff21cdL    # 2.19330196210699E223
        0x2c8dffd16e81f13eL    # 4.4943028464770653E-94
    .end array-data

    .line 1264
    .line 1265
    .line 1266
    .line 1267
    .line 1268
    .line 1269
    .line 1270
    .line 1271
    .line 1272
    .line 1273
    .line 1274
    .line 1275
    .line 1276
    .line 1277
    .line 1278
    .line 1279
    :array_10
    .array-data 8
        0x101bc1a57d0b191dL    # 4.469582599553969E-231
        0xb3aa6e3724b0d33L
    .end array-data

    .line 1280
    .line 1281
    .line 1282
    .line 1283
    .line 1284
    .line 1285
    .line 1286
    .line 1287
    .line 1288
    .line 1289
    .line 1290
    .line 1291
    :array_11
    .array-data 8
        -0x15fe88f518c566e6L    # -4.277952329917181E202
        0x576966a1aedf4faeL
        -0x4627b7cd5df2e250L    # -4.7887845819044325E-30
    .end array-data

    .line 1292
    .line 1293
    .line 1294
    .line 1295
    .line 1296
    .line 1297
    .line 1298
    .line 1299
    .line 1300
    .line 1301
    .line 1302
    .line 1303
    .line 1304
    .line 1305
    .line 1306
    .line 1307
    :array_12
    .array-data 8
        0x5a2072497df793e1L    # 1.3916177017336507E126
        -0x749b68d7c71c8b21L    # -8.77646570472106E-254
        -0x183e3aa3cd286eddL    # -6.334285136763952E191
    .end array-data

    .line 1308
    .line 1309
    .line 1310
    .line 1311
    .line 1312
    .line 1313
    .line 1314
    .line 1315
    .line 1316
    .line 1317
    .line 1318
    .line 1319
    .line 1320
    .line 1321
    .line 1322
    .line 1323
    :array_13
    .array-data 8
        0x6e8908246f450b2dL    # 2.8954693390546602E224
        -0x5d001112b7049f93L
        -0x509302089f3c4787L    # -3.056399924850275E-80
        0x26703d63c24fecd5L
    .end array-data

    .line 1324
    .line 1325
    .line 1326
    .line 1327
    .line 1328
    .line 1329
    .line 1330
    .line 1331
    .line 1332
    .line 1333
    .line 1334
    .line 1335
    .line 1336
    .line 1337
    .line 1338
    .line 1339
    .line 1340
    .line 1341
    .line 1342
    .line 1343
    :array_14
    .array-data 8
        0x37becd3d1b01557bL    # 3.535863318969432E-40
        0x7adc01174672df98L    # 6.50668909578833E283
    .end array-data

    .line 1344
    .line 1345
    .line 1346
    .line 1347
    .line 1348
    .line 1349
    .line 1350
    .line 1351
    .line 1352
    .line 1353
    .line 1354
    .line 1355
    :array_15
    .array-data 8
        0x3101d9432e8f6e0cL
        -0x2ae761d87b8cfe3aL    # -8.615244813766809E101
    .end array-data

    .line 1356
    .line 1357
    .line 1358
    .line 1359
    .line 1360
    .line 1361
    .line 1362
    .line 1363
    .line 1364
    .line 1365
    .line 1366
    .line 1367
    :array_16
    .array-data 8
        0x6f4a162409fabf69L    # 1.2359540915072311E228
        0x3a86302ca666b83eL    # 8.961735060211212E-27
    .end array-data

    .line 1368
    .line 1369
    .line 1370
    .line 1371
    .line 1372
    .line 1373
    .line 1374
    .line 1375
    .line 1376
    .line 1377
    .line 1378
    .line 1379
    :array_17
    .array-data 8
        0x389278d385a80d92L    # 3.4741928453233556E-36
        -0x728f868c9bff11d1L    # -6.031892246785064E-244
    .end array-data

    .line 1380
    .line 1381
    .line 1382
    .line 1383
    .line 1384
    .line 1385
    .line 1386
    .line 1387
    .line 1388
    .line 1389
    .line 1390
    .line 1391
    :array_18
    .array-data 8
        -0x642ad538c4e08930L
        0x57537595ae83faf6L    # 4.679785513558438E112
    .end array-data

    .line 1392
    .line 1393
    .line 1394
    .line 1395
    .line 1396
    .line 1397
    .line 1398
    .line 1399
    .line 1400
    .line 1401
    .line 1402
    .line 1403
    :array_19
    .array-data 8
        0x66c8689529b1aa8fL    # 1.3275438623756314E187
        0x37107046e8c50e50L    # 1.8428287757930776E-43
    .end array-data

    .line 1404
    .line 1405
    .line 1406
    .line 1407
    .line 1408
    .line 1409
    .line 1410
    .line 1411
    .line 1412
    .line 1413
    .line 1414
    .line 1415
    :array_1a
    .array-data 8
        0x2987bbba178adf46L
        -0x27fd1e0dfd3243e0L    # -9.300153556727927E115
        -0x7ca3628a5ed13cb4L
    .end array-data

    .line 1416
    .line 1417
    .line 1418
    .line 1419
    .line 1420
    .line 1421
    .line 1422
    .line 1423
    .line 1424
    .line 1425
    .line 1426
    .line 1427
    .line 1428
    .line 1429
    .line 1430
    .line 1431
    :array_1b
    .array-data 8
        0x65a237feda8d257eL    # 3.77994570958895E181
        -0x23e194f4f71a24b4L    # -5.5272699962156505E135
        -0x27017e149ee6f275L    # -4.923623913213877E120
        -0x6517eb52e1aaefa1L    # -4.642617419545492E-179
        0x16b3cf0582708c3cL
    .end array-data

    .line 1432
    .line 1433
    .line 1434
    .line 1435
    .line 1436
    .line 1437
    .line 1438
    .line 1439
    .line 1440
    .line 1441
    .line 1442
    .line 1443
    .line 1444
    .line 1445
    .line 1446
    .line 1447
    .line 1448
    .line 1449
    .line 1450
    .line 1451
    .line 1452
    .line 1453
    .line 1454
    .line 1455
    :array_1c
    .array-data 8
        0x2791e63fada2ee6cL    # 4.436294858717146E-118
        -0x569f8dde01201454L
    .end array-data

    .line 1456
    .line 1457
    .line 1458
    .line 1459
    .line 1460
    .line 1461
    .line 1462
    .line 1463
    .line 1464
    .line 1465
    .line 1466
    .line 1467
    :array_1d
    .array-data 8
        -0x7c32ed703ca6e920L
        -0x276adb6ddd96a98aL    # -5.331653742016265E118
    .end array-data

    .line 1468
    .line 1469
    .line 1470
    .line 1471
    .line 1472
    .line 1473
    .line 1474
    .line 1475
    .line 1476
    .line 1477
    .line 1478
    .line 1479
    :array_1e
    .array-data 8
        -0x557a88cac4f1cdeaL    # -7.487479900320972E-104
        0x762152b1837b8dceL    # 1.065393133601644E261
    .end array-data

    .line 1480
    .line 1481
    .line 1482
    .line 1483
    .line 1484
    .line 1485
    .line 1486
    .line 1487
    .line 1488
    .line 1489
    .line 1490
    .line 1491
    :array_1f
    .array-data 8
        -0x3015534f26fe98c5L    # -9.652201852896039E76
        -0x6021c005600897aL
    .end array-data

    .line 1492
    .line 1493
    .line 1494
    .line 1495
    .line 1496
    :array_20
    .array-data 8
        0x6d6ada2f0f6b0952L    # 1.1848627372958589E219
        0x663cf3934a73b2b0L
        -0x283ef28723a498f3L    # -5.249278540718002E114
    .end array-data

    :array_21
    .array-data 8
        0x6458bb1d39bb388aL    # 2.44668282421741E175
        -0x3dfd7334487793cL    # -7.87390867685139E289
        -0x7b55e18db8e28c99L
        0x65aaec42c4029546L    # 5.585848341484279E181
    .end array-data

    :array_22
    .array-data 8
        -0x44503297fc6df76aL    # -3.3672067269916904E-21
        0x1bf0532514f97c96L
    .end array-data

    :array_23
    .array-data 8
        0x582b2db743bc1038L    # 5.3544524240246196E116
        -0x62dc13ab0a4ef34fL    # -2.639556140199765E-168
        -0x316b77a97f7656f6L    # -3.542764735424617E70
        0x147065106e44b436L    # 3.116798172135884E-210
        0x357374a677101a68L
    .end array-data

    :array_24
    .array-data 8
        -0xdc420f0b5c91d25L
        -0x5361e75d02a478a1L    # -9.017653839724026E-94
        0x215b6e59c485f723L    # 5.363208593268821E-148
    .end array-data
.end method
