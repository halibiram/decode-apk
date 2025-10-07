.class final Lcom/google/android/gms/internal/measurement/zzll;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static zza(Lcom/google/android/gms/internal/measurement/zzlj;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    new-array v2, v2, [J

    .line 10
    .line 11
    fill-array-data v2, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    invoke-static {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/zzll;->zzd(Lcom/google/android/gms/internal/measurement/zzlj;Ljava/lang/StringBuilder;I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    nop

    .line 37
    :array_0
    .array-data 8
        -0x761eab40e5d5a4faL    # -4.403098666047451E-261
        0x52e0bf706aa17114L    # 1.7057944820612825E91
    .end array-data
.end method

.method public static final zzb(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    instance-of v1, p3, Ljava/util/List;

    .line 3
    .line 4
    if-eqz v1, :cond_1

    .line 5
    .line 6
    check-cast p3, Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p3

    .line 12
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/zzll;->zzb(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-void

    .line 27
    :cond_1
    instance-of v1, p3, Ljava/util/Map;

    .line 28
    .line 29
    if-eqz v1, :cond_3

    .line 30
    .line 31
    check-cast p3, Ljava/util/Map;

    .line 32
    .line 33
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object p3

    .line 41
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Ljava/util/Map$Entry;

    .line 52
    .line 53
    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/zzll;->zzb(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    return-void

    .line 58
    :cond_3
    const/16 v1, 0xa

    .line 59
    .line 60
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const/4 v1, 0x0

    .line 64
    const/4 v2, 0x0

    .line 65
    :goto_2
    const/16 v3, 0x20

    .line 66
    .line 67
    if-ge v2, p1, :cond_4

    .line 68
    .line 69
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    add-int/lit8 v2, v2, 0x1

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_4
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    instance-of p2, p3, Ljava/lang/String;

    .line 79
    .line 80
    const/16 v2, 0x22

    .line 81
    .line 82
    if-eqz p2, :cond_5

    .line 83
    .line 84
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 85
    .line 86
    new-array p2, v0, [J

    .line 87
    .line 88
    fill-array-data p2, :array_0

    .line 89
    .line 90
    .line 91
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    check-cast p3, Ljava/lang/String;

    .line 102
    .line 103
    invoke-static {p3}, Lcom/google/android/gms/internal/measurement/zzjb;->zzm(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzjb;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzmj;->zza(Lcom/google/android/gms/internal/measurement/zzjb;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    :cond_5
    instance-of p2, p3, Lcom/google/android/gms/internal/measurement/zzjb;

    .line 119
    .line 120
    if-eqz p2, :cond_6

    .line 121
    .line 122
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 123
    .line 124
    new-array p2, v0, [J

    .line 125
    .line 126
    fill-array-data p2, :array_1

    .line 127
    .line 128
    .line 129
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    check-cast p3, Lcom/google/android/gms/internal/measurement/zzjb;

    .line 140
    .line 141
    invoke-static {p3}, Lcom/google/android/gms/internal/measurement/zzmj;->zza(Lcom/google/android/gms/internal/measurement/zzjb;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    return-void

    .line 152
    :cond_6
    instance-of p2, p3, Lcom/google/android/gms/internal/measurement/zzkc;

    .line 153
    .line 154
    if-eqz p2, :cond_8

    .line 155
    .line 156
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 157
    .line 158
    new-array v2, v0, [J

    .line 159
    .line 160
    fill-array-data v2, :array_2

    .line 161
    .line 162
    .line 163
    invoke-direct {p2, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p2

    .line 170
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    check-cast p3, Lcom/google/android/gms/internal/measurement/zzkc;

    .line 174
    .line 175
    add-int/lit8 p2, p1, 0x2

    .line 176
    .line 177
    invoke-static {p3, p0, p2}, Lcom/google/android/gms/internal/measurement/zzll;->zzd(Lcom/google/android/gms/internal/measurement/zzlj;Ljava/lang/StringBuilder;I)V

    .line 178
    .line 179
    .line 180
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 181
    .line 182
    new-array p3, v0, [J

    .line 183
    .line 184
    fill-array-data p3, :array_3

    .line 185
    .line 186
    .line 187
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p2

    .line 194
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    :goto_3
    if-ge v1, p1, :cond_7

    .line 198
    .line 199
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    add-int/lit8 v1, v1, 0x1

    .line 203
    .line 204
    goto :goto_3

    .line 205
    :cond_7
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 206
    .line 207
    new-array p2, v0, [J

    .line 208
    .line 209
    fill-array-data p2, :array_4

    .line 210
    .line 211
    .line 212
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    return-void

    .line 223
    :cond_8
    instance-of p2, p3, Ljava/util/Map$Entry;

    .line 224
    .line 225
    if-eqz p2, :cond_a

    .line 226
    .line 227
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 228
    .line 229
    new-array v2, v0, [J

    .line 230
    .line 231
    fill-array-data v2, :array_5

    .line 232
    .line 233
    .line 234
    invoke-direct {p2, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object p2

    .line 241
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    check-cast p3, Ljava/util/Map$Entry;

    .line 245
    .line 246
    add-int/lit8 p2, p1, 0x2

    .line 247
    .line 248
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 249
    .line 250
    new-array v4, v0, [J

    .line 251
    .line 252
    fill-array-data v4, :array_6

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
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v4

    .line 266
    invoke-static {p0, p2, v2, v4}, Lcom/google/android/gms/internal/measurement/zzll;->zzb(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 267
    .line 268
    .line 269
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 270
    .line 271
    new-array v4, v0, [J

    .line 272
    .line 273
    fill-array-data v4, :array_7

    .line 274
    .line 275
    .line 276
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v2

    .line 283
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object p3

    .line 287
    invoke-static {p0, p2, v2, p3}, Lcom/google/android/gms/internal/measurement/zzll;->zzb(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 288
    .line 289
    .line 290
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 291
    .line 292
    new-array p3, v0, [J

    .line 293
    .line 294
    fill-array-data p3, :array_8

    .line 295
    .line 296
    .line 297
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object p2

    .line 304
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    :goto_4
    if-ge v1, p1, :cond_9

    .line 308
    .line 309
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    add-int/lit8 v1, v1, 0x1

    .line 313
    .line 314
    goto :goto_4

    .line 315
    :cond_9
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 316
    .line 317
    new-array p2, v0, [J

    .line 318
    .line 319
    fill-array-data p2, :array_9

    .line 320
    .line 321
    .line 322
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object p1

    .line 329
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    return-void

    .line 333
    :cond_a
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 334
    .line 335
    new-array p2, v0, [J

    .line 336
    .line 337
    fill-array-data p2, :array_a

    .line 338
    .line 339
    .line 340
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object p1

    .line 347
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    return-void

    .line 354
    nop

    .line 355
    :array_0
    .array-data 8
        -0x25a91b9b72276874L    # -1.5496190531550559E127
        0x16b0a510246a89b9L
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
    :array_1
    .array-data 8
        0x283c644bec443a7bL    # 7.205669515974937E-115
        0x65c33fe8813dd473L    # 1.5975337413666045E182
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
    :array_2
    .array-data 8
        -0x21dd485df3aaff07L    # -2.921537768260618E145
        -0xbff594073584831L    # -5.960958851238108E250
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
    :array_3
    .array-data 8
        -0x118e2a64da13b8bbL    # -1.0314668166275371E224
        -0x1faf4f123d2fe34fL    # -8.951657504699605E155
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
    :array_4
    .array-data 8
        -0x55f8845e238a715cL    # -3.199661097421048E-106
        0x7962d6c1e1f442ecL    # 5.217968814350081E276
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
    :array_5
    .array-data 8
        -0x7338c3c19fbf30ffL    # -4.153960412129761E-247
        0x347cb413a96381c9L    # 7.3163510736892E-56
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
    :array_6
    .array-data 8
        0x7af81968f0202081L    # 2.239750209346823E284
        -0x78930e878383d4e5L    # -6.68776737229821E-273
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
    :array_7
    .array-data 8
        0x6eacf362a6cd1b2L
        -0x6b33cfc736c9001bL
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
    :array_8
    .array-data 8
        0x13df19d3bd0cf841L    # 5.773987716155609E-213
        -0x5e5a25e814277333L    # -1.367167958257991E-146
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
    :array_9
    .array-data 8
        0x550bfe5ab5ecee88L    # 4.898316787767249E101
        -0x1f059fe3668a2ee9L    # -1.4484962722866845E159
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
    :array_a
    .array-data 8
        0x63b3dd7169d8e81dL    # 1.9192270876151485E172
        0x77fd35624ff3cb22L    # 9.644192118061489E269
    .end array-data
.end method

.method private static final zzc(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    new-array v4, v4, [J

    .line 27
    .line 28
    fill-array-data v4, :array_0

    .line 29
    .line 30
    .line 31
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    :cond_0
    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    add-int/lit8 v1, v1, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0

    .line 56
    nop

    .line 57
    :array_0
    .array-data 8
        -0x5693393509189511L    # -3.829041506300205E-109
        0x7136b0ff4c288d78L
    .end array-data
.end method

.method private static zzd(Lcom/google/android/gms/internal/measurement/zzlj;Ljava/lang/StringBuilder;I)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    const/4 v3, 0x3

    .line 8
    const/4 v4, 0x1

    .line 9
    const/4 v5, 0x2

    .line 10
    new-instance v6, Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 13
    .line 14
    .line 15
    new-instance v7, Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v8, Ljava/util/TreeSet;

    .line 21
    .line 22
    invoke-direct {v8}, Ljava/util/TreeSet;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    move-result-object v9

    .line 29
    invoke-virtual {v9}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    .line 30
    .line 31
    .line 32
    move-result-object v9

    .line 33
    array-length v10, v9

    .line 34
    const/4 v12, 0x0

    .line 35
    :goto_0
    if-ge v12, v10, :cond_1

    .line 36
    .line 37
    aget-object v13, v9, v12

    .line 38
    .line 39
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v14

    .line 43
    invoke-virtual {v7, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    move-result-object v14

    .line 50
    array-length v14, v14

    .line 51
    if-nez v14, :cond_0

    .line 52
    .line 53
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v14

    .line 57
    invoke-virtual {v6, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v14

    .line 64
    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    .line 65
    .line 66
    new-array v11, v5, [J

    .line 67
    .line 68
    fill-array-data v11, :array_0

    .line 69
    .line 70
    .line 71
    invoke-direct {v15, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v11

    .line 78
    invoke-virtual {v14, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 79
    .line 80
    .line 81
    move-result v11

    .line 82
    if-eqz v11, :cond_0

    .line 83
    .line 84
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v11

    .line 88
    invoke-virtual {v8, v11}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    :cond_0
    add-int/2addr v12, v4

    .line 92
    goto :goto_0

    .line 93
    :cond_1
    invoke-virtual {v8}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    .line 94
    .line 95
    .line 96
    move-result-object v8

    .line 97
    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 98
    .line 99
    .line 100
    move-result v9

    .line 101
    if-eqz v9, :cond_10

    .line 102
    .line 103
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v9

    .line 107
    check-cast v9, Ljava/lang/String;

    .line 108
    .line 109
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 110
    .line 111
    new-array v11, v5, [J

    .line 112
    .line 113
    fill-array-data v11, :array_1

    .line 114
    .line 115
    .line 116
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v10

    .line 123
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 124
    .line 125
    .line 126
    move-result v10

    .line 127
    if-eqz v10, :cond_3

    .line 128
    .line 129
    invoke-virtual {v9, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v10

    .line 133
    goto :goto_2

    .line 134
    :cond_3
    move-object v10, v9

    .line 135
    :goto_2
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 136
    .line 137
    new-array v12, v5, [J

    .line 138
    .line 139
    fill-array-data v12, :array_2

    .line 140
    .line 141
    .line 142
    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v11

    .line 149
    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 150
    .line 151
    .line 152
    move-result v11

    .line 153
    if-eqz v11, :cond_4

    .line 154
    .line 155
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 156
    .line 157
    new-array v12, v3, [J

    .line 158
    .line 159
    fill-array-data v12, :array_3

    .line 160
    .line 161
    .line 162
    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v11

    .line 169
    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 170
    .line 171
    .line 172
    move-result v11

    .line 173
    if-nez v11, :cond_4

    .line 174
    .line 175
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 176
    .line 177
    new-array v12, v5, [J

    .line 178
    .line 179
    fill-array-data v12, :array_4

    .line 180
    .line 181
    .line 182
    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v11

    .line 189
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v11

    .line 193
    if-nez v11, :cond_4

    .line 194
    .line 195
    const/4 v11, 0x0

    .line 196
    invoke-virtual {v10, v11, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v12

    .line 200
    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v11

    .line 204
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v11

    .line 208
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 209
    .line 210
    .line 211
    move-result v12

    .line 212
    add-int/lit8 v12, v12, -0x4

    .line 213
    .line 214
    invoke-virtual {v10, v4, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v12

    .line 218
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v12

    .line 222
    invoke-virtual {v11, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v11

    .line 226
    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v12

    .line 230
    check-cast v12, Ljava/lang/reflect/Method;

    .line 231
    .line 232
    if-eqz v12, :cond_4

    .line 233
    .line 234
    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 235
    .line 236
    .line 237
    move-result-object v13

    .line 238
    const-class v14, Ljava/util/List;

    .line 239
    .line 240
    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    move-result v13

    .line 244
    if-eqz v13, :cond_4

    .line 245
    .line 246
    invoke-static {v11}, Lcom/google/android/gms/internal/measurement/zzll;->zzc(Ljava/lang/String;)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v9

    .line 250
    const/4 v10, 0x0

    .line 251
    new-array v11, v10, [Ljava/lang/Object;

    .line 252
    .line 253
    invoke-static {v12, v0, v11}, Lcom/google/android/gms/internal/measurement/zzkc;->zzbK(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v10

    .line 257
    invoke-static {v1, v2, v9, v10}, Lcom/google/android/gms/internal/measurement/zzll;->zzb(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 258
    .line 259
    .line 260
    goto/16 :goto_1

    .line 261
    .line 262
    :cond_4
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 263
    .line 264
    new-array v12, v5, [J

    .line 265
    .line 266
    fill-array-data v12, :array_5

    .line 267
    .line 268
    .line 269
    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v11

    .line 276
    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 277
    .line 278
    .line 279
    move-result v11

    .line 280
    if-eqz v11, :cond_5

    .line 281
    .line 282
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 283
    .line 284
    new-array v12, v5, [J

    .line 285
    .line 286
    fill-array-data v12, :array_6

    .line 287
    .line 288
    .line 289
    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v11

    .line 296
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    move-result v11

    .line 300
    if-nez v11, :cond_5

    .line 301
    .line 302
    const/4 v11, 0x0

    .line 303
    invoke-virtual {v10, v11, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v12

    .line 307
    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v11

    .line 311
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v11

    .line 315
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 316
    .line 317
    .line 318
    move-result v12

    .line 319
    add-int/lit8 v12, v12, -0x3

    .line 320
    .line 321
    invoke-virtual {v10, v4, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v12

    .line 325
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v12

    .line 329
    invoke-virtual {v11, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v11

    .line 333
    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object v9

    .line 337
    check-cast v9, Ljava/lang/reflect/Method;

    .line 338
    .line 339
    if-eqz v9, :cond_5

    .line 340
    .line 341
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 342
    .line 343
    .line 344
    move-result-object v12

    .line 345
    const-class v13, Ljava/util/Map;

    .line 346
    .line 347
    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    move-result v12

    .line 351
    if-eqz v12, :cond_5

    .line 352
    .line 353
    const-class v12, Ljava/lang/Deprecated;

    .line 354
    .line 355
    invoke-virtual {v9, v12}, Ljava/lang/reflect/AccessibleObject;->isAnnotationPresent(Ljava/lang/Class;)Z

    .line 356
    .line 357
    .line 358
    move-result v12

    .line 359
    if-nez v12, :cond_5

    .line 360
    .line 361
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 362
    .line 363
    .line 364
    move-result v12

    .line 365
    invoke-static {v12}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    .line 366
    .line 367
    .line 368
    move-result v12

    .line 369
    if-eqz v12, :cond_5

    .line 370
    .line 371
    invoke-static {v11}, Lcom/google/android/gms/internal/measurement/zzll;->zzc(Ljava/lang/String;)Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v10

    .line 375
    const/4 v11, 0x0

    .line 376
    new-array v12, v11, [Ljava/lang/Object;

    .line 377
    .line 378
    invoke-static {v9, v0, v12}, Lcom/google/android/gms/internal/measurement/zzkc;->zzbK(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object v9

    .line 382
    invoke-static {v1, v2, v10, v9}, Lcom/google/android/gms/internal/measurement/zzll;->zzb(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 383
    .line 384
    .line 385
    goto/16 :goto_1

    .line 386
    .line 387
    :cond_5
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 388
    .line 389
    new-array v11, v5, [J

    .line 390
    .line 391
    fill-array-data v11, :array_7

    .line 392
    .line 393
    .line 394
    invoke-direct {v9, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v9

    .line 401
    invoke-virtual {v9, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v9

    .line 405
    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    .line 407
    .line 408
    move-result-object v9

    .line 409
    check-cast v9, Ljava/lang/reflect/Method;

    .line 410
    .line 411
    if-eqz v9, :cond_2

    .line 412
    .line 413
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 414
    .line 415
    new-array v11, v5, [J

    .line 416
    .line 417
    fill-array-data v11, :array_8

    .line 418
    .line 419
    .line 420
    invoke-direct {v9, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 421
    .line 422
    .line 423
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v9

    .line 427
    invoke-virtual {v10, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 428
    .line 429
    .line 430
    move-result v9

    .line 431
    if-eqz v9, :cond_6

    .line 432
    .line 433
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 434
    .line 435
    new-array v11, v5, [J

    .line 436
    .line 437
    fill-array-data v11, :array_9

    .line 438
    .line 439
    .line 440
    invoke-direct {v9, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 441
    .line 442
    .line 443
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v9

    .line 447
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 448
    .line 449
    .line 450
    move-result v11

    .line 451
    add-int/lit8 v11, v11, -0x5

    .line 452
    .line 453
    const/4 v12, 0x0

    .line 454
    invoke-virtual {v10, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object v11

    .line 458
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v11

    .line 462
    invoke-virtual {v9, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v9

    .line 466
    invoke-virtual {v6, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 467
    .line 468
    .line 469
    move-result v9

    .line 470
    if-nez v9, :cond_2

    .line 471
    .line 472
    goto :goto_3

    .line 473
    :cond_6
    const/4 v12, 0x0

    .line 474
    :goto_3
    invoke-virtual {v10, v12, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v9

    .line 478
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object v9

    .line 482
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v9

    .line 486
    invoke-virtual {v10, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object v11

    .line 490
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v11

    .line 494
    invoke-virtual {v9, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v9

    .line 498
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 499
    .line 500
    new-array v12, v5, [J

    .line 501
    .line 502
    fill-array-data v12, :array_a

    .line 503
    .line 504
    .line 505
    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 506
    .line 507
    .line 508
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object v11

    .line 512
    invoke-virtual {v11, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object v11

    .line 516
    invoke-virtual {v6, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    .line 518
    .line 519
    move-result-object v11

    .line 520
    check-cast v11, Ljava/lang/reflect/Method;

    .line 521
    .line 522
    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    .line 523
    .line 524
    new-array v13, v5, [J

    .line 525
    .line 526
    fill-array-data v13, :array_b

    .line 527
    .line 528
    .line 529
    invoke-direct {v12, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 530
    .line 531
    .line 532
    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    move-result-object v12

    .line 536
    invoke-virtual {v12, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 537
    .line 538
    .line 539
    move-result-object v10

    .line 540
    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    .line 542
    .line 543
    move-result-object v10

    .line 544
    check-cast v10, Ljava/lang/reflect/Method;

    .line 545
    .line 546
    if-eqz v11, :cond_2

    .line 547
    .line 548
    const/4 v12, 0x0

    .line 549
    new-array v13, v12, [Ljava/lang/Object;

    .line 550
    .line 551
    invoke-static {v11, v0, v13}, Lcom/google/android/gms/internal/measurement/zzkc;->zzbK(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    .line 553
    .line 554
    move-result-object v11

    .line 555
    if-nez v10, :cond_f

    .line 556
    .line 557
    instance-of v10, v11, Ljava/lang/Boolean;

    .line 558
    .line 559
    if-eqz v10, :cond_8

    .line 560
    .line 561
    move-object v10, v11

    .line 562
    check-cast v10, Ljava/lang/Boolean;

    .line 563
    .line 564
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    .line 565
    .line 566
    .line 567
    move-result v10

    .line 568
    if-eqz v10, :cond_2

    .line 569
    .line 570
    :cond_7
    :goto_4
    const/4 v12, 0x0

    .line 571
    goto/16 :goto_6

    .line 572
    .line 573
    :cond_8
    instance-of v10, v11, Ljava/lang/Integer;

    .line 574
    .line 575
    if-eqz v10, :cond_9

    .line 576
    .line 577
    move-object v10, v11

    .line 578
    check-cast v10, Ljava/lang/Integer;

    .line 579
    .line 580
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 581
    .line 582
    .line 583
    move-result v10

    .line 584
    if-eqz v10, :cond_2

    .line 585
    .line 586
    goto :goto_4

    .line 587
    :cond_9
    instance-of v10, v11, Ljava/lang/Float;

    .line 588
    .line 589
    if-eqz v10, :cond_a

    .line 590
    .line 591
    move-object v10, v11

    .line 592
    check-cast v10, Ljava/lang/Float;

    .line 593
    .line 594
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    .line 595
    .line 596
    .line 597
    move-result v10

    .line 598
    invoke-static {v10}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 599
    .line 600
    .line 601
    move-result v10

    .line 602
    if-eqz v10, :cond_2

    .line 603
    .line 604
    goto :goto_4

    .line 605
    :cond_a
    instance-of v10, v11, Ljava/lang/Double;

    .line 606
    .line 607
    if-eqz v10, :cond_b

    .line 608
    .line 609
    move-object v10, v11

    .line 610
    check-cast v10, Ljava/lang/Double;

    .line 611
    .line 612
    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    .line 613
    .line 614
    .line 615
    move-result-wide v12

    .line 616
    invoke-static {v12, v13}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 617
    .line 618
    .line 619
    move-result-wide v12

    .line 620
    const-wide/16 v14, 0x0

    .line 621
    .line 622
    cmp-long v10, v12, v14

    .line 623
    .line 624
    if-eqz v10, :cond_2

    .line 625
    .line 626
    goto :goto_4

    .line 627
    :cond_b
    instance-of v10, v11, Ljava/lang/String;

    .line 628
    .line 629
    if-eqz v10, :cond_c

    .line 630
    .line 631
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 632
    .line 633
    new-array v12, v4, [J

    .line 634
    .line 635
    const-wide v13, -0x4cf589f4e87b977aL    # -8.040423416235474E-63

    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    const/4 v15, 0x0

    .line 641
    aput-wide v13, v12, v15

    .line 642
    .line 643
    invoke-direct {v10, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 644
    .line 645
    .line 646
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 647
    .line 648
    .line 649
    move-result-object v10

    .line 650
    invoke-virtual {v11, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 651
    .line 652
    .line 653
    move-result v10

    .line 654
    goto :goto_5

    .line 655
    :cond_c
    instance-of v10, v11, Lcom/google/android/gms/internal/measurement/zzjb;

    .line 656
    .line 657
    if-eqz v10, :cond_d

    .line 658
    .line 659
    sget-object v10, Lcom/google/android/gms/internal/measurement/zzjb;->zzb:Lcom/google/android/gms/internal/measurement/zzjb;

    .line 660
    .line 661
    invoke-virtual {v11, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 662
    .line 663
    .line 664
    move-result v10

    .line 665
    :goto_5
    if-nez v10, :cond_2

    .line 666
    .line 667
    goto :goto_4

    .line 668
    :cond_d
    instance-of v10, v11, Lcom/google/android/gms/internal/measurement/zzlj;

    .line 669
    .line 670
    if-eqz v10, :cond_e

    .line 671
    .line 672
    move-object v10, v11

    .line 673
    check-cast v10, Lcom/google/android/gms/internal/measurement/zzlj;

    .line 674
    .line 675
    invoke-interface {v10}, Lcom/google/android/gms/internal/measurement/zzlk;->zzbR()Lcom/google/android/gms/internal/measurement/zzlj;

    .line 676
    .line 677
    .line 678
    move-result-object v10

    .line 679
    if-eq v11, v10, :cond_2

    .line 680
    .line 681
    goto :goto_4

    .line 682
    :cond_e
    instance-of v10, v11, Ljava/lang/Enum;

    .line 683
    .line 684
    if-eqz v10, :cond_7

    .line 685
    .line 686
    move-object v10, v11

    .line 687
    check-cast v10, Ljava/lang/Enum;

    .line 688
    .line 689
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    .line 690
    .line 691
    .line 692
    move-result v10

    .line 693
    if-eqz v10, :cond_2

    .line 694
    .line 695
    goto :goto_4

    .line 696
    :cond_f
    const/4 v12, 0x0

    .line 697
    new-array v13, v12, [Ljava/lang/Object;

    .line 698
    .line 699
    invoke-static {v10, v0, v13}, Lcom/google/android/gms/internal/measurement/zzkc;->zzbK(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    .line 701
    .line 702
    move-result-object v10

    .line 703
    check-cast v10, Ljava/lang/Boolean;

    .line 704
    .line 705
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    .line 706
    .line 707
    .line 708
    move-result v10

    .line 709
    if-eqz v10, :cond_2

    .line 710
    .line 711
    :goto_6
    invoke-static {v9}, Lcom/google/android/gms/internal/measurement/zzll;->zzc(Ljava/lang/String;)Ljava/lang/String;

    .line 712
    .line 713
    .line 714
    move-result-object v9

    .line 715
    invoke-static {v1, v2, v9, v11}, Lcom/google/android/gms/internal/measurement/zzll;->zzb(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 716
    .line 717
    .line 718
    goto/16 :goto_1

    .line 719
    .line 720
    :cond_10
    instance-of v3, v0, Lcom/google/android/gms/internal/measurement/zzjz;

    .line 721
    .line 722
    if-nez v3, :cond_12

    .line 723
    .line 724
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzkc;

    .line 725
    .line 726
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzkc;->zzc:Lcom/google/android/gms/internal/measurement/zzmm;

    .line 727
    .line 728
    if-eqz v0, :cond_11

    .line 729
    .line 730
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzmm;->zzg(Ljava/lang/StringBuilder;I)V

    .line 731
    .line 732
    .line 733
    :cond_11
    return-void

    .line 734
    :cond_12
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzjz;

    .line 735
    .line 736
    const/4 v0, 0x0

    .line 737
    throw v0

    .line 738
    nop

    .line 739
    :array_0
    .array-data 8
        -0x411306252c0c7dbfL    # -1.3816831254621498E-5
        0x106d4aecda80d510L
    .end array-data

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
    :array_1
    .array-data 8
        -0x636a879f234993c3L    # -5.555704368599965E-171
        0x66183a8f988e57d0L    # 6.43440577774714E183
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
    :array_2
    .array-data 8
        0x2f6b0c9625da6c4eL    # 2.8515766295760996E-80
        -0x1c8a5767d83bbea3L    # -1.3078181727128074E171
    .end array-data

    :array_3
    .array-data 8
        -0x41f3d7ab6bffd599L    # -8.194922865312326E-10
        -0x1c7f8cd94b496b6L
        -0x8ad0bddb6b0b764L    # -6.111516523711807E266
    .end array-data

    :array_4
    .array-data 8
        0x3c0c37d33f8b6016L    # 1.9121306061710556E-19
        0x7769f4a31829448L
    .end array-data

    :array_5
    .array-data 8
        0x371c86e3f004b11aL    # 3.197977836319562E-43
        -0x527c74c9dd70c337L    # -1.9188463052758795E-89
    .end array-data

    :array_6
    .array-data 8
        0x31dc0b8c5200ad44L    # 1.6253920940602916E-68
        -0x3702dc118f4e01dbL    # -4.061572986037835E43
    .end array-data

    :array_7
    .array-data 8
        0x4e7bcedc5ceef90dL    # 1.1995256706972795E70
        -0x348b90695eeddacbL    # -3.131791362250439E55
    .end array-data

    :array_8
    .array-data 8
        0x63d866648562156aL    # 9.429460476208752E172
        0x2d6186da476abcafL    # 4.302027155243311E-90
    .end array-data

    :array_9
    .array-data 8
        -0xd8c2ed0734f7f9aL
        0x20e6b12916ed9d57L    # 3.466135873341774E-150
    .end array-data

    :array_a
    .array-data 8
        0x4bed363c66a87802L    # 5.7301816168983834E57
        0x6af26be2bb552944L    # 1.4785647109427756E207
    .end array-data

    :array_b
    .array-data 8
        0x128d8ef63f0dc523L    # 2.61670492361243E-219
        0x2377a27b8e687b4eL    # 7.93874858947228E-138
    .end array-data
.end method
