.class public final Lcom/google/android/gms/internal/ads/zzgt;
.super Lcom/google/android/gms/internal/ads/zzgq;
.source "SourceFile"


# instance fields
.field private final zza:Landroid/content/ContentResolver;

.field private zzb:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzc:Landroid/content/res/AssetFileDescriptor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzd:Ljava/io/FileInputStream;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zze:J

.field private zzf:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgq;-><init>(Z)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgt;->zza:Landroid/content/ContentResolver;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final zza([BII)I
    .locals 7

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zze:J

    .line 6
    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    const/4 v4, -0x1

    .line 10
    cmp-long v5, v0, v2

    .line 11
    .line 12
    if-eqz v5, :cond_4

    .line 13
    .line 14
    const-wide/16 v2, -0x1

    .line 15
    .line 16
    cmp-long v5, v0, v2

    .line 17
    .line 18
    if-eqz v5, :cond_1

    .line 19
    .line 20
    int-to-long v5, p3

    .line 21
    :try_start_0
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(JJ)J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    long-to-int p3, v0

    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception p1

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzd:Ljava/io/FileInputStream;

    .line 30
    .line 31
    sget v1, Lcom/google/android/gms/internal/ads/zzfy;->zza:I

    .line 32
    .line 33
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/FileInputStream;->read([BII)I

    .line 34
    .line 35
    .line 36
    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    if-ne p1, v4, :cond_2

    .line 38
    .line 39
    return v4

    .line 40
    :cond_2
    iget-wide p2, p0, Lcom/google/android/gms/internal/ads/zzgt;->zze:J

    .line 41
    .line 42
    cmp-long v0, p2, v2

    .line 43
    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    int-to-long v0, p1

    .line 47
    sub-long/2addr p2, v0

    .line 48
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzgt;->zze:J

    .line 49
    .line 50
    :cond_3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgq;->zzg(I)V

    .line 51
    .line 52
    .line 53
    return p1

    .line 54
    :goto_1
    new-instance p2, Lcom/google/android/gms/internal/ads/zzgs;

    .line 55
    .line 56
    const/16 p3, 0x7d0

    .line 57
    .line 58
    invoke-direct {p2, p1, p3}, Lcom/google/android/gms/internal/ads/zzgs;-><init>(Ljava/io/IOException;I)V

    .line 59
    .line 60
    .line 61
    throw p2

    .line 62
    :cond_4
    return v4
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzhb;)J
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v4, 0x1

    .line 7
    :try_start_0
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzhb;->zza:Landroid/net/Uri;

    .line 8
    .line 9
    invoke-virtual {v5}, Landroid/net/Uri;->normalizeScheme()Landroid/net/Uri;

    .line 10
    .line 11
    .line 12
    move-result-object v5

    .line 13
    iput-object v5, v1, Lcom/google/android/gms/internal/ads/zzgt;->zzb:Landroid/net/Uri;

    .line 14
    .line 15
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzgq;->zzi(Lcom/google/android/gms/internal/ads/zzhb;)V

    .line 16
    .line 17
    .line 18
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 19
    .line 20
    new-array v7, v2, [J

    .line 21
    .line 22
    fill-array-data v7, :array_0

    .line 23
    .line 24
    .line 25
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v7

    .line 36
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    if-eqz v6, :cond_0

    .line 41
    .line 42
    new-instance v6, Landroid/os/Bundle;

    .line 43
    .line 44
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 45
    .line 46
    .line 47
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 48
    .line 49
    const/16 v8, 0x8

    .line 50
    .line 51
    new-array v8, v8, [J

    .line 52
    .line 53
    fill-array-data v8, :array_1

    .line 54
    .line 55
    .line 56
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    invoke-virtual {v6, v7, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 64
    .line 65
    .line 66
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzgt;->zza:Landroid/content/ContentResolver;

    .line 67
    .line 68
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 69
    .line 70
    new-array v2, v2, [J

    .line 71
    .line 72
    fill-array-data v2, :array_2

    .line 73
    .line 74
    .line 75
    invoke-direct {v8, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {v7, v5, v2, v6}, Landroid/content/ContentResolver;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    const/16 v2, 0x7d0

    .line 89
    .line 90
    goto/16 :goto_4

    .line 91
    .line 92
    :catch_1
    move-exception v0

    .line 93
    goto/16 :goto_6

    .line 94
    .line 95
    :cond_0
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzgt;->zza:Landroid/content/ContentResolver;

    .line 96
    .line 97
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 98
    .line 99
    new-array v2, v2, [J

    .line 100
    .line 101
    fill-array-data v2, :array_3

    .line 102
    .line 103
    .line 104
    invoke-direct {v7, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-virtual {v6, v5, v2}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    :goto_0
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzgt;->zzc:Landroid/content/res/AssetFileDescriptor;

    .line 116
    .line 117
    if-eqz v2, :cond_b

    .line 118
    .line 119
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    .line 120
    .line 121
    .line 122
    move-result-wide v5

    .line 123
    new-instance v7, Ljava/io/FileInputStream;

    .line 124
    .line 125
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 126
    .line 127
    .line 128
    move-result-object v8

    .line 129
    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 130
    .line 131
    .line 132
    iput-object v7, v1, Lcom/google/android/gms/internal/ads/zzgt;->zzd:Ljava/io/FileInputStream;

    .line 133
    .line 134
    const/16 v8, 0x7d8

    .line 135
    .line 136
    const/4 v9, 0x0

    .line 137
    const-wide/16 v10, -0x1

    .line 138
    .line 139
    cmp-long v12, v5, v10

    .line 140
    .line 141
    if-eqz v12, :cond_2

    .line 142
    .line 143
    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/zzhb;->zzf:J

    .line 144
    .line 145
    cmp-long v15, v13, v5

    .line 146
    .line 147
    if-gtz v15, :cond_1

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgs;

    .line 151
    .line 152
    invoke-direct {v0, v9, v8}, Lcom/google/android/gms/internal/ads/zzgs;-><init>(Ljava/io/IOException;I)V

    .line 153
    .line 154
    .line 155
    throw v0

    .line 156
    :cond_2
    :goto_1
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    .line 157
    .line 158
    .line 159
    move-result-wide v13

    .line 160
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzhb;->zzf:J

    .line 161
    .line 162
    add-long/2addr v3, v13

    .line 163
    invoke-virtual {v7, v3, v4}, Ljava/io/FileInputStream;->skip(J)J

    .line 164
    .line 165
    .line 166
    move-result-wide v3

    .line 167
    sub-long/2addr v3, v13

    .line 168
    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/zzhb;->zzf:J

    .line 169
    .line 170
    cmp-long v16, v3, v13

    .line 171
    .line 172
    if-nez v16, :cond_a

    .line 173
    .line 174
    const-wide/16 v13, 0x0

    .line 175
    .line 176
    if-nez v12, :cond_5

    .line 177
    .line 178
    invoke-virtual {v7}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J

    .line 183
    .line 184
    .line 185
    move-result-wide v4

    .line 186
    cmp-long v6, v4, v13

    .line 187
    .line 188
    if-nez v6, :cond_3

    .line 189
    .line 190
    iput-wide v10, v1, Lcom/google/android/gms/internal/ads/zzgt;->zze:J

    .line 191
    .line 192
    move-wide v4, v10

    .line 193
    goto :goto_2

    .line 194
    :cond_3
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->position()J

    .line 195
    .line 196
    .line 197
    move-result-wide v6

    .line 198
    sub-long/2addr v4, v6

    .line 199
    iput-wide v4, v1, Lcom/google/android/gms/internal/ads/zzgt;->zze:J

    .line 200
    .line 201
    cmp-long v3, v4, v13

    .line 202
    .line 203
    if-ltz v3, :cond_4

    .line 204
    .line 205
    goto :goto_2

    .line 206
    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgs;

    .line 207
    .line 208
    invoke-direct {v0, v9, v8}, Lcom/google/android/gms/internal/ads/zzgs;-><init>(Ljava/io/IOException;I)V

    .line 209
    .line 210
    .line 211
    throw v0

    .line 212
    :cond_5
    sub-long v4, v5, v3

    .line 213
    .line 214
    iput-wide v4, v1, Lcom/google/android/gms/internal/ads/zzgt;->zze:J
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzgs; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    .line 216
    cmp-long v3, v4, v13

    .line 217
    .line 218
    if-ltz v3, :cond_9

    .line 219
    .line 220
    :goto_2
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzhb;->zzg:J

    .line 221
    .line 222
    cmp-long v6, v2, v10

    .line 223
    .line 224
    if-eqz v6, :cond_7

    .line 225
    .line 226
    cmp-long v6, v4, v10

    .line 227
    .line 228
    if-nez v6, :cond_6

    .line 229
    .line 230
    goto :goto_3

    .line 231
    :cond_6
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 232
    .line 233
    .line 234
    move-result-wide v2

    .line 235
    :goto_3
    iput-wide v2, v1, Lcom/google/android/gms/internal/ads/zzgt;->zze:J

    .line 236
    .line 237
    :cond_7
    const/4 v2, 0x1

    .line 238
    iput-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzgt;->zzf:Z

    .line 239
    .line 240
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzgq;->zzj(Lcom/google/android/gms/internal/ads/zzhb;)V

    .line 241
    .line 242
    .line 243
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzhb;->zzg:J

    .line 244
    .line 245
    cmp-long v0, v2, v10

    .line 246
    .line 247
    if-eqz v0, :cond_8

    .line 248
    .line 249
    return-wide v2

    .line 250
    :cond_8
    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/zzgt;->zze:J

    .line 251
    .line 252
    return-wide v2

    .line 253
    :cond_9
    :try_start_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgs;

    .line 254
    .line 255
    invoke-direct {v0, v9, v8}, Lcom/google/android/gms/internal/ads/zzgs;-><init>(Ljava/io/IOException;I)V

    .line 256
    .line 257
    .line 258
    throw v0

    .line 259
    :cond_a
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgs;

    .line 260
    .line 261
    invoke-direct {v0, v9, v8}, Lcom/google/android/gms/internal/ads/zzgs;-><init>(Ljava/io/IOException;I)V

    .line 262
    .line 263
    .line 264
    throw v0

    .line 265
    :cond_b
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgs;

    .line 266
    .line 267
    new-instance v3, Ljava/io/IOException;

    .line 268
    .line 269
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v4

    .line 273
    new-instance v5, Ljava/lang/StringBuilder;

    .line 274
    .line 275
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 276
    .line 277
    .line 278
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 279
    .line 280
    const/4 v7, 0x6

    .line 281
    new-array v7, v7, [J

    .line 282
    .line 283
    fill-array-data v7, :array_4

    .line 284
    .line 285
    .line 286
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v6

    .line 293
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v4

    .line 303
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzgs; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 304
    .line 305
    .line 306
    const/16 v2, 0x7d0

    .line 307
    .line 308
    :try_start_2
    invoke-direct {v0, v3, v2}, Lcom/google/android/gms/internal/ads/zzgs;-><init>(Ljava/io/IOException;I)V

    .line 309
    .line 310
    .line 311
    throw v0
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzgs; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 312
    :catch_2
    move-exception v0

    .line 313
    :goto_4
    new-instance v3, Lcom/google/android/gms/internal/ads/zzgs;

    .line 314
    .line 315
    instance-of v4, v0, Ljava/io/FileNotFoundException;

    .line 316
    .line 317
    const/4 v5, 0x1

    .line 318
    if-eq v5, v4, :cond_c

    .line 319
    .line 320
    goto :goto_5

    .line 321
    :cond_c
    const/16 v2, 0x7d5

    .line 322
    .line 323
    :goto_5
    invoke-direct {v3, v0, v2}, Lcom/google/android/gms/internal/ads/zzgs;-><init>(Ljava/io/IOException;I)V

    .line 324
    .line 325
    .line 326
    throw v3

    .line 327
    :goto_6
    throw v0

    .line 328
    nop

    .line 329
    :array_0
    .array-data 8
        -0x354efe9a5aa9446L
        0x6aa402c114cfcf10L    # 5.019155034326553E205
    .end array-data

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
    :array_1
    .array-data 8
        -0x35631309d9c987f4L    # -2.7055908466752147E51
        0x25817a31ae5a609L
        -0x5724ef7aa492e735L    # -7.03367325183202E-112
        -0x279c368455d86d8L
        -0x7bf419428046f891L
        0x2d05a7327518c03bL    # 8.304465532471651E-92
        0x2d3ceee1e90eede4L
        -0x758a0c5db90abf70L
    .end array-data

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
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    :array_2
    .array-data 8
        0x1ec99af9f2924842L
        -0x2be6e83db793f445L    # -1.3399478290836851E97
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
    :array_3
    .array-data 8
        -0x506d8c77b6ea60b4L
        0x387f2077931c48e9L    # 1.4635762573779828E-36
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
    :array_4
    .array-data 8
        0x75c045dd287dc4aaL
        -0x122edde5cb2ac70dL    # -9.67688618237202E220
        -0x5d899fcb797af509L
        -0x72d07e7e39a40d98L
        0x1521fcc7b511b8deL    # 7.003286900312487E-207
        0x6cc5466d778409e1L    # 9.167663801536907E215
    .end array-data
.end method

.method public final zzc()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzb:Landroid/net/Uri;

    return-object v0
.end method

.method public final zzd()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzb:Landroid/net/Uri;

    .line 3
    .line 4
    const/16 v1, 0x7d0

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzd:Ljava/io/FileInputStream;

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception v3

    .line 16
    goto :goto_4

    .line 17
    :catch_0
    move-exception v3

    .line 18
    goto :goto_3

    .line 19
    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzd:Ljava/io/FileInputStream;

    .line 20
    .line 21
    :try_start_1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzc:Landroid/content/res/AssetFileDescriptor;

    .line 22
    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :catchall_1
    move-exception v1

    .line 30
    goto :goto_7

    .line 31
    :catch_1
    move-exception v3

    .line 32
    goto :goto_2

    .line 33
    :cond_1
    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzc:Landroid/content/res/AssetFileDescriptor;

    .line 34
    .line 35
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzf:Z

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzf:Z

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgq;->zzh()V

    .line 42
    .line 43
    .line 44
    :cond_2
    return-void

    .line 45
    :goto_2
    :try_start_2
    new-instance v4, Lcom/google/android/gms/internal/ads/zzgs;

    .line 46
    .line 47
    invoke-direct {v4, v3, v1}, Lcom/google/android/gms/internal/ads/zzgs;-><init>(Ljava/io/IOException;I)V

    .line 48
    .line 49
    .line 50
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 51
    :goto_3
    :try_start_3
    new-instance v4, Lcom/google/android/gms/internal/ads/zzgs;

    .line 52
    .line 53
    invoke-direct {v4, v3, v1}, Lcom/google/android/gms/internal/ads/zzgs;-><init>(Ljava/io/IOException;I)V

    .line 54
    .line 55
    .line 56
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 57
    :goto_4
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzd:Ljava/io/FileInputStream;

    .line 58
    .line 59
    :try_start_4
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzc:Landroid/content/res/AssetFileDescriptor;

    .line 60
    .line 61
    if-eqz v4, :cond_3

    .line 62
    .line 63
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 64
    .line 65
    .line 66
    goto :goto_5

    .line 67
    :catch_2
    move-exception v3

    .line 68
    goto :goto_6

    .line 69
    :cond_3
    :goto_5
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzc:Landroid/content/res/AssetFileDescriptor;

    .line 70
    .line 71
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzf:Z

    .line 72
    .line 73
    if-eqz v0, :cond_4

    .line 74
    .line 75
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzf:Z

    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgq;->zzh()V

    .line 78
    .line 79
    .line 80
    :cond_4
    throw v3

    .line 81
    :goto_6
    :try_start_5
    new-instance v4, Lcom/google/android/gms/internal/ads/zzgs;

    .line 82
    .line 83
    invoke-direct {v4, v3, v1}, Lcom/google/android/gms/internal/ads/zzgs;-><init>(Ljava/io/IOException;I)V

    .line 84
    .line 85
    .line 86
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 87
    :goto_7
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzc:Landroid/content/res/AssetFileDescriptor;

    .line 88
    .line 89
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzf:Z

    .line 90
    .line 91
    if-eqz v0, :cond_5

    .line 92
    .line 93
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzgt;->zzf:Z

    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgq;->zzh()V

    .line 96
    .line 97
    .line 98
    :cond_5
    throw v1
.end method
