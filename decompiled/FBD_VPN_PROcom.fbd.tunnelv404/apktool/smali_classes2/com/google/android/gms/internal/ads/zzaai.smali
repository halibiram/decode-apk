.class final Lcom/google/android/gms/internal/ads/zzaai;
.super Landroid/os/HandlerThread;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzer;

.field private zzb:Landroid/os/Handler;

.field private zzc:Ljava/lang/Error;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzd:Ljava/lang/RuntimeException;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zze:Lcom/google/android/gms/internal/ads/zzaak;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

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
    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :array_0
    .array-data 8
        0x35ef0e278f629eb0L    # 6.640278897479275E-49
        -0x68dc556fdf1cc88dL    # -3.288627343049813E-197
        0x1d059754591e0462L
        0x734ea4484f4dcbb7L    # 2.6780563793617184E247
        -0x753fd5817f026164L    # -6.729086146467828E-257
    .end array-data
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 6

    .line 1
    const/4 v0, 0x6

    .line 2
    const/4 v1, 0x4

    .line 3
    iget v2, p1, Landroid/os/Message;->what:I

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x1

    .line 7
    if-eq v2, v4, :cond_2

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    if-eq v2, p1, :cond_0

    .line 11
    .line 12
    goto/16 :goto_6

    .line 13
    .line 14
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaai;->zza:Lcom/google/android/gms/internal/ads/zzer;

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzc()V

    .line 19
    .line 20
    .line 21
    goto :goto_1

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :goto_0
    :try_start_1
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 26
    .line 27
    new-array v1, v1, [J

    .line 28
    .line 29
    fill-array-data v1, :array_0

    .line 30
    .line 31
    .line 32
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 40
    .line 41
    new-array v0, v0, [J

    .line 42
    .line 43
    fill-array-data v0, :array_1

    .line 44
    .line 45
    .line 46
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzff;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 54
    .line 55
    .line 56
    :goto_1
    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    .line 57
    .line 58
    .line 59
    return v4

    .line 60
    :catchall_1
    move-exception p1

    .line 61
    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    .line 62
    .line 63
    .line 64
    throw p1

    .line 65
    :cond_2
    :try_start_2
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 66
    .line 67
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaai;->zza:Lcom/google/android/gms/internal/ads/zzer;

    .line 68
    .line 69
    if-eqz v2, :cond_4

    .line 70
    .line 71
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzer;->zzb(I)V

    .line 72
    .line 73
    .line 74
    new-instance v2, Lcom/google/android/gms/internal/ads/zzaak;

    .line 75
    .line 76
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzaai;->zza:Lcom/google/android/gms/internal/ads/zzer;

    .line 77
    .line 78
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzer;->zza()Landroid/graphics/SurfaceTexture;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    if-eqz p1, :cond_3

    .line 83
    .line 84
    const/4 p1, 0x1

    .line 85
    goto :goto_2

    .line 86
    :cond_3
    const/4 p1, 0x0

    .line 87
    :goto_2
    invoke-direct {v2, p0, v5, p1, v3}, Lcom/google/android/gms/internal/ads/zzaak;-><init>(Lcom/google/android/gms/internal/ads/zzaai;Landroid/graphics/SurfaceTexture;ZLcom/google/android/gms/internal/ads/zzaaj;)V

    .line 88
    .line 89
    .line 90
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzaai;->zze:Lcom/google/android/gms/internal/ads/zzaak;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/google/android/gms/internal/ads/zzet; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 91
    .line 92
    monitor-enter p0

    .line 93
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 94
    .line 95
    .line 96
    monitor-exit p0

    .line 97
    goto/16 :goto_6

    .line 98
    .line 99
    :catchall_2
    move-exception p1

    .line 100
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 101
    throw p1

    .line 102
    :catchall_3
    move-exception p1

    .line 103
    goto/16 :goto_7

    .line 104
    .line 105
    :catch_0
    move-exception p1

    .line 106
    goto :goto_3

    .line 107
    :catch_1
    move-exception p1

    .line 108
    goto :goto_4

    .line 109
    :catch_2
    move-exception p1

    .line 110
    goto :goto_5

    .line 111
    :cond_4
    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/google/android/gms/internal/ads/zzet; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 112
    :goto_3
    :try_start_5
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 113
    .line 114
    new-array v1, v1, [J

    .line 115
    .line 116
    fill-array-data v1, :array_2

    .line 117
    .line 118
    .line 119
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 127
    .line 128
    new-array v0, v0, [J

    .line 129
    .line 130
    fill-array-data v0, :array_3

    .line 131
    .line 132
    .line 133
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-static {v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzff;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 141
    .line 142
    .line 143
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaai;->zzc:Ljava/lang/Error;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 144
    .line 145
    monitor-enter p0

    .line 146
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 147
    .line 148
    .line 149
    monitor-exit p0

    .line 150
    goto :goto_6

    .line 151
    :catchall_4
    move-exception p1

    .line 152
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 153
    throw p1

    .line 154
    :goto_4
    :try_start_7
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 155
    .line 156
    new-array v1, v1, [J

    .line 157
    .line 158
    fill-array-data v1, :array_4

    .line 159
    .line 160
    .line 161
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 169
    .line 170
    new-array v0, v0, [J

    .line 171
    .line 172
    fill-array-data v0, :array_5

    .line 173
    .line 174
    .line 175
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-static {v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzff;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 183
    .line 184
    .line 185
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 186
    .line 187
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 188
    .line 189
    .line 190
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaai;->zzd:Ljava/lang/RuntimeException;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 191
    .line 192
    monitor-enter p0

    .line 193
    :try_start_8
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 194
    .line 195
    .line 196
    monitor-exit p0

    .line 197
    goto :goto_6

    .line 198
    :catchall_5
    move-exception p1

    .line 199
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 200
    throw p1

    .line 201
    :goto_5
    :try_start_9
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 202
    .line 203
    new-array v1, v1, [J

    .line 204
    .line 205
    fill-array-data v1, :array_6

    .line 206
    .line 207
    .line 208
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 216
    .line 217
    new-array v0, v0, [J

    .line 218
    .line 219
    fill-array-data v0, :array_7

    .line 220
    .line 221
    .line 222
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    invoke-static {v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzff;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 230
    .line 231
    .line 232
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaai;->zzd:Ljava/lang/RuntimeException;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 233
    .line 234
    monitor-enter p0

    .line 235
    :try_start_a
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 236
    .line 237
    .line 238
    monitor-exit p0

    .line 239
    :goto_6
    return v4

    .line 240
    :catchall_6
    move-exception p1

    .line 241
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 242
    throw p1

    .line 243
    :goto_7
    monitor-enter p0

    .line 244
    :try_start_b
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 245
    .line 246
    .line 247
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 248
    throw p1

    .line 249
    :catchall_7
    move-exception p1

    .line 250
    :try_start_c
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    .line 251
    throw p1

    .line 252
    nop

    .line 253
    :array_0
    .array-data 8
        -0x415b70fec561cbd8L    # -6.126943976489644E-7
        -0x24f8cf26c28b2f4L
        -0x82f67a00caee8d4L    # -1.369868882124129E269
        -0x27e6f269af7ce73L    # -3.589997158007972E296
    .end array-data

    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    :array_1
    .array-data 8
        0x5365a5bcbbd59e20L    # 5.644359065783305E93
        -0x2a6ff3124d9406ebL    # -1.4379610956654527E104
        -0x309ae89f0a1e27e7L    # -2.9812114060496517E74
        0x6ba5f91c55d41cd8L
        0x3109bfe73c4954b3L    # 1.8217212058797779E-72
        0x27be9db4c2bd9ec0L    # 3.035223726029945E-117
    .end array-data

    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    :array_2
    .array-data 8
        -0x1d2dbdb4f51c0c95L    # -1.076697183459934E168
        0x653904b2096f533fL    # 4.055234300314516E179
        0x440a7d3e9077edfeL    # 6.108001943306422E19
        -0x7783b2101c1491dL
    .end array-data

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
    :array_3
    .array-data 8
        -0x53d489923873cfdeL    # -6.428553202836259E-96
        0xbe885fcd7b9cfa2L
        -0x20f9066a5c37edfL    # -4.299620227437985E298
        -0x5c0f98de7b4f77fL    # -7.039636984801229E280
        0x491434cbf652dcffL    # 1.1265353689497165E44
        -0x475715ed3825c72eL    # -9.371736507710306E-36
    .end array-data

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
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    :array_4
    .array-data 8
        -0x1e56ff1dfbad07c7L    # -2.8122090116456468E162
        -0x5de32838d59dbb79L
        -0x355932b0d221508fL    # -4.265618545151768E51
        0x796a786c8ddd8973L    # 7.331733014172739E276
    .end array-data

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
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    :array_5
    .array-data 8
        0x645b3fe0cc53b4b7L    # 2.6958542742164434E175
        -0x5803d744dca7891bL    # -4.466635746914584E-116
        0x2e644bef598e65dfL    # 3.26493828602528E-85
        -0x3c3239aeec596427L    # -4.29098283466016E18
        0x2e58ee57163a8658L    # 2.0052162870615773E-85
        -0x1854ef4cc9606091L    # -2.4117876087688935E191
    .end array-data

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
    :array_6
    .array-data 8
        0x73f5aecf378c5e3dL    # 3.881081500502589E250
        0x34cee5e0fd141e5cL    # 2.5202328065136996E-54
        0x5141d799aa7bd032L    # 2.7079269203516675E83
        -0x38c5413bd7a5dd1cL    # -1.3886891735482061E35
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
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    :array_7
    .array-data 8
        0x31411e7c8fdd9a0eL    # 1.937812106793848E-71
        0x5e25e97334fa7033L    # 3.4201743145071394E145
        0x654de60ddcf5bb55L    # 9.692571066964035E179
        -0x4824f6d454d6f97bL    # -1.241424090331164E-39
        0x4b5ff60618638aefL    # 1.2245034183142759E55
        0x45ca2a9914f4e23eL    # 1.6196216096862562E28
    .end array-data
.end method

.method public final zza(I)Lcom/google/android/gms/internal/ads/zzaak;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaai;->zzb:Landroid/os/Handler;

    .line 14
    .line 15
    new-instance v1, Lcom/google/android/gms/internal/ads/zzer;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzer;-><init>(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzeq;)V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzaai;->zza:Lcom/google/android/gms/internal/ads/zzer;

    .line 22
    .line 23
    monitor-enter p0

    .line 24
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaai;->zzb:Landroid/os/Handler;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    const/4 v2, 0x1

    .line 28
    invoke-virtual {v0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 33
    .line 34
    .line 35
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaai;->zze:Lcom/google/android/gms/internal/ads/zzaak;

    .line 36
    .line 37
    if-nez p1, :cond_0

    .line 38
    .line 39
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaai;->zzd:Ljava/lang/RuntimeException;

    .line 40
    .line 41
    if-nez p1, :cond_0

    .line 42
    .line 43
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaai;->zzc:Ljava/lang/Error;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    if-nez p1, :cond_0

    .line 46
    .line 47
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p1

    .line 52
    goto :goto_1

    .line 53
    :catch_0
    const/4 v1, 0x1

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56
    if-eqz v1, :cond_1

    .line 57
    .line 58
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 63
    .line 64
    .line 65
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaai;->zzd:Ljava/lang/RuntimeException;

    .line 66
    .line 67
    if-nez p1, :cond_3

    .line 68
    .line 69
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaai;->zzc:Ljava/lang/Error;

    .line 70
    .line 71
    if-nez p1, :cond_2

    .line 72
    .line 73
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaai;->zze:Lcom/google/android/gms/internal/ads/zzaak;

    .line 74
    .line 75
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    return-object p1

    .line 79
    :cond_2
    throw p1

    .line 80
    :cond_3
    throw p1

    .line 81
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 82
    throw p1
.end method

.method public final zzb()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaai;->zzb:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method
