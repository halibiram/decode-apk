.class public final Lcom/google/android/gms/internal/ads/zzbpc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzapt;


# instance fields
.field private volatile zza:Lcom/google/android/gms/internal/ads/zzbop;

.field private final zzb:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbpc;->zzb:Landroid/content/Context;

    return-void
.end method

.method public static bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzbpc;)Lcom/google/android/gms/internal/ads/zzbop;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbpc;->zza:Lcom/google/android/gms/internal/ads/zzbop;

    return-object p0
.end method

.method public static bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzbpc;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbpc;->zza:Lcom/google/android/gms/internal/ads/zzbop;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbpc;->zza:Lcom/google/android/gms/internal/ads/zzbop;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->disconnect()V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzaqa;)Lcom/google/android/gms/internal/ads/zzapw;
    .locals 13
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x5

    .line 3
    sget-object v2, Lcom/google/android/gms/internal/ads/zzboq;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaqa;->zzl()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-interface {v2}, Ljava/util/Map;->size()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    new-array v4, v3, [Ljava/lang/String;

    .line 14
    .line 15
    new-array v3, v3, [Ljava/lang/String;

    .line 16
    .line 17
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const/4 v5, 0x0

    .line 26
    const/4 v6, 0x0

    .line 27
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v7

    .line 31
    if-eqz v7, :cond_0

    .line 32
    .line 33
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    check-cast v7, Ljava/util/Map$Entry;

    .line 38
    .line 39
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v8

    .line 43
    check-cast v8, Ljava/lang/String;

    .line 44
    .line 45
    aput-object v8, v4, v6

    .line 46
    .line 47
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    check-cast v7, Ljava/lang/String;

    .line 52
    .line 53
    aput-object v7, v3, v6

    .line 54
    .line 55
    add-int/lit8 v6, v6, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    new-instance v2, Lcom/google/android/gms/internal/ads/zzboq;

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaqa;->zzk()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-direct {v2, p1, v4, v3}, Lcom/google/android/gms/internal/ads/zzboq;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzB()Lcom/google/android/gms/common/util/Clock;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 72
    .line 73
    .line 74
    move-result-wide v3

    .line 75
    const/4 p1, 0x0

    .line 76
    :try_start_0
    new-instance v6, Lcom/google/android/gms/internal/ads/zzceu;

    .line 77
    .line 78
    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzceu;-><init>()V

    .line 79
    .line 80
    .line 81
    new-instance v7, Lcom/google/android/gms/internal/ads/zzbpa;

    .line 82
    .line 83
    invoke-direct {v7, p0, v6}, Lcom/google/android/gms/internal/ads/zzbpa;-><init>(Lcom/google/android/gms/internal/ads/zzbpc;Lcom/google/android/gms/internal/ads/zzceu;)V

    .line 84
    .line 85
    .line 86
    new-instance v8, Lcom/google/android/gms/internal/ads/zzbpb;

    .line 87
    .line 88
    invoke-direct {v8, p0, v6}, Lcom/google/android/gms/internal/ads/zzbpb;-><init>(Lcom/google/android/gms/internal/ads/zzbpc;Lcom/google/android/gms/internal/ads/zzceu;)V

    .line 89
    .line 90
    .line 91
    new-instance v9, Lcom/google/android/gms/internal/ads/zzbop;

    .line 92
    .line 93
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzbpc;->zzb:Landroid/content/Context;

    .line 94
    .line 95
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzt()Lcom/google/android/gms/ads/internal/util/zzbx;

    .line 96
    .line 97
    .line 98
    move-result-object v11

    .line 99
    invoke-virtual {v11}, Lcom/google/android/gms/ads/internal/util/zzbx;->zzb()Landroid/os/Looper;

    .line 100
    .line 101
    .line 102
    move-result-object v11

    .line 103
    invoke-direct {v9, v10, v11, v7, v8}, Lcom/google/android/gms/internal/ads/zzbop;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;)V

    .line 104
    .line 105
    .line 106
    iput-object v9, p0, Lcom/google/android/gms/internal/ads/zzbpc;->zza:Lcom/google/android/gms/internal/ads/zzbop;

    .line 107
    .line 108
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzbpc;->zza:Lcom/google/android/gms/internal/ads/zzbop;

    .line 109
    .line 110
    invoke-virtual {v7}, Lcom/google/android/gms/common/internal/BaseGmsClient;->checkAvailabilityAndConnect()V

    .line 111
    .line 112
    .line 113
    new-instance v7, Lcom/google/android/gms/internal/ads/zzboy;

    .line 114
    .line 115
    invoke-direct {v7, p0, v2}, Lcom/google/android/gms/internal/ads/zzboy;-><init>(Lcom/google/android/gms/internal/ads/zzbpc;Lcom/google/android/gms/internal/ads/zzboq;)V

    .line 116
    .line 117
    .line 118
    sget-object v2, Lcom/google/android/gms/internal/ads/zzcep;->zza:Lcom/google/android/gms/internal/ads/zzgey;

    .line 119
    .line 120
    invoke-static {v6, v7, v2}, Lcom/google/android/gms/internal/ads/zzgen;->zzn(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgdu;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    sget-object v7, Lcom/google/android/gms/internal/ads/zzbgc;->zzet:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 125
    .line 126
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 127
    .line 128
    .line 129
    move-result-object v8

    .line 130
    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v7

    .line 134
    check-cast v7, Ljava/lang/Integer;

    .line 135
    .line 136
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 137
    .line 138
    .line 139
    move-result v7

    .line 140
    int-to-long v7, v7

    .line 141
    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 142
    .line 143
    sget-object v10, Lcom/google/android/gms/internal/ads/zzcep;->zzd:Ljava/util/concurrent/ScheduledExecutorService;

    .line 144
    .line 145
    invoke-static {v6, v7, v8, v9, v10}, Lcom/google/android/gms/internal/ads/zzgen;->zzo(Lcom/google/common/util/concurrent/ListenableFuture;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 146
    .line 147
    .line 148
    move-result-object v6

    .line 149
    new-instance v7, Lcom/google/android/gms/internal/ads/zzboz;

    .line 150
    .line 151
    invoke-direct {v7, p0}, Lcom/google/android/gms/internal/ads/zzboz;-><init>(Lcom/google/android/gms/internal/ads/zzbpc;)V

    .line 152
    .line 153
    .line 154
    invoke-interface {v6, v7, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 155
    .line 156
    .line 157
    invoke-interface {v6}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    check-cast v2, Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    .line 163
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzB()Lcom/google/android/gms/common/util/Clock;

    .line 164
    .line 165
    .line 166
    move-result-object v6

    .line 167
    invoke-interface {v6}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 168
    .line 169
    .line 170
    move-result-wide v6

    .line 171
    sub-long/2addr v6, v3

    .line 172
    new-instance v3, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .line 176
    .line 177
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 178
    .line 179
    new-array v1, v1, [J

    .line 180
    .line 181
    fill-array-data v1, :array_0

    .line 182
    .line 183
    .line 184
    invoke-direct {v4, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 198
    .line 199
    new-array v0, v0, [J

    .line 200
    .line 201
    fill-array-data v0, :array_1

    .line 202
    .line 203
    .line 204
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbzc;

    .line 222
    .line 223
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzbzc;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 224
    .line 225
    .line 226
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbos;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 227
    .line 228
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbzc;->zza(Landroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbos;

    .line 233
    .line 234
    if-nez v0, :cond_1

    .line 235
    .line 236
    return-object p1

    .line 237
    :cond_1
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzbos;->zza:Z

    .line 238
    .line 239
    if-nez v1, :cond_4

    .line 240
    .line 241
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbos;->zze:[Ljava/lang/String;

    .line 242
    .line 243
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzbos;->zzf:[Ljava/lang/String;

    .line 244
    .line 245
    array-length v1, v1

    .line 246
    array-length v2, v2

    .line 247
    if-eq v1, v2, :cond_2

    .line 248
    .line 249
    goto :goto_2

    .line 250
    :cond_2
    new-instance v9, Ljava/util/HashMap;

    .line 251
    .line 252
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 253
    .line 254
    .line 255
    :goto_1
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzbos;->zze:[Ljava/lang/String;

    .line 256
    .line 257
    array-length v1, p1

    .line 258
    if-ge v5, v1, :cond_3

    .line 259
    .line 260
    aget-object p1, p1, v5

    .line 261
    .line 262
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbos;->zzf:[Ljava/lang/String;

    .line 263
    .line 264
    aget-object v1, v1, v5

    .line 265
    .line 266
    invoke-virtual {v9, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    add-int/lit8 v5, v5, 0x1

    .line 270
    .line 271
    goto :goto_1

    .line 272
    :cond_3
    iget v7, v0, Lcom/google/android/gms/internal/ads/zzbos;->zzc:I

    .line 273
    .line 274
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzbos;->zzd:[B

    .line 275
    .line 276
    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzbos;->zzg:Z

    .line 277
    .line 278
    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzbos;->zzh:J

    .line 279
    .line 280
    new-instance p1, Lcom/google/android/gms/internal/ads/zzapw;

    .line 281
    .line 282
    move-object v6, p1

    .line 283
    invoke-direct/range {v6 .. v12}, Lcom/google/android/gms/internal/ads/zzapw;-><init>(I[BLjava/util/Map;ZJ)V

    .line 284
    .line 285
    .line 286
    :goto_2
    return-object p1

    .line 287
    :cond_4
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzbos;->zzb:Ljava/lang/String;

    .line 288
    .line 289
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaqj;

    .line 290
    .line 291
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzaqj;-><init>(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    throw v0

    .line 295
    :catchall_0
    move-exception p1

    .line 296
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzB()Lcom/google/android/gms/common/util/Clock;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 301
    .line 302
    .line 303
    move-result-wide v5

    .line 304
    sub-long/2addr v5, v3

    .line 305
    new-instance v2, Ljava/lang/StringBuilder;

    .line 306
    .line 307
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 308
    .line 309
    .line 310
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 311
    .line 312
    new-array v1, v1, [J

    .line 313
    .line 314
    fill-array-data v1, :array_2

    .line 315
    .line 316
    .line 317
    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v1

    .line 324
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 331
    .line 332
    new-array v0, v0, [J

    .line 333
    .line 334
    fill-array-data v0, :array_3

    .line 335
    .line 336
    .line 337
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    throw p1

    .line 355
    :catch_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzB()Lcom/google/android/gms/common/util/Clock;

    .line 356
    .line 357
    .line 358
    move-result-object v2

    .line 359
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 360
    .line 361
    .line 362
    move-result-wide v5

    .line 363
    sub-long/2addr v5, v3

    .line 364
    new-instance v2, Ljava/lang/StringBuilder;

    .line 365
    .line 366
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 367
    .line 368
    .line 369
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 370
    .line 371
    new-array v1, v1, [J

    .line 372
    .line 373
    fill-array-data v1, :array_4

    .line 374
    .line 375
    .line 376
    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v1

    .line 383
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 390
    .line 391
    new-array v0, v0, [J

    .line 392
    .line 393
    fill-array-data v0, :array_5

    .line 394
    .line 395
    .line 396
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v0

    .line 403
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v0

    .line 410
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 411
    .line 412
    .line 413
    return-object p1

    .line 414
    nop

    .line 415
    :array_0
    .array-data 8
        -0x4b52d46be1beac98L
        0x3f1230144ceebe17L    # 6.938098816421826E-5
        -0x4432ca64f572aecdL    # -1.2370660810511429E-20
        -0x62e5d2faca9466cL    # -6.252531350655453E278
        0x1924b1a3ff4e3706L
    .end array-data

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
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    :array_1
    .array-data 8
        -0x58eab2499b42d444L
        0x47e5ce69acc32748L    # 2.3188435523992647E38
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
    :array_2
    .array-data 8
        -0x7c536b785a0e2a1fL    # -5.727952219636107E-291
        0x3af6f5ee1b318fe3L    # 1.1870385309280727E-24
        -0x4aec806c049ded7dL    # -5.089307278395167E-53
        0x2780a11673b6612fL
        0x5cb004b67af0d9beL    # 2.980556870014713E138
    .end array-data

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
    .line 472
    .line 473
    .line 474
    .line 475
    :array_3
    .array-data 8
        0x67daff9b90e64b9bL    # 1.9246703864212495E192
        -0x54f97a60c1b2b909L    # -2.011118560684045E-101
    .end array-data

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
    :array_4
    .array-data 8
        0x79e9e022994626dfL    # 1.834742906315178E279
        -0x2f9672350b6484cbL    # -2.367149547126485E79
        0x2886c9f1dbcd0450L    # 1.850776560419975E-113
        -0x19a0c09d37342079L    # -1.3277430494259344E185
        0x1b8b603fd3d68326L    # 5.404582166611105E-176
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
    :array_5
    .array-data 8
        -0x20c2f33a3c4bbcd0L    # -5.943227859303784E150
        0x301a3b0aac5509b2L    # 5.663303897196552E-77
    .end array-data
.end method
