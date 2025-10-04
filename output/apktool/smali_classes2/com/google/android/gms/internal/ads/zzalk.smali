.class final Lcom/google/android/gms/internal/ads/zzalk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final zza:Ljava/lang/String;

.field public final zzb:I

.field public final zzc:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final zzd:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final zze:F

.field public final zzf:Z

.field public final zzg:Z

.field public final zzh:Z

.field public final zzi:Z

.field public final zzj:I


# direct methods
.method private constructor <init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;FZZZZI)V
    .locals 0
    .param p3    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzalk;->zza:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzalk;->zzb:I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzalk;->zzc:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzalk;->zzd:Ljava/lang/Integer;

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzalk;->zze:F

    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/zzalk;->zzf:Z

    iput-boolean p7, p0, Lcom/google/android/gms/internal/ads/zzalk;->zzg:Z

    iput-boolean p8, p0, Lcom/google/android/gms/internal/ads/zzalk;->zzh:Z

    iput-boolean p9, p0, Lcom/google/android/gms/internal/ads/zzalk;->zzi:Z

    iput p10, p0, Lcom/google/android/gms/internal/ads/zzalk;->zzj:I

    return-void
.end method

.method public static bridge synthetic zza(Ljava/lang/String;)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzalk;->zzd(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzali;)Lcom/google/android/gms/internal/ads/zzalk;
    .locals 23
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const/4 v3, 0x5

    .line 6
    const/4 v4, 0x1

    .line 7
    const/4 v5, 0x0

    .line 8
    const/4 v6, 0x3

    .line 9
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 10
    .line 11
    const/4 v7, 0x2

    .line 12
    new-array v8, v7, [J

    .line 13
    .line 14
    fill-array-data v8, :array_0

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzd(Z)V

    .line 29
    .line 30
    .line 31
    const/4 v8, 0x6

    .line 32
    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 37
    .line 38
    new-array v10, v7, [J

    .line 39
    .line 40
    fill-array-data v10, :array_1

    .line 41
    .line 42
    .line 43
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v9

    .line 50
    invoke-static {v0, v9}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v9

    .line 54
    array-length v0, v9

    .line 55
    iget v10, v2, Lcom/google/android/gms/internal/ads/zzali;->zzk:I

    .line 56
    .line 57
    const/4 v11, 0x0

    .line 58
    if-eq v0, v10, :cond_0

    .line 59
    .line 60
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    new-array v3, v6, [Ljava/lang/Object;

    .line 69
    .line 70
    aput-object v2, v3, v5

    .line 71
    .line 72
    aput-object v0, v3, v4

    .line 73
    .line 74
    aput-object v1, v3, v7

    .line 75
    .line 76
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 77
    .line 78
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 79
    .line 80
    const/16 v2, 0xa

    .line 81
    .line 82
    new-array v2, v2, [J

    .line 83
    .line 84
    fill-array-data v2, :array_2

    .line 85
    .line 86
    .line 87
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 99
    .line 100
    new-array v2, v7, [J

    .line 101
    .line 102
    fill-array-data v2, :array_3

    .line 103
    .line 104
    .line 105
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzff;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    return-object v11

    .line 116
    :cond_0
    :try_start_0
    new-instance v10, Lcom/google/android/gms/internal/ads/zzalk;

    .line 117
    .line 118
    iget v0, v2, Lcom/google/android/gms/internal/ads/zzali;->zza:I

    .line 119
    .line 120
    aget-object v0, v9, v0

    .line 121
    .line 122
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v13

    .line 126
    iget v0, v2, Lcom/google/android/gms/internal/ads/zzali;->zzb:I

    .line 127
    .line 128
    const/4 v12, -0x1

    .line 129
    if-eq v0, v12, :cond_1

    .line 130
    .line 131
    aget-object v0, v9, v0

    .line 132
    .line 133
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzalk;->zzd(Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    move v14, v0

    .line 142
    goto :goto_0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    goto/16 :goto_a

    .line 145
    .line 146
    :cond_1
    const/4 v14, -0x1

    .line 147
    :goto_0
    iget v0, v2, Lcom/google/android/gms/internal/ads/zzali;->zzc:I

    .line 148
    .line 149
    if-eq v0, v12, :cond_2

    .line 150
    .line 151
    aget-object v0, v9, v0

    .line 152
    .line 153
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzalk;->zzc(Ljava/lang/String;)Ljava/lang/Integer;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    move-object v15, v0

    .line 162
    goto :goto_1

    .line 163
    :cond_2
    move-object v15, v11

    .line 164
    :goto_1
    iget v0, v2, Lcom/google/android/gms/internal/ads/zzali;->zzd:I

    .line 165
    .line 166
    if-eq v0, v12, :cond_3

    .line 167
    .line 168
    aget-object v0, v9, v0

    .line 169
    .line 170
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzalk;->zzc(Ljava/lang/String;)Ljava/lang/Integer;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    move-object/from16 v16, v0

    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_3
    move-object/from16 v16, v11

    .line 182
    .line 183
    :goto_2
    iget v0, v2, Lcom/google/android/gms/internal/ads/zzali;->zze:I

    .line 184
    .line 185
    const v17, -0x800001

    .line 186
    .line 187
    .line 188
    if-eq v0, v12, :cond_4

    .line 189
    .line 190
    aget-object v0, v9, v0

    .line 191
    .line 192
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v5
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :try_start_1
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 197
    .line 198
    .line 199
    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 200
    move/from16 v17, v0

    .line 201
    .line 202
    goto :goto_3

    .line 203
    :catch_1
    move-exception v0

    .line 204
    move-object v11, v0

    .line 205
    :try_start_2
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 206
    .line 207
    new-array v8, v7, [J

    .line 208
    .line 209
    fill-array-data v8, :array_4

    .line 210
    .line 211
    .line 212
    invoke-direct {v0, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    new-instance v8, Ljava/lang/StringBuilder;

    .line 220
    .line 221
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    .line 223
    .line 224
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 225
    .line 226
    new-array v4, v3, [J

    .line 227
    .line 228
    fill-array-data v4, :array_5

    .line 229
    .line 230
    .line 231
    invoke-direct {v6, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v4

    .line 238
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 245
    .line 246
    new-array v5, v7, [J

    .line 247
    .line 248
    fill-array-data v5, :array_6

    .line 249
    .line 250
    .line 251
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v4

    .line 258
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v4

    .line 265
    invoke-static {v0, v4, v11}, Lcom/google/android/gms/internal/ads/zzff;->zzg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 266
    .line 267
    .line 268
    :cond_4
    :goto_3
    iget v0, v2, Lcom/google/android/gms/internal/ads/zzali;->zzf:I

    .line 269
    .line 270
    if-eq v0, v12, :cond_5

    .line 271
    .line 272
    aget-object v0, v9, v0

    .line 273
    .line 274
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzalk;->zze(Ljava/lang/String;)Z

    .line 279
    .line 280
    .line 281
    move-result v0

    .line 282
    if-eqz v0, :cond_5

    .line 283
    .line 284
    const/4 v0, 0x1

    .line 285
    goto :goto_4

    .line 286
    :cond_5
    const/4 v0, 0x0

    .line 287
    :goto_4
    iget v4, v2, Lcom/google/android/gms/internal/ads/zzali;->zzg:I

    .line 288
    .line 289
    if-eq v4, v12, :cond_6

    .line 290
    .line 291
    aget-object v4, v9, v4

    .line 292
    .line 293
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v4

    .line 297
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzalk;->zze(Ljava/lang/String;)Z

    .line 298
    .line 299
    .line 300
    move-result v4

    .line 301
    if-eqz v4, :cond_6

    .line 302
    .line 303
    const/4 v4, 0x1

    .line 304
    goto :goto_5

    .line 305
    :cond_6
    const/4 v4, 0x0

    .line 306
    :goto_5
    iget v5, v2, Lcom/google/android/gms/internal/ads/zzali;->zzh:I

    .line 307
    .line 308
    if-eq v5, v12, :cond_7

    .line 309
    .line 310
    aget-object v5, v9, v5

    .line 311
    .line 312
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v5

    .line 316
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzalk;->zze(Ljava/lang/String;)Z

    .line 317
    .line 318
    .line 319
    move-result v5

    .line 320
    if-eqz v5, :cond_7

    .line 321
    .line 322
    const/4 v5, 0x1

    .line 323
    goto :goto_6

    .line 324
    :cond_7
    const/4 v5, 0x0

    .line 325
    :goto_6
    iget v6, v2, Lcom/google/android/gms/internal/ads/zzali;->zzi:I

    .line 326
    .line 327
    if-eq v6, v12, :cond_8

    .line 328
    .line 329
    aget-object v6, v9, v6

    .line 330
    .line 331
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v6

    .line 335
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzalk;->zze(Ljava/lang/String;)Z

    .line 336
    .line 337
    .line 338
    move-result v6

    .line 339
    if-eqz v6, :cond_8

    .line 340
    .line 341
    const/16 v21, 0x1

    .line 342
    .line 343
    goto :goto_7

    .line 344
    :cond_8
    const/16 v21, 0x0

    .line 345
    .line 346
    :goto_7
    iget v2, v2, Lcom/google/android/gms/internal/ads/zzali;->zzj:I

    .line 347
    .line 348
    if-eq v2, v12, :cond_a

    .line 349
    .line 350
    aget-object v2, v9, v2

    .line 351
    .line 352
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v2
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 356
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v6

    .line 360
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 361
    .line 362
    .line 363
    move-result v6
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    .line 364
    const/4 v8, 0x1

    .line 365
    if-eq v6, v8, :cond_9

    .line 366
    .line 367
    const/4 v8, 0x3

    .line 368
    if-eq v6, v8, :cond_9

    .line 369
    .line 370
    goto :goto_8

    .line 371
    :cond_9
    move/from16 v22, v6

    .line 372
    .line 373
    goto :goto_9

    .line 374
    :catch_2
    :goto_8
    :try_start_4
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 375
    .line 376
    new-array v8, v7, [J

    .line 377
    .line 378
    fill-array-data v8, :array_7

    .line 379
    .line 380
    .line 381
    invoke-direct {v6, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v6

    .line 388
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 389
    .line 390
    new-array v3, v3, [J

    .line 391
    .line 392
    fill-array-data v3, :array_8

    .line 393
    .line 394
    .line 395
    invoke-direct {v8, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v3

    .line 402
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v2

    .line 406
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v2

    .line 410
    invoke-static {v6, v2}, Lcom/google/android/gms/internal/ads/zzff;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    .line 412
    .line 413
    :cond_a
    const/16 v22, -0x1

    .line 414
    .line 415
    :goto_9
    move-object v12, v10

    .line 416
    move/from16 v18, v0

    .line 417
    .line 418
    move/from16 v19, v4

    .line 419
    .line 420
    move/from16 v20, v5

    .line 421
    .line 422
    invoke-direct/range {v12 .. v22}, Lcom/google/android/gms/internal/ads/zzalk;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;FZZZZI)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    .line 423
    .line 424
    .line 425
    return-object v10

    .line 426
    :goto_a
    new-instance v2, Ljava/lang/StringBuilder;

    .line 427
    .line 428
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 429
    .line 430
    .line 431
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 432
    .line 433
    const/4 v4, 0x6

    .line 434
    new-array v4, v4, [J

    .line 435
    .line 436
    fill-array-data v4, :array_9

    .line 437
    .line 438
    .line 439
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 440
    .line 441
    .line 442
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v3

    .line 446
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    .line 448
    .line 449
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    .line 451
    .line 452
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 453
    .line 454
    new-array v3, v7, [J

    .line 455
    .line 456
    fill-array-data v3, :array_a

    .line 457
    .line 458
    .line 459
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 460
    .line 461
    .line 462
    invoke-static {v1, v2}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v1

    .line 466
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 467
    .line 468
    new-array v3, v7, [J

    .line 469
    .line 470
    fill-array-data v3, :array_b

    .line 471
    .line 472
    .line 473
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 474
    .line 475
    .line 476
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v2

    .line 480
    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/ads/zzff;->zzg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 481
    .line 482
    .line 483
    const/4 v1, 0x0

    .line 484
    return-object v1

    .line 485
    :array_0
    .array-data 8
        -0x4963be6d822d13b9L    # -1.237352741805866E-45
        -0x58f1ccd90efac76aL
    .end array-data

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
    .line 496
    .line 497
    :array_1
    .array-data 8
        0x6956b9ce5d7a7152L    # 2.718043639741527E199
        -0x31e89cebb0718daaL    # -1.5762826139617398E68
    .end array-data

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
    :array_2
    .array-data 8
        -0x2b40d156b05e45a3L    # -1.7050861201316218E100
        -0x58a66d8cd51f102fL
        0x1d0d3b1353ae9a7dL    # 9.681721876249527E-169
        0x681455bc5d11b21fL    # 2.3194199644799802E193
        0x6bffd2dfb90f14a0L
        -0x494695331447dff2L    # -4.4521335492126607E-45
        -0x2ae0e4e256e34483L    # -1.0885831837518691E102
        -0x1fdc8907f84692d5L    # -1.3048962793203388E155
        -0x72a5e4dbba6d0695L
        -0x36e41381b2043c82L    # -1.5568039976906038E44
    .end array-data

    .line 510
    .line 511
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
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    :array_3
    .array-data 8
        -0x2e4847c40e7587b4L    # -4.607945467972008E85
        0x7203bc599f07f481L    # 1.6449776988549658E241
    .end array-data

    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    :array_4
    .array-data 8
        0x2a3a865568779fdbL
        0x5ab70e20607e5ba0L    # 9.98818798878363E128
    .end array-data

    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    :array_5
    .array-data 8
        0x5e3f8da91acc8c33L    # 9.850166077838158E145
        -0x365af9fbbeeda59L    # -1.641202494880495E292
        0x33f62d2718b75be3L    # 2.2080630073030816E-58
        -0x47431745acf671baL    # -2.1748784389020522E-35
        -0x2cd25c2bb020b5f5L    # -4.83021292359756E92
    .end array-data

    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
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
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    :array_6
    .array-data 8
        -0x12cb3e1113676ff5L    # -1.1449143835645956E218
        -0x4d7f480228a30f0bL    # -1.9844213808499183E-65
    .end array-data

    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    :array_7
    .array-data 8
        0x32075ef77364efe4L
        -0xc053542c6f67416L    # -4.795575477629286E250
    .end array-data

    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    :array_8
    .array-data 8
        0x5f8d9cd66905ab1bL    # 1.938675187770122E152
        0x3b80cfc71594436cL    # 4.450001814827725E-22
        0x46f24f42359a1d69L    # 5.941806216253769E33
        -0x6f6945b9a61d485eL    # -9.369093406865566E-229
        -0x1eb01302fcd0da54L    # -5.6105911162936774E160
    .end array-data

    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
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
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    :array_9
    .array-data 8
        -0x321f2edaa92b8257L    # -1.4168274252524764E67
        -0x63c5fa341cbc7658L
        -0x2a0455a7b263f1dcL    # -1.5862644828727609E106
        0x64dc9af2473a009dL    # 7.244749091650479E177
        -0x5d2353c93d4cfe64L    # -9.405259635830294E-141
        0xe3d9463e0c4f301L    # 4.436050538756596E-240
    .end array-data

    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
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
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    :array_a
    .array-data 8
        0x6ee7ca8ab2e9a168L    # 1.7612569639001385E226
        -0x5a5575569129c327L    # -3.063230837545218E-127
    .end array-data

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
    .line 688
    .line 689
    :array_b
    .array-data 8
        0x709e9ff68bd9998eL    # 3.0429211278456453E234
        0x4fbd6e8528df5c6dL    # 1.3312344820225E76
    .end array-data
.end method

.method public static zzc(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 11
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    :try_start_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 3
    .line 4
    new-array v2, v0, [J

    .line 5
    .line 6
    fill-array-data v2, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/16 v2, 0x10

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v1, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    .line 29
    .line 30
    .line 31
    move-result-wide v3

    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception v1

    .line 34
    goto :goto_2

    .line 35
    :cond_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 36
    .line 37
    .line 38
    move-result-wide v3

    .line 39
    :goto_0
    const-wide v5, 0xffffffffL

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    cmp-long v1, v3, v5

    .line 45
    .line 46
    if-gtz v1, :cond_1

    .line 47
    .line 48
    const/4 v1, 0x1

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    const/4 v1, 0x0

    .line 51
    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzd(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    .line 54
    const/16 p0, 0x18

    .line 55
    .line 56
    shr-long v0, v3, p0

    .line 57
    .line 58
    shr-long v5, v3, v2

    .line 59
    .line 60
    const/16 p0, 0x8

    .line 61
    .line 62
    shr-long v7, v3, p0

    .line 63
    .line 64
    const-wide/16 v9, 0xff

    .line 65
    .line 66
    and-long v2, v3, v9

    .line 67
    .line 68
    and-long/2addr v0, v9

    .line 69
    xor-long/2addr v0, v9

    .line 70
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgcu;->zza(J)I

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    and-long v0, v5, v9

    .line 75
    .line 76
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgcu;->zza(J)I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    and-long v4, v7, v9

    .line 81
    .line 82
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzgcu;->zza(J)I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzgcu;->zza(J)I

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    invoke-static {p0, v2, v1, v0}, Landroid/graphics/Color;->argb(IIII)I

    .line 91
    .line 92
    .line 93
    move-result p0

    .line 94
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    return-object p0

    .line 99
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 105
    .line 106
    const/4 v4, 0x6

    .line 107
    new-array v4, v4, [J

    .line 108
    .line 109
    fill-array-data v4, :array_1

    .line 110
    .line 111
    .line 112
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 126
    .line 127
    new-array v3, v0, [J

    .line 128
    .line 129
    fill-array-data v3, :array_2

    .line 130
    .line 131
    .line 132
    invoke-direct {p0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 133
    .line 134
    .line 135
    invoke-static {p0, v2}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 140
    .line 141
    new-array v0, v0, [J

    .line 142
    .line 143
    fill-array-data v0, :array_3

    .line 144
    .line 145
    .line 146
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-static {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzff;->zzg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 154
    .line 155
    .line 156
    const/4 p0, 0x0

    .line 157
    return-object p0

    .line 158
    nop

    .line 159
    :array_0
    .array-data 8
        0x1a2e1b9ec79d2874L    # 1.417140740437206E-182
        0x4606c1aaf7931b6eL    # 2.2536960859210483E29
    .end array-data

    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    :array_1
    .array-data 8
        -0x17e0f7660d203332L    # -3.5397238228313537E193
        -0x6657e9c00705d34eL
        -0x5fb64ef391b3a692L
        -0x76eab8ef3e516decL    # -6.598822599830651E-265
        0x68e9c468336d574dL    # 2.407657230844373E197
        -0x780d1dcf0b7d052aL    # -2.234023634424011E-270
    .end array-data

    .line 172
    .line 173
    .line 174
    .line 175
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
    :array_2
    .array-data 8
        0x15314567367bbb33L
        -0x16936302b0ef00f1L    # -6.844381094373748E199
    .end array-data

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
    :array_3
    .array-data 8
        0x76472834ded25414L    # 5.696782112124821E261
        0x5d6f9de2161d516eL    # 1.2048276896359871E142
    .end array-data
.end method

.method private static zzd(Ljava/lang/String;)I
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :pswitch_0
    return v0

    .line 14
    :catch_0
    :goto_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 19
    .line 20
    const/4 v1, 0x5

    .line 21
    new-array v1, v1, [J

    .line 22
    .line 23
    fill-array-data v1, :array_0

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 34
    .line 35
    const/4 v2, 0x2

    .line 36
    new-array v2, v2, [J

    .line 37
    .line 38
    fill-array-data v2, :array_1

    .line 39
    .line 40
    .line 41
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-static {v1, p0}, Lcom/google/android/gms/internal/ads/zzff;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const/4 p0, -0x1

    .line 56
    return p0

    .line 57
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    :array_0
    .array-data 8
        0x52dd4877fe86e178L    # 1.4912672356863865E91
        0x3e6ca5af75df0898L    # 5.335958407029216E-8
        -0x5989a413580f64d4L    # -2.113954877672146E-123
        0x419c0ecbcb80ca04L    # 1.1768293087577063E8
        0x4c36087ff60929daL    # 1.38304653844013E59
    .end array-data

    :array_1
    .array-data 8
        0x5ffcbadbaaba721fL    # 2.4075323341373187E154
        -0x329081d907bf0c92L    # -1.0364303303876232E65
    .end array-data
.end method

.method private static zze(Ljava/lang/String;)Z
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    const/4 v0, 0x1

    .line 8
    if-eq p0, v0, :cond_1

    .line 9
    .line 10
    const/4 v2, -0x1

    .line 11
    if-ne p0, v2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    return v1

    .line 15
    :cond_1
    :goto_0
    return v0

    .line 16
    :catch_0
    move-exception v2

    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 23
    .line 24
    const/4 v5, 0x5

    .line 25
    new-array v5, v5, [J

    .line 26
    .line 27
    fill-array-data v5, :array_0

    .line 28
    .line 29
    .line 30
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 44
    .line 45
    new-array v4, v0, [J

    .line 46
    .line 47
    fill-array-data v4, :array_1

    .line 48
    .line 49
    .line 50
    invoke-direct {p0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 51
    .line 52
    .line 53
    invoke-static {p0, v3}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 58
    .line 59
    new-array v0, v0, [J

    .line 60
    .line 61
    fill-array-data v0, :array_2

    .line 62
    .line 63
    .line 64
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-static {v0, p0, v2}, Lcom/google/android/gms/internal/ads/zzff;->zzg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    .line 73
    .line 74
    return v1

    .line 75
    :array_0
    .array-data 8
        0x5b963b808dd84bfaL    # 1.578065556520375E133
        -0x6c4e210c4f49968aL    # -8.294489385733202E-214
        0x551ab3285d3fadccL    # 9.34387723373477E101
        0x15ce052f1117c293L
        0x32d3771dfe11f77fL    # 7.393363524898967E-64
    .end array-data

    .line 76
    .line 77
    :array_1
    .array-data 8
        -0x4adc7ac8ee93a317L    # -1.019010940071159E-52
        -0x11f194ee51e2871cL    # -1.3744244832149078E222
    .end array-data

    :array_2
    .array-data 8
        -0x55a0a4adf31c0ae5L
        -0x7fa1c625490e1bf4L    # -6.725506814086055E-307
    .end array-data
.end method
