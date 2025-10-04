.class public final Lcom/google/android/gms/internal/ads/zzavi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:[Ljava/lang/String;


# instance fields
.field private final zzb:Ljava/lang/String;

.field private final zzc:[Ljava/lang/String;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzave;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x2

    new-array v2, v1, [J

    fill-array-data v2, :array_0

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v3, 0x3

    new-array v3, v3, [J

    fill-array-data v3, :array_1

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    fill-array-data v1, :array_2

    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v2, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzavi;->zza:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 8
        0xc32ebf52133445cL
        -0x8bb1e88e083174eL
    .end array-data

    :array_1
    .array-data 8
        -0x6b092ea5fb9d1adfL
        -0x60fd0badd0b1fedfL
        -0x42222dcbe69a1be1L    # -1.084885569830321E-10
    .end array-data

    :array_2
    .array-data 8
        0x574d2cb8c2c3f639L    # 3.5081222005471123E112
        0x7a6b4d0ba1ee4db1L    # 4.9556869234242646E281
    .end array-data
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzave;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x4

    new-array v2, v1, [J

    fill-array-data v2, :array_0

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzavi;->zzb:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x3

    new-array v2, v2, [J

    fill-array-data v2, :array_1

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_2

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    fill-array-data v1, :array_3

    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v2, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzavi;->zzc:[Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzavi;->zzd:Lcom/google/android/gms/internal/ads/zzave;

    return-void

    :array_0
    .array-data 8
        -0x48bb0d97a439da0eL    # -1.8785834013834055E-42
        0x251322e534fb619dL    # 4.313602058614044E-130
        -0x755dd41ac6b52e1eL
        0x36782a3aa488ba91L    # 2.6454935608166692E-46
    .end array-data

    :array_1
    .array-data 8
        -0x486bf6840f6c4a90L    # -5.750350598151177E-41
        0x2ce199fc2ecd4aa8L    # 1.687645107714025E-92
        -0x9cc9c65062189fL    # -4.2159366236415E305
    .end array-data

    :array_2
    .array-data 8
        -0x57c7f2bb99d8f333L    # -6.104213276993734E-115
        0x16f0837a8db2b5d5L    # 3.451789688841532E-198
        0x2ba80f2ad2436b84L    # 2.1999532910613422E-98
        0x9e540b7e6aa531eL
    .end array-data

    :array_3
    .array-data 8
        0x62129b9a4f64e913L    # 2.6788797789360854E164
        0x6761ad6627639bf9L    # 9.845192138832792E189
        -0x7dfc98d4478946b4L    # -5.794599723850145E-299
        -0x3fe6f7d5dda9ac59L    # -6.257973228949516
    .end array-data
.end method

.method private final zzg(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 8

    .line 1
    const/4 v0, 0x6

    .line 2
    const/4 v1, 0x2

    .line 3
    if-eqz p1, :cond_6

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, -0x1

    .line 7
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v4

    .line 11
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzavi;->zzb:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-eqz v4, :cond_2

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 24
    .line 25
    new-array v6, v1, [J

    .line 26
    .line 27
    fill-array-data v6, :array_0

    .line 28
    .line 29
    .line 30
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v4
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 41
    if-eqz v4, :cond_2

    .line 42
    .line 43
    :try_start_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 48
    .line 49
    new-array v6, v1, [J

    .line 50
    .line 51
    fill-array-data v6, :array_1

    .line 52
    .line 53
    .line 54
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-nez v4, :cond_1

    .line 66
    .line 67
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 68
    .line 69
    new-array v5, v1, [J

    .line 70
    .line 71
    fill-array-data v5, :array_2

    .line 72
    .line 73
    .line 74
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 86
    .line 87
    new-array v7, v1, [J

    .line 88
    .line 89
    fill-array-data v7, :array_3

    .line 90
    .line 91
    .line 92
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    move-result v6

    .line 103
    if-eq v6, v3, :cond_0

    .line 104
    .line 105
    new-instance p1, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    add-int/lit8 v6, v6, 0x1

    .line 108
    .line 109
    invoke-virtual {v5, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 120
    .line 121
    new-array v3, v1, [J

    .line 122
    .line 123
    fill-array-data v3, :array_4

    .line 124
    .line 125
    .line 126
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 140
    .line 141
    new-array v1, v1, [J

    .line 142
    .line 143
    fill-array-data v1, :array_5

    .line 144
    .line 145
    .line 146
    invoke-direct {p2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p2

    .line 153
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p2

    .line 160
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    goto/16 :goto_0

    .line 172
    .line 173
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    invoke-virtual {v5, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 178
    .line 179
    .line 180
    move-result v3

    .line 181
    new-instance v6, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 184
    .line 185
    .line 186
    move-result v7

    .line 187
    add-int/2addr v7, v3

    .line 188
    invoke-virtual {v5, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 196
    .line 197
    new-array v7, v1, [J

    .line 198
    .line 199
    fill-array-data v7, :array_6

    .line 200
    .line 201
    .line 202
    invoke-direct {v2, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 216
    .line 217
    new-array v4, v1, [J

    .line 218
    .line 219
    fill-array-data v4, :array_7

    .line 220
    .line 221
    .line 222
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 236
    .line 237
    new-array v1, v1, [J

    .line 238
    .line 239
    fill-array-data v1, :array_8

    .line 240
    .line 241
    .line 242
    invoke-direct {p2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object p2

    .line 249
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 253
    .line 254
    .line 255
    move-result p1

    .line 256
    add-int/2addr v3, p1

    .line 257
    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object p1

    .line 268
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    goto/16 :goto_0

    .line 273
    .line 274
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzavj;

    .line 275
    .line 276
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 277
    .line 278
    const/4 v1, 0x5

    .line 279
    new-array v1, v1, [J

    .line 280
    .line 281
    fill-array-data v1, :array_9

    .line 282
    .line 283
    .line 284
    invoke-direct {p2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object p2

    .line 291
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzavj;-><init>(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    throw p1

    .line 295
    :catch_0
    :cond_2
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 296
    .line 297
    new-array v5, v1, [J

    .line 298
    .line 299
    fill-array-data v5, :array_a

    .line 300
    .line 301
    .line 302
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v4

    .line 309
    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v4

    .line 313
    if-nez v4, :cond_5

    .line 314
    .line 315
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 316
    .line 317
    new-array v5, v1, [J

    .line 318
    .line 319
    fill-array-data v5, :array_b

    .line 320
    .line 321
    .line 322
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v4

    .line 329
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v5

    .line 333
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 334
    .line 335
    new-array v7, v1, [J

    .line 336
    .line 337
    fill-array-data v7, :array_c

    .line 338
    .line 339
    .line 340
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v6

    .line 347
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 348
    .line 349
    .line 350
    move-result v6

    .line 351
    if-ne v6, v3, :cond_3

    .line 352
    .line 353
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 354
    .line 355
    new-array v7, v1, [J

    .line 356
    .line 357
    fill-array-data v7, :array_d

    .line 358
    .line 359
    .line 360
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v6

    .line 367
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 368
    .line 369
    .line 370
    move-result v6

    .line 371
    :cond_3
    if-eq v6, v3, :cond_4

    .line 372
    .line 373
    new-instance p1, Ljava/lang/StringBuilder;

    .line 374
    .line 375
    add-int/lit8 v6, v6, 0x1

    .line 376
    .line 377
    invoke-virtual {v5, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v2

    .line 381
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 388
    .line 389
    new-array v3, v1, [J

    .line 390
    .line 391
    fill-array-data v3, :array_e

    .line 392
    .line 393
    .line 394
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v2

    .line 401
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 408
    .line 409
    new-array v1, v1, [J

    .line 410
    .line 411
    fill-array-data v1, :array_f

    .line 412
    .line 413
    .line 414
    invoke-direct {p2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 415
    .line 416
    .line 417
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object p2

    .line 421
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object p2

    .line 428
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    .line 430
    .line 431
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object p1

    .line 435
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 436
    .line 437
    .line 438
    move-result-object p1

    .line 439
    goto :goto_0

    .line 440
    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 441
    .line 442
    .line 443
    move-result-object p1

    .line 444
    invoke-virtual {p1, v4, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 445
    .line 446
    .line 447
    move-result-object p1

    .line 448
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 449
    .line 450
    .line 451
    move-result-object p1

    .line 452
    :goto_0
    return-object p1

    .line 453
    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzavj;

    .line 454
    .line 455
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 456
    .line 457
    new-array v1, v0, [J

    .line 458
    .line 459
    fill-array-data v1, :array_10

    .line 460
    .line 461
    .line 462
    invoke-direct {p2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 463
    .line 464
    .line 465
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object p2

    .line 469
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzavj;-><init>(Ljava/lang/String;)V

    .line 470
    .line 471
    .line 472
    throw p1

    .line 473
    :cond_6
    const/4 p1, 0x0

    .line 474
    throw p1
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 475
    :catch_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzavj;

    .line 476
    .line 477
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 478
    .line 479
    new-array v0, v0, [J

    .line 480
    .line 481
    fill-array-data v0, :array_11

    .line 482
    .line 483
    .line 484
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 485
    .line 486
    .line 487
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object p2

    .line 491
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzavj;-><init>(Ljava/lang/String;)V

    .line 492
    .line 493
    .line 494
    throw p1

    .line 495
    :array_0
    .array-data 8
        -0x1fe4b14a1073c3bcL    # -9.153330681429983E154
        -0x6d5849f701b6bf09L    # -8.396231418698121E-219
    .end array-data

    .line 496
    .line 497
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
    :array_1
    .array-data 8
        -0x603a1a968cb635dfL    # -1.275850586054977E-155
        -0x7e8cd1a33592d1b4L
    .end array-data

    .line 508
    .line 509
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
    :array_2
    .array-data 8
        -0x33258715f2558451L    # -1.7015752132489237E62
        0xca011d625d9ec6aL
    .end array-data

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
    :array_3
    .array-data 8
        -0x680f6c810e6d2229L    # -2.270735822334835E-193
        -0x1d156e6dbeacb5ceL    # -3.1334075379624845E168
    .end array-data

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
    :array_4
    .array-data 8
        0x323c2ba084ad68b9L    # 1.0448988795204968E-66
        -0x3122853fbe437e8L
    .end array-data

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
    .line 554
    .line 555
    :array_5
    .array-data 8
        -0x5206d54d277abc75L    # -3.162780967636516E-87
        0x64710a101a964406L    # 6.742942310712628E175
    .end array-data

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
    .line 566
    .line 567
    :array_6
    .array-data 8
        -0x401b7c8062f82032L    # -0.6410520617491728
        -0x72e842cd29d626cdL
    .end array-data

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
    .line 578
    .line 579
    :array_7
    .array-data 8
        0x100b0141a42b2b60L
        -0x7a44e8b9262338c2L
    .end array-data

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
    :array_8
    .array-data 8
        0x2790632b46981c76L    # 4.061544432175372E-118
        -0x8ef029a17958bcaL    # -3.423934009888962E265
    .end array-data

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
    .line 602
    .line 603
    :array_9
    .array-data 8
        -0x54d174a534246decL
        -0x2b82b25e5b68ad77L    # -1.0014617160304707E99
        -0x19be31e422b96bf6L    # -3.782788723520134E184
        0x690bee866b4c56adL    # 1.0439630732263146E198
        -0xa818e618f17b151L    # -9.142300801031301E257
    .end array-data

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
    .line 626
    .line 627
    :array_a
    .array-data 8
        -0x71d51806d15a52d9L
        -0x6e1e42eedbf1ce7dL
    .end array-data

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
    :array_b
    .array-data 8
        -0x613a1697ed65501L    # -2.01158058253091E279
        -0x7211c39b977c634bL
    .end array-data

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
    .line 650
    .line 651
    :array_c
    .array-data 8
        0x2690fc3e34dccf80L    # 6.423557534341039E-123
        -0x4bb2bb2a52b87eacL    # -9.325604931754206E-57
    .end array-data

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
    :array_d
    .array-data 8
        -0x6e91d852b6fb9792L    # -1.018339068651951E-224
        -0x2923b1d2cc5ecbfdL    # -2.6590553491761962E110
    .end array-data

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
    :array_e
    .array-data 8
        0x2044ed046c2780f3L    # 3.121442198604817E-153
        -0x580e838c6ae39120L    # -2.773675178063402E-116
    .end array-data

    .line 676
    .line 677
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
    :array_f
    .array-data 8
        0x1f7a37741735064bL    # 4.773741421587113E-157
        0x3cc6482dd9dda7aaL    # 6.184483378558423E-16
    .end array-data

    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    :array_10
    .array-data 8
        0x3cc1ad63cb4ff552L    # 4.906437475326268E-16
        0x285939b43de22320L
        -0x7cef24468b47611dL    # -6.59899777809268E-294
        -0x3cf55ea32bd87715L    # -9.369711828626214E14
        -0x6fdb12555007c736L    # -6.740142300606912E-231
        -0x35253d28a843c571L    # -4.005006242117712E52
    .end array-data

    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
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
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    :array_11
    .array-data 8
        -0x1efe7e09b12be4b4L    # -1.9229852008573895E159
        0x1d9df073c12c6781L    # 5.077191624864561E-166
        -0x6570b86fd126acf8L
        -0x11facea4e53cbbcfL    # -9.575800454961822E221
        0x6911cc7e6b0e23d0L    # 1.330478878913701E198
        -0x4ec4eea2d38b65cbL    # -1.5319847714454508E-71
    .end array-data
.end method


# virtual methods
.method public final zza(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavi;->zzd:Lcom/google/android/gms/internal/ads/zzave;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    new-array v2, v2, [J

    .line 7
    .line 8
    fill-array-data v2, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-interface {v0, p2, v1, p3, p4}, Lcom/google/android/gms/internal/ads/zzave;->zzf(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzavi;->zzg(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 27
    .line 28
    .line 29
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    return-object p1

    .line 31
    :catch_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzavj;

    .line 32
    .line 33
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 34
    .line 35
    const/4 p3, 0x6

    .line 36
    new-array p3, p3, [J

    .line 37
    .line 38
    fill-array-data p3, :array_1

    .line 39
    .line 40
    .line 41
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzavj;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1

    .line 52
    nop

    .line 53
    :array_0
    .array-data 8
        -0x7e6aa213cfa8d3acL
        0xab038302342d71bL
    .end array-data

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    :array_1
    .array-data 8
        0x1f948aaf1ef5c81cL
        0x2c995cf4d56c4ae2L    # 7.599480090918988E-94
        0x2fa1c234450c4538L
        -0x369132fcdf5dacfbL    # -5.495051510377297E45
        -0xe638de315ce18d9L    # -1.8523114869181276E239
        -0x402a43e8ccc202aeL    # -0.33960514072528725
    .end array-data
.end method

.method public final zzb(Landroid/net/Uri;Landroid/content/Context;)Landroid/net/Uri;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavi;->zzd:Lcom/google/android/gms/internal/ads/zzave;

    .line 2
    .line 3
    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/ads/zzave;->zzg(Landroid/content/Context;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzavi;->zzg(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzave;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavi;->zzd:Lcom/google/android/gms/internal/ads/zzave;

    return-object v0
.end method

.method public final zzd(Landroid/view/MotionEvent;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavi;->zzd:Lcom/google/android/gms/internal/ads/zzave;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzave;->zzk(Landroid/view/MotionEvent;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zze(Landroid/net/Uri;)Z
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzavi;->zzf(Landroid/net/Uri;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    sget-object v0, Lcom/google/android/gms/internal/ads/zzavi;->zza:[Ljava/lang/String;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    const/4 v3, 0x3

    .line 12
    if-ge v2, v3, :cond_1

    .line 13
    .line 14
    aget-object v3, v0, v2

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-virtual {v4, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    const/4 p1, 0x1

    .line 27
    return p1

    .line 28
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    return v1
.end method

.method public final zzf(Landroid/net/Uri;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzavi;->zzc:[Ljava/lang/String;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    const/4 v3, 0x3

    .line 13
    if-ge v2, v3, :cond_1

    .line 14
    .line 15
    aget-object v3, v1, v2

    .line 16
    .line 17
    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    return p1

    .line 25
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    :cond_1
    return v0
.end method
