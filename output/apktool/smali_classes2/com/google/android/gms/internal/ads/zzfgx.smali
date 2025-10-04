.class public final Lcom/google/android/gms/internal/ads/zzfgx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final zza:Ljava/util/List;

.field public final zzb:Lcom/google/android/gms/internal/ads/zzfgp;

.field public final zzc:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/util/JsonReader;)V
    .locals 11

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    new-instance v3, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 16
    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    move-object v5, v4

    .line 20
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v6

    .line 24
    if-eqz v6, :cond_b

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 31
    .line 32
    new-array v8, v0, [J

    .line 33
    .line 34
    fill-array-data v8, :array_0

    .line 35
    .line 36
    .line 37
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    if-eqz v7, :cond_5

    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 54
    .line 55
    .line 56
    :goto_1
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    if-eqz v6, :cond_4

    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 67
    .line 68
    new-array v8, v0, [J

    .line 69
    .line 70
    fill-array-data v8, :array_1

    .line 71
    .line 72
    .line 73
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v7

    .line 80
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v7

    .line 84
    if-eqz v7, :cond_2

    .line 85
    .line 86
    new-instance v2, Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    .line 92
    .line 93
    .line 94
    :goto_2
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result v6

    .line 98
    if-eqz v6, :cond_1

    .line 99
    .line 100
    new-instance v6, Lcom/google/android/gms/internal/ads/zzfgm;

    .line 101
    .line 102
    invoke-direct {v6, p1}, Lcom/google/android/gms/internal/ads/zzfgm;-><init>(Landroid/util/JsonReader;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_1
    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_2
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 114
    .line 115
    new-array v8, v1, [J

    .line 116
    .line 117
    fill-array-data v8, :array_2

    .line 118
    .line 119
    .line 120
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v7

    .line 127
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v6

    .line 131
    if-eqz v6, :cond_3

    .line 132
    .line 133
    new-instance v5, Lcom/google/android/gms/internal/ads/zzfgp;

    .line 134
    .line 135
    invoke-direct {v5, p1}, Lcom/google/android/gms/internal/ads/zzfgp;-><init>(Landroid/util/JsonReader;)V

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_3
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 140
    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_4
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    .line 147
    .line 148
    .line 149
    goto/16 :goto_0

    .line 150
    .line 151
    :cond_5
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 152
    .line 153
    new-array v8, v1, [J

    .line 154
    .line 155
    fill-array-data v8, :array_3

    .line 156
    .line 157
    .line 158
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v7

    .line 165
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v6

    .line 169
    if-eqz v6, :cond_0

    .line 170
    .line 171
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    .line 172
    .line 173
    .line 174
    :goto_3
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    .line 175
    .line 176
    .line 177
    move-result v6

    .line 178
    if-eqz v6, :cond_a

    .line 179
    .line 180
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 181
    .line 182
    .line 183
    move-object v6, v4

    .line 184
    move-object v7, v6

    .line 185
    :goto_4
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    .line 186
    .line 187
    .line 188
    move-result v8

    .line 189
    if-eqz v8, :cond_8

    .line 190
    .line 191
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v8

    .line 195
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 196
    .line 197
    new-array v10, v1, [J

    .line 198
    .line 199
    fill-array-data v10, :array_4

    .line 200
    .line 201
    .line 202
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v9

    .line 209
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v9

    .line 213
    if-eqz v9, :cond_6

    .line 214
    .line 215
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v6

    .line 219
    goto :goto_4

    .line 220
    :cond_6
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 221
    .line 222
    new-array v10, v1, [J

    .line 223
    .line 224
    fill-array-data v10, :array_5

    .line 225
    .line 226
    .line 227
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v9

    .line 234
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    move-result v8

    .line 238
    if-eqz v8, :cond_7

    .line 239
    .line 240
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzbw;->zzh(Landroid/util/JsonReader;)Lorg/json/JSONObject;

    .line 241
    .line 242
    .line 243
    move-result-object v7

    .line 244
    goto :goto_4

    .line 245
    :cond_7
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 246
    .line 247
    .line 248
    goto :goto_4

    .line 249
    :cond_8
    if-eqz v6, :cond_9

    .line 250
    .line 251
    new-instance v8, Lcom/google/android/gms/internal/ads/zzfgw;

    .line 252
    .line 253
    invoke-direct {v8, v6, v7}, Lcom/google/android/gms/internal/ads/zzfgw;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    :cond_9
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    .line 260
    .line 261
    .line 262
    goto :goto_3

    .line 263
    :cond_a
    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    .line 264
    .line 265
    .line 266
    goto/16 :goto_0

    .line 267
    .line 268
    :cond_b
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzfgx;->zzc:Ljava/util/List;

    .line 269
    .line 270
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzfgx;->zza:Ljava/util/List;

    .line 271
    .line 272
    if-nez v5, :cond_c

    .line 273
    .line 274
    new-instance v5, Lcom/google/android/gms/internal/ads/zzfgp;

    .line 275
    .line 276
    new-instance p1, Landroid/util/JsonReader;

    .line 277
    .line 278
    new-instance v0, Ljava/io/StringReader;

    .line 279
    .line 280
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 281
    .line 282
    new-array v1, v1, [J

    .line 283
    .line 284
    fill-array-data v1, :array_6

    .line 285
    .line 286
    .line 287
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    invoke-direct {p1, v0}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 298
    .line 299
    .line 300
    invoke-direct {v5, p1}, Lcom/google/android/gms/internal/ads/zzfgp;-><init>(Landroid/util/JsonReader;)V

    .line 301
    .line 302
    .line 303
    :cond_c
    iput-object v5, p0, Lcom/google/android/gms/internal/ads/zzfgx;->zzb:Lcom/google/android/gms/internal/ads/zzfgp;

    .line 304
    .line 305
    return-void

    .line 306
    nop

    .line 307
    :array_0
    .array-data 8
        0x3334d33f46bc244fL    # 5.062321870136549E-62
        -0x48cd4db461c87330L    # -8.383785462415493E-43
        0x3e5e895c83f7b577L    # 2.8439395059343824E-8
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
    .line 320
    .line 321
    .line 322
    .line 323
    :array_1
    .array-data 8
        -0x7f8550a55ef0a054L
        0x133fc6ab93d32e57L
        0x64b8d9124fad6499L    # 1.5732863748884692E177
    .end array-data

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
    :array_2
    .array-data 8
        0x4cdff5707e47842fL    # 2.0542291049746997E62
        -0x2612a58717f3fd94L    # -1.5523396125351398E125
    .end array-data

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
    :array_3
    .array-data 8
        -0x6ccc87ec0e1d8250L
        0x27d810949d962943L    # 9.542965739852145E-117
    .end array-data

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
        0x1744fb30aa55282dL
        -0x3ff8ba9588fd90e1L    # -2.90889447189501
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
    :array_5
    .array-data 8
        -0x6a78981781f793f9L    # -5.83227704008363E-205
        -0xa7ba49e3bdf7e85L    # -1.22264179085613E258
    .end array-data

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
    :array_6
    .array-data 8
        0x328afcd314c3b688L    # 3.2032818076793743E-65
        -0x5ea73e116d81361cL
    .end array-data
.end method

.method public static zza(Ljava/io/Reader;)Lcom/google/android/gms/internal/ads/zzfgx;
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfgx;

    .line 2
    .line 3
    new-instance v1, Landroid/util/JsonReader;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzfgx;-><init>(Landroid/util/JsonReader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 12
    .line 13
    .line 14
    return-object v0

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    goto :goto_1

    .line 17
    :catch_0
    move-exception v0

    .line 18
    goto :goto_0

    .line 19
    :catch_1
    move-exception v0

    .line 20
    goto :goto_0

    .line 21
    :catch_2
    move-exception v0

    .line 22
    goto :goto_0

    .line 23
    :catch_3
    move-exception v0

    .line 24
    goto :goto_0

    .line 25
    :catch_4
    move-exception v0

    .line 26
    :goto_0
    :try_start_1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfgq;

    .line 27
    .line 28
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 29
    .line 30
    const/4 v3, 0x5

    .line 31
    new-array v3, v3, [J

    .line 32
    .line 33
    fill-array-data v3, :array_0

    .line 34
    .line 35
    .line 36
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzfgq;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    :goto_1
    invoke-static {p0}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 48
    .line 49
    .line 50
    throw v0

    .line 51
    :array_0
    .array-data 8
        0x24bd833623a435fbL
        0x2f1f0d0e6f2c71e5L    # 1.0229556379480885E-81
        0x3e115fd4794b4388L    # 1.0113194493441252E-9
        0x7b9c72f9e912ba59L    # 2.7074771930682592E287
        -0x22f26b41064e6a9bL    # -1.7613328128814354E140
    .end array-data
.end method
