.class public final Lcom/google/android/gms/internal/ads/zzawj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zzd:Ljava/lang/String; = "zzawj"


# instance fields
.field protected final zza:Landroid/content/Context;

.field protected zzb:Z

.field protected zzc:Z

.field private zze:Ljava/util/concurrent/ExecutorService;

.field private zzf:Ldalvik/system/DexClassLoader;

.field private zzg:Lcom/google/android/gms/internal/ads/zzavo;

.field private zzh:[B

.field private volatile zzi:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

.field private volatile zzj:Z

.field private zzk:Ljava/util/concurrent/Future;

.field private final zzl:Z

.field private volatile zzm:Lcom/google/android/gms/internal/ads/zzatd;

.field private zzn:Ljava/util/concurrent/Future;

.field private zzo:Lcom/google/android/gms/internal/ads/zzavd;

.field private final zzp:Ljava/util/Map;

.field private zzq:Z

.field private zzr:Lcom/google/android/gms/internal/ads/zzawc;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzawj;->zzi:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzawj;->zzj:Z

    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzawj;->zzk:Ljava/util/concurrent/Future;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzawj;->zzm:Lcom/google/android/gms/internal/ads/zzatd;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzawj;->zzn:Ljava/util/concurrent/Future;

    .line 15
    .line 16
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzawj;->zzb:Z

    .line 17
    .line 18
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzawj;->zzc:Z

    .line 19
    .line 20
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzawj;->zzq:Z

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    :cond_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzawj;->zzl:Z

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    move-object p1, v0

    .line 34
    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzawj;->zza:Landroid/content/Context;

    .line 35
    .line 36
    new-instance v0, Ljava/util/HashMap;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzawj;->zzp:Ljava/util/Map;

    .line 42
    .line 43
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawj;->zzr:Lcom/google/android/gms/internal/ads/zzawc;

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    return-void

    .line 48
    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzawc;

    .line 49
    .line 50
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzawc;-><init>(Landroid/content/Context;)V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzawj;->zzr:Lcom/google/android/gms/internal/ads/zzawc;

    .line 54
    .line 55
    return-void
.end method

.method public static zzg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzawj;
    .locals 9

    .line 1
    const/4 p1, 0x2

    .line 2
    const/4 p2, 0x0

    .line 3
    const/4 v0, 0x3

    .line 4
    const/4 v1, 0x1

    .line 5
    new-instance v2, Lcom/google/android/gms/internal/ads/zzawj;

    .line 6
    .line 7
    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzawj;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    new-instance p0, Lcom/google/android/gms/internal/ads/zzawf;

    .line 11
    .line 12
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzawf;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-static {p0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    iput-object p0, v2, Lcom/google/android/gms/internal/ads/zzawj;->zze:Ljava/util/concurrent/ExecutorService;

    .line 20
    .line 21
    iput-boolean p3, v2, Lcom/google/android/gms/internal/ads/zzawj;->zzj:Z

    .line 22
    .line 23
    if-eqz p3, :cond_0

    .line 24
    .line 25
    iget-object p0, v2, Lcom/google/android/gms/internal/ads/zzawj;->zze:Ljava/util/concurrent/ExecutorService;

    .line 26
    .line 27
    new-instance p3, Lcom/google/android/gms/internal/ads/zzawg;

    .line 28
    .line 29
    invoke-direct {p3, v2}, Lcom/google/android/gms/internal/ads/zzawg;-><init>(Lcom/google/android/gms/internal/ads/zzawj;)V

    .line 30
    .line 31
    .line 32
    invoke-interface {p0, p3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    iput-object p0, v2, Lcom/google/android/gms/internal/ads/zzawj;->zzk:Ljava/util/concurrent/Future;

    .line 37
    .line 38
    :cond_0
    iget-object p0, v2, Lcom/google/android/gms/internal/ads/zzawj;->zze:Ljava/util/concurrent/ExecutorService;

    .line 39
    .line 40
    new-instance p3, Lcom/google/android/gms/internal/ads/zzawi;

    .line 41
    .line 42
    invoke-direct {p3, v2}, Lcom/google/android/gms/internal/ads/zzawi;-><init>(Lcom/google/android/gms/internal/ads/zzawj;)V

    .line 43
    .line 44
    .line 45
    invoke-interface {p0, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzavz; {:try_start_0 .. :try_end_0} :catch_6

    .line 46
    .line 47
    .line 48
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    iget-object p3, v2, Lcom/google/android/gms/internal/ads/zzawj;->zza:Landroid/content/Context;

    .line 53
    .line 54
    invoke-virtual {p0, p3}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getApkVersion(Landroid/content/Context;)I

    .line 55
    .line 56
    .line 57
    move-result p3

    .line 58
    if-lez p3, :cond_1

    .line 59
    .line 60
    const/4 p3, 0x1

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    const/4 p3, 0x0

    .line 63
    :goto_0
    iput-boolean p3, v2, Lcom/google/android/gms/internal/ads/zzawj;->zzb:Z

    .line 64
    .line 65
    iget-object p3, v2, Lcom/google/android/gms/internal/ads/zzawj;->zza:Landroid/content/Context;

    .line 66
    .line 67
    invoke-virtual {p0, p3}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    if-nez p0, :cond_2

    .line 72
    .line 73
    const/4 p0, 0x1

    .line 74
    goto :goto_1

    .line 75
    :cond_2
    const/4 p0, 0x0

    .line 76
    :goto_1
    iput-boolean p0, v2, Lcom/google/android/gms/internal/ads/zzawj;->zzc:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    .line 78
    :catchall_0
    :try_start_2
    invoke-virtual {v2, p2, v1}, Lcom/google/android/gms/internal/ads/zzawj;->zzo(IZ)V

    .line 79
    .line 80
    .line 81
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzawm;->zzc()Z

    .line 82
    .line 83
    .line 84
    move-result p0

    .line 85
    if-eqz p0, :cond_4

    .line 86
    .line 87
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbgc;->zzde:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 88
    .line 89
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 90
    .line 91
    .line 92
    move-result-object p3

    .line 93
    invoke-virtual {p3, p0}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    check-cast p0, Ljava/lang/Boolean;

    .line 98
    .line 99
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 100
    .line 101
    .line 102
    move-result p0

    .line 103
    if-nez p0, :cond_3

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 107
    .line 108
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 109
    .line 110
    const/16 p2, 0xa

    .line 111
    .line 112
    new-array p2, p2, [J

    .line 113
    .line 114
    fill-array-data p2, :array_0

    .line 115
    .line 116
    .line 117
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    throw p0

    .line 128
    :cond_4
    :goto_2
    new-instance p0, Lcom/google/android/gms/internal/ads/zzavo;

    .line 129
    .line 130
    const/4 p3, 0x0

    .line 131
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzavo;-><init>(Ljava/security/SecureRandom;)V

    .line 132
    .line 133
    .line 134
    iput-object p0, v2, Lcom/google/android/gms/internal/ads/zzawj;->zzg:Lcom/google/android/gms/internal/ads/zzavo;
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzavz; {:try_start_2 .. :try_end_2} :catch_6

    .line 135
    .line 136
    :try_start_3
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 137
    .line 138
    const/4 v4, 0x7

    .line 139
    new-array v4, v4, [J

    .line 140
    .line 141
    fill-array-data v4, :array_1

    .line 142
    .line 143
    .line 144
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v3
    :try_end_3
    .catch Lcom/google/android/gms/internal/ads/zzavn; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/google/android/gms/internal/ads/zzavz; {:try_start_3 .. :try_end_3} :catch_6

    .line 151
    :try_start_4
    invoke-static {v3, p2}, Lcom/google/android/gms/internal/ads/zzatt;->zzb(Ljava/lang/String;Z)[B

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    array-length v4, v3

    .line 156
    const/16 v5, 0x20

    .line 157
    .line 158
    if-ne v4, v5, :cond_a

    .line 159
    .line 160
    const/4 v4, 0x4

    .line 161
    const/16 v5, 0x10

    .line 162
    .line 163
    invoke-static {v3, v4, v5}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    new-array v4, v5, [B

    .line 168
    .line 169
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 170
    .line 171
    .line 172
    const/4 v3, 0x0

    .line 173
    :goto_3
    if-ge v3, v5, :cond_5

    .line 174
    .line 175
    aget-byte v6, v4, v3

    .line 176
    .line 177
    xor-int/lit8 v6, v6, 0x44

    .line 178
    .line 179
    int-to-byte v6, v6

    .line 180
    aput-byte v6, v4, v3
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/google/android/gms/internal/ads/zzavn; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/google/android/gms/internal/ads/zzavz; {:try_start_4 .. :try_end_4} :catch_6

    .line 181
    .line 182
    add-int/2addr v3, v1

    .line 183
    goto :goto_3

    .line 184
    :catch_0
    move-exception p0

    .line 185
    goto/16 :goto_a

    .line 186
    .line 187
    :catch_1
    move-exception p1

    .line 188
    goto/16 :goto_9

    .line 189
    .line 190
    :cond_5
    :try_start_5
    iput-object v4, v2, Lcom/google/android/gms/internal/ads/zzawj;->zzh:[B
    :try_end_5
    .catch Lcom/google/android/gms/internal/ads/zzavn; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcom/google/android/gms/internal/ads/zzavz; {:try_start_5 .. :try_end_5} :catch_6

    .line 191
    .line 192
    :try_start_6
    iget-object p0, v2, Lcom/google/android/gms/internal/ads/zzawj;->zza:Landroid/content/Context;

    .line 193
    .line 194
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 195
    .line 196
    .line 197
    move-result-object p0

    .line 198
    if-nez p0, :cond_7

    .line 199
    .line 200
    iget-object p0, v2, Lcom/google/android/gms/internal/ads/zzawj;->zza:Landroid/content/Context;

    .line 201
    .line 202
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 203
    .line 204
    new-array v4, p1, [J

    .line 205
    .line 206
    fill-array-data v4, :array_2

    .line 207
    .line 208
    .line 209
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v3

    .line 216
    invoke-virtual {p0, v3, p2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    .line 217
    .line 218
    .line 219
    move-result-object p0

    .line 220
    if-eqz p0, :cond_6

    .line 221
    .line 222
    goto :goto_4

    .line 223
    :cond_6
    new-instance p0, Lcom/google/android/gms/internal/ads/zzavz;

    .line 224
    .line 225
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzavz;-><init>()V

    .line 226
    .line 227
    .line 228
    throw p0

    .line 229
    :catch_2
    move-exception p0

    .line 230
    goto/16 :goto_5

    .line 231
    .line 232
    :catch_3
    move-exception p0

    .line 233
    goto/16 :goto_6

    .line 234
    .line 235
    :catch_4
    move-exception p0

    .line 236
    goto/16 :goto_7

    .line 237
    .line 238
    :catch_5
    move-exception p0

    .line 239
    goto/16 :goto_8

    .line 240
    .line 241
    :cond_7
    :goto_4
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 242
    .line 243
    new-array v4, v0, [J

    .line 244
    .line 245
    fill-array-data v4, :array_3

    .line 246
    .line 247
    .line 248
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v3

    .line 255
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 256
    .line 257
    const/16 v5, 0x6f1

    .line 258
    .line 259
    new-array v5, v5, [J

    .line 260
    .line 261
    fill-array-data v5, :array_4

    .line 262
    .line 263
    .line 264
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v4

    .line 271
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 272
    .line 273
    new-array v6, v0, [J

    .line 274
    .line 275
    fill-array-data v6, :array_5

    .line 276
    .line 277
    .line 278
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v5

    .line 285
    new-instance v6, Ljava/io/File;

    .line 286
    .line 287
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 288
    .line 289
    new-array v8, v0, [J

    .line 290
    .line 291
    fill-array-data v8, :array_6

    .line 292
    .line 293
    .line 294
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v7

    .line 301
    new-array v8, p1, [Ljava/lang/Object;

    .line 302
    .line 303
    aput-object p0, v8, p2

    .line 304
    .line 305
    aput-object v5, v8, v1

    .line 306
    .line 307
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v5

    .line 311
    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 315
    .line 316
    .line 317
    move-result v5

    .line 318
    if-nez v5, :cond_9

    .line 319
    .line 320
    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzawj;->zzg:Lcom/google/android/gms/internal/ads/zzavo;

    .line 321
    .line 322
    iget-object v7, v2, Lcom/google/android/gms/internal/ads/zzawj;->zzh:[B

    .line 323
    .line 324
    invoke-virtual {v5, v7, v4}, Lcom/google/android/gms/internal/ads/zzavo;->zzb([BLjava/lang/String;)[B

    .line 325
    .line 326
    .line 327
    move-result-object v4

    .line 328
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    .line 329
    .line 330
    .line 331
    new-instance v5, Ljava/io/FileOutputStream;

    .line 332
    .line 333
    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 334
    .line 335
    .line 336
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 337
    .line 338
    const/16 v8, 0x21

    .line 339
    .line 340
    if-lt v7, v8, :cond_8

    .line 341
    .line 342
    invoke-virtual {v6}, Ljava/io/File;->setReadOnly()Z

    .line 343
    .line 344
    .line 345
    :cond_8
    array-length v7, v4

    .line 346
    invoke-virtual {v5, v4, p2, v7}, Ljava/io/FileOutputStream;->write([BII)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 350
    .line 351
    .line 352
    :cond_9
    invoke-direct {v2, p0, v3}, Lcom/google/android/gms/internal/ads/zzawj;->zzx(Ljava/io/File;Ljava/lang/String;)Z
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lcom/google/android/gms/internal/ads/zzavn; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lcom/google/android/gms/internal/ads/zzavz; {:try_start_6 .. :try_end_6} :catch_6

    .line 353
    .line 354
    .line 355
    :try_start_7
    new-instance v4, Ldalvik/system/DexClassLoader;

    .line 356
    .line 357
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v5

    .line 361
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v7

    .line 365
    iget-object v8, v2, Lcom/google/android/gms/internal/ads/zzawj;->zza:Landroid/content/Context;

    .line 366
    .line 367
    invoke-virtual {v8}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 368
    .line 369
    .line 370
    move-result-object v8

    .line 371
    invoke-direct {v4, v5, v7, p3, v8}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 372
    .line 373
    .line 374
    iput-object v4, v2, Lcom/google/android/gms/internal/ads/zzawj;->zzf:Ldalvik/system/DexClassLoader;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 375
    .line 376
    :try_start_8
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzawj;->zzy(Ljava/io/File;)V

    .line 377
    .line 378
    .line 379
    invoke-direct {v2, p0, v3}, Lcom/google/android/gms/internal/ads/zzawj;->zzw(Ljava/io/File;Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 383
    .line 384
    new-array v0, v0, [J

    .line 385
    .line 386
    fill-array-data v0, :array_7

    .line 387
    .line 388
    .line 389
    invoke-direct {p3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object p3

    .line 396
    new-array p1, p1, [Ljava/lang/Object;

    .line 397
    .line 398
    aput-object p0, p1, p2

    .line 399
    .line 400
    aput-object v3, p1, v1

    .line 401
    .line 402
    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object p0

    .line 406
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzawj;->zzz(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Lcom/google/android/gms/internal/ads/zzavn; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lcom/google/android/gms/internal/ads/zzavz; {:try_start_8 .. :try_end_8} :catch_6

    .line 407
    .line 408
    .line 409
    :try_start_9
    new-instance p0, Lcom/google/android/gms/internal/ads/zzavd;

    .line 410
    .line 411
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzavd;-><init>(Lcom/google/android/gms/internal/ads/zzawj;)V

    .line 412
    .line 413
    .line 414
    iput-object p0, v2, Lcom/google/android/gms/internal/ads/zzawj;->zzo:Lcom/google/android/gms/internal/ads/zzavd;

    .line 415
    .line 416
    iput-boolean v1, v2, Lcom/google/android/gms/internal/ads/zzawj;->zzq:Z
    :try_end_9
    .catch Lcom/google/android/gms/internal/ads/zzavz; {:try_start_9 .. :try_end_9} :catch_6

    .line 417
    .line 418
    goto :goto_b

    .line 419
    :catchall_1
    move-exception p3

    .line 420
    :try_start_a
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzawj;->zzy(Ljava/io/File;)V

    .line 421
    .line 422
    .line 423
    invoke-direct {v2, p0, v3}, Lcom/google/android/gms/internal/ads/zzawj;->zzw(Ljava/io/File;Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 427
    .line 428
    new-array v0, v0, [J

    .line 429
    .line 430
    fill-array-data v0, :array_8

    .line 431
    .line 432
    .line 433
    invoke-direct {v4, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 434
    .line 435
    .line 436
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v0

    .line 440
    new-array p1, p1, [Ljava/lang/Object;

    .line 441
    .line 442
    aput-object p0, p1, p2

    .line 443
    .line 444
    aput-object v3, p1, v1

    .line 445
    .line 446
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object p0

    .line 450
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzawj;->zzz(Ljava/lang/String;)V

    .line 451
    .line 452
    .line 453
    throw p3
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catch Lcom/google/android/gms/internal/ads/zzavn; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_2
    .catch Lcom/google/android/gms/internal/ads/zzavz; {:try_start_a .. :try_end_a} :catch_6

    .line 454
    :goto_5
    :try_start_b
    new-instance p1, Lcom/google/android/gms/internal/ads/zzavz;

    .line 455
    .line 456
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzavz;-><init>(Ljava/lang/Throwable;)V

    .line 457
    .line 458
    .line 459
    throw p1

    .line 460
    :goto_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzavz;

    .line 461
    .line 462
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzavz;-><init>(Ljava/lang/Throwable;)V

    .line 463
    .line 464
    .line 465
    throw p1

    .line 466
    :goto_7
    new-instance p1, Lcom/google/android/gms/internal/ads/zzavz;

    .line 467
    .line 468
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzavz;-><init>(Ljava/lang/Throwable;)V

    .line 469
    .line 470
    .line 471
    throw p1

    .line 472
    :goto_8
    new-instance p1, Lcom/google/android/gms/internal/ads/zzavz;

    .line 473
    .line 474
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzavz;-><init>(Ljava/lang/Throwable;)V

    .line 475
    .line 476
    .line 477
    throw p1
    :try_end_b
    .catch Lcom/google/android/gms/internal/ads/zzavz; {:try_start_b .. :try_end_b} :catch_6

    .line 478
    :cond_a
    :try_start_c
    new-instance p1, Lcom/google/android/gms/internal/ads/zzavn;

    .line 479
    .line 480
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzavn;-><init>(Lcom/google/android/gms/internal/ads/zzavo;)V

    .line 481
    .line 482
    .line 483
    throw p1
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_1
    .catch Lcom/google/android/gms/internal/ads/zzavn; {:try_start_c .. :try_end_c} :catch_0
    .catch Lcom/google/android/gms/internal/ads/zzavz; {:try_start_c .. :try_end_c} :catch_6

    .line 484
    :goto_9
    :try_start_d
    new-instance p2, Lcom/google/android/gms/internal/ads/zzavn;

    .line 485
    .line 486
    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/internal/ads/zzavn;-><init>(Lcom/google/android/gms/internal/ads/zzavo;Ljava/lang/Throwable;)V

    .line 487
    .line 488
    .line 489
    throw p2
    :try_end_d
    .catch Lcom/google/android/gms/internal/ads/zzavn; {:try_start_d .. :try_end_d} :catch_0
    .catch Lcom/google/android/gms/internal/ads/zzavz; {:try_start_d .. :try_end_d} :catch_6

    .line 490
    :goto_a
    :try_start_e
    new-instance p1, Lcom/google/android/gms/internal/ads/zzavz;

    .line 491
    .line 492
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzavz;-><init>(Ljava/lang/Throwable;)V

    .line 493
    .line 494
    .line 495
    throw p1
    :try_end_e
    .catch Lcom/google/android/gms/internal/ads/zzavz; {:try_start_e .. :try_end_e} :catch_6

    .line 496
    :catch_6
    :goto_b
    return-object v2

    .line 497
    :array_0
    .array-data 8
        -0x7cb2ddca9fa6f7fdL    # -9.123233337925217E-293
        -0x72965cb11dc37f8L
        -0x60056d17b6c924b8L
        -0x603b2240122ea8d0L
        -0x3e64b9ddd056319dL    # -1.1439527591582637E8
        -0x108f87cb95ba22a8L    # -6.242498540815597E228
        0x2f325ab7e478751dL    # 2.418692320002292E-81
        -0x27668fecd1c8daa4L    # -6.414720412612957E118
        -0x5601947bcdc9c54eL
        0x4c6841127ad53c1dL    # 1.217968056212212E60
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
    :array_1
    .array-data 8
        0x7af46a190fb31dfeL    # 1.8972890469791832E284
        0x5a8fa83e49ea9408L    # 1.7143546931699716E128
        0x16d63ae735bd9f3L
        -0x8f44980e477be5eL    # -2.792465470308554E265
        0x4fb0a967a6b8ce11L    # 7.536318105966908E75
        0x34026c53ce872944L    # 3.668722159953924E-58
        0x4325cd0c3e5587b4L    # 3.06821349000905E15
    .end array-data

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
    :array_2
    .array-data 8
        -0x63d43839d0922ef2L
        -0x20822af4c05395edL    # -9.765245275924882E151
    .end array-data

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
    :array_3
    .array-data 8
        -0x1fa291ac43eb9dd0L    # -1.57841891383663E156
        -0x26a1dcb839a020eaL    # -3.112934655727862E122
        0x242867ccf1790e54L
    .end array-data

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
    :array_4
    .array-data 8
        -0x45d96c28095879c2L    # -1.4248414563022952E-28
        0x5530e877ac5db0c9L    # 2.3668609048424E102
        -0x17df183a29bb8059L    # -3.856485626917331E193
        0x77b66efdb38c7a5dL    # 4.6295024852404855E268
        0x5a51ae3cd4d9a60bL    # 1.196838558695529E127
        -0x17d48d23802b0789L    # -6.261647954323165E193
        0x17f62267cd8e8b8dL    # 3.032148561276818E-193
        -0x3bec31bfec892131L    # -9.133750939301732E19
        0x2a23e43c7f9b83eeL    # 1.08412688777422E-105
        0x262bca2a63170514L    # 8.21061732908424E-125
        0x38f99803ac7ce55bL    # 3.0807423423046294E-34
        -0x768ea4e227510afL    # -7.8051485912675E272
        -0x42aafa3b3c08b45aL    # -2.987481714902167E-13
        0x29464d2996308b42L    # 7.418635383149412E-110
        -0x36de4543ee167edL    # -1.129401718131373E292
        0x436182df92bdf074L    # 3.9431770842563488E16
        0x7ca9a341046172faL    # 3.1980485452182774E292
        -0x4aabbda1254fffc6L    # -8.460661688901373E-52
        -0x4b81080fa35b39dcL    # -7.893709597034986E-56
        0x13ffcee4fb2c971dL
        -0x573bea907bb107eaL
        0x1d65082f0dcdf88L
        -0x21b81ccaa7f3540eL
        -0x28e366c6bba43a9L
        0x5436bbb2b005ca23L    # 4.8557810459141015E97
        0xa0fc27de8ca0e3fL
        -0x70fe41775513fc5fL
        0x5710809443ceba76L    # 2.4804010126905935E111
        -0x3dfbcfce2f6aab7aL    # -1.0838489618666271E10
        -0x11527e2a7a8b9be2L    # -1.3652565023159124E225
        -0x3c8569a4ddc553f7L    # -1.1973868087900584E17
        -0x12d059c8a567b4c2L    # -8.728321731197621E217
        0x6f5d4882d3b72192L    # 2.7748272474814757E228
        -0x2293fe337d13e1c4L    # -1.067271673057527E142
        0x69817de28e3abd47L    # 1.6736325080133917E200
        -0x5833a462209b0e35L    # -5.622706579701805E-117
        -0x4ad6da802cf17338L
        0x4221c258f2e59520L    # 3.813752664279126E10
        -0x4f0f9b57cc86d25aL    # -5.798886004131039E-73
        0x1b13a45d8f8ba7d4L    # 3.029489459740095E-178
        0xcbc8a321b7af2L
        0x1bc7df2f97e35c1dL    # 7.540463783510407E-175
        -0x42f5276407e1245dL    # -1.1922076615463193E-14
        -0x6dd01a25911a02daL
        -0x1b601200ce1686daL    # -5.054194809682016E176
        0x1529b4d2cafb9b5dL    # 1.0008598306876746E-206
        0x73da4b584bd61899L    # 1.1766256105869507E250
        0x2ae435090a6e165aL    # 4.511042892577878E-102
        0x41e160ade9ed371eL    # 2.332389199412978E9
        0x1b2ff8bfb16064d1L    # 9.86229436236141E-178
        -0x56f5998a5b1f785cL
        -0x313aba5bab3426aL
        0x5736dcb13a9fffe1L    # 1.3745297092293095E112
        0x281a9fa406a8227fL    # 1.689228491023971E-115
        -0x1d4c74842f2dbb84L    # -2.8813109295040635E167
        -0x45f1ce53f86bac25L    # -4.7637781590684836E-29
        0x7f0f89ba3033cccbL    # 1.0813835364864739E304
        -0x7397b01295edd7L
        -0x5b9a69d3ed948267L    # -2.375944953186082E-133
        -0x6cabe7d4e5925c87L
        -0x7037b086804c0a5aL
        0x182ba7207e6fd01L
        -0x7e0d087ab295921fL    # -2.832175518677592E-299
        -0x14312941ab6b3ef8L    # -2.0277062306002672E211
        -0xe6f60806fac2bb2L    # -1.08244796970006E239
        -0x572b7bc6a733d0d7L    # -5.33193562278499E-112
        0x261a8642c1822aadL
        0x1a98a81b5ee68622L
        -0x6a1707eee55f4009L
        -0x64631b0d55771220L
        0x36415c49882b8806L    # 2.375706816131064E-47
        -0x6401e5b91ff4fc76L
        0x6df24e1eb1d66779L    # 4.135521254014011E221
        0x11687e66e18777fdL    # 8.271583507768467E-225
        -0xc94bc7fc2ba3e38L    # -9.531271775949791E247
        -0x3ad60c9a2cc8de35L    # -1.568627944326256E25
        0x46027d4ee4994688L    # 1.8311099090316855E29
        0x202e800d7fd86653L
        -0x3a9dfb0fb5b863d3L    # -1.7427189431992715E26
        -0x699e054a8e1dc8a7L    # -7.340175296562731E-201
        0x39e7593186297899L    # 9.209324684238119E-30
        0x53e2cd220869102aL    # 1.2549791947976368E96
        0x1131668f69ce93aL
        -0x486fea814c6a4c90L    # -4.615871455292681E-41
        -0x151216508776c5b1L    # -1.2004514357091089E207
        -0x7606bd914b64e19aL    # -1.283478337570314E-260
        0xed0a4270d0e56c2L
        0x325aa9b65f2db470L    # 3.95593349673493E-66
        -0x74fffde1e6bd041L
        0x7f2dea4024d8f6c2L    # 4.102940696719149E304
        -0xf350c58426299cbL    # -2.142367917229275E235
        0x5b2012310af4eadfL    # 8.911948665213696E130
        -0x136fb691e8473324L    # -8.772707476878603E214
        0x472dfe41e6fd516aL    # 7.786678112759796E34
        0x7dd33fd77b59c0aaL    # 1.2589036999193201E298
        0x2d9a59fa1ceb7335L    # 5.174473691610184E-89
        -0x353212830c1de345L    # -2.2394554794451731E52
        -0x22f4ba8c0bc27ff8L    # -1.6238049128578561E140
        -0x641e5fae39c471d3L    # -2.227062422436468E-174
        0x6891f0d1961d8277L    # 5.238615642944844E195
        -0x76278e8c4e0e4c80L
        -0x78dffe428d71ef91L    # -2.311630392032336E-274
        0x6f6b9c7e1513ad7bL    # 5.23279309543674E228
        -0x6667ddf297defeL
        0x7feffe5a4f27c028L
        0xf39e2bd733cf2deL    # 2.544153836535825E-235
        0xf7fa85de2bd9f14L    # 4.978316484680652E-234
        -0x2fbd8623cafcacd2L    # -4.278753066373428E78
        0x1296f8dc15a2e8bfL    # 4.067279510496757E-219
        -0x539ef4e8f208268bL    # -6.383304860225503E-95
        -0x118a26eae7939691L    # -1.2635954224706611E224
        0x54e2f6fc905dba7aL    # 8.296150711889986E100
        0x3b0bf1c84f53052bL    # 2.889389725419316E-24
        0x558d95dfb0c6b127L    # 1.325276875126854E104
        0x7b8387af549ea00eL    # 9.29326995121395E286
        -0x6d9ba642c322bd0aL    # -4.503904744825712E-220
        0x659837a283118dc4L    # 2.512254021057435E181
        0x4c15762b2283745aL    # 3.3679154879768097E58
        0x1ccf6f9cbd7ed94dL
        -0x19f78cbe84c4745eL    # -3.246609917028828E183
        0x237da0e20cf42944L    # 9.952012568874232E-138
        0x4dc83d30c99d163bL    # 5.105334686239704E66
        -0x6b49afbca817623fL    # -6.787209455044919E-209
        0x6480e37b4988325aL    # 1.3366605470051722E176
        -0x576361bceb532ac3L
        -0x4d426d24395f1ac1L    # -2.8081874912627588E-64
        -0x44ee2e497e28d325L    # -3.6849223499892205E-24
        0x1aa468a497ec9dd0L    # 2.45917398766416E-180
        -0xa29d7bdf5b0ffaeL
        0x51b2d69c711a642bL    # 3.659662720647705E85
        0x2bd2dee3a348bd6eL    # 1.380411364004551E-97
        0x6e4e0b064c9ea897L    # 2.1719560845876687E223
        0x3d84c4c65ee7c540L    # 2.361122357914867E-12
        0x45624cf09d9a2d78L    # 1.769920254462281E26
        0x64e3081dcae950bcL    # 9.640179997231693E177
        0x26bc50657af4ad3aL
        0x785633d8c770e1dbL    # 4.6917893385546666E271
        0x32ced8d643db5789L    # 5.858199254180699E-64
        0x253c24fe8cc80ab2L
        -0x395063cf0718896aL    # -3.2056472362627795E32
        -0x18277e52e47cf372L    # -1.747026069425848E192
        0x55360908d6f114eaL    # 3.084589215930666E102
        0x1d2ec9db5bb57833L    # 4.079068618778699E-168
        -0xa73099fedbe24bL
        -0x56f023bc0ac5cc71L    # -6.624040751605174E-111
        0x23a95125ea64d23eL    # 6.803054691109551E-137
        0x47aae36e24a52578L    # 1.7870406622837897E37
        -0x67948b4b416f1e3cL
        0x343e85199caff45cL    # 4.8621040960615674E-57
        -0x24a8f37f78ec80d5L    # -1.0225089528065968E132
        -0x6c9776415b11b4b0L    # -3.559044563373641E-215
        0x6ca24cdbd9401416L    # 1.971439510557163E215
        0x176b70ba32bd17d1L    # 7.341796422403566E-196
        -0x29696b309c492e62L    # -1.3258279998666197E109
        0x5ca172b4808df456L    # 1.6232871134694855E138
        -0x679b9aa03da19b52L    # -3.576330149518867E-191
        -0x11655c0702e79effL    # -6.163103313308424E224
        -0x370d425e00c40041L    # -2.6120797521274985E43
        -0x13a8d02baf862a93L    # -7.805817271248935E213
        -0xf2e891e25db7caaL    # -2.7764502232554375E235
        -0x3968c216673a0f1dL    # -1.1785015837403032E32
        -0x79a5749ab35d3684L
        0xa5e564916234c6dL
        0x17267c590dbe66f7L
        0xfa85261fd581b64L
        0x77213737717cbc64L    # 6.938899798181859E265
        0x38cc3fd1926d7a21L    # 4.250480979073942E-35
        -0x596a071ce9df621L    # -4.605770478609979E281
        0x64dec09c5a807f8eL    # 7.788543915642486E177
        -0x3e00c363183a759cL    # -8.385056380346287E9
        0x58a810a92f6e6306L    # 1.2137119908367778E119
        -0x7deb3001b6883a80L
        -0x2ebc883bb0bf89afL    # -2.9546535629500857E83
        -0x5d65312966bfb111L    # -5.495988998884236E-142
        -0x347007761ef960ddL    # -9.799038197674973E55
        0x2413e70fdc010d5aL
        0x659ea8a0cf6c3869L    # 3.1804692153425197E181
        0x2a245b2c20f3ea2fL    # 1.109448135205804E-105
        -0x50f99100d9473f6eL    # -3.695300771260282E-82
        -0x4e46b8b5f7e636c1L    # -3.66261988097933E-69
        -0x653ace6308e3e9cL
        -0x1b3525062615efd5L    # -3.4007811391746863E177
        -0x5c32a980474fc30L
        -0x76e4bc25a936123eL    # -8.455710942045649E-265
        0x6006b1b99558dd1fL    # 3.8034998074073726E154
        0x4d4e49c8134527e7L    # 2.491969309997898E64
        0x464ed2b13e100e1L
        0x22bebff9a53ea77aL
        0x6d47ed877d632f25L    # 2.639553852275565E218
        0x3fbd516c0da85c3bL    # 0.11452365239561939
        0x4bfc22cdd7315b2aL    # 1.1038265111084975E58
        0x56831ff2fc019a56L    # 5.614426308697934E108
        0x6b35cd07d5ad563bL    # 2.799699730759846E208
        -0x11730c699f248c9dL    # -3.3488682107749806E224
        0x392681148baae0e4L    # 2.167077534638775E-33
        0x3433105c853231e4L    # 3.037056359980127E-57
        -0x65a6160219cf0b24L
        0x221b5c45788be40eL
        -0x5c2acbf74b26b1a9L    # -4.558107497964158E-136
        -0xfc76baa7357d35eL    # -3.8160010364756817E232
        -0x75040aeb6797f23bL    # -9.309784495802908E-256
        -0x377f519f11bf4d21L    # -1.816418187148626E41
        0x2a9008f700513c8L
        0x25857d54a5c58defL    # 6.200398962663596E-128
        -0x6b8a636bfb18b6e1L    # -4.108569435760892E-210
        -0x601df3590d483d73L    # -4.20683570172408E-155
        0x7145485634099b3fL    # 4.330824370506877E237
        0x569bcf83a9e63c1fL    # 1.6328596219278014E109
        -0x4b3b5dde4b0af4c2L    # -1.682984246586342E-54
        -0x5bc6e1245064928L    # -8.880911576062265E280
        0x262c023d7036581fL    # 8.27533406801667E-125
        -0x53b97aadda3198f1L    # -2.1087005066416246E-95
        -0x143b4826cbd4ffb7L    # -1.3622540849686384E211
        0x6732a7cb6c6dc518L    # 1.2987422567904625E189
        -0x4a4333a0096a7573L    # -7.697118494358481E-50
        -0x1a2a9a50ad0f1f01L    # -3.551521657063449E182
        -0x68d84f992c7f2cd0L
        -0x6a7db8c89c230b90L    # -4.55455681187874E-205
        0x3de5ec7c39951afcL    # 1.5951642506133656E-10
        0x3ed99e8495ca7b7dL    # 6.108095786188227E-6
        -0x72fa9dabe45f0443L    # -6.116802304631409E-246
        0x43282b2fc0e50fdL
        -0x7772392b165e625bL
        0x197513d50b5620f2L
        0x76d05ea23d87c9e1L    # 2.061844703598382E264
        -0x12d0e3e209d62f4L
        0x377e31a343ed577dL    # 2.166305903239737E-41
        -0xe3ce79bbc2750d9L    # -9.947468916059833E239
        0x475e552c76a3f2d3L    # 6.299857333157545E35
        -0xb19e2917fa1944bL
        0x67c402512febf53aL    # 7.132039723012869E191
        -0x42d0ac8ad55562cL
        -0x34e9c23aeadf89dL    # -4.338477963645467E292
        0x14f2cdebec91b91bL    # 9.151705713711626E-208
        0x6a2aa7d793e9f3f5L    # 2.6116567329577998E203
        0x6453e866d2918306L    # 1.969523541079731E175
        0x5c2aaec56faead25L    # 9.697009864616976E135
        0x48654e1423bcf491L    # 5.799771247842418E40
        -0x7d780e61d9e6b216L    # -1.830575762877228E-296
        -0x89c0935449fba66L
        -0x3e35901481177c73L    # -8.870847978165146E8
        -0x483555960f31235aL    # -6.122139659385994E-40
        0x6046b464f36eedd7L    # 6.088395852896077E155
        0x782e4c7535116532L    # 8.003309098410264E270
        0x6fdb7ed6e3d67c2bL    # 6.669876427661131E230
        0x744a4a80b17facaL
        0x2382985df7f0e527L
        0x2b3970b472c894bfL    # 1.817368055891974E-100
        -0x3dbb042943227c44L    # -1.8024900037902917E11
        0x15fcee979d237351L    # 9.227868599280799E-203
        0x141a106d2573af50L    # 7.742244547047489E-212
        0x69850b671d8de1adL    # 2.0135694609681536E200
        0x12d846ff5a9e2e0dL    # 6.877397703391868E-218
        -0x1d09eadb827ac120L    # -5.2086785960003075E168
        -0x2ec1c61ac325cc42L    # -2.2937269288658958E83
        0x6e3c4b244b72bcb4L    # 1.0227366740513556E223
        0x49e6f536d01bc04dL    # 1.048530035286598E48
        -0x2410a08bbfd3b767L    # -7.125942206221806E134
        -0x154615c3a051e3bfL    # -1.3000138884345553E206
        -0x6852034005b1d832L
        -0x72b675add6312097L
        -0x6e5caddffaf1b71cL
        0x7648bc42429dfa3aL    # 6.085061084548688E261
        0x29771dc1fec955bcL
        0x26124fd78a94e43cL
        -0x2a9c49bf9dbfd332L    # -2.207483449806588E103
        0x4e4ff532a5760387L    # 1.7231613856659893E69
        -0x41acb2a426afffdfL    # -1.7976558536886398E-8
        0x543880274d0c5b7eL    # 5.233296329989278E97
        -0x35311ece394990ebL    # -2.3106909230176685E52
        0x9eeec6065e0ce55L
        0x60ade4bc814b0eaeL    # 5.130320954528224E157
        0x188b5ea76248882cL    # 1.919656174913193E-190
        0x1ff96bb08a079248L    # 1.184974766983949E-154
        0x4ecdaaa1e4a3dbb7L    # 4.0950176865274087E71
        0x5e74af770d60f19bL    # 1.0331943960317247E147
        -0x1d91e6dfe5a37a47L    # -1.386587798433499E166
        -0x37a3dca50aaf8bbaL    # -3.829960614368243E40
        -0xe134490619b4aaeL    # -5.987079282114351E240
        -0x6469e04c49c43b9fL    # -8.735403493379787E-176
        -0x6fe3315bb3d89da0L
        0x1d1105ec6cdb2f1dL
        -0x357a55d857bb979aL    # -1.0132143104702004E51
        0x17f39b65ca2a3ab9L
        0x357251f099d1bffL
        0xd8ac935bb7c8320L
        -0x3453c67062286cebL    # -3.4603562550533123E56
        0x16c8b80860c8f65aL    # 6.458648150544464E-199
        0x3a4ed53bce493f6aL    # 7.783329269718863E-28
        0x653b9c36199626c7L    # 4.475349876303522E179
        -0x79ac42c6030f5bfeL    # -3.47978824093166E-278
        -0x477f5d905b1ad6bfL    # -1.5643023720208974E-36
        -0x503e49fb7bfc8b5dL    # -1.1949627858074123E-78
        -0x519a8c015a375d63L    # -3.450971568314216E-85
        0x9d5275316f1fb7bL    # 2.68712765344986E-261
        -0x1053a2484b7307afL    # -8.601339685984624E229
        0x32773bd18b18ac96L    # 1.3788553168623978E-65
        0x1a0e802d910aebb6L
        -0x38c3fe32eb3172dL    # -3.079587791167867E291
        -0x2b2c221ef5707a7L    # -3.735148998000604E295
        -0x460bc17c9f0067e1L    # -1.596985177088897E-29
        -0x4aa18c42c01b4e2fL    # -1.2717393049933821E-51
        -0x53b679bd33ba768eL    # -2.3899449131826175E-95
        0x3a9da2468525addcL    # 2.393806453544519E-26
        0x1112f8c84ccbcffcL
        -0x11ba5f6638bb1a45L    # -1.5635437651713936E223
        0x5e008e6b312af038L    # 6.460584712714436E144
        0x267c27a4247f3534L
        0x6668bd0f5ad0feb5L    # 2.1023304786867558E185
        0x7e07630b120e6846L    # 1.2235962615639547E299
        0x779c6f9f75fa77a6L    # 1.4670505384855832E268
        -0x5bb9c23d6f72c899L    # -6.119995902139335E-134
        0x4aedfe618b1f77acL    # 8.977573156860983E52
        0x6e71d85d0ed7c2a1L    # 1.0320897851433798E224
        0x23ab0cc6842eb05fL    # 7.26871618369842E-137
        -0x5ec80383a3fe99caL
        0x35fc985a509df54eL    # 1.2228487880959184E-48
        0x2e5bc2683e8fdafeL    # 2.2327050988762658E-85
        -0x44adccc655075451L    # -6.02190751371858E-23
        -0x198d50e73b9845e8L    # -3.175605506999587E185
        -0x2e0fc93058469b77L    # -5.039782315294849E86
        0x4d1c309826a54279L    # 2.899154998605668E63
        0x660e9aa26d32c02aL
        0x38a463dc349f81c3L    # 7.66989518909919E-36
        0x46b34c8ceb357fbdL    # 3.914307350720502E32
        -0x1f30de0106f92c26L    # -2.1372035080148147E158
        -0x7acf4c046f4c06c8L    # -1.123259408537952E-283
        -0x105ca6bcf2e9211dL    # -5.867026324722571E229
        -0x7cc11d44c5ef4a03L    # -4.835943851407617E-293
        -0x2724fc075514b7a9L    # -1.0900125852108597E120
        -0x6548f2e9a1e3fff3L    # -5.555135815270968E-180
        0x5b35708ece693e5dL    # 2.377805934267322E131
        0x18f314368b1deb24L
        -0x1577a27afe53c239L    # -1.5278440228292336E205
        0xf8b93521b1e7215L    # 8.672739984590856E-234
        0x2119850fbef23139L    # 3.118451119343826E-149
        0x7c080e6fb7e0b07dL    # 2.9304636978697355E289
        -0x5854a614647c8d7bL
        0x5a54c910f2b84a08L    # 1.4070090296901655E127
        0x1f2ad4e01b4c6ebeL
        -0x3544a55c658e5f9aL    # -1.0234368474299656E52
        -0x3563069b9664164L    # -3.219650515833585E292
        0x7d760719a76dd984L
        -0x6edb16e024fefc65L    # -4.413474671504148E-226
        -0x851713e40d3defdL
        -0x7e6713fe0446c0d6L    # -5.814676871362192E-301
        0x373a52d5e12f58dcL    # 1.1803899739580757E-42
        -0x7270373dfa329f05L    # -2.327474574970819E-243
        0x2f7ea281210a09d1L    # 6.459158895700984E-80
        -0x21e57a3df4019be4L    # -2.0699137870584386E145
        -0x59baa798458dc541L    # -2.522636813306167E-124
        -0xa24f46fa0c6051aL
        0x4ee56edb7e6c6d04L    # 1.183403062523928E72
        0x448a4ed94e32321dL    # 1.5529504137563169E22
        -0x1a90817fac5d042aL    # -4.083920235557887E180
        -0x35f5dbc9c848873L
        -0x6e340f1e00e3d3c6L    # -6.038851713674626E-223
        -0x32f53a3e71d1f24bL    # -1.376695173022839E63
        -0x14fc88aef210a67L
        -0x5aa852166c2710c6L    # -8.540269116964477E-129
        -0x6d5855d3795e4ed2L    # -8.379824695417914E-219
        -0x68f46ce5eff57586L
        -0x7d31ec929a97ae4eL
        -0xf9ffd596845a0dbL    # -1.9885092023645527E233
        0x477873c9c9d9b4c9L    # 2.0314174246335805E36
        -0x13c2e3c84567f75dL    # -2.4499798638939104E213
        -0x484a7f65a5b76b20L    # -2.4683493269453194E-40
        -0x301f346069d01fc7L    # -6.077421566548265E76
        -0xb8299d791d8adeeL
        -0x63a7e558ee97f608L
        0x77eba0b8059058b7L    # 4.5611312020711096E269
        0x366ba653f9a1eb1aL    # 1.5134964287412859E-46
        -0x22ac37a316212aaL
        0x4885b882314848d3L    # 2.365178769510649E41
        0x649c591f4bdedc75L    # 4.487267399971833E176
        -0x2024744d308f4428L    # -5.770740891727338E153
        -0x2ab5a3f983268cdeL    # -7.379811660674248E102
        0x1777017c739d74ebL
        0x2e5390904f5a414eL    # 1.5736004725333266E-85
        -0x7dd0220f6954ba78L
        -0x4bf6093d924d800dL    # -5.1703607289760626E-58
        -0x4193c128f567d44bL    # -5.2611285394290265E-8
        -0x548fb6d63dbf0d22L    # -1.861445655754708E-99
        -0x4610b914b52f957dL    # -1.2336612221485909E-29
        0x3c29fdf6f100dc89L    # 7.045159073376374E-19
        0x50d35933e89b268L    # 2.45535859856504E-284
        0x130e1f8006a939ddL    # 6.826719179149212E-217
        -0x36a8e5ecff12841eL    # -2.0607541023939544E45
        0xc29a802df07c1d2L    # 4.479272999458112E-250
        0x6c0b53f28157addeL    # 2.87497136601613E212
        -0x5d1d85195bd54f6L
        -0x116aee1d60828d6bL    # -4.874370312552486E224
        0x685c6762de07aea4L    # 5.183635585494351E194
        0x2847c89c0d1dcdcbL
        -0x5c3e51c1eabb1e97L    # -1.900421026793068E-136
        0x561358c2b1b7a05aL    # 4.43716773738247E106
        -0x7f1954a35110e12dL
        0x3c39aa923cafede1L    # 1.391372580325616E-18
        0x2f3e2c70919178d9L    # 3.9761998311226784E-81
        0x13d35d1f37b8048cL
        0xdf18297b84aadadL
        0x22faeb16d1f071b4L
        0x21c2261b981fa153L    # 4.541940363623019E-146
        -0x7eddebf5c9de19edL    # -3.295273783046112E-303
        -0x5eabc204ad9d9918L
        -0x7f539e1892c569eaL
        0x795afbcad2e567fbL    # 3.736933257236021E276
        -0x9e336c74044211dL    # -8.851928919193541E260
        -0x5e24745198b3e705L
        -0x2995b2d335f8f4d6L    # -1.9303159308366251E108
        0x4223ebed7b840111L    # 4.278129401800208E10
        0x660ec22044e747cdL    # 4.084226080193171E183
        -0x7761da79a06c3150L
        -0x6b710f3bb86579c8L
        -0x51e74668c0edefa1L    # -1.2429021145753339E-86
        0x1d630f2183cff51fL
        0xc852e5682c01893L
        -0x3cdee994255ff437L    # -2.4048635446573805E15
        0x21ef61c7185c0367L
        0x23cc759e549551aL
        -0x774e58b855a4d172L    # -8.554470426684122E-267
        0x7cb34a9fac0110L
        -0x1431338a3cc4d034L    # -2.0250649982516926E211
        0x59871a3f96087e6eL    # 1.909008395771271E123
        -0x6bc7cb34e169900aL    # -2.87614056109987E-211
        -0x11ac5b84ea567bf6L    # -2.8400999936573946E223
        0x3423ba2374acd8a6L    # 1.571354451751981E-57
        0x1028c8b1a2f048cL
        0x4ff5ecb7d993defcL    # 1.5866903380798111E77
        0x7157ef5f9874858bL    # 9.741166687110002E237
        -0x2b8442f5dbc368afL    # -9.479830350071771E98
        0x432e3a40b2d1ba93L    # 4.2541494268634335E15
        0x55a81bf4f9543481L    # 4.319877525531338E104
        -0x6c56dc86171069f7L    # -5.833830618384753E-214
        0x40906770297f2277L    # 1049.8595332970415
        0x2ed8689f30eaed51L    # 5.025803246422895E-83
        -0x45f96745d61e0f9dL    # -3.5651133880413527E-29
        -0x20f9d7ec0fdff91fL    # -5.666176290499655E149
        0x4a4f6a3eb588e387L    # 9.182620447814444E49
        -0x5461a3384ba22f99L    # -1.3881546320079248E-98
        -0x691797cb03973766L
        -0x51f4d27c6928b67cL    # -6.831017322453057E-87
        0x43a7b356713182e2L    # 8.5390186393275213E17
        -0x20f508d7b34d982aL    # -6.895974934217645E149
        0x55e7baa54ac40e7dL    # 6.802827852324193E105
        0x3d544f0cae691f1fL    # 2.886052250680743E-13
        0x49e39d90a2eedda6L    # 8.95877130033976E47
        0x723310fc6a258e5bL    # 1.271347072622853E242
        -0x249365a78c99690L
        -0x5a0ce8359efc1028L    # -7.05138524534862E-126
        -0x714242006e4a5fa8L
        0x2be1c45bb6b347beL    # 2.5993580691273793E-97
        0x450af45a99fa5916L    # 4.073250004255721E24
        -0x2ef6d1db2b21bdb5L    # -2.388519893093894E82
        -0x783895121d4f6b97L
        0x4a84ab58a5216894L    # 9.666639046048611E50
        0x1dd9b6c7497408dbL    # 6.977047170647525E-165
        0x5d0edff903c7a98bL    # 1.8383723021625944E140
        -0x346199041eeea6e2L    # -1.8636543946869091E56
        -0x138ee009fff2b2afL    # -2.3060230322499977E214
        0x3040635c202c9e02L    # 2.8306121055892054E-76
        -0x4ddb477548339171L    # -3.842898304651688E-67
        -0x3f8c70ca18950b99L    # -312.9506601503294
        0x2e8d52702ed5ea43L    # 1.8867101075057754E-84
        -0x416319c3eb5c22eL    # -7.859050512391593E288
        -0x115aa28376a5c3cfL    # -9.885379929981966E224
        -0x192161a8df8dc0ddL    # -3.3305922836693143E187
        0x359203aa75243931L    # 1.20370095102051E-50
        -0x6e9250c2ead8a1efL
        -0x49229ede6688d25L
        -0x50e7ea5017c80698L    # -7.934557404248798E-82
        -0x2da891b2cef0d649L    # -4.661085515279752E88
        -0x47bf4da8eb67c8fbL    # -9.813403728945464E-38
        0x585911cf75ef0117L    # 3.951165701297974E117
        -0x7171f11b60b50b55L    # -1.442500824846711E-238
        -0x1b8da444547e41efL    # -7.264917943197265E175
        -0x7ef19c7fbda660a4L
        0x30f7dfcd8d3107d9L    # 8.445209652463296E-73
        0x672d13a140e9a5e5L    # 1.012120228511958E189
        -0x89a801782b2c2e8L
        0x5d7f98184c68ceceL    # 2.407932145936566E142
        0x42da0a079269a857L    # 1.1452151612380936E14
        -0x270855be1bee03c5L    # -3.8193199212058594E120
        0x1dcf0e452e8dc453L
        -0x4cb158476ab99ddbL    # -1.4903713333773782E-61
        0x2743a40b0527fa66L    # 1.52121553538902E-119
        0x46fd59ff0409c63cL    # 9.52512173646454E33
        0x5eebc2273e04bee7L    # 1.7746898985298844E149
        -0x57eb390fe6c009daL
        -0x7c1890220fc9edeeL    # -7.515464686627348E-290
        0x79003f00879e3f62L    # 7.03096975433427E274
        0x479b8133c60eec36L    # 9.140003068907009E36
        0x6645f02f4d733b90L    # 4.660889232767409E184
        -0x79130137bd53e4b4L
        -0x1b01b2726c3dcc77L    # -3.0698859308959333E178
        0x7b7bc5d29cb0e125L    # 6.607766610159837E286
        -0x20fb491e35329c4L    # -4.262660296692839E298
        0x5defae166ee7304L
        0x1e0a819a09e89844L    # 5.753614646771117E-164
        0x4b7f9f291bedf04bL    # 4.8460146465434675E55
        -0x28683b072774c3e3L    # -9.146122229933789E113
        0xa583cace243bbeeL
        0xf98480fcb83287cL
        -0x5bcb721ef9c81e41L
        0x15c0af5a7ac44ca9L    # 6.652095687404087E-204
        -0x5bb79f51656e5006L    # -6.707860609919351E-134
        -0x5ec4f4b04b67a703L
        -0x41895f116631a213L    # -8.429825588820898E-8
        0x2253ca39a0e76309L
        0xe3e03461e1d14e7L
        0x562ace0fd686b49dL    # 1.2295413589976215E107
        0x407718a22a162c1aL    # 369.53959091816944
        -0x69c6c8c047ae2866L
        0x6bf86bfc047c9d37L    # 1.2846206182414167E212
        0x7affb8f1dc298ba0L    # 2.948237836755471E284
        -0x4e6103545ed5d606L    # -1.1224330880221377E-69
        0x5262731f823c6064L    # 7.340371426876112E88
        0x5cebaf7fdd137287L    # 4.1211752568910996E139
        -0x3a59bb4d11394e64L    # -3.4458610788399114E27
        -0x7a30777d4d3323d9L    # -1.085732178935162E-280
        0x7f5126d60f4c756aL    # 1.8819274999624267E305
        -0x673516d3ed079d44L
        0x30b97134af0dfd0dL    # 5.624914308932652E-74
        0x4ea7bd8ce637f89bL    # 8.19252171617811E70
        0x227ffe32ff20dc39L
        -0x1ac386a4c8e00424L    # -4.6153713218702024E179
        -0x27ced29c364c9554L    # -6.768202344066608E116
        0x1079b3e8570dc048L    # 2.648885225140668E-229
        0x691c54f08a90bf44L    # 2.1178308027921997E198
        0x2b2e590eb7e1d3dL
        0x227eb012601354c3L
        -0x154f69e598a4e6a2L    # -8.320465522337477E205
        -0x42f0d626609a8d77L    # -1.3839363836247796E-14
        -0x3f57048b2dfe325dL    # -3197.728164726593
        0x4960efbdee058e2L
        -0x2dba7181fea5a33dL    # -2.144120628950597E88
        0x2f512649cd2759acL    # 9.03970471595339E-81
        -0x2bf43e1f03b1978eL    # -7.411164600676781E96
        -0x6265f8b8f7939d93L
        0x46d8452f616b6d7bL    # 1.9690369490788128E33
        -0x68ba719c53161ccL
        0x2db88c7354a4a0bfL    # 1.92818468331906E-88
        -0x4ea2967c269546c9L    # -6.658678885512431E-71
        -0x76a65a3cc893ef3dL
        -0x56ba7e6e16e5c960L    # -7.154081969994743E-110
        0x7d7ad08b6c391c5bL    # 2.7401069718803674E296
        -0x492c8a49fdcb7b9bL    # -1.3634499870272595E-44
        0x23bc0d986faa7db0L
        -0x52a23400d48a8356L    # -3.656889553956571E-90
        0x502495902661ae3cL    # 1.1917455450311919E78
        -0x69d177c391209be1L    # -7.79059486614157E-202
        0x72983f0dd8f67a85L    # 1.034718156751328E244
        -0x4a1dfecefb024e3fL    # -3.849776355073023E-49
        0x60e3a584418c34c1L    # 5.394783431267416E158
        0x3f52b362ca41fed2L    # 0.001141401743581062
        0x3e9994bf7f5ef516L    # 3.811873051615031E-7
        0x43c0d3392a61cc78L    # 2.4247511577699901E18
        -0x5928578a3e0a64d7L    # -1.431530639228402E-121
        0x3b3a234dd3759feaL    # 2.162076932814331E-23
        0x308d0ecbf7d3f591L    # 8.030337822839974E-75
        0x2aa80fe704a04bddL
        -0x71b40153a23bb3f4L    # -8.396747752258232E-240
        -0x20298b8819358175L    # -4.704245589223899E153
        0x2151349ef26576e5L
        0x6cf915818feb286cL    # 8.647166666388468E216
        0x581fd32b91d4801cL    # 3.134910649069542E116
        -0x2d768b19d7bec75fL    # -4.051256659708417E89
        -0x6058d51d655fc04eL    # -3.374829288459096E-156
        -0x213dae4a26f86c7cL    # -2.928019292844278E148
        0x1c0eb1d599f71787L
        0x7ab5bbc68112b214L    # 1.2624249428068673E283
        0x6d87ec0fbc01575cL    # 4.2222741831145125E219
        0x71babe260d7fd00eL    # 6.965670465756542E239
        0x4bb99ba3ad845c5eL    # 6.279055060342463E56
        -0x91dd8a26331fd98L    # -4.573125149512844E264
        0x2c11b5fd4da4a162L    # 2.072917116733059E-96
        0x6f46906e536b4257L    # 1.0690705269461245E228
        -0x2a73d744f8addb8cL
        0x10455ee508429c9aL
        -0x17acd12313c44445L    # -3.500862613415948E194
        0x4710750f328d3dbeL    # 2.13627489319057E34
        -0x2e739d796cc2222bL    # -6.892799512359365E84
        -0x3d18eae129ab8187L    # -2.0303583291902778E14
        0x180546c306cedad8L
        -0x7e10102a8d5ab7feL    # -2.384440068239644E-299
        -0x2489512153449b04L    # -4.025132994109871E132
        -0x5ee225345dc0300aL    # -3.648164644081711E-149
        0x7a82571896850b9aL    # 1.3316511551746718E282
        -0x61db71e7d1f01b0fL
        0x202aca8b93dbe6d5L    # 9.990892032742977E-154
        -0x634b84eef41714c4L    # -2.119863371729445E-170
        0x56c38f6ad269e7bL
        -0x132e43756725179eL
        0x1e254f3e8a5dcf8aL    # 1.8502337639993537E-163
        -0x1dd8a6ffb07d7fe4L    # -6.722503302042332E164
        -0x2648005ca92c45c3L    # -1.586440858916282E124
        0x7a0826fb5bbd3a0dL    # 6.850211756965469E279
        -0x5c969272d7eec97bL    # -4.270542946436776E-138
        -0x7772f2e3fc315007L
        -0x135eac860360bb4dL    # -1.866496738861166E215
        0x2b94d9e1f0d70196L    # 9.533019510043775E-99
        0x2fd08a0c3ae0f034L    # 2.2318084864228936E-78
        -0x370862e0e6abb6aL    # -9.815748381116132E291
        -0x39dfebc579857b20L    # -6.3695552658969E29
        0x424364364c239be9L    # 1.6657131731921805E11
        0x6efd81be0aecbc44L    # 4.368767764222323E226
        -0x10cb0728be9b4a75L    # -4.9681797869364225E227
        -0x36908668d37eb541L    # -5.615321036375612E45
        -0x1c9744cbc9e5c123L    # -7.466789316629925E170
        0x296b44e8a2cd3694L
        -0x105750603bc17a38L    # -7.485451304221171E229
        -0x2e446d73cdbf0e64L    # -5.356414425014981E85
        0x319fe31ed94d9f2dL    # 1.155040618117639E-69
        0x24ef5b4a1fafbb9fL    # 8.835290996666536E-131
        0x5797784768ab4af8L    # 9.030847322768415E113
        0x54c286224e9c79dbL    # 2.025827354451553E100
        0x4984a304a81a4c48L    # 1.4726905316921832E46
        -0x42332c157216933cL
        -0x1f8f548197eda4e0L    # -3.576108555264939E156
        -0x948a44e8142743fL    # -7.355211510957153E263
        0x17f561e8d15bb396L    # 2.929142064501004E-193
        -0x17d5e5ae67fe5c27L    # -5.95462546366341E193
        0x4ae545e1b53d28b4L    # 6.367331983962226E52
        0x3be0db9611db1d90L    # 2.8558153957439005E-20
        -0x467911ce311cf3f1L    # -1.413197936055141E-31
        0x63276875f9fb9ca3L    # 4.4170550905922256E169
        -0x7e5367c11468b4f9L    # -1.334320130303361E-300
        0x11359d157a739dffL    # 9.123690637495776E-226
        0x112d6d867887ebc3L    # 6.211143304507268E-226
        0x140d7e96ce32d443L    # 4.380603402053498E-212
        0x621a0f84ee0929a3L    # 3.751823752062303E164
        -0x341f37b279cc8949L    # -3.292032463822333E57
        0x6a2dbe651e8ba32cL    # 2.9142212947816846E203
        0x63701068328b2f03L    # 9.700043483571781E170
        0x660839f3104a176fL    # 3.2168857340003563E183
        -0x6d5b919b65d69feeL    # -7.234816423145722E-219
        0x6ef2afadd76a8e03L    # 2.766679339559394E226
        0x3bc9b72567a37886L
        -0x13e9b01afb0b59b6L    # -4.6945846699130905E212
        0x69b5562dd3345f6L    # 7.70974254875357E-277
        -0x1947c5fc5300871eL    # -6.588250915577285E186
        -0xe365e46c607f563L    # -1.3352559593055586E240
        0x3501d2c9d0da324bL    # 2.326061184504321E-53
        0x4c982c592e8095dfL    # 9.711223066564294E60
        0x717f930fc8baa389L    # 5.140111140087344E238
        -0x581a6a2da2264db4L
        -0x2fd775c859f76023L    # -1.4207638186555255E78
        -0x104c640b6f1c03daL    # -1.189204632790486E230
        -0x13470343aa256accL    # -5.3836318447230244E215
        -0x1c09d3c44d82a9b9L    # -3.42750252515342E173
        -0x2128392457e648c6L    # -7.600656097146987E148
        0x2e07509acc8bd395L    # 5.860087649868014E-87
        0x3ffe0c62e6774d3cL    # 1.8780240061358446
        -0x551807a040978908L    # -5.351103307081183E-102
        -0x15de3878fba88d81L    # -1.7419845052215463E203
        0x55bb61898f2e697dL    # 9.812234002909826E104
        0x17d494db9aad77ceL    # 7.048542387740121E-194
        -0x146a4954cce5283bL    # -1.7846284819978857E210
        -0xd3bb566c62754adL    # -6.927531606100991E244
        0x2a8b853ab60b83c9L    # 9.599457150267094E-104
        -0x73e342e8fe56e9d8L
        0x5b8561c3d69dbdf4L    # 7.588471155154205E132
        -0x506a6427a15e22a7L    # -1.8224314695682172E-79
        -0x3d4ddb604af991f3L    # -1.994850756363005E13
        -0x2d7e6badee43cb5dL    # -2.797642496596869E89
        -0x24964165b7ed1d6aL    # -2.2841955334544964E132
        0x68f81f9da1ec5f28L    # 4.508140823323198E197
        0x9375056d9329679L
        0x16f88b6f1a7aa798L    # 5.130503095772803E-198
        -0x2d80e77dc04dfad5L    # -2.474341245083485E89
        -0xe9ab6fc492ff6c0L    # -1.732545251177768E238
        -0x4dd4e4d3194fcd03L    # -5.02711563592207E-67
        0x13a39edc102e51e3L    # 4.553278000775073E-214
        0x3b77abbe3b52087cL    # 3.1328137520618216E-22
        0x66ef5de6b28d158L
        -0x6778a630c944def6L
        -0x49c204ca7207dbacL
        -0x2e185b7c2a08e709L    # -3.6743851807407143E86
        -0x197df09acfaaaa45L    # -6.13915220761696E185
        0x21fe5db597c00647L
        0x714f5122dd7c9d6aL    # 6.372735481193025E237
        0x542005771aa6295L    # 2.4211337728596E-283
        0x40b1a97460ce9463L    # 4521.454602156856
        0x6a7a2c36881007aL
        0x65098e79e73b6a98L    # 5.178090436346752E178
        -0x7736aa61dd0a1b90L    # -2.45530375149375E-266
        -0x75f184520487e67dL
        -0x7f0902c2acc06cacL    # -5.238037070854929E-304
        0x744283bc95fabe0L
        -0x14523ea51399cc8L
        -0x5d91c91d9964192bL    # -7.742940628383973E-143
        -0x485c82e03fa14f2L    # -6.237868875697735E286
        -0x2364f44fc5881368L    # -1.25810120959407E138
        0x337759523e24eacaL    # 9.081289435132462E-61
        -0x48849c36336a069dL    # -1.9651216292214213E-41
        0x3fe3625a6f07563L
        -0x52a8418e548c12f9L    # -2.914028303672263E-90
        -0x7bd4ab1d3bb9ccd8L
        -0x39688f9182d1bf55L    # -1.188507924427039E32
        0x71d58dc41b3504c1L    # 2.2456386470311017E240
        0x247208848a438e93L    # 3.969688856366961E-133
        -0x3a29e48dc87ac7e8L    # -2.7367402348594427E28
        -0x2100bbcf9276d33fL    # -3.9979305507558064E149
        0x661e56d437668c6dL    # 8.057144433321424E183
        -0xa3e3cc412a4571aL    # -1.70692182296456E259
        0x5731dd833951303fL    # 1.0741089078311812E112
        -0x1d439944c7315d2bL    # -4.1869303682511767E167
        -0x4b061109560aba4eL    # -1.692236655889279E-53
        0x40919ad057b451dbL    # 1126.7034595656357
        -0x1d4d7753dc7dd6a6L    # -2.732271639884983E167
        -0x38c8e96588b0d048L    # -1.1988127881905522E35
        0x496b89c073438e70L    # 4.9129599276753534E45
        0x6dae711c184bfd21L    # 2.1492041702847104E220
        -0x70e6975da5f00dcaL    # -6.243186665864189E-236
        -0x78c88375a860523L    # -1.645566070424823E272
        0x5206808b8b04e17fL    # 1.3988539685788927E87
        -0x278e608597b5ccaaL    # -1.1110080635773393E118
        0x74e0084a2338ba00L    # 9.40338844049943E254
        0x62ffddb1507f0467L    # 7.516314813461132E168
        0x16304e55b56a2fbcL
        -0x346d297c47a101a7L    # -1.1547628150149633E56
        -0x5be956b372c94851L    # -7.79448162896284E-135
        -0x475a770854db93e8L    # -8.10057762478E-36
        -0x6ad444cb7395fe60L    # -1.079699140922837E-206
        -0x46e7bbc43a4b4852L    # -1.168391258911661E-33
        0x91000db8f49057eL
        0x4e4c83ce7caba6a8L
        -0x2cb41e3f02c2b72dL    # -1.8174826764307648E93
        -0x2089d6f30a7d2231L    # -7.253949461549661E151
        0x6176f0f5c579134aL    # 3.2253345896934294E161
        0x5b0a176333c2aff2L    # 3.617135804736851E130
        0x42658dcf09bb75ffL    # 7.405877529236874E11
        -0x31429c49d0548dedL    # -2.0283886522423895E71
        -0x47a9a49aa158cb61L    # -2.628054545612932E-37
        -0x6df7602f7fa6ce77L    # -8.515235451818863E-222
        0x6e5e0c2d7c92fb36L    # 4.3445634294231897E223
        -0x467d1a9e7140fffcL    # -1.164557135353091E-31
        0x3b13280c2bcaf23aL
        -0x21c9e0641d96b270L    # -6.906391775989466E145
        0x491414d672b72e0dL    # 1.1195753064972115E44
        -0x560e491a6c5f4578L
        -0x7dbcf728f044279L    # -5.333043012510639E270
        0x7dbd8e1477fc4c2eL    # 4.832219955525178E297
        0x198f287db998931L
        -0x15d823bb47888508L    # -2.3377886184727524E203
        0x1bd21d17e1c558faL    # 1.144322379045958E-174
        0x4e18ce88e50d3303L    # 1.6719734183048808E68
        0x18dc1ce2c7286ca4L    # 6.309680677145384E-189
        -0x18affda383c22df2L    # -4.458076936595895E189
        0x2c82b3cb0ad06d8bL    # 2.8018622381859115E-94
        -0xf5b1dcd230749aeL    # -4.1500350911723916E234
        -0x6b6fda90896aa3bbL
        -0x67205e8d22654a7aL    # -7.099225500174427E-189
        0x38e76c3e3973000dL    # 1.409709969602673E-34
        -0x1b4f6718eb2a6103L    # -1.050882801128161E177
        -0x78e70f8866d54cfcL
        -0x25b0170b5bc3387L    # -1.716282071845085E297
        0x2cc6e9558349f4a1L    # 5.4919191323936866E-93
        -0xec0e3e3cc43d37aL    # -3.1652928305482614E237
        -0x48294471e1e16cc9L    # -1.0438315124051608E-39
        0x24e48bdc4020f98fL    # 5.789301178057494E-131
        -0x4009769d5819655fL    # -1.4085413511872178
        -0x45d17dd823c8393aL    # -1.9253520308065319E-28
        -0xd63ef0b088c52faL
        -0x33752f3e92d6ceedL    # -5.386346139182736E60
        0x7a2182760dfdd0eL
        -0x2fb9beebbaf045c9L    # -5.153724223929344E78
        0x3a8c247a14722327L    # 1.1366660297690534E-26
        0x33417b8d67c3251dL    # 8.499582135430966E-62
        0x2dc7e2d3afd53547L    # 3.752282098098676E-88
        0x16821f678b1a2e7fL
        0x57c7f379b78affd8L    # 7.372815977342368E114
        -0x51f432e27c47970cL    # -6.987716833504183E-87
        0x5a0ebca944fe8923L    # 6.502031823263017E125
        0x29405e89ef447b8dL    # 5.44529600493732E-110
        -0x5e890c5ce71e8a8fL
        0x4b91df59bf2019dcL    # 1.0955788047493054E56
        0x5f78e07beb64fbbcL    # 8.14317809002094E151
        0x78644ed7fcfc2f8L
        0x571ead9242ec6abcL    # 4.611111675994924E111
        0x2c4cdfc152293132L    # 2.7035785431171374E-95
        -0x33c9212ad8377962L    # -1.435600785712516E59
        0x197ba97a96de4209L    # 6.357504647233984E-186
        -0x2a1898b249b7130eL    # -6.709495326670105E105
        -0x148bdb1f56bb7e02L    # -4.13908033954999E209
        0x28a6e90af252d680L
        -0x5b5355c1db2646e7L    # -5.048054337573538E-132
        0x33791d633506aa30L    # 9.768109573530708E-61
        -0x65022d9206fe2b45L    # -1.149897719093328E-178
        0x70f8840bc9c2a094L    # 1.5589880058640112E236
        0x5b708862b170a171L    # 2.933751766298093E132
        0x7869331ffb68e38L
        0x1a09b84904f92036L    # 3.026504474339255E-183
        0x366f30f92d7dfacaL    # 1.707356398559019E-46
        -0x4f14b07897f800e0L    # -4.830401784572028E-73
        0x71f1d58374b87ce8L    # 7.432351052233062E240
        -0x781d1a7fdf9644c0L
        -0x5be52061033edb2L
        0x3f40f4f54168f710L    # 5.174825226459141E-4
        0x6f3ab2cfe082a011L    # 6.324749778363271E227
        -0x74aed1d2f103d6a8L    # -3.66147698216623E-254
        -0x2526d12445697b8eL    # -4.364015789713261E129
        -0x156cad384cc0a46cL    # -2.4233698369768797E205
        -0x3f034ecb9ed37490L    # -117523.27372412174
        0x483502ab757067cdL    # 7.14947842604169E39
        -0x67677b2c60a5b0faL
        -0x4df12900f1851900L    # -1.4298910590886017E-67
        0x6bc321adf42366aL    # 3.18117248406332E-276
        0x73824007f08a2bfL
        0x282fdc99528c75ddL    # 4.043158913812675E-115
        -0x354038441a14ee92L    # -1.1890388528309008E52
        0x7e7e971055a54eb1L    # 2.048596746207227E301
        -0x5a349d65b1080871L
        0x6dce1e3c7f3f5378L    # 8.505396477786123E220
        -0x2d78d2999d8f0f3bL    # -3.6885220760900956E89
        0x101ba0de46644fdbL    # 4.448964521551825E-231
        0x17144604eb406999L    # 1.695086454780914E-197
        -0x43845de28a1820d3L    # -2.396803418289627E-17
        0x106b187ba02f3274L
        -0x7effdde3dbd4199fL    # -7.351839704943845E-304
        -0x45e83a230c08e200L    # -7.501405425368404E-29
        -0x4a74c84deccba2b2L    # -9.093267053294365E-51
        0x54e398bafb59ec91L    # 8.572536873956172E100
        0x3f884fa151b8a68fL    # 0.011870632463870904
        -0x63bf6ddfd470b41aL
        -0x568c77a6e3c7441L
        0x5ccf0216ce4b8966L    # 1.1539421088227398E139
        0x2fd8f5cae464557L
        0x4984c45ea45104e7L    # 1.4819875743033434E46
        -0x20a0384af7941fddL    # -2.6007175200507506E151
        -0x5898616a64050499L    # -7.317485594918594E-119
        -0x376b14950acaca06L    # -4.555885615552883E41
        -0x633b4e0209017dd3L    # -4.284141390243219E-170
        0x7062f1904ffb7c06L
        -0x62e4bc9179209b0L    # -6.276629465347786E278
        -0x19ef0c6c48df342eL    # -4.501785594515959E183
        -0x692ce1221692485cL    # -9.991801258949994E-199
        0x2962c5dcc11f48faL
        0x7128ef7e26d2beeeL    # 1.268542468205898E237
        0x757f8b0ec229937L
        -0x733fc7de5a0b19d8L    # -2.899644099765128E-247
        0x75fb3f8b152b90e4L    # 2.0947603461241553E260
        0x1613388868055a8cL    # 2.452195502599011E-202
        -0x760776f5df2a3816L
        0x62276be0384d02bdL    # 6.743732153198567E164
        0x3be88f3c8d37fcd7L    # 4.160544131206047E-20
        0x1a84607b0fcd9525L    # 6.138330316737839E-181
        0x64854b3a9d5ff20dL    # 1.6853183101881374E176
        -0x5e80766eeb845c6dL    # -2.466423255238776E-147
        0x4b629cd15da3da66L    # 1.42618400103597E55
        0x66825d02e021477aL    # 6.242214175534538E185
        0x15008978aa61e3dcL
        0x1db8fbe8360b01d0L
        -0x3696edeaec61d583L    # -4.4727505849305535E45
        0x133e29d52b619f0dL    # 5.46869300655213E-216
        0x457e9bc37d1b0f2eL    # 5.92053560371101E26
        -0x4eea7b7c54e14a6eL    # -3.044637327398008E-72
        0x56e8c3db42c0ebd5L    # 4.652944665364774E110
        0x3802e1c9635351f3L    # 6.936143708280926E-39
        0x22ba308c85c1586dL    # 2.1476902472701E-141
        0x440ea745756b2306L    # 7.068193641150289E19
        -0x47f7cddd9bb0788cL    # -8.888146885462589E-39
        -0x745cd8b69e331dcfL    # -1.306233941361733E-252
        0x7e0f7daed6ed34f8L    # 1.647598779214537E299
        -0x4028e74ee4a19763L    # -0.36088206932766714
        -0x1e078cbca8f9cf40L    # -8.79996402005453E163
        0xefebb8508a7ed70L
        -0x77fa678e36451362L    # -5.109717447953686E-270
        0x477d0561359b3b5dL    # 2.410971562682584E36
        -0x4be99e3685d10300L    # -8.914138042056828E-58
        -0x258a06ec16bf9c25L    # -5.949585983969272E127
        0x76702ced2f69260dL    # 3.183418923082934E262
        0x276febc7fb1b738fL    # 9.889366784233873E-119
        0x753df621dccc8833L    # 5.623403040677079E256
        0x1750c84dbd362f16L    # 2.24511111892651E-196
        -0x5b26b37dcca9789cL
        0x773ead4292a56dfbL    # 2.4728979683381627E266
        -0x626811c0b3c9d8adL    # -4.058232811456427E-166
        -0x115f2937c1f5d450L    # -7.791173821627963E224
        -0x488a6e89d1a88a27L    # -1.5474431446861313E-41
        -0x94011bde3f23554L
        -0x4764be984ed38340L    # -5.126187635244446E-36
        -0x359985e884845d31L    # -2.62800452554738E50
        0x130a098eff485175L    # 5.90078402609129E-217
        -0x18242a81f61e1b4eL    # -1.9842306924307576E192
        0x6a53accdeffa2f41L    # 1.5421698265574943E204
        0x52faa81a9a49c977L    # 5.430056712760941E91
        0x66aa95a96a05932cL    # 3.614745534439557E186
        0x39dcafac117dd3d7L    # 5.657359231938498E-30
        0x4ebda891ab511f0aL    # 2.0469525585497624E71
        -0x586ea9bf564469cfL    # -4.296885273942314E-118
        -0x6a3b20459214a812L    # -8.322184551739045E-204
        -0x29202a152774bc38L    # -2.990691872153314E110
        -0x19995f29692ef540L    # -1.9229977967855543E185
        0x6a3a182605af9effL    # 5.113323143471609E203
        0x4d3486f9cd1fff3L
        -0x27f523321e50643eL    # -1.3230463021614235E116
        -0x1bcea7a24a502b78L    # -4.289990307489411E174
        -0x1455b72af8423cefL    # -4.3206264116706196E210
        -0x38f308d77059d472L    # -1.8799660099352685E34
        0x256abf0092979295L
        -0x7ee36c54db470bd3L
        0x172fafaf1895b8c0L    # 5.298633801699826E-197
        0x30ac733f569ec02aL    # 3.1449676154219396E-74
        0x626d83d6d425758fL    # 1.3597227636775973E166
        0x1819310eca3f2f28L
        -0x6e3d9433ab066f12L    # -3.981332655735732E-223
        -0xbdfad74436966a0L    # -2.33728462916765E251
        -0x4167762e9ebffd50L    # -3.6564992567104416E-7
        0x1539e7bc0837da5fL
        -0x27b51a1d88718032L    # -2.119669290050297E117
        -0x6209e26b89454929L
        -0x4ad1ff344bacdeafL    # -1.5662353322303917E-52
        -0x79c726197f8b16fL    # -8.263878199072019E271
        -0x7ced09f3e2c5aa31L    # -7.422125288923877E-294
        -0x3f61487319fd4295L    # -1965.887596171199
        -0x1b5aa90220357759L    # -6.75581964711905E176
        -0xf18e2a11cbd728eL    # -7.34946000085269E235
        0x5d8e37efd7c2916aL    # 4.60618014510447E142
        -0xdeb673e0f6769bbL    # -3.433478869877117E241
        -0x4882eb9b46b85e32L
        -0x360b1f7e83b69241L    # -1.9069833938951972E48
        -0x647a97b1e06160f3L    # -4.226270814705176E-176
        -0x81647ceb7a46e5aL    # -4.246085077096464E269
        -0x583b36c6263f0f15L    # -4.121387340600598E-117
        -0x730e6007f27f144cL
        -0x149bf53e0c2a4478L    # -2.0590577999320484E209
        -0x84bc189faa1732aL
        0x2ebc463eefdff71cL    # 1.4554409120220061E-83
        -0x2cb49d62e8da6474L    # -1.7851090236928696E93
        -0x1dae6852d626934cL    # -4.052330394257305E165
        0x3eb4ec83890fa6a9L    # 1.2471605581550335E-6
        0x41760791f1c22535L    # 2.3099679109898765E7
        0x138d13f6f726441eL
        0x3878c3596424e00dL    # 1.1643545553228244E-36
        0x35755d5386875c47L    # 3.568901915633356E-51
        0x3cc17a19351dea18L    # 4.850827277563178E-16
        0x26348a0da857b22cL
        -0x7e8fc12b600573e7L    # -9.47579409873723E-302
        -0xc06fe660120c524L
        0xba490cccb7a132fL
        0x3e92b524dc450f88L
        -0x6a99a09fb16b6c23L    # -1.393698123391661E-205
        0x68df5c0b1fcd1e3fL    # 1.4650988613823414E197
        -0x87e2ed572beb557L    # -4.596021973623749E267
        -0x5327f7a62add16acL    # -1.1521326309549305E-92
        -0x4daf968a92142778L
        0x4be114af1e4e6bacL    # 3.350559408861665E57
        0x61cc9350cc867760L    # 1.2855849358550575E163
        0x261b8f3be3bdf398L    # 4.07130150917122E-125
        0x56ede820af83ad62L    # 5.6189818347679094E110
        0x1c07d55fced4a160L
        -0x7604cd46a1901955L
        -0x4fbc1b611048d9eeL    # -3.4359946880401734E-76
        -0x76e5174637663913L    # -8.34531534807609E-265
        -0x2ce6868e79ce0323L    # -2.075689833318761E92
        0x154f68b8eb5f85bfL
        -0x1d87753c8e57c14dL    # -2.261248893331965E166
        -0x3a9c81e753cfee4aL    # -1.8852051103050996E26
        0x14de542b23520fbaL
        0x4d6ae74999c2c11fL    # 8.853955447552958E64
        0x70f97c8737d9bc2bL    # 1.620711690872993E236
        -0x5fe1f6c618f66041L    # -5.600475470865964E-154
        -0x12faab38fdf0a83eL    # -1.4706908734237877E217
        0x1ea87a1c0ec1303fL    # 5.440644507398097E-161
        0x444178c3b658e2f7L    # 6.44593297301907E20
        -0x9a47eaa18770bceL    # -1.353291398283333E262
        0x2ac06d25f7680dfdL    # 9.16754053622512E-103
        -0x7a6efeeeeb0a489fL    # -7.31845532699377E-282
        0x29b392cc66a7538aL
        -0x5b5e5512ae80b16dL    # -3.111369051768157E-132
        -0x49c3a51213ca21e0L    # -1.9401410294709127E-47
        0x8ccfe6fde86fbe9L
        0x67b5c493775e513L
        0x3ec2c024517f2856L    # 2.2352402417646234E-6
        -0x2ef5381900d44fd3L    # -2.5403496144784095E82
        0x391811bb9fbac520L    # 1.1588931555702164E-33
        0x5792a0f06048daebL    # 7.16803599602142E113
        0x68082538693ae987L    # 1.3770239656858951E193
        -0x68876e04586c4aa6L
        -0x1408eea9d459ae9L
        0x390a41c77419009L
        -0x42c36afab8cc9f40L    # -1.0154405951765514E-13
        -0x31c26273508f09d4L    # -7.984303577220675E68
        -0x6f2d2a02ab9b920fL
        0x2e738b2d4b4e1894L    # 6.287632172629277E-85
        0x27b14fe2733267dbL
        -0x56674e4b6fc1cc8bL
        -0x6e5eaed7ff7aac0cL    # -9.356777546156252E-224
        0x7672dcca8d1591ccL    # 3.712228486293568E262
        -0x8118bb8d8e854a5L    # -5.027747801574211E269
        0x60732852b5f3b7c4L    # 4.1097638751199195E156
        0x4623b5f15b9a27deL    # 7.808218291251171E29
        -0x50b320cf31640d30L    # -7.609315907805229E-81
        -0x46b28c899ad8c31dL    # -1.1344122309919243E-32
        -0x6dd84f10a0b77f11L
        0x34e775518be540bL
        -0x44d454ad2a363f64L    # -1.1443726432398787E-23
        -0x52a1f1d41b838955L    # -3.6886139464323903E-90
        0x3d6d8e99452d0d66L    # 8.400612107930276E-13
        0x1d9e240993d83ec2L    # 5.111363431596748E-166
        -0x7da1f9b40329b5aaL
        -0x1c42830eb821ec10L    # -2.8489425352935305E172
        0x19379bb00bd652fdL    # 3.391132457183459E-187
        -0x33f64791f0b0dd0cL    # -2.0181218986455514E58
        -0x4ad294a595362274L
        -0x424c152cee009ff5L    # -1.8114663523402044E-11
        -0x35e024029bb1d6baL    # -1.164061764060728E49
        0x11ceba40b0624d82L    # 6.641117278318236E-223
        -0x24df322e38b2d669L    # -9.31837844628288E130
        -0x76e718fbcd57fd30L    # -7.722984536522904E-265
        0x656cdc2e66e9d461L    # 3.7423551214717008E180
        -0x581c966197ba2141L
        0x3bb9cd21b56094e3L    # 5.463636863966606E-21
        -0x6f95a9f15138ebe5L    # -1.357081076025519E-229
        -0x6c807682ec6bb4b3L    # -9.148383766430447E-215
        -0x6a341d0b8ed5c501L
        -0x171c0181dfbe9a2eL    # -1.8682255122216418E197
        0x65990159ddc48331L    # 2.5939947073239776E181
        0x3817e97f44a5c7caL    # 1.756783522482764E-38
        0x5c0e2e45ae34096aL    # 2.7420672957471978E135
        0x486511a72820434aL    # 5.73551560695675E40
        -0x2d7449dad7c91a6aL    # -4.410104028761684E89
        -0x1c11ce75d0f397bfL    # -2.3336794153922254E173
        -0x60b249df0767b134L    # -6.762635729969784E-158
        -0x174238be78445be0L    # -3.478065270968775E196
        -0x868fe671d0974bfL
        -0x13b122d883bb52a7L    # -5.195143135143051E213
        -0x6252238b49af0389L
        0x595f4166d459c595L    # 3.2283778916877523E122
        -0x37cc8ccb7104167dL    # -6.618499090510441E39
        -0x696c14522dd37600L    # -6.506175316980239E-200
        0x5d2dae9cdd1dacbdL    # 7.069396475995196E140
        0x6bd5d632a67d723dL    # 2.871601603807436E211
        0x6a8691bd07956be3L    # 1.4152233103124672E205
        -0x5e2744e4fbbecc9cL
        0xd88221b3404c374L
        -0x11b3bb653d94f180L    # -2.0436272203790398E223
        0x3099c1e33d4ca91aL    # 1.4236481303552757E-74
        -0x82d5875b0f9baafL
        0x5decf0e7954b17fdL    # 2.8233321853623476E144
        0x4220a5f2393c8bd3L    # 3.5751795870273094E10
        -0x4d96bfc111ade999L    # -7.492881365587229E-66
        -0x5410dbfcb27a0eb7L    # -4.555955114868704E-97
        -0x471e0809d059335aL    # -1.0814457901484775E-34
        -0x42f863d2c958a0cfL    # -1.0484975067338775E-14
        -0x2ddbef67065f62bcL    # -4.989354144887454E87
        0x3118d67c63b01765L    # 3.514429181059095E-72
        0x10bafb438fcfbbcfL    # 4.449071445539618E-228
        -0x758bbf669c68379dL
        -0x7e2b1766063d91e9L    # -7.805294083995241E-300
        -0x279e7e7773d8c2ccL    # -5.518168948304884E117
        0x820350630ab2946L
        0x26a6a5852b457d14L
        -0x1a47e1157ae21478L    # -1.000894940130921E182
        0x52956617741dd272L    # 6.810955628982956E89
        -0x51af4699640d4ff0L    # -1.3451389934999103E-85
        0x471bb6b1f1cc6b7fL    # 3.597437798652146E34
        -0x6a22f8b3ea620524L
        -0x60959beb97b5113cL
        -0x3afcd3be450b4fa7L    # -2.8973234009844114E24
        0x7fe95fd407575cacL
        -0x2b5d4a48ac6f2a0L
        0x31d50dcedd97f31bL    # 1.220209304176608E-68
        -0x85c9c7ad0cbfefL
        -0x6988f91a75648979L
        0x191bfbbc67754108L
        -0x6cef49eab4970420L    # -7.574472443248158E-217
        0x38e02d578893fe7bL    # 9.736248081825879E-35
        0x9647bd246a1ceb5L
        0x76bcd1326d8dca60L    # 9.074185094428072E263
        0x1414f07c5879ab12L    # 6.219954957941553E-212
        0x7e52c3a2bccfa89L
        0xd42cde0bdfd5c54L    # 8.60614460424399E-245
        -0x59764ff348f57c81L
        0x4f9206d4992e83fdL    # 2.038424914220872E75
        0x3b6b0f298bba6d4dL    # 1.7906294827868793E-22
        -0x54cc0b608466d8b6L
        -0x2f59c9a4aca4d22cL    # -3.292175635751009E80
        -0x7ea04d0e978e1db4L    # -4.622424968312159E-302
        0x175d9e7d6e6f247dL
        0x25b39bb7d82e28d7L    # 4.52606936289923E-127
        0x1e4fbfa643b22172L
        -0x7101407c0b6af3ebL
        0x5eaf6869362b4bdaL    # 1.2550070664758566E148
        0x4e1968e216f9d060L    # 1.712610382351323E68
        0x5a3537de6483f97eL    # 3.590769239864197E126
        -0x3d14a0a967c8fcd0L    # -2.407703092736255E14
        0x764bf7f46b252727L    # 6.88044554924371E261
        -0x282dba696ae3abc0L    # -1.1249167464775577E115
        0x3269002c38d26e25L    # 7.418612531317965E-66
        -0x42c5dd7a5e24f188L    # -9.284964465300118E-14
        0x43fa23231de83e02L    # 3.0134202888454414E19
        0x320976ae567f6acfL    # 1.1806216643961824E-67
        0x28fbef43481af03cL
        -0x464687c3e722df19L    # -1.2557515357916414E-30
        -0x1d8a69a02b237be7L    # -1.989014540795233E166
        0x428cc5b902fabeaaL    # 3.954442264407833E12
        0xae278c3d18499f9L
        0x1ee49e5dec06f44L
        -0x22b11d3e39f0c963L    # -2.942431805005589E141
        0x21dd2fd130b7a5cL
        0x6485726f60b79376L    # 1.697439387512857E176
        -0x2483d105852bf32cL    # -5.001188013801244E132
        0x173cee9e615861e9L    # 9.676156074844521E-197
        -0x41dea8200aef7a49L    # -2.0190213186370454E-9
        -0x732aab14491b5709L    # -7.627276204458325E-247
        0x1560f339dc789264L
        -0x507267c0bd3c583bL    # -1.2479733863549974E-79
        -0x5ba20f2351d28b35L
        0x1efd96ff34754178L
        -0x31063e23fd57930fL    # -2.8443215707854873E72
        0x2a7f6267e156bb91L    # 5.473628345393935E-104
        0x460b41cbd03d9a45L    # 2.699404136066878E29
        0x72a65b8ad28186ddL    # 1.908233124700238E244
        0x403e2eccc38ac447L    # 30.182811948183623
        0x15adf37ccbfb546eL
        -0x4200053678f4c0e4L    # -4.6536497489210366E-10
        -0x7b276e45285ff39aL
        0x13ac8bab227af769L    # 6.624482605406661E-214
        -0x70a46c01d49ca00aL
        0x12e84f6e98e04f97L    # 1.377346241733141E-217
        -0x4282cd5efa517c7dL    # -1.6597010416998289E-12
        0x3e16a54c47675334L    # 1.318152945835362E-9
        0x109f23414553cb44L    # 1.283600977604098E-228
        0x12675760727f92a8L    # 5.165810916587003E-220
        0x155240c63e408651L    # 5.685358066604068E-206
        -0x561dad4e2a9308a3L    # -6.241496717571285E-107
        -0xac7072e6124a7b4L    # -4.686933100714944E256
        -0x21dfcb1415013d1bL    # -2.529665985958773E145
        -0x322ce3ff058e16f6L    # -8.049814582689366E66
        0x59a3d4a388f5f16dL    # 6.554574972305328E123
        0x33e82f4172d18032L    # 1.2040087046989564E-58
        -0x2a46ddaf93e43b6aL    # -9.007013303810322E104
        -0x5a3d46d53d8ad97dL    # -8.64359544855135E-127
        -0x2113f7893c7e5913L    # -1.7922492672651548E149
        0x600c7040e7c0b0f7L    # 4.766222709742877E154
        -0xb1c1e8ee4d94825L
        -0x351739365271a12aL    # -7.415995809222925E52
        -0x79900c61404852abL    # -1.1265414599972453E-277
        0x47932a656dc8b127L    # 6.368866402330678E36
        0x30b84da59ae81c27L    # 5.373119127496755E-74
        -0x32f504a2587afd3eL    # -1.3874636187157779E63
        -0x206ae349fd0822cdL    # -2.764332838978529E152
        -0x10b572238e1d5b1eL    # -1.2581112821692497E228
        0x5806e53ae07d78b8L    # 1.1276573257011625E116
        -0x6722d36b88d1d05aL    # -6.54788133763477E-189
        -0x22831f944a7b2539L    # -2.200820801140607E142
        -0x12b2d7f41ea22b70L    # -3.2163347234229042E218
        -0x74317af97c5745e1L    # -8.325549578770346E-252
        0xa0e01e66b440054L
        -0x2d950f531a3ce35cL    # -1.0718365377790755E89
        -0x285d2019a8157ef9L    # -1.452534065492301E114
        -0x1be397652e9473aaL
        0x4bd7ff67212d0a0eL    # 2.3536843683322128E57
        0x438d574d3da4b254L    # 2.6428043465315392E17
        0x7aafe3d7e56412b4L    # 9.261911842848488E282
        -0x25bfb9cbe1069657L    # -5.508187510817212E126
        0x2b8aa95c4d7408d1L    # 6.094766451114733E-99
        -0x48a637ceef9b1908L    # -4.624419216184805E-42
        -0x7e0976f6d4636d33L
        0x7eb1406f7b74a922L
        0x37fbee29282598b7L    # 5.1299887641879225E-39
        -0x73c12f8bd883c3a5L
        -0x35c648e52864d841L    # -3.758288484564657E49
        -0x25e8909508fe3f4cL    # -9.91487741699124E125
        0x5cd3482624acd28dL    # 1.4351136959991482E139
        0x67c9e6d2838cc693L    # 9.232401452653808E191
        -0x2ab7db2eac2be81dL    # -6.75949898103995E102
        0x2361cb05fd15c347L
        0x28a912d255531c52L
        -0x2345560d081d109aL    # -4.961364132278239E138
        0x6d466a5f1724ab94L    # 2.4727235513708495E218
        0x2d4665c40f5a5303L    # 1.3743941655892515E-90
        -0x1c4fd01b7e331bcdL    # -1.5638894986016148E172
        0x6aa6dcb8885b4008L    # 5.734359279826135E205
        -0x42109e29909c88f1L    # -2.2833539893423922E-10
        0x3a470e5dab8dfd27L    # 5.820182132505062E-28
        0x65d018d06422aea7L    # 2.671778432097759E182
        0x5c0d0c54f51e9ea9L    # 2.6391669757623934E135
        0x3d9eb4feb70b3439L    # 6.981966099074385E-12
        0x76834cad22cf244fL    # 7.596484722889838E262
        0x784afb468735542aL    # 2.850840525017466E271
        0x5c90d01d6cf4df2L
        -0x6b10f590ee50cd96L    # -7.553449200098473E-208
        -0x7c0581649418511aL
        -0x4ea081d00434d9feL    # -7.1297443449303004E-71
        0x609fccc3b14d6052L    # 2.7287451450537393E157
        -0x7b5e4897b57b0fecL    # -2.32696831614077E-286
        -0x513a89393b6ebf4L
        0x24a19e784abb4444L    # 3.102799657987083E-132
        0x410a6e19f7521b7aL    # 216515.24576207605
        0x6824fffbdb32ce2fL    # 4.790548224644067E193
        0x6e753e1277757952L    # 1.2285753294834753E224
        0x5d3014e9c923675L
        0x1f71e6c6287861d1L    # 3.259648360871756E-157
        -0x59a225b5e2aa1a1fL    # -7.056109563791051E-124
        -0x787604a3f544d30aL
        0x42660d954d1b7f98L    # 7.577373513879873E11
        0x619aa0e6d009f312L    # 1.497492807515423E162
        0x287ad300a8383f6eL
        0x47bd6fcedc4e879fL    # 3.912815245993782E37
        0x785759f2a4cda6faL    # 4.934558038318264E271
        -0x5a93b27e98091861L    # -2.041552651624375E-128
        0x60f2a1c1ff78d237L    # 1.0232319442290015E159
        0x6b90978fd7cdfd3cL    # 1.3636934066228383E210
        0x53fa2f1e128bd088L    # 3.4955498088929324E96
        0x2ce33baec2041fd9L    # 1.8440870904736044E-92
        -0x169eed691f56180bL    # -4.0838255502423135E199
        -0x238eda6c3d648406L    # -1.994071677303036E137
        0x3067cb810413de11L    # 1.6439767195540002E-75
        0x62eff7fa2f7cb04cL    # 3.770266451060776E168
        -0x5d536562f0f5cb51L
        0x4352c6f297b083bdL    # 2.114117924041906E16
        0x316765f711856392L
        0x74323b41983cb5ffL    # 5.22129307465211E251
        0x74a65eb41d93aca5L    # 8.200325674572102E253
        0x257ac205bb6be6e9L
        -0x4d421851b8570a74L    # -2.839649824037984E-64
        -0x387d322c5b3cc12bL    # -3.1243521777998355E36
        0x646e57aacb1d0e4aL    # 6.003688242590767E175
        -0x6bff5df56cce9481L    # -2.470375494538048E-212
        -0x44c494410f8ca335L    # -2.2682022177868225E-23
        0x27f764a200e7ae16L    # 3.7106449702666E-116
        -0x1588ed56b1367e12L    # -7.234011187649341E204
        -0x37c9533f2835a94cL    # -7.715840585281477E39
        0x68348c9bf0b997ffL    # 9.375475321303851E193
        -0x3c8de55d5432b6fL    # -2.254237582587548E290
        0x2b2659dbea94d401L    # 7.983413997511315E-101
        -0x35beabd98b184ae6L    # -5.065188134312643E49
        0x7a7ee9b96ce126e5L    # 1.1222688550311789E282
        -0x6325306245027e01L
        0x2043e96ae898bd9L
        -0x64180d5285a69476L    # -3.025805691048759E-174
        0xf6d1b5d144ce81cL
        -0x5c2d6b2c393f31c3L
        0x62ca45275746e794L    # 7.745506980118746E167
        -0xaa02350d398e7daL
        0x721f7154e99c4a63L    # 5.241509754041013E241
        0x235f4383e7b73ba8L
        -0x5c1df91c9d71b750L    # -7.750561832411074E-136
        0x4c693a41d415d551L    # 1.2668480348820124E60
        0x7f4f920091e2826aL    # 1.7319869896969637E305
        0x2be59e4df4819b35L    # 3.162820138434691E-97
        -0x763f8cb38249b42bL
        0xce6e2e922e618f0L
        0x3aaa083deb50335fL    # 4.2057279005088144E-26
        0x45dccea3c4b5a11eL    # 3.5661569472898387E28
        0x6d38762b5b2616b4L    # 1.3492167421890845E218
        0x44d680ad28263b55L    # 4.250628925174837E23
        -0x352af751520290afL    # -3.1478888239559645E52
        0x2d593a1ab58fc336L    # 3.096038845595519E-90
        -0x7d5436f6d4a69ef9L    # -8.497072058591593E-296
        0xd5481bb05e90418L
        0xd6532a239038c90L
        0x65630befa3b1f21cL    # 2.469820889246809E180
        0x6cd93be44c048f36L    # 2.1747141566770486E216
        0x377f9dac58225f59L    # 2.268330370736748E-41
        0x3a12233f16201f55L    # 5.723243098445792E-29
        -0x7dca1337ee644e21L    # -5.238204789990867E-298
        0x13153c03017fbefdL    # 9.62461910795517E-217
        0x5ea2171971b40c73L    # 7.228563905462801E147
        -0x4f61045570593ca4L
        -0x7e087bfce2add39aL
        -0x4a707cab7935e880L
        -0x6d16407373f3c0f5L    # -1.458816490538781E-217
        -0x45ec55874878910dL    # -6.205465288409871E-29
        0x10c6040d5ae52458L    # 7.260530097715973E-228
        -0x79dcfc13b08af5L
        0x4d4f12fd943dd30fL    # 2.5566353891292216E64
        0x172786ed0db1b537L
        -0x5b81aab64e99bc82L    # -6.677278950943123E-133
        0x1cb45f2e03f89dc1L
        -0x31ea5f7a7ba71171L    # -1.4576594309442994E68
        -0x16c7100d6816a49bL    # -7.45635378434655E198
        -0x5e9c47a83ee8eceaL    # -7.711182982400452E-148
        0x2be31ee0568b9582L    # 2.7973909581521086E-97
        -0x5bf5c18d4766f682L
        -0x6e1f1331f8da5e52L
        -0xf9a3efb56185471L    # -2.7018754809653927E233
        -0x758ad8dd4938ff4aL
        0x18feec19af43d70bL
        0x49b62efc29871c34L    # 1.2664559766448094E47
        0x268677b2efbc6d85L
        -0x15b403cea4581914L    # -1.096767017681347E204
        0x37da59f3c1c5992L
        -0x13e8509d45835912L    # -4.983473841393618E212
        0x643ff1cdca2347a9L    # 7.900857473648978E174
        -0x2bec9e68b68221beL    # -1.0349505838954836E97
        -0x7453aed860a1bdbbL
        -0x6ceaa1b7a097c6a1L    # -9.685296860748275E-217
        -0x70959a137cf11633L    # -2.075614597851583E-234
        0x20a3d8507680d7a8L
        0x3f7335e06fee0334L    # 0.004690052707588422
        0x6ccdb586c6d2d1a4L    # 1.280195290940586E216
        -0x198084e876f2e1f6L    # -5.3506123928427954E185
        -0x7516860ca3c6d9b5L
        -0x6e51990714d6e23cL
        -0xbc6e2d367ebd9d9L    # -7.192363361762508E251
        -0x797eddaf93ecdbeeL
        -0x4c7f62d87931d998L    # -1.2923557038453733E-60
        0x12048644af8394afL    # 7.097501365744675E-222
        0x6dd36b789925905bL    # 1.0968362300416177E221
        -0x1046e68bc94b2c1aL    # -1.5221608770387917E230
        0x191e4ea521c48adcL
        0x3b463b815aefba76L    # 3.678049090077382E-23
        -0x7f3ea150780ca33L
        0x31d453094a15b82eL    # 1.1779256711949968E-68
        -0x284fe3242e9c0027L    # -2.4799759922820185E114
        0x178ee53fa2a43982L
        0x662583146b4f763eL    # 1.1425856606629572E184
        0x2c14e9405c8fa2d2L    # 2.4474795466811613E-96
        -0xe98270a66d4196L
        0x477d89bb08049698L    # 2.4539218745764382E36
        0x4fbb6a36650ca1cfL    # 1.2400108119202353E76
        0x35b2bb2c9d9fb3dL
        0x5ad497e77ff475ceL    # 3.568664373130737E129
        0x4955ab9670d76c05L    # 1.93305216964233E45
        0x5bd6838fce489bd0L    # 2.556872475286671E134
        0x11dfa1dfe40c3a47L
        0x31ae4bf02c8704b1L    # 2.1948527221305557E-69
        0x6fefd99f400a04d3L    # 1.5452448465417036E231
        0x3f3356f135a54372L    # 2.950991526136571E-4
        0x6f4518ae69bcb7f9L    # 9.995288169897246E227
        0x6e4efded2fb9d4eaL    # 2.2405519210163564E223
        -0x17ae0a48fb2c35b1L    # -3.277625201161495E194
        -0x62b589a25aac17c6L
        -0xbd77edf8f67e194L    # -3.508895963802562E251
        0x6a5f7a208a18f227L    # 2.467239025038534E204
        -0x1dac3c952115a755L    # -4.552376604155862E165
        -0x2599cdefa6500c8fL    # -3.004929788265897E127
        0x5a6f412c2b8b6a94L    # 4.2313782916127854E127
        0xcb9d5f0183bfc4L
        -0x443b9a12f8594abbL    # -8.638951726025174E-21
        -0x6e6f5d15c8192caL
        -0x542a97beaabfcf49L    # -1.5659656506733994E-97
        -0x79d7d7911162821cL
        -0x640d7b354b646ff4L    # -4.679650664189635E-174
        0xaaf1d6380bbcdeeL
        0x30af8bca91ffd046L    # 3.4871947399276712E-74
        0x67392737ac4f1628L    # 1.7510978784803528E189
        -0x4c11dc0f21a94813L    # -1.5005130643077426E-58
        0x74653f159743dac3L    # 4.8677941812420294E252
        0x7a78664564dfc3dL
        0x217ad74173a554fL
        -0x8f004361a148e3bL    # -3.222796301226608E265
        0x1e32c60aac5c7219L
        -0x528a39c6502533a5L    # -1.0689216089307273E-89
        0x1f52bfb4445b4dbaL    # 8.534867547560325E-158
        -0x20a9957b3b5d5670L    # -1.8344153292656883E151
        0x49b7f7a6392cb1c1L    # 1.3682955188795394E47
        -0x4e6dc90f750c290eL    # -6.597825744515892E-70
        -0x1c78267542719f9fL    # -2.880260740119296E171
        0x539a7dc3b25ca0deL    # 5.525879259195759E94
        0x438c10425558a4f8L    # 2.5277364587702656E17
        -0x23f1ea7402cd5a7aL
        0x1169a0682252cfb1L    # 8.65414267262943E-225
        -0x360fc8f3084a9a3eL    # -1.4811443673183208E48
        0x44cd0b43382ccddbL    # 2.743127717173848E23
        0x600a8d2225f09e7cL
        -0x32fc4f6bf19fbca9L    # -1.0124871383276647E63
        0x2d9d5261492b0b94L    # 5.75773767461153E-89
        0x6d436594af3e9645L    # 2.1397200759158205E218
        0x4496f046a29d513dL    # 2.7081092751080903E22
        0x49afe5ca95f60b2cL    # 9.105161612844076E46
        -0x3480d97527edc5bL    # -5.974275972410423E292
        -0x7072e3cf1364cdcbL    # -9.155401535238299E-234
        -0x4e08a7e8276d5265L    # -5.411758169700527E-68
        0x7a414112958f3ed7L    # 7.829978029895497E280
        -0x6dc38cbed885002L
        0x3133f2a4b0cdc56dL    # 1.1290069116556857E-71
        -0xa89c2e4303faeaaL    # -6.678298267792504E257
        -0x57c4443c55ab97d8L    # -7.038589412954075E-115
        -0x1b76d3cdd6f9c3c2L    # -1.99230696079513E176
        -0x498c23517bf6f4faL    # -2.1744252505103107E-46
        -0x27b82f9e330c88b7L    # -1.8766381457946024E117
        -0x5167ce957acb6196L    # -3.1133755883628126E-84
        -0x1b7e2f0350ee7e4fL    # -1.4100884466035178E176
        -0x4d3fff4be94328e5L    # -3.039103543139235E-64
        -0x460ad7bd9b6313d0L
        0x3d4ebca7bf14a6baL    # 2.1839905604585993E-13
        -0x6e5e9f9c4bd42f58L    # -9.388929301916499E-224
        0x169c838ccc037773L    # 9.312772836566255E-200
        -0x767f6844dee5b549L    # -6.586744720418447E-263
        -0x4b2a16f96dd728e8L    # -3.574277368230001E-54
        -0x134fbc4f0f5f57c0L    # -3.504253026422691E215
        0x1adf8ff2b29f012fL
        0x6161c1349da71803L    # 1.2480766516481263E161
        0x6933a43151fcd187L    # 5.87285258567906E198
        0x10c6ab0eaae0af96L    # 7.475671070971922E-228
        0x6f6e9f36da43509fL    # 5.8033571149733255E228
        0xf2b588b89d25926L
        0x51c5b26e621256b5L    # 8.430016152403702E85
        -0x58b145c989a75e4fL
        0xd37c37962010ac9L
        -0x44be8533e946bbe7L    # -2.891769927286119E-23
        0x396419a393f6838fL    # 3.096918808693517E-32
        -0x63edd825c3f5346fL
        -0x5305797ae41b7c14L    # -5.086562674893923E-92
        0x2eb1f9f5ab3038cfL    # 9.253457925270228E-84
        -0x45e64df01934f140L    # -8.108087554585155E-29
        0x64b6059672b270d5L    # 1.3943468261233006E177
        0x4dfefa9cdc8e2324L
        -0x4bc4ce80f5be6618L    # -4.332149752206652E-57
        0x723995a1f89b98bbL    # 1.7059783348315587E242
        -0x533e8250345ad890L    # -4.192615990478254E-93
        -0x5f61c28c978498beL
        -0x755d4359084bc2e8L    # -1.949808600016973E-257
        -0x683720e45624a157L    # -4.258876639796125E-194
        0x2983d00ae915e719L
        0x2aa282bc2920122L    # 7.999094680824886E-296
        -0x2ffbc904bf7a91fbL    # -2.9258882531151315E77
        -0x532968028c6ed0abL    # -1.0831507771152225E-92
        -0x437da1e14ce7fcdcL    # -3.1862803955170496E-17
        0x4c80c5e0cb7b4206L    # 3.3691387129608644E60
        -0x90a797307c352f3L
        0x7d1ef75417503743L    # 4.944275540240726E294
        0x47747c20ab9f3490L    # 1.7018167100344627E36
        0x4ff7e23cf18b8e3fL    # 1.7284677713407874E77
        0x7d7b177d2d61a875L    # 2.7684256920153473E296
        0x753055753e0cdb4cL    # 3.06566075578461E256
        -0x6ddaeeb96142ccd6L
        -0x1ed9348f7f8d3d44L    # -1.0014777787650853E160
        -0x44c60d692238f72eL    # -2.146336368727615E-23
        -0x3d4e375e6cdeae45L    # -1.955340190548973E13
        -0xcd994e362455a55L    # -4.898365464659535E246
        0x7e4bb879fff1d2d6L    # 2.3205370228604007E300
        -0x7d3db6adf3be96f9L
        0x5973decc1ec8bdd7L    # 8.209613639549224E122
        -0x5c7d9a1ab1e597f4L    # -1.235956872919449E-137
        0x42d9d1fe2c3e4515L    # 1.1355881268661233E14
        0x50175a23dfa6bcfL    # 1.4676620999126676E-284
        0x1e6db8bb88a09eaaL
        -0x17b2a01485b557eL
        0x5341ce8a4ba1f00fL    # 1.1607388025879016E93
        -0x7036d32ad2088484L
        -0x3ed8c2bfbe5573afL    # -761504.1282543038
        0x2f1a5e85111f1f3aL    # 8.687172347690079E-82
        0x40b509cd6360a9d8L    # 5385.802297631708
        0x4bce242ffc77789fL    # 1.4781278567014954E57
        0x5d8450eafeaa4e1bL    # 3.0967632418972575E142
        -0x673d6a5cfad08554L
        -0x5c759c7fff0ca50cL
        -0x3af516b385a78dceL    # -4.066724183620052E24
        0x46a018b157c7b868L    # 1.632374572626032E32
        -0x1d9f66f9274a8d6cL    # -7.646402013170132E165
        -0x63a7548f34d8d933L
        0x5c3a290437720f92L
        -0x22d7230f072eb8dL    # -1.213422070729641E298
        0x7e6044cabb11f7f1L    # 5.447522444051907E300
        0x6c72ebd40f294694L    # 2.5479195438132913E214
        0x1acc26790ae39686L
        -0x6e1c753e2e790fc6L    # -1.689439581557414E-222
        0x5b2a4ec3f3f9f68L
        -0x4c51392499d800a0L    # -9.576220245001187E-60
        -0xdffce2cf13a95c0L    # -1.34982506004448E241
        0x2c4dac0cda3cfd33L    # 2.7783006745346287E-95
        -0x7d68d3dfa6ed8271L
        0x3c5f06061d6247e2L    # 6.7271558992064816E-18
        -0x4a0eedd540a4ce51L    # -7.30026755479588E-49
        0x58fad591fd6ab9f1L    # 4.330797607466611E120
        -0x2f5b1923ea35f9e4L    # -3.097936123722179E80
        0x7c0093b1ce55a815L    # 2.0193425783051364E289
        -0x1287eb4d6fdca4a2L    # -2.1251454864188648E219
        -0x18121c717ed04d4L
        -0x5ace6f899c9089e1L    # -1.58369986345329E-129
        -0x7dd52e46a0006c74L
        0x77d82f2c8fccb0bfL    # 1.9963155530219592E269
        -0x241479f242ee8d5L    # -5.022733865158425E297
        -0x675247d44a37c848L    # -8.337829881158945E-190
        0x7eefc075e438b755L    # 2.7217860636040695E303
        -0x3dbb5701811fe74eL    # -1.7746919366419293E11
        0x73d48ddc343a5075L    # 9.197626214381992E249
        -0x3f41040bfdd5a4b2L    # -7931.953158042232
        0x441e0c21b821dda4L    # 1.3856912611739127E20
        -0x1905c4299bbc224cL    # -1.1414516584099979E188
        0x1b8651e0cf111a4aL
        -0x448d180d1a3aee99L    # -2.5021948927621645E-22
        0x46fc3db3d49fd8aaL    # 9.164736666872027E33
        0x1c94f9181145fd3L
        0x47259ebb97297f9bL    # 5.612885859770178E34
        0x5a32b18d15f86e6bL    # 3.1635171295080275E126
        -0x36745064e02943e7L    # -1.9757361807561347E46
        -0x33c5ba07d59de151L    # -1.64920289735521E59
        0x592e06bbd85d25e2L
        0xdb0d0c4383025a2L    # 9.85083706384728E-243
        -0x2ce37dfe4d2b0798L    # -2.322859698600007E92
        -0x61706dd0e065c5d4L
        0x139467ac3e7ded24L
        -0x68c7a30d0298d4e6L
        0x17ea4a5d330425f5L    # 1.800741561068206E-193
        0x4cff0203607ca2caL    # 7.9724346203024805E62
        -0x28277e5399de089L
        -0x67a98a40dcd61b96L
        -0x434d355ecd04efeeL    # -2.60784757729149E-16
        0x2027a1719fcc00b2L    # 8.812268247454614E-154
        -0x3a0565b669069194L    # -1.3173011758902251E29
        -0x65248f8b78ee35f2L
        -0x543c467c4c677e49L    # -7.214414198651556E-98
        0x1a8f00a2a257cbc7L    # 9.33918703448276E-181
        0x3295537e19bfd706L    # 5.062595864716972E-65
        -0x1100c83b18e1b748L
        -0x35157f5abb8f0280L    # -7.932616493938834E52
        -0x3c829af48b27859eL    # -1.32381987263981088E17
        0x448be725e4d28b7fL    # 1.647097793215975E22
        -0x21d851c31ca28d7L
        0x45951b1a3c6e811aL    # 1.6329875249184287E27
        -0x3837f2172e86b6caL    # -6.394738774649828E37
        -0x166ca488b36b04fdL    # -3.704261740749492E200
        -0x1aa365868116e938L    # -1.8545362747408543E180
        -0x25a1d23218c6d971L    # -2.0428756209834263E127
        -0x6b417a699b23d475L    # -9.283965783804724E-209
        -0x2d5eb853544e5669L    # -1.0999980582992345E90
        0x1eae5140d2a5df5eL    # 6.738825581603288E-161
        0x25084071c4805558L    # 2.733346673850331E-130
        0x33b65383286d74a5L    # 1.3893640853672694E-59
        0x7aff06103eefc75aL    # 2.883296546319449E284
        0x372013809abc6f98L    # 3.604404461571131E-43
        0x2dbef740bbb242c2L    # 2.432226577032313E-88
        -0xa5dc520c5199778L
        0x4882984b6ae25dabL    # 2.0248053920225796E41
        0x24ea3c44dd06342bL    # 7.392307286952571E-131
        0xd96d7019eec7b38L
        0x3f7d42f9d9604d3fL    # 0.007143951390406854
        -0x60a2100d7e214426L    # -1.362808472294887E-157
        0x3d3ee993f957ea96L    # 1.0982295660972723E-13
        -0x5ac88d7e37ed37a2L    # -2.114144073743167E-129
        -0x2a21fc76be8d0f14L    # -4.302289926080078E105
        -0x754f45f1f564498cL
        -0x11ab55480a309797L    # -2.9882126325019435E223
        -0x42a698ea247cd5L
        -0x3c9a2c968a74f597L    # -4.9147395263976264E16
        0x5caa372efede2c1eL    # 2.4389740546193315E138
        -0x4fe191630247090cL    # -6.57041495549918E-77
        -0x18190c3cb451a052L    # -3.2724388664322736E192
        -0x409ffeb906cf0031L    # -0.0019537340354247377
        -0x701cb244b416d13cL    # -3.885550364905219E-232
        -0x494f798a52b19a4aL    # -2.894597972137284E-45
        -0x62bf7ed1686e8dddL    # -8.746572080268095E-168
        0x1086c2751f44bd81L    # 4.691134951393183E-229
        0x4ed365fa4dd511e0L    # 5.355299811746912E71
        0x1596437d946de97dL    # 1.109529949119857E-204
        -0x1974dcda4c474bedL    # -9.224734646732611E185
        0x44568971c46c86eaL    # 1.6629291305902942E21
        -0x2145be2ea426decdL    # -2.0983824996806005E148
        -0x557c57590626d3d8L    # -6.857225973993066E-104
        0x5d7a27f7b3613c6aL    # 1.993477543691688E142
        0x523884011c0c33edL    # 1.2192198387569723E88
        -0x335f4646d73d51c1L    # -1.3438406310034437E61
        0x348350e84c99b279L    # 9.847115012794233E-56
        -0x325bc4a4a53760d0L    # -1.065331913406024E66
        0x5a7b5b2d4f573b8bL    # 7.4071871215775E127
        0x648c17f7281f9f95L    # 2.2234896295122887E176
        -0x2b8ddb39d6c44234L    # -6.200735744494602E98
        -0x679c3cd21055160eL    # -3.465236497234494E-191
        0x671cf9f7bf7b0b38L    # 5.043154572484981E188
        -0x37caa010adb0135dL    # -7.273448993378312E39
        0x280b7163b3af8b2eL    # 8.706069255533155E-116
        -0x74b06a5edb23fb6cL
        -0x232966b9c89f21d5L    # -1.681984551679078E139
        -0x2d5bad9006b03338L    # -1.293646501982639E90
        0x5d90a05357161d34L
        -0x6b59cd10d09fe1b4L
        0x610aaedf662309e1L    # 2.9307849124820398E159
        0x2da7fe2fc0e465d6L    # 9.422677434899087E-89
        -0x3056ed4126ad1ecbL    # -5.67047082629512E75
        0x5490f8c6423e6be0L    # 2.3200954738926707E99
        -0x23012682cdef6c1L
        -0x584e0d09a3860b84L
        -0x325748152a140f62L    # -1.3015770999265368E66
        0x295caf31b6bd8e48L
        -0x59b6d9b5d74b6de5L    # -2.97222954919612E-124
        0x64f1432a3de29c90L    # 1.748790168489705E178
        0x5967b047529b3608L    # 4.893588339511661E122
        0x74e817a92a6d4a0L
        0x7983076341360f29L    # 2.1082337183650294E277
        -0x783aaeb8c25e66ffL
        0x3087abcc66f088cdL    # 6.541680098406677E-75
        -0x3c71ce065311fc7dL    # -2.71974327014944864E17
        0x2fd4c561526a66aL
        -0x4e9d6d8878479034L    # -8.409165345749946E-71
        -0x4e96f3285d51d78bL    # -1.1342312907786283E-70
        0xdeca1c1b3a2703fL
        0x107d7c66909d5df4L
        0x3f0bcf056aca90e9L    # 5.3040840929415214E-5
        0x46da5d52dc2be992L    # 2.1389460510025042E33
        -0x38da3e652656f841L    # -5.648250379117776E34
        -0x15b355333896ffbfL    # -1.1234976386673762E204
        0x7f46c9a5e159eb18L    # 1.2501608021950271E305
        -0x1282cf2414a1c744L    # -2.5761057491957592E219
        0x2d72490d9a450bb4L    # 8.976455998755795E-90
        0xf7c096dbd1ae0deL    # 4.408920843676857E-234
        -0x2cf3465f07234754L    # -1.1702817513111042E92
        0x4925523f3e36acc4L    # 2.3774018855034366E44
        0x4020d397b70e4068L    # 8.413266869058319
        0x59ccfbe9c9f8176aL
        -0x64ac200fd96d429fL    # -4.904609228833359E-177
        -0x711ea44021e085c0L    # -5.331421553217202E-237
        0xc32f33641d20b6dL
        0x51759d12fa643b87L    # 2.6242507316629123E84
        0x74b501559a8904dcL    # 1.540009629118286E254
        -0x7b6c5ca11b36afeL
        -0x7d3678ffb48fef29L    # -3.122625956448181E-295
        0x61e407181423f740L    # 3.604117840686749E163
        0x2a02f5db42019a13L
        -0x5df2faf05bc36533L    # -1.1619998157030795E-144
        -0xdde984ecfff5409L    # -5.802855369023505E241
        0x3904cbf127ac4978L    # 5.0066110070041665E-34
        0x7721328b5b377b99L    # 6.931543674441446E265
        0x593b4e801475342eL    # 7.05125725736171E121
        -0x4d3238228925a4e9L    # -5.6556974603302406E-64
        -0xd6beac67715ed4aL    # -8.570440201246822E243
        -0x4df0ffc24420a2edL    # -1.437361058561569E-67
        0x75df2eb3946f9a70L    # 5.993026572822343E259
        -0x49e27ed8bf79813dL    # -5.046950416468315E-48
        -0x1c8e4818cc18b589L    # -1.0698954998057046E171
        0x16c073d092b39419L    # 4.298749808271884E-199
        -0x10d96cbb0ce25b43L    # -2.6739895946761647E227
        0x1bd8e70e82ba8f03L
        0x6a30fc028ff1489bL    # 3.328186510486681E203
        -0x64792600d95860a6L
        -0x4f4205adc9f9d08L    # -5.181066832788831E284
        0x65d427e85e20ffe3L    # 3.3454870747284244E182
        0x65b0ef4731790dd6L    # 7.02707186162522E181
        -0x62e68471ad6306b6L
        0x573fc6572437f786L    # 1.9103844803728167E112
        0x73b88f760f5e7d4cL    # 2.747589056342262E249
        0x5d966434524fc591L    # 6.826210295267163E142
        -0x7090ce2a53eb760eL
        0x745f77bec421fc4fL    # 3.6048080032632873E252
        -0x18e25a9e0609b79L
        0x610d88606f6dae66L    # 3.2437785176045057E159
        0x64c7897ce8689c9eL
        -0x3893f87513e7661cL    # -1.1642983636866478E36
        0x794ded54720f6a66L    # 2.072288598593612E276
        -0x3e6961fd07b66849L    # -9.486355007186781E7
        -0x20e58839be96b898L
        0x1e982092d736df66L    # 2.681451758449128E-161
        0x2d70330539bccfb6L    # 7.952387033694281E-90
        -0x337ba449dc661ad3L    # -4.0893053975035034E60
        0x74bf43e22f564262L    # 2.29222451527931E254
        -0xb960987072d8393L    # -5.948365270701781E252
        0xfae8b871b84fcacL    # 3.842677431774495E-233
        0xdf6f406cd0df7e8L
        0x1ce221a6f7e95079L
        -0x3597bf14d614f98L    # -2.808627473482383E292
        0x7a4f586f416eeb77L    # 1.4224612616955739E281
        -0x522e7a6d9a6c9492L    # -5.505022879487978E-88
        0x699834684519d22dL    # 4.631878102041374E200
        -0x53353ca60e5a23bbL    # -6.415161916514463E-93
        -0x6751e46c8dd0529aL
        -0x4c88cb6e2aa36c36L    # -9.025453067661264E-61
        0x55498786d65777faL    # 7.147417764559102E102
        0x4a8af897528701aaL    # 1.2613839002700974E51
        -0x617c8a0478a58b5cL
        0x123359110367d678L
        0x2267e20acf07e4a6L    # 6.120410287490287E-143
        -0x798086d72791e954L
        -0x5dabcf26371d453fL
        0x49fb6de3000e3fe0L    # 2.5054929047476938E48
        -0x1a7c5843ef0b8c66L    # -1.0194951758330958E181
        0x4fe50285bb706679L    # 7.602421199991546E76
        0x1316d6a845944159L
        -0x385dd36a76554cd4L    # -1.2078798986011142E37
        0x2f9c7c001e942371L    # 2.4023035100299086E-79
        0x7abd593bfcf3ae2dL    # 1.7047586797820053E283
        0x5c76f7d51ca6829dL    # 2.671056206511824E137
        0x4527fbc17b225deeL    # 1.4497088466350235E25
        0x3375cf99872f2ba5L    # 8.483111903512299E-61
        0x78d1f36a455c753eL    # 9.710930706609495E273
        0xe8945ddf61144b9L
        0x11056bb805990d1dL
        0x4168594ca5eb1aa7L    # 1.2765797184949232E7
        -0x7fbc7feff281b408L
        0x1add8b7ebdbde391L
        -0x64c6dd2cfd7e16eaL
        0x78b90411ecda9183L    # 3.383235168761783E273
        0x523611cd60d9cfbcL    # 1.0975695095934226E88
        0x527c25941cfa65a8L    # 2.239688533269023E89
        -0x47f17612481059e8L    # -1.1218177356200917E-38
        0x262b76dada8570b7L    # 8.114466615943983E-125
        -0x3d00de810b30f52cL    # -5.4765958967722925E14
        -0xd33b17d09f6197fL    # -9.663968743026921E244
        -0x1eb8ab0c78923e0cL    # -4.100310200691133E160
        0x319a0f678caebf8dL    # 9.439702823448772E-70
        0x5f4c9f952d569aafL    # 1.171193382042897E151
        -0x5bd6d45772f7ac60L
        0x48dde62187518fbbL    # 1.041826321420425E43
        -0x585408ccdc885ac5L
        0x37ad4708c61545a8L    # 1.680444802580407E-40
        0x7789c13601b89a7L
        -0x1920e300ac358a39L    # -3.3844101736901446E187
        0x1370dde675d09a21L    # 4.892780614653449E-215
        0x443d9120176902c3L    # 5.454129622121166E20
        -0x10f9e09ee26a0d7dL    # -6.550922182485372E226
        -0x520ea302621aa705L    # -2.1820874752288547E-87
        0x595b1dc393bfb9f9L    # 2.8008389333679484E122
        -0x495202784a7b21c9L    # -2.6265896381517633E-45
        0x16d8f75f7e6bb3f5L    # 1.304659167707224E-198
        -0x22f9336d87265640L    # -1.35751893136332E140
        0x46bbe9314af87189L    # 5.661004765636518E32
        -0x2dca69db49ccac94L    # -1.07354668871805E88
        0x7012306d0a1a0385L    # 7.059751474754679E231
        0x4fee6bf890eac360L    # 1.1008122906783241E77
        0x7fe6db2b1c4fff50L    # 1.2840094317599252E308
        -0x2ec02fa7bc5655b0L    # -2.4142097864425434E83
        0x77ac44468f367db1L    # 2.916629667123158E268
        -0x24b87c5c1c4240edL    # -5.215773104648234E131
        0x38de931c90579a85L    # 9.200725442591934E-35
        -0x4972ba130609cd12L    # -6.409440039012727E-46
        -0x639523bdb38f2fbfL    # -8.688098665207867E-172
        0x2d70c27a98b29bf7L    # 8.22748511487524E-90
        0x792d94c0d0149e53L    # 5.120824432669313E275
        0x6d7dfb50b129f20L
        0x4f9a4f7e3dabff09L    # 2.9751465659980445E75
        0x311c5aeeea7c22e6L    # 4.0121197574821065E-72
        -0x13cc33193d55c04dL    # -1.6664443923034422E213
        0x40b8e77ea7a94fe9L    # 6375.494745809564
        -0x55009c345efb7274L
        -0x22a06799a93c606L
        0x4d72b301be30b24fL    # 1.2307877373472265E65
        0x5d029224f2ff1047L    # 1.105758784637214E140
        -0x6efb6caa637dcb9eL
        -0x7df8a40f13ad018fL    # -6.976076843801672E-299
        0x2adb5a309dc7790fL
        -0x7b30bd8fc0e6ebfdL
        -0x16f0ebce7fd71339L    # -1.1615891121791268E198
        -0x504c7f6e856daccbL    # -6.579080377052405E-79
        -0x656f813d05faaafL
        0x403b8e64def8ca5fL    # 27.556226669063445
        0x6590b09b097ffd76L    # 1.7313714368915314E181
        0x2ce934e7a9cf35a3L    # 2.4168329961998647E-92
        -0x393d7ee0e7ed7760L    # -7.506268579342344E32
        0x2a682d1d147a1a46L
        -0x7c6878cd11916757L
        -0x2a6f6a358227eae6L
        -0x22f83a30d6d5d815L    # -1.4154885795624451E140
        0x374ba1432140bdfL
        0x2e9eeac17fa31f74L    # 3.9786778871304613E-84
        -0x3f880d7de2d58b7aL    # -383.156766095963
        -0x46a5c2f1772f175dL    # -2.0213407470945682E-32
        -0x7927c485f3182b33L
        0x23e9b4518e000707L
        -0x38ff7c1ed583c627L    # -1.0718948109968964E34
        0x413b468d5ac45772L    # 1787533.3545584348
        -0x299830b570fca2baL    # -1.7474427542240933E108
        0x68a522a26322558eL
        0x7deec60ddb7c8264L    # 4.025174526474577E298
        0x69f3cb14760a9871L    # 2.424124344147894E202
        0x7a872b309522f8abL    # 1.6822394340082578E282
        0x6df371af0695072cL    # 4.392827573254415E221
        0x1ef1ec70cdbca111L
        0x7338e5e38851da66L    # 1.0880302721057432E247
        -0x4cc45009089f69efL    # -6.7304249104039954E-62
        -0xd1154095fb10f93L    # -4.188560413469191E245
        0x307ba4ebda86f671L    # 3.8198428266039876E-75
        -0x730ab585f29ce4b5L    # -3.04507562568014E-246
        -0x1e1f94ae0eae4ac8L
        -0x5d4a5e4564f949c3L    # -1.773918955596798E-141
        0x38042aa144fc75e9L    # 7.40801068367619E-39
        -0x597f1db8ecc68c5aL    # -3.192599760271856E-123
        0x4e98fab65d1cb0cdL    # 4.310027603273247E70
        0x4c8f984078c92e34L    # 6.346347460028554E60
        -0x633dd1cd941b0f26L    # -3.763546196598462E-170
        -0x9ec8f9dd7ab29d0L
        0x72c94da55f413493L    # 8.638607383441845E244
        0x6f66764d3db73eedL    # 4.256938677349523E228
        -0x40eb013280137427L    # -8.009080191277665E-5
        0xdcc6533fb6b2a3cL
        0x2cba5fb163bf37e2L    # 3.1609241136413025E-93
        -0xa9c1663ff667130L
        -0x6c541c460ef59322L    # -6.47224117263712E-214
        0x31bd295a6d347220L    # 4.2252401906502307E-69
        -0x54e481655d182014L    # -4.910300097272948E-101
        0xbb16eaeb689cc45L
        -0x488e3a38bde5c24bL    # -1.2751194836456483E-41
        0x202ee5037b486363L
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
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
    .line 1144
    .line 1145
    .line 1146
    .line 1147
    .line 1148
    .line 1149
    .line 1150
    .line 1151
    .line 1152
    .line 1153
    .line 1154
    .line 1155
    .line 1156
    .line 1157
    .line 1158
    .line 1159
    .line 1160
    .line 1161
    .line 1162
    .line 1163
    .line 1164
    .line 1165
    .line 1166
    .line 1167
    .line 1168
    .line 1169
    .line 1170
    .line 1171
    .line 1172
    .line 1173
    .line 1174
    .line 1175
    .line 1176
    .line 1177
    .line 1178
    .line 1179
    .line 1180
    .line 1181
    .line 1182
    .line 1183
    .line 1184
    .line 1185
    .line 1186
    .line 1187
    .line 1188
    .line 1189
    .line 1190
    .line 1191
    .line 1192
    .line 1193
    .line 1194
    .line 1195
    .line 1196
    .line 1197
    .line 1198
    .line 1199
    .line 1200
    .line 1201
    .line 1202
    .line 1203
    .line 1204
    .line 1205
    .line 1206
    .line 1207
    .line 1208
    .line 1209
    .line 1210
    .line 1211
    .line 1212
    .line 1213
    .line 1214
    .line 1215
    .line 1216
    .line 1217
    .line 1218
    .line 1219
    .line 1220
    .line 1221
    .line 1222
    .line 1223
    .line 1224
    .line 1225
    .line 1226
    .line 1227
    .line 1228
    .line 1229
    .line 1230
    .line 1231
    .line 1232
    .line 1233
    .line 1234
    .line 1235
    .line 1236
    .line 1237
    .line 1238
    .line 1239
    .line 1240
    .line 1241
    .line 1242
    .line 1243
    .line 1244
    .line 1245
    .line 1246
    .line 1247
    .line 1248
    .line 1249
    .line 1250
    .line 1251
    .line 1252
    .line 1253
    .line 1254
    .line 1255
    .line 1256
    .line 1257
    .line 1258
    .line 1259
    .line 1260
    .line 1261
    .line 1262
    .line 1263
    .line 1264
    .line 1265
    .line 1266
    .line 1267
    .line 1268
    .line 1269
    .line 1270
    .line 1271
    .line 1272
    .line 1273
    .line 1274
    .line 1275
    .line 1276
    .line 1277
    .line 1278
    .line 1279
    .line 1280
    .line 1281
    .line 1282
    .line 1283
    .line 1284
    .line 1285
    .line 1286
    .line 1287
    .line 1288
    .line 1289
    .line 1290
    .line 1291
    .line 1292
    .line 1293
    .line 1294
    .line 1295
    .line 1296
    .line 1297
    .line 1298
    .line 1299
    .line 1300
    .line 1301
    .line 1302
    .line 1303
    .line 1304
    .line 1305
    .line 1306
    .line 1307
    .line 1308
    .line 1309
    .line 1310
    .line 1311
    .line 1312
    .line 1313
    .line 1314
    .line 1315
    .line 1316
    .line 1317
    .line 1318
    .line 1319
    .line 1320
    .line 1321
    .line 1322
    .line 1323
    .line 1324
    .line 1325
    .line 1326
    .line 1327
    .line 1328
    .line 1329
    .line 1330
    .line 1331
    .line 1332
    .line 1333
    .line 1334
    .line 1335
    .line 1336
    .line 1337
    .line 1338
    .line 1339
    .line 1340
    .line 1341
    .line 1342
    .line 1343
    .line 1344
    .line 1345
    .line 1346
    .line 1347
    .line 1348
    .line 1349
    .line 1350
    .line 1351
    .line 1352
    .line 1353
    .line 1354
    .line 1355
    .line 1356
    .line 1357
    .line 1358
    .line 1359
    .line 1360
    .line 1361
    .line 1362
    .line 1363
    .line 1364
    .line 1365
    .line 1366
    .line 1367
    .line 1368
    .line 1369
    .line 1370
    .line 1371
    .line 1372
    .line 1373
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
    .line 1486
    :array_5
    .array-data 8
        0x2ddc3c5b60121cacL    # 8.871169948211062E-88
        -0x21f1250b7e6f5421L    # -1.2040308417334508E145
        -0x507120d55e3b5a27L    # -1.3018241554205692E-79
    .end array-data

    :array_6
    .array-data 8
        0x7d28c1fd513be16dL    # 7.906009354364693E294
        0x7c36cca4634fea80L    # 2.2218715011799545E290
        0x417eeb2665100d7L
    .end array-data

    :array_7
    .array-data 8
        0x6ab4660dff36d30aL    # 1.023289459887647E206
        0x5f382ca411061c46L    # 4.945761461871904E150
        -0x2a918a81a3cc4441L    # -3.411014703165022E103
    .end array-data

    :array_8
    .array-data 8
        -0x74c51cc8ba0797adL
        -0x5ff8b53f0d5960b1L    # -2.171496523921205E-154
        0x74cd0b29efb2a5ebL    # 4.2586988416015E254
    .end array-data
.end method

.method public static bridge synthetic zzm(Lcom/google/android/gms/internal/ads/zzawj;Lcom/google/android/gms/internal/ads/zzatd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzawj;->zzm:Lcom/google/android/gms/internal/ads/zzatd;

    return-void
.end method

.method public static bridge synthetic zzn(Lcom/google/android/gms/internal/ads/zzawj;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzawj;->zzv()V

    return-void
.end method

.method private final zzv()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawj;->zzi:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzawj;->zzl:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzawj;->zza:Landroid/content/Context;

    .line 12
    .line 13
    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->start()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzawj;->zzi:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;
    :try_end_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    :cond_0
    return-void

    .line 22
    :catch_0
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzawj;->zzi:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    .line 24
    .line 25
    return-void
.end method

.method private final zzw(Ljava/io/File;Ljava/lang/String;)V
    .locals 9

    .line 1
    new-instance p2, Ljava/io/File;

    .line 2
    .line 3
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    new-array v2, v1, [J

    .line 7
    .line 8
    fill-array-data v2, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v2, 0x2

    .line 19
    new-array v3, v2, [Ljava/lang/Object;

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    aput-object p1, v3, v4

    .line 23
    .line 24
    const/4 v5, 0x1

    .line 25
    aput-object v0, v3, v5

    .line 26
    .line 27
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 28
    .line 29
    new-array v7, v1, [J

    .line 30
    .line 31
    fill-array-data v7, :array_1

    .line 32
    .line 33
    .line 34
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-direct {p2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_0

    .line 53
    .line 54
    goto/16 :goto_a

    .line 55
    .line 56
    :cond_0
    new-instance v3, Ljava/io/File;

    .line 57
    .line 58
    new-array v6, v2, [Ljava/lang/Object;

    .line 59
    .line 60
    aput-object p1, v6, v4

    .line 61
    .line 62
    aput-object v0, v6, v5

    .line 63
    .line 64
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 65
    .line 66
    new-array v1, v1, [J

    .line 67
    .line 68
    fill-array-data v1, :array_2

    .line 69
    .line 70
    .line 71
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-static {p1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-eqz p1, :cond_6

    .line 90
    .line 91
    invoke-virtual {v3}, Ljava/io/File;->length()J

    .line 92
    .line 93
    .line 94
    move-result-wide v5

    .line 95
    const-wide/16 v7, 0x0

    .line 96
    .line 97
    cmp-long p1, v5, v7

    .line 98
    .line 99
    if-lez p1, :cond_6

    .line 100
    .line 101
    long-to-int p1, v5

    .line 102
    new-array p1, p1, [B

    .line 103
    .line 104
    const/4 v1, 0x0

    .line 105
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    .line 106
    .line 107
    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/google/android/gms/internal/ads/zzavn; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 108
    .line 109
    .line 110
    :try_start_1
    invoke-virtual {v5, p1}, Ljava/io/FileInputStream;->read([B)I

    .line 111
    .line 112
    .line 113
    move-result v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/google/android/gms/internal/ads/zzavn; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 114
    if-gtz v6, :cond_1

    .line 115
    .line 116
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 117
    .line 118
    .line 119
    :catch_0
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzawj;->zzy(Ljava/io/File;)V

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :cond_1
    :try_start_3
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 124
    .line 125
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 126
    .line 127
    new-array v8, v2, [J

    .line 128
    .line 129
    fill-array-data v8, :array_3

    .line 130
    .line 131
    .line 132
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v7

    .line 139
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 143
    .line 144
    new-array v8, v2, [J

    .line 145
    .line 146
    fill-array-data v8, :array_4

    .line 147
    .line 148
    .line 149
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v7

    .line 156
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 160
    .line 161
    new-array v2, v2, [J

    .line 162
    .line 163
    fill-array-data v2, :array_5

    .line 164
    .line 165
    .line 166
    invoke-direct {v7, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    invoke-virtual {v6, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzath;->zza()Lcom/google/android/gms/internal/ads/zzatg;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    sget-object v6, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    .line 181
    .line 182
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    .line 183
    .line 184
    .line 185
    move-result-object v6

    .line 186
    sget-object v7, Lcom/google/android/gms/internal/ads/zzgyl;->zzb:Lcom/google/android/gms/internal/ads/zzgyl;

    .line 187
    .line 188
    array-length v7, v6

    .line 189
    invoke-static {v6, v4, v7}, Lcom/google/android/gms/internal/ads/zzgyl;->zzv([BII)Lcom/google/android/gms/internal/ads/zzgyl;

    .line 190
    .line 191
    .line 192
    move-result-object v6

    .line 193
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzatg;->zzc(Lcom/google/android/gms/internal/ads/zzgyl;)Lcom/google/android/gms/internal/ads/zzatg;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    array-length v6, v0

    .line 201
    invoke-static {v0, v4, v6}, Lcom/google/android/gms/internal/ads/zzgyl;->zzv([BII)Lcom/google/android/gms/internal/ads/zzgyl;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzatg;->zzd(Lcom/google/android/gms/internal/ads/zzgyl;)Lcom/google/android/gms/internal/ads/zzatg;

    .line 206
    .line 207
    .line 208
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawj;->zzg:Lcom/google/android/gms/internal/ads/zzavo;

    .line 209
    .line 210
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzawj;->zzh:[B

    .line 211
    .line 212
    invoke-virtual {v0, v6, p1}, Lcom/google/android/gms/internal/ads/zzavo;->zza([B[B)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    array-length v0, p1

    .line 221
    invoke-static {p1, v4, v0}, Lcom/google/android/gms/internal/ads/zzgyl;->zzv([BII)Lcom/google/android/gms/internal/ads/zzgyl;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzatg;->zza(Lcom/google/android/gms/internal/ads/zzgyl;)Lcom/google/android/gms/internal/ads/zzatg;

    .line 226
    .line 227
    .line 228
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzatx;->zze([B)[B

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    array-length v0, p1

    .line 233
    invoke-static {p1, v4, v0}, Lcom/google/android/gms/internal/ads/zzgyl;->zzv([BII)Lcom/google/android/gms/internal/ads/zzgyl;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzatg;->zzb(Lcom/google/android/gms/internal/ads/zzgyl;)Lcom/google/android/gms/internal/ads/zzatg;

    .line 238
    .line 239
    .line 240
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    .line 241
    .line 242
    .line 243
    new-instance p1, Ljava/io/FileOutputStream;

    .line 244
    .line 245
    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lcom/google/android/gms/internal/ads/zzavn; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 246
    .line 247
    .line 248
    :try_start_4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgzp;->zzal()Lcom/google/android/gms/internal/ads/zzgzu;

    .line 249
    .line 250
    .line 251
    move-result-object p2

    .line 252
    check-cast p2, Lcom/google/android/gms/internal/ads/zzath;

    .line 253
    .line 254
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgxt;->zzax()[B

    .line 255
    .line 256
    .line 257
    move-result-object p2

    .line 258
    array-length v0, p2

    .line 259
    invoke-virtual {p1, p2, v4, v0}, Ljava/io/FileOutputStream;->write([BII)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcom/google/android/gms/internal/ads/zzavn; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 263
    .line 264
    .line 265
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 266
    .line 267
    .line 268
    :catch_1
    :try_start_6
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 269
    .line 270
    .line 271
    :catch_2
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzawj;->zzy(Ljava/io/File;)V

    .line 272
    .line 273
    .line 274
    return-void

    .line 275
    :catchall_0
    move-exception p2

    .line 276
    goto :goto_0

    .line 277
    :catch_3
    nop

    .line 278
    goto :goto_1

    .line 279
    :goto_0
    move-object v1, v5

    .line 280
    goto :goto_5

    .line 281
    :goto_1
    move-object v1, v5

    .line 282
    goto :goto_8

    .line 283
    :catchall_1
    move-exception p1

    .line 284
    move-object p2, p1

    .line 285
    goto :goto_2

    .line 286
    :catch_4
    nop

    .line 287
    goto :goto_3

    .line 288
    :goto_2
    move-object p1, v1

    .line 289
    goto :goto_0

    .line 290
    :goto_3
    move-object p1, v1

    .line 291
    goto :goto_1

    .line 292
    :catchall_2
    move-exception p1

    .line 293
    move-object p2, p1

    .line 294
    goto :goto_4

    .line 295
    :catch_5
    nop

    .line 296
    goto :goto_7

    .line 297
    :goto_4
    move-object p1, v1

    .line 298
    :goto_5
    if-eqz v1, :cond_2

    .line 299
    .line 300
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 301
    .line 302
    .line 303
    goto :goto_6

    .line 304
    :catch_6
    nop

    .line 305
    :cond_2
    :goto_6
    if-eqz p1, :cond_3

    .line 306
    .line 307
    :try_start_8
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 308
    .line 309
    .line 310
    :catch_7
    :cond_3
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzawj;->zzy(Ljava/io/File;)V

    .line 311
    .line 312
    .line 313
    throw p2

    .line 314
    :goto_7
    move-object p1, v1

    .line 315
    :goto_8
    if-eqz v1, :cond_4

    .line 316
    .line 317
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 318
    .line 319
    .line 320
    goto :goto_9

    .line 321
    :catch_8
    nop

    .line 322
    :cond_4
    :goto_9
    if-eqz p1, :cond_5

    .line 323
    .line 324
    :try_start_a
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    .line 325
    .line 326
    .line 327
    :catch_9
    :cond_5
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzawj;->zzy(Ljava/io/File;)V

    .line 328
    .line 329
    .line 330
    :cond_6
    :goto_a
    return-void

    .line 331
    :array_0
    .array-data 8
        0x1f22c488fdc1566dL    # 1.067932247962819E-158
        -0x31b78c5dbdaa0206L    # -1.318432766171526E69
        -0x53e5f194be8535d7L    # -3.0496819099474156E-96
    .end array-data

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
    :array_1
    .array-data 8
        -0x1c04a1091f7ae386L    # -4.23104323512732E173
        0x27de677748c4352fL
        -0x6024a76531e26620L    # -3.186822218843863E-155
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
    :array_2
    .array-data 8
        0xa7fec949ba3c6b7L
        0xb4c1588bbfc18fL
        -0x4fc8db14c66c992aL    # -1.9987733531415902E-76
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
    :array_3
    .array-data 8
        -0x2d5698c0bae6adf5L    # -1.6171079594367985E90
        -0x4fc1647649119ccL
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
    :array_4
    .array-data 8
        0x3d0ec31d0e30ba56L    # 1.3661144260576377E-14
        -0x3281e6ec6afe76c2L    # -1.9810528879303986E65
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
    :array_5
    .array-data 8
        0x4874f3fc800eee81L    # 1.1407937276054866E41
        -0x6adaa42f584a0138L    # -8.315853675880928E-207
    .end array-data
.end method

.method private final zzx(Ljava/io/File;Ljava/lang/String;)Z
    .locals 9

    .line 1
    new-instance p2, Ljava/io/File;

    .line 2
    .line 3
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    new-array v2, v1, [J

    .line 7
    .line 8
    fill-array-data v2, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v2, 0x2

    .line 19
    new-array v3, v2, [Ljava/lang/Object;

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    aput-object p1, v3, v4

    .line 23
    .line 24
    const/4 v5, 0x1

    .line 25
    aput-object v0, v3, v5

    .line 26
    .line 27
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 28
    .line 29
    new-array v7, v1, [J

    .line 30
    .line 31
    fill-array-data v7, :array_1

    .line 32
    .line 33
    .line 34
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-direct {p2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-nez v3, :cond_0

    .line 53
    .line 54
    return v4

    .line 55
    :cond_0
    new-instance v3, Ljava/io/File;

    .line 56
    .line 57
    new-array v2, v2, [Ljava/lang/Object;

    .line 58
    .line 59
    aput-object p1, v2, v4

    .line 60
    .line 61
    aput-object v0, v2, v5

    .line 62
    .line 63
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 64
    .line 65
    new-array v1, v1, [J

    .line 66
    .line 67
    fill-array-data v1, :array_2

    .line 68
    .line 69
    .line 70
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    if-nez p1, :cond_8

    .line 89
    .line 90
    const/4 p1, 0x0

    .line 91
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->length()J

    .line 92
    .line 93
    .line 94
    move-result-wide v1

    .line 95
    const-wide/16 v6, 0x0

    .line 96
    .line 97
    cmp-long v8, v1, v6

    .line 98
    .line 99
    if-gtz v8, :cond_1

    .line 100
    .line 101
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzawj;->zzy(Ljava/io/File;)V

    .line 102
    .line 103
    .line 104
    return v4

    .line 105
    :catchall_0
    move-exception p2

    .line 106
    goto/16 :goto_6

    .line 107
    .line 108
    :catch_0
    nop

    .line 109
    goto/16 :goto_9

    .line 110
    .line 111
    :cond_1
    long-to-int v2, v1

    .line 112
    new-array v1, v2, [B

    .line 113
    .line 114
    new-instance v2, Ljava/io/FileInputStream;

    .line 115
    .line 116
    invoke-direct {v2, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/internal/ads/zzavn; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    .line 118
    .line 119
    :try_start_1
    invoke-virtual {v2, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 120
    .line 121
    .line 122
    move-result v6

    .line 123
    if-gtz v6, :cond_2

    .line 124
    .line 125
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 126
    .line 127
    const/4 v1, 0x5

    .line 128
    new-array v1, v1, [J

    .line 129
    .line 130
    fill-array-data v1, :array_3

    .line 131
    .line 132
    .line 133
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzawj;->zzy(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/google/android/gms/internal/ads/zzavn; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 140
    .line 141
    .line 142
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 143
    .line 144
    .line 145
    :catch_1
    return v4

    .line 146
    :catchall_1
    move-exception p2

    .line 147
    goto/16 :goto_4

    .line 148
    .line 149
    :catch_2
    nop

    .line 150
    goto/16 :goto_5

    .line 151
    .line 152
    :cond_2
    :try_start_3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgzf;->zza()Lcom/google/android/gms/internal/ads/zzgzf;

    .line 153
    .line 154
    .line 155
    move-result-object v6

    .line 156
    invoke-static {v1, v6}, Lcom/google/android/gms/internal/ads/zzath;->zzd([BLcom/google/android/gms/internal/ads/zzgzf;)Lcom/google/android/gms/internal/ads/zzath;

    .line 157
    .line 158
    .line 159
    move-result-object v1
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/google/android/gms/internal/ads/zzavn; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 160
    :try_start_4
    new-instance v6, Ljava/lang/String;

    .line 161
    .line 162
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzath;->zzh()Lcom/google/android/gms/internal/ads/zzgyl;

    .line 163
    .line 164
    .line 165
    move-result-object v7

    .line 166
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzgyl;->zzA()[B

    .line 167
    .line 168
    .line 169
    move-result-object v7

    .line 170
    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    if-eqz v0, :cond_4

    .line 178
    .line 179
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzath;->zzf()Lcom/google/android/gms/internal/ads/zzgyl;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgyl;->zzA()[B

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzath;->zze()Lcom/google/android/gms/internal/ads/zzgyl;

    .line 188
    .line 189
    .line 190
    move-result-object v6

    .line 191
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzgyl;->zzA()[B

    .line 192
    .line 193
    .line 194
    move-result-object v6

    .line 195
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzatx;->zze([B)[B

    .line 196
    .line 197
    .line 198
    move-result-object v6

    .line 199
    invoke-static {v0, v6}, Ljava/util/Arrays;->equals([B[B)Z

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    if-eqz v0, :cond_4

    .line 204
    .line 205
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzath;->zzg()Lcom/google/android/gms/internal/ads/zzgyl;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgyl;->zzA()[B

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    sget-object v6, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    .line 214
    .line 215
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    .line 216
    .line 217
    .line 218
    move-result-object v6

    .line 219
    invoke-static {v0, v6}, Ljava/util/Arrays;->equals([B[B)Z

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    if-nez v0, :cond_3

    .line 224
    .line 225
    goto :goto_3

    .line 226
    :cond_3
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzawj;->zzg:Lcom/google/android/gms/internal/ads/zzavo;

    .line 227
    .line 228
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawj;->zzh:[B

    .line 229
    .line 230
    new-instance v6, Ljava/lang/String;

    .line 231
    .line 232
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzath;->zze()Lcom/google/android/gms/internal/ads/zzgyl;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgyl;->zzA()[B

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    invoke-direct {v6, v1}, Ljava/lang/String;-><init>([B)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {p2, v0, v6}, Lcom/google/android/gms/internal/ads/zzavo;->zzb([BLjava/lang/String;)[B

    .line 244
    .line 245
    .line 246
    move-result-object p2

    .line 247
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 248
    .line 249
    .line 250
    new-instance v0, Ljava/io/FileOutputStream;

    .line 251
    .line 252
    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/google/android/gms/internal/ads/zzavn; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 253
    .line 254
    .line 255
    :try_start_5
    array-length p1, p2

    .line 256
    invoke-virtual {v0, p2, v4, p1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Lcom/google/android/gms/internal/ads/zzavn; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 257
    .line 258
    .line 259
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 260
    .line 261
    .line 262
    :catch_3
    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 263
    .line 264
    .line 265
    :catch_4
    return v5

    .line 266
    :catchall_2
    move-exception p1

    .line 267
    goto :goto_0

    .line 268
    :catch_5
    nop

    .line 269
    goto :goto_2

    .line 270
    :goto_0
    move-object p2, p1

    .line 271
    :goto_1
    move-object p1, v2

    .line 272
    goto :goto_7

    .line 273
    :goto_2
    move-object p1, v2

    .line 274
    goto :goto_a

    .line 275
    :cond_4
    :goto_3
    :try_start_8
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzawj;->zzy(Ljava/io/File;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lcom/google/android/gms/internal/ads/zzavn; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 276
    .line 277
    .line 278
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 279
    .line 280
    .line 281
    :catch_6
    return v4

    .line 282
    :catch_7
    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 283
    .line 284
    .line 285
    :catch_8
    return v4

    .line 286
    :goto_4
    move-object v0, p1

    .line 287
    goto :goto_1

    .line 288
    :goto_5
    move-object v0, p1

    .line 289
    goto :goto_2

    .line 290
    :goto_6
    move-object v0, p1

    .line 291
    :goto_7
    if-eqz p1, :cond_5

    .line 292
    .line 293
    :try_start_b
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    .line 294
    .line 295
    .line 296
    goto :goto_8

    .line 297
    :catch_9
    nop

    .line 298
    :cond_5
    :goto_8
    if-eqz v0, :cond_6

    .line 299
    .line 300
    :try_start_c
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    .line 301
    .line 302
    .line 303
    :catch_a
    :cond_6
    throw p2

    .line 304
    :goto_9
    move-object v0, p1

    .line 305
    :goto_a
    if-eqz p1, :cond_7

    .line 306
    .line 307
    :try_start_d
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b

    .line 308
    .line 309
    .line 310
    goto :goto_b

    .line 311
    :catch_b
    nop

    .line 312
    :cond_7
    :goto_b
    if-eqz v0, :cond_8

    .line 313
    .line 314
    :try_start_e
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_c

    .line 315
    .line 316
    .line 317
    :catch_c
    :cond_8
    return v4

    .line 318
    nop

    .line 319
    :array_0
    .array-data 8
        0x3a98d613743b5834L    # 2.0062550331020317E-26
        -0x1910f0228cd8c1b5L    # -6.757660216990323E187
        0x7049713da057c633L    # 7.899940679340594E232
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
    :array_1
    .array-data 8
        -0xce3c3139a3e7c5aL
        -0x444d8d60e6b78b3dL    # -3.906460928300698E-21
        0x6fad464452ab9602L    # 8.876789039413955E229
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
    :array_2
    .array-data 8
        0x4d97241876cf268L
        0x626ed6526aac237bL    # 1.420634955011774E166
        0x3e42246266e1b0f7L    # 8.448085977486212E-9
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
    .line 364
    .line 365
    .line 366
    .line 367
    :array_3
    .array-data 8
        -0x406e0dbbef8b4bb3L    # -0.017525733475100492
        0x19c5324c4843ee9fL    # 1.558893119142434E-184
        0x5e95b26b8298ceb9L    # 4.334875615665189E147
        0x75924bca8b7e6d21L    # 2.1977275743183947E258
        -0x6199ec47395da155L
    .end array-data
.end method

.method private static final zzy(Ljava/io/File;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const/4 v0, 0x1

    .line 12
    new-array v0, v0, [Ljava/lang/Object;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    aput-object p0, v0, v1

    .line 16
    .line 17
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 18
    .line 19
    const/4 v1, 0x6

    .line 20
    new-array v1, v1, [J

    .line 21
    .line 22
    fill-array-data v1, :array_0

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    nop

    .line 41
    :array_0
    .array-data 8
        0x3d6b395a9191dc22L    # 7.737537037442556E-13
        0x32ffb8a879241537L    # 4.819391194632475E-63
        0x43b56df50f459d22L    # 1.54415969319918848E18
        0x69b3ca7aa9a622a2L    # 1.5148980808900317E201
        -0x4be07fd1403552fcL    # -1.2545882902610257E-57
        0x524938488ccd98f9L    # 2.5084841835260587E88
    .end array-data
.end method

.method private static final zzz(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzawj;->zzy(Ljava/io/File;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawj;->zzo:Lcom/google/android/gms/internal/ads/zzavd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzavd;->zzd()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/high16 v0, -0x80000000

    .line 11
    .line 12
    return v0
.end method

.method public final zzb()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawj;->zza:Landroid/content/Context;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzatd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawj;->zzm:Lcom/google/android/gms/internal/ads/zzatd;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzavd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawj;->zzo:Lcom/google/android/gms/internal/ads/zzavd;

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzavo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawj;->zzg:Lcom/google/android/gms/internal/ads/zzavo;

    return-object v0
.end method

.method public final zzf()Lcom/google/android/gms/internal/ads/zzawc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawj;->zzr:Lcom/google/android/gms/internal/ads/zzawc;

    return-object v0
.end method

.method public final zzh()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzawj;->zzj:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawj;->zzi:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawj;->zzk:Ljava/util/concurrent/Future;

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 17
    .line 18
    const-wide/16 v3, 0x7d0

    .line 19
    .line 20
    invoke-interface {v0, v3, v4, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzawj;->zzk:Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawj;->zzk:Ljava/util/concurrent/Future;

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 30
    .line 31
    .line 32
    :catch_1
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawj;->zzi:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    .line 33
    .line 34
    return-object v0
.end method

.method public final zzi()Ldalvik/system/DexClassLoader;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawj;->zzf:Ldalvik/system/DexClassLoader;

    return-object v0
.end method

.method public final zzj(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 1

    .line 1
    new-instance v0, Landroid/util/Pair;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzawj;->zzp:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/google/android/gms/internal/ads/zzaxw;

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    return-object p1

    .line 18
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaxw;->zza()Ljava/lang/reflect/Method;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method public final zzk()Ljava/util/concurrent/ExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawj;->zze:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public final zzl()Ljava/util/concurrent/Future;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawj;->zzn:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public final zzo(IZ)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzawj;->zzc:Z

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzawj;->zze:Ljava/util/concurrent/ExecutorService;

    .line 7
    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/zzawh;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzawh;-><init>(Lcom/google/android/gms/internal/ads/zzawj;IZ)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzawj;->zzn:Ljava/util/concurrent/Future;

    .line 21
    .line 22
    :cond_1
    :goto_0
    return-void
.end method

.method public final zzp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzawj;->zzc:Z

    return v0
.end method

.method public final zzq()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzawj;->zzb:Z

    return v0
.end method

.method public final zzr()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzawj;->zzq:Z

    return v0
.end method

.method public final zzs()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawj;->zzr:Lcom/google/android/gms/internal/ads/zzawc;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzawc;->zza()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final varargs zzt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z
    .locals 3

    .line 1
    new-instance v0, Landroid/util/Pair;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzawj;->zzp:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzawj;->zzp:Ljava/util/Map;

    .line 15
    .line 16
    new-instance v2, Lcom/google/android/gms/internal/ads/zzaxw;

    .line 17
    .line 18
    invoke-direct {v2, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzaxw;-><init>(Lcom/google/android/gms/internal/ads/zzawj;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    const/4 p1, 0x1

    .line 25
    return p1

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    return p1
.end method

.method public final zzu()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawj;->zzh:[B

    return-object v0
.end method
