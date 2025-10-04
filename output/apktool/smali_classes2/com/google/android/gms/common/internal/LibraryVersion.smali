.class public Lcom/google/android/gms/common/internal/LibraryVersion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final zza:Lcom/google/android/gms/common/internal/GmsLogger;

.field private static final zzb:Lcom/google/android/gms/common/internal/LibraryVersion;


# instance fields
.field private final zzc:Lj$/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/google/android/gms/common/internal/GmsLogger;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x3

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
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    new-array v3, v3, [J

    .line 22
    .line 23
    const-wide v4, 0x2e6d487cd81b1c78L    # 4.7105227066656463E-85

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    const/4 v6, 0x0

    .line 29
    aput-wide v4, v3, v6

    .line 30
    .line 31
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/internal/GmsLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    sput-object v0, Lcom/google/android/gms/common/internal/LibraryVersion;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    .line 42
    .line 43
    new-instance v0, Lcom/google/android/gms/common/internal/LibraryVersion;

    .line 44
    .line 45
    invoke-direct {v0}, Lcom/google/android/gms/common/internal/LibraryVersion;-><init>()V

    .line 46
    .line 47
    .line 48
    sput-object v0, Lcom/google/android/gms/common/internal/LibraryVersion;->zzb:Lcom/google/android/gms/common/internal/LibraryVersion;

    .line 49
    .line 50
    return-void

    .line 51
    :array_0
    .array-data 8
        0x21d98470d00475f3L
        -0x483bead36e06ac26L    # -4.61076439967956E-40
        0x18b737801d5be343L
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/common/internal/LibraryVersion;->zzc:Lj$/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    return-void
.end method

.method public static getInstance()Lcom/google/android/gms/common/internal/LibraryVersion;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    sget-object v0, Lcom/google/android/gms/common/internal/LibraryVersion;->zzb:Lcom/google/android/gms/common/internal/LibraryVersion;

    return-object v0
.end method


# virtual methods
.method public getVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const/4 v0, 0x7

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x3

    .line 4
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    const/4 v4, 0x6

    .line 7
    new-array v4, v4, [J

    .line 8
    .line 9
    fill-array-data v4, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-static {p1, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    iget-object v3, p0, Lcom/google/android/gms/common/internal/LibraryVersion;->zzc:Lj$/util/concurrent/ConcurrentHashMap;

    .line 23
    .line 24
    invoke-virtual {v3, p1}, Lj$/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    iget-object v0, p0, Lcom/google/android/gms/common/internal/LibraryVersion;->zzc:Lj$/util/concurrent/ConcurrentHashMap;

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Ljava/lang/String;

    .line 37
    .line 38
    return-object p1

    .line 39
    :cond_0
    new-instance v3, Ljava/util/Properties;

    .line 40
    .line 41
    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 42
    .line 43
    .line 44
    const/4 v4, 0x0

    .line 45
    :try_start_0
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 46
    .line 47
    new-array v6, v2, [J

    .line 48
    .line 49
    fill-array-data v6, :array_1

    .line 50
    .line 51
    .line 52
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    const/4 v6, 0x1

    .line 60
    new-array v6, v6, [Ljava/lang/Object;

    .line 61
    .line 62
    const/4 v7, 0x0

    .line 63
    aput-object p1, v6, v7

    .line 64
    .line 65
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    const-class v6, Lcom/google/android/gms/common/internal/LibraryVersion;

    .line 70
    .line 71
    invoke-virtual {v6, v5}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    .line 72
    .line 73
    .line 74
    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 75
    if-eqz v5, :cond_1

    .line 76
    .line 77
    :try_start_1
    invoke-virtual {v3, v5}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 78
    .line 79
    .line 80
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 81
    .line 82
    new-array v7, v1, [J

    .line 83
    .line 84
    fill-array-data v7, :array_2

    .line 85
    .line 86
    .line 87
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    invoke-virtual {v3, v6, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    sget-object v3, Lcom/google/android/gms/common/internal/LibraryVersion;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    .line 99
    .line 100
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 101
    .line 102
    new-array v7, v2, [J

    .line 103
    .line 104
    fill-array-data v7, :array_3

    .line 105
    .line 106
    .line 107
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    new-instance v7, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 123
    .line 124
    new-array v9, v2, [J

    .line 125
    .line 126
    fill-array-data v9, :array_4

    .line 127
    .line 128
    .line 129
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v8

    .line 136
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v7

    .line 146
    invoke-virtual {v3, v6, v7}, Lcom/google/android/gms/common/internal/GmsLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    goto/16 :goto_3

    .line 150
    .line 151
    :catchall_0
    move-exception p1

    .line 152
    goto :goto_0

    .line 153
    :catch_0
    move-exception v3

    .line 154
    move-object v10, v5

    .line 155
    move-object v5, v4

    .line 156
    move-object v4, v10

    .line 157
    goto :goto_2

    .line 158
    :cond_1
    sget-object v3, Lcom/google/android/gms/common/internal/LibraryVersion;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    .line 159
    .line 160
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 161
    .line 162
    new-array v7, v2, [J

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
    new-instance v7, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .line 178
    .line 179
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 180
    .line 181
    new-array v9, v0, [J

    .line 182
    .line 183
    fill-array-data v9, :array_6

    .line 184
    .line 185
    .line 186
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v8

    .line 193
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v7

    .line 203
    invoke-virtual {v3, v6, v7}, Lcom/google/android/gms/common/internal/GmsLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 204
    .line 205
    .line 206
    goto :goto_3

    .line 207
    :goto_0
    move-object v4, v5

    .line 208
    goto/16 :goto_4

    .line 209
    .line 210
    :catch_1
    move-exception v3

    .line 211
    goto :goto_1

    .line 212
    :catchall_1
    move-exception p1

    .line 213
    goto :goto_4

    .line 214
    :goto_1
    move-object v5, v4

    .line 215
    :goto_2
    :try_start_2
    sget-object v6, Lcom/google/android/gms/common/internal/LibraryVersion;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    .line 216
    .line 217
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 218
    .line 219
    new-array v8, v2, [J

    .line 220
    .line 221
    fill-array-data v8, :array_7

    .line 222
    .line 223
    .line 224
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v7

    .line 231
    new-instance v8, Ljava/lang/StringBuilder;

    .line 232
    .line 233
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    .line 235
    .line 236
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 237
    .line 238
    new-array v0, v0, [J

    .line 239
    .line 240
    fill-array-data v0, :array_8

    .line 241
    .line 242
    .line 243
    invoke-direct {v9, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    invoke-virtual {v6, v7, v0, v3}, Lcom/google/android/gms/common/internal/GmsLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 261
    .line 262
    .line 263
    move-object v10, v5

    .line 264
    move-object v5, v4

    .line 265
    move-object v4, v10

    .line 266
    :goto_3
    if-eqz v5, :cond_2

    .line 267
    .line 268
    invoke-static {v5}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 269
    .line 270
    .line 271
    :cond_2
    if-nez v4, :cond_3

    .line 272
    .line 273
    sget-object v0, Lcom/google/android/gms/common/internal/LibraryVersion;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    .line 274
    .line 275
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 276
    .line 277
    new-array v2, v2, [J

    .line 278
    .line 279
    fill-array-data v2, :array_9

    .line 280
    .line 281
    .line 282
    invoke-direct {v3, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v2

    .line 289
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 290
    .line 291
    const/16 v4, 0x16

    .line 292
    .line 293
    new-array v4, v4, [J

    .line 294
    .line 295
    fill-array-data v4, :array_a

    .line 296
    .line 297
    .line 298
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v3

    .line 305
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/common/internal/GmsLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 309
    .line 310
    new-array v1, v1, [J

    .line 311
    .line 312
    fill-array-data v1, :array_b

    .line 313
    .line 314
    .line 315
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v4

    .line 322
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/common/internal/LibraryVersion;->zzc:Lj$/util/concurrent/ConcurrentHashMap;

    .line 323
    .line 324
    invoke-virtual {v0, p1, v4}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    return-object v4

    .line 328
    :goto_4
    if-eqz v4, :cond_4

    .line 329
    .line 330
    invoke-static {v4}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 331
    .line 332
    .line 333
    :cond_4
    throw p1

    .line 334
    nop

    .line 335
    :array_0
    .array-data 8
        0x4eea505859881106L    # 1.452892040501763E72
        0x4115998197e7e31L    # 4.45085122070186E-289
        -0x4e499fd6e4cabc21L    # -3.242023990418569E-69
        -0x243211c9a7e2035aL
        -0x3767ddd82ab63858L    # -5.2557935254626465E41
        -0x79841a2d1e91a84L    # -1.003489516022936E272
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
    .line 360
    .line 361
    .line 362
    .line 363
    :array_1
    .array-data 8
        0x1e60634e2216e503L
        -0x2cad6f7ff3bb66ccL    # -2.4202534647127693E93
        0x4ad809b25dbb2e9L
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
    :array_2
    .array-data 8
        -0x7d7c86988d2661a8L
        -0x31dcb30802283e28L    # -2.601723693293711E68
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
    :array_3
    .array-data 8
        -0x4731d51339c1ebb2L
        0x6ad4dbc159ed0004L
        0x4e41c15c9ca936c0L    # 9.573649279658367E68
    .end array-data

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
    :array_4
    .array-data 8
        0x737030ced967e0b4L    # 1.13203771792785E248
        -0x44000aef697fb608L    # -1.0827549103481455E-19
        -0x4fb06bad864b010aL    # -5.454497571122413E-76
    .end array-data

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
    :array_5
    .array-data 8
        0x3b8046a236e0c725L    # 4.308198218481904E-22
        0x5012a30ea5403c38L    # 5.395026192423991E77
        -0xb2bb2bdc6ad00d7L    # -5.953751687284875E254
    .end array-data

    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    :array_6
    .array-data 8
        0x5fa3aed6fd007beL
        -0x36bbc9c8720c2ca2L    # -9.014757432565415E44
        -0x6df05f72c0a6a72L
        -0x78af5d4acfe39895L    # -1.921948826622141E-273
        0xf7c48919452be5bL
        0x829b99af04aa6ceL
        0x5785397a79864648L    # 4.083441739032625E113
    .end array-data

    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
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
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    :array_7
    .array-data 8
        -0x27c99bc129830fa4L    # -8.822733247933204E116
        -0x545a81ea0c12e838L
        -0x6df12f85b7ed9965L
    .end array-data

    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    :array_8
    .array-data 8
        0x4f1986ded3f178b8L    # 1.1275504514579708E73
        0x6e6130ce636c102eL    # 4.971175260500208E223
        0x5d179d5fbc728026L    # 2.8121676183570574E140
        0x56e1607a7502b3e1L    # 3.2648252589634684E110
        -0x6540d8f6ab6b454bL    # -7.507499514918416E-180
        0x7eced9518fbae5b0L    # 6.6109725413639415E302
        0x499a34b78f4a4e56L    # 3.7402347274804254E46
    .end array-data

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
    :array_9
    .array-data 8
        -0x4f6aaf1820e6bcaL    # -4.708685952337484E284
        -0x671eb3b477a5e96bL    # -7.764782791404975E-189
        0x7360b455f43458a8L    # 5.83980411923408E247
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
    .line 532
    .line 533
    .line 534
    .line 535
    :array_a
    .array-data 8
        0x4abbfafe59e7ae3fL    # 1.046872681516827E52
        -0x2a9f0d0d88ba0b1L    # -5.635438926651671E295
        -0x1ffb5942d552bde6L    # -3.4611123135736106E154
        -0xe28cbc7cf33f230L    # -2.4175701491920965E240
        0x6cc9c8dd47c775a4L    # 1.111086198020684E216
        -0x7f8931aef93506e8L    # -2.02979460060491E-306
        0x695d71e222cf2acdL    # 3.5216532621263535E199
        0x5000752128cb6c37L    # 2.382065773235698E77
        0x3bd05a0ac22b45e2L    # 1.3850451226589697E-20
        -0x411155aea1000997L    # -1.4622356474087999E-5
        -0x5eed7489baffcb37L
        0x719a71adb323ecceL    # 1.7219663254575046E239
        0x53d03b9f3517ff80L    # 5.41769684625933E95
        -0x1e97f6d1dc574b84L
        -0x20964fb4db7f6d63L    # -4.2044487230258945E151
        0x14c13caa0706d1d8L
        -0x5e8ad539a5597ae2L
        0x5adda206fdd65cd8L    # 5.135143560373812E129
        -0x3835414a924986deL    # -7.110028820402023E37
        -0x5c5bb643082d2449L    # -5.451701479755811E-137
        0x3b6c45ad650634d3L    # 1.8708957379061898E-22
        -0x98742c4ac8ebfa9L    # -4.868796813684064E262
    .end array-data

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
    :array_b
    .array-data 8
        -0x3fee89cae12c02ddL    # -4.365437013329287
        -0x646af5fe8dea4bccL    # -8.307098881517774E-176
    .end array-data
.end method
