.class final Lcom/google/android/gms/internal/ads/zzhbg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x50

    .line 2
    .line 3
    new-array v0, v0, [C

    .line 4
    .line 5
    sput-object v0, Lcom/google/android/gms/internal/ads/zzhbg;->zza:[C

    .line 6
    .line 7
    const/16 v1, 0x20

    .line 8
    .line 9
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzhbe;Ljava/lang/String;)Ljava/lang/String;
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
    invoke-static {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzhbg;->zzd(Lcom/google/android/gms/internal/ads/zzhbe;Ljava/lang/StringBuilder;I)V

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
        0x3aa0d6eceb854389L    # 2.720576454100161E-26
        0x1ffd4f35dac0025eL
    .end array-data
.end method

.method public static zzb(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    instance-of v2, p3, Ljava/util/List;

    .line 4
    .line 5
    if-eqz v2, :cond_0

    .line 6
    .line 7
    check-cast p3, Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzhbg;->zzb(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    instance-of v2, p3, Ljava/util/Map;

    .line 28
    .line 29
    if-eqz v2, :cond_2

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
    if-eqz v0, :cond_1

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
    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzhbg;->zzb(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    return-void

    .line 58
    :cond_2
    const/16 v2, 0xa

    .line 59
    .line 60
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzhbg;->zzc(ILjava/lang/StringBuilder;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-nez v2, :cond_5

    .line 71
    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    const/4 v3, 0x0

    .line 78
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const/4 v3, 0x1

    .line 90
    :goto_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    if-ge v3, v4, :cond_4

    .line 95
    .line 96
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    invoke-static {v4}, Ljava/lang/Character;->isUpperCase(C)Z

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    if-eqz v5, :cond_3

    .line 105
    .line 106
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 107
    .line 108
    new-array v6, v1, [J

    .line 109
    .line 110
    fill-array-data v6, :array_0

    .line 111
    .line 112
    .line 113
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    :cond_3
    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    add-int/2addr v3, v0

    .line 131
    goto :goto_2

    .line 132
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    :cond_5
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    instance-of p2, p3, Ljava/lang/String;

    .line 140
    .line 141
    const/16 v0, 0x22

    .line 142
    .line 143
    if-eqz p2, :cond_6

    .line 144
    .line 145
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 146
    .line 147
    new-array p2, v1, [J

    .line 148
    .line 149
    fill-array-data p2, :array_1

    .line 150
    .line 151
    .line 152
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    check-cast p3, Ljava/lang/String;

    .line 163
    .line 164
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzgyl;->zzw(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgyl;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhcn;->zza(Lcom/google/android/gms/internal/ads/zzgyl;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    return-void

    .line 179
    :cond_6
    instance-of p2, p3, Lcom/google/android/gms/internal/ads/zzgyl;

    .line 180
    .line 181
    if-eqz p2, :cond_7

    .line 182
    .line 183
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 184
    .line 185
    new-array p2, v1, [J

    .line 186
    .line 187
    fill-array-data p2, :array_2

    .line 188
    .line 189
    .line 190
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    check-cast p3, Lcom/google/android/gms/internal/ads/zzgyl;

    .line 201
    .line 202
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzhcn;->zza(Lcom/google/android/gms/internal/ads/zzgyl;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    return-void

    .line 213
    :cond_7
    instance-of p2, p3, Lcom/google/android/gms/internal/ads/zzgzu;

    .line 214
    .line 215
    if-eqz p2, :cond_8

    .line 216
    .line 217
    add-int/lit8 p2, p1, 0x2

    .line 218
    .line 219
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 220
    .line 221
    new-array v2, v1, [J

    .line 222
    .line 223
    fill-array-data v2, :array_3

    .line 224
    .line 225
    .line 226
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    check-cast p3, Lcom/google/android/gms/internal/ads/zzgzu;

    .line 237
    .line 238
    invoke-static {p3, p0, p2}, Lcom/google/android/gms/internal/ads/zzhbg;->zzd(Lcom/google/android/gms/internal/ads/zzhbe;Ljava/lang/StringBuilder;I)V

    .line 239
    .line 240
    .line 241
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 242
    .line 243
    new-array p3, v1, [J

    .line 244
    .line 245
    fill-array-data p3, :array_4

    .line 246
    .line 247
    .line 248
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object p2

    .line 255
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzhbg;->zzc(ILjava/lang/StringBuilder;)V

    .line 259
    .line 260
    .line 261
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 262
    .line 263
    new-array p2, v1, [J

    .line 264
    .line 265
    fill-array-data p2, :array_5

    .line 266
    .line 267
    .line 268
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    return-void

    .line 279
    :cond_8
    instance-of p2, p3, Ljava/util/Map$Entry;

    .line 280
    .line 281
    if-eqz p2, :cond_9

    .line 282
    .line 283
    add-int/lit8 p2, p1, 0x2

    .line 284
    .line 285
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 286
    .line 287
    new-array v2, v1, [J

    .line 288
    .line 289
    fill-array-data v2, :array_6

    .line 290
    .line 291
    .line 292
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    check-cast p3, Ljava/util/Map$Entry;

    .line 303
    .line 304
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 309
    .line 310
    new-array v3, v1, [J

    .line 311
    .line 312
    fill-array-data v3, :array_7

    .line 313
    .line 314
    .line 315
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v2

    .line 322
    invoke-static {p0, p2, v2, v0}, Lcom/google/android/gms/internal/ads/zzhbg;->zzb(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 323
    .line 324
    .line 325
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object p3

    .line 329
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 330
    .line 331
    new-array v2, v1, [J

    .line 332
    .line 333
    fill-array-data v2, :array_8

    .line 334
    .line 335
    .line 336
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    invoke-static {p0, p2, v0, p3}, Lcom/google/android/gms/internal/ads/zzhbg;->zzb(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 344
    .line 345
    .line 346
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 347
    .line 348
    new-array p3, v1, [J

    .line 349
    .line 350
    fill-array-data p3, :array_9

    .line 351
    .line 352
    .line 353
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object p2

    .line 360
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzhbg;->zzc(ILjava/lang/StringBuilder;)V

    .line 364
    .line 365
    .line 366
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 367
    .line 368
    new-array p2, v1, [J

    .line 369
    .line 370
    fill-array-data p2, :array_a

    .line 371
    .line 372
    .line 373
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object p1

    .line 380
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    return-void

    .line 384
    :cond_9
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 385
    .line 386
    new-array p2, v1, [J

    .line 387
    .line 388
    fill-array-data p2, :array_b

    .line 389
    .line 390
    .line 391
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object p1

    .line 398
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    return-void

    .line 405
    :array_0
    .array-data 8
        0x2f495a1dbfea3549L    # 6.681649390290935E-81
        -0x3f5ab1363870de1aL    # -2727.39410064019
    .end array-data

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
    :array_1
    .array-data 8
        0x30da22a672486e1bL    # 2.3112633083618063E-73
        0x4d1e757048a4d504L    # 3.132500186926088E63
    .end array-data

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
    :array_2
    .array-data 8
        0x2ce73f041cbbdea1L    # 2.2288584952495367E-92
        0x4fff603a3b974e96L    # 2.2706748051455095E77
    .end array-data

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
    :array_3
    .array-data 8
        -0x3491dc4c5b8e7704L    # -2.30942939311481E55
        -0x214badf5cf35ebafL    # -1.6239460226084516E148
    .end array-data

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
    .line 452
    .line 453
    :array_4
    .array-data 8
        -0x25e91afef7a7169fL    # -9.686129248820327E125
        0x3a3b773ee339c114L
    .end array-data

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
    :array_5
    .array-data 8
        -0x5d97fcf96479d350L    # -6.153428230537971E-143
        -0x368dd589b9625046L    # -6.48179802826714E45
    .end array-data

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
    :array_6
    .array-data 8
        0x51a3618c35bf6a4fL    # 1.882547727463617E85
        -0x6da5122f42e05575L
    .end array-data

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
    :array_7
    .array-data 8
        0x26c9d678790be94dL    # 7.817121995557112E-122
        -0x53e639886c273e1fL    # -3.0167858787045747E-96
    .end array-data

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
    :array_8
    .array-data 8
        -0x7e80ba54872681d4L
        0x4166a5e298cbc50dL    # 1.1874068774874235E7
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
    :array_9
    .array-data 8
        0x40b5428153e87b7eL    # 5442.5051865865225
        0x7af8779919acdc5fL    # 2.2739443860641332E284
    .end array-data

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
    :array_a
    .array-data 8
        0x6743d0a0baedd0d1L    # 2.758927744800967E189
        -0x4179d6ff6f90a4d3L    # -1.6510609432306866E-7
    .end array-data

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
    .line 536
    .line 537
    :array_b
    .array-data 8
        -0x72cd52d36e9f93c3L    # -4.273838731264974E-245
        -0x3edffb25fcbe0ffdL    # -524909.0063624386
    .end array-data
.end method

.method private static zzc(ILjava/lang/StringBuilder;)V
    .locals 3

    .line 1
    :goto_0
    if-lez p0, :cond_1

    .line 2
    .line 3
    const/16 v0, 0x50

    .line 4
    .line 5
    if-le p0, v0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    move v0, p0

    .line 9
    :goto_1
    sget-object v1, Lcom/google/android/gms/internal/ads/zzhbg;->zza:[C

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {p1, v1, v2, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    sub-int/2addr p0, v0

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    return-void
.end method

.method private static zzd(Lcom/google/android/gms/internal/ads/zzhbe;Ljava/lang/StringBuilder;I)V
    .locals 18

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
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x3

    .line 9
    const/4 v5, 0x2

    .line 10
    new-instance v6, Ljava/util/HashSet;

    .line 11
    .line 12
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

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
    new-instance v8, Ljava/util/TreeMap;

    .line 21
    .line 22
    invoke-direct {v8}, Ljava/util/TreeMap;-><init>()V

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
    if-ge v12, v10, :cond_4

    .line 36
    .line 37
    aget-object v13, v9, v12

    .line 38
    .line 39
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 40
    .line 41
    .line 42
    move-result v14

    .line 43
    invoke-static {v14}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 44
    .line 45
    .line 46
    move-result v14

    .line 47
    if-eqz v14, :cond_0

    .line 48
    .line 49
    goto/16 :goto_1

    .line 50
    .line 51
    :cond_0
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v14

    .line 55
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    .line 56
    .line 57
    .line 58
    move-result v14

    .line 59
    if-lt v14, v4, :cond_3

    .line 60
    .line 61
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v14

    .line 65
    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    .line 66
    .line 67
    new-array v11, v5, [J

    .line 68
    .line 69
    fill-array-data v11, :array_0

    .line 70
    .line 71
    .line 72
    invoke-direct {v15, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v11

    .line 79
    invoke-virtual {v14, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 80
    .line 81
    .line 82
    move-result v11

    .line 83
    if-eqz v11, :cond_1

    .line 84
    .line 85
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v11

    .line 89
    invoke-virtual {v6, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_1
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 94
    .line 95
    .line 96
    move-result v11

    .line 97
    invoke-static {v11}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    .line 98
    .line 99
    .line 100
    move-result v11

    .line 101
    if-eqz v11, :cond_3

    .line 102
    .line 103
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    move-result-object v11

    .line 107
    array-length v11, v11

    .line 108
    if-nez v11, :cond_3

    .line 109
    .line 110
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v11

    .line 114
    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    .line 115
    .line 116
    new-array v15, v5, [J

    .line 117
    .line 118
    fill-array-data v15, :array_1

    .line 119
    .line 120
    .line 121
    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v14

    .line 128
    invoke-virtual {v11, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 129
    .line 130
    .line 131
    move-result v11

    .line 132
    if-eqz v11, :cond_2

    .line 133
    .line 134
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v11

    .line 138
    invoke-virtual {v7, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_2
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v11

    .line 146
    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    .line 147
    .line 148
    new-array v15, v5, [J

    .line 149
    .line 150
    fill-array-data v15, :array_2

    .line 151
    .line 152
    .line 153
    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v14

    .line 160
    invoke-virtual {v11, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 161
    .line 162
    .line 163
    move-result v11

    .line 164
    if-eqz v11, :cond_3

    .line 165
    .line 166
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v11

    .line 170
    invoke-virtual {v8, v11, v13}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    :cond_3
    :goto_1
    add-int/2addr v12, v3

    .line 174
    goto/16 :goto_0

    .line 175
    .line 176
    :cond_4
    invoke-virtual {v8}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    .line 177
    .line 178
    .line 179
    move-result-object v9

    .line 180
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 181
    .line 182
    .line 183
    move-result-object v9

    .line 184
    :cond_5
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 185
    .line 186
    .line 187
    move-result v10

    .line 188
    if-eqz v10, :cond_12

    .line 189
    .line 190
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v10

    .line 194
    check-cast v10, Ljava/util/Map$Entry;

    .line 195
    .line 196
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v11

    .line 200
    check-cast v11, Ljava/lang/String;

    .line 201
    .line 202
    invoke-virtual {v11, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v11

    .line 206
    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    .line 207
    .line 208
    new-array v13, v5, [J

    .line 209
    .line 210
    fill-array-data v13, :array_3

    .line 211
    .line 212
    .line 213
    invoke-direct {v12, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v12

    .line 220
    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 221
    .line 222
    .line 223
    move-result v12

    .line 224
    if-eqz v12, :cond_6

    .line 225
    .line 226
    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    .line 227
    .line 228
    new-array v13, v4, [J

    .line 229
    .line 230
    fill-array-data v13, :array_4

    .line 231
    .line 232
    .line 233
    invoke-direct {v12, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v12

    .line 240
    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 241
    .line 242
    .line 243
    move-result v12

    .line 244
    if-nez v12, :cond_6

    .line 245
    .line 246
    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    .line 247
    .line 248
    new-array v13, v5, [J

    .line 249
    .line 250
    fill-array-data v13, :array_5

    .line 251
    .line 252
    .line 253
    invoke-direct {v12, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v12

    .line 260
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    move-result v12

    .line 264
    if-nez v12, :cond_6

    .line 265
    .line 266
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v12

    .line 270
    check-cast v12, Ljava/lang/reflect/Method;

    .line 271
    .line 272
    if-eqz v12, :cond_6

    .line 273
    .line 274
    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 275
    .line 276
    .line 277
    move-result-object v13

    .line 278
    const-class v14, Ljava/util/List;

    .line 279
    .line 280
    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    move-result v13

    .line 284
    if-eqz v13, :cond_6

    .line 285
    .line 286
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 287
    .line 288
    .line 289
    move-result v10

    .line 290
    add-int/lit8 v10, v10, -0x4

    .line 291
    .line 292
    const/4 v13, 0x0

    .line 293
    invoke-virtual {v11, v13, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v10

    .line 297
    new-array v11, v13, [Ljava/lang/Object;

    .line 298
    .line 299
    invoke-static {v12, v0, v11}, Lcom/google/android/gms/internal/ads/zzgzu;->zzaQ(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object v11

    .line 303
    invoke-static {v1, v2, v10, v11}, Lcom/google/android/gms/internal/ads/zzhbg;->zzb(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 304
    .line 305
    .line 306
    goto :goto_2

    .line 307
    :cond_6
    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    .line 308
    .line 309
    new-array v13, v5, [J

    .line 310
    .line 311
    fill-array-data v13, :array_6

    .line 312
    .line 313
    .line 314
    invoke-direct {v12, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v12

    .line 321
    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 322
    .line 323
    .line 324
    move-result v12

    .line 325
    if-eqz v12, :cond_7

    .line 326
    .line 327
    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    .line 328
    .line 329
    new-array v13, v5, [J

    .line 330
    .line 331
    fill-array-data v13, :array_7

    .line 332
    .line 333
    .line 334
    invoke-direct {v12, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v12

    .line 341
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    move-result v12

    .line 345
    if-nez v12, :cond_7

    .line 346
    .line 347
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object v12

    .line 351
    check-cast v12, Ljava/lang/reflect/Method;

    .line 352
    .line 353
    if-eqz v12, :cond_7

    .line 354
    .line 355
    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 356
    .line 357
    .line 358
    move-result-object v13

    .line 359
    const-class v14, Ljava/util/Map;

    .line 360
    .line 361
    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 362
    .line 363
    .line 364
    move-result v13

    .line 365
    if-eqz v13, :cond_7

    .line 366
    .line 367
    const-class v13, Ljava/lang/Deprecated;

    .line 368
    .line 369
    invoke-virtual {v12, v13}, Ljava/lang/reflect/AccessibleObject;->isAnnotationPresent(Ljava/lang/Class;)Z

    .line 370
    .line 371
    .line 372
    move-result v13

    .line 373
    if-nez v13, :cond_7

    .line 374
    .line 375
    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 376
    .line 377
    .line 378
    move-result v13

    .line 379
    invoke-static {v13}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    .line 380
    .line 381
    .line 382
    move-result v13

    .line 383
    if-eqz v13, :cond_7

    .line 384
    .line 385
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 386
    .line 387
    .line 388
    move-result v10

    .line 389
    add-int/lit8 v10, v10, -0x3

    .line 390
    .line 391
    const/4 v13, 0x0

    .line 392
    invoke-virtual {v11, v13, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v10

    .line 396
    new-array v11, v13, [Ljava/lang/Object;

    .line 397
    .line 398
    invoke-static {v12, v0, v11}, Lcom/google/android/gms/internal/ads/zzgzu;->zzaQ(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    .line 400
    .line 401
    move-result-object v11

    .line 402
    invoke-static {v1, v2, v10, v11}, Lcom/google/android/gms/internal/ads/zzhbg;->zzb(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 403
    .line 404
    .line 405
    goto/16 :goto_2

    .line 406
    .line 407
    :cond_7
    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    .line 408
    .line 409
    new-array v13, v5, [J

    .line 410
    .line 411
    fill-array-data v13, :array_8

    .line 412
    .line 413
    .line 414
    invoke-direct {v12, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 415
    .line 416
    .line 417
    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v12

    .line 421
    invoke-virtual {v12, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v12

    .line 425
    invoke-virtual {v6, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 426
    .line 427
    .line 428
    move-result v12

    .line 429
    if-eqz v12, :cond_5

    .line 430
    .line 431
    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    .line 432
    .line 433
    new-array v13, v5, [J

    .line 434
    .line 435
    fill-array-data v13, :array_9

    .line 436
    .line 437
    .line 438
    invoke-direct {v12, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 439
    .line 440
    .line 441
    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v12

    .line 445
    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 446
    .line 447
    .line 448
    move-result v12

    .line 449
    if-eqz v12, :cond_8

    .line 450
    .line 451
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 452
    .line 453
    .line 454
    move-result v12

    .line 455
    add-int/lit8 v12, v12, -0x5

    .line 456
    .line 457
    const/4 v13, 0x0

    .line 458
    invoke-virtual {v11, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v12

    .line 462
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v12

    .line 466
    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    .line 467
    .line 468
    new-array v14, v5, [J

    .line 469
    .line 470
    fill-array-data v14, :array_a

    .line 471
    .line 472
    .line 473
    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 474
    .line 475
    .line 476
    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v13

    .line 480
    invoke-virtual {v13, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 481
    .line 482
    .line 483
    move-result-object v12

    .line 484
    invoke-virtual {v8, v12}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    .line 485
    .line 486
    .line 487
    move-result v12

    .line 488
    if-nez v12, :cond_5

    .line 489
    .line 490
    :cond_8
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 491
    .line 492
    .line 493
    move-result-object v10

    .line 494
    check-cast v10, Ljava/lang/reflect/Method;

    .line 495
    .line 496
    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    .line 497
    .line 498
    new-array v13, v5, [J

    .line 499
    .line 500
    fill-array-data v13, :array_b

    .line 501
    .line 502
    .line 503
    invoke-direct {v12, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 504
    .line 505
    .line 506
    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 507
    .line 508
    .line 509
    move-result-object v12

    .line 510
    invoke-virtual {v12, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object v12

    .line 514
    invoke-virtual {v7, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    .line 516
    .line 517
    move-result-object v12

    .line 518
    check-cast v12, Ljava/lang/reflect/Method;

    .line 519
    .line 520
    if-eqz v10, :cond_5

    .line 521
    .line 522
    const/4 v13, 0x0

    .line 523
    new-array v14, v13, [Ljava/lang/Object;

    .line 524
    .line 525
    invoke-static {v10, v0, v14}, Lcom/google/android/gms/internal/ads/zzgzu;->zzaQ(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    .line 527
    .line 528
    move-result-object v10

    .line 529
    if-nez v12, :cond_11

    .line 530
    .line 531
    instance-of v12, v10, Ljava/lang/Boolean;

    .line 532
    .line 533
    if-eqz v12, :cond_a

    .line 534
    .line 535
    move-object v12, v10

    .line 536
    check-cast v12, Ljava/lang/Boolean;

    .line 537
    .line 538
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    .line 539
    .line 540
    .line 541
    move-result v12

    .line 542
    if-eqz v12, :cond_5

    .line 543
    .line 544
    :cond_9
    :goto_3
    const/4 v13, 0x0

    .line 545
    goto/16 :goto_5

    .line 546
    .line 547
    :cond_a
    instance-of v12, v10, Ljava/lang/Integer;

    .line 548
    .line 549
    if-eqz v12, :cond_b

    .line 550
    .line 551
    move-object v12, v10

    .line 552
    check-cast v12, Ljava/lang/Integer;

    .line 553
    .line 554
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 555
    .line 556
    .line 557
    move-result v12

    .line 558
    if-eqz v12, :cond_5

    .line 559
    .line 560
    goto :goto_3

    .line 561
    :cond_b
    instance-of v12, v10, Ljava/lang/Float;

    .line 562
    .line 563
    if-eqz v12, :cond_c

    .line 564
    .line 565
    move-object v12, v10

    .line 566
    check-cast v12, Ljava/lang/Float;

    .line 567
    .line 568
    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    .line 569
    .line 570
    .line 571
    move-result v12

    .line 572
    invoke-static {v12}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 573
    .line 574
    .line 575
    move-result v12

    .line 576
    if-eqz v12, :cond_5

    .line 577
    .line 578
    goto :goto_3

    .line 579
    :cond_c
    instance-of v12, v10, Ljava/lang/Double;

    .line 580
    .line 581
    if-eqz v12, :cond_d

    .line 582
    .line 583
    move-object v12, v10

    .line 584
    check-cast v12, Ljava/lang/Double;

    .line 585
    .line 586
    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    .line 587
    .line 588
    .line 589
    move-result-wide v12

    .line 590
    invoke-static {v12, v13}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 591
    .line 592
    .line 593
    move-result-wide v12

    .line 594
    const-wide/16 v14, 0x0

    .line 595
    .line 596
    cmp-long v17, v12, v14

    .line 597
    .line 598
    if-eqz v17, :cond_5

    .line 599
    .line 600
    goto :goto_3

    .line 601
    :cond_d
    instance-of v12, v10, Ljava/lang/String;

    .line 602
    .line 603
    if-eqz v12, :cond_e

    .line 604
    .line 605
    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    .line 606
    .line 607
    new-array v13, v3, [J

    .line 608
    .line 609
    const-wide v14, -0x1afe8e65284ee301L    # -3.534335492111937E178

    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    const/16 v16, 0x0

    .line 615
    .line 616
    aput-wide v14, v13, v16

    .line 617
    .line 618
    invoke-direct {v12, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 619
    .line 620
    .line 621
    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 622
    .line 623
    .line 624
    move-result-object v12

    .line 625
    invoke-virtual {v10, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 626
    .line 627
    .line 628
    move-result v12

    .line 629
    goto :goto_4

    .line 630
    :cond_e
    instance-of v12, v10, Lcom/google/android/gms/internal/ads/zzgyl;

    .line 631
    .line 632
    if-eqz v12, :cond_f

    .line 633
    .line 634
    sget-object v12, Lcom/google/android/gms/internal/ads/zzgyl;->zzb:Lcom/google/android/gms/internal/ads/zzgyl;

    .line 635
    .line 636
    invoke-virtual {v10, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 637
    .line 638
    .line 639
    move-result v12

    .line 640
    :goto_4
    if-nez v12, :cond_5

    .line 641
    .line 642
    goto :goto_3

    .line 643
    :cond_f
    instance-of v12, v10, Lcom/google/android/gms/internal/ads/zzhbe;

    .line 644
    .line 645
    if-eqz v12, :cond_10

    .line 646
    .line 647
    move-object v12, v10

    .line 648
    check-cast v12, Lcom/google/android/gms/internal/ads/zzhbe;

    .line 649
    .line 650
    invoke-interface {v12}, Lcom/google/android/gms/internal/ads/zzhbf;->zzbk()Lcom/google/android/gms/internal/ads/zzhbe;

    .line 651
    .line 652
    .line 653
    move-result-object v12

    .line 654
    if-eq v10, v12, :cond_5

    .line 655
    .line 656
    goto :goto_3

    .line 657
    :cond_10
    instance-of v12, v10, Ljava/lang/Enum;

    .line 658
    .line 659
    if-eqz v12, :cond_9

    .line 660
    .line 661
    move-object v12, v10

    .line 662
    check-cast v12, Ljava/lang/Enum;

    .line 663
    .line 664
    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    .line 665
    .line 666
    .line 667
    move-result v12

    .line 668
    if-eqz v12, :cond_5

    .line 669
    .line 670
    goto :goto_3

    .line 671
    :cond_11
    const/4 v13, 0x0

    .line 672
    new-array v14, v13, [Ljava/lang/Object;

    .line 673
    .line 674
    invoke-static {v12, v0, v14}, Lcom/google/android/gms/internal/ads/zzgzu;->zzaQ(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    .line 676
    .line 677
    move-result-object v12

    .line 678
    check-cast v12, Ljava/lang/Boolean;

    .line 679
    .line 680
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    .line 681
    .line 682
    .line 683
    move-result v12

    .line 684
    if-eqz v12, :cond_5

    .line 685
    .line 686
    :goto_5
    invoke-static {v1, v2, v11, v10}, Lcom/google/android/gms/internal/ads/zzhbg;->zzb(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 687
    .line 688
    .line 689
    goto/16 :goto_2

    .line 690
    .line 691
    :cond_12
    instance-of v3, v0, Lcom/google/android/gms/internal/ads/zzgzr;

    .line 692
    .line 693
    if-nez v3, :cond_14

    .line 694
    .line 695
    check-cast v0, Lcom/google/android/gms/internal/ads/zzgzu;

    .line 696
    .line 697
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzgzu;->zzc:Lcom/google/android/gms/internal/ads/zzhcq;

    .line 698
    .line 699
    if-eqz v0, :cond_13

    .line 700
    .line 701
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhcq;->zzi(Ljava/lang/StringBuilder;I)V

    .line 702
    .line 703
    .line 704
    :cond_13
    return-void

    .line 705
    :cond_14
    check-cast v0, Lcom/google/android/gms/internal/ads/zzgzr;

    .line 706
    .line 707
    const/4 v0, 0x0

    .line 708
    throw v0

    .line 709
    :array_0
    .array-data 8
        -0x38e4527a09946ff7L    # -3.5927871412708537E34
        0x297ad23b758556aeL    # 7.137729790933054E-109
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
    :array_1
    .array-data 8
        -0x53ccefd380b27250L    # -8.924763425048858E-96
        0x609aee5f48d76511L    # 2.3109604581285637E157
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
    :array_2
    .array-data 8
        -0x44d7459a4b06ece0L    # -1.0227308418479394E-23
        -0x642b3147a8cc893dL
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
    :array_3
    .array-data 8
        0x777782bec8061712L
        0x55bd9a13d8d96ad5L    # 1.0608099561421697E105
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
    :array_4
    .array-data 8
        -0x36433ad48091f225L    # -1.6424877757762073E47
        -0x7b0617dc30f9c1e6L
        -0x3484aaf991f253bcL    # -4.1886366370291725E55
    .end array-data

    .line 758
    .line 759
    .line 760
    :array_5
    .array-data 8
        -0x7bbc6234103dbd37L    # -4.025810364237121E-288
        0x71f4d7f7110cc971L    # 8.686594806207424E240
    .end array-data

    :array_6
    .array-data 8
        -0x5d99168e6a670a10L
        0x7c63a4c757a7af23L    # 1.5314696044595892E291
    .end array-data

    :array_7
    .array-data 8
        -0x5f346a8520c72f26L
        -0x749f6cc94ed8504aL    # -7.064941939908269E-254
    .end array-data

    :array_8
    .array-data 8
        -0xec64286aa69b070L
        -0x26394cd0ce65ad8eL    # -3.0011860161904444E124
    .end array-data

    :array_9
    .array-data 8
        0x3c710297435e67cfL    # 1.4753927760624677E-17
        -0x78c07d4362694689L    # -9.101267416337956E-274
    .end array-data

    :array_a
    .array-data 8
        0x5d6fe319acc4f4dL
        -0x6023fca5aa0822b7L
    .end array-data

    :array_b
    .array-data 8
        -0x3ace317c7380dfb0L    # -2.1526973076239514E25
        -0x3d496cbdd673ee00L    # -2.4821726022674E13
    .end array-data
.end method
