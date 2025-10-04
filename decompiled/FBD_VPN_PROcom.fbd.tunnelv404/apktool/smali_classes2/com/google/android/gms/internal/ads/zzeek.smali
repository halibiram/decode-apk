.class final Lcom/google/android/gms/internal/ads/zzeek;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbrq;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb(Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 8

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x2

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/ads/zzeel;

    .line 4
    .line 5
    new-instance v2, Lorg/json/JSONObject;

    .line 6
    .line 7
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v3, Lorg/json/JSONObject;

    .line 11
    .line 12
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 13
    .line 14
    .line 15
    new-instance v4, Lorg/json/JSONObject;

    .line 16
    .line 17
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 18
    .line 19
    .line 20
    sget-object v5, Lcom/google/android/gms/internal/ads/zzbgc;->zzjg:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 21
    .line 22
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    check-cast v5, Ljava/lang/Boolean;

    .line 31
    .line 32
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-eqz v5, :cond_0

    .line 37
    .line 38
    iget-object v5, p1, Lcom/google/android/gms/internal/ads/zzeel;->zzd:Lcom/google/android/gms/internal/ads/zzbzh;

    .line 39
    .line 40
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzbzh;->zze()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 45
    .line 46
    new-array v7, v0, [J

    .line 47
    .line 48
    fill-array-data v7, :array_0

    .line 49
    .line 50
    .line 51
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    .line 60
    .line 61
    iget-object v5, p1, Lcom/google/android/gms/internal/ads/zzeel;->zzd:Lcom/google/android/gms/internal/ads/zzbzh;

    .line 62
    .line 63
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzbzh;->zzd()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 68
    .line 69
    const/4 v7, 0x4

    .line 70
    new-array v7, v7, [J

    .line 71
    .line 72
    fill-array-data v7, :array_1

    .line 73
    .line 74
    .line 75
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    .line 84
    .line 85
    :cond_0
    iget-object v5, p1, Lcom/google/android/gms/internal/ads/zzeel;->zzd:Lcom/google/android/gms/internal/ads/zzbzh;

    .line 86
    .line 87
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzbzh;->zzb()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 92
    .line 93
    new-array v7, v1, [J

    .line 94
    .line 95
    fill-array-data v7, :array_2

    .line 96
    .line 97
    .line 98
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    .line 107
    .line 108
    iget-object v5, p1, Lcom/google/android/gms/internal/ads/zzeel;->zzc:Lorg/json/JSONObject;

    .line 109
    .line 110
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 111
    .line 112
    new-array v7, v1, [J

    .line 113
    .line 114
    fill-array-data v7, :array_3

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
    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    .line 126
    .line 127
    iget-object v5, p1, Lcom/google/android/gms/internal/ads/zzeel;->zzb:Lcom/google/android/gms/internal/ads/zzeez;

    .line 128
    .line 129
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzeez;->zzc:Ljava/lang/String;

    .line 130
    .line 131
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 132
    .line 133
    new-array v7, v1, [J

    .line 134
    .line 135
    fill-array-data v7, :array_4

    .line 136
    .line 137
    .line 138
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v6

    .line 145
    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 146
    .line 147
    .line 148
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->zzb()Lcom/google/android/gms/internal/ads/zzcdv;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    iget-object v6, p1, Lcom/google/android/gms/internal/ads/zzeel;->zzb:Lcom/google/android/gms/internal/ads/zzeez;

    .line 153
    .line 154
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzeez;->zzb:Ljava/util/Map;

    .line 155
    .line 156
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzcdv;->zzi(Ljava/util/Map;)Lorg/json/JSONObject;

    .line 157
    .line 158
    .line 159
    move-result-object v5

    .line 160
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 161
    .line 162
    new-array v7, v1, [J

    .line 163
    .line 164
    fill-array-data v7, :array_5

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
    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 175
    .line 176
    .line 177
    iget-object v5, p1, Lcom/google/android/gms/internal/ads/zzeel;->zzb:Lcom/google/android/gms/internal/ads/zzeez;

    .line 178
    .line 179
    iget v5, v5, Lcom/google/android/gms/internal/ads/zzeez;->zza:I

    .line 180
    .line 181
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 182
    .line 183
    new-array v0, v0, [J

    .line 184
    .line 185
    fill-array-data v0, :array_6

    .line 186
    .line 187
    .line 188
    invoke-direct {v6, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 196
    .line 197
    .line 198
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzeel;->zzb:Lcom/google/android/gms/internal/ads/zzeez;

    .line 199
    .line 200
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzeez;->zzd:J

    .line 201
    .line 202
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 203
    .line 204
    new-array v7, v1, [J

    .line 205
    .line 206
    fill-array-data v7, :array_7

    .line 207
    .line 208
    .line 209
    invoke-direct {v0, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    invoke-virtual {v4, v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 217
    .line 218
    .line 219
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 220
    .line 221
    new-array v5, v1, [J

    .line 222
    .line 223
    fill-array-data v5, :array_8

    .line 224
    .line 225
    .line 226
    invoke-direct {v0, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 234
    .line 235
    .line 236
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 237
    .line 238
    new-array v3, v1, [J

    .line 239
    .line 240
    fill-array-data v3, :array_9

    .line 241
    .line 242
    .line 243
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 251
    .line 252
    .line 253
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzeel;->zzd:Lcom/google/android/gms/internal/ads/zzbzh;

    .line 254
    .line 255
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbzh;->zzg()Lorg/json/JSONObject;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 260
    .line 261
    new-array v1, v1, [J

    .line 262
    .line 263
    fill-array-data v1, :array_a

    .line 264
    .line 265
    .line 266
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    invoke-virtual {v2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 274
    .line 275
    .line 276
    return-object v2

    .line 277
    :array_0
    .array-data 8
        -0x774b7e1ee866bb51L    # -9.93740982904381E-267
        -0x5e4330bd0a63a518L    # -3.604952756903279E-146
        0xe9a06d83a7dd721L
    .end array-data

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
    :array_1
    .array-data 8
        -0x3f41b8f500c0b67dL    # -7751.042957263419
        0x6e475bfc69c26e41L    # 1.688756390514295E223
        0x59cc9599c5345477L    # 3.7791746851980293E124
        0x3164cc8e6251d392L    # 9.417475014324499E-71
    .end array-data

    .line 294
    .line 295
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
    .line 312
    .line 313
    :array_2
    .array-data 8
        -0x3658237d538c8934L    # -6.811216747592067E46
        0x18236913ff8322c4L
    .end array-data

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
    :array_3
    .array-data 8
        0x31ddf4ccaffc5fe4L    # 1.736154693455074E-68
        -0x6edb908523bc1426L
    .end array-data

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
    :array_4
    .array-data 8
        0x352cca0c0afed33aL    # 1.502868778049681E-52
        0x307545dfb5a21d39L    # 2.9394677893820987E-75
    .end array-data

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
    :array_5
    .array-data 8
        0x5b44fd4bbe2a2fb4L    # 4.655742067968141E131
        -0x2f579d9d5858d46fL    # -3.6140942194785743E80
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
    :array_6
    .array-data 8
        0x5dcd79d65efeaf21L    # 7.188783851259717E143
        0x5a7601ddba96da78L    # 5.95888133044541E127
        0x1133da3700aac861L    # 8.380237300023274E-226
    .end array-data

    .line 362
    .line 363
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
    :array_7
    .array-data 8
        0x49f154c4d000785fL    # 1.5830920078093087E48
        -0x6c61be6608b0f2bcL    # -3.510736836012324E-214
    .end array-data

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
    :array_8
    .array-data 8
        -0x272a35ea0fabb6f8L    # -8.791510690068522E119
        0x3a466a37e39adbd5L    # 5.658320119609753E-28
    .end array-data

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
    :array_9
    .array-data 8
        0x557505dda010b8a7L    # 4.708595881897877E103
        -0x5e9dcd45dc0083aaL    # -7.116057430707889E-148
    .end array-data

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
    :array_a
    .array-data 8
        0x7d6bd94aade2c201L    # 1.4228927784798298E296
        -0xd1212c15c20797fL    # -4.086823212275727E245
    .end array-data
.end method
