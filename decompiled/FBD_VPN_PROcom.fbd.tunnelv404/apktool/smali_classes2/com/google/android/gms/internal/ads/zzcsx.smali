.class public final Lcom/google/android/gms/internal/ads/zzcsx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbrq;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzaym;

.field private final zzc:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaym;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcsx;->zza:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcsx;->zzb:Lcom/google/android/gms/internal/ads/zzaym;

    .line 7
    .line 8
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    new-array v0, v0, [J

    .line 12
    .line 13
    fill-array-data v0, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Landroid/os/PowerManager;

    .line 28
    .line 29
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcsx;->zzc:Landroid/os/PowerManager;

    .line 30
    .line 31
    return-void

    .line 32
    nop

    .line 33
    :array_0
    .array-data 8
        0x4c72a1e5eb98fe3fL    # 1.8713209878431627E60
        -0x35cb68525ea740f1L    # -3.009596243720865E49
    .end array-data
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzcta;)Lorg/json/JSONObject;
    .locals 13

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x2

    .line 4
    new-instance v3, Lorg/json/JSONArray;

    .line 5
    .line 6
    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v4, Lorg/json/JSONObject;

    .line 10
    .line 11
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v5, p1, Lcom/google/android/gms/internal/ads/zzcta;->zzf:Lcom/google/android/gms/internal/ads/zzayp;

    .line 15
    .line 16
    if-nez v5, :cond_0

    .line 17
    .line 18
    new-instance p1, Lorg/json/JSONObject;

    .line 19
    .line 20
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 21
    .line 22
    .line 23
    goto/16 :goto_2

    .line 24
    .line 25
    :cond_0
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzcsx;->zzb:Lcom/google/android/gms/internal/ads/zzaym;

    .line 26
    .line 27
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzaym;->zzd()Lorg/json/JSONObject;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    if-eqz v6, :cond_6

    .line 32
    .line 33
    iget-boolean v6, v5, Lcom/google/android/gms/internal/ads/zzayp;->zza:Z

    .line 34
    .line 35
    new-instance v7, Lorg/json/JSONObject;

    .line 36
    .line 37
    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 38
    .line 39
    .line 40
    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzcsx;->zzb:Lcom/google/android/gms/internal/ads/zzaym;

    .line 41
    .line 42
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 43
    .line 44
    new-array v10, v1, [J

    .line 45
    .line 46
    fill-array-data v10, :array_0

    .line 47
    .line 48
    .line 49
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v9

    .line 56
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzaym;->zzb()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v8

    .line 60
    invoke-virtual {v7, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzcsx;->zzb:Lcom/google/android/gms/internal/ads/zzaym;

    .line 65
    .line 66
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 67
    .line 68
    new-array v11, v1, [J

    .line 69
    .line 70
    fill-array-data v11, :array_1

    .line 71
    .line 72
    .line 73
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v10

    .line 80
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzaym;->zzd()Lorg/json/JSONObject;

    .line 81
    .line 82
    .line 83
    move-result-object v9

    .line 84
    invoke-virtual {v8, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    .line 86
    .line 87
    move-result-object v8

    .line 88
    iget-wide v9, p1, Lcom/google/android/gms/internal/ads/zzcta;->zzd:J

    .line 89
    .line 90
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 91
    .line 92
    new-array v12, v1, [J

    .line 93
    .line 94
    fill-array-data v12, :array_2

    .line 95
    .line 96
    .line 97
    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v11

    .line 104
    invoke-virtual {v8, v11, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 105
    .line 106
    .line 107
    move-result-object v8

    .line 108
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzcsx;->zzb:Lcom/google/android/gms/internal/ads/zzaym;

    .line 109
    .line 110
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 111
    .line 112
    new-array v11, v2, [J

    .line 113
    .line 114
    fill-array-data v11, :array_3

    .line 115
    .line 116
    .line 117
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v10

    .line 124
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzaym;->zza()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v9

    .line 128
    invoke-virtual {v8, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    .line 130
    .line 131
    move-result-object v8

    .line 132
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzcsx;->zzb:Lcom/google/android/gms/internal/ads/zzaym;

    .line 133
    .line 134
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 135
    .line 136
    new-array v11, v2, [J

    .line 137
    .line 138
    fill-array-data v11, :array_4

    .line 139
    .line 140
    .line 141
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v10

    .line 148
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzaym;->zzc()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v9

    .line 152
    invoke-virtual {v8, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    .line 154
    .line 155
    move-result-object v8

    .line 156
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 157
    .line 158
    new-array v10, v2, [J

    .line 159
    .line 160
    fill-array-data v10, :array_5

    .line 161
    .line 162
    .line 163
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v9

    .line 170
    const/4 v10, 0x0

    .line 171
    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 172
    .line 173
    .line 174
    move-result-object v8

    .line 175
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 176
    .line 177
    new-array v11, v1, [J

    .line 178
    .line 179
    fill-array-data v11, :array_6

    .line 180
    .line 181
    .line 182
    invoke-direct {v9, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v9

    .line 189
    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 190
    .line 191
    .line 192
    move-result-object v8

    .line 193
    iget-boolean v9, p1, Lcom/google/android/gms/internal/ads/zzcta;->zzb:Z

    .line 194
    .line 195
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 196
    .line 197
    new-array v11, v2, [J

    .line 198
    .line 199
    fill-array-data v11, :array_7

    .line 200
    .line 201
    .line 202
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v10

    .line 209
    invoke-virtual {v8, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 210
    .line 211
    .line 212
    move-result-object v8

    .line 213
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzcsx;->zzb:Lcom/google/android/gms/internal/ads/zzaym;

    .line 214
    .line 215
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 216
    .line 217
    new-array v11, v2, [J

    .line 218
    .line 219
    fill-array-data v11, :array_8

    .line 220
    .line 221
    .line 222
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v10

    .line 229
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzaym;->zze()Z

    .line 230
    .line 231
    .line 232
    move-result v9

    .line 233
    invoke-virtual {v8, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 234
    .line 235
    .line 236
    move-result-object v8

    .line 237
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzcsx;->zzc:Landroid/os/PowerManager;

    .line 238
    .line 239
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 240
    .line 241
    new-array v11, v1, [J

    .line 242
    .line 243
    fill-array-data v11, :array_9

    .line 244
    .line 245
    .line 246
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v10

    .line 253
    invoke-virtual {v9}, Landroid/os/PowerManager;->isInteractive()Z

    .line 254
    .line 255
    .line 256
    move-result v9

    .line 257
    invoke-virtual {v8, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 258
    .line 259
    .line 260
    move-result-object v8

    .line 261
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzr()Lcom/google/android/gms/ads/internal/util/zzac;

    .line 262
    .line 263
    .line 264
    move-result-object v9

    .line 265
    invoke-virtual {v9}, Lcom/google/android/gms/ads/internal/util/zzac;->zze()Z

    .line 266
    .line 267
    .line 268
    move-result v9

    .line 269
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 270
    .line 271
    new-array v11, v2, [J

    .line 272
    .line 273
    fill-array-data v11, :array_a

    .line 274
    .line 275
    .line 276
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v10

    .line 283
    invoke-virtual {v8, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 284
    .line 285
    .line 286
    move-result-object v8

    .line 287
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzr()Lcom/google/android/gms/ads/internal/util/zzac;

    .line 288
    .line 289
    .line 290
    move-result-object v9

    .line 291
    invoke-virtual {v9}, Lcom/google/android/gms/ads/internal/util/zzac;->zza()F

    .line 292
    .line 293
    .line 294
    move-result v9

    .line 295
    float-to-double v9, v9

    .line 296
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 297
    .line 298
    new-array v12, v1, [J

    .line 299
    .line 300
    fill-array-data v12, :array_b

    .line 301
    .line 302
    .line 303
    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v11

    .line 310
    invoke-virtual {v8, v11, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 311
    .line 312
    .line 313
    move-result-object v8

    .line 314
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzcsx;->zza:Landroid/content/Context;

    .line 315
    .line 316
    invoke-virtual {v9}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 317
    .line 318
    .line 319
    move-result-object v9

    .line 320
    invoke-static {v9}, Lcom/google/android/gms/ads/internal/util/zzac;->zzb(Landroid/content/Context;)F

    .line 321
    .line 322
    .line 323
    move-result v9

    .line 324
    float-to-double v9, v9

    .line 325
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 326
    .line 327
    new-array v12, v1, [J

    .line 328
    .line 329
    fill-array-data v12, :array_c

    .line 330
    .line 331
    .line 332
    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v11

    .line 339
    invoke-virtual {v8, v11, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 340
    .line 341
    .line 342
    sget-object v8, Lcom/google/android/gms/internal/ads/zzbgc;->zzfI:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 343
    .line 344
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 345
    .line 346
    .line 347
    move-result-object v9

    .line 348
    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object v8

    .line 352
    check-cast v8, Ljava/lang/Boolean;

    .line 353
    .line 354
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 355
    .line 356
    .line 357
    move-result v8

    .line 358
    if-eqz v8, :cond_2

    .line 359
    .line 360
    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzcsx;->zza:Landroid/content/Context;

    .line 361
    .line 362
    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 363
    .line 364
    .line 365
    move-result-object v8

    .line 366
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 367
    .line 368
    new-array v10, v2, [J

    .line 369
    .line 370
    fill-array-data v10, :array_d

    .line 371
    .line 372
    .line 373
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v9

    .line 380
    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    move-result-object v8

    .line 384
    check-cast v8, Landroid/media/AudioManager;

    .line 385
    .line 386
    if-nez v8, :cond_1

    .line 387
    .line 388
    const/4 v8, 0x0

    .line 389
    goto :goto_0

    .line 390
    :cond_1
    invoke-virtual {v8}, Landroid/media/AudioManager;->getMode()I

    .line 391
    .line 392
    .line 393
    move-result v8

    .line 394
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 395
    .line 396
    .line 397
    move-result-object v8

    .line 398
    :goto_0
    if-eqz v8, :cond_2

    .line 399
    .line 400
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 401
    .line 402
    new-array v10, v1, [J

    .line 403
    .line 404
    fill-array-data v10, :array_e

    .line 405
    .line 406
    .line 407
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v9

    .line 414
    invoke-virtual {v7, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 415
    .line 416
    .line 417
    :cond_2
    new-instance v8, Landroid/graphics/Rect;

    .line 418
    .line 419
    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 420
    .line 421
    .line 422
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzcsx;->zza:Landroid/content/Context;

    .line 423
    .line 424
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 425
    .line 426
    new-array v11, v2, [J

    .line 427
    .line 428
    fill-array-data v11, :array_f

    .line 429
    .line 430
    .line 431
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v10

    .line 438
    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 439
    .line 440
    .line 441
    move-result-object v9

    .line 442
    check-cast v9, Landroid/view/WindowManager;

    .line 443
    .line 444
    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 445
    .line 446
    .line 447
    move-result-object v9

    .line 448
    invoke-virtual {v9}, Landroid/view/Display;->getWidth()I

    .line 449
    .line 450
    .line 451
    move-result v10

    .line 452
    iput v10, v8, Landroid/graphics/Rect;->right:I

    .line 453
    .line 454
    invoke-virtual {v9}, Landroid/view/Display;->getHeight()I

    .line 455
    .line 456
    .line 457
    move-result v9

    .line 458
    iput v9, v8, Landroid/graphics/Rect;->bottom:I

    .line 459
    .line 460
    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzcsx;->zza:Landroid/content/Context;

    .line 461
    .line 462
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 463
    .line 464
    .line 465
    move-result-object v8

    .line 466
    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 467
    .line 468
    .line 469
    move-result-object v8

    .line 470
    iget v9, v5, Lcom/google/android/gms/internal/ads/zzayp;->zzb:I

    .line 471
    .line 472
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 473
    .line 474
    new-array v11, v1, [J

    .line 475
    .line 476
    fill-array-data v11, :array_10

    .line 477
    .line 478
    .line 479
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 480
    .line 481
    .line 482
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v10

    .line 486
    invoke-virtual {v7, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 487
    .line 488
    .line 489
    move-result-object v9

    .line 490
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 491
    .line 492
    new-array v11, v0, [J

    .line 493
    .line 494
    fill-array-data v11, :array_11

    .line 495
    .line 496
    .line 497
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 498
    .line 499
    .line 500
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object v10

    .line 504
    invoke-virtual {v9, v10, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 505
    .line 506
    .line 507
    move-result-object v6

    .line 508
    new-instance v9, Lorg/json/JSONObject;

    .line 509
    .line 510
    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 511
    .line 512
    .line 513
    iget-object v10, v5, Lcom/google/android/gms/internal/ads/zzayp;->zzc:Landroid/graphics/Rect;

    .line 514
    .line 515
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 516
    .line 517
    new-array v12, v2, [J

    .line 518
    .line 519
    fill-array-data v12, :array_12

    .line 520
    .line 521
    .line 522
    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 523
    .line 524
    .line 525
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    move-result-object v11

    .line 529
    iget v10, v10, Landroid/graphics/Rect;->top:I

    .line 530
    .line 531
    invoke-virtual {v9, v11, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 532
    .line 533
    .line 534
    move-result-object v9

    .line 535
    iget-object v10, v5, Lcom/google/android/gms/internal/ads/zzayp;->zzc:Landroid/graphics/Rect;

    .line 536
    .line 537
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 538
    .line 539
    new-array v12, v2, [J

    .line 540
    .line 541
    fill-array-data v12, :array_13

    .line 542
    .line 543
    .line 544
    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 545
    .line 546
    .line 547
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 548
    .line 549
    .line 550
    move-result-object v11

    .line 551
    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    .line 552
    .line 553
    invoke-virtual {v9, v11, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 554
    .line 555
    .line 556
    move-result-object v9

    .line 557
    iget-object v10, v5, Lcom/google/android/gms/internal/ads/zzayp;->zzc:Landroid/graphics/Rect;

    .line 558
    .line 559
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 560
    .line 561
    new-array v12, v2, [J

    .line 562
    .line 563
    fill-array-data v12, :array_14

    .line 564
    .line 565
    .line 566
    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 567
    .line 568
    .line 569
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 570
    .line 571
    .line 572
    move-result-object v11

    .line 573
    iget v10, v10, Landroid/graphics/Rect;->left:I

    .line 574
    .line 575
    invoke-virtual {v9, v11, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 576
    .line 577
    .line 578
    move-result-object v9

    .line 579
    iget-object v10, v5, Lcom/google/android/gms/internal/ads/zzayp;->zzc:Landroid/graphics/Rect;

    .line 580
    .line 581
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 582
    .line 583
    new-array v12, v2, [J

    .line 584
    .line 585
    fill-array-data v12, :array_15

    .line 586
    .line 587
    .line 588
    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 589
    .line 590
    .line 591
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 592
    .line 593
    .line 594
    move-result-object v11

    .line 595
    iget v10, v10, Landroid/graphics/Rect;->right:I

    .line 596
    .line 597
    invoke-virtual {v9, v11, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 598
    .line 599
    .line 600
    move-result-object v9

    .line 601
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 602
    .line 603
    new-array v11, v2, [J

    .line 604
    .line 605
    fill-array-data v11, :array_16

    .line 606
    .line 607
    .line 608
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 609
    .line 610
    .line 611
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 612
    .line 613
    .line 614
    move-result-object v10

    .line 615
    invoke-virtual {v6, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 616
    .line 617
    .line 618
    move-result-object v6

    .line 619
    new-instance v9, Lorg/json/JSONObject;

    .line 620
    .line 621
    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 622
    .line 623
    .line 624
    iget-object v10, v5, Lcom/google/android/gms/internal/ads/zzayp;->zzd:Landroid/graphics/Rect;

    .line 625
    .line 626
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 627
    .line 628
    new-array v12, v2, [J

    .line 629
    .line 630
    fill-array-data v12, :array_17

    .line 631
    .line 632
    .line 633
    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 634
    .line 635
    .line 636
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 637
    .line 638
    .line 639
    move-result-object v11

    .line 640
    iget v10, v10, Landroid/graphics/Rect;->top:I

    .line 641
    .line 642
    invoke-virtual {v9, v11, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 643
    .line 644
    .line 645
    move-result-object v9

    .line 646
    iget-object v10, v5, Lcom/google/android/gms/internal/ads/zzayp;->zzd:Landroid/graphics/Rect;

    .line 647
    .line 648
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 649
    .line 650
    new-array v12, v2, [J

    .line 651
    .line 652
    fill-array-data v12, :array_18

    .line 653
    .line 654
    .line 655
    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 656
    .line 657
    .line 658
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 659
    .line 660
    .line 661
    move-result-object v11

    .line 662
    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    .line 663
    .line 664
    invoke-virtual {v9, v11, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 665
    .line 666
    .line 667
    move-result-object v9

    .line 668
    iget-object v10, v5, Lcom/google/android/gms/internal/ads/zzayp;->zzd:Landroid/graphics/Rect;

    .line 669
    .line 670
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 671
    .line 672
    new-array v12, v2, [J

    .line 673
    .line 674
    fill-array-data v12, :array_19

    .line 675
    .line 676
    .line 677
    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 678
    .line 679
    .line 680
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 681
    .line 682
    .line 683
    move-result-object v11

    .line 684
    iget v10, v10, Landroid/graphics/Rect;->left:I

    .line 685
    .line 686
    invoke-virtual {v9, v11, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 687
    .line 688
    .line 689
    move-result-object v9

    .line 690
    iget-object v10, v5, Lcom/google/android/gms/internal/ads/zzayp;->zzd:Landroid/graphics/Rect;

    .line 691
    .line 692
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 693
    .line 694
    new-array v12, v2, [J

    .line 695
    .line 696
    fill-array-data v12, :array_1a

    .line 697
    .line 698
    .line 699
    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 700
    .line 701
    .line 702
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 703
    .line 704
    .line 705
    move-result-object v11

    .line 706
    iget v10, v10, Landroid/graphics/Rect;->right:I

    .line 707
    .line 708
    invoke-virtual {v9, v11, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 709
    .line 710
    .line 711
    move-result-object v9

    .line 712
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 713
    .line 714
    new-array v11, v2, [J

    .line 715
    .line 716
    fill-array-data v11, :array_1b

    .line 717
    .line 718
    .line 719
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 720
    .line 721
    .line 722
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 723
    .line 724
    .line 725
    move-result-object v10

    .line 726
    invoke-virtual {v6, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 727
    .line 728
    .line 729
    move-result-object v6

    .line 730
    new-instance v9, Lorg/json/JSONObject;

    .line 731
    .line 732
    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 733
    .line 734
    .line 735
    iget-object v10, v5, Lcom/google/android/gms/internal/ads/zzayp;->zze:Landroid/graphics/Rect;

    .line 736
    .line 737
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 738
    .line 739
    new-array v12, v2, [J

    .line 740
    .line 741
    fill-array-data v12, :array_1c

    .line 742
    .line 743
    .line 744
    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 745
    .line 746
    .line 747
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 748
    .line 749
    .line 750
    move-result-object v11

    .line 751
    iget v10, v10, Landroid/graphics/Rect;->top:I

    .line 752
    .line 753
    invoke-virtual {v9, v11, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 754
    .line 755
    .line 756
    move-result-object v9

    .line 757
    iget-object v10, v5, Lcom/google/android/gms/internal/ads/zzayp;->zze:Landroid/graphics/Rect;

    .line 758
    .line 759
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 760
    .line 761
    new-array v12, v2, [J

    .line 762
    .line 763
    fill-array-data v12, :array_1d

    .line 764
    .line 765
    .line 766
    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 767
    .line 768
    .line 769
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 770
    .line 771
    .line 772
    move-result-object v11

    .line 773
    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    .line 774
    .line 775
    invoke-virtual {v9, v11, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 776
    .line 777
    .line 778
    move-result-object v9

    .line 779
    iget-object v10, v5, Lcom/google/android/gms/internal/ads/zzayp;->zze:Landroid/graphics/Rect;

    .line 780
    .line 781
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 782
    .line 783
    new-array v12, v2, [J

    .line 784
    .line 785
    fill-array-data v12, :array_1e

    .line 786
    .line 787
    .line 788
    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 789
    .line 790
    .line 791
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 792
    .line 793
    .line 794
    move-result-object v11

    .line 795
    iget v10, v10, Landroid/graphics/Rect;->left:I

    .line 796
    .line 797
    invoke-virtual {v9, v11, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 798
    .line 799
    .line 800
    move-result-object v9

    .line 801
    iget-object v10, v5, Lcom/google/android/gms/internal/ads/zzayp;->zze:Landroid/graphics/Rect;

    .line 802
    .line 803
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 804
    .line 805
    new-array v12, v2, [J

    .line 806
    .line 807
    fill-array-data v12, :array_1f

    .line 808
    .line 809
    .line 810
    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 811
    .line 812
    .line 813
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 814
    .line 815
    .line 816
    move-result-object v11

    .line 817
    iget v10, v10, Landroid/graphics/Rect;->right:I

    .line 818
    .line 819
    invoke-virtual {v9, v11, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 820
    .line 821
    .line 822
    move-result-object v9

    .line 823
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 824
    .line 825
    new-array v11, v1, [J

    .line 826
    .line 827
    fill-array-data v11, :array_20

    .line 828
    .line 829
    .line 830
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 831
    .line 832
    .line 833
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 834
    .line 835
    .line 836
    move-result-object v10

    .line 837
    invoke-virtual {v6, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 838
    .line 839
    .line 840
    move-result-object v6

    .line 841
    iget-boolean v9, v5, Lcom/google/android/gms/internal/ads/zzayp;->zzf:Z

    .line 842
    .line 843
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 844
    .line 845
    new-array v11, v0, [J

    .line 846
    .line 847
    fill-array-data v11, :array_21

    .line 848
    .line 849
    .line 850
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 851
    .line 852
    .line 853
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 854
    .line 855
    .line 856
    move-result-object v10

    .line 857
    invoke-virtual {v6, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 858
    .line 859
    .line 860
    move-result-object v6

    .line 861
    new-instance v9, Lorg/json/JSONObject;

    .line 862
    .line 863
    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 864
    .line 865
    .line 866
    iget-object v10, v5, Lcom/google/android/gms/internal/ads/zzayp;->zzg:Landroid/graphics/Rect;

    .line 867
    .line 868
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 869
    .line 870
    new-array v12, v2, [J

    .line 871
    .line 872
    fill-array-data v12, :array_22

    .line 873
    .line 874
    .line 875
    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 876
    .line 877
    .line 878
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 879
    .line 880
    .line 881
    move-result-object v11

    .line 882
    iget v10, v10, Landroid/graphics/Rect;->top:I

    .line 883
    .line 884
    invoke-virtual {v9, v11, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 885
    .line 886
    .line 887
    move-result-object v9

    .line 888
    iget-object v10, v5, Lcom/google/android/gms/internal/ads/zzayp;->zzg:Landroid/graphics/Rect;

    .line 889
    .line 890
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 891
    .line 892
    new-array v12, v2, [J

    .line 893
    .line 894
    fill-array-data v12, :array_23

    .line 895
    .line 896
    .line 897
    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 898
    .line 899
    .line 900
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 901
    .line 902
    .line 903
    move-result-object v11

    .line 904
    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    .line 905
    .line 906
    invoke-virtual {v9, v11, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 907
    .line 908
    .line 909
    move-result-object v9

    .line 910
    iget-object v10, v5, Lcom/google/android/gms/internal/ads/zzayp;->zzg:Landroid/graphics/Rect;

    .line 911
    .line 912
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 913
    .line 914
    new-array v12, v2, [J

    .line 915
    .line 916
    fill-array-data v12, :array_24

    .line 917
    .line 918
    .line 919
    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 920
    .line 921
    .line 922
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 923
    .line 924
    .line 925
    move-result-object v11

    .line 926
    iget v10, v10, Landroid/graphics/Rect;->left:I

    .line 927
    .line 928
    invoke-virtual {v9, v11, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 929
    .line 930
    .line 931
    move-result-object v9

    .line 932
    iget-object v10, v5, Lcom/google/android/gms/internal/ads/zzayp;->zzg:Landroid/graphics/Rect;

    .line 933
    .line 934
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 935
    .line 936
    new-array v12, v2, [J

    .line 937
    .line 938
    fill-array-data v12, :array_25

    .line 939
    .line 940
    .line 941
    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 942
    .line 943
    .line 944
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 945
    .line 946
    .line 947
    move-result-object v11

    .line 948
    iget v10, v10, Landroid/graphics/Rect;->right:I

    .line 949
    .line 950
    invoke-virtual {v9, v11, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 951
    .line 952
    .line 953
    move-result-object v9

    .line 954
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 955
    .line 956
    new-array v11, v1, [J

    .line 957
    .line 958
    fill-array-data v11, :array_26

    .line 959
    .line 960
    .line 961
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 962
    .line 963
    .line 964
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 965
    .line 966
    .line 967
    move-result-object v10

    .line 968
    invoke-virtual {v6, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 969
    .line 970
    .line 971
    move-result-object v6

    .line 972
    iget-boolean v9, v5, Lcom/google/android/gms/internal/ads/zzayp;->zzh:Z

    .line 973
    .line 974
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 975
    .line 976
    new-array v11, v0, [J

    .line 977
    .line 978
    fill-array-data v11, :array_27

    .line 979
    .line 980
    .line 981
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 982
    .line 983
    .line 984
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 985
    .line 986
    .line 987
    move-result-object v10

    .line 988
    invoke-virtual {v6, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 989
    .line 990
    .line 991
    move-result-object v6

    .line 992
    new-instance v9, Lorg/json/JSONObject;

    .line 993
    .line 994
    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 995
    .line 996
    .line 997
    iget-object v10, v5, Lcom/google/android/gms/internal/ads/zzayp;->zzi:Landroid/graphics/Rect;

    .line 998
    .line 999
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 1000
    .line 1001
    new-array v12, v2, [J

    .line 1002
    .line 1003
    fill-array-data v12, :array_28

    .line 1004
    .line 1005
    .line 1006
    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 1007
    .line 1008
    .line 1009
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 1010
    .line 1011
    .line 1012
    move-result-object v11

    .line 1013
    iget v10, v10, Landroid/graphics/Rect;->top:I

    .line 1014
    .line 1015
    invoke-virtual {v9, v11, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1016
    .line 1017
    .line 1018
    move-result-object v9

    .line 1019
    iget-object v10, v5, Lcom/google/android/gms/internal/ads/zzayp;->zzi:Landroid/graphics/Rect;

    .line 1020
    .line 1021
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 1022
    .line 1023
    new-array v12, v2, [J

    .line 1024
    .line 1025
    fill-array-data v12, :array_29

    .line 1026
    .line 1027
    .line 1028
    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 1029
    .line 1030
    .line 1031
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 1032
    .line 1033
    .line 1034
    move-result-object v11

    .line 1035
    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    .line 1036
    .line 1037
    invoke-virtual {v9, v11, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v9

    .line 1041
    iget-object v10, v5, Lcom/google/android/gms/internal/ads/zzayp;->zzi:Landroid/graphics/Rect;

    .line 1042
    .line 1043
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 1044
    .line 1045
    new-array v12, v2, [J

    .line 1046
    .line 1047
    fill-array-data v12, :array_2a

    .line 1048
    .line 1049
    .line 1050
    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 1051
    .line 1052
    .line 1053
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 1054
    .line 1055
    .line 1056
    move-result-object v11

    .line 1057
    iget v10, v10, Landroid/graphics/Rect;->left:I

    .line 1058
    .line 1059
    invoke-virtual {v9, v11, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1060
    .line 1061
    .line 1062
    move-result-object v9

    .line 1063
    iget-object v10, v5, Lcom/google/android/gms/internal/ads/zzayp;->zzi:Landroid/graphics/Rect;

    .line 1064
    .line 1065
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 1066
    .line 1067
    new-array v12, v2, [J

    .line 1068
    .line 1069
    fill-array-data v12, :array_2b

    .line 1070
    .line 1071
    .line 1072
    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 1073
    .line 1074
    .line 1075
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 1076
    .line 1077
    .line 1078
    move-result-object v11

    .line 1079
    iget v10, v10, Landroid/graphics/Rect;->right:I

    .line 1080
    .line 1081
    invoke-virtual {v9, v11, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1082
    .line 1083
    .line 1084
    move-result-object v9

    .line 1085
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 1086
    .line 1087
    new-array v11, v2, [J

    .line 1088
    .line 1089
    fill-array-data v11, :array_2c

    .line 1090
    .line 1091
    .line 1092
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 1093
    .line 1094
    .line 1095
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 1096
    .line 1097
    .line 1098
    move-result-object v10

    .line 1099
    invoke-virtual {v6, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1100
    .line 1101
    .line 1102
    move-result-object v6

    .line 1103
    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    .line 1104
    .line 1105
    float-to-double v8, v8

    .line 1106
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 1107
    .line 1108
    new-array v11, v1, [J

    .line 1109
    .line 1110
    fill-array-data v11, :array_2d

    .line 1111
    .line 1112
    .line 1113
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 1114
    .line 1115
    .line 1116
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 1117
    .line 1118
    .line 1119
    move-result-object v10

    .line 1120
    invoke-virtual {v6, v10, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1121
    .line 1122
    .line 1123
    iget-boolean v6, p1, Lcom/google/android/gms/internal/ads/zzcta;->zza:Z

    .line 1124
    .line 1125
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 1126
    .line 1127
    new-array v9, v1, [J

    .line 1128
    .line 1129
    fill-array-data v9, :array_2e

    .line 1130
    .line 1131
    .line 1132
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 1133
    .line 1134
    .line 1135
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 1136
    .line 1137
    .line 1138
    move-result-object v8

    .line 1139
    invoke-virtual {v7, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1140
    .line 1141
    .line 1142
    sget-object v6, Lcom/google/android/gms/internal/ads/zzbgc;->zzbp:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 1143
    .line 1144
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 1145
    .line 1146
    .line 1147
    move-result-object v8

    .line 1148
    invoke-virtual {v8, v6}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 1149
    .line 1150
    .line 1151
    move-result-object v6

    .line 1152
    check-cast v6, Ljava/lang/Boolean;

    .line 1153
    .line 1154
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1155
    .line 1156
    .line 1157
    move-result v6

    .line 1158
    if-eqz v6, :cond_4

    .line 1159
    .line 1160
    new-instance v6, Lorg/json/JSONArray;

    .line 1161
    .line 1162
    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 1163
    .line 1164
    .line 1165
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzayp;->zzk:Ljava/util/List;

    .line 1166
    .line 1167
    if-eqz v5, :cond_3

    .line 1168
    .line 1169
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1170
    .line 1171
    .line 1172
    move-result-object v5

    .line 1173
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1174
    .line 1175
    .line 1176
    move-result v8

    .line 1177
    if-eqz v8, :cond_3

    .line 1178
    .line 1179
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1180
    .line 1181
    .line 1182
    move-result-object v8

    .line 1183
    check-cast v8, Landroid/graphics/Rect;

    .line 1184
    .line 1185
    new-instance v9, Lorg/json/JSONObject;

    .line 1186
    .line 1187
    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 1188
    .line 1189
    .line 1190
    iget v10, v8, Landroid/graphics/Rect;->top:I

    .line 1191
    .line 1192
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 1193
    .line 1194
    new-array v12, v2, [J

    .line 1195
    .line 1196
    fill-array-data v12, :array_2f

    .line 1197
    .line 1198
    .line 1199
    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 1200
    .line 1201
    .line 1202
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 1203
    .line 1204
    .line 1205
    move-result-object v11

    .line 1206
    invoke-virtual {v9, v11, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1207
    .line 1208
    .line 1209
    move-result-object v9

    .line 1210
    iget v10, v8, Landroid/graphics/Rect;->bottom:I

    .line 1211
    .line 1212
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 1213
    .line 1214
    new-array v12, v2, [J

    .line 1215
    .line 1216
    fill-array-data v12, :array_30

    .line 1217
    .line 1218
    .line 1219
    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 1220
    .line 1221
    .line 1222
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 1223
    .line 1224
    .line 1225
    move-result-object v11

    .line 1226
    invoke-virtual {v9, v11, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1227
    .line 1228
    .line 1229
    move-result-object v9

    .line 1230
    iget v10, v8, Landroid/graphics/Rect;->left:I

    .line 1231
    .line 1232
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 1233
    .line 1234
    new-array v12, v2, [J

    .line 1235
    .line 1236
    fill-array-data v12, :array_31

    .line 1237
    .line 1238
    .line 1239
    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 1240
    .line 1241
    .line 1242
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 1243
    .line 1244
    .line 1245
    move-result-object v11

    .line 1246
    invoke-virtual {v9, v11, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1247
    .line 1248
    .line 1249
    move-result-object v9

    .line 1250
    iget v8, v8, Landroid/graphics/Rect;->right:I

    .line 1251
    .line 1252
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 1253
    .line 1254
    new-array v11, v2, [J

    .line 1255
    .line 1256
    fill-array-data v11, :array_32

    .line 1257
    .line 1258
    .line 1259
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 1260
    .line 1261
    .line 1262
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 1263
    .line 1264
    .line 1265
    move-result-object v10

    .line 1266
    invoke-virtual {v9, v10, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1267
    .line 1268
    .line 1269
    move-result-object v8

    .line 1270
    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1271
    .line 1272
    .line 1273
    goto :goto_1

    .line 1274
    :cond_3
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 1275
    .line 1276
    new-array v0, v0, [J

    .line 1277
    .line 1278
    fill-array-data v0, :array_33

    .line 1279
    .line 1280
    .line 1281
    invoke-direct {v5, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 1282
    .line 1283
    .line 1284
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 1285
    .line 1286
    .line 1287
    move-result-object v0

    .line 1288
    invoke-virtual {v7, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1289
    .line 1290
    .line 1291
    :cond_4
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcta;->zze:Ljava/lang/String;

    .line 1292
    .line 1293
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1294
    .line 1295
    .line 1296
    move-result p1

    .line 1297
    if-nez p1, :cond_5

    .line 1298
    .line 1299
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 1300
    .line 1301
    new-array v0, v1, [J

    .line 1302
    .line 1303
    fill-array-data v0, :array_34

    .line 1304
    .line 1305
    .line 1306
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 1307
    .line 1308
    .line 1309
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 1310
    .line 1311
    .line 1312
    move-result-object p1

    .line 1313
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 1314
    .line 1315
    new-array v1, v2, [J

    .line 1316
    .line 1317
    fill-array-data v1, :array_35

    .line 1318
    .line 1319
    .line 1320
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 1321
    .line 1322
    .line 1323
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 1324
    .line 1325
    .line 1326
    move-result-object v0

    .line 1327
    invoke-virtual {v7, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1328
    .line 1329
    .line 1330
    :cond_5
    move-object p1, v7

    .line 1331
    :goto_2
    invoke-virtual {v3, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1332
    .line 1333
    .line 1334
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 1335
    .line 1336
    new-array v0, v2, [J

    .line 1337
    .line 1338
    fill-array-data v0, :array_36

    .line 1339
    .line 1340
    .line 1341
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 1342
    .line 1343
    .line 1344
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 1345
    .line 1346
    .line 1347
    move-result-object p1

    .line 1348
    invoke-virtual {v4, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1349
    .line 1350
    .line 1351
    return-object v4

    .line 1352
    :cond_6
    new-instance p1, Lorg/json/JSONException;

    .line 1353
    .line 1354
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 1355
    .line 1356
    const/4 v1, 0x5

    .line 1357
    new-array v1, v1, [J

    .line 1358
    .line 1359
    fill-array-data v1, :array_37

    .line 1360
    .line 1361
    .line 1362
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 1363
    .line 1364
    .line 1365
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 1366
    .line 1367
    .line 1368
    move-result-object v0

    .line 1369
    invoke-direct {p1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    .line 1370
    .line 1371
    .line 1372
    throw p1

    .line 1373
    :array_0
    .array-data 8
        0x1801698616961948L    # 4.770528466367979E-193
        -0x4514b31c9cdad7eaL    # -7.0569736919762935E-25
        0x4f77870f297d1a93L    # 6.65114032243012E74
    .end array-data

    .line 1374
    .line 1375
    .line 1376
    .line 1377
    .line 1378
    .line 1379
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
    :array_1
    .array-data 8
        0x3ff09dfa43775f5fL    # 1.0385687480356507
        -0x773b834199977597L    # -1.985537779031353E-266
        -0xd72929569db4ff8L    # -6.279116121758151E243
    .end array-data

    .line 1390
    .line 1391
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
    .line 1404
    .line 1405
    :array_2
    .array-data 8
        0x5bd324453f01504aL
        -0x26e60a5c1c5ad4e1L    # -1.6758499586405495E121
        0x1f6df95ad1b31aaaL
    .end array-data

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
    .line 1416
    .line 1417
    .line 1418
    .line 1419
    .line 1420
    .line 1421
    :array_3
    .array-data 8
        0x439d5c7b432cd819L    # 5.2892536335066886E17
        0xb2b6097af9fa199L
    .end array-data

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
    .line 1432
    .line 1433
    :array_4
    .array-data 8
        0x41d124f98ce86eb2L    # 1.1505434116317563E9
        -0x32c21ec56e4e1b96L    # -1.2291836744866016E64
    .end array-data

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
    :array_5
    .array-data 8
        -0x32ebd9ce6294ff65L    # -2.0722244675376237E63
        -0x28d68fb8a5dda6a8L    # -7.647181941335442E111
    .end array-data

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
    .line 1456
    .line 1457
    :array_6
    .array-data 8
        -0x4c88dbfbd2f93725L    # -9.000303714888953E-61
        -0x7563abe44a52cdd9L
        -0x2184ba3f8019d175L    # -1.362204627095613E147
    .end array-data

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
    .line 1468
    .line 1469
    .line 1470
    .line 1471
    .line 1472
    .line 1473
    :array_7
    .array-data 8
        -0x26942c0217a8c53dL    # -5.748727195450522E122
        -0x744ae6226e20fb8dL    # -2.878110368712866E-252
    .end array-data

    .line 1474
    .line 1475
    .line 1476
    .line 1477
    .line 1478
    .line 1479
    .line 1480
    .line 1481
    .line 1482
    .line 1483
    .line 1484
    .line 1485
    :array_8
    .array-data 8
        -0x4604a87aa3938ed2L    # -2.1568939164229175E-29
        0x198bcd1e7c4c869dL
    .end array-data

    .line 1486
    .line 1487
    .line 1488
    .line 1489
    .line 1490
    .line 1491
    .line 1492
    .line 1493
    .line 1494
    .line 1495
    .line 1496
    .line 1497
    :array_9
    .array-data 8
        -0x6e24d15a0f8a507bL
        0x776584f83b6bf799L    # 1.387767096437928E267
        -0x5b1c31aadd2e6b90L    # -5.580696122050475E-131
    .end array-data

    .line 1498
    .line 1499
    .line 1500
    .line 1501
    .line 1502
    .line 1503
    .line 1504
    .line 1505
    .line 1506
    .line 1507
    .line 1508
    .line 1509
    .line 1510
    .line 1511
    .line 1512
    .line 1513
    :array_a
    .array-data 8
        -0x4e4368087eff7e2fL    # -4.1429543949137205E-69
        -0x716b6da1f50fb130L
    .end array-data

    .line 1514
    .line 1515
    .line 1516
    .line 1517
    .line 1518
    .line 1519
    .line 1520
    .line 1521
    .line 1522
    .line 1523
    .line 1524
    .line 1525
    :array_b
    .array-data 8
        -0x558c3518967462c1L
        0x214ab71dba5bcf51L    # 2.611633068002791E-148
        -0x3dda69e95f47a7e6L    # -4.635618927617207E10
    .end array-data

    .line 1526
    .line 1527
    .line 1528
    .line 1529
    .line 1530
    .line 1531
    .line 1532
    .line 1533
    .line 1534
    .line 1535
    .line 1536
    .line 1537
    .line 1538
    .line 1539
    .line 1540
    .line 1541
    :array_c
    .array-data 8
        -0x4689ca73ccf85b0L
        -0x4b2e43145d587640L    # -2.8936414556168715E-54
        -0x177583b6c3940873L    # -3.866831575291978E195
    .end array-data

    .line 1542
    .line 1543
    .line 1544
    .line 1545
    .line 1546
    .line 1547
    .line 1548
    .line 1549
    .line 1550
    .line 1551
    .line 1552
    .line 1553
    .line 1554
    .line 1555
    .line 1556
    .line 1557
    :array_d
    .array-data 8
        -0x5f97f6c4b0bd2eL
        -0x48bcb154ee0cb6c6L    # -1.7315383545232592E-42
    .end array-data

    .line 1558
    .line 1559
    .line 1560
    .line 1561
    .line 1562
    .line 1563
    .line 1564
    .line 1565
    .line 1566
    .line 1567
    .line 1568
    .line 1569
    :array_e
    .array-data 8
        -0x4c05c7b86c8f889fL    # -2.6106636537248823E-58
        -0x36df67995636d112L    # -1.8504396256183913E44
        0x4348998620c63768L    # 1.384840159116872E16
    .end array-data

    .line 1570
    .line 1571
    .line 1572
    .line 1573
    .line 1574
    .line 1575
    .line 1576
    .line 1577
    .line 1578
    .line 1579
    .line 1580
    .line 1581
    .line 1582
    .line 1583
    .line 1584
    .line 1585
    :array_f
    .array-data 8
        -0x7bf75a41532acbc9L
        -0x7916040248ff4f55L
    .end array-data

    .line 1586
    .line 1587
    .line 1588
    .line 1589
    .line 1590
    .line 1591
    .line 1592
    .line 1593
    .line 1594
    .line 1595
    .line 1596
    .line 1597
    :array_10
    .array-data 8
        0x2a3cce5772cbbb3fL    # 3.139965035969479E-105
        -0x5f0646a13c12f631L    # -7.85854953949436E-150
        0x287d37a64961cf68L
    .end array-data

    .line 1598
    .line 1599
    .line 1600
    .line 1601
    .line 1602
    .line 1603
    .line 1604
    .line 1605
    .line 1606
    .line 1607
    .line 1608
    .line 1609
    .line 1610
    .line 1611
    .line 1612
    .line 1613
    :array_11
    .array-data 8
        0x500a58812efd010eL    # 3.813282623022768E77
        0x140117b22eb16cc6L
        0x3bac8facd9f2b7b3L    # 3.024037985620604E-21
        -0x2bbf4839c5bf686fL    # -7.141830060759044E97
    .end array-data

    .line 1614
    .line 1615
    .line 1616
    .line 1617
    .line 1618
    .line 1619
    .line 1620
    .line 1621
    .line 1622
    .line 1623
    .line 1624
    .line 1625
    .line 1626
    .line 1627
    .line 1628
    .line 1629
    .line 1630
    .line 1631
    .line 1632
    .line 1633
    :array_12
    .array-data 8
        0x15594c8c11eea3a0L    # 7.880005864295003E-206
        -0x6db5b25686e5733eL
    .end array-data

    .line 1634
    .line 1635
    .line 1636
    .line 1637
    .line 1638
    .line 1639
    .line 1640
    .line 1641
    .line 1642
    .line 1643
    .line 1644
    .line 1645
    :array_13
    .array-data 8
        0x2a93aab2d1364be2L    # 1.37200281856553E-103
        -0x33eaab4e8d55d1dcL    # -3.347395164578684E58
    .end array-data

    .line 1646
    .line 1647
    .line 1648
    .line 1649
    .line 1650
    .line 1651
    .line 1652
    .line 1653
    .line 1654
    .line 1655
    .line 1656
    .line 1657
    :array_14
    .array-data 8
        -0x2e338d675cb5d195L    # -1.1052869666565959E86
        -0x54ba0ec064294136L    # -3.134982508207731E-100
    .end array-data

    .line 1658
    .line 1659
    .line 1660
    .line 1661
    .line 1662
    .line 1663
    .line 1664
    .line 1665
    .line 1666
    .line 1667
    .line 1668
    .line 1669
    :array_15
    .array-data 8
        -0x44d9c3e13d13a514L    # -9.196116097963528E-24
        0x155e3ae3ee0f154aL    # 9.415897074705226E-206
    .end array-data

    .line 1670
    .line 1671
    .line 1672
    .line 1673
    .line 1674
    .line 1675
    .line 1676
    .line 1677
    .line 1678
    .line 1679
    .line 1680
    .line 1681
    :array_16
    .array-data 8
        0x4799c3c342d62268L    # 8.561789536810003E36
        -0x63a8cb0096d76f5aL    # -3.753201728687126E-172
    .end array-data

    .line 1682
    .line 1683
    .line 1684
    .line 1685
    .line 1686
    .line 1687
    .line 1688
    .line 1689
    .line 1690
    .line 1691
    .line 1692
    .line 1693
    :array_17
    .array-data 8
        -0x4f2c489d6e5c8e1dL    # -1.7436027169081848E-73
        0xd121f4a2918b8aL
    .end array-data

    .line 1694
    .line 1695
    .line 1696
    .line 1697
    .line 1698
    .line 1699
    .line 1700
    .line 1701
    .line 1702
    .line 1703
    .line 1704
    .line 1705
    :array_18
    .array-data 8
        0x18079e7e17595018L    # 6.471073674881339E-193
        -0x360b5cb60f7d882cL    # -1.885140446750403E48
    .end array-data

    .line 1706
    .line 1707
    .line 1708
    .line 1709
    .line 1710
    .line 1711
    .line 1712
    .line 1713
    .line 1714
    .line 1715
    .line 1716
    .line 1717
    :array_19
    .array-data 8
        -0x37f257d8bf7ca29dL    # -1.2614628440073212E39
        0x4b926c8891a98ffcL    # 1.1293853929924847E56
    .end array-data

    .line 1718
    .line 1719
    .line 1720
    .line 1721
    .line 1722
    .line 1723
    .line 1724
    .line 1725
    .line 1726
    .line 1727
    .line 1728
    .line 1729
    :array_1a
    .array-data 8
        0x485e2a087854996cL    # 4.1057370249671154E40
        0x56d6b1e7c99e1642L
    .end array-data

    .line 1730
    .line 1731
    .line 1732
    .line 1733
    .line 1734
    .line 1735
    .line 1736
    .line 1737
    .line 1738
    .line 1739
    .line 1740
    .line 1741
    :array_1b
    .array-data 8
        0x1fb3fcb749905cc2L    # 5.823091293493188E-156
        -0x7d9094afdce938e0L    # -6.00522514254862E-297
    .end array-data

    .line 1742
    .line 1743
    .line 1744
    .line 1745
    .line 1746
    .line 1747
    .line 1748
    .line 1749
    .line 1750
    .line 1751
    .line 1752
    .line 1753
    :array_1c
    .array-data 8
        0x7536c2c1c2b21e07L    # 4.2719214171845E256
        0x7c0855577123f3e1L    # 2.9642035979122995E289
    .end array-data

    .line 1754
    .line 1755
    .line 1756
    .line 1757
    .line 1758
    .line 1759
    .line 1760
    .line 1761
    .line 1762
    .line 1763
    .line 1764
    .line 1765
    :array_1d
    .array-data 8
        -0x1cba7d16fe553dfbL    # -1.6236618830119508E170
        -0x124847e10e8c3cc4L    # -3.3491707228196835E220
    .end array-data

    .line 1766
    .line 1767
    .line 1768
    .line 1769
    .line 1770
    .line 1771
    .line 1772
    .line 1773
    .line 1774
    .line 1775
    .line 1776
    .line 1777
    :array_1e
    .array-data 8
        -0x622a46308325112bL    # -5.894929384891546E-165
        -0x4604c988fb8e473eL    # -2.146707740752499E-29
    .end array-data

    .line 1778
    .line 1779
    .line 1780
    .line 1781
    .line 1782
    .line 1783
    .line 1784
    .line 1785
    .line 1786
    .line 1787
    .line 1788
    .line 1789
    :array_1f
    .array-data 8
        -0x6251b3e9f11cdd2eL
        -0x7bc03c05a4390d79L
    .end array-data

    .line 1790
    .line 1791
    .line 1792
    .line 1793
    .line 1794
    .line 1795
    .line 1796
    .line 1797
    .line 1798
    .line 1799
    .line 1800
    .line 1801
    :array_20
    .array-data 8
        0x2e80b7ad736dc91fL    # 1.0756780573560632E-84
        -0x30831a2798d42f5dL    # -8.169288310540862E74
        -0x431450f13b2a9901L    # -3.0735213380199525E-15
    .end array-data

    .line 1802
    .line 1803
    .line 1804
    .line 1805
    .line 1806
    .line 1807
    .line 1808
    .line 1809
    .line 1810
    .line 1811
    .line 1812
    .line 1813
    .line 1814
    .line 1815
    .line 1816
    .line 1817
    :array_21
    .array-data 8
        -0x11329d658c6cc93aL    # -5.4384478204284855E225
        0x26ab30e9ffe35b86L
        -0x2c68fc87b9b8549aL    # -4.8004543926765634E94
        -0x53a78369e24f4736L    # -4.585545731551342E-95
    .end array-data

    .line 1818
    .line 1819
    .line 1820
    .line 1821
    .line 1822
    .line 1823
    .line 1824
    .line 1825
    .line 1826
    .line 1827
    .line 1828
    .line 1829
    .line 1830
    .line 1831
    .line 1832
    .line 1833
    .line 1834
    .line 1835
    .line 1836
    .line 1837
    :array_22
    .array-data 8
        -0x5aebccb4ae488289L    # -4.5534562034000595E-130
        0xdb4df51a9cb09fbL
    .end array-data

    .line 1838
    .line 1839
    .line 1840
    .line 1841
    .line 1842
    .line 1843
    .line 1844
    .line 1845
    .line 1846
    .line 1847
    .line 1848
    .line 1849
    :array_23
    .array-data 8
        -0x5e40b27aae654451L
        0x3bd875153051f341L    # 2.071618511895905E-20
    .end array-data

    .line 1850
    .line 1851
    .line 1852
    .line 1853
    .line 1854
    .line 1855
    .line 1856
    .line 1857
    .line 1858
    .line 1859
    .line 1860
    .line 1861
    :array_24
    .array-data 8
        0x4060acbb39ede852L    # 133.39785477129277
        0x376212530ebb64a7L    # 6.48286133820454E-42
    .end array-data

    .line 1862
    .line 1863
    .line 1864
    .line 1865
    .line 1866
    .line 1867
    .line 1868
    .line 1869
    .line 1870
    .line 1871
    .line 1872
    .line 1873
    :array_25
    .array-data 8
        0x4f8fddbe879df662L    # 1.8016858119289196E75
        -0x746c86eed3bfa944L    # -6.64010110819199E-253
    .end array-data

    .line 1874
    .line 1875
    .line 1876
    .line 1877
    .line 1878
    .line 1879
    .line 1880
    .line 1881
    .line 1882
    .line 1883
    .line 1884
    .line 1885
    :array_26
    .array-data 8
        -0x20ffc8ccd775a605L    # -4.146880663780146E149
        -0x6e0745b46bf4689eL    # -4.275502927561875E-222
        -0x6237ffc01e2b04efL
    .end array-data

    .line 1886
    .line 1887
    .line 1888
    .line 1889
    .line 1890
    .line 1891
    .line 1892
    .line 1893
    .line 1894
    .line 1895
    .line 1896
    .line 1897
    .line 1898
    .line 1899
    .line 1900
    .line 1901
    :array_27
    .array-data 8
        -0x2105b74e205372a8L    # -3.3608469275994235E149
        -0x46be9a0925d7833bL    # -6.701580587307993E-33
        0x3c7cb6bddf5ee299L    # 2.490528159144048E-17
        0x185bc496a258d775L
    .end array-data

    .line 1902
    .line 1903
    .line 1904
    .line 1905
    .line 1906
    .line 1907
    .line 1908
    .line 1909
    .line 1910
    .line 1911
    .line 1912
    .line 1913
    .line 1914
    .line 1915
    .line 1916
    .line 1917
    .line 1918
    .line 1919
    .line 1920
    .line 1921
    :array_28
    .array-data 8
        0x262a16007f72dee8L    # 7.707231145633382E-125
        -0x42ed983eac1d52a4L    # -1.6347184669253755E-14
    .end array-data

    .line 1922
    .line 1923
    .line 1924
    .line 1925
    .line 1926
    .line 1927
    .line 1928
    .line 1929
    .line 1930
    .line 1931
    .line 1932
    .line 1933
    :array_29
    .array-data 8
        0x5219042afd6f8c4L
        -0x62ad8518ff0d0bL
    .end array-data

    .line 1934
    .line 1935
    .line 1936
    .line 1937
    .line 1938
    .line 1939
    .line 1940
    .line 1941
    .line 1942
    .line 1943
    .line 1944
    .line 1945
    :array_2a
    .array-data 8
        -0xc8f4283a7f781a6L
        0x6bbed4c98e9bf3eeL    # 1.0136019045381732E211
    .end array-data

    .line 1946
    .line 1947
    .line 1948
    .line 1949
    .line 1950
    .line 1951
    .line 1952
    .line 1953
    .line 1954
    .line 1955
    .line 1956
    .line 1957
    :array_2b
    .array-data 8
        -0x7846615506b244cbL
        0x389b36c55aae6d70L    # 5.1183749087389316E-36
    .end array-data

    .line 1958
    .line 1959
    .line 1960
    .line 1961
    .line 1962
    .line 1963
    .line 1964
    .line 1965
    .line 1966
    .line 1967
    .line 1968
    .line 1969
    :array_2c
    .array-data 8
        0x20816169f838f73dL    # 4.148155655900123E-152
        -0x50fde209c9581142L
    .end array-data

    .line 1970
    .line 1971
    .line 1972
    .line 1973
    .line 1974
    .line 1975
    .line 1976
    .line 1977
    .line 1978
    .line 1979
    .line 1980
    .line 1981
    :array_2d
    .array-data 8
        0x22327cd36b1ed0f7L    # 5.922194145807414E-144
        -0x7c3366bdeb68f0e5L    # -2.292661545773409E-290
        -0x6d05c1e6bef6ef05L
    .end array-data

    .line 1982
    .line 1983
    .line 1984
    .line 1985
    .line 1986
    .line 1987
    .line 1988
    .line 1989
    .line 1990
    .line 1991
    .line 1992
    .line 1993
    .line 1994
    .line 1995
    .line 1996
    .line 1997
    :array_2e
    .array-data 8
        0x8a6f5ca61989638L
        -0x6a7cf3572a9f07a6L    # -4.746739844282009E-205
        0x6d12fbf4585231aeL
    .end array-data

    .line 1998
    .line 1999
    .line 2000
    .line 2001
    .line 2002
    .line 2003
    .line 2004
    .line 2005
    .line 2006
    .line 2007
    .line 2008
    .line 2009
    .line 2010
    .line 2011
    .line 2012
    .line 2013
    :array_2f
    .array-data 8
        0x1aeb0626614a784cL    # 5.210058414652274E-179
        -0x3384f9230bea29aL
    .end array-data

    .line 2014
    .line 2015
    .line 2016
    .line 2017
    .line 2018
    .line 2019
    .line 2020
    .line 2021
    .line 2022
    .line 2023
    .line 2024
    .line 2025
    :array_30
    .array-data 8
        -0x5f372d026e71904cL    # -9.47953690188563E-151
        0x3eaafbb673472d38L    # 8.041635966514238E-7
    .end array-data

    .line 2026
    .line 2027
    .line 2028
    .line 2029
    .line 2030
    .line 2031
    .line 2032
    .line 2033
    .line 2034
    .line 2035
    .line 2036
    .line 2037
    :array_31
    .array-data 8
        -0x24a584ae86dbf433L    # -1.1748006419774971E132
        0x2135c589de92bfb3L
    .end array-data

    .line 2038
    .line 2039
    .line 2040
    .line 2041
    .line 2042
    .line 2043
    .line 2044
    .line 2045
    .line 2046
    .line 2047
    .line 2048
    .line 2049
    :array_32
    .array-data 8
        0x500219fb02d1ea29L    # 2.6200111569528926E77
        0x41a0e5c73e00dc40L    # 1.4174710300168037E8
    .end array-data

    .line 2050
    .line 2051
    .line 2052
    .line 2053
    .line 2054
    .line 2055
    .line 2056
    .line 2057
    .line 2058
    .line 2059
    .line 2060
    .line 2061
    :array_33
    .array-data 8
        -0x4baf5e63640e27d6L
        -0x512a3d48f5ffc4b8L    # -4.480558790348988E-83
        -0x23a9e4fedb8e0096L    # -6.426849350321501E136
        0x24140808ed96a4d7L    # 6.889900593525965E-135
    .end array-data

    .line 2062
    :array_34
    .array-data 8
        -0x1ebf2cea8774736eL    # -2.956725927703537E160
        0x73d3ec6e9e162502L    # 8.915453176651601E249
        -0x6dba00d581175fbcL
    .end array-data

    :array_35
    .array-data 8
        0x7dcecfc09e5f73a5L    # 1.0075324303767262E298
        -0x2889697b9a8133bL
    .end array-data

    :array_36
    .array-data 8
        -0x408a3db49ec848f1L    # -0.0053122467538580095
        0x2192bda5dbaa2d65L    # 5.862603590900733E-147
    .end array-data

    :array_37
    .array-data 8
        -0x7acc663dbb82ef8aL
        -0x2682a4ac65c46f77L    # -1.2129031952954727E123
        -0x4f14784ace9321f9L    # -4.869215388954846E-73
        0x767abb2529e698bfL    # 5.260802819099702E262
        0x6abbca3cb821554fL    # 1.3940727124685772E206
    .end array-data
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcta;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzcsx;->zza(Lcom/google/android/gms/internal/ads/zzcta;)Lorg/json/JSONObject;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
