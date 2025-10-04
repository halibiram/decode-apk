.class public Lcom/google/android/gms/security/ProviderInstaller;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/security/ProviderInstaller$ProviderInstallListener;
    }
.end annotation


# static fields
.field public static final PROVIDER_NAME:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private static final zza:Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

.field private static final zzb:Ljava/lang/Object;

.field private static zzc:Ljava/lang/reflect/Method;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "ProviderInstaller.lock"
    .end annotation
.end field

.field private static zzd:Ljava/lang/reflect/Method;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "ProviderInstaller.lock"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lcom/google/android/gms/security/ProviderInstaller;->PROVIDER_NAME:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lcom/google/android/gms/security/ProviderInstaller;->zza:Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    .line 23
    .line 24
    new-instance v0, Ljava/lang/Object;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/google/android/gms/security/ProviderInstaller;->zzb:Ljava/lang/Object;

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    sput-object v0, Lcom/google/android/gms/security/ProviderInstaller;->zzc:Ljava/lang/reflect/Method;

    .line 33
    .line 34
    sput-object v0, Lcom/google/android/gms/security/ProviderInstaller;->zzd:Ljava/lang/reflect/Method;

    .line 35
    .line 36
    return-void

    .line 37
    :array_0
    .array-data 8
        -0xdf1a0f0a92bef7eL    # -2.5314556520525607E241
        -0x1bab99fe464dc069L    # -2.0180640991214474E175
        0x379a0aabcb145d0cL    # 7.473596743234838E-41
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static installIfNeeded(Landroid/content/Context;)V
    .locals 17
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v3, 0x2

    .line 4
    const/4 v4, 0x1

    .line 5
    const/4 v5, 0x0

    .line 6
    const/4 v6, 0x3

    .line 7
    const/16 v7, 0x8

    .line 8
    .line 9
    const/16 v8, 0x9

    .line 10
    .line 11
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 12
    .line 13
    const/4 v9, 0x4

    .line 14
    new-array v10, v9, [J

    .line 15
    .line 16
    fill-array-data v10, :array_0

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    sget-object v0, Lcom/google/android/gms/security/ProviderInstaller;->zza:Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    .line 30
    .line 31
    const v10, 0xb5f608

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1, v10}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->verifyGooglePlayServicesIsAvailable(Landroid/content/Context;I)V

    .line 35
    .line 36
    .line 37
    sget-object v10, Lcom/google/android/gms/security/ProviderInstaller;->zzb:Ljava/lang/Object;

    .line 38
    .line 39
    monitor-enter v10

    .line 40
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 41
    .line 42
    .line 43
    move-result-wide v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    const/4 v13, 0x0

    .line 45
    :try_start_1
    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_HIGHEST_OR_LOCAL_VERSION_NO_FORCE_STAGING:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    .line 46
    .line 47
    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    .line 48
    .line 49
    new-array v15, v7, [J

    .line 50
    .line 51
    fill-array-data v15, :array_1

    .line 52
    .line 53
    .line 54
    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v14

    .line 61
    invoke-static {v1, v0, v14}, Lcom/google/android/gms/dynamite/DynamiteModule;->load(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->getModuleContext()Landroid/content/Context;

    .line 66
    .line 67
    .line 68
    move-result-object v0
    :try_end_1
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    goto :goto_0

    .line 70
    :catchall_0
    move-exception v0

    .line 71
    goto/16 :goto_4

    .line 72
    .line 73
    :catch_0
    move-exception v0

    .line 74
    :try_start_2
    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    .line 75
    .line 76
    new-array v15, v9, [J

    .line 77
    .line 78
    fill-array-data v15, :array_2

    .line 79
    .line 80
    .line 81
    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    .line 92
    .line 93
    const/4 v15, 0x7

    .line 94
    new-array v15, v15, [J

    .line 95
    .line 96
    fill-array-data v15, :array_3

    .line 97
    .line 98
    .line 99
    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v14

    .line 106
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v14, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-object v0, v13

    .line 114
    :goto_0
    if-eqz v0, :cond_0

    .line 115
    .line 116
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 117
    .line 118
    new-array v3, v8, [J

    .line 119
    .line 120
    fill-array-data v3, :array_4

    .line 121
    .line 122
    .line 123
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/security/ProviderInstaller;->zzc(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    monitor-exit v10

    .line 134
    return-void

    .line 135
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 136
    .line 137
    .line 138
    move-result-wide v14

    .line 139
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->getRemoteContext(Landroid/content/Context;)Landroid/content/Context;

    .line 140
    .line 141
    .line 142
    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 143
    if-eqz v7, :cond_2

    .line 144
    .line 145
    :try_start_3
    sget-object v0, Lcom/google/android/gms/security/ProviderInstaller;->zzd:Ljava/lang/reflect/Method;

    .line 146
    .line 147
    if-nez v0, :cond_1

    .line 148
    .line 149
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 150
    .line 151
    new-array v2, v8, [J

    .line 152
    .line 153
    fill-array-data v2, :array_5

    .line 154
    .line 155
    .line 156
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 164
    .line 165
    new-array v8, v9, [J

    .line 166
    .line 167
    fill-array-data v8, :array_6

    .line 168
    .line 169
    .line 170
    invoke-direct {v2, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    new-array v8, v6, [Ljava/lang/Class;

    .line 178
    .line 179
    const-class v16, Landroid/content/Context;

    .line 180
    .line 181
    aput-object v16, v8, v5

    .line 182
    .line 183
    sget-object v16, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 184
    .line 185
    aput-object v16, v8, v4

    .line 186
    .line 187
    aput-object v16, v8, v3

    .line 188
    .line 189
    invoke-static {v7, v0, v2, v8}, Lcom/google/android/gms/security/ProviderInstaller;->zzb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    sput-object v0, Lcom/google/android/gms/security/ProviderInstaller;->zzd:Ljava/lang/reflect/Method;

    .line 194
    .line 195
    goto :goto_1

    .line 196
    :catch_1
    move-exception v0

    .line 197
    goto :goto_2

    .line 198
    :cond_1
    :goto_1
    sget-object v0, Lcom/google/android/gms/security/ProviderInstaller;->zzd:Ljava/lang/reflect/Method;

    .line 199
    .line 200
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 205
    .line 206
    .line 207
    move-result-object v8

    .line 208
    new-array v6, v6, [Ljava/lang/Object;

    .line 209
    .line 210
    aput-object v1, v6, v5

    .line 211
    .line 212
    aput-object v2, v6, v4

    .line 213
    .line 214
    aput-object v8, v6, v3

    .line 215
    .line 216
    invoke-virtual {v0, v13, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 217
    .line 218
    .line 219
    goto :goto_3

    .line 220
    :goto_2
    :try_start_4
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 221
    .line 222
    new-array v3, v9, [J

    .line 223
    .line 224
    fill-array-data v3, :array_7

    .line 225
    .line 226
    .line 227
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 238
    .line 239
    const/4 v3, 0x5

    .line 240
    new-array v4, v3, [J

    .line 241
    .line 242
    fill-array-data v4, :array_8

    .line 243
    .line 244
    .line 245
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    :cond_2
    :goto_3
    if-eqz v7, :cond_3

    .line 260
    .line 261
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 262
    .line 263
    const/16 v2, 0x9

    .line 264
    .line 265
    new-array v2, v2, [J

    .line 266
    .line 267
    fill-array-data v2, :array_9

    .line 268
    .line 269
    .line 270
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    invoke-static {v7, v1, v0}, Lcom/google/android/gms/security/ProviderInstaller;->zzc(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    monitor-exit v10

    .line 281
    return-void

    .line 282
    :cond_3
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 283
    .line 284
    new-array v1, v9, [J

    .line 285
    .line 286
    fill-array-data v1, :array_a

    .line 287
    .line 288
    .line 289
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 296
    .line 297
    const/4 v1, 0x5

    .line 298
    new-array v1, v1, [J

    .line 299
    .line 300
    fill-array-data v1, :array_b

    .line 301
    .line 302
    .line 303
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    new-instance v0, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;

    .line 310
    .line 311
    const/16 v1, 0x8

    .line 312
    .line 313
    invoke-direct {v0, v1}, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;-><init>(I)V

    .line 314
    .line 315
    .line 316
    throw v0

    .line 317
    :goto_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 318
    throw v0

    .line 319
    :array_0
    .array-data 8
        0x7d1410d03e754711L    # 3.203831047539972E294
        -0x1e7a8955cef6e144L    # -6.035161941737906E161
        0x1c1f5485762b358L    # 3.35193482739338E-300
        -0x52b7f890ca0b5256L    # -1.474510082956379E-90
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
    .line 336
    .line 337
    .line 338
    .line 339
    :array_1
    .array-data 8
        -0xbcec0d8883346d9L    # -4.939264691795119E251
        -0x46318c05b7e46972L    # -3.002901365303322E-30
        -0x5b9979bd8c3e26dL    # -1.016868441492281E281
        -0x1e6b2147dc97b9bfL    # -1.173653980243193E162
        -0x4a98b145c4607826L    # -1.946735671709038E-51
        0x5cc422fff0d7a3bL
        -0x350d9b0be367a561L    # -1.1011429343991587E53
        -0x66a45962ae1bf541L
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
    :array_2
    .array-data 8
        0x3c439bce6ee3128cL    # 2.125970696137492E-18
        0x313b4e50669900faL    # 1.5454599813848475E-71
        -0x1cea27450dbe2feaL    # -2.0612064306460964E169
        -0x1c81d7048f85bb59L    # -1.8211685405618766E171
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
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    :array_3
    .array-data 8
        0x7ac3d56326db635L
        0x4bf2263b328cc21dL    # 7.120328657253315E57
        -0x7e703331877a03dcL    # -3.709725857663134E-301
        0x79e6ca328123c8c2L    # 1.615947113789798E279
        0x406019a0b5b3258aL    # 128.80086789121225
        -0x1b2b5b563614d7efL    # -5.228231520509464E177
        -0x4973b8b9aa7a4cf6L    # -6.191640978664114E-46
    .end array-data

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
    .line 424
    .line 425
    .line 426
    .line 427
    :array_4
    .array-data 8
        0x2746a3b40353af77L
        0x5c5c5971f152dd5eL    # 8.242175202831868E136
        -0x579c0619dada4a83L    # -4.055868198399292E-114
        -0x63da1ecc8af1cc07L
        -0xcbc65e0cd37cfe2L
        0xfeaaa8be9bb6a4fL    # 5.367529518545083E-232
        0x25a941d972c644baL    # 2.914992642866864E-127
        0x58e916e572dd71bfL    # 2.024599993432311E120
        -0x2e56ccee3c047078L    # -2.4477132497215103E85
    .end array-data

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
    :array_5
    .array-data 8
        -0x52616b5b18b3751L    # -6.020394760092283E283
        0x6605cec2bbd7aa4fL    # 2.8957190442252877E183
        0x39374528fb0ddbfdL    # 4.481669134018203E-33
        0xce4efde0e593b29L
        -0x1e5f5fe4a6f13fdeL
        -0x1b2eea1881127844L    # -4.327198006819144E177
        -0xe716f88e8cb17fdL    # -9.951333402417627E238
        -0x2b61b20380228c5eL    # -4.1427395543320386E99
        0x152c7a82e4aa45a3L
    .end array-data

    .line 468
    .line 469
    .line 470
    .line 471
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
    :array_6
    .array-data 8
        -0x3825c02dfbb302e9L    # -1.39565208957007E38
        0x6f717b20d59ff3d9L    # 6.625859821779346E228
        -0x16290dc51d6d5b1fL    # -7.025675636377668E201
        0x24849117b2f8e7adL    # 9.054781340511347E-133
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
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    :array_7
    .array-data 8
        0x20d5b84a2e2de911L    # 1.658821425901669E-150
        -0x7ab05ffacaaa51d8L    # -4.253492921652677E-283
        0x476efe1d7670cecL
        -0x44062419ee4a632cL    # -8.761362988951104E-20
    .end array-data

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
    :array_8
    .array-data 8
        -0x69d97d293cbcf42aL    # -5.743933895711362E-202
        -0x78519e789e17dc07L
        0x4f633371b2db5ea0L    # 2.7140118883424286E74
        0x3c7983b210077eceL
        0x21048c463d79aed6L
    .end array-data

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
    :array_9
    .array-data 8
        0x59ff7568e3d33278L    # 3.327346605441355E125
        0x7eda49730f4c12e7L    # 1.1266660952532787E303
        -0x18ded130e1d8f1c3L    # -5.98111900580258E188
        -0x28f672cc1d2c3f43L    # -1.9202866295250398E111
        0x1e78268259d9edf8L    # 6.710071475314948E-162
        -0x35e6e8da75c59777L    # -9.167421222486163E48
        -0x558c31d9202a8c8fL    # -3.454160475604807E-104
        0x8a9d1a6bf9f65c6L    # 6.255649994351538E-267
        -0x12e23a578217cad5L    # -4.1053140762216756E217
    .end array-data

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
    :array_a
    .array-data 8
        -0x1e6599ffe2748f8dL    # -1.4845537818215692E162
        -0x9df303655f5a569L
        -0x36955d38f6b10c35L    # -4.7519943523740356E45
        -0x1535a1dfc78eab2aL    # -2.6454463141200596E206
    .end array-data

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
    :array_b
    .array-data 8
        0x2352bc90f4e9412L
        0x7c33807e8dd642a1L    # 1.9005244202360817E290
        0x7c3307b3ee307eb0L    # 1.854541956053994E290
        -0x5d842117c564d0c4L
        0x70d1c84ebcdcf877L    # 2.8270159452367025E235
    .end array-data
.end method

.method public static installIfNeededAsync(Landroid/content/Context;Lcom/google/android/gms/security/ProviderInstaller$ProviderInstallListener;)V
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/gms/security/ProviderInstaller$ProviderInstallListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 20
    .line 21
    const/4 v1, 0x5

    .line 22
    new-array v2, v1, [J

    .line 23
    .line 24
    fill-array-data v2, :array_1

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 38
    .line 39
    new-array v1, v1, [J

    .line 40
    .line 41
    fill-array-data v1, :array_2

    .line 42
    .line 43
    .line 44
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    new-instance v0, Lcom/google/android/gms/security/zza;

    .line 55
    .line 56
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/security/zza;-><init>(Landroid/content/Context;Lcom/google/android/gms/security/ProviderInstaller$ProviderInstallListener;)V

    .line 57
    .line 58
    .line 59
    const/4 p0, 0x0

    .line 60
    new-array p0, p0, [Ljava/lang/Void;

    .line 61
    .line 62
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    nop

    .line 67
    :array_0
    .array-data 8
        -0x68d719f0f6534fb2L
        -0x4739b1969abddab3L    # -3.35627834789162E-35
        0x726d953c3d78c768L    # 1.5780763240806296E243
        0x67d62ccbc4f3be07L    # 1.580813264754366E192
    .end array-data

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
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    :array_1
    .array-data 8
        0x6176d70be8ad222eL    # 3.2111033010441367E161
        0x458b5672a74f72beL    # 1.0575755402216662E27
        -0x39eff3256cdcc4a5L    # -3.179071652531369E29
        -0x21e3d6a9c54a50aL
        -0x7d6fdf4747ee93bL    # -6.605791822360859E270
    .end array-data

    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    :array_2
    .array-data 8
        -0x236521789fc90dfcL    # -1.2498952766623146E138
        -0x767492230c1a517fL
        -0x6ff916a27786c044L
        -0x6b7c0d8811456857L    # -7.584268885287427E-210
        0x3535bcf50b00fb1L
    .end array-data
.end method

.method public static bridge synthetic zza()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;
    .locals 1

    sget-object v0, Lcom/google/android/gms/security/ProviderInstaller;->zza:Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    return-object v0
.end method

.method private static zzb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0, p2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method private static zzc(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .annotation build Landroidx/annotation/GuardedBy;
        value = "ProviderInstaller.lock"
    .end annotation

    .line 1
    const/4 p1, 0x4

    .line 2
    const/4 v0, 0x0

    .line 3
    const/4 v1, 0x1

    .line 4
    :try_start_0
    sget-object v2, Lcom/google/android/gms/security/ProviderInstaller;->zzc:Ljava/lang/reflect/Method;

    .line 5
    .line 6
    if-nez v2, :cond_0

    .line 7
    .line 8
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    const/4 v3, 0x3

    .line 11
    new-array v3, v3, [J

    .line 12
    .line 13
    fill-array-data v3, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    new-array v3, v1, [Ljava/lang/Class;

    .line 24
    .line 25
    const-class v4, Landroid/content/Context;

    .line 26
    .line 27
    aput-object v4, v3, v0

    .line 28
    .line 29
    invoke-static {p0, p2, v2, v3}, Lcom/google/android/gms/security/ProviderInstaller;->zzb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    sput-object p2, Lcom/google/android/gms/security/ProviderInstaller;->zzc:Ljava/lang/reflect/Method;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception p0

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    :goto_0
    sget-object p2, Lcom/google/android/gms/security/ProviderInstaller;->zzc:Ljava/lang/reflect/Method;

    .line 39
    .line 40
    new-array v1, v1, [Ljava/lang/Object;

    .line 41
    .line 42
    aput-object p0, v1, v0

    .line 43
    .line 44
    const/4 p0, 0x0

    .line 45
    invoke-virtual {p2, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :goto_1
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 50
    .line 51
    new-array v0, p1, [J

    .line 52
    .line 53
    fill-array-data v0, :array_1

    .line 54
    .line 55
    .line 56
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const/4 v1, 0x6

    .line 68
    invoke-static {p2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 69
    .line 70
    .line 71
    move-result p2

    .line 72
    if-eqz p2, :cond_2

    .line 73
    .line 74
    if-nez v0, :cond_1

    .line 75
    .line 76
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    goto :goto_2

    .line 81
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    :goto_2
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 86
    .line 87
    const/4 v0, 0x5

    .line 88
    new-array v0, v0, [J

    .line 89
    .line 90
    fill-array-data v0, :array_2

    .line 91
    .line 92
    .line 93
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 105
    .line 106
    new-array p1, p1, [J

    .line 107
    .line 108
    fill-array-data p1, :array_3

    .line 109
    .line 110
    .line 111
    invoke-direct {v0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    :cond_2
    new-instance p0, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;

    .line 121
    .line 122
    const/16 p1, 0x8

    .line 123
    .line 124
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;-><init>(I)V

    .line 125
    .line 126
    .line 127
    throw p0

    .line 128
    nop

    .line 129
    :array_0
    .array-data 8
        -0x57de3bcc51a12a0L    # -1.314964466917643E282
        0x706bd9b17b76d158L    # 3.4590555704791406E233
        0x3899f0ce154592dbL    # 4.878892985383823E-36
    .end array-data

    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    :array_1
    .array-data 8
        -0x5e2b6b0163116167L
        -0x5a2f7314dcb26c5L    # -2.63517148285945E281
        0x6270ae510a7b9888L    # 1.5369428885412E166
        -0x35d102b2648ed3c8L    # -2.2645577241620405E49
    .end array-data

    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    :array_2
    .array-data 8
        -0x7d8ab81ccfaf7fb1L    # -8.134904256571153E-297
        -0x76516c88f948e89L    # -9.098838580005324E272
        -0x7534fe8b36a14b97L
        -0x63a518aca77b256bL
        -0x680e9552283a62a8L    # -2.385882440892217E-193
    .end array-data

    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
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
    :array_3
    .array-data 8
        -0x60a1e40730f4e6bcL    # -1.370636960162249E-157
        -0x78524d4485d8f203L
        0x6078b52a6eb9cba1L    # 5.300412970526097E156
        0x3de56133b29ec546L    # 1.5555775531418926E-10
    .end array-data
.end method
