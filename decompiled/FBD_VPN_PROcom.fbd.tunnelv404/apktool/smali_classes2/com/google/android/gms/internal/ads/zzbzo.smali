.class public final Lcom/google/android/gms/internal/ads/zzbzo;
.super Lcom/google/android/gms/internal/ads/zzbzp;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/lang/Object;

.field private final zzb:Landroid/content/Context;

.field private zzc:Landroid/content/SharedPreferences;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzd:Lcom/google/android/gms/internal/ads/zzbrn;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbrn;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbzp;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbzo;->zza:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbzo;->zzb:Landroid/content/Context;

    .line 16
    .line 17
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbzo;->zzd:Lcom/google/android/gms/internal/ads/zzbrn;

    .line 18
    .line 19
    return-void
.end method

.method public static zzc(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 7

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x2

    .line 4
    new-instance v3, Lorg/json/JSONObject;

    .line 5
    .line 6
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 7
    .line 8
    .line 9
    :try_start_0
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 10
    .line 11
    new-array v5, v2, [J

    .line 12
    .line 13
    fill-array-data v5, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcei;->zza()Lcom/google/android/gms/internal/ads/zzcei;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzcei;->zza:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    .line 31
    .line 32
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 33
    .line 34
    new-array v5, v2, [J

    .line 35
    .line 36
    fill-array-data v5, :array_1

    .line 37
    .line 38
    .line 39
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    sget-object v5, Lcom/google/android/gms/internal/ads/zzbia;->zza:Lcom/google/android/gms/internal/ads/zzbhm;

    .line 47
    .line 48
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzbhm;->zze()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    .line 54
    .line 55
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 56
    .line 57
    new-array v5, v2, [J

    .line 58
    .line 59
    fill-array-data v5, :array_2

    .line 60
    .line 61
    .line 62
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 70
    .line 71
    new-array v6, v1, [J

    .line 72
    .line 73
    fill-array-data v6, :array_3

    .line 74
    .line 75
    .line 76
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    .line 85
    .line 86
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 87
    .line 88
    new-array v5, v2, [J

    .line 89
    .line 90
    fill-array-data v5, :array_4

    .line 91
    .line 92
    .line 93
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 101
    .line 102
    new-array v6, v2, [J

    .line 103
    .line 104
    fill-array-data v6, :array_5

    .line 105
    .line 106
    .line 107
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    .line 116
    .line 117
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 118
    .line 119
    new-array v5, v1, [J

    .line 120
    .line 121
    fill-array-data v5, :array_6

    .line 122
    .line 123
    .line 124
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 132
    .line 133
    new-array v2, v2, [J

    .line 134
    .line 135
    fill-array-data v2, :array_7

    .line 136
    .line 137
    .line 138
    invoke-direct {v5, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 146
    .line 147
    .line 148
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 149
    .line 150
    new-array v4, v0, [J

    .line 151
    .line 152
    fill-array-data v4, :array_8

    .line 153
    .line 154
    .line 155
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    const v4, 0xbdfcb8

    .line 163
    .line 164
    .line 165
    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 166
    .line 167
    .line 168
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 169
    .line 170
    new-array v5, v0, [J

    .line 171
    .line 172
    fill-array-data v5, :array_9

    .line 173
    .line 174
    .line 175
    invoke-direct {v2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    const v5, 0xe52c23e

    .line 183
    .line 184
    .line 185
    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 186
    .line 187
    .line 188
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 189
    .line 190
    new-array v1, v1, [J

    .line 191
    .line 192
    fill-array-data v1, :array_a

    .line 193
    .line 194
    .line 195
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 203
    .line 204
    const/4 v5, 0x6

    .line 205
    new-array v5, v5, [J

    .line 206
    .line 207
    fill-array-data v5, :array_b

    .line 208
    .line 209
    .line 210
    invoke-direct {v2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    invoke-static {p0, v2}, Lcom/google/android/gms/dynamite/DynamiteModule;->getRemoteVersion(Landroid/content/Context;Ljava/lang/String;)I

    .line 218
    .line 219
    .line 220
    move-result p0

    .line 221
    invoke-virtual {v3, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 222
    .line 223
    .line 224
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 225
    .line 226
    new-array v0, v0, [J

    .line 227
    .line 228
    fill-array-data v0, :array_c

    .line 229
    .line 230
    .line 231
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object p0

    .line 238
    invoke-virtual {v3, p0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    .line 240
    .line 241
    :catch_0
    return-object v3

    .line 242
    nop

    .line 243
    :array_0
    .array-data 8
        -0x47167f647b91b370L    # -1.5348682445250197E-34
        0x206bf67df096a239L
    .end array-data

    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    :array_1
    .array-data 8
        0x7764457711a6d405L    # 1.3072805589515865E267
        0x244393c024b4e0f9L    # 5.386931095162527E-134
    .end array-data

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
    :array_2
    .array-data 8
        -0x4c9abe4d9c907cb4L    # -4.13376007191496E-61
        -0x500769c6aa7a02faL    # -1.3270990979669405E-77
    .end array-data

    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    :array_3
    .array-data 8
        0x4d7eef8621151f83L    # 2.0361894904480515E65
        0xf33695609ad578eL    # 1.907839358487725E-235
        0x7d902cb22c98ce36L    # 6.611334377878072E296
    .end array-data

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
    :array_4
    .array-data 8
        0x643698b5d29630adL    # 5.588807449959264E174
        0x4167958cf726781L    # 5.76533792598829E-289
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
    :array_5
    .array-data 8
        0xffd864c4850db88L
        -0x4c8f0d2225876136L    # -6.592000300988209E-61
    .end array-data

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
    :array_6
    .array-data 8
        -0x3267ca0c076a762aL    # -6.374224954406338E65
        0x7aaff91e49401d08L
        0x269ee0331255f03L
    .end array-data

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
    .line 332
    .line 333
    .line 334
    .line 335
    :array_7
    .array-data 8
        -0x24e125f1fd22ab6fL    # -8.554178513958278E130
        0x14d4f04699f56146L    # 2.54759377278763E-208
    .end array-data

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
    :array_8
    .array-data 8
        0x3ea6e81b73af6f6aL    # 6.826719308699825E-7
        0x339e8833744bf2baL    # 4.75003302696454E-60
        0x1f9379622824a62aL
        -0x4dd451a853420cf7L    # -5.133731467021285E-67
    .end array-data

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
    .line 364
    .line 365
    .line 366
    .line 367
    :array_9
    .array-data 8
        -0x4c3a65867e9fd7c3L    # -2.68876782176454E-59
        -0x279f549dd64d6467L    # -5.254483409071353E117
        -0x64b05c6fe6ea21cfL
        0x5fae33aab82a32a6L    # 7.908989288830173E152
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
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    :array_a
    .array-data 8
        0x1e090cb2901c95c7L
        -0x3dc9279031d5c78bL    # -9.812048644222054E10
        0x1e032af2b1b0a5bfL    # 4.160675679491817E-164
    .end array-data

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
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    :array_b
    .array-data 8
        -0x3e941080316c8a43L    # -1.4646270455500478E7
        0x3bc927b965d16d24L    # 1.0653630033186447E-20
        -0x39b99a5d4ad46145L    # -3.54894852568306E30
        -0x65b239ac6e6016aeL
        0x1b9945b8095a5d8fL    # 9.978562611959068E-176
        -0x24d6ad5498d1e09fL    # -1.4042422952581417E131
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
    :array_c
    .array-data 8
        0xad7615720516b22L
        -0x61991ce0dd1e918eL
        -0xd94e414e18518d3L
        0x1ca3a5a93b0b2312L    # 1.01678989465622E-170
    .end array-data
.end method


# virtual methods
.method public final zza()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbzo;->zza:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbzo;->zzc:Landroid/content/SharedPreferences;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception v1

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbzo;->zzb:Landroid/content/Context;

    .line 13
    .line 14
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 15
    .line 16
    const/4 v3, 0x4

    .line 17
    new-array v3, v3, [J

    .line 18
    .line 19
    fill-array-data v3, :array_0

    .line 20
    .line 21
    .line 22
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbzo;->zzc:Landroid/content/SharedPreferences;

    .line 35
    .line 36
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbzo;->zzc:Landroid/content/SharedPreferences;

    .line 38
    .line 39
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 40
    .line 41
    const/4 v2, 0x3

    .line 42
    new-array v2, v2, [J

    .line 43
    .line 44
    fill-array-data v2, :array_1

    .line 45
    .line 46
    .line 47
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    const-wide/16 v2, 0x0

    .line 55
    .line 56
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 57
    .line 58
    .line 59
    move-result-wide v0

    .line 60
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzB()Lcom/google/android/gms/common/util/Clock;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 65
    .line 66
    .line 67
    move-result-wide v2

    .line 68
    sub-long/2addr v2, v0

    .line 69
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbia;->zzb:Lcom/google/android/gms/internal/ads/zzbhm;

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhm;->zze()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Ljava/lang/Long;

    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 78
    .line 79
    .line 80
    move-result-wide v0

    .line 81
    cmp-long v4, v2, v0

    .line 82
    .line 83
    if-gez v4, :cond_1

    .line 84
    .line 85
    const/4 v0, 0x0

    .line 86
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgen;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    return-object v0

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbzo;->zzb:Landroid/content/Context;

    .line 92
    .line 93
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbzo;->zzd:Lcom/google/android/gms/internal/ads/zzbrn;

    .line 94
    .line 95
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbzo;->zzc(Landroid/content/Context;)Lorg/json/JSONObject;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzbrn;->zzb(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbzn;

    .line 104
    .line 105
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzbzn;-><init>(Lcom/google/android/gms/internal/ads/zzbzo;)V

    .line 106
    .line 107
    .line 108
    sget-object v2, Lcom/google/android/gms/internal/ads/zzcep;->zzf:Lcom/google/android/gms/internal/ads/zzgey;

    .line 109
    .line 110
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgen;->zzm(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzfws;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    return-object v0

    .line 115
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    throw v1

    .line 117
    :array_0
    .array-data 8
        -0x60321b444a05fc79L
        -0x15f9919ba898b5d6L    # -5.494396119060008E202
        -0x7c42ce3a4f98d549L
        -0x1160c3b5e17cf2c4L    # -7.226122638449932E224
    .end array-data

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
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    :array_1
    .array-data 8
        0x431f906abd918cf3L    # 2.2211280998490208E15
        0x7e8d24b6bfcd2f62L    # 3.903427305273417E301
        0x1202e4b35ad52ea4L    # 6.53344807828694E-222
    .end array-data
.end method

.method public final synthetic zzb(Lorg/json/JSONObject;)Ljava/lang/Void;
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgc;->zza:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzb()Lcom/google/android/gms/internal/ads/zzbfw;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbzo;->zzb:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbfw;->zza(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zza()Lcom/google/android/gms/internal/ads/zzbfv;

    .line 17
    .line 18
    .line 19
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbhr;->zza:Lcom/google/android/gms/internal/ads/zzbhm;

    .line 20
    .line 21
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zza()Lcom/google/android/gms/internal/ads/zzbfv;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const/4 v2, 0x1

    .line 26
    invoke-virtual {v1, v0, v2, p1}, Lcom/google/android/gms/internal/ads/zzbfv;->zze(Landroid/content/SharedPreferences$Editor;ILorg/json/JSONObject;)V

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzb()Lcom/google/android/gms/internal/ads/zzbfw;

    .line 30
    .line 31
    .line 32
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbzo;->zzc:Landroid/content/SharedPreferences;

    .line 36
    .line 37
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzB()Lcom/google/android/gms/common/util/Clock;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 46
    .line 47
    .line 48
    move-result-wide v0

    .line 49
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 50
    .line 51
    const/4 v3, 0x3

    .line 52
    new-array v3, v3, [J

    .line 53
    .line 54
    fill-array-data v3, :array_0

    .line 55
    .line 56
    .line 57
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 69
    .line 70
    .line 71
    const/4 p1, 0x0

    .line 72
    return-object p1

    .line 73
    :array_0
    .array-data 8
        -0x73de4e206cae9b95L    # -3.089297305365692E-250
        0x382a1d69ef4fab56L    # 3.8372393379082547E-38
        0xb7b80669a7263d7L
    .end array-data
.end method
