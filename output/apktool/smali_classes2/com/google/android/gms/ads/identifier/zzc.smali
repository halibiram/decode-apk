.class public final Lcom/google/android/gms/ads/identifier/zzc;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final zza(Ljava/lang/String;)V
    .locals 6
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x5

    .line 3
    const/4 v2, 0x3

    .line 4
    const/16 v3, 0x107

    .line 5
    .line 6
    :try_start_0
    invoke-static {v3}, Lcom/google/android/gms/internal/ads_identifier/zzi;->zzb(I)V

    .line 7
    .line 8
    .line 9
    new-instance v3, Ljava/net/URL;

    .line 10
    .line 11
    invoke-direct {v3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    :try_start_1
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    const/16 v5, 0xc8

    .line 25
    .line 26
    if-lt v4, v5, :cond_0

    .line 27
    .line 28
    const/16 v5, 0x12c

    .line 29
    .line 30
    if-lt v4, v5, :cond_1

    .line 31
    .line 32
    :cond_0
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 33
    .line 34
    new-array v5, v2, [J

    .line 35
    .line 36
    fill-array-data v5, :array_0

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
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    add-int/lit8 v4, v4, 0x41

    .line 54
    .line 55
    new-instance v5, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 58
    .line 59
    .line 60
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 61
    .line 62
    const/4 v5, 0x6

    .line 63
    new-array v5, v5, [J

    .line 64
    .line 65
    fill-array-data v5, :array_1

    .line 66
    .line 67
    .line 68
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 75
    .line 76
    const/4 v5, 0x4

    .line 77
    new-array v5, v5, [J

    .line 78
    .line 79
    fill-array-data v5, :array_2

    .line 80
    .line 81
    .line 82
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 86
    .line 87
    .line 88
    :cond_1
    :try_start_2
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    .line 90
    .line 91
    invoke-static {}, Lcom/google/android/gms/internal/ads_identifier/zzi;->zza()V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :catchall_0
    move-exception p0

    .line 96
    goto/16 :goto_2

    .line 97
    .line 98
    :catch_0
    move-exception v3

    .line 99
    goto :goto_0

    .line 100
    :catch_1
    move-exception v3

    .line 101
    goto :goto_0

    .line 102
    :catch_2
    move-exception v3

    .line 103
    goto :goto_1

    .line 104
    :catchall_1
    move-exception v4

    .line 105
    :try_start_3
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 106
    .line 107
    .line 108
    throw v4
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 109
    :goto_0
    :try_start_4
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 110
    .line 111
    new-array v2, v2, [J

    .line 112
    .line 113
    fill-array-data v2, :array_3

    .line 114
    .line 115
    .line 116
    invoke-direct {v4, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 131
    .line 132
    .line 133
    move-result p0

    .line 134
    add-int/lit8 p0, p0, 0x1b

    .line 135
    .line 136
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    add-int/2addr p0, v2

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 148
    .line 149
    .line 150
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 151
    .line 152
    new-array v1, v1, [J

    .line 153
    .line 154
    fill-array-data v1, :array_4

    .line 155
    .line 156
    .line 157
    invoke-direct {p0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 164
    .line 165
    new-array v0, v0, [J

    .line 166
    .line 167
    fill-array-data v0, :array_5

    .line 168
    .line 169
    .line 170
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 174
    .line 175
    .line 176
    invoke-static {}, Lcom/google/android/gms/internal/ads_identifier/zzi;->zza()V

    .line 177
    .line 178
    .line 179
    return-void

    .line 180
    :goto_1
    :try_start_5
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 181
    .line 182
    new-array v2, v2, [J

    .line 183
    .line 184
    fill-array-data v2, :array_6

    .line 185
    .line 186
    .line 187
    invoke-direct {v4, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object p0

    .line 201
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 202
    .line 203
    .line 204
    move-result p0

    .line 205
    add-int/lit8 p0, p0, 0x20

    .line 206
    .line 207
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 212
    .line 213
    .line 214
    move-result v2

    .line 215
    add-int/2addr p0, v2

    .line 216
    new-instance v2, Ljava/lang/StringBuilder;

    .line 217
    .line 218
    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 219
    .line 220
    .line 221
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 222
    .line 223
    new-array v1, v1, [J

    .line 224
    .line 225
    fill-array-data v1, :array_7

    .line 226
    .line 227
    .line 228
    invoke-direct {p0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 235
    .line 236
    new-array v0, v0, [J

    .line 237
    .line 238
    fill-array-data v0, :array_8

    .line 239
    .line 240
    .line 241
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 245
    .line 246
    .line 247
    invoke-static {}, Lcom/google/android/gms/internal/ads_identifier/zzi;->zza()V

    .line 248
    .line 249
    .line 250
    return-void

    .line 251
    :goto_2
    invoke-static {}, Lcom/google/android/gms/internal/ads_identifier/zzi;->zza()V

    .line 252
    .line 253
    .line 254
    throw p0

    .line 255
    :array_0
    .array-data 8
        -0x7d26955b2ac7c7cdL    # -6.218151946583598E-295
        -0x5f8841b81739b1dcL    # -2.833368123712281E-152
        0x39e0c1c918eb4bfdL    # 6.609461135773691E-30
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
    .line 268
    .line 269
    .line 270
    .line 271
    :array_1
    .array-data 8
        -0x394d7d6afc70e982L    # -3.754291515615386E32
        0x5523aeab069bc9feL    # 1.377603798393554E102
        -0x66884b51a5a6c41eL    # -5.448250120949629E-186
        0x73080c259ccee6c7L    # 1.3135768492752024E246
        0x59f0560ae3a30f27L    # 1.7278526125836524E125
        0x3b2cb69b7c2643deL    # 1.1875546682154124E-23
    .end array-data

    .line 272
    .line 273
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
    :array_2
    .array-data 8
        -0x4edc9ccf86c8d51fL    # -5.486456293633278E-72
        -0x5dea34f98d1dbe0eL
        0x298084afa11a013bL    # 8.791784856088763E-109
        0x9282fa13365bac1L
    .end array-data

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
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    :array_3
    .array-data 8
        0x1111d8c2d6c77e94L    # 1.883396471805821E-226
        0x21a7ebde1a496721L
        0x3b1e4a884dc25853L    # 6.264061416889824E-24
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
    :array_4
    .array-data 8
        -0x2046778629423183L    # -1.3372774329774226E153
        0x8506339db7f1d42L
        -0x5f662e748d57e251L
        -0x6328e345a3ac79dL
        -0x7fd937cb201869dL
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
    :array_5
    .array-data 8
        0x28204180f5ca6bdL
        -0xa293df98ba8d9d2L
    .end array-data

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
    .line 370
    .line 371
    :array_6
    .array-data 8
        -0x4a31c7005fa208eeL
        0x503238656ff12555L    # 2.1097663499410202E78
        0x5900eaabbb63f3b0L    # 5.460387801708365E120
    .end array-data

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
    :array_7
    .array-data 8
        0x379d92e4bdd6f7edL    # 8.48726517244712E-41
        0x5d25ad03a9d569ebL    # 5.162545257379907E140
        -0x1ba1be4e713a8a89L    # -2.9933523500128107E175
        0x7345a352d4403da4L
        0x3c255e8770fe7255L    # 5.79214794928018E-19
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
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    :array_8
    .array-data 8
        0x5d80508f69fdd59fL    # 2.4868337219544977E142
        -0x61d4d9e9887a26d3L
    .end array-data
.end method
