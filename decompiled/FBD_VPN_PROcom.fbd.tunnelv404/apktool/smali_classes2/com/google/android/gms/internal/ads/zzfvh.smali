.class final Lcom/google/android/gms/internal/ads/zzfvh;
.super Lcom/google/android/gms/internal/ads/zzfvu;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfvn;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfvq;

.field final synthetic zzc:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field final synthetic zzd:Lcom/google/android/gms/internal/ads/zzfvl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfvl;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/internal/ads/zzfvn;Lcom/google/android/gms/internal/ads/zzfvq;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfvh;->zza:Lcom/google/android/gms/internal/ads/zzfvn;

    .line 2
    .line 3
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfvh;->zzb:Lcom/google/android/gms/internal/ads/zzfvq;

    .line 4
    .line 5
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfvh;->zzc:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfvh;->zzd:Lcom/google/android/gms/internal/ads/zzfvl;

    .line 8
    .line 9
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzfvu;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x4

    .line 3
    const/4 v2, 0x3

    .line 4
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfvh;->zzd:Lcom/google/android/gms/internal/ads/zzfvl;

    .line 5
    .line 6
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzfvl;->zza:Lcom/google/android/gms/internal/ads/zzfwe;

    .line 7
    .line 8
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfwe;->zze()Landroid/os/IInterface;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    if-nez v3, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfvh;->zzd:Lcom/google/android/gms/internal/ads/zzfvl;

    .line 16
    .line 17
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzfvl;->zzb(Lcom/google/android/gms/internal/ads/zzfvl;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzfvh;->zza:Lcom/google/android/gms/internal/ads/zzfvn;

    .line 22
    .line 23
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzfvl;->zzb(Lcom/google/android/gms/internal/ads/zzfvl;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    new-instance v7, Landroid/os/Bundle;

    .line 28
    .line 29
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 30
    .line 31
    .line 32
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 33
    .line 34
    new-array v9, v2, [J

    .line 35
    .line 36
    fill-array-data v9, :array_0

    .line 37
    .line 38
    .line 39
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v8

    .line 46
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzfvn;->zze()Landroid/os/IBinder;

    .line 47
    .line 48
    .line 49
    move-result-object v9

    .line 50
    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 51
    .line 52
    .line 53
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 54
    .line 55
    new-array v9, v2, [J

    .line 56
    .line 57
    fill-array-data v9, :array_1

    .line 58
    .line 59
    .line 60
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v8

    .line 67
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzfvn;->zzf()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v9

    .line 71
    invoke-virtual {v7, v8, v9}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 75
    .line 76
    new-array v9, v2, [J

    .line 77
    .line 78
    fill-array-data v9, :array_2

    .line 79
    .line 80
    .line 81
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v8

    .line 88
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzfvn;->zzc()I

    .line 89
    .line 90
    .line 91
    move-result v9

    .line 92
    invoke-virtual {v7, v8, v9}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 93
    .line 94
    .line 95
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 96
    .line 97
    new-array v9, v1, [J

    .line 98
    .line 99
    fill-array-data v9, :array_3

    .line 100
    .line 101
    .line 102
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v8

    .line 109
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzfvn;->zza()F

    .line 110
    .line 111
    .line 112
    move-result v9

    .line 113
    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 114
    .line 115
    .line 116
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 117
    .line 118
    new-array v9, v2, [J

    .line 119
    .line 120
    fill-array-data v9, :array_4

    .line 121
    .line 122
    .line 123
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v8

    .line 130
    invoke-virtual {v7, v8, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 131
    .line 132
    .line 133
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 134
    .line 135
    new-array v9, v2, [J

    .line 136
    .line 137
    fill-array-data v9, :array_5

    .line 138
    .line 139
    .line 140
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v8

    .line 147
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzfvn;->zzd()I

    .line 148
    .line 149
    .line 150
    move-result v9

    .line 151
    invoke-virtual {v7, v8, v9}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 152
    .line 153
    .line 154
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 155
    .line 156
    new-array v9, v2, [J

    .line 157
    .line 158
    fill-array-data v9, :array_6

    .line 159
    .line 160
    .line 161
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v8

    .line 168
    const/4 v9, 0x0

    .line 169
    invoke-virtual {v7, v8, v9}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 173
    .line 174
    new-array v1, v1, [J

    .line 175
    .line 176
    fill-array-data v1, :array_7

    .line 177
    .line 178
    .line 179
    invoke-direct {v8, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    invoke-virtual {v7, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 187
    .line 188
    .line 189
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 190
    .line 191
    new-array v2, v2, [J

    .line 192
    .line 193
    fill-array-data v2, :array_8

    .line 194
    .line 195
    .line 196
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    invoke-virtual {v7, v1, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzfvn;->zzg()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    if-eqz v1, :cond_1

    .line 211
    .line 212
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 213
    .line 214
    const/4 v2, 0x2

    .line 215
    new-array v2, v2, [J

    .line 216
    .line 217
    fill-array-data v2, :array_9

    .line 218
    .line 219
    .line 220
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzfvn;->zzg()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    invoke-virtual {v7, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    goto :goto_0

    .line 235
    :catch_0
    move-exception v1

    .line 236
    goto :goto_1

    .line 237
    :cond_1
    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfvk;

    .line 238
    .line 239
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfvh;->zzd:Lcom/google/android/gms/internal/ads/zzfvl;

    .line 240
    .line 241
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfvh;->zzb:Lcom/google/android/gms/internal/ads/zzfvq;

    .line 242
    .line 243
    invoke-direct {v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzfvk;-><init>(Lcom/google/android/gms/internal/ads/zzfvl;Lcom/google/android/gms/internal/ads/zzfvq;)V

    .line 244
    .line 245
    .line 246
    invoke-interface {v3, v5, v7, v1}, Lcom/google/android/gms/internal/ads/zzfum;->zzf(Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzfuo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    .line 248
    .line 249
    return-void

    .line 250
    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfvh;->zzd:Lcom/google/android/gms/internal/ads/zzfvl;

    .line 251
    .line 252
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfvl;->zza()Lcom/google/android/gms/internal/ads/zzfvt;

    .line 253
    .line 254
    .line 255
    move-result-object v3

    .line 256
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzfvl;->zzb(Lcom/google/android/gms/internal/ads/zzfvl;)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v2

    .line 260
    const/4 v4, 0x1

    .line 261
    new-array v4, v4, [Ljava/lang/Object;

    .line 262
    .line 263
    aput-object v2, v4, v0

    .line 264
    .line 265
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 266
    .line 267
    const/4 v2, 0x5

    .line 268
    new-array v2, v2, [J

    .line 269
    .line 270
    fill-array-data v2, :array_a

    .line 271
    .line 272
    .line 273
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    invoke-virtual {v3, v1, v0, v4}, Lcom/google/android/gms/internal/ads/zzfvt;->zzb(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 281
    .line 282
    .line 283
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvh;->zzc:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 284
    .line 285
    new-instance v2, Ljava/lang/RuntimeException;

    .line 286
    .line 287
    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v0, v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    .line 291
    .line 292
    .line 293
    return-void

    .line 294
    nop

    .line 295
    :array_0
    .array-data 8
        0x42e7beba273d8ba6L    # 2.088634748713892E14
        -0x51c64f63354db7f6L    # -5.165632846395557E-86
        -0x6f9289a2309c64dcL
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
    :array_1
    .array-data 8
        -0x57c7c56f137556a1L    # -6.149121885784312E-115
        -0xd5d2d548b0e8263L
        -0x611db2c585b9081bL    # -6.508832801465733E-160
    .end array-data

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
    :array_2
    .array-data 8
        -0x6acd675076a34e3aL
        -0x9856bf69336159eL    # -5.23073750033264E262
        -0x529ffd4ff98dccfaL    # -3.929851661211654E-90
    .end array-data

    .line 328
    .line 329
    .line 330
    .line 331
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
    :array_3
    .array-data 8
        0x3c58ae599553e25bL    # 5.351850567065672E-18
        -0x228f186e5eee3964L
        0x4ec745d059b8453eL    # 3.212446883229421E71
        0xb1422def123e02aL
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
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    :array_4
    .array-data 8
        0xa03d2b8f7f60a07L
        -0x3be61006a8883bafL    # -1.1961513756472772E20
        -0x7f99808454478f12L
    .end array-data

    .line 364
    .line 365
    .line 366
    .line 367
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
        -0x63a44e046a975d82L
        -0x70ddbf6d3ec60dbfL    # -8.969527337044334E-236
        0x55f9acd7569b6170L    # 1.472148644107719E106
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
    .line 392
    .line 393
    .line 394
    .line 395
    :array_6
    .array-data 8
        0x51348572973ee866L    # 1.557267649680489E83
        0x1748ca5ce2707566L
        0x259f03ffad2fa684L    # 1.789790980421486E-127
    .end array-data

    .line 396
    .line 397
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
    :array_7
    .array-data 8
        -0x384fbc2a73f64c76L    # -2.161986307027123E37
        0x66cabcaaa657584aL    # 1.4541849919108998E187
        0x3d9c3853bf5e47e7L    # 6.416491461534591E-12
        0x67c6456e43f0a304L    # 7.93836642900598E191
    .end array-data

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
    :array_8
    .array-data 8
        0x332f7b56f750909fL    # 3.826400310700483E-62
        0x14d5e956cfe0b083L
        -0x4ab98e89ee8e8d99L    # -4.686360457870469E-52
    .end array-data

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
    .line 444
    .line 445
    .line 446
    .line 447
    :array_9
    .array-data 8
        -0x2f6f85e0d9e5a922L    # -1.221062803558204E80
        0x1d4ec2a9825a0302L
    .end array-data

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
    :array_a
    .array-data 8
        0x35f0a67bd6526f44L    # 7.120385071912225E-49
        0x729f8706f922b77cL    # 1.3454431529467538E244
        -0x2b159f7e7b64ccd4L    # -1.1538612100587617E101
        0x513735f292894596L    # 1.761358133184869E83
        -0x1efa6705ff75c3dbL    # -2.372206589108069E159
    .end array-data
.end method
