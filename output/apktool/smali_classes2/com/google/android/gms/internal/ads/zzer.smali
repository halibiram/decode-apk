.class public final Lcom/google/android/gms/internal/ads/zzer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x11
.end annotation


# static fields
.field private static final zza:[I


# instance fields
.field private final zzb:Landroid/os/Handler;

.field private final zzc:[I

.field private zzd:Landroid/opengl/EGLDisplay;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zze:Landroid/opengl/EGLContext;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzf:Landroid/opengl/EGLSurface;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzg:Landroid/graphics/SurfaceTexture;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzer;->zza:[I

    return-void

    :array_0
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3025
        0x0
        0x3027
        0x3038
        0x3033
        0x4
        0x3038
    .end array-data
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzeq;)V
    .locals 0
    .param p2    # Lcom/google/android/gms/internal/ads/zzeq;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzer;->zzb:Landroid/os/Handler;

    const/4 p1, 0x1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzer;->zzc:[I

    return-void
.end method


# virtual methods
.method public final onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzer;->zzb:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzer;->zzg:Landroid/graphics/SurfaceTexture;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    :catch_0
    :cond_0
    return-void
.end method

.method public final zza()Landroid/graphics/SurfaceTexture;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzer;->zzg:Landroid/graphics/SurfaceTexture;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final zzb(I)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x5

    .line 6
    const/4 v3, 0x3

    .line 7
    const/4 v4, 0x2

    .line 8
    const/4 v5, 0x4

    .line 9
    const/4 v6, 0x0

    .line 10
    invoke-static {v6}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    .line 11
    .line 12
    .line 13
    move-result-object v7

    .line 14
    const/4 v15, 0x1

    .line 15
    if-eqz v7, :cond_0

    .line 16
    .line 17
    const/4 v8, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v8, 0x0

    .line 20
    :goto_0
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 21
    .line 22
    new-array v10, v5, [J

    .line 23
    .line 24
    fill-array-data v10, :array_0

    .line 25
    .line 26
    .line 27
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v9

    .line 34
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzeu;->zzb(ZLjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    new-array v8, v4, [I

    .line 38
    .line 39
    invoke-static {v7, v8, v6, v8, v15}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    .line 40
    .line 41
    .line 42
    move-result v8

    .line 43
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 44
    .line 45
    new-array v10, v5, [J

    .line 46
    .line 47
    fill-array-data v10, :array_1

    .line 48
    .line 49
    .line 50
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v9

    .line 57
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzeu;->zzb(ZLjava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iput-object v7, v0, Lcom/google/android/gms/internal/ads/zzer;->zzd:Landroid/opengl/EGLDisplay;

    .line 61
    .line 62
    new-array v14, v15, [Landroid/opengl/EGLConfig;

    .line 63
    .line 64
    new-array v13, v15, [I

    .line 65
    .line 66
    sget-object v8, Lcom/google/android/gms/internal/ads/zzer;->zza:[I

    .line 67
    .line 68
    const/4 v12, 0x1

    .line 69
    const/16 v16, 0x0

    .line 70
    .line 71
    const/4 v9, 0x0

    .line 72
    const/4 v11, 0x0

    .line 73
    move-object v10, v14

    .line 74
    move-object/from16 v17, v13

    .line 75
    .line 76
    move-object/from16 v18, v14

    .line 77
    .line 78
    move/from16 v14, v16

    .line 79
    .line 80
    invoke-static/range {v7 .. v14}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    .line 81
    .line 82
    .line 83
    move-result v7

    .line 84
    if-eqz v7, :cond_1

    .line 85
    .line 86
    aget v8, v17, v6

    .line 87
    .line 88
    if-lez v8, :cond_1

    .line 89
    .line 90
    aget-object v8, v18, v6

    .line 91
    .line 92
    if-eqz v8, :cond_1

    .line 93
    .line 94
    const/4 v8, 0x1

    .line 95
    goto :goto_1

    .line 96
    :cond_1
    const/4 v8, 0x0

    .line 97
    :goto_1
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 98
    .line 99
    .line 100
    move-result-object v7

    .line 101
    aget v9, v17, v6

    .line 102
    .line 103
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v9

    .line 107
    aget-object v10, v18, v6

    .line 108
    .line 109
    new-array v11, v3, [Ljava/lang/Object;

    .line 110
    .line 111
    aput-object v7, v11, v6

    .line 112
    .line 113
    aput-object v9, v11, v15

    .line 114
    .line 115
    aput-object v10, v11, v4

    .line 116
    .line 117
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 118
    .line 119
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 120
    .line 121
    const/16 v10, 0xa

    .line 122
    .line 123
    new-array v10, v10, [J

    .line 124
    .line 125
    fill-array-data v10, :array_2

    .line 126
    .line 127
    .line 128
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v9

    .line 135
    invoke-static {v7, v9, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v7

    .line 139
    invoke-static {v8, v7}, Lcom/google/android/gms/internal/ads/zzeu;->zzb(ZLjava/lang/String;)V

    .line 140
    .line 141
    .line 142
    aget-object v7, v18, v6

    .line 143
    .line 144
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzer;->zzd:Landroid/opengl/EGLDisplay;

    .line 145
    .line 146
    const/16 v9, 0x32c0

    .line 147
    .line 148
    const/16 v10, 0x3098

    .line 149
    .line 150
    const/16 v11, 0x3038

    .line 151
    .line 152
    if-nez v1, :cond_2

    .line 153
    .line 154
    new-array v12, v3, [I

    .line 155
    .line 156
    aput v10, v12, v6

    .line 157
    .line 158
    aput v4, v12, v15

    .line 159
    .line 160
    aput v11, v12, v4

    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_2
    new-array v12, v2, [I

    .line 164
    .line 165
    aput v10, v12, v6

    .line 166
    .line 167
    aput v4, v12, v15

    .line 168
    .line 169
    aput v9, v12, v4

    .line 170
    .line 171
    aput v15, v12, v3

    .line 172
    .line 173
    aput v11, v12, v5

    .line 174
    .line 175
    :goto_2
    sget-object v10, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 176
    .line 177
    invoke-static {v8, v7, v10, v12, v6}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    .line 178
    .line 179
    .line 180
    move-result-object v8

    .line 181
    if-eqz v8, :cond_3

    .line 182
    .line 183
    const/4 v10, 0x1

    .line 184
    goto :goto_3

    .line 185
    :cond_3
    const/4 v10, 0x0

    .line 186
    :goto_3
    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    .line 187
    .line 188
    new-array v13, v5, [J

    .line 189
    .line 190
    fill-array-data v13, :array_3

    .line 191
    .line 192
    .line 193
    invoke-direct {v12, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v12

    .line 200
    invoke-static {v10, v12}, Lcom/google/android/gms/internal/ads/zzeu;->zzb(ZLjava/lang/String;)V

    .line 201
    .line 202
    .line 203
    iput-object v8, v0, Lcom/google/android/gms/internal/ads/zzer;->zze:Landroid/opengl/EGLContext;

    .line 204
    .line 205
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzer;->zzd:Landroid/opengl/EGLDisplay;

    .line 206
    .line 207
    if-ne v1, v15, :cond_4

    .line 208
    .line 209
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 210
    .line 211
    goto :goto_6

    .line 212
    :cond_4
    const/16 v12, 0x3056

    .line 213
    .line 214
    const/16 v13, 0x3057

    .line 215
    .line 216
    if-ne v1, v4, :cond_5

    .line 217
    .line 218
    const/4 v1, 0x7

    .line 219
    new-array v1, v1, [I

    .line 220
    .line 221
    aput v13, v1, v6

    .line 222
    .line 223
    aput v15, v1, v15

    .line 224
    .line 225
    aput v12, v1, v4

    .line 226
    .line 227
    aput v15, v1, v3

    .line 228
    .line 229
    aput v9, v1, v5

    .line 230
    .line 231
    aput v15, v1, v2

    .line 232
    .line 233
    const/4 v3, 0x6

    .line 234
    aput v11, v1, v3

    .line 235
    .line 236
    goto :goto_4

    .line 237
    :cond_5
    new-array v1, v2, [I

    .line 238
    .line 239
    aput v13, v1, v6

    .line 240
    .line 241
    aput v15, v1, v15

    .line 242
    .line 243
    aput v12, v1, v4

    .line 244
    .line 245
    aput v15, v1, v3

    .line 246
    .line 247
    aput v11, v1, v5

    .line 248
    .line 249
    :goto_4
    invoke-static {v10, v7, v1, v6}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    if-eqz v1, :cond_6

    .line 254
    .line 255
    const/4 v3, 0x1

    .line 256
    goto :goto_5

    .line 257
    :cond_6
    const/4 v3, 0x0

    .line 258
    :goto_5
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 259
    .line 260
    new-array v2, v2, [J

    .line 261
    .line 262
    fill-array-data v2, :array_4

    .line 263
    .line 264
    .line 265
    invoke-direct {v4, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v2

    .line 272
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzeu;->zzb(ZLjava/lang/String;)V

    .line 273
    .line 274
    .line 275
    :goto_6
    invoke-static {v10, v1, v1, v8}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 276
    .line 277
    .line 278
    move-result v2

    .line 279
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 280
    .line 281
    new-array v4, v5, [J

    .line 282
    .line 283
    fill-array-data v4, :array_5

    .line 284
    .line 285
    .line 286
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v3

    .line 293
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzeu;->zzb(ZLjava/lang/String;)V

    .line 294
    .line 295
    .line 296
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzer;->zzf:Landroid/opengl/EGLSurface;

    .line 297
    .line 298
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzer;->zzc:[I

    .line 299
    .line 300
    invoke-static {v15, v1, v6}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 301
    .line 302
    .line 303
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeu;->zza()V

    .line 304
    .line 305
    .line 306
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzer;->zzc:[I

    .line 307
    .line 308
    new-instance v2, Landroid/graphics/SurfaceTexture;

    .line 309
    .line 310
    aget v1, v1, v6

    .line 311
    .line 312
    invoke-direct {v2, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 313
    .line 314
    .line 315
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzer;->zzg:Landroid/graphics/SurfaceTexture;

    .line 316
    .line 317
    invoke-virtual {v2, v0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 318
    .line 319
    .line 320
    return-void

    .line 321
    :array_0
    .array-data 8
        -0x65a5b16232c2e5beL    # -9.905936204468434E-182
        0xafb222b5b3ae1adL
        -0x1e3c762818b16dd4L    # -8.790180527302558E162
        0x53ed568f9ca7daf9L    # 1.9583082146712209E96
    .end array-data

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
    .line 340
    .line 341
    :array_1
    .array-data 8
        -0x5052d553f211d9fcL    # -4.9196959452650875E-79
        0x20d6bbbbf45057L
        -0x2c507633338ccef9L    # -1.3157296843879518E95
        -0x8db933b9c1e741dL    # -8.232382206416707E265
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
    :array_2
    .array-data 8
        -0x5cd5bd2c631a8d76L
        0x7e683fa6e18c2be9L    # 8.119570823794936E300
        -0x6cb221832a4ee1c8L
        -0x38152ccb80009d23L    # -2.852525388309831E38
        -0x665ea40bbcae333aL    # -3.191701588341063E-185
        -0x787b64e44a97552bL
        0x4e971135e28f7f53L    # 3.9801039955645454E70
        -0x73850481cebdd849L    # -1.507454021020466E-248
        -0x7f0a0e56f0bcdbd5L    # -4.999883711133176E-304
        -0x61d45b1a297e2464L
    .end array-data

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
    :array_3
    .array-data 8
        -0x62adc647efe7ef14L
        0x51bc35ddbe134bcdL    # 5.480349521387954E85
        0x240e773133d42dcaL    # 5.239400691918876E-135
        0x57d73e08ea49ea63L    # 1.4309283999141207E115
    .end array-data

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
    :array_4
    .array-data 8
        -0x218341c03189f50eL    # -1.4356627444138636E147
        0x4a222536f639ff2L
        0x5df6365108b2f054L    # 4.3338013701701826E144
        0x175800d5fe4f3f98L
        -0x218ae147a0f0b1dL    # -3.050241793461131E298
    .end array-data

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
    :array_5
    .array-data 8
        -0x3756bc4418154092L    # -1.1004279183473728E42
        -0x33c930eed3442cf9L    # -1.4317350842322697E59
        -0x4a51b89ecab1c437L    # -4.04640901741181E-50
        0x2d3a73b926627ae1L    # 8.115972245087983E-91
    .end array-data
.end method

.method public final zzc()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzer;->zzb:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzer;->zzg:Landroid/graphics/SurfaceTexture;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzer;->zzc:[I

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x1

    .line 18
    invoke-static {v3, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v1

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzer;->zzd:Landroid/opengl/EGLDisplay;

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Landroid/opengl/EGLDisplay;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzer;->zzd:Landroid/opengl/EGLDisplay;

    .line 37
    .line 38
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 39
    .line 40
    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 41
    .line 42
    invoke-static {v1, v2, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 43
    .line 44
    .line 45
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzer;->zzf:Landroid/opengl/EGLSurface;

    .line 46
    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Landroid/opengl/EGLSurface;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-nez v1, :cond_2

    .line 56
    .line 57
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzer;->zzd:Landroid/opengl/EGLDisplay;

    .line 58
    .line 59
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzer;->zzf:Landroid/opengl/EGLSurface;

    .line 60
    .line 61
    invoke-static {v1, v2}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 62
    .line 63
    .line 64
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzer;->zze:Landroid/opengl/EGLContext;

    .line 65
    .line 66
    if-eqz v1, :cond_3

    .line 67
    .line 68
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzer;->zzd:Landroid/opengl/EGLDisplay;

    .line 69
    .line 70
    invoke-static {v2, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 71
    .line 72
    .line 73
    :cond_3
    sget v1, Lcom/google/android/gms/internal/ads/zzfy;->zza:I

    .line 74
    .line 75
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzer;->zzd:Landroid/opengl/EGLDisplay;

    .line 79
    .line 80
    if-eqz v1, :cond_4

    .line 81
    .line 82
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    .line 83
    .line 84
    invoke-virtual {v1, v2}, Landroid/opengl/EGLDisplay;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-nez v1, :cond_4

    .line 89
    .line 90
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzer;->zzd:Landroid/opengl/EGLDisplay;

    .line 91
    .line 92
    invoke-static {v1}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 93
    .line 94
    .line 95
    :cond_4
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzer;->zzd:Landroid/opengl/EGLDisplay;

    .line 96
    .line 97
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzer;->zze:Landroid/opengl/EGLContext;

    .line 98
    .line 99
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzer;->zzf:Landroid/opengl/EGLSurface;

    .line 100
    .line 101
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzer;->zzg:Landroid/graphics/SurfaceTexture;

    .line 102
    .line 103
    return-void

    .line 104
    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzer;->zzd:Landroid/opengl/EGLDisplay;

    .line 105
    .line 106
    if-eqz v2, :cond_5

    .line 107
    .line 108
    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    .line 109
    .line 110
    invoke-virtual {v2, v3}, Landroid/opengl/EGLDisplay;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-nez v2, :cond_5

    .line 115
    .line 116
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzer;->zzd:Landroid/opengl/EGLDisplay;

    .line 117
    .line 118
    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 119
    .line 120
    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 121
    .line 122
    invoke-static {v2, v3, v3, v4}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 123
    .line 124
    .line 125
    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzer;->zzf:Landroid/opengl/EGLSurface;

    .line 126
    .line 127
    if-eqz v2, :cond_6

    .line 128
    .line 129
    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 130
    .line 131
    invoke-virtual {v2, v3}, Landroid/opengl/EGLSurface;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    if-nez v2, :cond_6

    .line 136
    .line 137
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzer;->zzd:Landroid/opengl/EGLDisplay;

    .line 138
    .line 139
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzer;->zzf:Landroid/opengl/EGLSurface;

    .line 140
    .line 141
    invoke-static {v2, v3}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 142
    .line 143
    .line 144
    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzer;->zze:Landroid/opengl/EGLContext;

    .line 145
    .line 146
    if-eqz v2, :cond_7

    .line 147
    .line 148
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzer;->zzd:Landroid/opengl/EGLDisplay;

    .line 149
    .line 150
    invoke-static {v3, v2}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 151
    .line 152
    .line 153
    :cond_7
    sget v2, Lcom/google/android/gms/internal/ads/zzfy;->zza:I

    .line 154
    .line 155
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 156
    .line 157
    .line 158
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzer;->zzd:Landroid/opengl/EGLDisplay;

    .line 159
    .line 160
    if-eqz v2, :cond_9

    .line 161
    .line 162
    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    .line 163
    .line 164
    invoke-virtual {v2, v3}, Landroid/opengl/EGLDisplay;->equals(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    if-eqz v2, :cond_8

    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_8
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzer;->zzd:Landroid/opengl/EGLDisplay;

    .line 172
    .line 173
    invoke-static {v2}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 174
    .line 175
    .line 176
    :cond_9
    :goto_2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzer;->zzd:Landroid/opengl/EGLDisplay;

    .line 177
    .line 178
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzer;->zze:Landroid/opengl/EGLContext;

    .line 179
    .line 180
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzer;->zzf:Landroid/opengl/EGLSurface;

    .line 181
    .line 182
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzer;->zzg:Landroid/graphics/SurfaceTexture;

    .line 183
    .line 184
    throw v1
.end method
