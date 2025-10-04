.class public final Lcom/google/android/gms/internal/ads/zzcep;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzgey;

.field public static final zzb:Lcom/google/android/gms/internal/ads/zzgey;

.field public static final zzc:Lcom/google/android/gms/internal/ads/zzgey;

.field public static final zzd:Ljava/util/concurrent/ScheduledExecutorService;

.field public static final zze:Lcom/google/android/gms/internal/ads/zzgey;

.field public static final zzf:Lcom/google/android/gms/internal/ads/zzgey;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x2

    .line 3
    invoke-static {}, Lcom/google/android/gms/common/util/ClientLibraryUtils;->isPackageSide()Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfts;->zza()Lcom/google/android/gms/internal/ads/zzftp;

    .line 10
    .line 11
    .line 12
    new-instance v2, Lcom/google/android/gms/internal/ads/zzcel;

    .line 13
    .line 14
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 15
    .line 16
    new-array v4, v1, [J

    .line 17
    .line 18
    fill-array-data v4, :array_0

    .line 19
    .line 20
    .line 21
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzcel;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v2}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-static {v2}, Ljava/util/concurrent/Executors;->unconfigurableExecutorService(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 41
    .line 42
    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 43
    .line 44
    new-instance v9, Ljava/util/concurrent/SynchronousQueue;

    .line 45
    .line 46
    invoke-direct {v9}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    .line 47
    .line 48
    .line 49
    new-instance v10, Lcom/google/android/gms/internal/ads/zzcel;

    .line 50
    .line 51
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 52
    .line 53
    new-array v4, v1, [J

    .line 54
    .line 55
    fill-array-data v4, :array_1

    .line 56
    .line 57
    .line 58
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-direct {v10, v3}, Lcom/google/android/gms/internal/ads/zzcel;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const/4 v4, 0x2

    .line 69
    const v5, 0x7fffffff

    .line 70
    .line 71
    .line 72
    const-wide/16 v6, 0xa

    .line 73
    .line 74
    move-object v3, v2

    .line 75
    invoke-direct/range {v3 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 76
    .line 77
    .line 78
    :goto_0
    new-instance v3, Lcom/google/android/gms/internal/ads/zzceo;

    .line 79
    .line 80
    const/4 v4, 0x0

    .line 81
    invoke-direct {v3, v2, v4}, Lcom/google/android/gms/internal/ads/zzceo;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzcen;)V

    .line 82
    .line 83
    .line 84
    sput-object v3, Lcom/google/android/gms/internal/ads/zzcep;->zza:Lcom/google/android/gms/internal/ads/zzgey;

    .line 85
    .line 86
    invoke-static {}, Lcom/google/android/gms/common/util/ClientLibraryUtils;->isPackageSide()Z

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    const/4 v3, 0x1

    .line 91
    if-eqz v2, :cond_1

    .line 92
    .line 93
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfts;->zza()Lcom/google/android/gms/internal/ads/zzftp;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    new-instance v5, Lcom/google/android/gms/internal/ads/zzcel;

    .line 98
    .line 99
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 100
    .line 101
    new-array v7, v1, [J

    .line 102
    .line 103
    fill-array-data v7, :array_2

    .line 104
    .line 105
    .line 106
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    invoke-direct {v5, v6}, Lcom/google/android/gms/internal/ads/zzcel;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    const/4 v6, 0x5

    .line 117
    invoke-interface {v2, v6, v5, v3}, Lcom/google/android/gms/internal/ads/zzftp;->zzc(ILjava/util/concurrent/ThreadFactory;I)Ljava/util/concurrent/ExecutorService;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    goto :goto_1

    .line 122
    :cond_1
    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 123
    .line 124
    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 125
    .line 126
    new-instance v11, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 127
    .line 128
    invoke-direct {v11}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 129
    .line 130
    .line 131
    new-instance v12, Lcom/google/android/gms/internal/ads/zzcel;

    .line 132
    .line 133
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 134
    .line 135
    new-array v6, v1, [J

    .line 136
    .line 137
    fill-array-data v6, :array_3

    .line 138
    .line 139
    .line 140
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    invoke-direct {v12, v5}, Lcom/google/android/gms/internal/ads/zzcel;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    const/4 v6, 0x5

    .line 151
    const/4 v7, 0x5

    .line 152
    const-wide/16 v8, 0xa

    .line 153
    .line 154
    move-object v5, v2

    .line 155
    invoke-direct/range {v5 .. v12}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 159
    .line 160
    .line 161
    :goto_1
    new-instance v5, Lcom/google/android/gms/internal/ads/zzceo;

    .line 162
    .line 163
    invoke-direct {v5, v2, v4}, Lcom/google/android/gms/internal/ads/zzceo;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzcen;)V

    .line 164
    .line 165
    .line 166
    sput-object v5, Lcom/google/android/gms/internal/ads/zzcep;->zzb:Lcom/google/android/gms/internal/ads/zzgey;

    .line 167
    .line 168
    invoke-static {}, Lcom/google/android/gms/common/util/ClientLibraryUtils;->isPackageSide()Z

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    if-eqz v2, :cond_2

    .line 173
    .line 174
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfts;->zza()Lcom/google/android/gms/internal/ads/zzftp;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    new-instance v5, Lcom/google/android/gms/internal/ads/zzcel;

    .line 179
    .line 180
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 181
    .line 182
    new-array v7, v0, [J

    .line 183
    .line 184
    fill-array-data v7, :array_4

    .line 185
    .line 186
    .line 187
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v6

    .line 194
    invoke-direct {v5, v6}, Lcom/google/android/gms/internal/ads/zzcel;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    invoke-interface {v2, v5, v3}, Lcom/google/android/gms/internal/ads/zzftp;->zzb(Ljava/util/concurrent/ThreadFactory;I)Ljava/util/concurrent/ExecutorService;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    goto :goto_2

    .line 202
    :cond_2
    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 203
    .line 204
    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 205
    .line 206
    new-instance v11, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 207
    .line 208
    invoke-direct {v11}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 209
    .line 210
    .line 211
    new-instance v12, Lcom/google/android/gms/internal/ads/zzcel;

    .line 212
    .line 213
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 214
    .line 215
    new-array v6, v0, [J

    .line 216
    .line 217
    fill-array-data v6, :array_5

    .line 218
    .line 219
    .line 220
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v5

    .line 227
    invoke-direct {v12, v5}, Lcom/google/android/gms/internal/ads/zzcel;-><init>(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    const/4 v6, 0x1

    .line 231
    const/4 v7, 0x1

    .line 232
    const-wide/16 v8, 0xa

    .line 233
    .line 234
    move-object v5, v2

    .line 235
    invoke-direct/range {v5 .. v12}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 239
    .line 240
    .line 241
    :goto_2
    new-instance v3, Lcom/google/android/gms/internal/ads/zzceo;

    .line 242
    .line 243
    invoke-direct {v3, v2, v4}, Lcom/google/android/gms/internal/ads/zzceo;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzcen;)V

    .line 244
    .line 245
    .line 246
    sput-object v3, Lcom/google/android/gms/internal/ads/zzcep;->zzc:Lcom/google/android/gms/internal/ads/zzgey;

    .line 247
    .line 248
    new-instance v2, Lcom/google/android/gms/internal/ads/zzcek;

    .line 249
    .line 250
    new-instance v3, Lcom/google/android/gms/internal/ads/zzcel;

    .line 251
    .line 252
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 253
    .line 254
    new-array v1, v1, [J

    .line 255
    .line 256
    fill-array-data v1, :array_6

    .line 257
    .line 258
    .line 259
    invoke-direct {v5, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/zzcel;-><init>(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzcek;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    .line 270
    .line 271
    .line 272
    sput-object v2, Lcom/google/android/gms/internal/ads/zzcep;->zzd:Ljava/util/concurrent/ScheduledExecutorService;

    .line 273
    .line 274
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcem;

    .line 275
    .line 276
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcem;-><init>()V

    .line 277
    .line 278
    .line 279
    new-instance v1, Lcom/google/android/gms/internal/ads/zzceo;

    .line 280
    .line 281
    invoke-direct {v1, v0, v4}, Lcom/google/android/gms/internal/ads/zzceo;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzcen;)V

    .line 282
    .line 283
    .line 284
    sput-object v1, Lcom/google/android/gms/internal/ads/zzcep;->zze:Lcom/google/android/gms/internal/ads/zzgey;

    .line 285
    .line 286
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgfe;->zzb()Ljava/util/concurrent/Executor;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    new-instance v1, Lcom/google/android/gms/internal/ads/zzceo;

    .line 291
    .line 292
    invoke-direct {v1, v0, v4}, Lcom/google/android/gms/internal/ads/zzceo;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzcen;)V

    .line 293
    .line 294
    .line 295
    sput-object v1, Lcom/google/android/gms/internal/ads/zzcep;->zzf:Lcom/google/android/gms/internal/ads/zzgey;

    .line 296
    .line 297
    return-void

    .line 298
    nop

    .line 299
    :array_0
    .array-data 8
        -0x6a8f5d99d453b637L
        -0x6e863e0d298c7aaaL    # -1.739677852203217E-224
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
    :array_1
    .array-data 8
        -0x2f1e4cfa6784577eL    # -4.197251898501874E81
        0x4b5169dfdc5b73b6L    # 6.671555396256014E54
    .end array-data

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
    :array_2
    .array-data 8
        0x29db320014b61c3dL    # 4.63186214871586E-107
        -0x2b3a8afac938aff7L    # -2.3466040584369753E100
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
    :array_3
    .array-data 8
        0x1f2dd1f9a0a8accdL    # 1.696848496401383E-158
        0x56bedbfbebb2ea56L    # 7.247441007979098E109
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
    :array_4
    .array-data 8
        -0x572896b9ca3fc715L    # -6.084232592422246E-112
        -0x70a15306d2dee839L
        -0x20aa6b5de8d6c9c2L    # -1.7660431950543588E151
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
    :array_5
    .array-data 8
        0x160287e431a12934L
        -0x6cf3baff66d68630L
        -0x4b6b1873ef83b2b8L    # -2.1313766098375692E-55
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
    :array_6
    .array-data 8
        0x94cab31030c2148L
        -0x5aee9d27ef1c93acL
    .end array-data
.end method
